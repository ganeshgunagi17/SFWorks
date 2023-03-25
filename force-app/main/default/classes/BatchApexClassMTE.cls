global class BatchApexClassMTE implements Database.Batchable<sObject>,Database.StateFul {
    
    global Integer countrecords=0;
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('select Id,name from Account limit 1000');
        
    }
    
    global void execute(Database.BatchableContext bc,List<Account> acc){
        List<Account> acclist=new List<Account>();
        for(Account account: acc){
            
            account.Name='Ganesh1';
                
            acclist.add(account);
            countrecords=countrecords+1;
        }
        
        update acclist;
    }
    
    global void finish(Database.BatchableContext bc){
        System.debug(countrecords + ' records processed. Shazam!');
        AsyncApexJob job = [SELECT Id, Status, NumberOfErrors, 
            JobItemsProcessed,
            TotalJobItems, CreatedBy.Email
            FROM AsyncApexJob
            WHERE Id = :bc.getJobId()];
    }

}