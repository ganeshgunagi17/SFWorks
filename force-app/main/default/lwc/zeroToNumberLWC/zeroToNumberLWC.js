import { LightningElement } from 'lwc';
import jquery from '@salesforce/resourceUrl/jqueryjs'
import bootstrapcss from '@salesforce/resourceUrl/bootstrapcss'
import bootstrapJs from '@salesforce/resourceUrl/bootstrapjs'

export default class ZeroToNumberLWC extends LightningElement {
    connectedCallback(){
      
        $('.count').each(function () {
            $(this).prop('Counter',0).animate({
                Counter: $(this).text()
            }, {
                duration: 4000,
                easing: 'swing',
                step: function (now) {
                    $(this).text(Math.ceil(now));
                }
            });
        });
      
       
       
   
    }

}