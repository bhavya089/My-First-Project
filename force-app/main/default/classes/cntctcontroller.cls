public class cntctcontroller {
    @Auraenabled
    public static List<contact> getContactsList(string accountId){
        
        List<contact> contactsList = new List<contact> ();
        contactsList=[SELECT id,name ,email FROM contact WHERE email!=null AND accountId=:accountId];
        return contactsList;
    }
    @Auraenabled
    public static contact createContacts(contact con,Id accountId){
        con.accountId=accountId;
        insert con;
        return con;
    }
}