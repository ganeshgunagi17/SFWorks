({
	handleCompEvent : function(component, event, helper) {
		var cmpevent=component.getEvent("compregister");
        cmpevent.setParam("v.message","hey how are you??");
        cmpevent.fire();
	}
})