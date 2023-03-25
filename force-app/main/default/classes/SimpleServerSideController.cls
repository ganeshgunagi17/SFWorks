public  class SimpleServerSideController {

    @AuraEnabled
    public static String stringValues(String firstname){
        
        return 'Hello '+firstname;
    }
}