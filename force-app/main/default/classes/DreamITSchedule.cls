public class DreamITSchedule implements Schedulable{
    
   public void execute(SchedulableContext ctxany) {
       //Apex Code
       list<account> listAc = [select id, name, phone from account];
       for(account ac: listAc){
           ac.phone = null;
       }
       
       if(listAc.size()> 0){
          update listAc;  
       }
       
       
    }

}