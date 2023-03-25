({
	eventHandlerMethod : function(component, event, helper) {
        alert('in eventhandler method child');
		var paramValues = event.getParam('param1');
        alert(paramValues);
	}
})