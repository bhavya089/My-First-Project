@RestResource(urlMapping='/contactsretrive1/*')
global class ass1 {
    @HTTPGet
    global static void JSONContactsMethod (){
        List<Contact> conList = [SELECT ID, firstName, lastName, email FROM Contact];
        if(conList != null){
            JSONGenerator jsonGen = JSON.createGenerator(true);
            jsonGen.writeStartObject();
            jsonGen.writeFieldName('ContactList');
            jsonGen.writeStartArray();
            for(Contact con : conList){
                jsonGen.writeStartObject();
                jsonGen.writeStringField('ID',con.Id);
//                jsonGen.writeStringField('FirstName',con.firstName);
                jsonGen.writeStringField('LastName',con.lastName);
//                jsonGen.writeStringField('email',con.email);
                jsonGen.writeEndObject();
            }
            jsonGen.writeEndArray();
            jsonGen.writeEndObject();
            String jsonData = jsonGen.getAsString();
           System.debug('Json Data - ' + jsonData);
            RestContext.response.addHeader('contact details' , 'application/json');
            RestContext.response.responseBody = Blob.valueOf(jsonData);
        }
        
    }
}