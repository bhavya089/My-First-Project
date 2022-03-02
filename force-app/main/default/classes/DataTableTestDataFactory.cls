@isTest
public class DataTableTestDataFactory {

    public static Account prepareAccounts(boolean isInsert){
        Account acObj = new Account();
        acObj.Name ='Test1';
        acObj.Industry = 'Education';
        if(isInsert){
            insert acObj;
        }
        return acObj;
    }
}