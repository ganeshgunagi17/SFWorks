global class ShowroomPricingUpdateBatch implements Database.Batchable<sObject>{
    global Database.QueryLocator start(Database.BatchableContext bc){
        String query='select Id,Car__c from Showroom_Pricing__c where Car__c=\'Indigo\'';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<Showroom_Pricing__c> scope){
        List<Showroom_Pricing__c> car=new List<Showroom_Pricing__c>();
        for(Showroom_Pricing__c sc:scope){
            sc.Car__c='Duster';
            car.add(sc);
        }
        update car;
    }
    
    global void finish(Database.BatchableContext bc){
     AsyncApexJob ajob=[SELECT Id, Status, NumberOfErrors, JobItemsProcessed,
      TotalJobItems, CreatedBy.Email
      FROM AsyncApexJob WHERE Id =
      :bc.getJobId()];
        System.debug('Results: '+ajob.JobItemsProcessed+' '+ajob.NumberOfErrors);

    }
}