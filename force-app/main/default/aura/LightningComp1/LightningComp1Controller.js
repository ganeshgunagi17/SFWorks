({
	checkAccount : function(component, event, helper) {
		var accnum = component.get("v.accountnumber");
        if(accnum == null || accnum == ''){
            component.set('v.accountnumcheck',false);
            component.set("v.blankvalue",true);
            component.set("v.severity","error");
            component.set("v.msgtitle","error record");
            component.set("v.message","value cannot be null");
        }else{
            component.set("v.blankvalue",false);
            component.set('v.accountnumcheck',true);
            var action = component.get("c.getContacts");
            action.setParams({
                "accountnum":accnum
            });
            action.setCallback(this,function(response){
                var state = response.getState();
                alert(state);
                if(state==="SUCCESS"){
                    var responseval = response.getReturnValue();
                    
                    component.set("v.contactList",responseval);
                }
            });
             $A.enqueueAction(action);
        }
       
	}
})