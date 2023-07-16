global class Beta22WSCallins {

    
    webservice static String getAcccountDetails(String acId){
        
        list<Account> ac = [select id, name, phone from account where id = : acID];  // there must be 1 rec only 
        
        if(ac.size() > 0 ){
            return ac[0].Name; 
        }
        
        return 'Id is not valid'; 
    }
    
}