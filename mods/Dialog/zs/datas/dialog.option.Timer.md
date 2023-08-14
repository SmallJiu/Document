* ZenScript类：dialog.option.Timer
* Java类：[cat.jiu.dialog.element.option.OptionTimerBase<T extends IDialogOption>]()
* 作用：一个限时的对话框选项，是所有限时选项的父类
  * 方法
    * core.Timer timer() # 获取计时器
    * dialog.Data option() # 获取选项数据
    * boolean auto() # 计时器完成后是否自动提交
    * V auto(boolean) # 设置计时器完成后是否自动提交