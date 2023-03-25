import { LightningElement,api } from 'lwc';

export default class ChildComponent extends LightningElement {
    message;

   @api updatedName(value){
        this.message=value;
    }
}