* ZenScript类：core.Image
* Java类：[cat.jiu.core.api.element.IImage](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/api/element/IImage.java)
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
