trigger AccountTrigger on Account (before insert) {
  trachelp.beforeinsert(trigger.new);
}