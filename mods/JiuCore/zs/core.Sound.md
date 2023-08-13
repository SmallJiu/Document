* ZenScript类：core.Sound
* Java类：[cat.jiu.core.api.element.ISound](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/api/element/ISound.java)
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
