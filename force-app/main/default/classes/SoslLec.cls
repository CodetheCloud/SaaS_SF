public class SoslLec {

     public static void soslst(){
           list<list<sObject>> Varlst=[find 'edge' in all fields returning account(id,name),
                                      opportunity(id,name,accountid),contact(lastname,accountid)];
           system.debug(varlst); 
               
               system.debug(varlst[0]);
               system.debug(varlst[1]);
               system.debug(varlst[2]);
               
               list<account> Var2 = (list<account>) varlst[0];
               list<opportunity> Var3 = (list<opportunity>) varlst[1];                
               list<contact> Var4 = (list<contact>) varlst[3];
               
               list<account>  variab;
               for(account Variable : Var2){
                   variable.name= 'fahad';
                   variab.add(variable);
               }
               update Var2;
          }
}