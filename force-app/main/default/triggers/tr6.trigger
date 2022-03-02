trigger tr6 on Account (after update) {
    if(trigger.isafter && trigger.isupdate) {
        List<Contact> contacts = new List<Contact>();
        for (Account a : Trigger.new) {        
            if(a.Name == 'makeContact') {
                contacts.add(new Contact (LastName = a.Name,
                                          AccountId = a.Id));
            }
}
        insert contacts;
}
}