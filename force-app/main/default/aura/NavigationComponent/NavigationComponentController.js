({
	doInit : function(component, event, helper) {
		component.set("v.checkCondition",true);
	},
    navigateTo : function(component,event,helper){
       var pageRef = component.find('navId');
        var pageReference = {
            type : 'standard__objectPage',
            attributes : {
                objectApiName : 'Account',
                actionName : 'list'
            },
        };
        pageRef.navigate(pageReference);
        var notify = component.find('notifyId');
        notify.showNotice({
            'variant':'success',
            'header':'successfully navigated to accounts!!',
            'message':'redirection success',
            closeCallback:function(){
                alert('closed this alert');
            }
        });
    }
})