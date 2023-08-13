* ZenScript类：caption.Builder
* Java类：[cat.jiu.caption.util.CaptionBuilder](https://github.com/SmallJiu/Caption/blob/1.12.2/src/main/java/cat/jiu/caption/util/CaptionBuilder.java)
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