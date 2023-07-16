public class QApexJob implements Queueable  {

        public void execute(QueueableContext context) {
            //you can write async apex
            system.debug('123');
        }
}