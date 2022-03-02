global class LeadRevenueUpdate implements Database.Batchable<sObject> {
    global Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator([SELECT id,AnnualRevenue FROM Lead]);
    }
    global void execute(Database.BatchableContext BC,List<Lead> listOfRec){
        for(Lead lea:listOfRec){
            if(lea.AnnualRevenue != null){
                lea.AnnualRevenue = 400000;
            }
        } 
        update listOfRec;
    }
    global void finish(Database.BatchableContext Bc){ 
        Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
        String[] toAddress = new String[] {'s.s.bhavani456@gmail.com'};
        message.setToAddresses(toAddress);    
        message.setSubject('Regarding updation of AnnualRevenue in Leads');
        message.setPlainTextBody('All Leads AnnualRevenue field was updated where that field is not null');
        messaging.sendemail(new Messaging.SingleEmailMessage[]{message});
    }
    }