public class AnimalCallouts {
    
    public static HttpResponse getCallout(){
        Http ht=new Http();
        HttpRequest req=new HttpRequest();
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        req.setMethod('GET');
        HttpResponse res=new HttpResponse();
        res=ht.send(req);
        if(res.getStatusCode()==200){
            //deserializes the JSON string to the collection of primitive data types
            Map<String,Object> results=(Map<String,Object>)JSON.deserializeUntyped(res.getBody());
            
            //cast the values in the 'animals' key as list
            List<Object> an=(List<Object>)results.get('animals');
            for(Object anim:an){
                System.debug(anim);
            }
            
            
        }
        return res;
    }
    
    
     public static HttpResponse makePostCallout() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setBody('{"name":"mighty moose"}');
        HttpResponse response = http.send(request);
        // Parse the JSON response
        if (response.getStatusCode() != 201) {
            System.debug('The status code returned was not expected: ' +
                response.getStatusCode() + ' ' + response.getStatus());
        } else {
            System.debug(response.getBody());
        }
        return response;
    }        

}