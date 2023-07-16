import { LightningElement, api } from 'lwc';
import everest from '@salesforce/resourceUrl/everest';
import myName from '@salesforce/label/c.myName' ; 
export default class DreamComponentOne extends LightningElement {

        myImageLink = everest;   // js property VVI

        localVarmyName = myName;

        show = true;  //boolean property - boolean variable
       
        handleChange(event){
            // event is the special vriale in LWC JS 
            //which will take all the information from the source event

            console.log("handle change..");
            console.log(event.target.name);
            console.log(event.target.value);
           

            if(event.target.name === 'nameval'){
                this.name = event.target.value; 
            }
            
            if(event.target.name === 'cityval'){
                this.city = event.target.value; 
            }
        }

        handleSubmit(event){
            // this is js method
            this.name = 'Sefa';
            console.log('submit button clicked'); 
            console.log(this.name); 
            
        }


        

}