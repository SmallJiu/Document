* ZenScript类：core.image.Builder
* Java类：[cat.jiu.core.api.element.IImage.Builder](https://github.com/SmallJiu/JiuCore/blob/1.12.2/src/main/java/cat/jiu/core/api/element/IImage.java)
* 方法
    * Builder image(String) # 添加图片
    * Builder order(int[]) # 设置图片展示顺序
    * Builder orderIndex(int, int) # 设置图片展示顺序。参数：顺序ID， 图片ID
    * Builder delay(long) # 设置展示间隔
    * Builder msUpdata(boolean) # 使用毫秒设置间隔时间。默认: true
    * core.Image build() # 生成core.Image对象。如果图片为空，则返回默认图片
