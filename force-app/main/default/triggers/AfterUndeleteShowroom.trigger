trigger AfterUndeleteShowroom on Showroom_Pricing__c (after undelete) {

    for(Showroom_Pricing__c sprice:Trigger.new){
        if(sprice.Car_Type__c=='Sedan'){
            Account ca=new Account(Name='After undelete trigger account');
            insert ca;
        }
    }
}