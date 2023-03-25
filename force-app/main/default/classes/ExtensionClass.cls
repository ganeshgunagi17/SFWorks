public class ExtensionClass {
	public Account Accindustry;
    
    public ExtensionClass(ApexPages.StandardController stanCh){
        Accindustry=(Account)stanCh.getRecord();
        
    }
    public String getIndustry(){
        return 'Hello industry is '+Accindustry.Industry;
    }
}