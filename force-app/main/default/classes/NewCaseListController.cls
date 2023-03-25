public class NewCaseListController {

    public  List<Case> getNewCases(){
        List<Case> lcase=new List<Case>();
        lcase=[select Id,CaseNumber from Case where status ='New'];
        return lcase;
    }
}