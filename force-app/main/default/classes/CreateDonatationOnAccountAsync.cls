global  class CreateDonatationOnAccountAsync {

    @future(callout=true)
    global static void CreateDonation(Set<String> requestId){
        Donations__c donation=new Donations__c();

        for(Account a:[select id,Name from Account where ID in :requestId]){
            donation.Name=a.Name+' Donation';
            donation.Account__c=a.Id;
            insert donation;
        }
    }
        
}