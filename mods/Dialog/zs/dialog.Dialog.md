* ZenScript类：dialog.Dialog
* Java类：[cat.jiu.dialog.element.Dialog]()
* 作用：用于表示一个对话框，讲此类的对象填入到[dialog.API.display](mods/Dialog/zs/dialog.API.md)内即可展示对话框
* 方法
    * List<dialog.Data> options() # 获取此对话框的全部选项
    * core.Text title() # 获取此对话框的标题
    * String id() # 获取此对话框的ID
    * V id(String) # 设置此对话框的ID
    * int width() # 获取对话框未经长行回绕的最大长度，取决于标题与各个选项的最长长度。仅客户端
    * dialog.Dialog clone() # 复制