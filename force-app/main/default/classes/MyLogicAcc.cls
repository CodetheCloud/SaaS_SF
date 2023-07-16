public class MyLogicAcc {

   	@future
    public static void createAccCon(set<id> setId){ //2
        list<Account> listAc = [select id, name, phone from Account where id in : setId];
        System.debug(listAc);  // 5 Acc 
		
        list<Contact> listNewCon = new list<Contact>(); 
        for(Account ac: listAc){
            	contact con = new Contact(); 
            	con.AccountId = ac.Id; 
            	con.LastName = ac.Name;
                listNewCon.add(con);
        }
        
        insert listNewCon;
        
    }
}