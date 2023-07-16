public class NewYork implements USA{
    
    
 
	public void beforeInsert(){
        system.debug('NewYork BI');
        
    }
    
    public void afterInsert(){
        system.debug('NewYork AI');
        
    }
}