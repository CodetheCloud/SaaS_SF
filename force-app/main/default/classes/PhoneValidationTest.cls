@isTest
public class PhoneValidationTest {
    
    @isTest
    public static void test1(){
        
        Account ac = new Account();
        ac.name = 'Test';
        ac.Phone = '+918792776252';
        insert ac; 
        
       
        Test.setMock(HttpCalloutMock.class, new PhoneValidationMock() );
        
        PhoneValidation.callOUT('+918792441850', ac.Id);  //future method
        //Methods defined as TestMethod do not support Web service callouts
        // So for this we can perform the mock web service callouts
    }
    
    @isTest
    public static void test2(){
        
        Account ac = new Account();
        ac.name = 'Test';
        ac.Phone = '+918792776252';
        insert ac; 
        
       
        Test.setMock(HttpCalloutMock.class, new PhoneValidationMock1() );
        
        PhoneValidation.callOUT('+918792441857', ac.Id);  //future method
        //Methods defined as TestMethod do not support Web service callouts
        // So for this we can perform the mock web service callouts
        
        Account aasdc = [select id, name, phone, Phone_Details__c from account where id = : ac.Id];
        
        
    }

}