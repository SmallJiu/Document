* ZenScript类：dialog.Draw
* Java类：[cat.jiu.dialog.element.OptionDrawUnit]()
* 作用：对话框选项的绘制单元，由数据单元提供所需数据。类内的方法由[cat.jiu.dialog.gui.GuiDialog]()调用。
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
