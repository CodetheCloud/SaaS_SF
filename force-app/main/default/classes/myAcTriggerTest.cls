@isTest
public class myAcTriggerTest {
    
    
    @IsTest(SeeAllData=true) 
    public static void testTrigger1(){
        
        
        //create few data here
        //100 SOQL and 150 DML
        
        
        for(integer i = 0; i<=99; i++){
           	list<account> listac = [select id, name from account];
            system.debug(listac);
            system.debug(listac.size()); 
        }
        
        
        Test.startTest();  // you will get another set of governor limit. 
        
        //classUtil.doSync(listac);
         list<contact> listcon = [select id, name from contact];
        system.debug(listcon);
        system.debug(listcon.size());
        //to test the async apex, we use test.startTest and test.stopTest 
        
        // future, batch etc.
        for(integer i = 0; i<=98; i++){
           	list<account> listac1 = [select id, name from account];
            system.debug(listac1);
            system.debug(listac1.size()); 
        }
       
        
      Test.stopTest();
        
        
        
        
      
        
        
      
    }
    
    public static void test2(){
        test.startTest();
        	system.debug('calling fu method');
      
        	
        test.stopTest();
            
    }
    
    

}