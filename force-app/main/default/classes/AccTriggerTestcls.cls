@isTest
public class AccTriggerTestcls {
	
    @isTest
    public static void testTrigger(){
        
        Account ac = new Account();
        ac.Name = 'test';
        ac.Account_Creation_Status__c  = 'Pending';
        insert ac;
        
       
        
        Opportunity opp = new Opportunity();
        opp.name = 'testOpp';
        opp.AccountId = ac.Id;
        opp.StageName = 'Prospecting';
        opp.CloseDate = system.today();
        
        insert opp;
        
        
        ac.Account_Creation_Status__c = 'Approved';
        update ac;
    
        
    }
    
     @isTest
    public static void testTrigger1(){
        
      
        
        Account ac1 = new Account();
        ac1.Name = 'test1';
        ac1.Account_Creation_Status__c  = 'Pending';
        insert ac1;
        
    
        
        Opportunity opp1 = new Opportunity();
        opp1.name = 'testOpp';
        opp1.AccountId = ac1.Id;
        opp1.StageName = 'Prospecting';
        opp1.CloseDate = system.today();
        insert opp1;
        
                
        ac1.Account_Creation_Status__c = 'Rejected';
        update ac1;
        
        
    }
}