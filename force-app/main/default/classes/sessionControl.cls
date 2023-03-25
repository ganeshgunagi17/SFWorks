public class sessionControl {

    public String sessionName{get;set;}
    public List<Session__c> listOfSessions{get;set;}
    
    public void GetMySessions(){
        listOfSessions=[select Name from Session__c where Name like: '%'+sessionName+'%'];
        
    }
}