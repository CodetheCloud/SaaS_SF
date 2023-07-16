trigger oppTriggerRollUp on Opportunity (before insert) {

    set<Id> oppId  = new set<id>();
    
    for(Opportunity opp:trigger.new){
        oppId.add(opp.Id);
    }
    
    list<opportunity> sl = trigger.new;

	list<opportunityLineItem> slnu = new list<opportunityLineItem>([select id ,product2.name, opportunityId from opportunitylineitem where opportunityId in : oppId and Order_Approval_Status__c != 'Closed-Inactive']);

    
    map<id,string> oppProductName = new map<id,string>();
    
	string productName='';

	for(opportunityLineItem oppL : slnu){
		
 		productName += oppL.product2.name + ';';
        oppProductName.put(oppL.opportunityId,productName);

	}

	for(Opportunity opp : trigger.new){

 		opp.Product_Name_Rollup__c = oppProductName.get(opp.Id);


	}

    
}