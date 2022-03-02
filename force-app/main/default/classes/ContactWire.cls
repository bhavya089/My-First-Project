public with sharing class ContactWire {
    public contactWire() {

    }
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(){
       return [select id,Name,phone from Contact limit 10];
    }
    @AuraEnabled
    public static List<Contact> getContactRecordsList(){
        return [select id,name from Contact limit 10];
    }
    }