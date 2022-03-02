public class DesignApexclass {
    @Auraenabled
    public static List<sObject> retrieveDetails(String sobjectName){
        List<sObject> sObjectList = new List<sObject>();
        String query = 'select id,name from '+sobjectName+' limit 10';
        sObjectList = database.query(query);
        return sObjectList;
    }

}