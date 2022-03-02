public class DataTable {
@AuraEnabled
    public static List<Account> fetch(){
        List<Account> acc = [SELECT Name, Phone, Rating FROM Account LIMIT 20];
        return acc;
    }
    
    @AuraEnabled
    public static void deleteForm(List<Account> lstId) {
        List<Account> rf = [SELECT Id FROM Account WHERE Id IN :lstId];
        delete rf;
    }
    @AuraEnabled
    public static list<Contact> getRelatedList(Id recordId)
    {
        List<Contact> Conlist = [Select id, name,firstname,lastname from Contact where AccountId=: recordId ];
        return Conlist;
    }
}