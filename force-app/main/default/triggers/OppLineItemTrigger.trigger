trigger OppLineItemTrigger on OpportunityLineItem (after insert, after update) {

    Set<id> oppIdList = new Set<id>();
    
	for(OpportunityLineItem oppL : Trigger.new){
        oppIdList.add(oppL.opportunityId);
	}
    
    List<Opportunity> oppUpdateList = new List<Opportunity>();
    
	List<String> names = new List<String>();
    
    list<opportunity> opList =  [Select id, Product_Name_Rollup__c, (Select id ,Product2Id ,Product2.name, opportunityId 
                                                               from OpportunityLineItems Where 
                                                               Order_Approval_Status__c != 'Closed-Inactive') 
                           from opportunity where id in: oppIdList];
        
    for(Opportunity acc :  opList){
                               
            for(OpportunityLineItem opprec : acc.OpportunityLineItems){
              names.add(opprec.Product2.name);
              
            }
                               
        
        acc.Product_Name_Rollup__c = String.join(names, ',');
        oppUpdateList.add(acc);
        names.clear();
                               
     }
    update oppUpdateList;
    
}