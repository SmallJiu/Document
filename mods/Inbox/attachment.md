* 如需自定义邮件附件，则需实现 [IAttachment](https://github.com/SmallJiu/Inbox/blob/1.20.1/src/main/java/cat/jiu/email/api/IAttachment.java)
* 目前有以下[附件](https://github.com/SmallJiu/Inbox/tree/1.20.1/src/main/java/cat/jiu/email/element/attachment)
  * email:attachment/item: 物品
  * email:attachment/command: 指令
  * email:attachment/xp: 经验
  * email:attachment/health: 最大生命
  * email:attachment/effect: 效果/Buff/Debuff
  * email:attachment/attribute: 实体属性

```java
// 注册附件
IAttachment.REGISTRY.register(AttachmentCustom.ID, AttachmentCustom::new, AttachmentCustom::new);

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

    // 保存到json
    @Override
    public JsonObject write(JsonObject data) {
        data.addProperty("data", this.getData());
        return data;
    }

    // 从json读取数据
    @Override
    public void read(JsonObject data) {
        this.setData(data.get("data").getAsInt());
    }

    // 保存到nbt
    @Override
    public CompoundTag write(CompoundTag data) {
        data.putInt("data", this.getData());
        return data;
    }

    // 从nbt读取
    @Override
    public void read(CompoundTag data) {
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