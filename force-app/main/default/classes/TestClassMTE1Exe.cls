@isTest
global class TestClassMTE1Exe {
    
    @isTest static void TestMe(){
        Test.startTest();
        String result=TestClassMTE1.getResult(20);
        Test.stopTest();
        System.assertEquals('Very Good', result);
    }
     @isTest static void TestMe1(){
        Test.startTest();
        String result=TestClassMTE1.getResult(9);
        Test.stopTest();
        System.assertEquals('Very Bad', result);
    }
    
     @isTest static void TestMe2(){
        Test.startTest();
        String result=TestClassMTE1.getResult(10);
        Test.stopTest();
        System.assertEquals('Poor', result);
    }

}