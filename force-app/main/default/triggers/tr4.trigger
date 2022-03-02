trigger tr4 on Account (before insert , before update , after delete , after undelete) {
    if(Trigger.isbefore && Trigger.isinsert)
    {
        system.debug('iam in before insertion');
    }
    if(Trigger.isbefore && Trigger.isupdate)
    {
          system.debug('there is updation happend');
    }          
    if(Trigger.isafter && Trigger.isdelete)
    {
          system.debug('record is deleted');
    }          
        if(Trigger.isafter && Trigger.isundelete)
    {
          system.debug('record is canot be deleted');
    }             
}