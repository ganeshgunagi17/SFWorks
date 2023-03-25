import { LightningElement } from 'lwc';

export default class CalculatorLWC extends LightningElement {

    firstNum;
    secondnum;
    result;
    handleClick(){
        this.result = this.firstNum+this.secondnum;
    }

}