public class FetchingAccount {
    
    @AuraEnabled
    public static List<Account> getAccountsController(String name) {
        
        List<Account> accountlist = new List<Account>();
        accountlist=[select Name,Phone from Account where Name =:name];
        return accountlist;
    }

}