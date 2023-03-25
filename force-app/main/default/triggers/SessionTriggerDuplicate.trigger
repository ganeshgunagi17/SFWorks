trigger SessionTriggerDuplicate on Session__c (before insert) {
    List<Session__c> lst=new List<Session__c>();
    for(Session__c sess:Trigger.new){
        lst=[select Id from Session__c where Name=:sess.Name];
        if(lst.size()>0){
            sess.Name.addError('Error duplicate');
        }
    }
}