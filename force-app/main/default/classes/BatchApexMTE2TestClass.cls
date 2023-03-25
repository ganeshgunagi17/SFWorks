@isTest
global class BatchApexMTE2TestClass {

    @testSetup
   static void AddMethod(){
        List<Contact> addNewContactList=new List<Contact>();
    for(Integer i=1;i<1000;i++)
    {
        Contact con=new Contact();
        con.FirstName='Shiva'+i;
        con.LastName='Gunagi';
        addNewContactList.add(con);
        
    }
    insert addNewContactList;
    }
    
    @isTest static void TestMe(){
        Test.startTest();
        	BatchApexMTE2 btme2=new BatchApexMTE2();
        Id trackId=Database.executeBatch(btme2,100);
        Test.stopTest();
        
    }
    
}