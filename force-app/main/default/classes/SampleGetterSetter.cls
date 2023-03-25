public class SampleGetterSetter {

    public String myname{get;set;}
    
    public SampleGetterSetter(){
        this.myname='Ganesh';
    }
    
    public String getName(){
        return myname;
    }
}