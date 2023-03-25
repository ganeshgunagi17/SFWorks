({
	onFormSubmit : function(component, event, helper) 
    {
        //console.log('Inside Event Handler controller...');
        // Boat Id handled by FormSubmit event
        var boatIdSelected = event.getParam('formData');
        var boatId = boatIdSelected.boatTypeId;
        
        var child = component.find('childCmp');
        child.search(boatId);
		
	}
})