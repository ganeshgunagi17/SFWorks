({
	performEditing : function(cmp,event,help) {
		cmp.find("recorddata").getNewRecord(
        "Account",
        null,
        false,
            $A.getCallback(function(){
                var recordcreated = cmp.get("v.record"); 
                var recordError = cmp.get("v.recordError");
                var resultToasts = $A.get("e.force:showToast");
                if(recordError != null){
                    alert('error initializing the record');
                }else{
                    
                
                }
            })
        );
	}
})