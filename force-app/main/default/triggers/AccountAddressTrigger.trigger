trigger AccountAddressTrigger on Account (before insert,before update) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            for(Account a:Trigger.new){
                if(a.Match_Billing_Address__c==true && a.BillingPostalCode != null){
                    a.ShippingPostalCode=a.BillingPostalCode;
                    
                }
            }
        }
        if(Trigger.isUpdate){
            for(Account a:Trigger.new){
                if(a.Match_Billing_Address__c==true && a.BillingPostalCode != null){
                    a.ShippingPostalCode=a.BillingPostalCode;
                    
                }
            }
        }
    }
}