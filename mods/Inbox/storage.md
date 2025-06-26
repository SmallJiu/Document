```
{
  "dev": true, // 是否已发送初始邮件，可删除此项以重新获取初始邮件
  "historySize": 8, // 历史邮件个数
   "emails": { // 存储的邮件
      "1": { // 邮件ID
         "title": { // 标题
            "text": "inbox.dev_message.title", // 文本
            // "args": [ "arg1", "arg4", "arg3"] // 额外参数
            "parameters": [ "arg1", "arg4", "arg3"] // 额外参数
         },
         "time": 1746538669004, // 邮件发送时间戳
         "expiration": 864000008999, // 邮件过期时间戳
         "sender": { // 发送者
            "text": "?????", // 文本
            // "args": [ "arg1", "arg4", "arg3"] // 额外参数
            "parameters": [ "arg1", "arg4", "arg3"] // 额外参数 
         },
         "read": true, // 是否已读
         "receive": true, // 是否已领取
         "deletable": true, // 是否可删除
         "attachments": [ // 邮件所有附件
            {
               "health": 2.0, // 最大生命值，死亡后不保留
               "id": "email:attachment/health" // 最大生命值附件ID
            },
            {
               "items": [ // 物品, 另请参阅: https://github.com/SmallJiu/JiuCore/wiki/ItemStack
                  {
                     "name": "minecraft:diamond",
                     "count": 9,
                     "damage": 0
                  }
               ],
               "id": "email:attachment/item" // 物品附件ID
            },
            {
               "levels": 9980, // 经验等级
               "points": 9980, // 经验点，达到某点数后自动换算为一级
               "id": "email:attachment/xp" // 经验附件ID
            },
            {
               "commands": [ // 指令
                  {
                     "cmd": "/give @p stone", // 指令
                     "serverCmd": true, // 是否以op权限执行
                     "hide": false // 是否在主界面隐藏
                  }
               ],
               "id": "email:attachment/command" // 指令附件ID
            },
            {
               "effects": [ // 生物Buff，另请参阅原版的Buff存储，此仅为示例
                  {
                     "string": {
                        "forge:id": "minecraft:speed"
                     },
                     "byte": { // byte有两种特殊情况, 0或1, 即代表 false 和 true
                        "Ambient": 0,
                        "ShowIcon": 1,
                        "ShowParticles": 1,
                        "Amplifier": 10
                     },
                     "CurativeItems": [
                        {
                           "string": {
                              "id": "minecraft:milk_bucket"
                           },
                           "byte": {
                              "Count": 1
                           }
                        }
                     ],
                     "int": {
                        "Duration": 1000,
                        "Id": 1
                     }
                  }
               ],
               "id": "email:attachment/effect" // 效果附件ID
            }
         ],
         "msgs": { // 附加消息
            "inbox.dev_message.0": [ // key = 文本
              "arg1", "arg4", "arg3" // value = 额外参数, null即视为无参数
            ],
            "inbox.dev_message.1": null,
            "inbox.dev_message.2": null,
            "inbox.dev_message.3": null,
            "inbox.dev_message.4": null,
            "inbox.dev_message.5": null,
            "inbox.dev_message.6": null,
            "inbox.dev_message.7": null,
            "inbox.dev_message.8": null,
            "inbox.dev_message.9": null,
            "inbox.dev_message.10": null,
            "inbox.dev_message.11": null,
            "inbox.dev_message.12": null,
            "inbox.dev_message.13": null
         }
      }
   }
}
```