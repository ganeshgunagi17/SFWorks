trigger UpdateAddressOnApprovalProcessTrigger on Contact (before update) {

    Map<Id,Contact> contAccountMap = new Map<Id,Contact>();
    for(Contact cont :Trigger.new){
        if(cont.Approved__c){
            cont.MailingStreet = cont.Dummy_street__c;
            cont.MailingCity = cont.Dummy_city__c ;
            cont.MailingState = cont.Dummy_state__c;
            cont.MailingCountry = cont.Dummy_country__c;
            cont.MailingPostalCode =cont.Dummy_zipcode__c;
            
            contAccountMap.put(cont.AccountId,cont);
            cont.Dummy_street__c='';
            cont.Dummy_city__c='';
            cont.Dummy_state__c='';
            cont.Dummy_country__c='';
            cont.Dummy_zipcode__c='';
            
            
        }else if(cont.Not_Approved__c){
            cont.Dummy_street__c='';
            cont.Dummy_city__c='';
            cont.Dummy_state__c='';
            cont.Dummy_country__c='';
            cont.Dummy_zipcode__c='';
        }
    }
    List<Account> acclist = [select Id,BillingAddress from Account where Id IN: contAccountMap.keySet()];
    List<Account> updateAccounts = new List<Account>();
    for(Account accl : acclist){
        Account acc = new Account();
        acc.BillingStreet = contAccountMap.get(accl.Id).MailingStreet;
        acc.BillingCity = contAccountMap.get(accl.Id).MailingCity;
        acc.BillingCountry = contAccountMap.get(accl.Id).MailingCountry;
        acc.BillingState = contAccountMap.get(accl.Id).MailingState;
        acc.BillingPostalCode = contAccountMap.get(accl.Id).MailingPostalCode;
        acc.Id = accl.Id;
        updateAccounts.add(acc);
    }
    update updateAccounts;
    
}