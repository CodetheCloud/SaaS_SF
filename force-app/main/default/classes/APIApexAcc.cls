@RestResource(urlmapping='/tilak123/*')
global class APIApexAcc {

    
    @HttpPost
    global static string createAccount(string name, string phone, string web){
        Account ac = new Account();
        ac.Name = name;
        ac.Phone = phone;
        ac.Website = web;
        insert ac;
        return ac.id;
    }
    
    @HttpPut
    global static string createAccount1(string name, string phone, string web){
        Account ac = new Account();
        ac.Name = name;
        ac.Phone = phone;
        ac.Website = web;
        insert ac;
        return 'we have creted an account = '+ ac.id;
    }
    

    
    
}