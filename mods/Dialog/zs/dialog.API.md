* ZenScript类：dialog.API
* Java类：[cat.jiu.dialog.DialogAPI]()
* 作用：用于展示一个对话框的API类。Java可以注册一个自己的对话框选项，zs请使用[dialog.Options](dialog.Options.md).register注册一个自己的对话框选项
* 方法
    * V display(Player, dialog.api.Builder) # 展示一个对话框，对话框内容由 dialog.api.Builder 提供
    * V display(Player, dialog.Dialog) # 展示一个对话框，对话框内容由 dialog.Dialog 提供
