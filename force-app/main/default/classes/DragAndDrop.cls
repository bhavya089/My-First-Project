public with sharing class DragAndDrop {
    public DragAndDrop() {
    }
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(){
        return[SELECT Id, Name,Type,Industry FROM Account Where Industry!=null];
    }
}