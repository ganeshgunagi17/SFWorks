global class TestOperationBatch implements Database.Batchable<sObject>,Schedulable {
    global Database.QueryLocator start(Database.BatchableContext bc){
        Showroom_Settings__c getCustomSetValues = Showroom_Settings__c.getInstance('BMW');
        DateTime batchTime =getCustomSetValues.BatchTime__c;
        String BrandName = getCustomSetValues.Brand__c;
        
        String query ='select Car__c,Car_Type__c,Customer_Email__c from Showroom_Pricing__c where LastModifiedDate > :batchTime AND Car__c =:BrandName';
        
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc, List<sObject> sobj){
        List<Showroom_Pricing__c> listPrice = new List<Showroom_Pricing__c>();
        for(sObject sobjval : sobj){
            Showroom_Pricing__c show = (Showroom_Pricing__c)sobjval;
            show.Customer_Email__c ='ganesh@gmail3.com';
            listPrice.add(show);
            TestOperationsCall.doFutureCall(); 
        }
        update listPrice;
    }
    global void finish(Database.BatchableContext bc){
 Showroom_Settings__c getCustomSetValues = Showroom_Settings__c.getInstance('BMW');
        getCustomSetValues.BatchTime__c = System.now();
        update getCustomSetValues;
    }
    
    global void execute(SchedulableContext sc){
        
    }
    
}