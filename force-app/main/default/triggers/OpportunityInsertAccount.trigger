trigger OpportunityInsertAccount on Account (after insert) {
    for(Account a:Trigger.new){
        List<Opportunity> opptyList=[select Id,StageName,CloseDate from Opportunity where AccountID=:Trigger.new];
    if(opptyList.size()==0){
        Opportunity opp=new Opportunity(Name='OpptyAcc',StageName='Prospecting',CloseDate=System.today().addDays(2),AccountId=a.Id);
        insert opp;
        
    }
    }
        
    
}