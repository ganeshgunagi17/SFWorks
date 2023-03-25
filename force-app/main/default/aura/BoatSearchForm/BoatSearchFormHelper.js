({
   
    onSearch: function(component){
         alert('in on search method');
        var boatlist = component.get("c.getBoats");
        boatlist.setCallback(this,function(result){
            if(result.getState()=='SUCCESS'){
                alert(result);
                component.set("v.boattypes",result.getReturnValue());
            }else{
                alert(result);
            }
        });
        $A.enqueueAction(boatlist);
    }
})