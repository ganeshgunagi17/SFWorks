trigger StatusClosed on Session__c (before insert) {
    for(Session__c session:Trigger.new){
    System.debug('status is:'+session.status__c);
              if(session.status__c=='Worse'){
               session.status__c.addError('Status cannot be null for newly created record');
           }
   }
}