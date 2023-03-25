trigger AccountOpportunity on Account (before delete) {

    for(Account acc:[select Id from Account where ID In (select AccountId from Opportunity) AND ID = :Trigger.old]){
        Trigger.oldMap.get(acc.Id).addError('Cannot delete the record as it has existing opportunity..');
       
    }
}