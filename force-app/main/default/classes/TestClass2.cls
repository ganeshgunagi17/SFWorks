@isTest
public class TestClass2 {
    public static testmethod void MyTest(){
        TestClass1 tc=new TestClass1();
        String tc1=tc.MyTest('Ganesh');
        System.assertEquals('Ganesh', tc1);
    }
}