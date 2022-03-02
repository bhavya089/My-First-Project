import { LightningElement } from 'lwc';

export default class ColourPicker extends LightningElement {
    handleColorChange(event){
        const colorCodeVal = event.target.value;
        const colorCodeEvent = new CustomEvent('colorchange',{
            detail:{colorCodeVal},
        });
        this.dispatchEvent(colorCodeEvent);
    }
}