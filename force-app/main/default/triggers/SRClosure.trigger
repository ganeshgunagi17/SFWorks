trigger SRClosure on Service_Request__c (after update) {
    
    for(Service_Request__c sr:Trigger.old){
        if(sr.Service_Status__c=='Open'){
            Service_Request__c sc=new Service_Request__c(   Customer_Email__c='gunagi@ge2.com',  Service_Date__c=Date.Today());
            insert sc;
        }
    }
    
}