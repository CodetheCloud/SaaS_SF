public class CheckWeatherRESTCallout {

    
    @future(callout = true)
    public static void updateWeather(set<Id> acId){
        Account ac = [select id, name, shippingcity from account where id =: acId limit 1];

        string city = ac.shippingcity != null ? ac.ShippingCity : 'Bangalore' ;  // ternary operator
        string token = '8e4695513f399abae058884ef6beb0f4'; 
      	string endpoint = 'http://api.openweathermap.org/data/2.5/weather?appid='+token+ '&q='+city;
        
        HTTP h = new HTTP();
        HTTPRequest req = new HTTPRequest();
        req.setMethod('GET');
        req.setEndpoint(endpoint);
        
        HTTPResponse resp = h.send(req);  // Callout
        system.debug(resp);
       	system.debug(resp.getStatus());
        system.debug(resp.getStatusCode());
        system.debug(resp.getBody());
		Map<string,object> mapRes = (Map<string,object>) JSON.deserializeUntyped(resp.getBody());    
      	system.debug(mapres);
        
        //from the map - get all the keys
        /*
        set<string> allKey = mapres.keyset();
        
        for(string str : allKey){
            system.debug(str);
            system.debug(mapres.get(str));
        }
		*/
        
        for(string str : mapres.keyset()){
            system.debug(str);
            system.debug(mapres.get(str));
        }
        
       Integer visibility  = (Integer) mapRes.get('visibility');
       string cityName = (string) mapRes.get('name');
       ac.Description = 'The city name = '+ cityName + ' and visibility is : '+ visibility; 
       update ac;
        
       
        
        
    }
    
}