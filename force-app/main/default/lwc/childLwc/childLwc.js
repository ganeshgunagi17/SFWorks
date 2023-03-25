import { LightningElement ,api} from 'lwc';

export default class ChildLwc extends LightningElement {

@api selectedRecordIds;
value='test'   ;
    connectedCallback(){
        console.log('conncted call back'+this.value);
    }
    renderedCallback(){
        console.log('in rendered call back'+this.value);
        const eventCustom = new CustomEvent('click',{detail:{name:'ganesh'}});
        this.dispatchEvent(eventCustom);
    }
}
