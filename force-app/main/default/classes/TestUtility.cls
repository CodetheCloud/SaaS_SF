@isTest
public class TestUtility {
    
	@isTest
    static void myTest(){
       
       //Governor Limit
       //100 SOQL, 150 DML
       
       Test.startTest();
        // we can test our async apex also, future , batch etc. 
        
        // to get the another set of governor limit. 
       Test.stopTest();
        
       
        
    }
    
}