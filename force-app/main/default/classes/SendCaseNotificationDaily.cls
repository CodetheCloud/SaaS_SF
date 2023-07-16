public class SendCaseNotificationDaily implements Schedulable{

        public void execute(SchedulableContext ctxany) {
			//APEX Code
			system.debug('just do something');            
        }
}