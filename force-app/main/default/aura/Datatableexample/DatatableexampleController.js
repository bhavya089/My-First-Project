({
    init : function(component, event, helper) {
        component.set('v.mycolumns', [
            {label: 'Account Name', fieldName: 'Name', type: 'text'},
            {label: 'Phone', fieldName: 'Phone', type: 'phone'},
            {label: 'Rating', fieldName: 'Rating', type: 'text'}
        ]);
        
        var action = component.get("c.fetch");
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                console.log(response.getReturnValue());
                component.set("v.mydata", response.getReturnValue());
            }
            
                else {
                    console.log("Unknown Error");
                }
        });
        $A.enqueueAction(action);
    },
    
    handleRowAction : function(component, event, helper){
        var selRows = event.getParam('selectedRows');
        component.set("v.selectId",selRows);
    },
    
    doDelete : function(component, event, helper){
        var selectIdList = component.get("v.selectId");
        var action = component.get("c.getRelatedList");
        action.setParams({ recordId : selectIdList});
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                var contactList = response.getReturnValue();
                component.set("v.ContactList",contactList);
                alert('Successfully retrieve');   
            }           
                else {
                    console.log("Unknown Error");
                }
            
        });
        $A.enqueueAction(action);
    },
})