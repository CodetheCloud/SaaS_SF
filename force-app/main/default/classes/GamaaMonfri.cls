public class GamaaMonfri implements Schedulable {

    public void execute(SchedulableContext SC) {
      //any apex code
      System.debug('Schedulable Apex');
      list<Account> listAc = [select id, name from Account];
       
   }
}