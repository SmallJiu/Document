# Caption支持的ZenScript用法
方法格式为 ' 返回类型 方法名 (方法参数) '， 返回类型前有' static '则为静态方法

## caption.API
* 所属Java类[cat.jiu.caption.CaptionAPI](https://github.com/SmallJiu/Caption/blob/1.12.2/src/main/java/cat/jiu/caption/CaptionAPI.java)
* 方法
  * Void add(Player, Caption)# 展示一个字幕，这会在客户端与服务端都发送一次。





## caption.Caption
* 所属Java类[cat.jiu.caption.iface.ICaption](https://github.com/SmallJiu/Caption/blob/1.12.2/src/main/java/cat/jiu/caption/iface/ICaption.java)
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



## caption.Builder
* 所属Java类[cat.jiu.caption.util.CaptionBuilder](https://github.com/SmallJiu/Caption/blob/1.12.2/src/main/java/cat/jiu/caption/util/CaptionBuilder.java)
* 方法
  * static Builder from() # 新建一个Builder。
  * Builder type(int) #设置所处层，默认 '0'。
    * 0: main
    * 1: secondary
  * Builder name(core.Text) # 设置显示的名称。
  * Builder text(core.Text) # 设置显示的文本。
  * Builder time(core.Timer) # 设置显示的时间。
  * Builder side(int) # 设置展示的位置，默认 '0'。
    * 0: down # 下
    * 1: left # 左
    * 2: right # 右
    * 3: rand_side # 随机侧边位置
    * 4: rand # 随机位置
  * Builder delay(core.Timer) # 设置展示动画前的延迟。
  * Builder style(int) # 设置展示动画的样式，默认 '1'。
    * 0: 中间到侧边，生效层：下。注：未完成
    * 1: 上到下，生效层：全部
    * 2: 右到左，生效层：下/右。注：未完成
    * 3: 左到右，生效层：下/左。注：未完成
    * 4: 左上角到右下角，生效层：下/左。注：未完成
    * 5: 右上角到左下角，生效层：下/左。注：未完成
  * Builder background(boolean) # 设置是否绘制透明黑色背景。
  * Builder image(core.Image) # 设置头像。
  * Builder sound(core.Sound) # 设置音效。
  * Builder delay_pre(core.Timer) # 设置展示前的动画的时间。
  * Builder delay_post(core.Timer) # 设置展示后的动画的时间。
  * caption.Caption build() # 生成字幕对象。
* 