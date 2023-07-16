public class PhoneValidation {
    
    @future(callout=true)
    public static void callOUT(String phNO, Id acId){
        System.debug('Callout To PHONE NUMBER API');
        
        AppPhoneAPI__c ab = AppPhoneAPI__c.getOrgDefaults();
		String key = ab.apilayerkey__c;
        System.debug(key);
        
        String endPoint = 'http://apilayer.net/api/validate?access_key='+ key + '&number='+ phNO +'&country_code=&format=1';
        System.debug(endPoint);
        
        HTTP h1 = new HTTP();

        HTTPRequest req = new HTTPRequest();
        req.setEndpoint(endPoint);
        req.setMethod('GET');
        req.setTimeout(10000);
        
        HTTPResponse resp = h1.send(req);   // param is  reqHTTPRequest - return 
        System.debug(resp.getStatus());  //ok
        System.debug(resp.getStatusCode());  //200
        system.debug(resp.getBody());  //jSON
        
        Map<string, object> myVal = new Map<string, object>(); 
        myVal =  (Map<string,object>) JSON.deserializeUntyped(resp.getBody());
        system.debug(myVal);
        //{carrier=Tata Teleservices Ltd (TTSL), country_code=IN, country_name=India (Republic of), country_prefix=+91, international_format=+918792441859, line_type=mobile, local_format=08792441859, location=Karnataka, number=918792441859, valid=true, ...}
        
        String carrier = (String) myVal.get('carrier');  //type casting / data conversion / object to string. 
        String country_name = (String) myVal.get('country_name');
        String international_format = (String) myVal.get('international_format');
        boolean isvalid = (boolean) myVal.get('valid');
        String details; 
        
        if(isvalid){
            details = 'The number '+ phNO + 'is '+ isvalid + 'and country name is '+ country_name + ' and int format is '+ international_format + ' with ' + carrier;  
        }else{
            details = 'Invalid Phone';
        }
        
        
        System.debug(details);
        Account ac = [select id, name, phone, Phone_Details__c from Account where id = :acId];
        ac.Phone_Details__c = details;
        update ac;   //it will call before update and after update trigger.   
	}

}