# Caption支持的ZenScript用法
## caption.Caption
- 所属类[cat.jiu.caption.iface.ICaption](https://github.com/SmallJiu/Caption/blob/1.12.2/src/main/java/cat/jiu/caption/iface/ICaption.java)
- 拥有的方法
* copy()Caption # 复制当前对象到新对象 
* changeTo(ICaption)V # 使当前字幕改变为另一个对象
* updataTime()V # 更新字幕的计时器，如果计时器为系统计时器，则无效
* type()String # 获取当前字幕所处的层，有以下类型
  * main #主要
  * secondary #次要
* name()core.Text # 当前字幕显示的名称
* text()core.Text # 当前字幕显示的文本
* time()core.Timer # 获取字幕的显示时间
* delay()core.Timer # 获取字幕在播放动画前的延迟
* delay_pre()core.Timer # 获取字幕展示前,动画的显示时间
* delay_post()core.Timer #获取字幕展示后,动画的显示时间
* side()String #获取字幕展示的位置
  * down #下
  * left #左
  * right #右
  * rand_side # 随机侧边位置
  * rand #随机位置
* image()core.Image # 当前字幕的头像，仅左或右含有，下为null
* sound()core.Sound # 获取字幕的音频
* needBG()boolean # 获取字幕是否需要黑色背景
