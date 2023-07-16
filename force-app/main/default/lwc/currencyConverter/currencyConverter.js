import { LightningElement } from 'lwc';

export default class CurrencyConverter extends LightningElement {

  
    handleSubmit(){
        //Accessing or Calling DOM API. -> Manipulate -> 

        let a = this.template.querySelector('lightning-input').value; 
        console.log(a);


        this.template.querySelector('.a3').textContent = 'this value is getting added using javascript dom '+ a; 
        
    }

}