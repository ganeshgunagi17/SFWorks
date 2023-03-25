@isTest
public class ShowroomBatchTest {

    @isTest static void testCar(){
        List<Showroom_Pricing__c> listadd=new List<Showroom_Pricing__c>();
        for(Integer i=1;i<20;i++){
            Showroom_Pricing__c sprice=new Showroom_Pricing__c();
            sprice.Car_Type__c='XUV';
            listadd.add(sprice);
            
        }
        insert listadd;
        
        Test.startTest();
         String query='select Car_Type__c from Showroom_Pricing__c where Car_Type__c=\'XUV\'';
        	ShowroomBatch sb=new ShowroomBatch(query);
        Id jobid=Database.executeBatch(sb);
        AsyncApexJob ajob=[select Id,NumberOfErrors,JobItemsProcessed,CreatedBy.email,CreatedById from AsyncApexJob where Id=:jobid];
        System.debug(ajob.JobItemsProcessed+','+ajob.NumberOfErrors+','+ajob.Id+','+ajob.CreatedById);
       
        Test.stopTest();
    }
}