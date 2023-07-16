import { LightningElement } from 'lwc';

export default class ChildComp extends LightningElement {


    handleChange(event){
         
         event.preventDefault();   //vvi
         const name = event.target.value; 
         console.log("From child "+ name);
        
         console.log("Creating the event child and Dispatching");
         // Creating the event
         const selectEvent = new CustomEvent('mycustomevent' , {detail: name}  ); 
         // despatch the event
         this.dispatchEvent(selectEvent);
    }
}