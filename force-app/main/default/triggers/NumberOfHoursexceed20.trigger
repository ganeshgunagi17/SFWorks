trigger NumberOfHoursexceed20 on Session__c (before insert,before update) {

    for(Session__c sess:Trigger.old){
        System.debug('Number of hours:'+sess.Number_of_hours__c);
        if(sess.Number_of_hours__c>20){
            Session__c newSession=
                new Session__c();
            
            insert newSession;
       
        }
    }
}