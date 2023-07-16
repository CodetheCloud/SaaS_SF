@isTest
public class RESTCallDemo_Test {

    @isTest
    public static void testREST(){
        //RESTCallDemo.doCheck();
        //Methods defined as TestMethod do not support Web service callouts
        
        
        Test.setMock(HttpCalloutMock.class, new RESTCallDemoMock());  //VVI 
        RESTCallDemo.doCheck(); //rest callout 
        //Methods defined as TestMethod do not support Web service callouts
    }
    
}