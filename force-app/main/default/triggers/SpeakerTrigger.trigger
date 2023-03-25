trigger SpeakerTrigger on Speaker__c (before update) {
    for(Speaker__c sp:Trigger.new){
        if(sp.FirstName__c=='GaneshTriggered'){
            sp.FirstName__c='GaneshWrong';
            update sp;
            System.debug('Value is:'+sp.FirstName__c);
        }
    }
}