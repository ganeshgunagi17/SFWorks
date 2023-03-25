global class SessionFutureMethod {
	@future
    global static void myFutureMethod(List<Id> ids){
        List<Session__c> listSession=[select id from Session__c where Id=:ids];
        for(Session__c sess:listSession){
            System.debug('Session values:'+sess.Name);
        }
    }
}