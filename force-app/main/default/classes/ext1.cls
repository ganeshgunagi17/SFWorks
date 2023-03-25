public class ext1 {

    public Integer sizeval {get;set;}
    ApexPages.StandardSetController controllers;
    public ext1(ApexPages.StandardSetController sc){
        this.controllers = sc;
        controllers.setPageSize(sc.getResultSize());
        sizeval=sc.getResultSize();
    }
}