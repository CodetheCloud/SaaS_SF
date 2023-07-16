@RestResource(urlMapping='/dreamITAcademy100/*')
global class DreamITWS100 {
    
    @HttpGet
    global static string doTask1(){
        RestRequest request = RestContext.request;
        system.debug(request);
        //  requestURI=/dreamITAcademy100/Sefa, resourcePath=/services/apexrest/dreamITAcademy100
        //  system.debug(request.resourcePath);
        system.debug(request.requestURI);    // --- /dreamITAcademy100/Sefa
        system.debug(request.requestURI.substringAfterLast('/'));    // URL Parameter
        string Sname = request.requestURI.substringAfterLast('/'); 
       
        system.debug(Sname);     

        Contact con = new Contact(); 
        con.LastName = Sname; 
        insert con; 
        
        system.debug(con.Id);
        
        return 'ID = '+  con.id; 
        
    }

}