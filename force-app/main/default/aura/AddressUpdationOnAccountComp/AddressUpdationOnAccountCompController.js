({
  
    /* *****************************************
     * Method Name : callInit()
     * Date		   : Aug 18th, 2021
     * Description : This method is invoked from the init handler, when the lightning component is launched from the UI.
     * 				 Method will fetch all the associated contact records on the account. 
     ******************************************/
    callInit: function(component, event, helper) {
        var recordID = component.get("v.recordId");
        var performApexCall = component.get("c.getContactList");
        performApexCall.setParams({
            "accountId": recordID
        });
        performApexCall.setCallback(this, function(response) {
            var responseState = response.getState();
            var contactsSize = [];

            if (responseState === 'SUCCESS') {
                contactsSize = response.getReturnValue();
				//if account has contacts then use it for further processing, else display toast message as "no contacts for the account"
                if (contactsSize.length > 0) {
                    component.set("v.contactLists", contactsSize);
                } else {
                    var nocontactsToast = $A.get("e.force:showToast");
                    nocontactsToast.setParams({
                        "title": "Info",
                        "type": "info",
                        "mode": 'dismissible',
                        "message": "No contacts associated with this account."
                    });
                    nocontactsToast.fire();
                }

            } else {
                var errorToasts = $A.get("e.force:showToast");
                errorToasts.setParams({
                    "title": "Error",
                    "type": "error",
                    "mode": 'dismissible',
                    "message": "Error occured while fetching the contacts"
                });
                errorToasts.fire();
            }
        });
        $A.enqueueAction(performApexCall);
    },

    /* *************************************
     * Method Name : handleCheckedValues()
     * Date		   : Aug 18th, 2021
     * Description : This method is used to store the contact records that are being selected for 
     * 				 approval submission. This method is called based on selecting the contact record
     * 			     from the UI
     ********************************************/
    handleCheckedValues: function(component, event, helper) {
        var contactsToApprovalSubmission = component.get("v.submissionList");
        //Below code will check if contact record is selected in the UI, if yes then push it to the list. 
        //Else remove the record from the list
        if (event.target.checked) {
            var idRecord = event.target.getAttribute('id');
            contactsToApprovalSubmission.push(idRecord);

        } else {
            var idRecord = event.target.getAttribute('id');
            var removeIndexRecord = component.get("v.submissionList").indexOf(idRecord);
            component.get("v.submissionList").splice(removeIndexRecord, 1);
        }
    },
    
    /* *******************************************
     * Method Name : handleSubmitClick()
     * Date		   : Aug 18th, 2021
     * Description : This method will perform all the actions on submitting the record.This Method will call
     * 				 Helper JS method submitForApproval()
     ************************************************/
    handleSubmitClick: function(component, event, helper) {

        helper.submitForApproval(component, event);
    }
})