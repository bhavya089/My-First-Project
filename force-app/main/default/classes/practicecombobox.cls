public class practicecombobox {
 @Auraenabled
    public static Map<string,String> retrieveValues(){
        Map<String,String> dummyValuesmap = new Map<String,String>();
        for (contact contobj:[select id,lastname from contact limit 10]){
            dummyValuesmap.put(contobj.Id,contobj.lastName);
        }
        return dummyValuesMap;
    }
}