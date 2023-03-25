trigger CreateDonationOnAccountAsync on Account (after insert) {

    if(Trigger.isAfter){
        Set<String> accountIds=new Set<String>();
      
        for(Account acc:Trigger.new){
            accountIds.add(acc.Id);
        }
        CreateDonatationOnAccountAsync.CreateDonation(accountIds);
    }
}