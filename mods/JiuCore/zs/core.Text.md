* ZenScript类：core.Text
* Java类：[cat.jiu.core.api.element.IText](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/api/element/IText.java)
* 实现
  * [cat.jiu.core.util.element.Text](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/util/element/Text.java)
* 方法
    * String text() # 获取当前文本
    * core.Text text(String) # 设置当前文本
    * Object[] args() # 获取当前文本参数
    * core.Text args(Object[]) # 设置当前文本参数
    * Object[] args() # 获取当前文本参数
    * core.Text args(Object[]) # 设置当前文本参数
    * boolean center() # 获取当前文本是否居中显示
    * core.Text center(boolean) # 设置当前文本是否居中显示
    * boolean vanWrap() # 获取当前文本是否使用原版的长行回绕
    * core.Text vanWrap(boolean) # 设置当前文本是否使用原版的长行回绕
    * core.Text copy() # 复制
    * String format() # 格式化为正确的文本，仅客户端
    * int width() # 获取当前文本所占长度，单位为像素
* 创建方法
    * static core.Text from(String) # 新建对象
    * static core.Text from(String, Object[]) # 新建对象
