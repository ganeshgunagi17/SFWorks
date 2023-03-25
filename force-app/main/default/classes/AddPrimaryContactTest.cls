@isTest
public class AddPrimaryContactTest {
   
	
    @isTest static void TestQueue(){
          List<Account> aclist=new List<Account>();
       
        for(Integer i=0;i<50;i++){
            Account acname=new Account(Name='CSS Corp',BillingState='NY');
            
            aclist.add(acname);
           
        }
        for(Integer i=0;i<50;i++){
            Account acname1=new Account(Name='CSS Corp1',BillingState='CY');
            
            aclist.add(acname1);
        }  
        
        insert aclist;
        Contact con=new Contact(FirstName='Bill' ,LastName='Gates');
        AddPrimaryContact addCont=new AddPrimaryContact(con,'CY');
        Test.startTest();
        System.enqueueJob(addCont);
               Test.stopTest();
         List<contact> c_lst = new List<contact>([select id from contact]);
        Integer size = c_lst.size();
        system.assertEquals(50, size);
         

    }
}