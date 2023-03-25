global class FutureMethods {
    
    @future
    global static void Print(String ab){
        Account a=new Account(name=ab);
        insert a;
        
    }

}