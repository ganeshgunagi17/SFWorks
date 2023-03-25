public class GroceryInsert {

    public String customerName{set;get;}
    public String customerPhone{set;get;}
    public String deleteCustomer{set;get;}
    public void PerformData(){
        Grocery__c gc=new Grocery__c();
        gc.Customer_Name__c=customerName;
        gc.Customer_Phone__c=customerPhone;
        insert gc;
        System.debug('Records inserted:');
        System.debug('Customer Name: '+customerName+'  Phone Number:'+customerPhone);
        DeleteData();
    }
    public void DeleteData(){
        Grocery__c gc1=[select Customer_Name__c from Grocery__c where Customer_Name__c=:deleteCustomer];
        delete gc1;
        System.debug('Deleted Record:'+deleteCustomer);   
    }
}