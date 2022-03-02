import { LightningElement ,track,wire} from 'lwc';
import getAccounts from '@salesforce/apex/SearchAccountName.getAccounts';
const DELAY = 300;
export default class AccountNameSearch extends LightningElement {
    accountName='';
    @track accountList =[];
    @wire(getAccounts,{actName:'$accountName'}) 
    retrieveAccouts({error,data}){ 
        if(data){
            this.accountList = data;
        }
        else if(error){

        }
    }
    handleKeyChange(event){
        const searchString= event.target.value;
        window.clearTimeout(this.delayTimeout);
        this.delayTimeout = setTimeout(()=>{
            this.accountName =searchString;
        },DELAY);
    }
}