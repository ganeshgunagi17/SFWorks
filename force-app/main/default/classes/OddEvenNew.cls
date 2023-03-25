public class OddEvenNew {
    public Integer enterNumber{get;set;}
    public List<ListWrap> EvenOddLists{get;set;}
    public Integer oddVal{get;set;}
    public Integer evenVal{get;set;}
   
    public void submit(){
      EvenOddLists=new List<ListWrap>();
        for(Integer i=1;i<=enterNumber;i++){
              ListWrap ls=new ListWrap();
            ls.OddList=i;
            i++;
            if(i<=enterNumber){
                ls.EvenList=i;
            }
            EvenOddLists.add(ls);
            System.debug('List Values:'+EvenOddLists);
        }
    }
    
    public void Calculate(){
        oddVal=0;
        evenVal=0;
        for(Integer i=0;i<EvenOddLists.size();i++){
            if(EvenOddLists[i].varcheck){
                oddVal=oddVal+EvenOddLists[i].OddList;
                if(EvenOddLists[i].EvenList==null){
                   EvenOddLists[i].EvenList=0; 
                }
                evenVal=evenVal+EvenOddLists[i].EvenList;
            }
        }
    }
    public class ListWrap{
        
        public Integer OddList{get;set;}
        public Integer EvenList{get;set;}
        public Boolean varcheck{get;set;}
    }
}