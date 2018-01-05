--require("TSLib")
local BB = require('tools')
--BB.print_r({122323,23234})

local cc = require("VAR_SERIALIZE")

local xx = cc.THIRD_CHARACTOR



local co = require("Colors")

local str1 =BB.table_to_str(co.func_list_xishi_map())
--print(str1)

toast(str1,3)
local common = require("COMMON_TOOLS")

--local ENV= require("TAB_ENV")

mSleep(1000)
toast(xx)
mSleep(1000)
toast( common.trim('    100   '))


