({
	showRecords : function(component, event, helper) {
        alert('in showrecords');
		var params = event.getParam('searchkey');
        if(params != null){
            var action = component.get("c.getAllAccountsString");
            action.setParams({
                'name':params
            });
            action.setCallback(this,function(response){
                if(response.getState()==='SUCCESS'){
                    component.set("v.accountValues",response.getReturnValue());
                }else{
                    alert('error');
                }
            });
            $A.enqueueAction(action);
        }
	}
})