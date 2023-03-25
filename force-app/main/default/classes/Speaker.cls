public class Speaker {

    public List<Speaker__c> values{get;set;}
    
    public void ShowFirstName(){
        values=[select FirstName__c from Speaker__c ];
        
    }
}