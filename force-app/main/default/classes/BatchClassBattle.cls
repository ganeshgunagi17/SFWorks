global class BatchClassBattle implements Database.Batchable<sObject> {

    global Database.QueryLocator start(Database.BatchableContext bc){
        
        String query='select Id,Name from Battle_Station__c LIMIT 100';
 System.debug('Values are:'+Database.getQueryLocator(query));        
        return Database.getQueryLocator(query);
       
    }
    global void execute(Database.BatchableContext bc,List<Battle_Station__c> sc){
        for(Battle_Station__c c:sc){
            System.debug('Values from execute method:'+c.Id);
        }
    }
    global void finish(Database.BatchableContext bc){
        
    }
}