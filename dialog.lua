local dlg = dialog() -- 创建一个 dialog 对象
-- 以下为此 dialog 对象配置
dlg:config('tianlong') -- 配置保存ID
dlg:timeout(10)
--dlg:add_label('天龙八部配置')
dlg:add_label('运行方式：当天首次运行，从第一个角色开始，按顺序运行')
dlg:add_label('运行方式：继续运行：跑完的角色，当天不再运行')
dlg:add_radio('运行方式', {'当天首次运行', '继续运行'}, '继续运行')
dlg:add_label('点击间隔时间-毫秒:手机配置较低的话，可以把值调大一些')
dlg:add_range('点击间隔时间', {500, 3000, 100}, 1000)
dlg:add_label('账号切换时间-秒:当前角色遇到运行异常，等待xx秒则切换下一个角色')
dlg:add_range('账号切换时间', {90, 300, 1}, 100)
dlg:add_input('大区', '100')
dlg:add_picker('稀世藏宝图获取方式', {'找回', '副本'}, '找回')
dlg:add_switch('调试模式', true)
dlg:add_switch('文本日志', true)
dlg:add_checkbox('游戏模式', {'任务', '稀世藏宝图', '福利'}, {'福利', '稀世藏宝图'})
dlg:add_switch('微信公众号暂停游戏', false)
dlg:add_radio('账号类型', {'微信', 'QQ', '游客'}, '微信')
local confirm, selects = dlg:show() -- 显示 dialog 对象到前台并获得其返回值
if (confirm) then
    print("你按下了提交")
else
    print("你没有按下提交")
end
print("点击间隔时间(毫秒)", selects["点击间隔时间"])
print("账号切换时间(秒)", selects["账号切换时间"])
print("大区", selects["大区"])
print("稀世藏宝图获取方式", selects["稀世藏宝图获取方式"])
if (selects['调试模式']) then
    print("你开启了调试模式")
else
	print("你关闭了调试模式")
end
if (selects['文本日志']) then
    print("你开启了文本日志")
else
	print("你关闭了文本日志")
end
print("游戏模式")
for _,gamename in ipairs(selects['游戏模式']) do
    print(gamename)
end
print("账号类型:"..selects["账号类型"])
sys.alert(print.out(),5)