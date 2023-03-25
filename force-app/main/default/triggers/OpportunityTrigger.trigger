trigger OpportunityTrigger on Opportunity (before insert,after insert,after update) {

    if(trigger.isAfter && trigger.isInsert){
        for(Opportunity opp :Trigger.new){
            if(opp.StageName == 'Closed Won'){
                Order__c orderinsert = new Order__c();
                orderinsert.Order_Amount__c = 100;
                
                insert orderinsert;
            }
        }
    }
}