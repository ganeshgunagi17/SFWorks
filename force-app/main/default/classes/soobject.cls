public class soobject {
    public void AccountDet(){
     List<Account> a=[select Name,Id from Account];
    System.debug('Account details:'+a);  
        SObject s=new Account(name='Infosys',Type='Industry');
        Account acc=(Account)s;
        insert acc;
        System.debug('Account details:'+acc.Id);
       SObject soo=[select id,name from account];
    }

}