public class PracticeCustomController {
    private String NameAccount{get;set;}
    private List<Account> AccountDetails{get;set;}
    
    public void GetAccountDetails (){
    AccountDetails=[select Id,name from Account where Name=:NameAccount];
        
    }
}