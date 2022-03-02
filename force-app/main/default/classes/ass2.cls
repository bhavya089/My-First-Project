@RestResource(urlMapping='/contactretrive1/*')
global class ass2 {
    @HTTPGet
    global static void JSONContactsMethod (){
       String contactId = RestContext.request.params.get('contactId');
       contact conObj = [select id , firstName , lastName , email from contact where id=:contactId];
            JSONGenerator jsonGen = JSON.createGenerator(true);
            jsonGen.writeStartObject();
            jsonGen.writeFieldName('ContactList');
           jsonGen.writeStartArray();
                jsonGen.writeStartObject();
                jsonGen.writeStringField('ID',conObj.Id);
                jsonGen.writeStringField('FirstName',conObj.firstName);
                jsonGen.writeStringField('LastName',conObj.lastName);
               jsonGen.writeStringField('email',conObj.email);
                jsonGen.writeEndObject();
            jsonGen.writeEndArray();
            jsonGen.writeEndObject();
            String jsonData = jsonGen.getAsString();
           System.debug('Json Data - ' + jsonData);
            RestContext.response.addHeader('contact details' , 'application/json');
    RestContext.response.responseBody = Blob.valueOf(jsonData);
        }
        
    }