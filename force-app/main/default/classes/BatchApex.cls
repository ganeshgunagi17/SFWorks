global class BatchApex implements Database.Batchable<sObject> {
    
    global final String query;
    global final String s_object;
    global final String field;
    global final String value;
    
    global BatchApex(String a,String b,String c,String d){
        
        query=a;
        s_object=b;
        field=c;
        value=d;   
    }
    global Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<sObject> bc1){
        for(sObject o:bc1){
            o.put(field,value);
        }
        update bc1;
    }
    global void finish(Database.BatchableContext BC){
        
    }
    
    

}