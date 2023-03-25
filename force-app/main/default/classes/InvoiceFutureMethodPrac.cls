global class InvoiceFutureMethodPrac {

    @future
    public static void futureCheck(List<Id> invoiceId){
        List<Invoice__c> inv = [select Id from Invoice__c where Id IN :invoiceId];
        update inv;
        
    }
}