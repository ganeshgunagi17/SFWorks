({
	doInitCall : function(component, event, helper) {
		helper.fetchAllAccounts(component,event);
	},
    checkAccount : function(component, event, helper){
        helper.getAccountBasedOnKeySearch(component,event);
    }
})