public class AccountList {

    @AuraEnabled
    public static List<Account> getList(){
        return([Select Id,Name from Account Limit 20]);
    }
}