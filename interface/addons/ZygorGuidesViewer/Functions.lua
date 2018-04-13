local ZGV=_G['ZygorGuidesViewer']
if not ZGV then return end

local tinsert,twipe=tinsert,table.wipe

function TableKeys (tab)
	local t={},k,v
	for k,v in pairs(tab) do table.insert(t,k) end
	return t
end

table.zygor_join = function (tab1,tab2)
	for k,v in pairs(tab2) do tab1[k]=v end
end

function ZGV.CloneTable (subj,into)
	if not into then into={} end
	for k,v in pairs(subj) do into[k]=v end
	return into
end
function ZGV.MergeTable (subj,into)
	if not into then into={} end
	for k,v in ipairs(subj) do tinsert(into,v) end
	return into
end

function MOVE(frame)
	if not frame then
		frame = GetMouseFocus()
		print("Moving: "..(frame:GetName() or tostring(frame)))
	end
	if frame.origonupdate then
		frame:StopMovingOrSizing()
		frame:SetScript("OnUpdate",frame.origonupdate)
		frame.origonupdate = nil
	else
		frame:SetMovable(1)
		frame:StartMoving()
		frame.origonupdate = frame:GetScript("OnUpdate")
		frame:SetScript("OnUpdate",function(self,...) if self.origonupdate then self.origonupdate(self,...) end print(self:GetPoint(1)) end)
	end
end

function RotatePair(x,y,ox,oy,a,asp)
	y=y/asp
	oy=oy/asp
	return ox + (x-ox)*math.cos(a) - (y-oy)*math.sin(a),
	      (oy + (y-oy)*math.cos(a) + (x-ox)*math.sin(a))*asp
end

function RotateTex(self, angle)
	local s,c
	s = sin(angle-225)
	c = cos(angle-225)
	self:SetTexCoord(0.5-s*0.7, 0.5+c*0.7,
			 0.5+c*0.7, 0.5+s*0.7,
			 0.5-c*0.7, 0.5-s*0.7,
			 0.5+s*0.7, 0.5-c*0.7)
end

function AnimRotOnUpdate(self,step)
	if not self:GetParent():GetParent().angle then self:GetParent():GetParent().angle=0 end
	self.step=step
	RotateTex(self:GetParent():GetParent(),self:GetParent():GetParent().angle+self:GetSmoothProgress()*self.step)
end

function AnimRotOnUpdate2(self)
	local tex = self.tex
	if not tex.angle then tex.angle=0 end
	tex.curangle = tex.angle+self:GetSmoothProgress()*(tex.targetangle-tex.angle)
	RotateTex(tex,tex.curangle)
end

local function CreateTextureWithCoords(parent,texture,l,r,u,d,blend,flip)
	local tex = parent:CreateTexture(nil)
	tex:SetTexture(texture)
	if not flip then
		tex:SetTexCoord(l,r,u,d)
	else
		tex:SetTexCoord(l,r,d,u)
	end
	tex:SetAllPoints()
	if blend then tex:SetBlendMode(blend) end
	return tex
end

-- Ported from Skins.lua
-- set textures in a button that has its normal/pushed/hilite textures named ntx,ptx,htx  - this was more useful some time ago...
function SetNPHtx(but,n,p,h)
	assert(but,"How am I to set textures in a nil!?")
	but.ntx:SetTexture(n)
	but.ptx:SetTexture(p or n)
	but.htx:SetTexture(h or n)
end

function BetterTexCoord(obj,x,w,y,h)
	obj:SetTexCoord((x-1)/w,x/w,(y-1)/h,y/h)
end

local function CreateTexWithCoordsNum(obj,tx,x,w,y,h,flip)
	--return CreateTextureWithCoords(obj,tx,(x-1)/w,x/w-(w/h)*0.0004,(y-1)/h,y/h-(w/h)*0.0004,blend,flip) ~~ Why is there -(w/h)*0.0004? It just clips icons strangely. ~~ Jeremiah  
	return CreateTextureWithCoords(obj,tx,(x-1)/w,x/w,(y-1)/h,y/h,blend,flip)
end

function ZGV.AssignButtonTexture(obj,tx,num,total,flip)
	ZGV.ChainCall(obj):SetNormalTexture(CreateTexWithCoordsNum(obj,tx,num,total,1,4,flip))
		:SetPushedTexture(CreateTexWithCoordsNum(obj,tx,num,total,2,4,flip))
		:SetHighlightTexture(CreateTexWithCoordsNum(obj,tx,num,total,3,4,flip))
		:SetDisabledTexture(CreateTexWithCoordsNum(obj,tx,num,total,4,4,flip))
end

-- Blizzard UIDropDownMenu has a nasty bug: it sets all buttons' initial FrameLevel to 2,
-- which causes problems when more buttons are created.

--[[
function FixDropDownMenuFrameLevelBug()
	for g=1,4 do
		local list = _G['DropDownList'..g]
		if list and not list.hookedfix then
			list:HookScript("OnShow",FixDropDownMenuFrameLevelBug_List_OnShow)
			list.hookedfix=true
		end
	end
end

function FixDropDownMenuFrameLevelBug_List_OnShow(self)
	local lev = self:GetFrameLevel()
	local id = self:GetID()
	for i=1,50 do
		local button = _G['DropDownList'..id..'Button'..i]
		if button then
			print('DropDownList'..id..'Button'..i)
			button:SetFrameLevel(lev+2)
		end
	end
end
--]]

function BigFixDropDownMenuFrameLevelBug()
	for g=1,4 do
		local list = _G['DropDownList'..g]
		if list then
			local lev = list:GetFrameLevel()
			for i=1,50 do
				local button = _G['DropDownList'..g..'Button'..i]
				if button and not button.hookedfix then
					button:SetFrameLevel(lev+2)
					button.hookedfix=true
				end
			end
		end
	end
end
hooksecurefunc("ToggleDropDownMenu",BigFixDropDownMenuFrameLevelBug) -- should this become slow, make it fire once and hope for the best...


-- This, is, evil. But allows for one-liner creation of UI widgets.
-- Usage:  local obj = CHAIN(CreateFrame(...)) :SetPoint(...) :SetSize(...) .__END
function ZGV.ChainCall(obj)  local T={}  setmetatable(T,{__index=function(self,fun)  if fun=="__END" then return obj end  return function(self,...) assert(obj[fun],fun.." missing in object") obj[fun](obj,...) return self end end})  return T  end

-- Theoretically shouldn't EVER do this. But what the heck.
local function ShowIf(self,b) if b then self:Show() else self:Hide() end end
local function EnableIf(self,b) if b then self:Enable() else self:Disable() end end

local framemeta = getmetatable(MinimapCluster) -- frame
framemeta.__index.ShowIf = ShowIf
framemeta.__index.EnableIf = EnableIf

local framemeta = getmetatable(ChannelListScrollFrame) -- scrollframe
framemeta.__index.ShowIf = ShowIf
framemeta.__index.EnableIf = EnableIf

local framemeta = getmetatable(ConsolidatedBuffs) -- button
framemeta.__index.ShowIf = ShowIf
framemeta.__index.EnableIf = EnableIf


function ZGV.GetTargetId()
	return tonumber((UnitGUID("target") or ""):match("Creature%-%d+%-%d+%-%d+%-%d+%-(%d+)") or 0)
end

function ZGV:GetPlayerPreciseLevel()
	if self.db.char.fakelevel and self.db.char.fakelevel>0 then
		return self.db.char.fakelevel
	else
		return UnitLevel("player") + UnitXP("player")/max(UnitXPMax("player"),1)
	end
end

function ZGV:IsPlayerInCombat()
	return self.db.profile.fakecombat or UnitAffectingCombat("player")
end

function ZGV.FormatLevel(l)
	local int = math.floor(l)
	local frac = l-int
	frac=math.round(frac*20)
	if frac>0 then
		return ("%d |cffbbbbbb(+%d bars)|r"):format(int,frac)
		--return ("%d |cffbbbbbb+%d|r|T"..ZGV.DIR.."\\Skins\\levelbar:8:16|t"):format(int,frac)
	else
		return tostring(int)
	end
end

-- I probably shouldn't be doing this. But being naughty feels so gooood.
function string:nformat(...)
	local args={...}
	local t = {}
	local s = self:gsub("{(%d-)}",function(cap) table.insert(t,args[tonumber(cap)]) return "" end)
	return s:format(unpack(t))
end

-- MORE EVIL.
function GameTooltip:ZGV_ShowManyLines(lines)
	if type(lines)=="string" then
		self:SetText(lines)
	elseif type(lines)=="table" then
		self:SetText(lines[1])
		for i=2,#lines do self:AddLine(lines[i]) end
	end
	self:Show()
end

-- HAR HAR we can into hexaccurate colors não
-- at least we're as precise as WoW lua allows us to
function HTMLColor(code)
	assert(code:match("#[0-9A-Fa-f]+$") and (#code==7 or #code==9),"Bogus code given: \""..code.."\")")
	local r,g,b,a=tonumber("0x"..code:sub(2,3))/0xff,
				  tonumber("0x"..code:sub(4,5))/0xff,
				  tonumber("0x"..code:sub(6,7))/0xff,
				  #code==9 and tonumber("0x"..code:sub(8,9))/0xff
	return r,g,b,a
end

function dig_in(data,...)
	for i=1,select("#",...) do
		data = data[select(i,...)]
		if not data then return end
	end
	return data
end


local GOLD_AMOUNT_TEXTURE = GOLD_AMOUNT_TEXTURE:gsub("^%%d","|c%%s%%s|r")
local SILVER_AMOUNT_TEXTURE = SILVER_AMOUNT_TEXTURE:gsub("^%%d","|c%%s%%s|r")
local COPPER_AMOUNT_TEXTURE = COPPER_AMOUNT_TEXTURE:gsub("^%%d","|c%%s%%s|r")
local GOLD_AMOUNT_CHAR = "|c%s%sg|r"
local SILVER_AMOUNT_CHAR = "|c%s%ss|r"
local COPPER_AMOUNT_CHAR = "|c%s%sc|r"
local GOLD_AMOUNT_DOT = "|c%s%s|r."
local SILVER_AMOUNT_DOT = "|c%s%s|r."
local COPPER_AMOUNT_DOT = "|c%s%s|r"
local WHITE_COLOR = "ffffffff"
local GOLD_COLOR = "ffffee00"
local SILVER_COLOR = "fff8f8ff"
local COPPER_COLOR = "ffffaa99"
local NO_COLOR = "ff888888"
local SEPARATOR_2SPACE = "  "
local SEPARATOR_1SPACE = " "
local SEPARATOR_SPACE = " "
local SEPARATOR_DOT = "|cff888888.|r"

function ZGV:GetMoneyStringTest(style)
	print(self.GetMoneyString(000001,style))
	print(self.GetMoneyString(000100,style))
	print(self.GetMoneyString(001200,style))
	print(self.GetMoneyString(001201,style))
	print(self.GetMoneyString(001234,style))
	print(self.GetMoneyString(010000,style))
	print(self.GetMoneyString(010001,style))
	print(self.GetMoneyString(010101,style))
	print(self.GetMoneyString(210101,style))
end

function ZGV.GetMoneyString(money,style,whiteonly)
	if money<0 then money=0 end
	local goldString, silverString, copperString;
	local gold = floor(money / (COPPER_PER_SILVER * SILVER_PER_GOLD));
	local silver = floor((money - (gold * COPPER_PER_SILVER * SILVER_PER_GOLD)) / COPPER_PER_SILVER);
	local copper = mod(money, COPPER_PER_SILVER);
	
	--[[
	if ( ENABLE_COLORBLIND_MODE == "1" ) then
		goldString = gold..GOLD_AMOUNT_SYMBOL;
		silverString = silver..SILVER_AMOUNT_SYMBOL;
		copperString = copper..COPPER_AMOUNT_SYMBOL;
	else
		goldString = format(GOLD_AMOUNT_TEXTURE, gold, 0, 0);
		silverString = format(SILVER_AMOUNT_TEXTURE, silver, 0, 0);
		copperString = format(COPPER_AMOUNT_TEXTURE, copper, 0, 0);
	end
	--]]

	style=style or 0

	local moneyString = "";
	
	if style==0 then  -- textured

		if ( gold > 0 ) then
			moneyString = format(GOLD_AMOUNT_TEXTURE, whiteonly and WHITE_COLOR or GOLD_COLOR, gold, 0, 0);
		end

		if ( gold>0 and silver>0 ) then
			moneyString = moneyString.."  "..format(SILVER_AMOUNT_TEXTURE, whiteonly and WHITE_COLOR or SILVER_COLOR, ("%02d"):format(silver), 0, 0)
		elseif ( gold>0 and silver==0 and copper==0 ) then
			moneyString = moneyString.."  "..format(SILVER_AMOUNT_TEXTURE, whiteonly and WHITE_COLOR or NO_COLOR, ("%02d"):format(00), 0, 0)
		elseif ( gold>0 ) then
			moneyString = moneyString.."  " .. format(SILVER_AMOUNT_TEXTURE, whiteonly and WHITE_COLOR or SILVER_COLOR, ("%02d"):format(silver), 0, 0)
		else
			moneyString = format(SILVER_AMOUNT_TEXTURE, whiteonly and WHITE_COLOR or SILVER_COLOR, ("%d"):format(silver), 0, 0)
		end

		if ( gold+silver>0 and copper>0 ) then
			moneyString = moneyString.."  "..format(COPPER_AMOUNT_TEXTURE, whiteonly and WHITE_COLOR or COPPER_COLOR, ("%02d"):format(copper), 0, 0)
		elseif ( gold+silver>0 and copper==0) then
			moneyString = moneyString.."  "..format(COPPER_AMOUNT_TEXTURE, whiteonly and WHITE_COLOR or NO_COLOR, ("%02d"):format(00), 0, 0)
		elseif ( gold+silver==0 and copper>0) then
			moneyString = format(COPPER_AMOUNT_TEXTURE, whiteonly and WHITE_COLOR or COPPER_COLOR, ("%d"):format(copper), 0, 0)
		elseif ( money==0) then
			moneyString = format(COPPER_AMOUNT_TEXTURE, whiteonly and WHITE_COLOR or NO_COLOR, 0, 0, 0)
		end
	
	elseif style==3 then  -- 11g 22s 00c

		if ( gold > 0 ) then
			moneyString = format(GOLD_AMOUNT_CHAR, whiteonly and WHITE_COLOR or GOLD_COLOR, gold, 0, 0)
		end

		if ( gold>0 and silver>0 ) then
			moneyString = moneyString.." "..format(SILVER_AMOUNT_CHAR, whiteonly and WHITE_COLOR or SILVER_COLOR, ("%02d"):format(silver), 0, 0)
		elseif ( gold>0 and silver==0 and copper==0) then
			moneyString = moneyString.." "..format(SILVER_AMOUNT_CHAR, whiteonly and WHITE_COLOR or NO_COLOR, ("%02d"):format(00), 0, 0)
		elseif ( gold>0 ) then
			moneyString = moneyString.." " .. format(SILVER_AMOUNT_CHAR, whiteonly and WHITE_COLOR or SILVER_COLOR, ("%02d"):format(silver), 0, 0)
		else
			moneyString = format(SILVER_AMOUNT_CHAR, whiteonly and WHITE_COLOR or SILVER_COLOR, ("%d"):format(silver), 0, 0)
		end

		if ( gold+silver>0 and copper>0 ) then
			moneyString = moneyString.." "..format(COPPER_AMOUNT_CHAR, whiteonly and WHITE_COLOR or COPPER_COLOR, ("%02d"):format(copper), 0, 0)
		elseif ( gold+silver>0 and copper==0) then
			moneyString = moneyString.." "..format(COPPER_AMOUNT_CHAR,  whiteonly and WHITE_COLOR or NO_COLOR, ("%02d"):format(00), 0, 0)
		elseif ( gold+silver==0 and copper>0) then
			moneyString = format(COPPER_AMOUNT_CHAR, whiteonly and WHITE_COLOR or COPPER_COLOR, ("%d"):format(copper), 0, 0)
		elseif ( money==0) then
			moneyString = format(COPPER_AMOUNT_CHAR,  whiteonly and WHITE_COLOR or NO_COLOR, 0, 0, 0)
		end

	elseif style==4 then  -- 11.22.33 colored

		if ( gold > 0 ) then
			moneyString = format(GOLD_AMOUNT_DOT, whiteonly and WHITE_COLOR or GOLD_COLOR, gold, 0, 0)
		end

		if ( gold>0 and silver>0 ) then
			moneyString = moneyString.." "..format(SILVER_AMOUNT_DOT, whiteonly and WHITE_COLOR or SILVER_COLOR, ("%02d"):format(silver), 0, 0)
		elseif ( gold>0 and silver==0 and copper==0) then
			moneyString = moneyString.." "..format(SILVER_AMOUNT_DOT, whiteonly and WHITE_COLOR or NO_COLOR, ("%02d"):format(00), 0, 0)
		elseif ( gold>0 ) then
			moneyString = moneyString.." " .. format(SILVER_AMOUNT_DOT, whiteonly and WHITE_COLOR or SILVER_COLOR, ("%02d"):format(silver), 0, 0)
		else
			moneyString = format(SILVER_AMOUNT_DOT, whiteonly and WHITE_COLOR or SILVER_COLOR, ("%d"):format(silver), 0, 0)
		end

		if ( gold+silver>0 and copper>0 ) then
			moneyString = moneyString.." "..format(COPPER_AMOUNT_DOT, whiteonly and WHITE_COLOR or COPPER_COLOR, ("%02d"):format(copper), 0, 0)
		elseif ( gold+silver>0 and copper==0) then
			moneyString = moneyString.." "..format(COPPER_AMOUNT_DOT,  whiteonly and WHITE_COLOR or NO_COLOR, ("%02d"):format(00), 0, 0)
		elseif ( gold+silver==0 and copper>0) then
			moneyString = format(COPPER_AMOUNT_DOT, whiteonly and WHITE_COLOR or COPPER_COLOR, ("%d"):format(copper), 0, 0)
		elseif ( money==0) then
			moneyString = format(COPPER_AMOUNT_DOT,  whiteonly and WHITE_COLOR or NO_COLOR, 0, 0, 0)
		end

	end
	
	return moneyString;
end


function ZGV.TableProduct(tabs)
	local ret = {}

	local pos = {}
	
	-- init pos
	for k,tab in pairs(tabs) do pos[k]=next(tab) end

	while 1 do
		-- push current state of all tabs into ret
		local newret={}
		for k,tab in pairs(tabs) do tinsert(newret,tab[pos[k]]) end
		tinsert(ret,newret)

		local broken=false
		for k,tab in pairs(tabs) do
			local newnext = next(tab,pos[k])
			if newnext then
				-- valid? okay, save and get out.
				pos[k]=newnext
				broken=true
				break
			else
				-- invalid? reset and go forward.
				pos[k]=next(tab)
			end
		end
		if not broken then
			-- all invalid! FINISH UP
			return ret
		end
	end

end


local function __genOrderedIndex( t )
    local orderedIndex = {}
    for key in pairs(t) do
        table.insert( orderedIndex, key )
    end
    table.sort( orderedIndex )
    return orderedIndex
end

local function orderedNext(t, state)
    -- Equivalent of the next function, but returns the keys in the alphabetic
    -- order. We use a temporary ordered key table that is stored in the
    -- table being iterated.

    --print("orderedNext: state = "..tostring(state) )
    if state == nil then
			t.__orderedIndex = nil -- precleanup for safety
        
			-- the first time, generate the index
			t.__orderedIndex = __genOrderedIndex( t )
			key = t.__orderedIndex[1]
			return key, t[key]
		end
		-- fetch the next value
		key = nil
		for i = 1,table.getn(t.__orderedIndex) do
			if t.__orderedIndex[i] == state then
				key = t.__orderedIndex[i+1]
			end
		end

		if key then
			return key, t[key]
		end

    -- no more value to return, cleanup
    t.__orderedIndex = nil
    return
end

function ZGV.OrderedPairs(t)
    -- Equivalent of the pairs() function on tables. Allows to iterate
    -- in order
    return orderedNext, t, nil
end



function ZGV.Garrison_HasFollower(id)
	for i,foll in ipairs(C_Garrison.GetFollowers()) do
		if foll.followerID==id
		or tonumber(foll.garrFollowerID or 0,16)==id then
			return foll.isCollected
		end
	end
	return false
end

function ZGV.Garrison_HasBuilding(id_or_name,level)
	for i,building in ipairs(C_Garrison:GetBuildings()) do
		if building.buildingID == id_or_name then return true end
		local _,tempname,_,_,_,rank = C_Garrison.GetBuildingInfo(building.buildingID)
		if tempname == id_or_name then 
			if level then
				return rank == level
			else
				return true
			end
		end
	end
	return false
end



-- Sometimes you just want to run something when a certain event happens, or you
-- have to wait for the next OnUpdate for something to update. It generally
-- takes a bit of setup: Creating a frame, registering the event. Why not be
-- able to just say "delay running this function a bit?"
-- Well, now you can =). ~~Jeremiah

-- When a function is finished, a DELAYED_RUN_RETURN event is sent with
-- the event name and anything returned by the function.

-- Also supports checking any function, effectively treating it as an event.

ZGV.EventDelayFrame = CreateFrame("Frame")
ZGV.EventDelayFrame.delayedRunTable = {}
local delayedRunTable = ZGV.EventDelayFrame.delayedRunTable

--/run ZGV:DelayedRun("AUCTION_ITEM_LIST_UPDATE", function() print("DUPA") end)

-- {time, function}
ZGV.EventDelayFrame.timedDelayedRunTable = {}
local timedDelayedRunTable = ZGV.EventDelayFrame.timedDelayedRunTable
--local registeredEventsTable = {}

-- Note that DelayedRun and the function you call is run with the : operator, so you always have access to self.
-- Also note that any number of arguments can be sent to your function.

-- DelayedRun("MSG CUSTOM_MESSAGE",func) to hook custom messages. NOTE: they're one-shot only per whole message!

-- event may be an event name, OR a function ready to call

function ZGV:DelayedRun(event, aFunction, arg)
	if not aFunction then error ("No function") end
	if not event then error ("No event") end

	if type(event)=="string" then
		local msg = event:match("MSG (.+)")
		if msg then
			event=msg
			ZGV:RegisterMessage(event,function(...) if arg then aFunction(arg,...) else aFunction(...) end  ZGV:UnregisterMessage(event) end)
			return -- yes that's it, no need to use the delayedRunTable at all
		elseif event~="OnUpdate" then
			ZGV.EventDelayFrame:RegisterEvent(event)
			tinsert(delayedRunTable, {func=aFunction, event=event, arg=arg})
		end
	elseif type(event)=="function" then
		-- don't register anything, just keep calling it.
			tinsert(delayedRunTable, {func=aFunction, event=event --[[ which is a function --]], arg=arg})
	end
end

-- TODO: Can actually use AceTimer for this.
-- Time is in seconds.
function ZGV:TimedDelayedRun(waitTime, aFunction, arg)
	tinsert(timedDelayedRunTable, {func=aFunction, time=time()+waitTime, arg=arg})
end

local function OnUpdateHandler()
 	-- Handles OnUpdate and function-check calls.
	local index=1
	while index<=#delayedRunTable do
		local aTable=delayedRunTable[index]
		if not aTable then break end
		if (aTable.event==nil) or (aTable.event=="OnUpdate") then
			aTable.func(aTable.arg)
			tremove(delayedRunTable,index)
			index=index-1
		elseif type(aTable.event)=="function" then
			local testResult = aTable.event()
			if testResult then
				aTable.func(aTable.arg)
				tremove(delayedRunTable,index)
				index=index-1
			end
		end
		index=index+1
 	end

	local index=1
	while index<=#timedDelayedRunTable do
		local aTable=timedDelayedRunTable[index]
		if not aTable then break end
		if aTable.time < time() then
			aTable.func(aTable.arg)
			tremove(timedDelayedRunTable,index)
			index=index-1
		end
		index=index+1
	end
	
end

local function OnEventHandler(self, event, ...)
	local index=1
	while index<=#delayedRunTable do
		local aTable=delayedRunTable[index]
		if not aTable then break end
		if aTable.event==event then
			aTable.func(event,aTable.param,...)
			tremove(delayedRunTable,index)
			index=index-1
		end
		index=index+1
 	end
end

ZGV.EventDelayFrame:SetScript("OnUpdate",OnUpdateHandler)
ZGV.EventDelayFrame:SetScript("OnEvent",OnEventHandler)

-- Sometimes GetItemInfo does not return the information you want: In its current
-- form, it doesn't maintain the cache between sessions.

-- This can be problematic with auctions: We want the items' info, but it's not
-- always there: If you sell everything you have of a certain item, then exit
-- and reload the game, GetItemInfo will return null.

-- So this caches items between sessions.

-- Expire old items, to prevent cache from becoming unwieldy and having outdated
-- items in it.
function ZGV.cachedItemsExpire()
	for itemid, data in pairs(ZGV.db.global.itemCache) do
		-- No timestamp? Automatically expire it.
		if not data.timestamp then
			ZGV.db.global.itemCache[itemid] = nil
		else -- Expire if older than a week.
			local currentTimestamp = time()
			if currentTimestamp - data.timestamp > 604800 then -- A week (7*24*60*60)
				ZGV.db.global.itemCache[itemid] = nil
			end
		end
	end
end

function ZGV:DebugMap()
	local s=""

	local results

	local function konkat(tab,len)
		for i=1,len do tab[i]=tostring(tab[i]) end
		return table.concat(tab,", ")
	end

	local mapid = GetCurrentMapAreaID()
	
	s = s .. "GetCurrentMapAreaID() = "..tostring(mapid).."\n"

	s = s .. "GetMapInfo() = "..konkat({GetMapInfo()},4).."\n"

	s = s .. "GetNumDungeonMapLevels() = "..konkat({GetNumDungeonMapLevels()},2).."\n"
	s = s .. "GetCurrentMapDungeonLevel() = "..tostring(GetCurrentMapDungeonLevel()).."\n"
	
	s = s .. "DungeonUsesTerrainMap() = "..tostring(DungeonUsesTerrainMap()).."\n"
	s = s .. "GetCurrentMapContinent() = "..tostring(GetCurrentMapContinent()).."\n"
	s = s .. "GetCurrentMapZone() = "..konkat({GetCurrentMapZone()},5).."\n"
	
	ZGV:ShowDump(s,"DebugMap")
end

tinsert(ZGV.startups,{"Functions: itemcache setup",function(self)
	if not ZGV.db.global.itemCache then
		ZGV.db.global.itemCache = {}
	end
	ZGV.cachedItemsExpire()
end})

-- Note that it only accepts itemid
function ZGV.cachedGetItemInfo(itemid)
	if type(itemid) ~= "number" then 
		itemid = tonumber(itemid:match("item:(%d+)"))	
	end

	if type(itemid) ~= "number" then 
		error("cachedGetItemInfo only accepts the item's id or links") 
	end	

	-- For the most up to date info, always request it from GetItemInfo.
	local itemInfo = {GetItemInfo(itemid)}
	
	if itemInfo then
		-- Store item in cache, return the information.
		ZGV.db.global.itemCache[itemid] = itemInfo
		ZGV.db.global.itemCache[itemid].timestamp = time()
		return unpack(itemInfo)
	elseif ZGV.db.global.itemCache[itemid] then
		-- Didn't find the information, but it was in the cache.
		return unpack(ZGV.db.global.itemCache[itemid])
	else
		-- Failed to find anything about the item :(.
		return nil
	end
end


-- UIFrameFade* replacement. Use this to prevent UIFrameFadeIn/Out taint issues.
	-- Yes, this is pretty much a copy of Blizzard code from UIParent.lua.
	ZGV.UIFrameFade = {}

	-- Frame fading and flashing --

	local frameFadeManager = CreateFrame("FRAME");
	local FADEFRAMES = {}  -- THIS is the culprit. In Blizzard code, this is global and gets tainted.

	-- Generic fade function
	function ZGV.UIFrameFade.UIFrameFade(frame, fadeInfo)
		if (not frame) then
			return;
		end
		if ( not fadeInfo.mode ) then
			fadeInfo.mode = "IN";
		end
		local alpha;
		if ( fadeInfo.mode == "IN" ) then
			if ( not fadeInfo.startAlpha ) then
				fadeInfo.startAlpha = 0;
			end
			if ( not fadeInfo.endAlpha ) then
				fadeInfo.endAlpha = 1.0;
			end
			alpha = 0;
		elseif ( fadeInfo.mode == "OUT" ) then
			if ( not fadeInfo.startAlpha ) then
				fadeInfo.startAlpha = 1.0;
			end
			if ( not fadeInfo.endAlpha ) then
				fadeInfo.endAlpha = 0;
			end
			alpha = 1.0;
		end
		frame:SetAlpha(fadeInfo.startAlpha);

		frame.fadeInfo = fadeInfo;
		frame:Show();

		local index = 1;
		while FADEFRAMES[index] do
			-- If frame is already set to fade then return
			if ( FADEFRAMES[index] == frame ) then
				return;
			end
			index = index + 1;
		end
		tinsert(FADEFRAMES, frame);
		frameFadeManager:SetScript("OnUpdate", ZGV.UIFrameFade.UIFrameFade_OnUpdate);
	end

	-- Convenience function to do a simple fade in
	function ZGV.UIFrameFade.UIFrameFadeIn(frame, timeToFade, startAlpha, endAlpha)
		local fadeInfo = {};
		fadeInfo.mode = "IN";
		fadeInfo.timeToFade = timeToFade;
		fadeInfo.startAlpha = startAlpha;
		fadeInfo.endAlpha = endAlpha;
		ZGV.UIFrameFade.UIFrameFade(frame, fadeInfo);
	end

	-- Convenience function to do a simple fade out
	function ZGV.UIFrameFade.UIFrameFadeOut(frame, timeToFade, startAlpha, endAlpha)
		local fadeInfo = {};
		fadeInfo.mode = "OUT";
		fadeInfo.timeToFade = timeToFade;
		fadeInfo.startAlpha = startAlpha;
		fadeInfo.endAlpha = endAlpha;
		ZGV.UIFrameFade.UIFrameFade(frame, fadeInfo);
	end

	function ZGV.UIFrameFade.UIFrameFadeRemoveFrame(frame)
		tDeleteItem(FADEFRAMES, frame);
	end

	-- Function that actually performs the alpha change
	--[[
	Fading frame attribute listing
	============================================================
	frame.timeToFade  [Num]		Time it takes to fade the frame in or out
	frame.mode  ["IN", "OUT"]	Fade mode
	frame.finishedFunc [func()]	Function that is called when fading is finished
	frame.finishedArg1 [ANYTHING]	Argument to the finishedFunc
	frame.finishedArg2 [ANYTHING]	Argument to the finishedFunc
	frame.finishedArg3 [ANYTHING]	Argument to the finishedFunc
	frame.finishedArg4 [ANYTHING]	Argument to the finishedFunc
	frame.fadeHoldTime [Num]	Time to hold the faded state
	 ]]
	 
	function ZGV.UIFrameFade.UIFrameFade_OnUpdate(self, elapsed)
		local index = 1;
		local frame, fadeInfo;
		while FADEFRAMES[index] do
			frame = FADEFRAMES[index];
			fadeInfo = FADEFRAMES[index].fadeInfo;
			-- Reset the timer if there isn't one, this is just an internal counter
			if ( not fadeInfo.fadeTimer ) then
				fadeInfo.fadeTimer = 0;
			end
			fadeInfo.fadeTimer = fadeInfo.fadeTimer + elapsed;

			-- If the fadeTimer is less then the desired fade time then set the alpha otherwise hold the fade state, call the finished function, or just finish the fade 
			if ( fadeInfo.fadeTimer < fadeInfo.timeToFade ) then
				if ( fadeInfo.mode == "IN" ) then
					frame:SetAlpha((fadeInfo.fadeTimer / fadeInfo.timeToFade) * (fadeInfo.endAlpha - fadeInfo.startAlpha) + fadeInfo.startAlpha);
				elseif ( fadeInfo.mode == "OUT" ) then
					frame:SetAlpha(((fadeInfo.timeToFade - fadeInfo.fadeTimer) / fadeInfo.timeToFade) * (fadeInfo.startAlpha - fadeInfo.endAlpha)  + fadeInfo.endAlpha);
				end
			else
				frame:SetAlpha(fadeInfo.endAlpha);
				-- If there is a fadeHoldTime then wait until its passed to continue on
				if ( fadeInfo.fadeHoldTime and fadeInfo.fadeHoldTime > 0  ) then
					fadeInfo.fadeHoldTime = fadeInfo.fadeHoldTime - elapsed;
				else
					-- Complete the fade and call the finished function if there is one
					ZGV.UIFrameFade.UIFrameFadeRemoveFrame(frame);
					if ( fadeInfo.finishedFunc ) then
						fadeInfo.finishedFunc(fadeInfo.finishedArg1, fadeInfo.finishedArg2, fadeInfo.finishedArg3, fadeInfo.finishedArg4);
						fadeInfo.finishedFunc = nil;
					end
				end
			end
			
			index = index + 1;
		end
		
		if ( #FADEFRAMES == 0 ) then
			self:SetScript("OnUpdate", nil);
		end
	end

	function ZGV.UIFrameFade.UIFrameIsFading(frame)
		for index, value in pairs(FADEFRAMES) do
			if ( value == frame ) then
				return 1;
			end
		end
		return nil;
	end
--




ZGV.ItemLink = {}
local IL=ZGV.ItemLink
--setmetatable(IL,{__call=function(t,itemlink) t._val = itemlink  return t})

function IL.GetItemID(itemlink)
	if type(itemlink)=="number" then return itemlink end
	local numlink=tonumber(itemlink)
	if numlink then return numlink end
	return tonumber(tostring(itemlink):match("item:(%d+)"))
end

function IL.MatchID(itemlink1,itemlink2)
	if itemlink1==itemlink2 then return true end
	return IL.GetItemID(itemlink1)==IL.GetItemID(itemlink2)
end

local link_patt_zerofill = "item:%d:0:0:0:0:0:0:0:%d"
local tab={}
function IL.SetLevel(itemlink,level)
	if not level then level=floor(ZGV:GetPlayerPreciseLevel()) end
	if tonumber(itemlink) then return link_patt_zerofill:format(tonumber(itemlink),level) end  -- quick shunt
	if not itemlink:match("item:%d+") then return "BAD" end
	twipe(tab)
	for d in itemlink:gmatch("[%-%d]+") do tinsert(tab,tonumber(d)) end  -- split
	for i=2,8 do tab[i]=tab[i] or 0 end  -- zero fill
	tab[9]=level  -- replace level
	return "item:" .. table.concat(tab,":")
end
function IL.FixLink(itemlink)
	if tonumber(itemlink) then return link_patt_zerofill:format(tonumber(itemlink),0) end  -- itemid -> itemlink
	if itemlink:match("item[:%d%-]+") then return itemlink end  -- good itemlink, nothing to do
	-- emergency fixing? NAH.
	return nil
end

function IL.Match(itemlink1,itemlink2)
	if itemlink1==itemlink2 then return true end
	itemlink1=IL.SetLevel(itemlink1,0)
	itemlink2=IL.SetLevel(itemlink2,0)
	return itemlink1==itemlink2
end

-- TESTING:
function IL._test()
	local function test(a,b)
		assert(a==b,a.." should be "..b)
	end
	test(IL.GetItemID(9999),9999)
	test(IL.GetItemID("9999"),9999)
	test(IL.GetItemID("item:9999:0:0:0"),9999)
	assert(IL.MatchID(9999,9999))
	assert(not IL.MatchID(9999,7777))
	assert(IL.MatchID("item:9999:0:0:0:0:0:0:0:100:0:0:0",9999))
	assert(not IL.MatchID("item:9999",7777))
	assert(not IL.MatchID("item:9999:0:0:0:0:0:0:0:100:0:0:0","item:7777"))
	test(IL.SetLevel(9999,15),"item:9999:0:0:0:0:0:0:0:15")
	test(IL.SetLevel("item:9999:1:2:3:4:5:6:7:90:11:12:13",15),"item:9999:1:2:3:4:5:6:7:15:11:12:13")
	test(IL.SetLevel("item:9999:1:2:3:4:5:6:-7:90:11:12:13",15),"item:9999:1:2:3:4:5:6:-7:15:11:12:13")
	test(IL.FixLink(9999),"item:9999:0:0:0:0:0:0:0:0")
	test(IL.FixLink("item:9999:1:2:3:4:5:6:7:90:11:12:13"),"item:9999:1:2:3:4:5:6:7:90:11:12:13")
	assert(IL.Match("item:9999:1:2:3:4:5:6:7:90:11:12:13","item:9999:1:2:3:4:5:6:7:15:11:12:13"))
	assert(not IL.Match("item:9999:1:2:3:4:5:6:7:90:11:12:13","item:9999:1:999:3:4:5:6:7:90:11:12:13"))
	assert(not IL.Match("item:7777:1:2:3:4:5:6:7:90:11:12:13","item:9999:1:2:3:4:5:6:7:90:11:12:13"))
end
local ok,err = pcall(IL._test)
if not ok then ZGV.ERRORS=(ZGV.ERRORS or "") .. "\n" .. err end

ZGV.UTILS = {}  -- Spoo this, or something...


ZGV.Gold = {ServerTrends = {ImportServerPrices=function() end}}  -- stub
