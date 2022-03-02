@isTest
public class Accounttestclass2 {
private static testMethod void testPhoneUpdating(){
        Account actObj = new Account();
        actObj.Name='testclass';       
         Test.startTest();
             actObj.phone = '+91';
        Test.StopTest();
}
}