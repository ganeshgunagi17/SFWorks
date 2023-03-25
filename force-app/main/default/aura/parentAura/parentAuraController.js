({
    callNavigate : function(component, event, helper) {
       
        component.set('v.varVal','test');

      var nav  = component.find('navigateService');
      var pageRef = {
        type:'standard__objectPage',
        attributes:{
            objectApiName:'Account',
            actionName:'list'
        },
        state:{
            filterName:'Recent'
        }
    }
    event.preventDefault();
    nav.navigate(pageRef);
},

onPageReferenceChange: function(cmp,event,helper){
    console.log('in page ref');
    var myPageRef = cmp.get("v.pageReference");
    var accs = myPageRef.state.c__listOFIds;
    cmp.set("v.listOFIds",accs);
},

switchToNewTab : function(component,event,helper){
    console.log('in switchToNewTab');
    var wsId =  component.find('workspace');
    
    wsId.openTab({focus:true}).then(function(response) {
        var focusedTabId = response.tabId;  
       console.log('resposss');
        wsId.getTabInfo({
            tabId: response
      }).then(function(tabInfo) {
      console.log("The url for this tab is: " + tabInfo.url);
      });

       
      
    })
    .catch(function(errr){
        console.log('err'+errr);
    });
    
    
}

})
