@isTest
public class FutureTest {
    @isTest static void PrintTest(){
        String a='Lntinfotech';
        Test.startTest();
        FutureMethods.Print(a);
        Test.stopTest();
        Account ac=[select name from account where name='Lntinfotech'];
        System.assertEquals('Lntinfotech', ac.Name);
    }
}