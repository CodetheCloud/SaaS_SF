import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

export default class DemoToast extends LightningElement {


    handleClick(){
        //apex, rest, read the text and calc // show the message to the user

        // message to the user
        const any = new ShowToastEvent({ title: 'Dream IT Academy', message: 'we are Alpha', variant: 'success', mode:  'dismissable'   });
        
        this.dispatchEvent(any);
    }

    handleClick1(){
        //apex, rest, read the text and calc // show the message to the user

        // message to the user
        const any = new ShowToastEvent({ title: 'Dream IT Academy', message: 'Message to show', variant: 'error', mode:  'sticky'   });
        
        this.dispatchEvent(any);
    }
}