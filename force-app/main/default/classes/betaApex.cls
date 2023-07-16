public class betaApex {
    
    
    
    public static void YouTube(){
		string endpoint = 'https://www.googleapis.com/youtube/v3/search'; 
		string mkey = 'AIzaSyA4mU9AB-X4YzJ81QGv5YjLCW55BPjUNHM';
        
        
        string Fendpoint = endpoint + '?part=snippet'+ '&maxResults=1' + '&type=video'+ '&q=apex' + '&key='+ mkey; 
        System.debug(Fendpoint); 
        
        Http h = new Http(); 
        HttpRequest hr = new HttpRequest(); 
        hr.setEndpoint(Fendpoint); 
        hr.setMethod('GET'); 
        
        Httpresponse hres = h.send(hr); 
        System.debug(hres.getStatus()); 
        System.debug(hres.getStatusCode());
        System.debug(hres.getBody());
        
        map<string, object> myMap = (map<string, object>) Json.deserializeUntyped(hres.getBody()); 
        System.debug(myMap);
        System.debug(myMap.get('kind'));
        System.debug(myMap.get('etag'));
        System.debug(myMap.get('nextPageToken'));
        System.debug(myMap.get('regionCode'));  //string
        System.debug(myMap.get('items'));  //object
        
     	
        
        System.debug('OK');
        System.debug('OK');
        
        
    }
    
    
    public class wapperYT{
        
        public string videoId {get; set;}
        public string description {get; set;}
        public string title {get; set;}
        
        
    }

   
}