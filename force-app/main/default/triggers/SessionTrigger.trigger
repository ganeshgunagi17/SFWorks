trigger SessionTrigger on Session__c (before insert,after insert) {
    if(trigger.isBefore){
        if(trigger.isInsert){
            for(Session__c sc:Trigger.new){
                Speaker__c sp=new Speaker__c(FirstName__c='GaneshTriggered');
                insert sp;
            }
        }
    } 
 
}