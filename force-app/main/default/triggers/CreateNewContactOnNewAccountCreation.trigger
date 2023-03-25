trigger CreateNewContactOnNewAccountCreation on Account (after insert) {

    for(Account a:Trigger.new){
        
        Contact con=new Contact(FirstName='Ganesh',LastName='Gunagi',AccountId=a.Id);
        insert con;
        
        
        
    }
}