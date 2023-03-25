({
	updatedRecord : function(component, event, helper) {
		var ldsrecord = component.find("studentRecordData");
        var spinnerid = component.find("spinnerId");
       
        component.set("v.studentFullName",component.get("v.fieldsRecord.Full_Name__c"));
        ldsrecord.reloadRecord();
        
	}
})