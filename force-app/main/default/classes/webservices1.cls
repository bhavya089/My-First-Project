public class webservices1 { 
        private static final string spoonacularRecipe_Endpoint = 'https://api.spoonacular.com';
        private static final string API_KEY = 'f6d5b21015e94f3a983bc7a53f6039eb';
    public void getresults(){ 
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(spoonacularRecipe_Endpoint+'/recipes/complexSearch?apiKey='+API_KEY);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        system.debug(response.getStatusCode());
        system.debug(response.getBody());
    }
}