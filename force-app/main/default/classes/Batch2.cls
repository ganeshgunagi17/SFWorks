public class Batch2 implements Database.Batchable<sObject>{

     public Database.QueryLocator start(Database.BatchableContext bc){
        
        return null;
    }
    public void execute(Database.BatchableContext bc,List<sObject> scope){
        
    }
    public void finish(Database.BatchableContext bc){
        System.debug('hi from finish batch2');
    }
}