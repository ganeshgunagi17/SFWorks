public class BatchTestClass implements Database.Batchable<sObject>,Database.Stateful{

    public set<Id> accountidset = new Set<Id>();
    public Database.QueryLocator start(Database.BatchableContext BC){
      
        return Database.getQueryLocator('select Id from Account'); //--> 100000
    }
    public void execute(Database.BatchableContext bc,List<sObject> scope){
        
        List<Account> accList = new List<Account>();
        for(sObject sobj : scope){
            Account acc = (Account)sobj;
            acc.Name='test';
               accList.add(acc);
        }
        
       Database.SaveResult[] sr = Database.update(accList);
        for(Database.SaveResult sr1 : sr){
            if(sr1.isSuccess()){
                accountidset.add(sr1.getId());
            }
        }
    }
    public void finish(Database.BatchableContext bc){
        System.debug('records are'+accountidset.size());
    }
}