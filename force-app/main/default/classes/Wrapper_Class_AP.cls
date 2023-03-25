public class Wrapper_Class_AP {
    public List<TheWrapperClass> listWrap{get;set;}
    public Integer inputText{get;set;}
    public void submit(){
        listWrap=new List<TheWrapperClass>();
        for(Integer i=0;i<inputText;i++){
            TheWrapperClass wp=new TheWrapperClass();
            wp.EvenNum=i;
            i++;
            wp.OddNum=i;
            listWrap.add(wp);
            
        }
    }
    
    public void getChecked(){
        TheWrapperClass wc=new TheWrapperClass();
        if(wc.Check){
            if(wc.OddNum!=Null){
                System.debug('Number is:'+wc.OddNum);
            }
        }
    }
    public class TheWrapperClass{
        public Integer OddNum{get;set;}
         public Integer EvenNum{get;set;}
        public Boolean Check{get;set;}
    }
    
}