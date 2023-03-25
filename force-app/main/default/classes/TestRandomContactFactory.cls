@isTest
public class TestRandomContactFactory {
	
    @isTest static void testcontacts(){
        List<contact> result=RandomContactFactory.generateRandomContacts(5, 'Kalrai');
        System.assertEquals(5, result.size());
    }
}