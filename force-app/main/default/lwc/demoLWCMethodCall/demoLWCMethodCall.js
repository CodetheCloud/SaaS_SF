import { LightningElement , track} from 'lwc';
import getAccounts from'@salesforce/apex/AccountService.getAccounts';

export default class DemoLWCMethodCall extends LightningElement {

     @track accounts;
	 @track error;
     @track showDate = false; 
     handleChanage(event){
        console.log(event.target.value);
		const searchKey = event.target.value;
        console.log(searchKey);
		getAccounts({ strAccountName: searchKey })
		.then(result => {
            console.log('we are good');
			this.accounts = result;
            console.log(result);
            this.showDate = true; 
			this.error = undefined;
		})
		.catch(error => {
            console.log('we got some error');
			this.error = error;
			this.accounts = undefined;
		})
	} 

}