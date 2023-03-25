global class futureMethod {
	
    @future
    global static void futureTest(){
        for(Integer i=0;i<10;i++){
            Speaker__c sp=new Speaker__c();
            sp.FirstName__c='Ganesh'+i;
            sp.Email__c='Gnshgunagi@gmail.com';
            insert sp;
        }
    }
}