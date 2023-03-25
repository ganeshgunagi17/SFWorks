public class Batch1 implements Database.Batchable<sObject> {

    public Database.QueryLocator start(Database.BatchableContext bc){
        
        return null;
    }
    public void execute(Database.BatchableContext bc,List<sObject> scope){
        
    }
    public void finish(Database.BatchableContext bc){
       Database.executeBatch(new Batch2());
    }
}