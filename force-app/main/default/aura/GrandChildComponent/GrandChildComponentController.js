({
	initHandler : function(component, event, helper) {
        var eventHandler = component.getEvent("testEvent");
        eventHandler.setParams({
            'msg':'i am from grand child component'
        });
        console.log('in grand child');
        eventHandler.fire();
	}
})