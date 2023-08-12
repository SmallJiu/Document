# Jiucore支持的ZenScript用法
方法格式为 ' 返回类型 方法名 (方法参数) '， 返回类型前有' static '则为静态方法。

## core.Text
* 所属Java类：[cat.jiu.core.api.element.IText](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/api/element/IText.java)
* 实现
  * [cat.jiu.core.util.element.Text](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/util/element/Text.java)
* 方法
  * String text() # 获取当前文本
  * core.Text text(String) # 设置当前文本
  * Object[] args() # 获取当前文本参数
  * core.Text args(Object[]) # 设置当前文本参数
  * Object[] args() # 获取当前文本参数
  * core.Text args(Object[]) # 设置当前文本参数
  * boolean center() # 获取当前文本是否居中显示
  * core.Text center(boolean) # 设置当前文本是否居中显示
  * boolean vanWrap() # 获取当前文本是否使用原版的长行回绕
  * core.Text vanWrap(boolean) # 设置当前文本是否使用原版的长行回绕
  * core.Text copy() # 复制
  * String format() # 格式化为正确的文本，仅客户端
  * int width() # 获取当前文本所占长度，单位为像素
* 创建方法
  * static core.Text from(String) # 新建对象
  * static core.Text from(String, Object[]) # 新建对象

## core.Timer
* 所属Java类：[cat.jiu.core.api.ITimer](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/api/ITimer.java)
* 实现
  * [cat.jiu.core.util.timer.Timer](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/util/timer/Timer.java) 传统的计时器，需要调用updata()更新计时器
  * [cat.jiu.core.util.timer.MillisTimer](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/util/timer/MillisTimer.java) 使用时间戳的计时器，调用start()开始计时
* 方法
  * V format(long) # 格式化计时器的时间单位
  * long day() # 获取计时器的 天数
  * core.Timer day(long) # 设置计时器的 天数
  * long hour() # 获取计时器的 小时数
  * core.Timer hour(long) # 设置计时器的 小时数
  * long minute() # 获取计时器的 分钟数
  * core.Timer minute(long) # 设置计时器的 分钟数
  * long second() # 获取计时器的 秒数
  * core.Timer second(long) # 设置计时器的 秒数
  * long tick() # 获取计时器的 刻数
  * core.Timer tick(long) # 设置计时器的 刻数
  * long ticks() # 获取计时器的 全部刻数
  * core.Timer ticks(long) # 设置计时器的 全部刻数
  * long allTicks() # 获取计时器的 创建时的刻数
  * core.Timer allTicks(long) # 设置计时器的 创建时的刻数
  * core.Timer allTicks(sec, tick) # 设置计时器的 创建时的刻数
  * core.Timer allTicks(minute, sec, tick) # 设置计时器的 创建时的刻数
  * core.Timer allTicks(hour, minute, sec, tick) # 设置计时器的 创建时的刻数
  * core.Timer allTicks(day, hour, minute, sec, tick) # 设置计时器的 创建时的刻数
  * core.Timer add(core.Timer) # 添加另一个计时器的时间到当前计时器
  * core.Timer subtract(core.Timer) # 减去另一个计时器的时间
  * core.Timer reset() # 重置当前计时器
  * core.Timer copy() # 复制当前计时器，仅复制创建时的刻数
  * boolean isDone() # 当前计时器是否已完成计时
  * boolean isPart(int, int) #
  * int getPart(int) #
  * float getSurplusPart() #
  * V replace() # 格式化计时器内的时间
  * String strTime(boolean) # 生成字符串时间，参数：是否反转
  * long hashCode() #
  * boolean equals() #
  * boolean isStarted() # 是否已开始计时
  * core.Timer start() # 开始计时
  * V updata(int) # 更新计时器，参数：减去的Tick数
  * V updata() # 更新计时器，减去 1 Tick
  * static String msTimestamp(long) #
  * static StringBuilder format() #
* 创建方法
  * static core.Timer from(boolean) # 创建空的计时器。参数：是否为时间戳计时器
  * static core.Timer from(boolean, long) # 创建计时器。参数：是否为时间戳计时器, 毫秒
  * static core.Timer from(boolean, long, long) # 创建计时器。参数：是否为时间戳计时器, 刻, 毫秒
  * static core.Timer from(boolean, long, long, long) # 创建计时器。参数：是否为时间戳计时器, 秒, 刻, 毫秒
  * static core.Timer from(boolean, long, long, long, long) # 创建计时器。参数：是否为时间戳计时器, 分钟, 秒, 刻, 毫秒
  * static core.Timer from(boolean, long, long, long, long, long) # 创建计时器。参数：是否为时间戳计时器, 小时, 分钟, 秒, 刻, 毫秒
  * static core.Timer from(boolean, long, long, long, long, long, long) # 创建计时器。参数：是否为时间戳计时器, 天, 小时, 分钟, 秒, 刻, 毫秒


## core.Pos
* 所属Java类：[cat.jiu.core.api.element.Pos](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/api/element/Pos.java)
* Property变量
  * x # x轴
  * y # y轴
  * z # z轴
* 创建方法
  * static core.Pos from(double, double, double) #参数：x, y, z


## core.Sound
* 所属Java类：[cat.jiu.core.api.element.ISound](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/api/element/ISound.java)
* 实现
  * [cat.jiu.core.util.element.Sound](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/util/element/Sound.java)
* 方法
  * String sound() # 获取音频ID
  * core.Sound sound(String) # 设置音频
  * core.Sound sound(int) # 设置音频
  * float volume() # 获取音频的volume
  * core.Sound volume(float) # 设置音频的volume
  * float pitch() # 获取音频的pitch
  * core.Sound pitch(float) # 设置音频的pitch
  * String category() # 获取音频类型，请自行查看MC的音频类型
  * core.Sound category(String) # 设置音频类型
  * core.Sound category(int) # 设置音频类型
    * 0: master
    * 1: music 音乐
    * 2: record 唱片
    * 3: weather 天气
    * 4: block 方块
    * 5: hostile 友好生物
    * 6: neutral 中立生物
    * 7: player 玩家
    * 8: ambient 环境
    * 9: voice 噪音
  * core.Pos pos() # 获取播放时的位置
  * core.Sound pos(int, int, int) # 设置播放时的位置。参数:x, y, z
  * core.Sound pos(core.Pos) # 设置播放时的位置
  * core.Timer time() # 获取播放时间
  * core.Sound time(core.Timer) # 设置播放时间
  * boolean follow() # 是否跟随实体
  * core.Sound follow(boolean) # 设置是否跟随实体
  * boolean played() # 是否已播放
  * core.Sound played(boolean) # 设置是否已播放
  * core.Sound copy() # 复制
* 创建方法
  * static core.Sound from(core.Timer, String, float, float, String) # 新建音频。参数：播放时间, 音频ID, volume, pitch, 音频类型
  * core.sound.Builder.build()


## core.sound.Builder
* 所属Java类：[cat.jiu.core.api.element.ISound.Builder](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/api/element/ISound.java)
* 方法
  * Builder sound(String) # 设置音频ID
  * Builder volume(float) # 设置音频volume
  * Builder pitch(float) # 设置音频pitch
  * Builder time(core.Timer) # 设置音频播放时间
  * Builder category(String) # 设置音频类型
  * Builder follow(boolean) # 设置是否跟随实体
  * Builder pos(core.Pos) # 设置播放位置
  * Builder pos(int, int, int) # 设置播放位置。参数: x, y, z
  * core.Sound build() # 生成core.Sound


## core.Image
* 所属Java类：[cat.jiu.core.api.element.IImage](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/api/element/IImage.java)
* 方法
  * V startTiming() # 开始切换图片，仅在有多张图片时有效
  * int[] order() # 获取图片展示顺序
  * core.Image order(int[]) # 设置图片展示顺序
  * core.Timer delay() # 获取图片展示间隔
  * long delay_ms() # 获取图片展示间隔毫秒数
  * core.Image delay(long) # 设置图片展示间隔
  * boolean timingForMS() # 是否使用毫秒来设置展示间隔
  * core.Image timingForMS(boolean) # 设置是否使用毫秒来设置展示间隔
  * String image() # 获取当前展示的图片地址
  * core.Image image(String) # 设置图片
  * List<String> images() # 获取图片列表
  * core.Image images(List<String>) # 设置图片列表
  * core.Image image(int, String) # 设置图片。参数：图片ID, 图片地址
  * boolean done() # 是否已停止展示
  * core.Image done(boolean) # 设置是否已停止展示
  * boolean hasNext() # 是否有多张图片
  * V updata() # 更新计时器
  * core.Image resetDelay() # 重置计时器
  * core.Image copy() # 复制对象

## core.image.Builder
* 所属Java类：[cat.jiu.core.api.element.IImage.Builder](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/api/element/IImage.java)
* 方法
  * Builder image(String) # 添加图片
  * Builder order(int[]) # 设置图片展示顺序
  * Builder orderIndex(int, int) # 设置图片展示顺序。参数：顺序ID， 图片ID
  * Builder delay(long) # 设置展示间隔
  * Builder msUpdata(boolean) # 使用毫秒设置间隔时间。默认: true
  * core.Image build() # 生成core.Image对象。如果图片为空，则返回默认图片
