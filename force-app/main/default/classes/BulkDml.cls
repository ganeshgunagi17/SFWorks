public class BulkDml {
    public BulkDml(){
    List<Grocery__c> groc=new List<Grocery__c>();
        groc.add(new Grocery__c(Customer_Name__c='Anvesha'));
        groc.add(new Grocery__c(Customer_Name__c='Aditi'));
        groc.add(new Grocery__c(Customer_Name__c='Alksldk'));
        system.debug('Values inserted'+groc);
    }
        
        
    
}