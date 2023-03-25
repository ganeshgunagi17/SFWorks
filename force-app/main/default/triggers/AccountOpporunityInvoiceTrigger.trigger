trigger AccountOpporunityInvoiceTrigger on Account (after update) {

    for(Account a:Trigger.old){
        Account ac=[select id,Type,Name from Account where Name=:a.Name];
        if(ac.Type=='Prospect'){
            
            Account accou=[select id,(select id from Opportunities) from Account where Name=:ac.Name];
            System.debug(accou.Id);
            Opportunity opp=[select StageName,id from Opportunity where AccountId=:accou.Id];
            opp.StageName='Closed Won';
            
            update accou;
            
        }
    }
}