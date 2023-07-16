import { LightningElement,api } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';

export default class DemoNavigate extends NavigationMixin(LightningElement) {

    value = 'inProgress';

    get options() {
        return [
            { label: 'New', value: 'new' },
            { label: 'In Progress', value: 'inProgress' },
            { label: 'Finished', value: 'finished' },
        ];
    }

    handleChange(event) {
       

        if(event.detail.value=='new') {
             
            this[NavigationMixin.Navigate]({
                "type": "standard__webPage",
                "attributes": {
                "url": "https://www.google.com/"
                }
                });

                
        }

        if(event.detail.value=='inProgress') {
            
            this[NavigationMixin.Navigate]({
                "type": "standard__webPage",
                "attributes": {
                "url": "https://www.amazon.com/"
                }
                });
                
        }

        if(event.detail.value=='finished') {
            
            this[NavigationMixin.Navigate]({
                "type": "standard__webPage",
                "attributes": {
                "url": "https://www.apple.com/"
                }
                });
                
        }
    }


}