public class ContactTriggerhandler9March extends TriggerHandler {

    
    private Map<Id, Contact> newConMap;
    private List<Contact> newCon;
    
    
    public ContactTriggerhandler9March() {
        this.newConMap = (Map<Id, Contact>) Trigger.newMap;
        this.newCon = (List<Contact>) Trigger.new;
  	}
    
    public override void afterUpdate() {
    //
    	System.debug('After update contact trigger handler on 9th March');
        
  	}
    
    public override void beforeUpdate() {
    //
    	System.debug('After update contact trigger handler on 9th March');
        
  	}
    
}