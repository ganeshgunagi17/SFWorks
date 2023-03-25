trigger TriggerExceptionBeforeDeleteAccount on Account (before delete) {

    if(Trigger.isDelete){
        for(Account a:[select Id from Account where Id In (select AccountID from Opportunity) and  ID =: Trigger.old]){
            Trigger.oldMap.get(a.ID).addError('Cannot delete this record as it has existing opportunities......');
        }
    }
}