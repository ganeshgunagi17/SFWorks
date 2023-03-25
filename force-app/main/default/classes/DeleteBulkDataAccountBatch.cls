global class DeleteBulkDataAccountBatch implements Database.Batchable<sObject> {
    global Database.QueryLocator start(Database.BatchableContext bc){
        String query='select Id from Account LIMIT 2000';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,List<Account> scope){
        List<Account> aclist=new List<Account>();
        for(Account acc:scope){
            aclist.add(acc);
        }
        delete aclist;
    }
    global void finish(Database.BatchableContext bc){
        AsyncApexJob asb=[select Status,NumberOfErrors from AsyncApexJob where Id=:bc.getJobId()];
        System.debug('Results:'+asb);
    }
}