global class DreamITSOAPWS {
	
    webservice static string getAccountName(String idp){
        
       list<Account> ac = [select id, name from account where id = : idp];
        
        if(ac.size()>0){
            return ac[0].name; 
        }
        
        return 'Id is Not Valid for Account';
        
        
    }
    
    
}