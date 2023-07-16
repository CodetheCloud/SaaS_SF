trigger oppTrigger on Opportunity (before insert) {

    list<Opportunity> oppList = Trigger.new;
    for(Opportunity opp : oppList)
    {
        //Write a trigger to avoid creation of opportunity if it is not associated to any account (while creation)
        if(opp.AccountId == null)
        {
            opp.AddError('The Opportunity cannot be created because it is not associated to an Account');
        }
    }

}