@RestResource(urlMapping='/contactsretrive/*')
global with sharing class gettingcontacts {
@HTTPGet
global static void getcontacts(){
String jsonString;
   List <Contact> contObjList = [select id,firstName,lastName,email from contact];
    jsonString = JSON.serialize(contObjList);
     RestContext.response.responseBody = blob.valueof(jsonString);
         RestResponse response = RestContext.response;
List<CaseJsonparser2.customerDetails>  studentList = (List<CaseJsonparser2.customerDetails>)JSON.deserialize(jsonString,List<CaseJsonparser2.customerDetails>.class);
System.debug('Deserialized Result:'+studentList);
}
}