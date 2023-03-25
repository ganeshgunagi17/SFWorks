trigger ContactCreationAfterInsertShowroom on Showroom_Pricing__c (after insert) {

    for(Showroom_Pricing__c spc:Trigger.new){
        if(spc.Car_Type__c=='Sedan'){
            Contact con=new Contact(FirstName='Sedan',LastName='Trigger');
            insert con;
        }
    }
}