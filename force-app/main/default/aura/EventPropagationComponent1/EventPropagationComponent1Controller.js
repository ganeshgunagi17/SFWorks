({
	doInit : function(component, event, helper) {
		var pEvent = component.getEvent("propEvent");
        pEvent.setParams({
            'msg':'ganesh'
        });
        pEvent.fire();
        
	}
})