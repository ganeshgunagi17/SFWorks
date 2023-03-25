public class WrapperClassCheck {
    public Integer enterNumber{get;set;}
    public Integer oddVal{get;set;}
    public Integer evenVal{get;set;}
    public List<TheWrapperClass> oddEvenList{get;set;}
        
    public void submit(){
        oddEvenList=new List<TheWrapperClass>();
       
        for(Integer i=1;i<=enterNumber;i++){
             TheWrapperClass twc=new TheWrapperClass();
            twc.checkBox=False;
            twc.oddNumber=i;
            i++;
            if(i<=enterNumber){
                twc.evenNumber=i;
            }
            oddEvenList.add(twc);
        }
    }
    public void Calculate(){
        oddVal=0;
        evenVal=0;
        for(Integer i=0;i<oddEvenList.size();i++){
            if(oddEvenList[0].checkBox){
                
            }
        }
    }
        public class TheWrapperClass{
            
            public boolean checkBox{get;set;}
            public Integer oddNumber{get;set;}
            public Integer evenNumber{get;set;}
            
        }
}