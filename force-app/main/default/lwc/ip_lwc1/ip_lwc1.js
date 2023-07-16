import { LightningElement } from 'lwc';

export default class Ip_lwc1 extends LightningElement {

        //javascript 

        //Javascript Variable / Javascript Properties 

        name = "";
        city = "Chennai";
        state = "TN";
        zip = 275687;


        handleChange(event){
            console.log(event.target.value);
            console.log(event.target.id);
            console.log(event.target.label);

            if(event.target.id == 't1-31'){
                this.name = event.target.value;
            }

            if(event.target.id == 't2-31'){
                this.city = event.target.value;
            }

            if(event.target.id == 't3-31'){
                this.state = event.target.value;
            }

            if(event.target.id == 't4-31'){
                this.zip = event.target.value;
            }

            

        }


        handleClick(event){
            console.log(this.name);
            console.log(this.city);
            console.log(this.state);
            console.log(this.zip);
        }
        

}