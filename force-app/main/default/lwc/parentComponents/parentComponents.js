import { LightningElement } from 'lwc';

export default class ParentComponent extends LightningElement {

    callValueMethod(event){
        this.template.querySelector('c-child-Components').updatedName(event.target.value);
    }
}