public with sharing class ApexControllerSelection {
    public List<Books__c> selectedIds {get;set;}
    public ApexControllerSelection(ApexPages.StandardSetController ctrl) {
       
            selectedIds=ctrl.getSelected();
        
    }

    public PageReference callAura(){
        String returnUrl = '/lightning/cmp/c__parentAura?c__listOFIds='+selectedIds;
        PageReference pgReturnPage = new PageReference(returnUrl);
        pgReturnPage.setRedirect(true);
        return pgReturnPage;
    }
}
