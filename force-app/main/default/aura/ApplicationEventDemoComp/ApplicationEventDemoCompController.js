({
	initHandlerMethod : function(component, event, helper) {
        var action = $A.get("e.c:ApplicationEventDemo");
        action.setParams({
            'param1':'this is my name'
        });
        action.fire();
	}
})