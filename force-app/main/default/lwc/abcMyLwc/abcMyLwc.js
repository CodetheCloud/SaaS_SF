import { LightningElement, api } from 'lwc';

export default class AbcMyLwc extends LightningElement {
    name = 'Everyone';
    @api mypprop1; 
    @api showSI;
    @api showCI;

}