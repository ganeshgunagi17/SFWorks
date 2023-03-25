public class OddEvenAdd {
    public Integer inputNumber{get;set;}
    public List<Integer> oddVal{get;set;}
    public List<Integer> evenVal{get;set;}
    public Integer evenAdd{get;set;}
    public Integer oddAdd{get;set;}
    
    
    public void submit (){
        oddVal=new List<Integer>();
        evenVal=new List<Integer>();
        oddAdd= 0;
        evenAdd= 0;
        for(Integer i=1;i<=inputNumber;i++){
            if(Math.mod(i,2)==0){
                evenVal.add(i);
             evenAdd=evenAdd+i;   
                    }else{
                    oddVal.add(i);    
                        oddAdd=oddAdd+i;
                    }
        }
        
    }
    
}