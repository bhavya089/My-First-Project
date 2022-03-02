import { LightningElement,wire } from 'lwc';
import getAccounts from '@salesforce/apex/DragAndDrop.getAccounts';
export default class DragComponent extends LightningElement {
    @wire(getAccounts) accounts;
    handleDragStart(event){
        event.dataTransfer.setData("account_id", event.target.dataset.item);
    }
}