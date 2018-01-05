--子协程会在协程停止后,自动停止
local thread = require('thread')
local thread_id = thread.create(function()
		
    --创建子协程
    local sub_thread_id_1 = thread.createSubThread(function()
			for i = 1,10 do
				mSleep(3000)
				--因为sub thread 1比parent thread运行时间短，所以以下代码会被执行
				dialog("sub thread 1 over",3)
			end
    end)
    local sub_thread_id_2 = thread.createSubThread(function()
			for i =1, 10 do
        
				mSleep(1000)
				dialog("sub thread 2 over",1)
			end
			
        --因为sub thread 2比parent thread运行时间长，所以以下代码实际执行不到
        
    end)
for i = 1 ,10 do
    mSleep(1000)
    dialog("parent thread over",3)
	end
	return 200
end)

local ok,ret = thread.wait(thread_id)
if ok then
    --正常结束，ret是协程函数的返回值,这里ret=100
    dialog("wait ok,ret is "..ret,8)
else
	dialog("wait not ok.....,ret is "..ret,8)
    --这里不会被执行
    local sz = require('sz')
    local cjson = sz.json
    dialog("wait thread fail:"..cjson.encode(ret),6)
end
--thread.waitAllThreadExit()--等待所有协程结束，只能用于主线程

dialog("asdsfdsd  end..........", 2)