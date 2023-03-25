public class Example3Apex {

    public String accname{get;set;}
    public List<Account> allAccounts{get;set;}
    
    public void getaccountdetails(){
        allAccounts = new List<Account>();
        allAccounts =[select Id,Name,Phone,Industry from Account where Name =:accname];
        
    }
}