/* **********************************************************
	* Class Name  : AddressUpdationOnAccountController
	* Date		  : Aug 18th, 2021
	* Description : AddressUpdationOnAccountController is a controller class for AddressUpdationOnAccountComp lightning component.
				Used to get related contacts based on the accountId also will perform approval submission based on the selected record.
	*************************************************************/
public class AddressUpdationOnAccountController {

    public static final String ENTITY_NAME = 'Contact';
    public static final String PROCESS_STATUS = 'Active';
    public static final String PROCESS_CHECK_STATUS = 'Pending';
    public static final String SUCCESS_STATUS = 'SUCCESS';
    /* **********************************************************
     * Method Name : getContactList
     * Date		  : Aug 18th, 2021
     * Description : This method will fetch all the associated contacts on the account.
     *************************************************************/
    @AuraEnabled
    public static List < Contact > getContactList(String accountId) {
        return [select Id, FirstName, LastName, Email from Contact where AccountId =: accountId];
    }

    /* **********************************************************
     * Method Name : submitForApproval
     * Date		  : Aug 18th, 2021
     * Description : This method will send the updated records to approval submission.
     * Parameters  : contactIdList,street address,city,zip,state,country
     *************************************************************/
    @AuraEnabled
    public static String submitForApproval(List < String > contactIdList, String addressLine1, String city, String zip, String state, String country) {
        String responseToBeSentBack = '';
        String duplicateResponse = '';
        List < Contact > contListToUpdate = new List < Contact > ();
        try {
            List < ProcessDefinition > appProcessName = new List < ProcessDefinition > ([SELECT Id, Name, TableEnumOrId, State, DeveloperName from ProcessDefinition where TableEnumOrId =:ENTITY_NAME
                AND State = :PROCESS_STATUS
            ]);
       
            //if more then 1 contact is selected, then perform the approval submission for each record separately.
            if (contactIdList.size() > 1) {
                for (String recordId: contactIdList) {
                    Approval.ProcessSubmitRequest approvalRequest = new Approval.ProcessSubmitRequest();
                    approvalRequest.setObjectId(recordId);
                    approvalRequest.setSubmitterId(UserInfo.getUserId());
                    approvalRequest.setComments('Address updation approval request:');
                    if (!appProcessName.isEmpty())
                        approvalRequest.setProcessDefinitionNameOrId(appProcessName[0].DeveloperName);
                    Approval.ProcessResult approvalResult = Approval.process(approvalRequest);
                    responseToBeSentBack = SUCCESS_STATUS;
                    Contact cont = new Contact();
                    cont.id = recordId;
                    cont.Dummy_street__c = addressLine1;
                    cont.Dummy_city__c = city;
                    cont.Dummy_state__c = state;
                    cont.Dummy_country__c = country;
                    cont.Dummy_zipcode__c = zip;
                    cont.Approved__c = false;
                    cont.Not_Approved__c = false;
                    contListToUpdate.add(cont);
                }
                update contListToUpdate;
            } // if only one record is selected then, send that record to approval submission.
            else if (contactIdList.size() == 1) {
                Approval.ProcessSubmitRequest approvalRequest = new Approval.ProcessSubmitRequest();
                approvalRequest.setObjectId(contactIdList.get(0));
                approvalRequest.setSubmitterId(UserInfo.getUserId());
                if (!appProcessName.isEmpty())
                    approvalRequest.setProcessDefinitionNameOrId(appProcessName[0].DeveloperName);
                approvalRequest.setComments('Address updation approval request:');
                Approval.ProcessResult approvalResult = Approval.process(approvalRequest);
                responseToBeSentBack = SUCCESS_STATUS;
                Contact cont = new Contact();
                cont.id = contactIdList.get(0);
                 cont.Dummy_street__c = addressLine1;
                    cont.Dummy_city__c = city;
                    cont.Dummy_state__c = state;
                    cont.Dummy_country__c = country;
                    cont.Dummy_zipcode__c = zip;
                	cont.Approved__c = false;
                	cont.Not_Approved__c = false;
                //cont.Address_change_pending_for_approval__c = addressLine1 + ' ' + city + ' ' + state + ' ' + zip + ' ' + country;
                contListToUpdate.add(cont);
            }
            update contListToUpdate;

        } catch (Exception ex) {
            system.debug('error occured at line ' + ex.getLineNumber() + ' error msg: ' + ex.getMessage());
            responseToBeSentBack = ex.getMessage();
        }

        return responseToBeSentBack;

    }
}