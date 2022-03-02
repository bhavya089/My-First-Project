trigger acnttrigger  on Account (before insert , before update) {
    if(trigger.isbefore && trigger.isinsert){
        Account a =trigger.new[0];
        a.phone = '+91';
    }
    
    if(trigger.isbefore && trigger.isupdate){
        Account a = trigger.new[0];
        a.Description='updated by interns';
        }
    }