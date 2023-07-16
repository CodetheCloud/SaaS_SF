public class SundayJobs implements Schedulable{

         public void execute(SchedulableContext ctxany) {
             system.debug('this is apex script.');
             
             
            BatchTime bt = new BatchTime(); // create an object
			Database.executebatch(bt);

             
         }
}