trigger tr12 on Account (After update) {
    if(trigger.isafter && trigger.isupdate) {
        List<Contact> contacts = new List<Contact>();
        for (Account a : Trigger.new) {                                                               //  (after update ,trigger.new)                                
            if(a.Name == 'makeContact') {
                contacts.add(new Contact (LastName = a.Name,
                                          AccountId = a.Id));
            }
}
        insert contacts;
}
}