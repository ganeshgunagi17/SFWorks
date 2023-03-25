public class FirstClass {

   Account a=[Select name,BillingCity__c from account where name='asd'];
    public Account add(){
          System.debug('Values: '+a);
        return a;
    }
    
  
    
    
}