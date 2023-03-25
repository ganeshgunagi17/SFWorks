public class EvenOdd {
 public Integer checkNumber{get;set;}
    public String status{get;set;}
    public void CheckOddEven()
    {
        
        if((Math.mod(checkNumber,2))==0){
            
            status='The number is even';
            
        }else{
            status='The number is odd';
        }
        
    }
}