trigger CheckBoxTrigger on Account (after insert) {
    
    for(Account acc:Trigger.new){
        if(acc.Create_Contact__c==true){
            Contact cont=new Contact(FirstName='Checked',LastName='Checked',AccountId=acc.Id);
            insert cont;
            
        }
    }

}