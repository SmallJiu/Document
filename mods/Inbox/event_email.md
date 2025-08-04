* 订阅事件的json文件：游戏目录/configs/jiu/inbox/data/event_emails.json

* 如需自定义事件，请查看 [EventEmail](https://github.com/SmallJiu/Inbox/blob/1.20.1/src/main/java/cat/jiu/email/element/EventEmail.java)

```java

ResourceLocation PLAYER_DEATH = EventEmail.registerEvent("modid", "email/event/player/death");

@SubscribeEvent
public static void onPlayerDeath(LivingDeathEvent event) {
    if (event.getEntity() instanceof Player player) {
        EventEmail.sendEventEmails(PLAYER_DEATH, player.getStringUUID());
    }
}

```


* 目前仅1个事件
    * email:email/event/mc/logged : 玩家首次进入存档

```json5

{
  "email:email/event/mc/logged": [ // 玩家首次进入存档
    "邮件1.json", "邮件2.json", "邮件3.json" // 需要发送的邮件，文件需位于同目录下的 'emails/' 内
  ]
}

```
