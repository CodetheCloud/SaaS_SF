public class MyUtilsCust {

    public static void doTask1(){
        system.debug('simple task');
        sendNoti();
    }
    
    public static void sendNoti(){
        system.debug('task1');
        system.debug('task2');
        doTask1();   // 
    }
}