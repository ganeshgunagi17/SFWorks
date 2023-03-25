@isTest
global class AnimalLocatorMock implements HttpCalloutMock {

    global HttpResponse respond(HttpRequest req){
        HttpResponse response = new HttpResponse();
         response.setHeader('Content-Type', 'application/json');
        response.setBody('{"animal":{"id":1,"name":"chicken","eats":"chiken food","says":"cluck cluck"}}');
        response.setStatusCode(200);
        return response;
    }
    
}