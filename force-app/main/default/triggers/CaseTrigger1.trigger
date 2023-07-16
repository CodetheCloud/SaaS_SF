trigger CaseTrigger1 on Case (after update) {

    Set<Id> caseIds = new Set<Id>();
	for (Case c : Trigger.new) {
		caseIds.add(c.id);
	}
    
}