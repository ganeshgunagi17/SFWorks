global class AccountProcessor {

    @future
    global static void countContacts(List<Id> ids){
        List<Account> acc=[select id,(select id from Contacts where AccountId=:ids) from Account ];
        for(Account a:acc){
            List<Contact> con=a.contacts;
            a.Number_of_Contacts__c=con.size();
       
        }
        update acc;
    }
    
   /* @future
    global static void FutureMethod2(){
        Account a=new Account(name='rajeshsq');
        List<Id> asda= new List<Id>();
        asda.add(a.Id);
       countContacts(asda);
        
    }*/
    
}