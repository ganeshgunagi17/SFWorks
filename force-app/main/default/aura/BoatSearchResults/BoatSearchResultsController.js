({
    doInit : function(component, event, helper) {
        
    },
    
    doSearch: function(component, event, helper)
    {
        var params = event.getParam('arguments');
        //console.log('---',params.boatTypeId);
        component.set("v.boatTypeId", params.boatTypeId);
        
        helper.onSearch(component, event);
        
        
    },
    
    onBoatSelect: function(component, event, helper)
    {
        
        var boatId = event.getParam("boatId");
        
        console.log('From Event-->',boatId);
        component.set("v.selectedBoatId", boatId);
        
        helper.onSearch(component, event);
        
    }
})