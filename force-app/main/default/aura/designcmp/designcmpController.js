({
	loadRecords : function(component, event, helper) {
        component.set('v.columns',[
            {label: 'Name', fieldName: 'Name', type: 'text'}
        ]);
		var objectName = component.get("v.objectName");
        var action = component.get("c.retrieveDetails");
        action.setParams({"sobjectName":objectName});
        action.setCallback(this,function(response){
            var records = response.getReturnValue();
            component.set("v.recordsList",records);
        });
        $A.enqueueAction(action);
	}
})