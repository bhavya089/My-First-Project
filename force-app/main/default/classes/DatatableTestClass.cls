@isTest
private class DatatableTestClass {
    private static testMethod void testDataTableCreation(){
        Account acctObj = DataTableTestDataFactory.prepareAccounts(True);
        Test.startTest();
        practicdatatable dtCreationControllerObj = new practicdatatable();
        dtCreationControllerObj.getfetchAccount();
        Test.stoptest();
        
        
    }
}