public class tr9 {
    public static void method1(List<Account> newList,List<Account> oldList,Map<id,Account> newMap,Map<id,Account> oldMap){
        for(Account obj:newlist){
            system.debug('New Value of phone from newMap'+newMap.get(obj.id).phone);
        }
          for(Account obj1:oldlist){   
            system.debug('New Value of phone from oldMap'+oldMap.get(obj1.id).phone);
        }
}
}