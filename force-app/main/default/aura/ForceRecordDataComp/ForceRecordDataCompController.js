({
	doChange : function(component, event, helper) {
        component.find('notify').showToast({
            "title":"Record Updated",
            "message":"this was done"
        });
	}
})