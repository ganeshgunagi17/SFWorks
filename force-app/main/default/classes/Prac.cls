public class Prac {

    public static void check(){
    	Account acc = new Account();
    acc = [select Id, Phone from Account order by Phone desc limit 1];
    
    System.debug('hdsaf'+acc);
    }
   
}