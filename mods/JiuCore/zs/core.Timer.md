* ZenScript类：core.Timer
* Java类：[cat.jiu.core.api.ITimer](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/api/ITimer.java)
* 实现
    * [cat.jiu.core.util.timer.Timer](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/util/timer/Timer.java) 传统的计时器，需要调用updata()更新计时器
    * [cat.jiu.core.util.timer.MillisTimer](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/util/timer/MillisTimer.java) 使用时间戳的计时器，调用start()开始计时
* 方法
    * void format(long) # 格式化计时器的时间单位
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
    * void updata(int) # 更新计时器，参数：减去的Tick数
    * void updata() # 更新计时器，减去 1 Tick
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
