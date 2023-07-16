@isTest
public class ActivartionAcTriggerTEST {

    @isTest
    public static void test1(){
        Account ac = new Account();
        ac.Name = 'testvalue1';
        insert ac; //call the trigger. 

        Account acnewI = [select id, name, activation__c from account where id  =: ac.Id];
    
        system.assert(acnewI.activation__c == 'super', 'not equal');
        
        
    }
}