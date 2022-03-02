global class lrus implements Schedulable {
    global void execute(SchedulableContext sc){
        LeadRevenueUpdate lvr = new LeadRevenueUpdate();
        database.executeBatch(lvr,200);
    }
}