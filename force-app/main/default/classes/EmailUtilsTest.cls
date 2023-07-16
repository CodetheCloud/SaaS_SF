@isTest
public class EmailUtilsTest {

    @isTest
    static void testEmail(){
        
        List<string> ls = new List<string>();
        ls.add('abc@gmail.com');
        
        Test.startTest();
        EmailUtils.sendEmail(ls, 'Subject Test', 'Body Test');
         //use limit class to get the limit for single transaction
        Integer inv = Limits.getEmailInvocations(); 
        Test.stopTest();
        
        
        system.assert(1==inv, 'errormsg');
    }
}