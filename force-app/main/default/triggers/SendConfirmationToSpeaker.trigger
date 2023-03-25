trigger SendConfirmationToSpeaker on Session_Speaker__c (after insert) {
    Session_Speaker__c spka;
    for(Session_Speaker__c spk:Trigger.new){
	spka=[select Sessions__r.name,Sessions__r.session_date__c,Speakers__r.Email__c,
                                 Speakers__r.FirstName__c from Session_Speaker__c where id=:spk.ID];
        if(spka.Speakers__r.Email__c!=null){
        String address=spka.Speakers__r.Email__c;
            String body='Hello '+ spka.Speakers__r.FirstName__c +' you have enrolled to new session';
            String subject='Invitation for new session';
            EmailApexClass.sendMail(address, subject, body);
    }
    }
    
}