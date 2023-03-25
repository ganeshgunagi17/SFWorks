global class LeadProcessor implements Database.Batchable<sObject> {

    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('select id from Lead');
        
    }
    
    global void execute(Database.BatchableContext bc,List<Lead> lc){
        List<Lead> leadList=new List<Lead>();
        for(Lead leadVal:lc){
            leadVal.LeadSource='Dreamforce';
            leadList.add(leadVal);
 
        }
        update leadList;
    }
    
    global void finish(Database.BatchableContext bc){
        
    }
}