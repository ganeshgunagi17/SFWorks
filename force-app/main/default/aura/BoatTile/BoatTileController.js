({
	onBoatClick : function(component, event, helper) {
        var boatimages = component.get("c.getBoatImages");
        boatimages.setCallback(this,function(result){
            if(result.getState()=='SUCCESS'){
                component.set("v.boat",result.getReturnValue());
            }else{
                alert('Error');
            }
        });
        $A.enqueueAction(boatimages);
	}
})