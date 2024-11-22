# 这是什么
* 一个为开发者们添加了对话框系统的mod，并且可以由开发者们自己注册自己需要的对话框选项，可以使用zs来调用。

# 我该如何下载
[github](https://github.com/SmallJiu/Dialog/releases) [mcmod](https://www.mcmod.cn/download/8986.html)

# 我该如何使用
* Java
    
        cat.jiu.dialog.utils.DialogBuilder.builder(
            "dialog", "test_dialog", // 对话框ID
            "This is test dialog." // 对话框标题
        )
        // 一个按钮选项。参数：按钮的文本，点击后关闭对话框，文本的参数
        .addOption(cat.jiu.dialog.element.option.OptionButton.create("这是一个按钮选项"), true, "这是文本的参数")
        
        // 一个文本输入选项。参数：文本框提示，点击后关闭对话框，文本框提示...
        .addOption(cat.jiu.dialog.element.option.OptionTextField.create("文本框提示", true, "提示1", "提示2", "提示3"))
        
        // 一个多标题选项。参数：点击后关闭对话框，显示全部标题后是否返回上一个对话框，一堆标题
        .addOption(cat.jiu.dialog.element.option.OptionMultiTitle.create(true, false, "标题1", "标题2", "标题3"))
        
        // 一个多选项。参数：点击后关闭对话框，行数(最少1行,最多4行)，默认选择，一堆选项
        .addOption(cat.jiu.dialog.element.option.OptionCheckbox.create(true, 1, new int[]{0}, "选项1", "选项2", "选项3", "选项"))
        // 一个单选项。参数：点击后关闭对话框，行数(最少1行,最多4行)，默认选择，一堆选项
        .addOption(cat.jiu.dialog.element.option.OptionRadioButton.create(true, 2, 0, "选项1", "选项2", "选项3"))
        
        // 一个物品多选项。参数：点击后关闭对话框，行数(最少1行,最多4行)，默认选择，一堆物品
        .addOption(cat.jiu.dialog.element.option.OptionItemCheckbox.create(true, 1, new int[]{0, 2}, stack1, stack2, stack3))
        // 一个物品单选项。参数：点击后关闭对话框，行数(最少1行,最多4行)，默认选择，一堆物品
        .addOption(cat.jiu.dialog.element.option.OptionItemRadioButton.create(true, 2, 0, stack1, stack2, stack3))

        // 一个计时物品多选项。参数：计时器，计时结束自动确认，普通的物品多选项(OptionItemCheckbox)
        .addOption(cat.jiu.dialog.element.option.timer.OptionTimerItemCheckbox.create(new MillisTimer(30, 0), true, option))
        // 一个计时物品单选项。参数：计时器，计时结束自动确认，普通的物品单选项(OptionItemRadioButton)
        .addOption(cat.jiu.dialog.element.option.timer.OptionTimerItemRadioButton.create(new MillisTimer(30, 0), true, option)))
        
        // 一个计时多选项。参数：计时器，计时结束自动确认，普通的多选项(OptionCheckbox)
        .addOption(cat.jiu.dialog.element.option.timer.OptionTimerCheckbox.create(new MillisTimer(30, 0), true, option)))
        // 一个计时单选项。参数：计时器，计时结束自动确认，普通的单选项(OptionRadioButton)
        .addOption(cat.jiu.dialog.element.option.timer.OptionTimerRadioButton.create(new MillisTimer(30, 0), true, option)))

        .display(player); // 传入玩家以显示对话框

* ZenScript

        来个人教我做zs兼容（