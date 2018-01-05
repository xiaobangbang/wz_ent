
page_login_entrance={}
page_login_entrance.button_wx={}
page_login_entrance.button_wx.colors={
	{
		{  491,  547, 0xf0f5f6},
		{  475,  540, 0x81e70c},
		{  510,  538, 0x8cae65},
		{  676,  540, 0x8cad64},
	},
	{
		{  471,  539, 0x81e809},
		{  492,  549, 0xeaf1f5},
		{  564,  527, 0x90b163},
	}, 
	{
		{  471,  539, 0x81e809},
		{  492,  549, 0xeaf1f5},
		{  564,  527, 0x90b163},
	}}
page_login_entrance.button_wx.click_xy={564,  527}
page_login_entrance.button_wx.step="page_login_entrance.button_wx"
page_login_entrance.button_wx.logmsg="选择微信登陆"


page_login_entrance.button_besure_wx={}
page_login_entrance.button_besure_wx.color={
	{  908,  326, 0x04be02},
	{  932,  373, 0xffffff},
	{  937,  347, 0xffffff},
	{  936,  310, 0xffffff},
	{  925,  302, 0x04be02},
}
page_login_entrance.button_besure_wx.step="page_login_entrance.button_besure_wx"
page_login_entrance.button_besure_wx.logmsg="微信授权-确认登陆"

page_login_entrance.enter_game={}
page_login_entrance.enter_game.colors={ {
		{  509,  538, 0xdead64},
		{  535,  542, 0xf1f5de},
		{  565,  539, 0xd9a762},
		{  609,  538, 0xf7f7f3},
	},
	{
		{  504,  531, 0xdeab66},
		{  546,  537, 0xdcab65},
		{  576,  535, 0xfdfbf7},
		{  603,  535, 0xfaf9f4},
	}}
page_login_entrance.enter_game.logmsg="进入游戏"


page_login_entrance.create_player={}
page_login_entrance.create_player.colors={{
		{  947,  582, 0xdead64},
		{  946,  603, 0xdea05b},
		{  994,  582, 0xf7f7ef},
		{ 1021,  588, 0xefedcc},
	},
	{
		{  948,  585, 0xdca963},
		{  948,  593, 0xde9f5b},
		{  969,  584, 0xfcfaf0},
		{  993,  586, 0xf5f2e3},
		{ 1021,  587, 0xf4edd2},
	}}
page_login_entrance.create_player.step="page_login_entrance.create_player"
page_login_entrance.create_player.logmsg="创建角色,默认天龙-男"
page_login_entrance.create_player.foo= function ()  
	ltap(1079,  512)
	mmsleep(500)
	ltap(1021,  588)
	nLog("点击签筒，重新获取名字")
end

page_login_entrance.player_name_exist={}
page_login_entrance.player_name_exist.color={
	{  534,  413, 0xedc670},
	{  535,  427, 0xe1a14a},
	{  559,  421, 0xfcf5d1},
	{  579,  419, 0xfef7d4},
}
page_login_entrance.player_name_exist.following_function=true
page_login_entrance.player_name_exist.logmsg="角色名称重复"

page_login_entrance.player_enter_game={}
page_login_entrance.player_enter_game.colors={{
		{  945,  582, 0xdead63},
		{  943,  597, 0xdea05b},
		{  967,  587, 0xefead0},
		{ 1000,  581, 0xdbaa62},
	},
	{
		{  966,  587, 0xf6eed7},
		{  999,  582, 0xdbab65},
		{ 1012,  581, 0xfdfbf7},
		{ 1036,  580, 0xedece4},
		{ 1064,  590, 0xdea15c},
	}}
page_login_entrance.player_enter_game.logmsg="选定角色后点击进入游戏"
page_login_entrance.player_enter_game.end_color=true
page_login_entrance.player_enter_game.foo= function()	
	nLog("foo:选定角色后点击进入游戏")
end

page_login_entrance.player_direct_game={}
page_login_entrance.player_direct_game.color={
	{  474,  303, 0x391f08},
	{  505,  305, 0x381e07},
	{  519,  308, 0x381e07},
	{  446,  423, 0xfef7d3},
}
page_login_entrance.player_direct_game.step="page_login_entrance.player_direct_game"
page_login_entrance.player_direct_game.logmsg="当前角色已在线，是否直接进入游戏，点击取消"


List ={}
function List.new()
	return {first=0,last = -1 }
end

function List.pushfirst(list,value)
	local first = list.first -1
	list.first = first
	list[first] = value
end

function List.pushlast(list,value)
	local last = list.last +1
	list.last= last
	list[last] = value
end

function List.popfirst(list)
	local first = list.first
	if first > list.last then error("list is empty") end
	local value= list[first]
	list[first] = nil
	list.first= first +1
	return value
end

function List.getfirst(list)
	local first = list.first
	if first > list.last then error("list is empty") end
	local value= list[first]
	--list[first] = nil
	--list.first= first +1
	return value
end

function List.poplast(list)
	local last = list.last
	if list.first > last then error("list is empty") end
	local value = list[last]
	list[last]= nil
	list.last = last -1
	return value
end

function  getListSize(list1)	
	return list1.last + 1
end	



function List.clearList(list,v)
	local last = list.last
	if list.first > last then error("list is empty") end
	
	for k1,v1 in pairs (list1) do	
		if k1 ~= 'first' and k1 ~= 'last' then
			
		end
	end
	
	
	local value = list[last]
	list[last]= nil
	list.last = last -1
	return value
end


list_login= List.new()
List.pushlast(list_login,page_login_entrance.button_wx)
List.pushlast(list_login,page_login_entrance.button_besure_wx)
List.pushlast(list_login,page_login_entrance.enter_game)
List.pushlast(list_login,page_login_entrance.create_player)
List.pushlast(list_login,page_login_entrance.player_enter_game)


function task_by_loop2(list1)
	local ret = nil
	for k,v in pairs (list1) do	
		if k ~= 'first' and k ~= 'last' then
			local colors
			if v.color ~= nil then
				colors = {v.color}
			else
				colors = v.colors
			end
			for k1,v1 in pairs(colors )	do 
				if multi_col(v1) then
					ret = "in"					
					wwlog(v.logmsg)
					dosomething2(v1,v)
					mrsleep(SLEEP_TIME)
					if v.following_function then
						ret = "following_function"						
					end	
					if v.end_color then
						ret = "end_color"						
					end	
					break
				end				
			end	
			if ret == "end_color" then
				break
			end
		end		
	end
	return ret
end


local a1 = 0 - debug.getinfo(1).currentline
dialog(a1)