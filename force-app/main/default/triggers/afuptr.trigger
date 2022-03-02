trigger afuptr on Account (after insert,before insert) {
    if(trigger.isafter && Trigger.isInsert)
    {
       trachelp.afterinsert(Trigger.new);  
    }
    if(trigger.isafter && Trigger.isInsert)
    {
       insertionAccount.beforeinsert(Trigger.new);  
    }
    
}