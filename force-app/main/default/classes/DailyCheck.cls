@RestResource(urlMapping='/DailyFetch/*')
global class DailyCheck {
    
    @Httpget
    global static Account getAccount(){
        
        RestRequest request = RestContext.request;
        system.debug(request.requestURI.lastIndexOf('/'));
		string acid = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        
        Account acc = [select id, name, phone, rating from account where id = : acid];
        return acc;
        
    }
    
    @HttpPost
    global static ID putAnyName(String subject, String num){
        Account a = new Account(name = subject , phone = num) ;
        insert a;
        return a.Id;
    }
    
    
    
    

}