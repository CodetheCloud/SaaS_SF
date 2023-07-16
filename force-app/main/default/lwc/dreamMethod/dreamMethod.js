import { LightningElement , track} from 'lwc';
import findAccounts from '@salesforce/apex/LWCApex.findAccounts'
export default class DreamMethod extends LightningElement {

     variable;
     uppercaseItemName;
 
     connectedCallback() {
          console.log("CC");
         this.variable = "salesforce";
         console.log(this.template.querySelector('lightning-button'));
         console.log(this.template.querySelector('div'));
         console.log(this.template.querySelector('h1'));
     }

     onclick() {
          this.variable = "SF Blog ";
          console.log(this.variable);
          this.uppercaseItemName = "abc";
          console.log(this.uppercaseItemName);
     }

}