//public class trachelp {
//    public static void beforeinsert(List<Account> aclist){
//        Account a = new Account();
//        List<Account> acclist1 = aclist;
//        a.name = a.name + 'repaka';
   // }
   // public static void beforeupdate(Map<Id,Account> accmap,List<Account> aclist){
   //     system.debug(accmap);
    //    for(Account ac:aclist){
      //      Account oldacc =new Account();
        //    oldacc = accmap.get(ac.id);
          //  if(oldacc.name != ac.name){
            //    ac.name.addError('account name cannot be modified');
            //}
        //}
    //} 
//}
//**************************(assignment)*********************//

//public class trachelp{
//    public static void checkrating(Map<Id,Account> actnewmap , Map<Id,Account> actoldmap){
//        Set<Id> accountIdSet = new Set<id>();
//        for(Account ac:actnewmap.values()){
//            if (actnewmap.get(ac.Id).Rating!=actoldmap.get(ac.Id).Rating
//               && actoldmap.get(ac.Id).Rating=='cold' 
//               && actnewmap.get(ac.Id).Rating=='hot' )
//             {
//               accountIdSet.add(ac.Id);    
//             }
//        }
//        if(accountIdSet.size()>0){
//            List<Messaging.SingleEmailMessage> messagesList = New List<Messaging.SingleEmailMessage>();  //standard class
//            for(Contact con:[select Id,Email from contact where is_primary__c =true and AccountId in:accountIdSet]){
//               messaging.SingleEmailMessage message = New messaging.SingleEmailMessage ();
//                message.ToAddresses = new String[]{con.Email};
//                    message.subject ='account status changed';
//                message.plaintextBody = 'account status update form cold to hot';
//                messagesList.add(message); 
//            }
//            if(messagesList.size()>0){
//             messaging.sendEmail(messagesList);  
//            }
//        }
//    }
//        
//}

//*****************************(Assignment 2)**********************************//


public class AccountHandler{
    public static void preventdeletion(List<Account> accountList ){
        Set<Id> accountIdSet = New Set<id>();
        Map<Id,Boolean> accountNewMap = new Map<Id,Boolean>();
        for (account aObj : accountList )
        {
            accountIdSet.add(aObj.Id);
        }
        if(accountIdSet.Size()>0)
        {
        for(Contact conObj:[Select is_primary__c , accountid FROM Contact WHERE accountId in:accountIdSet AND is_primary__c =TRUE]){
          accountNewMap.put(conObj.AccountId,conObj.is_primary__c);     
              
        }
            for(Account aobj:accountList){
                if(accountNewMap.get(aObj.Id) == TRUE){
                    aObj.addError('account cannot be deleted');
                    system.debug('error added');
                }
            }
           
        }
    } 
}