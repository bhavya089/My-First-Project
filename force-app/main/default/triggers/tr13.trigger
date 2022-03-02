//trigger tr13 on Account (After delete) {
//        if(trigger.isafter && trigger.isdelete) {
//        List<Contact> contacts = new List<Contact>();  
//            system.debug(trigger.old);
//        for (Account a : Trigger.old) {
//            system.debug(a.name);
//            if(a.Name == 'trail') {
//                contacts.add(new Contact (LastName = a.Name,
//                                          AccountId = a.Id));
//            }
//}
//        insert contacts;
//}
//}
//
//
//*****************(after undelete)************************//
//  trigger tr13 on Account (after undelete) {

//    List<Account> accList = new List<Account>();
//    for(Account undeletedAccount : [SELECT ID, Name from Account where Id IN : trigger.old]){ 
//        undeletedAccount.Name = ('Undeleted :' + undeletedAccount.Name);
//        accList.add(undeletedAccount);
//        system.debug(undeletedAccount.name);
//    } 
//    update accList;
//}
//
//
//***********(assignment 2)*************************************//


Trigger tr13 on Account (after update,before delete)
{
    if (trigger.isafter && trigger.isupdate)
    {
        system.debug('I am in after trigger');
//        trachelp.checkrating(Trigger.newMap,trigger.oldMap);
    }
    if (trigger.isbefore && trigger.isdelete)
    {
        system.debug('I am in before trigger');
        AccountHandler.preventdeletion(Trigger.old);
    }
    
    
}