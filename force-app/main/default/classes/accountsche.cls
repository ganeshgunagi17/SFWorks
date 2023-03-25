global class accountsche implements Schedulable{

String query;
    global void execute(SchedulableContext sc){
    
    query='select Id,Name from Account where AccountNumber=\'22\'';
    
    AccountsBatchApex ap=new AccountsBatchApex();
    ap.queryBatch=query;
    
    String id=Database.executeBatch(ap);
    }

}