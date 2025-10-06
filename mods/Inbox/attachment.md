* 如需自定义邮件附件，则需实现 [IAttachment](https://github.com/SmallJiu/Inbox/blob/1.20.1/src/main/java/cat/jiu/email/api/IAttachment.java)
* 目前有以下[附件](https://github.com/SmallJiu/Inbox/tree/1.20.1/src/main/java/cat/jiu/email/element/attachment)
  * email:attachment/item: 物品
  * email:attachment/command: 指令
  * email:attachment/xp: 经验
  * email:attachment/health: 最大生命
  * email:attachment/effect: 效果/Buff/Debuff
  * email:attachment/attribute: 实体属性
  * email:attachment/undying: 不死之力，类似于不死图腾

## 注册附件
```java
// 1.20.1-1.2.0之前
IAttachment.REGISTRY.register(AttachmentCustom.ID, AttachmentCustom::new, AttachmentCustom::new);

// 1.20.1-1.2.0之后
IAttachment.REGISTRY.register(AttachmentCustom.ID, AttachmentCustom::new);

// 获取邮箱并添加附件到新邮件内
Inbox.get("player uuid").addEmail(
        new Email(IText.create("email title"), IText.create("email sender"))
            .addAttachment(new AttachmentCustom(9980)),
        true
);

public class AttachmentCustom implements IAttachment {
    public static final ResourceLocation ID = new ResourceLocation("modid", "email/attachment/custom");
    
    protected int data;
    public AttachmentCustom() { }
    public AttachmentCustom(int data) {
        this.setData(data);
    }
    public AttachmentCustom(CompoundTag tag) {
        this.read(tag);
    }
    public AttachmentCustom(JsonObject json) {
        this.read(json);
    }
    @Override
    public ResourceLocation getID() {
        return ID;
    }

    @Override
    public void merge(IAttachment other) {
        // 合并另一个相同的附件
        if (other instanceof AttachmentCustom) {
            this.addData(((AttachmentCustom) other).getData());
        }
    }

    @Override
    public void accept(Player player) {
        // 应如何使用 data
        player.giveExperienceLevels(this.getData());
    }
    
    public int getData() {
        return data;
    }
    public AttachmentCustom setData(int data) {
        this.data = data;
        return this;
    }
    public AttachmentCustom addData(int data) {
        this.data += data;
        return this;
    }
    public AttachmentCustom subData(int data) {
        this.data -= data;
        return this;
    }
    
    // 保存到json, 1.20.1-1.2.0之前
    @Override
    public JsonObject write(JsonObject data) {
        data.addProperty("data", this.getData());
        return data;
    }

    // 从json读取数据, 1.20.1-1.2.0之前
    @Override
    public void read(JsonObject data) {
        this.setData(data.get("data").getAsInt());
    }

    // 保存到nbt, 1.20.1-1.2.0之前
    @Override
    public CompoundTag write(CompoundTag data) {
        data.putInt("data", this.getData());
        return data;
    }

    // 从nbt读取, 1.20.1-1.2.0之前
    @Override
    public void read(CompoundTag data) {
        this.setData(data.getInt("data"));
    }

    // 保存数据, 1.20.1-1.2.0之后
    @Override
    public IData.IMapData<?> write(IData.IMapData<?> data) {
        data.putData("data", this.getData());
        return data;
    }

    // 从数据里读取附件相关的内容, 1.20.1-1.2.0之后
    @Override
    public void read(IData.IMapData<?> data) {
        this.setData(data.getInt("data"));
    }

    @OnlyIn(Dist.CLIENT)
    @Override
    public void render(AttachmentEvent.Render event) {
        // 渲染附件
    }

    @OnlyIn(Dist.CLIENT)
    @Override
    public void getHeight(AttachmentEvent.GetHeight event) {
        event.setHeight(18); // 附件应渲染的高度
    }
}
```

## 注册发送邮件ui内的附件
* 仅1.20.1-1.2.0之后
* 当然如果你不想在ui内添加附件，可以不注册

```java
// 注册组件
AttachmentSendScreenWidget.REGISTRY.register(AttachmentCustom.Widget.INSTANCE);

public class AttachmentCustom implements IAttachment {
    public static final ResourceLocation ID = new ResourceLocation("modid", "email/attachment/custom");
    // implement...
  
  public static class Widget extends AttachmentSendScreenWidget { 
    public static final Component COUNT_TEXT = Component.translatable("info.inbox.undying");
    public static final AttachmentSendScreenWidget.WidgetEntry INSTANCE = new WidgetEntry(
            ID,
            true, // 普通玩家是否可以在ui内显示此组件
            Widget::new
    );

    public final GuiFilterTextField countBox; // 数量
    Widget() {
      super(Component.translatable("info.inbox.custom_attachment"));
      this.initSubWiget(true); // 初始化布局，如果不需要，则可自己重写renderWidget方法

      int width = RenderUtils.width("0000000000000000000000000000");
      this.countBox = this.addSubWidget(
              new GuiFilterTextField("0", false, 0, 0, width, RenderUtils.fontHeight() + 1),
              0, 0, 0, 0 // top, bottom, left, right
      ).setWigetRender(null, widget->{
        // 渲染在组件之后的文本
        RenderUtils.drawComponent(widget.graphics, COUNT_TEXT,
                widget.widget.getX() + widget.widget.getWidth() + 2, widget.widget.getY(), Color.WHITE.getRGB(), true
        );
        // 返回文本的长度
        return RenderUtils.width(COUNT_TEXT) + 1;
      }).cast();
      this.countBox.setMaxLength(Integer.MAX_VALUE);
    }
    
    @Override
    public IAttachment newAttachmentInstance() {
      return new AttachmentCustom(this.countBox.getAsNumber().longValue());
    }
    @Override
    public int getWidth() {
      return super.getWidth() + RenderUtils.width(COUNT_TEXT) + 1;
    }
  }
}

```
