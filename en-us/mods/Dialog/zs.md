# Dialog支持的ZenScript用法
方法格式为 ' 返回类型 方法名 (方法参数) '， 返回类型前有' static '则为静态方法。

## dialog.API
* Java类：[cat.jiu.dialog.DialogAPI]()
* 作用：
* 方法
  * V display(Player, dialog.api.Builder) # 展示一个对话框，对话框内容由 dialog.api.Builder 提供
  * V display(Player, dialog.Dialog) # 展示一个对话框，对话框内容由 dialog.Dialog 提供

## dialog.Dialog
* Java类：[cat.jiu.dialog.element.Dialog]()
* 作用：
* 方法
  * List<dialog.Data> options() # 获取此对话框的全部选项
  * core.Text title() # 获取此对话框的标题
  * String id() # 获取此对话框的ID
  * V id(String) # 设置此对话框的ID
  * int width() # 获取对话框未经长行回绕的最大长度，取决于标题与各个选项的最长长度。仅客户端
  * dialog.Dialog clone() # 复制


## dialog.api.Builder
* Java类：[cat.jiu.dialog.utils.DialogBuilder]()
* 方法
  * Builder option(dialog.Data) # 添加选项到对话框
  * Builder id(String) # 设置对话框ID
  * Builder button(core.Text) # 添加一个按钮选项到对话框
  * Builder button(core.Text, boolean) # 添加一个按钮选项到对话框。参数：文本，是否可关闭对话框
  * Builder button(core.Text, boolean, core.Text[]) # 添加一个按钮选项到对话框。参数：文本，是否可关闭对话框，鼠标悬停时的提示
  * Builder button(core.Text, boolean, List<core.Text>) # 添加一个按钮选项到对话框。参数：文本，是否可关闭对话框，鼠标悬停时的提示
  * Builder text(core.Text, boolean) # 添加一个文本输入选项。参数：提示文本，是否可关闭对话框
  * Builder button_tooltip(int, core.Text[]) # 为一个按钮选项添加鼠标悬停时的提示。参数：选项ID，鼠标悬停时的提示
  * Builder text_tooltip(int, core.Text[]) # 为一个文本输入选项添加鼠标悬停时的提示。参数：选项ID，鼠标悬停时的提示
  * dialog.Dialog build() # 生成dialog.Dialog对象


## dialog.Options
* Java类：[cat.jiu.dialog.element.DialogOption]()
* 作用：
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



## dialog.Type
* Java类： [cat.jiu.dialog.api.IDialogOptionType]()
* 作用：
* 方法
  * String id() # 获取对话框选项类型ID
  * dialog.Data getDataUnit(NBTTagCompound) # 
  * dialog.Data getDataUnit(JsonObject) #



## dialog.Draw
* Java类：[cat.jiu.dialog.element.OptionDrawUnit]()
* 作用：
* 方法
  * List<String> getOptionText(dialog.Dialog option, dialog.dimension.Dialog dialogDimension, FontRenderer fr) # 仅客户端
  * V init(GuiDialog gui, FontRenderer fr) # 仅客户端
  * V draw(GuiDialog gui, int mouseX, int mouseY, dialog.dimension.Option dimension, Minecraft mc, FontRenderer fr) # 仅客户端
  * void drawHoveringText(GuiDialog gui, Minecraft mc, FontRenderer fr, int mouseX, int mouseY, ScaledResolution sr, dialog.dimension.Option dimension) # 仅客户端
  * void mouseClicked(GuiDialog gui, int mouseX, int mouseY, int mouseButton, dialog.dimension.Option dimension) # 仅客户端
  * void mouseClickMove(GuiDialog gui, int mouseX, int mouseY, int clickedMouseButton, long timeSinceLastClick) # 仅客户端
  * void handleInput(GuiDialog gui, FontRenderer fr) # 仅客户端
  * void handleMouseInput(GuiDialog gui, FontRenderer fr) # 仅客户端
  * void handleKeyboardInput(GuiDialog gui, FontRenderer fr) # 仅客户端
  * boolean keyTyped(GuiDialog gui, char typedChar, int keyCode) # 仅客户端
  * int getHeight(FontRenderer fr) # 仅客户端
  * static void playClickSound() # 仅客户端



## dialog.api.List
* Java类：[cat.jiu.dialog.api.helper.DialogList]()
* 作用：


## dialog.api.Operation
* Java类：[cat.jiu.dialog.api.helper.DialogOperation]()
* 作用：


## dialog.Data
* Java类：[cat.jiu.dialog.api.IDialogOption]()
* 作用：
* 方法
  * String id() # 获取选项ID
  * core.Text text() # 获取选项文本
  * boolean close() # 是否可关闭对话框
  * dialog.Data copy() # 复制
  * dialog.Draw draw(ResourceLocation dialogID, int optionID, dialog.Data option, dialog.dimension.Dialog dialogDimension) # 获取绘制单元。仅客户端
* 实现
  ### dialog.option.Button
    * 作用：
    * Java类：[cat.jiu.dialog.element.option.OptionButton]()
  ### dialog.option.Checkbox
    * 作用：
    * Java类：[cat.jiu.dialog.element.option.OptionCheckbox]()
  ### dialog.option.ItemCheckbox
    * 作用：
    * Java类：[cat.jiu.dialog.element.option.OptionItemCheckbox]()
  ### dialog.option.ItemRadioButton
    * 作用：
    * Java类：[cat.jiu.dialog.element.option.OptionItemRadioButton]()
  ### dialog.option.MultiTitle
    * 作用：
    * Java类：[cat.jiu.dialog.element.option.OptionMultiTitle]()
  ### dialog.option.RadioButton
    * 作用：
    * Java类：[cat.jiu.dialog.element.option.OptionRadioButton]()
  ### dialog.option.Text
    * 作用：
    * Java类：[cat.jiu.dialog.element.option.OptionTextField]()
  ### dialog.option.Timer
    * 作用：
    * Java类：[cat.jiu.dialog.element.option.OptionTimerBase<T extends IDialogOption>]()
    * 方法
      * core.Timer timer() # 获取计时器
      * dialog.Data option() # 获取选项数据
      * boolean auto() # 计时器完成后是否自动提交
      * V auto(boolean) # 设置计时器完成后是否自动提交
    * 实现
      #### dialog.option.timer.Checkbox
        * 作用：
        * Java类：[cat.jiu.dialog.element.option.timer.OptionTimerCheckbox]()
      #### dialog.option.timer.ItemCheckbox
        * 作用：
        * Java类：[cat.jiu.dialog.element.option.timer.OptionTimerItemCheckbox]()
      #### dialog.option.timer.ItemRadioButton
        * 作用：
        * Java类：[cat.jiu.dialog.element.option.timer.OptionTimerItemRadioButton]()
      #### dialog.option.timer.RadioButton
        * 作用：
        * Java类：[cat.jiu.dialog.element.option.timer.OptionTimerRadioButton]()


## dialog.option.Task
* Java类：[cat.jiu.dialog.api.IOptionTask]()
* 作用：
* 实现：
  ### dialog.option.task.Button
    * 作用：
    * Java类：[cat.jiu.dialog.api.task.IButtonTask]()
  ### dialog.option.task.checkbox.Check
    * 作用：
    * Java类：[dialog.option.task.checkbox.Check]()
  ### dialog.option.task.checkbox.Confirm 
    * 作用：
    * Java类：[cat.jiu.dialog.api.task.ICheckboxConfirmTask]()
  ### dialog.option.task.Text 
    * 作用：
    * Java类：[dialog.option.task.Text]()
  ### dialog.option.task.checkbox.item.Check 
    * 作用：
    * Java类：[dialog.option.task.checkbox.item.Check]()
  ###  dialog.option.task.checkbox.item.Confirm
    * 作用：
    * Java类：[cat.jiu.dialog.api.task.IItemCheckboxConfirmTask]()
  ###  dialog.option.task.radio_button.Item
    * 作用：
    * Java类：[cat.jiu.dialog.api.task.IItemRadioButtonTask]()
  ###  dialog.option.task.multi_title.Change
    * 作用：
    * Java类：[dialog.option.task.multi_title.Change]()
  ###  dialog.option.task.multi_title.Close
    * 作用：
    * Java类：[cat.jiu.dialog.api.task.IMultiTitleCloseTask]()
  ###  dialog.option.task.multi_title.Parent
    * 作用：
    * Java类：[cat.jiu.dialog.api.task.IMultiTitleToParentTask]()
  ###  dialog.option.task.RadioButton
    * 作用：
    * Java类：[cat.jiu.dialog.api.task.IRadioButtonTask]()
