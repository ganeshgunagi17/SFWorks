public class GetAccountDetailsApex {

    @AuraEnabled
    public static List<Account> getAccountDetails(String AccName){
        List<Account> acc=[select Id,Name from Account where Name=:AccName];
        return acc;
    }
}