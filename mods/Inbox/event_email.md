* 订阅事件的json文件：游戏目录/configs/jiu/inbox/data/event_emails.json

* 如需自行添加事件邮件，请按以下方法自行添加
	* 使用指令：/email event add <事件> <邮件文件>
	* 修改文件：见下文，修改后执行此指令以重载：/email event load

```java
ResourceLocation PLAYER_DEATH = EventEmail.registerEvent("modid", "email/event/player/death");

@SubscribeEvent
public static void onPlayerDeath(LivingDeathEvent event) {
    if (event.getEntity() instanceof Player player) {
        EventEmail.sendEventEmails(PLAYER_DEATH, player.getStringUUID());
    }
}
```

* 目前仅1个事件。如需自定义事件，请查看 [EventEmail](https://github.com/SmallJiu/Inbox/blob/1.20.1/src/main/java/cat/jiu/email/element/EventEmail.java)
	* email:email/event/mc/logged : 玩家首次进入存档

```json5
{
  "email:email/event/mc/logged": [ // 玩家首次进入存档
    "邮件1.json", "邮件2.json", "邮件3.json" // 需要发送的邮件，文件需位于同目录下的 'emails/' 内
  ]
}
```
