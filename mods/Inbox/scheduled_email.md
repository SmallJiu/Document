* 定时邮件的json文件：游戏目录/configs/jiu/inbox/data/scheduled_emails.json

* 如需自行添加定时邮件，请按以下方法自行添加
  * 游戏内: 邮箱主界面 > 右下角菜单 > 定时邮件 > 添加 > 左边选择一封邮件 > 右下角生成 > 修改间隔、收件人、备注
  * 使用java: [cat.jiu.email.element.ScheduledEmail](https://github.com/SmallJiu/Inbox/blob/1.20.1/src/main/java/cat/jiu/email/element/ScheduledEmail.java)


* 此为使用java添加定时邮件的例子
```java
ScheduledEmail.addScheduledEmail(
        new ScheduledEmail()
                // 邮件文件，需要位于 游戏目录/configs/jiu/inbox/data/emails/ 
                .setFilePath("邮件.json")
    
                // 设置间隔并刷新下次发送时间，请查看类的构造方法
                .setInterval(new TimeMillis(5, 5)).refreshNextExecuteTime()
    
                // 收件人
                .setAddressee(ScheduledEmail.Addressee.ONLINE)
    
                // 备注
                .setNote("这是一个备注")
    
                // 自定义收件人，需要收件人为 ScheduledEmail.Addressee.CUSTOM 才生效
                .addCustomAddressee("small_jiu")
                .addCustomAddressee("player1")
                .addCustomAddressee("player2")
        , true); // 是否保存到文件，不保存则会在 正常关闭服务器/正常退出存档 时自动保存
```

- 此为json文件的结构
```json5
[
  {
    "id": 1754327175328, // id，使用gui生成的则不用管，但如果是手动编辑的则不允许重复
    "path": "邮件.json", // 需要发送的邮件，文件需位于同目录下的 'emails/' 内
    "interval": 5000, // 发送间隔，单位：毫秒
    "note": "在线玩家的定时邮件", // 备注 

    // online: 所有在线玩家
    // archive: 所有在线与不在线的玩家
    // custom: 自定义玩家，在 "custom_addressee":[] 列表内的玩家才可以收到邮件
    "addressee": "online" // 收件人
  },
  {
    "id": 1754327476592,
    "path": "邮件.json",
    "interval": 86400000,
    "note": "在线与不在线的玩家的定时邮件",
    "addressee": "archive"
  },
  {
    "id": 1754327177452,
    "path": "邮件.json",
    "interval": 5000,
    "note": "自定义玩家的定时邮件",
    "addressee": "custom",
    "custom_addressee": [ // 当收件人为自定义玩家时，在此列表内的玩家才可以收到邮件
      "player1", "small_jiu"
    ]
  }
]
```
