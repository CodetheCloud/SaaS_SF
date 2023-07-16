public class DreamSmallRest {

    public static void doCheck(){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/');
        request.setMethod('GET');
        HttpResponse response = http.send(request);  //real
         
        
        
        if (response.getStatusCode() == 200) {
            system.debug('body = ' + response.getBody());  //Printing the JSON Data.
        } 
    }
    
}