({
    fetchAccounts : function(component, event, helper) {
        component.set('v.mycolumns', [
            {label: 'Name', fieldName: 'Name', type: 'text'},
            {label: 'Industry', fieldName: 'Industry', type: 'text'},
            {label: 'Type', fieldName: 'Type', type: 'Text'}
        ]);
        var action = component.get("c.fetch");
        action.setParams({
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state === "SUCCESS") {
                var recordList = response.getReturnValue(); 
                component.set("v.acctList", recordList);
            }
        });
        $A.enqueueAction(action);
    },
    handleRowAction : function(component, event, helper){
        var selectedRows = event.getParam("selectedRows");
        console.log('selected rows : '+selectedRows);
        component.set("v.selectedRows",selectedRows);
        if(selectedRows != null && selectedRows != ''&& selectedRows.length == 1){
            console.log('selected row Id: '+selectedRows[0].Id);
            component.set("v.accountId",selectedRows[0].Id);
            var ConList = component.get("c.fetchContacts");
            ConList.setParams({accountId: selectedRows[0].Id
                              });
            
            ConList.setCallback(this, function(data) 
                                {
                                    component.set("v.ContactList", data.getReturnValue());
                                });
            $A.enqueueAction(ConList);
        } else {
            component.set("v.ContactList", null);
        }
    },
    myActions : function(component, event, helper) 
    {
        var ConList = component.get("c.fetchContacts");
        ConList.setParams({recordId: component.get("v.accountId")
                          });
        
        ConList.setCallback(this, function(data) 
                            {
                                component.set("v.ContactList", data.getReturnValue());
                            });
        $A.enqueueAction(ConList);
    } 
})