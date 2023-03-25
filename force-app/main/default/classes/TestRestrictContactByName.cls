@isTest
public class TestRestrictContactByName {

    @isTest static void TestContact(){
        Test.startTest();
        	Contact cont=new Contact(LastName='INVALIDNAME');
        insert cont;
        
       cont.LastName='INVALIDNAME';
        update cont;
        
        Test.stopTest();
        
        
        
    }
}