@RestResource(urlMapping='/CaseContact/v1/')
global class CaseContactCreationByAPI {
       @HttpPost
    global static void createcasecontact(){
        RestRequest request = RestContext.request;
        String jsonBody = request.requestBody.toString();
        
        RestResponse response = RestContext.response;
         
         CaseJsonParser parserObj = (CaseJsonParser) System.Json.deserialize(jsonBody, CaseJsonParser.class);
          
        if(parserObj != null && parserObj.caseDetails != null)  {
            Contact contObj =new Contact();
            contObj.FirstName = parserObj.customerDetails.firstName;
            contObj.LastName  = parserObj.customerDetails.lastName;
            contObj.email = parserObj.customerDetails.email;
            insert contobj;
            
            Case caseObj = new Case();
            caseObj.Origin = parserObj.caseDetails.origin;
            caseObj.Status = 'New';
            caseObj.ContactId = contObj.id;
            insert caseObj;
        }
    }
}