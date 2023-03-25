public class OddEven {
    public Integer checkNumber{get;set;}
    
    public void CheckOddEven()
    {
        String status=null;
        if((checkNumber/2)==0){
            
            status='The number is even';
            
        }else{
            status='The number is odd';
        }
        
    }
}