public class ContactRecords {
           @Auraenabled
    public static List<Account> getAccounts(){
        return[SELECT id,name,industry FROM Account limit 10];
    }
     @Auraenabled
    public static List<Account> getAccountRecords(String objName,String fields){
        return database.query('SELECT id,'+fields+' FROM '+objName+' WHERE leadSource!=null and FirstName!=null'); 
}
}