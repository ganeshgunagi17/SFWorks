public with sharing class WarehouseControllerApex {

   @AuraEnabled
   public static List<Warehouse__c> getProducts(String productname){
    return [select Id,Name,Product_Name__c,Picture__c,Image_url__c from Warehouse__c where Product_Name__c  =:productname];
   }
}
