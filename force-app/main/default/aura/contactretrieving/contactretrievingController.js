({
	contactsGetting : function(component, event, helper) {
		var action = component.get("c.getContactsList");
        action.setParams({accountId:component.get('v.recordId')});
        action.setCallback(this,function(response){
           // var finlist = response.getReturnValue();
           // console.log(finlist);
           // alert(response.getState());
            component.set('v.contactobj',response.getReturnValue());
         //   console.log("v.contactobj");
        },"SUCCESS");
        
        $A.enqueueAction(action,false);
	},
    
    redirectpage : function(component, event, helper){
        var eventSource = event.getSource();
        var rcordID = eventSource.get('v.name');
        alert(rcordID);
         var navEvt = $A.get("e.force:navigateToSObject");
    navEvt.setParams({
      "recordId":rcordID ,
     // "slideDevName": "related"
    });
    navEvt.fire();
    },
    
    redirecttourl : function (component, event, helper) {
     var eventSource = event.getSource();
        var urll = eventSource.get('v.name')   
    var urlEvent = $A.get("e.force:navigateToURL");
    urlEvent.setParams({
      "url": urll
    });
    urlEvent.fire();
},
    redirecttocases : function (component, event, helper) {
    var relatedListEvent = $A.get("e.force:navigateToRelatedList");
    relatedListEvent.setParams({
        "relatedListId": "Cases",
        "parentRecordId": component.get("v.recordId")
    });
    relatedListEvent.fire();
}

})