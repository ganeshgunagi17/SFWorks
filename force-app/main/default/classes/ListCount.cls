public class ListCount {
    public Integer numberValue{get;set;}
    public List<Integer> valuesList{get;set;}
    public List<Integer> valuesList1{get;set;}
    
    public void GetResult(){
    
    for(Integer i=0;i<numberValue;i++){
                if((Math.mod(i,2))==0){
                valuesList=new List<Integer>();
                    valuesList.add(i);
                }
               else{
                 valuesList1=new List<Integer>();
               valuesList1.add(i);
               
               }
   
    }
   
         
 
    
    
    
    }



}