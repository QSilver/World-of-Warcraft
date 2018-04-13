local name,ZGV=...

-- test stuff
local test
if not ZGV then
ZGV={}
ZGV._NPCData = [[

3:naaa|b123
]]
wipe=function() end
test=1
end
--

local NPCcached={}
local function parseNPC(s)
	wipe(NPCcached)
	local grab=function(k,v)
		NPCcached[k]=v
	end
	s:gsub("(%w)([^|]+)",grab)
	NPCcached.x=tonumber(NPCcached.x)
	NPCcached.y=tonumber(NPCcached.y)
	NPCcached.m=tonumber(NPCcached.m)
	NPCcached.f=tonumber(NPCcached.f)
	return NPCcached
end

-- de-hostilize

local badfact
if UnitFactionGroup("player")=="Alliance" then badfact="H"
elseif UnitFactionGroup("player")=="Horde" then badfact="A"
end
if badfact then ZGV._NPCData=ZGV._NPCData:gsub("%d+=s"..badfact..".-\n","") end

if badfact then ZGV._MailboxData=ZGV._MailboxData:gsub("s"..badfact..".-\n","") end

-- localize

local data=ZGV._NPCData
assert(data,"NPCData missing")
ZGV.NPCData={}  setmetatable(ZGV.NPCData,{__index=function(t,k) if type(k)~='number' then return end local d=data:match('\n'..k..'=(.+)') if not d then return end  return parseNPC(d)  end})
ZGV.NPCData.parseNPC=parseNPC  -- store it, in case someone wants it
ZGV.NPCData.raw=data
function ZGV.NPCData:iterate(typ)
	if not typ then typ="." end
	return data:gmatch("\n(%d+)=([^\n]-|t"..typ..")")
end
ZGV._NPCData=nil


if test then
	print(ZGV.NPCData[3]['n'])
	print(ZGV.NPCData[3]['b'])
end

-- Mailboxes --

local MailboxCached={}
local function parseMailbox(s)
	wipe(MailboxCached)
	local grab=function(k,v)
		MailboxCached[k]=v
	end
	s:gsub("(%w)([^|]+)",grab)
	MailboxCached.x=tonumber(MailboxCached.x)
	MailboxCached.y=tonumber(MailboxCached.y)
	MailboxCached.m=tonumber(MailboxCached.m)
	MailboxCached.f=tonumber(MailboxCached.f)
	return MailboxCached
end

-- iterator

local mailboxData=ZGV._MailboxData
assert(mailboxData,"MailboxData missing")
ZGV.MailboxData={}
setmetatable(ZGV.MailboxData,{__index=function(t,k)
	local d=mailboxData:match('\ns(.+)')
	if not d then return end
	return parseMailbox(d)
end})
ZGV.MailboxData.parseMailbox=parseMailbox  -- store it, in case someone wants it

local matcher = nil
local matcherIndex = 1
function ZGV.MailboxData:iterate(typ)
	if not typ then typ="." end
	if not matcher then
		matcher = mailboxData:gmatch("\n([^\n]-|t["..typ.."])")
		matcherIndex = 1
	end
	matcherIndex = matcherIndex + 1
	
	return function()
		local match = matcher()
		if match then
			return tostring(matcherIndex), match
		else
			matcher = nil
			matcherIndex = 1
		end
	end
end
ZGV._MailboxData=nil


--if test then
--	print(ZGV.NPCData[3]['n'])
--	print(ZGV.NPCData[3]['b'])
--end

