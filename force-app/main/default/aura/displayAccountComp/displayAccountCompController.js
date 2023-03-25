({
	myAction : function(component, event, helper) {
		var compget=component.get("c.getList");
        compget.setCallback(this,function(response){
            var result=response.getReturnValue();
            
            component.set("v.aclist",result);
            
        });
        $A.enqueueAction(compget);
	}
})