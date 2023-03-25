@isTest
public class TestSchedulableClass {
    //public String CronExp='30 24 4 5 9 ? 2018'; // secs mins hr day month day_of_week year
   
    
    @isTest static void TestSchedule(){
        
        //creating the out of date opportunity
        
        List<Opportunity> oppty=new List<Opportunity>();
        Date closeDate=Date.today().addDays(-7);
        for(Integer i=0;i<10;i++){
            Opportunity opp=new Opportunity(Name='Opportunity'+i,CloseDate=closeDate,StageName='Prospecting');
            oppty.add(opp);
        }
        insert oppty;
    
    
    //getting the opportunity ID that we created above
  
    Map<Id, Opportunity> opptyMap = new Map<Id, Opportunity>(oppty);
        List<Id> opptyIds = new List<Id>(opptyMap.keySet());
        Test.startTest();
        // Schedule the test job
        String jobId = System.schedule('Opportunity Reminder',
            '30 24 4 5 9 ? 2018', 
            new SchedulableMTE2Class());         
        // Verify the scheduled job has not run yet.
        List<Task> lt = [SELECT Id 
            FROM Task 
            WHERE WhatId IN :opptyIds];
        System.assertEquals(0, lt.size(), 'Tasks exist before job has run');
        // Stopping the test will run the job synchronously
        Test.stopTest();
        
        // Now that the scheduled job has executed,
        // check that our tasks were created
        lt = [SELECT Id 
            FROM Task 
            WHERE WhatId IN :opptyIds];
       
        System.assertEquals(opptyIds.size(), 
            lt.size(), 
            'Tasks were not created');
    }
}