trigger Contatupdatetrigger on Contact (after insert) {
    if(trigger.isafter && Trigger.isInsert)
    {
       trachelp2.afterins(Trigger.new);  
    }
}