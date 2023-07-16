@RestResource(urlmapping='/checkWeather/*')
global class GetWeather {	

	@HttpGet
    global static Account getAccountW(){
        RestRequest request = RestContext.request;  //Reading the request param
        system.debug(request);
        system.debug(request.requestURI); 
        // checkWeather/0015e00000ySTgnAAG
        // substring(startIndex)
        string recId = request.requestURI.substring(request.requestURI.lastIndexOf('/') + 1  );
        system.debug(recId);
        Account ac = [select id, name, shippingcity, Description from account where id = : recId];
        return ac;
    }
    
    @HttpPost
    global static string createAccount(string name, string phone, string email){
        system.debug('we are getting data from external system.');
        system.debug('it is name = ' + name);
        system.debug('it is phone = ' + phone);
        system.debug('it is email = ' + email);
        Account ac = new Account();
        ac.name = name; 
        ac.Phone = phone; 
        ac.Email__c = email;
        insert ac; 
        
        return ac.Id;
    }
    
    @HttpPut
    global static string createAccount1(string name, string phone, string email){
        Account ac = new Account();
        ac.Name = name;
        ac.Phone = phone;
        ac.email__c = email;
        insert ac;
        return 'we have creted an account = '+ ac.id;
    }
}