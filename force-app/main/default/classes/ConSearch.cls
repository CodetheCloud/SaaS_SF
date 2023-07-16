@RestResource(urlMapping='/empSearch/*')
global class ConSearch {
    
  
     @HttpGet
    global static Contact apiK(){
        //"NameOFTheEmp"
       RestRequest request = RestContext.request;
       System.debug(request);
       System.debug(request.requestURI);  ///empSearch/ph=79879889879
      System.debug(request.requestURI.substringAfterLast('='));
      String ph = request.requestURI.substringAfterLast('='); 
        System.debug(ph);
      Contact con = [select id, Firstname, Lastname, Phone from contact where phone =: ph limit 1];
        
       return con;
    }

}