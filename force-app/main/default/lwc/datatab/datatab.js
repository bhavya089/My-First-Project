import { LightningElement,track,wire } from 'lwc';
import getContacts from '@salesforce/apex/ContactWire.getContacts'
export default class Datatab extends LightningElement {
    @track data;
    @track accountRecordsList;
    @track columns = [
        { label: 'Label', fieldName: 'Name', type: 'text' },  
        { label: 'phone', fieldName: 'Phone', type: 'Phone' },          
    ];   
    @wire (getContacts) contactRecords({error,data}){
        if(data){
            this.data = data;            
        }
        else if (error){
            this.data  = undefined;
        }
    }
}