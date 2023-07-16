@isTest
public class TestAsyncTask {

    @isTest
    public static void test1(){
        //governor limit in test classes - Yes
        //list<contact> con = [soql];
        //100 SOQL 
        //150 DML 
        //1 Set of governor limit
        
        for(integer i = 0; i<=99; i++){
            list<contact> con = [select id,name from contact];
        }
        
        
        //starting the test
        Test.startTest();
        	
        for(integer i = 0; i<=99; i++){
            list<contact> ct = [select id,name from contact];
        }
        
        list<contact> co1 = [select id,name from contact];
        list<contact> co2 = [select id,name from contact];
        list<contact> co3 = [select id,name from contact];
        //anohter set of governor limit
        
        Test.stopTest();
        //stoping the test
        
         list<contact> co4 = [select id,name from contact];
        
    }
    
   
}