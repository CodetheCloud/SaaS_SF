@istest
public class Util2TEST {
    
    @isTest
    public static void testMain(){
        
        Test.startTest();
		//Limit.getEmailInvocations(); 
	    System.assertEquals(0, Limits.getEmailInvocations(), 'No emails');
        Util2.updatePhone();  //send email 1
        System.assertEquals(1, Limits.getEmailInvocations(), 'ok emails');
        Test.stopTest();
        // Returns the number of email invocations (such as sendEmail) that have been called.
    }

}