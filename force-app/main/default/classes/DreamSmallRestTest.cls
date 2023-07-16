@isTest
public class DreamSmallRestTest {
    
    @isTest
    public static void test1(){
        // If it's test method - > we can not perform the Callout. 
        // System.TypeException: Methods defined as TestMethod do not support Web service callouts
        Test.setMock(HttpCalloutMock.class, new DreamSmallRestMock() );  // VVI
        
        DreamSmallRest.doCheck();   
        
        
    }

}