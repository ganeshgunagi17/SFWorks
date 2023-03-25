global class AppBuilder {
    
    @AuraEnabled
    public static List<Account> getDetails(String Accountname){
        List<Account> acc=new List<Account>();
        acc=[select Id,Name from Account where Name=:Accountname];
        return acc;
    }

}