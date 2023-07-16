@isTest
global class PhoneValidationMock implements HttpCalloutMock {
    	
    global HTTPResponse respond(HTTPRequest req){
         HttpResponse response = new HttpResponse();
         response.setHeader('Content-Type', 'application/json');
         response.setBody('{"valid":true, "number":"918792441859", "local_format":"08792441859", "international_format":"+918792441859","country_prefix":"+91","country_code":"IN","country_name":"India (Republic of)","location":"Karnataka","carrier":"Tata Teleservices Ltd (TTSL)","line_type":"mobile"}');
         response.setStatusCode(200);
         return response; 
    } 

}