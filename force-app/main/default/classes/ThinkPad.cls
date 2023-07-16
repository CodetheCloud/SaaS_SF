public class ThinkPad {

  	@future
    public static void doCon(Id AcId){
        Contact con = new Contact();
        con.lastName = 'dummy1';
        con.AccountId = AcId;
        insert con;
    }
}