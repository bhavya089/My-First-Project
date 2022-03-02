trigger tr9 on Account (before update) {
     if(trigger.isbefore && trigger.isupdate)
    {
     tr9.method1(trigger.new,trigger.old,trigger.newMap,trigger.oldMap);
    }
}