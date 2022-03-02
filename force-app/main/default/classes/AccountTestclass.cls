@isTest
public class AccountTestclass {
 private static testMethod void testInsertContacts(){
        Account actObj = new Account();
        actObj.Name='testclass';       
         Test.startTest();
            insert actObj;
        Test.StopTest();
     Contact contObj = [select id,name from Contact where accountId=:actObj.Id];
     System.assert(contObj.Id!=null);
}
}