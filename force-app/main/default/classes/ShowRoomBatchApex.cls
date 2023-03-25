global class ShowRoomBatchApex implements Database.Batchable<sObject> {
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        insertRecords();
        String query='select Id from Showroom_Pricing__c where ';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<Showroom_Pricing__c> scope){
       
            
        
    }
    global void finish(Database.BatchableContext bc){
         }
    
    global static void insertRecords(){
        List<Showroom_Pricing__c> lc=new List<Showroom_Pricing__c>();
        
        for(Integer i=1;i<5000;i++){
            Showroom_Pricing__c insertrec=new Showroom_Pricing__c();
            insertrec.Car__c='Duster';
            insertrec.Car_Type__c='Sedan';
            lc.add(insertrec);
        }
        insert lc;
    }
}