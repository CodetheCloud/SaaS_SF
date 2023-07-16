@RestResource(urlmapping= '/beta22/*')
global class BetaWebServices {
    
    
    @HttpDelete
    global static String getTaskD(){
        
        RestRequest request = RestContext.request;
        String rURI = request.requestURI; 
        String aParam = rURI.substringAfterLast('/'); 
        String acId = aParam.substringAfter('=');
        
        delete [select id from account where id = :acId];
        return 'Account deleted ID = '+ acId; 
        
    }
    
   

}