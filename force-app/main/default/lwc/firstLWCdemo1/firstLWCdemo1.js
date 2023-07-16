import { LightningElement , api} from 'lwc';

export default class FirstLWCdemo1 extends LightningElement {
    @api recordId;
    @api objectApiName;
    fields = ['AccountId', 'Name'];

}