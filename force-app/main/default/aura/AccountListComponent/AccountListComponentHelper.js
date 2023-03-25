({
	fetchAllAccounts : function(component,event) {
		var allAccountsList = component.get("c.getAllAccounts");
        allAccountsList.setCallback(this,function(resp){
            var responseState = resp.getState();
            if(responseState === 'SUCCESS'){
                component.set("v.accountList",resp.getReturnValue());
            }else{
                
            }
        });
        $A.enqueueAction(allAccountsList);
	},
    getAccountBasedOnKeySearch: function(cmp,event){
        var keyEntered = cmp.get("v.searchKey");
        var actionBasedOnKey = cmp.get("c.getAccountsBasedOnKey");
        actionBasedOnKey.setParams({
            keyString:keyEntered
        });
        actionBasedOnKey.setCallback(this,function(resp){
            var responseState = resp.getState();
                        if(responseState === 'SUCCESS'){
                cmp.set("v.accountList",resp.getReturnValue());
                                             
            }else{
                
            }
        });
        $A.enqueueAction(actionBasedOnKey);
    },
    handlePress : function(component){
        alert('in handle press method from init ');
    }
})