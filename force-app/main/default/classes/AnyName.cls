@RestResource(urlMapping='/pulla/*')
global class AnyName {

    
    @HttpPost
    global static string putAnyData(string fname, string lname, string pphone){
        
        Account ac = new Account();
        ac.Name = fname;
        ac.Description = lname;
        ac.Phone = pphone;
        insert ac;
        
        return 'Account has been created -- '+ ac.Id ;
    }
    
    
    @HttpGet
    global static string anyMethod(){
        //we can have only 1 HttpGet Method in single class. 
        
        
        RestRequest request = RestContext.request;
        system.debug(request);
        system.debug(request.requestURI);
        system.debug(request.requestURI.lastIndexOf('/'));
        string acid = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        
        
        return acid + 'is fine';
        
        
    }
    
    
    
    
}