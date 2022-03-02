import { LightningElement,track,wire } from 'lwc';
import getContacts from '@salesforce/apex/ContactWire.getContacts'
export default class Contactwireprprty extends LightningElement {
    @track data;
    @wire(getContacts) contactRecords({error,data}){
        if(data){
            this.data=data;
        }
        else if(error){
            this.data=undefined;
        }
    }
}