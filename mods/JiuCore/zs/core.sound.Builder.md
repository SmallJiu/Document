* ZenScript类：core.sound.Builder
* Java类：[cat.jiu.core.api.element.ISound.Builder](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/api/element/ISound.java)
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