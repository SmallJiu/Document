此为邮箱的存储结构。如果你不懂，请勿轻易改动。

示例邮件 [DevEmail](https://github.com/SmallJiu/Inbox/blob/1.20.1/src/main/java/cat/jiu/email/util/SendDevEmail.java#L50)
```json5
{
  "dev": true, // 是否已发送初始邮件，可使用指令重新发送初始邮件：/email send @p default
  "historySize": 8, // 历史邮件个数
  "sendCooling": 1759779530060, // 邮件发送冷却的时间戳
  "emails": { // 存储的邮件
    "1": { // 邮件ID
      "title": { // 标题
        "text": "inbox.dev_message.title", // 文本
        // "args": [ "arg1", "arg4", "arg3"] // 额外参数
        "parameters": [ "arg1", "arg4", "arg3"] // 额外参数
      },
      "time": 1746538669004, // 邮件发送的时间戳
      "expiration": 864000008999, // 邮件过期的时间戳
      "sender": { // 发送者
        "text": "?????", // 文本
        // "args": [ "arg1", "arg4", "arg3"] // 额外参数
        "parameters": [ "arg1", "arg4", "arg3"] // 额外参数 
      },
      "read": true, // 是否已读
      "receive": true, // 是否已领取
      "deletable": true, // 是否可删除
      "attachments": [ // 邮件所有附件
	  
		{ // add on 1.20.1-1.2.1
			"defaultMapMod": "xaerominimap", // 默认使用的地图mod，如果不存在且有多个地图mod时，则会打开选择地图mod的界面来选择mod以生成路径点
			"waypoints": {
				"minecraft:overworld": [ // 路径点所处世界
					{
						"x": 3,
						"y": 0,
						"z": 0,
						"name": "保险库", // 路径点名称，类似于 "保险库 (A)" 中的 "保险库"
						"extraName": "A", // 路径点名称，类似于 "保险库 (A)" 中的 "A"
						"color": "a" // 路径点颜色，请在 原版的颜色代码 中选择，不要添加 §
					}
				],
				"minecraft:the_end": { // 也可这样添加单个路径点，但最终存储到邮箱内的格式则是上面这种
					"x": 3,
					"y": 0,
					"z": 0,
					"name": "保险库", // 路径点名称，类似于 "保险库 (B)" 中的 "保险库"
					"extraName": "B", // 路径点名称，类似于 "保险库 (B)" 中的 "B"
					"color": "d" // 路径点颜色，请在 原版的颜色代码 中选择，不要添加 §
				}
			},
			"id": "email:attachment/waypoint" // 路径点附件ID
		},
		{ // add on 1.20.1-1.1.4
			"undyingCount": 9, // 不死之力数量
			"id": "email:attachment/undying" // 不死之力附件ID
		},
        { // 此附件可与 email:attachment/attribute 共存并合并
          "health": 2.0, // 最大生命值
          "temp": false, // 是否是一次性的，具体为死亡后移除。 add on 1.20.1-1.1.3-a2
          "id": "email:attachment/health" // 最大生命值附件ID
        },
        { // add on 1.20.1-1.1.3-a2
          "attribute": [ // 属性列表
            {
              // 若安装有ApothicAttributes(AttributesLib)，则可查看所有属性的ID。AttributesLib：mcmod.cn/class/12036.html
              "id": "minecraft:generic.luck", // 属性ID，具体请查看原版
              "operation": 0, // 此属性的全局算法，若存在此设置，则 values 内全为此属性算法
              "temp": true, // 此属性的全局 '一次性' 设置，若存在此设置，则 values 内全为一次性
              "values": [
                  {
                    // 若此设置不存在，则默认为加法[ +<value> ](0)
                    "operation": 0, // 属性算法，若安装有上述mod，可查看具体区别，分别有：+<value> (0)，+<value>x (1)，x<value> (2)
                    "value": 1.0, // 属性值
                    // 若此设置不存在，则默认为true
                    "temp": true // 是否是一次性的，具体为死亡后移除此属性
                  }
                ]
              }
            ],
          "id": "email:attachment/attribute" // 玩家属性附件ID 
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
              "cmd": "/give @p stone", // 指令,可使用 '{*player*}' 代替执行的玩家
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
        "inbox.dev_message.13": null,
        "%s%s%s": [
          // Type '0' is core text, class:  cat.jiu.core.api.element.IText
          {
            "text": "inbox.dev_message.title",
            "type": 0
          },
          // Type '1' is minecraft text, class: net.minecraft.network.chat.Component
          {
            "translate": "info.inbox.main.from",
            "with": [
              "981314"
            ],
            "type": 1
          },
          {
            "text": "9856168549616596416548",
            "type": 1
          },
          // Type '2' is normal text, it just a string
          {
            "parameter": "99999",
            "type": 2
          }
        ]
      }
    }
  }
}
```
