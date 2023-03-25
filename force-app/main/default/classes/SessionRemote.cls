global class SessionRemote {
    public String name{get;set;}
    public static Session__c sess{get;set;}
    @RemoteAction
   global static Session__c getMySessions(String sessionName){
        sess=[select Name from Session__c where name=:sessionName];
       return sess;
    }
}