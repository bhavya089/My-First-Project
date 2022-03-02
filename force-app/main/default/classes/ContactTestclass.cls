@isTest
private class ContactTestclass {
    private static testMethod void testTitleUpdating(){
        Contact contObj = new Contact();
        contObj.title='TestClass';
        contObj.LastName='testclass';
        contObj.FirstName =contObj.FirstName+'practice';
        insert contObj;
         Test.startTest();
            update contobj;
        Test.StopTest();
        
    }
}