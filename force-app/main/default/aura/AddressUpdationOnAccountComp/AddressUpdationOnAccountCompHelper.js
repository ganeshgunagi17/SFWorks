({
    /* **********************************************************
     * Method Name :submitForApproval()
     * Date		   : Aug 18th, 2021
     * Description : This method will be doing all the validations and approval submission based on the 
     * 				 address fields and contact records which are selected. 
     *************************************************************/
    submitForApproval: function(component, event) {
        var address1ToUpdate = component.get("v.addressLine1");
        var cityToUpdate = component.get("v.city");
        var stateToUpdate = component.get("v.state");
        var zipcodeToUpdate = component.get("v.zipcode");
        var countryToUpdate = component.get("v.country");
        var action = component.get("c.submitForApproval");

        //If contact is selected without any address, then show warning message to fill the address
        //before proceeding to approval submission
        if ((address1ToUpdate == null && cityToUpdate == null && stateToUpdate == null &&
                zipcodeToUpdate == null && countryToUpdate == null
            ) &&
            component.get("v.submissionList").length > 0) {
            var showWarningToast = $A.get("e.force:showToast");
            showWarningToast.setParams({
                "title": "Warning",
                "type": "warning",
                "mode": 'dismissible',
                "message": "Please fill the address before submitting to approval."
            });
            showWarningToast.fire();
        } //If address values are not updated and no if contacts are selected then do not make any changes.
        else if (
            (address1ToUpdate == null && cityToUpdate == null && stateToUpdate == null &&
                zipcodeToUpdate == null && countryToUpdate == null
            ) && component.get("v.submissionList").length == 0) {
            var noEntriesToast = $A.get("e.force:showToast");
            noEntriesToast.setParams({
                "title": "Record unchanged",
                "type": "success",
                "mode": 'dismissible',
                "message": "No changes were made on this record."
            });
            noEntriesToast.fire();

            var closeQuickActionTab = $A.get("e.force:closeQuickAction");
            closeQuickActionTab.fire();
        } else if ((address1ToUpdate != null || cityToUpdate != null || stateToUpdate != null ||
                zipcodeToUpdate != null || countryToUpdate != null
            ) && component.get("v.submissionList").length == 0) {
            var noContactsToasts = $A.get("e.force:showToast");
            noContactsToasts.setParams({
                "title": "No contacts selected",
                "type": "error",
                "mode": 'dismissible',
                "message": "No contacts are selected. Please select the contacts to continue"
            });
            noContactsToasts.fire();
        }

        //if address fields are updated and if contacts are selected then proceed to approval submission
        else {
            var contactIdsList = [];
            contactIdsList = component.get("v.submissionList");
            action.setParams({
                "contactIdList": contactIdsList,
                "addressLine1": address1ToUpdate,
                "city": cityToUpdate,
                "zip": zipcodeToUpdate,
                "state": stateToUpdate,
                "country": countryToUpdate
            });
            action.setCallback(this, function(response) {

                if (response.getState() === 'SUCCESS' && response.getReturnValue() == 'SUCCESS') {

                    var toastEvent = $A.get("e.force:showToast");
                    toastEvent.setParams({
                        "title": "Success!",
                        "type": "success",
                        "mode": 'dismissible',
                        "message": "Submitted for approval"
                    })
                    toastEvent.fire();

                    var closeQuickActionTab = $A.get("e.force:closeQuickAction");
                    closeQuickActionTab.fire();

                } else if (response.getReturnValue().includes('ALREADY_IN_PROCESS')) {
                    var toastEvent = $A.get("e.force:showToast");
                    toastEvent.setParams({
                        "title": "Already in process..",
                        "type": "warning",
                        "mode": 'dismissible',
                        "message": "Record is already in pending approval state"
                    })
                    toastEvent.fire();
                    var closeQuickActionTab = $A.get("e.force:closeQuickAction");
                    closeQuickActionTab.fire();
                }
            });
            $A.enqueueAction(action);
        }
    }
})