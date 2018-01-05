local n1 = app.used_memory("com.tencent.cyoutstl")

if app.is_running("com.tencent.cyoutstl") then
    -- QQ 正在运行d
	nLog(n1)
	--dialog("runsdsdfsfsdf1111121")
else 
	print(n1)
	sys.alert(print.out(),5)
end