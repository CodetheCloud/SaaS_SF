public class QueueClass implements Queueable  {

    
    public Account ac;
    public list<account> acList;
    
    public QueueClass(account ac, list<account> acList){
        this.ac = ac;
        this.acList = acList;
    }
    
        public void execute(QueueableContext context) {
            //Your Apex Async Code
            system.debug('my queue code');
            system.debug(this.ac);
            system.debug(this.acList);
            
            account ac = [select id, name from account];
//System.QueryException: List has more than 1 row for assignment to SObject

account a = new account();
insert a;
//System.DmlException: Insert failed. First exception on row 0; first error: REQUIRED_FIELD_MISSING, Required fields are missing: [Name]: [Name]

string str;
str.contains('a');
//System.NullPointerException: Attempt to de-reference a null object

list<string> liststr = new list<string>();
liststr.add('a');
string aa = liststr[2];
//System.ListException: 
         
        }
    
    
}