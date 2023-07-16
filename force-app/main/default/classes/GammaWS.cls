@RestResource(urlMapping='/gammaGA/*')  //base url of the app + urlMapping
global class GammaWS {

    
    @HttpPut
    global static String UpdateCon(String idParam, String lnParam){
        Contact con =[select id, lastname, firstname from Contact where id = : idParam];
        con.LastName = lnParam; 
        update con; 
        
        return con.Id  + ' has been updated'; 
        
    }
    
  
    
}