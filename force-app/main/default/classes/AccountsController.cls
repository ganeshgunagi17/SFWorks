public class AccountsController {
    
    @AuraEnabled
    public static List<Account> getAllAccounts(){
        return [select Name,Id,Phone from Account];
    }
    
    @AuraEnabled
    public static List<Account> getAccountsBasedOnKey(String keyString){
        return [select Name,Id,Phone from Account where Name like :'%'+keyString+'%'];
    }

}