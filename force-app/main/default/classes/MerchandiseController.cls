public class MerchandiseController {
    public List<Account> getAccountList(){
        List<Account> acclist=[select Id,name,Type,Industry from Account limit 10000];
        return accList;
    }
}