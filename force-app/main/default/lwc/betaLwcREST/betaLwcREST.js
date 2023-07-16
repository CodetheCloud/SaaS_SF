import { LightningElement, wire } from 'lwc';
import getAccount from '@salesforce/apex/betaApex.getAccount';
export default class BetaLwcREST extends LightningElement {

    accs;  //js variable
    errs;  //js varibale
    userinput; 

    handleChange(event){
        this.userinput = event.target.value; 
        console.log(this.userinput);
    }
    handleMethod(){
        console.log(this.userinput);

        getAccount(  {myKey : this.userinput}   ).then( result => {this.accs = result} ).catch(error => {this.errs = error} );
    }

}