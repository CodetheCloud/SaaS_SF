import { LightningElement , track, api} from 'lwc';
import findAccounts from '@salesforce/apex/AccountHelper.findAccounts';

export default class P2 extends LightningElement {

    
    @api myMessage; // public reactive property
    @api myName; 
 
    @track cons;

    handleClick(){
        console.log(this.myMessage);
        findAccounts( {key : this.myMessage} ).then( result => { this.cons = result })
        .catch(error => {this.error = error} );
   }


   
}