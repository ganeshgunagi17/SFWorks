public class testaccountcreate {

    public static void createAccount(Integer i){
        List<Account> accList = new List<Account>();
        for(Integer j=0;j<i;j++){
            Account acc = new Account();
            acc.Name='Test Account'+i;
            acc.Phone = '872257893'+i;
            accList.add(acc);
        }
        if(accList.size()>0)
            Database.insert(accList, false);
    }
}