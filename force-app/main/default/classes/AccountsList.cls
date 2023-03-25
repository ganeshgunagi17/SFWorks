public class AccountsList {

    @AuraEnabled
    public static List<Account> getAllAccounts(){
        return [select Id,Name,Phone from Account];
    }
    
       @AuraEnabled
    public static List<Account> getAllAccountsString(String name){
        return [select Id,Name,Phone from Account where Name =:name];
    }
    
}