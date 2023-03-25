global class BatchApexMTE2 implements Database.Batchable<sObject>,Database.Stateful {
    
    global Integer numberOfRecordsInserted;
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        String query='select FirstName,LastName from Contact where LastName=\'Gunagi\'';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<Contact> con){
        List<Contact> contList=new List<Contact>();
        for(Contact cont:con){
            contList.add(cont);
            numberOfRecordsInserted=numberOfRecordsInserted+1;
        }
        
    }
    
    global void finish(Database.BatchableContext bc){
        System.debug('Records inserted are:'+numberOfRecordsInserted);
    }

}