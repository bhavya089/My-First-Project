public class ContactAccountController {
@AuraEnabled
    public static List<Account> fetch(string accountId){
        List<Account> acc = [SELECT id,Name, Phone, Rating FROM Account LIMIT 20];
        return acc;
    }
    @AuraEnabled
    public static List<Contact> fetchContacts(string accountId){
        System.debug('acc id : '+accountId);
        List<Contact> con = [SELECT id,FirstName,LastName,Email FROM Contact Where AccountId=:accountId];
        return con;
    

}
}