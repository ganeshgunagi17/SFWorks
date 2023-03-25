trigger SessionTriggerSpeakerRecord on Session__c (after insert) {

    for(Session__c sess:Trigger.new){
        
        Speaker__c newSpeak=new Speaker__c(FirstName__c='Anirudh');
        insert newSpeak;
    }
}