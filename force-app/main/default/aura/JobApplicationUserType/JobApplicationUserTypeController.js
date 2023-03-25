({
	adminMethod : function(component, event, helper) {
		var nav = component.find("navigateId");
        var pageRef = {
            type:"standard__component",
            attributes :{
                componentName:"c__JobApplicationAdminPage"
            }
        };
        nav.navigate(pageRef);
	}
})