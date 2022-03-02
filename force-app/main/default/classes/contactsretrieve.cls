@RestResource(urlMapping='/contactslist/*')
global class contactsretrieve{
@HTTPGet
global static void getContactById(){
String jsonString;
String contactId = RestContext.request.params.get('contactId');
    contact conObj = [select id , firstName , lastName , email from contact where id=:contactId];
    jsonString = JSON.serialize(conObj);
    RestContext.response.addHeader('contact details' , 'application/json');
    RestContext.response.responseBody = Blob.valueOf(jsonString);
}
}