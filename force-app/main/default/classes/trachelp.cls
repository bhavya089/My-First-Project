public class trachelp {
    public static void afterinsert(List<Account> acList){
        List<Contact> conList = new List<Contact>();
        for(Account actObj: acList){
            Contact conObj = new Contact();
            conObj.AccountId=actObj.id;
            conObj.LastName=actObj.Name;
            conList.add(conObj);
        }
        if(!conList.isEmpty()){
            insert conList;
        }
    }
}