public class AccountHandler {
    public static Account insertNewAccount(String AccName){
        try{
			 Account acct=new Account();
        acct.Name=AccName;
            
            insert acct;
             System.debug('Value is:'+acct);
            return acct;
        }
        catch(DmlException e){
            System.debug(e.getMessage());
            return null;
        }
        
       
    }
}