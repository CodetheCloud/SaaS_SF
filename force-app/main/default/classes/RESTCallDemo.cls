public class RESTCallDemo {

    public static void doCheck(){
        Integer Aid = 5;
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+Aid);
        request.setMethod('GET');
        HttpResponse response = http.send(request);  //you can not call it from test class directly. 
        if (response.getStatusCode() == 200) {
        	system.debug('body = ' + response.getBody());
        } 
    }
}