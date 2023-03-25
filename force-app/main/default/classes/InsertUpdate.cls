public class InsertUpdate {
    public InsertUpdate(){
    Laptops__c lapt=new Laptops__c();
    lapt.Mobile__c='8766373733';
    lapt.Email_ID__c='Baolal@ge.com';
    insert lapt;
    System.debug('one laptop inserted'+lapt);   
        Laptops__c lapUp=[select Email_ID__c from Laptops__c where Mobile__c='8766373733'];
        lapUp.Email_ID__c='8722578937@gmail.com';
        update lapUp;
        System.debug('Mobile Number:'+lapUp.Email_ID__c);
    }
	
    
}