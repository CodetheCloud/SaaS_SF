public class GammaPhoneVerifyUtil {
    
    public static void verifyPhone(String PhNo, Id DocId){
        
        HTTP h = new HTTP();

        HTTPRequest req = new HTTPRequest();
        String strEP = 'http://apilayer.net/api/validate?access_key=ffaefcb35c4f244a72f494d9ef934506&number=' + PhNo;
        req.setEndpoint(strEP);
        req.setMethod('GET');
        req.setTimeout(10000);
        
        HTTPResponse resp = h.send(req);
        System.debug(resp);
        System.debug(resp.getStatus() );
        System.debug(resp.getStatusCode() );
        System.debug(resp.getBody() ); 
        
		Map<string, object> myResMap =  new Map<string, object>(); 
        
		myResMap = (Map<string, object>) JSON.deserializeUntyped(resp.getBody()) ; //static method
        
        System.debug(myResMap);
        System.debug(myResMap.get('valid') );  //map.get(key); 
        System.debug(myResMap.get('international_format') );
        System.debug(myResMap.get('country_name') );
        System.debug(myResMap.get('location') );
        System.debug(myResMap.get('carrier') );
        
        String data = PhNo + ' is '+ myResMap.get('valid') + ' and Int format is '+ myResMap.get('international_format') + ' from '+ myResMap.get('country_name');
        
        Doctor__c doc = [select id, name, Phone__c, Phone_Verification__c from Doctor__c where id = : DocId];
        doc.Phone_Verification__c = data;
        doc.Phone__c = PhNo; 
        update doc; 
        
    }

}