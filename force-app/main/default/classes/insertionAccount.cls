public class insertionAccount {
public static void beforeinsert(List<Account> aclist){
        Account a = new Account();
       List<Account> acclist1 = aclist;
        a.name = a.name + 'repaka';
   }
    public static void beforeupdate(Map<Id,Account> accmap,List<Account> aclist){
        system.debug(accmap);
        for(Account ac:aclist){
            Account oldacc =new Account();
            oldacc = accmap.get(ac.id);
            if(oldacc.name != ac.name){
                ac.name.addError('account name cannot be modified');
            }
        }
    } 
}