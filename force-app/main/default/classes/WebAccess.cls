@RestResource(urlMapping='/renuka/*')
global class WebAccess {
    
    
    @HttpPost
    global static String anyNameforPostMethod(string Aname, string Anumber ){
        Account acc = new Account();
        acc.name = Aname;
        acc.Phone = Anumber;
        insert acc;
        return 'You account has been created successfully '+ acc.ID;
    }

    @HttpGet  //in single apex class/ rest web serives we can have only 1 httpget method. 
    global static String getAcPhone(){
        
        RestRequest request = RestContext.request;
        system.debug('url = '+ request.requestURI);
        system.debug('last inded = '+ request.requestURI.lastIndexOf('/') );
        string acId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        
        Account ac = [select id, name, phone from account where id = : acId];
        return ac.Phone;
    }
    
}