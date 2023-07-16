public class WhatsAppIntegration {

    
    public static boolean callWhatsAppREST(Id contactId){
        
        contact cont = [select id, name, phone from contact where id = : contactId];
        string whatsAppNumber = '91' +cont.Phone;
        system.debug(whatsAppNumber);
        
        http http = new http();
        HttpRequest req = new HttpRequest();
       	
        //Rest API = https://graph.facebook.com/v13.0/Phone Number ID /messages 
        //Phone Number ID  = 114638534582268 (get from meta developer)
        //Final REST API = https://graph.facebook.com/v13.0/114638534582268/messages
        
        req.setEndpoint('https://graph.facebook.com/v13.0/114638534582268/messages');
        req.setHeader('Content-Type', 'application/json');
        req.setMethod('POST');
        
        string body = '{ "messaging_product": "whatsapp", "to": "'+ whatsAppNumber +'", "type": "template", "template": { "name": "hello_world", "language": { "code": "en_US" } }  }';
        
        string body1 = '{ "messaging_product": "whatsapp", "to": "918217569463", "type": "template", "template": { "name": "hello_world", "language": { "code": "en_US" } } }';
        
        req.setBody(body1);
        
        String Token = 'EAAGclzEFfyEBABedRe3ZAOZB5cb9S4RjnuMj8pKQe0Uz2DhGfmfSFaWRt1ohexUoZCgQ9389A2fza3i5Sa46ZAj9ZBh5YJ0q95LhhrpHArq7vZALkka7NIF3cDfqfZBjKaZBMjMqRWqgAmNw4AmJFnFEAHdXAXegt4voZBoGn6nLBPc9t5IGm2HVgxQA3Iq3h5UC3oGiguGtALQZDZD';
        
        string apiToken = 'EAAGclzEFfyEBANyicXKsxaYPo2bLugud8uV4GjHUDq6CQIt3lii8Al6JEOvs9AiaYhVi9uhqQTNEZB8xHAm4ZBP7PhUxwmCA7SFi34MWxSm5VqshhWlhzHViEHZAy9RnG99Olhcn7fSKqGL0a9Y7sKcbEwNeJ2RuBOuBkTKxyvjjYUqVrPL';
        req.setHeader('Authorization', 'Bearer ' + Token); // space after Bearer
        
        system.debug(req);
        HttpResponse resp = http.send(req);
        system.debug(resp);
        
        if(resp.getStatus() == '200'){
            system.debug(resp.getBody());
        }
        
        
        return true; 	
    }
    
}