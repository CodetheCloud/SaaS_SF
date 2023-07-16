import { LightningElement, api } from 'lwc';
import getCurr from '@salesforce/apex/betaApex.getCurr';
export default class BetaP1 extends LightningElement {

  
    @api n1;
    @api n2; 
    @api Country; 

    amountUSD; 
    amountEUR;
    errs;
    
    @api isLoading = false; 


    handleChange(event){
        this.amountUSD = event.target.value; 
        console.log(this.amountUSD);
    }

    handleClick(){
        this.isLoading = true; 
        console.log(this.amountUSD);

        console.log('start');
        getCurr(  {paramusd : this.amountUSD}   ).then( result => {
            this.amountEUR = result; 
            this.isLoading = false; 
        } ).catch(error => {
            this.errs = error; 
            this.isLoading = false; 
        } );
        
        console.log('end');
        
    }
    
   


}