@isTest
public class ConSearchTest {

    @isTest
    public static void test1(){
        
        Contact con = new Contact();
        con.lastname = 'test';
        con.phone = '8796653421';
        insert con;
        
         RestRequest request = new RestRequest();
	     request.requestURI = '/services/apexrest/empSearch/ph=8796653421';
         request.httpMethod = 'GET';
         
         Restcontext.request = request;
        
        RestResponse response = new RestResponse();
        response.statusCode = 200;
        response.responseBody = Blob.valueOf('{"message": "Test response"}');
        
        
        
        
        contact conmy = ConSearch.apiK();
        system.debug(conmy);

    }
}