public class Utllity1 {
     
    @future(callout = true)
    public static void doRESTMain(String ph, Id acId){
        
        //Custom Setting
        Beta22__c objN = Beta22__c.getOrgDefaults();
        String token = objN.Ph_No_Veerification_Key__c;
        system.debug('Token = '+ token);
        
        String endP = 'http://apilayer.net/api/validate?access_key=' + token + '&number='+ph;
        System.debug(endP);
        //HTTP Object
        HTTP h1 = new HTTP(); // obj creation of HTTP Class

        //HTTPRequest Object
        HTTPRequest req = new HTTPRequest();
        req.setEndPoint(endP);
        req.setMethod('GET');
        
        //Callout and HTTPResponse Object
        HTTPResponse resp  = h1.send(req); //sending thr request - callout
        system.debug(resp);
        system.debug(resp.getStatus());
        system.debug(resp.getStatusCode());
        system.debug(resp.getBody()); //string
        
        Map<String,object> myMap = new Map<String,object>();
        
        myMap = (Map<String,object>) JSON.deserializeUntyped(resp.getBody());
        System.debug(myMap);
        System.debug(myMap.get('valid'));
        System.debug(myMap.get('number'));
        System.debug(myMap.get('location'));

        Account ac = [select id, name, phone, Description from Account where id = : acId];
        ac.Description = 'Valid = ' + myMap.get('valid')  + ' ' + 'Location = ' + myMap.get('location'); 
        UtilABC.methodExecuted = true;
        update ac;  // calling trigger  
        
    }
    
}