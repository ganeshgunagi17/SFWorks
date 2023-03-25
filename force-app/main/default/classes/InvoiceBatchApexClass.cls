public class InvoiceBatchApexClass implements Database.Batchable<Invoice__c>,Schedulable {

    public Iterable<Invoice__c> start(Database.BatchableContext bc){
        
        
        return checkCode();
    }
    public void execute(Database.BatchableContext bc,List<sObject> sob){
        
    }
    public void finish(Database.BatchableContext bc){
        
    }

 public void execute(SchedulableContext sc){
        
    }    
    public static List<Invoice__c> checkCode(){
		List<Invoice__c> invlist= [select Id from Invoice__c limit 10];
		return  invlist;
    }
}