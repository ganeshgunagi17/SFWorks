trigger BatchApexErrorTrigger on BatchApexErrorEvent (after insert) {
    List<BatchLeadConvertErrors__c> listbatchlead = new List<BatchLeadConvertErrors__c>();
 for(BatchApexErrorEvent event: trigger.new){
        
        BatchLeadConvertErrors__c  evrterror= new BatchLeadConvertErrors__c ();
        
        evrterror.AsyncApexJobId__c= event.AsyncApexJobId;
        evrterror.Records__c=event.JobScope;
        evrterror.StackTrace__c=event.StackTrace;     
        listbatchlead.add(evrterror);    
    }
    
    if(listbatchlead.size()>0){
        
        insert listbatchlead;
    }
}