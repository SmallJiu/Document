* ZenScript类：dialog.api.Builder
* Java类：[cat.jiu.dialog.utils.DialogBuilder]()
* 作用：用于链式调用的创建一个对话框
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