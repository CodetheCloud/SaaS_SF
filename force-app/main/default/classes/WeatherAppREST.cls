public class WeatherAppREST {
    
    @future(Callout=true)
    public static void checkWeather(Id AcId){
        
        Account ac = [select id, name, shippingcity from account where id = : AcId];
        //Integration
        String cityShipping = ac.shippingcity!=null ? ac.shippingcity : 'Bangalore';

        string token = '8e4695513f399abae058884ef6beb0f4';
        string endpoint = 'http://api.openweathermap.org/data/2.5/weather?appid='+token+ '&q='+cityShipping;
        
        HTTP h = new HTTP();
        HTTPRequest req = new HTTPRequest();
        req.setMethod('GET');
        req.setEndpoint(endpoint);
        
        HTTPResponse resp = h.send(req);
        system.debug('resp = '+resp);
        
        system.debug(resp.getStatus());
        system.debug(resp.getStatusCode());
        system.debug(resp.getBody());
        
        Map<String, Object> ResponseMap = new  Map<String, Object>(); 
        ResponseMap = (Map<String, Object> ) JSON.deserializeUntyped(resp.getBody());
        system.debug('ResponseMap = '+ ResponseMap);
        
        for(String ste : ResponseMap.keySet()){
            system.debug(ste);
            system.debug(ResponseMap.get(ste));
        }
        
        Integer visibility = (Integer) ResponseMap.get('visibility');
        system.debug(visibility);
        
        String name = (String) ResponseMap.get('name');
        system.debug(name);
        
        List<Object> weatherList = (List<Object> ) ResponseMap.get('weather');
        Map<String, Object> ResponseMapW = (Map<String, Object> )  weatherList[0] ; 
        string realW = (String) ResponseMapW.get('description');
        system.debug('real weather = ' + realW);
        
        ac.Shipping_city_Weather__c = 'City = '+ name + ' and Visibility = '+ visibility + ' and Real Weather = ' + realW ;
        update ac;
    }

}