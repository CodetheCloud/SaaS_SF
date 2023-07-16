import { LightningElement , track} from 'lwc';

export default class ParentComponent extends LightningElement {

    @track mynamae; 

    handleCustomEvent(event){
        const textValue = event.detail; 
        console.log(textValue);
        this.mynamae = textValue; 
    }
}