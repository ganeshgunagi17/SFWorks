trigger InvoiceTriggerPrac on Invoice__c (after update) {

    Database.QueryLocator qc = Database.getQueryLocator([select Id from Invoice__c]);
    Database.executeBatch(new InvoiceBatchApexClass());
}