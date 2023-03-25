public class SelectListApex {

     String[] names=new String[]{};
    public PageReference getNames(){
        return null;
    }
    
    public List<SelectOption> getNameOptions(){
        
        List<SelectOption> lsop=new List<SelectOption>();
        lsop.add(new SelectOption('Ganesh','Gani'));
        lsop.add(new SelectOption('Ganesh1','Gani1'));
        lsop.add(new SelectOption('Ganesh2','Gani2'));
        lsop.add(new SelectOption('Ganesh3','Gani3'));
        return lsop;
    }
    public void setNameList(String[] names){
        this.names=names;
    }
    
    public String[] getNamelist(){
        return names;
    }
}