public class techProEduUtils {
   

    public static void getAcc(){

        List<Account> listAc = [select id, name from account where name like '%Tech%'];

        for(Account ac: listAc){
        System.debug(ac.Name);
            if(ac.Name== 'Tech'){
        ac.Name = 'TechProEdu';
        }}


        //code to perform the dml
        if(listAc.size()> 0){
            update listAc;  }
        

    }
}