public class AnimalLocator {
    
    public static String getAnimalNameById(Integer getnum){
        String nameofAnimal='';
        Http ht=new Http();
        HttpRequest request=new HttpRequest();
        request.setMethod('GET');
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+getnum);
        HttpResponse res=ht.send(request);
        if(res.getStatusCode()==200){
            Map<String,Object> results=(Map<String,Object>)JSON.deserializeUntyped(res.getBody());
            Map<String,Object> an=(Map<String,Object>)results.get('animal');
              nameofAnimal = string.valueof(an.get('name'));
            System.debug('values is'+nameofAnimal);
        }
        return nameofAnimal;
    }

}