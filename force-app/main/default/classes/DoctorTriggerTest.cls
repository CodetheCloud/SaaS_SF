@isTest
public class DoctorTriggerTest {
    
    @isTest
    public static void test1(){
        Doctor__c d = new Doctor__c();
        d.Name = 'aTest';
        d.Email__c = 'abc@gmail.com';
        d.Phone__c = '8763555363';
        insert d; 
        
        d.name = 'changethename';
        update d;
        
        
    }

}