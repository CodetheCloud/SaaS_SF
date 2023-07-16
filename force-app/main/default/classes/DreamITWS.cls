@RestResource(urlMapping='/dreamITAcademy/*')
global class DreamITWS {
    

   @HttpPut
    global static string doTaskAnyNameDoesNotMatter1(String AN, String AP, String ACID ){
        
        Account ac = new Account();
        ac.Name = AN;
        ac.Phone = AP; 
       	ac.Id = ACID;   
        update ac; 
              
       
        return 'Account = '  + ac.Id ; 
        
    }

	
}