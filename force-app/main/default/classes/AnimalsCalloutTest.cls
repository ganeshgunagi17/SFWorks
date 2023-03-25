@isTest
public class AnimalsCalloutTest {

    @isTest static void testGetCallout(){
        StaticResourceCalloutMock mock=new StaticResourceCalloutMock();
        mock.setStaticResource('GetAnimalResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        //associate the callout with mock
        
        Test.setMock(HttpCalloutMock.class, mock);
        
        HttpResponse result=AnimalCallouts.getCallout();
        
        //verify the result is not null
        System.assertNotEquals(null, result,
            'The callout returned a null response.');
        
        //verify status code
        System.assertEquals(200,result.getStatusCode(),
          'The status code is not 200.');
        
        System.assertEquals('application/json;charset=UTF-8',
          result.getHeader('Content-Type'),
          'The content type value is not expected.');  
        // Verify the array contains 3 items     
        Map<String, Object> results = (Map<String, Object>) 
            JSON.deserializeUntyped(result.getBody());
        List<Object> animals = (List<Object>) results.get('animals');
        System.assertEquals(3, animals.size(),
          'The array should only contain 3 items.');     
        
    }
}