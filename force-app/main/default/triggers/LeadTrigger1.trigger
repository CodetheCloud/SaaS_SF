trigger LeadTrigger1 on Lead (before insert, after insert, before update, after update, before delete, after delete, after undelete) {

    
    new LeadTriggerHanlderbeta().run();
    
}