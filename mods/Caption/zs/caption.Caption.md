* ZenScript类：caption.Caption
* Java类：[cat.jiu.caption.iface.ICaption](https://github.com/SmallJiu/Caption/blob/1.12.2/src/main/java/cat/jiu/caption/iface/ICaption.java)
* 实现
    * [cat.jiu.caption.element](https://github.com/SmallJiu/Caption/blob/1.12.2/src/main/java/cat/jiu/caption/element/Caption.java)
* 方法
    * Caption copy()# 复制当前字幕到新对象。
    * V changeTo(Caption)# 使当前字幕改变为另一个字幕的属性。
    * V updataTime()# 更新字幕的计时器，如果计时器为系统计时器，则无效。
    * String type()# 获取当前字幕所处的层，有以下类型。
        * main #主要
        * secondary #次要
    * core.Text name()# 当前字幕显示的名称。
    * core.Text text()# 当前字幕显示的文本。
    * core.Timer time()# 获取字幕的显示时间。
    * core.Timer delay()# 获取字幕在播放动画前的延迟。
    * core.Timer delay_pre()# 获取字幕展示前,动画的显示时间。
    * core.Timer delay_post()#获取字幕展示后,动画的显示时间。
    * String side()#获取字幕展示的位置。
        * down #下
        * left #左
        * right #右
        * rand_side # 随机侧边位置
        * rand #随机位置
    * core.Image image()# 当前字幕的头像，仅左或右含有，下为null。
    * core.Sound sound()# 获取字幕的音频。
    * boolean needBG()# 获取字幕是否需要黑色背景。
