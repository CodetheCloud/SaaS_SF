public class AsyncTask {

    @future
    public static void Task1(){
        //async code
        list<account> listAc = [select id, name from account];
        for(Account ac: listAc){
            ac.name = ac.Name + '..';
        }
        update listAc;
    }
}