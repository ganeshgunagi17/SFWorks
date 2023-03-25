global class ShowroomBatch implements Database.Batchable<sObject> {
    String query;
    global ShowroomBatch(String q){
        this.query=q;
    }
    global Database.QueryLocator start(Database.BatchableContext bc){
        
        return Database.getQueryLocator(query);
            
            }
    
    global void execute(Database.BatchableContext bc,List<Showroom_Pricing__c> scope){
        List<Showroom_Pricing__c> sprice=new List<Showroom_Pricing__c>();
        for(Showroom_Pricing__c sp:scope){
            sp.Car_Type__c='HatchBack';
            sprice.add(sp);
        }
        update sprice;
    }
    
    global void finish(Database.BatchableContext bc){
        
    }
}