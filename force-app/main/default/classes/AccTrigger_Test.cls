@isTest
public class AccTrigger_Test {

    
    
    @isTest
    private static void testwork(){
        
        Account ac = new Account();
        ac.name='demo';
        ac.SLA__c='Gold';
        insert ac; 
       
        ac.SLA__c = 'Bronze';
        update ac;  
        
        account ares = [select id, name, description from account where id =: ac.Id];
        system.assert(ares.Description == 'from gold to bronze', 'it is not fine');
        //ares.Description == from gold to bronze'
        
			           
    }
    

    
    
    
}