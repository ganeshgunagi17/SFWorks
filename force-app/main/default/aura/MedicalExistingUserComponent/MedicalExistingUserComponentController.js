({
	handleEvent : function(component, event, helper) {
       
		var comp = event.getParam('existingUserName');
        alert(comp);
        component.set("v.medOpen",true);
        component.set("v.valueFromChild",comp);
	}
})