* ZenScript类：dialog.Options
* Java类：[cat.jiu.dialog.element.DialogOption]()
* 作用：存储了一些已经被注册的对话框选项。zs请调用register静态方法以注册一个自己的对话框选项。
* 静态常量
    * button 按钮
    * text 文本输入
    * checkbox 多选
    * radio_button 单选
    * item_radio_button 物品单选
    * item_checkbox 物品多选
    * multi_tile 多标题，多用于剧情，按下按钮切换标题
    * timer_checkbox 带计时器的多选
    * timer_radio_button 带计时器的单选
    * timer_item_radio_button 带计时器的物品单选
    * timer_item_checkbox 带计时器的物品多选
* 方法
    * static dialog.Options getTypeFromID(String) # 获取已注册的对话框选项
    * static dialog.Options getTypeFromID(String, String) # 获取已注册的对话框选项。参数：domain, path
    * static dialog.Options register(String, Class<? extends IDialogOption>) # 注册对话框选项到系统，如果注册的是已被注册过的，则返回已被注册过的。参数：ID, 选项Java类
    * static dialog.Options register(String, String, Class<? extends IDialogOption>) # 注册对话框选项到系统，如果注册的是已被注册过的，则返回已被注册过的。参数：domain, path, 选项Java类
