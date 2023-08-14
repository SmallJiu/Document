* ZenScript类：dialog.Data
* Java类：[cat.jiu.dialog.api.IDialogOption]()
* 作用：此类表示一个对话框选项的数据单元，用于为绘制单元提供所需的数据，绘制单元由客户端创建。
* 方法
    * String id() # 获取选项ID
    * core.Text text() # 获取选项文本
    * boolean close() # 是否可关闭对话框
    * dialog.Data copy() # 复制
    * dialog.Draw draw(ResourceLocation dialogID, int optionID, dialog.Data option, dialog.dimension.Dialog dialogDimension) # 获取绘制单元。仅客户端

