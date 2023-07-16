public class LeadTriggerHanlderbeta extends TriggerHandler {

    
    private Map<Id, Lead> newConMap;
    private List<Lead> newCon;
    
    
    public LeadTriggerHanlderbeta() {
        this.newConMap = (Map<Id, Lead>) Trigger.newMap;
        this.newCon = (List<Lead>) Trigger.new;
    }
    
    
    public override void beforeInsert() {
        System.debug(' insert lead trigger handler on 9th March');
        
     }
    
    public override void beforeupdate() {
        System.debug(' update lead trigger handler on 9th March');
        
     }
    
   
    
    
}