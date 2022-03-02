trigger tr11 on Account (after update) {
        if(trigger.isafter && trigger.isdelete) {
        List<Contact> contacts = new List<Contact>();                                         // (after delete,trigger.old)
        for (Account a : Trigger.old) {                                                                                              
            if(a.Name == 'trail') {
                contacts.add(new Contact (LastName = a.Name,
                                          AccountId = a.Id));
            }
}
        insert contacts;
}
}