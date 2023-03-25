trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    List<Task> tasklist=new List<Task>();
    for(Opportunity opp:[select Id,StageName from Opportunity where Id=:Trigger.new and StageName='Closed Won']){
        
        tasklist.add(new task(Subject='Follow Up Test Task',WhatId=opp.Id));
        
        
        
    }
    if(tasklist.size()>0){
        insert tasklist;
    }
}