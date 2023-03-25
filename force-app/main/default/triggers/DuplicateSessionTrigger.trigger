trigger DuplicateSessionTrigger on Session__c (before insert) {
    
     List<Session__c> acc;
    for(Session__c a:Trigger.new){
        acc=[select id,Name from Session__c where Name=:a.Name];
        
        if(acc.size() > 0){
          
        }
    }
}