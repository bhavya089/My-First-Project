public with sharing class AccountController {
    //addin one comment
    //adding one line
    public String accountId{get;set;}
    public Account actObj{get;set;}
    public AccountController() {
        actObj = new Account();
    }  
    @AuraEnabled(cacheable=true)    
    public static List<Account> getAccounts(){
        return [select id,name,type,phone,industry from Account limit 10];
    }


}