
nbt中的 " 需要换成 \"

除了 物品ID 外，其余属性都是可选的

```
<ID>@[数量]@[子ID]@[NBT]
"<id>@[count]@[meta]@[nbt]"
```

```
"minecraft:stone@2@10@{\"str":\"Hi_This_Is_Item\"}"
```

---

```json5

{
  "name": "minecraft:stone",// 此为物品ID，必须存在
  "count": 4,// 此为物品数量，如果不存在，则物品数量默认为 1
  "meta": 5,// 此为物品的子ID，为可选的，若不存在则默认为 0
  "nbt":{// 此为物品的nbt标签，为可选的，若不存在则物品没有nbt
    "boolean":{ // 使用 'boolean' 标签来添加boolean类型
       "key": false
     },
     "string":{ // 使用 'string' 标签来添加 字符串
      "key": "value" 
    },
    "long":{ // 使用 'long' 标签来添加 long
      "key": 1
    },
    "int":{ // 使用 'int' 标签来添加 integer
      "key": 1
    },
    "float":{ // 使用 'float' 标签来添加 float
      "key": 1.0
    },
    "double":{ // 使用 'double' 标签来添加 double
      "key": 2.0
    },
    "byte":{ // 使用 'byte' 标签来添加 byte
      "key": 127
    },
    "short":{ // 使用 'short' 标签来添加 short
      "key": 256
    },
    "float_array":{ // 使用 'float_array' 标签来添加 float数组
      "key": [123.0123, 1646.8831, 1534.1238]
    },
    "double_array":{ // 使用 'double_array' 标签来添加 double数组
      "key": [321.000000001, 16156.55913, 1843.81315464]
    },
    "long_array":{ // 使用 'long_array' 标签来添加 long数组
      "key": [-9223372036854775808, 0, 9223372036854775807]
    },
    "int_array":{ // 使用 'int_array' 标签来添加 int数组
      "key": [-2147483647, 0, 2147483647]
    },
    "short_array":{ // 使用 'short_array' 标签来添加 short数组
      "key": [-32768,0,32767]
    },
    "byte_array":{ // 使用 'byte_array' 标签来添加 byte数组
      "key": [-128, 0, 127]
    },
    "string_array":{ // 使用 'string_array' 标签来添加 字符串数组
      "key": ["111","jiujiujiu", "999"]
    },
    "boolean_array":{ // 使用 'boolean_array' 标签来添加  boolean数组
      "key": [false, true, false]
    },
    "tags":{ // 使用 'tags' 标签来添加 更多的子nbt
      "key":{ // 参考上述标签来设置子nbt内的各种数值
        // 一些子nbt...
      },
      "tags":{} // 当然，子nbt也可以使用 'tags' 来添加更多层的子nbt
    }
  }
}

```