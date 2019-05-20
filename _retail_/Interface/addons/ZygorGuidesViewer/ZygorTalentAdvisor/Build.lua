local ZTA=ZygorTalentAdvisor
if not ZTA then return end

local L = ZGV.L

local Build = {}

local table,tinsert,string,tonumber,ipairs,pairs,setmetatable = table,tinsert,string,tonumber,ipairs,pairs,setmetatable

ZTA.BuildProto = Build
local BuildProto_mt = { __index=Build }

ZTA.BuildsToAdd = {}

ZTA.registeredBuilds = {
	["DEATHKNIGHT"]={},
	["DRUID"]={},
	["HUNTER"]={},
	["MAGE"]={},
	["MONK"]={},
	["PALADIN"]={},
	["PRIEST"]={},
	["ROGUE"]={},
	["SHAMAN"]={},
	["WARLOCK"]={},
	["WARRIOR"]={},
}

function Build:ParseBuild(build,class)
	local talents = {}
	if type(build)=="table" then
		for tier,talent in pairs(build) do tinsert(talents,(tier-1)*3+talent) end
		return talents
	end

	-- That's it. Just use a table.
	
	do return end
end

function ZTA:RegisterBuild(upperclass,title,specialization,build,glyphs,petspec)
	local recommend=false
	if title:find("Recommended") then recommend = true end  -- TODO: Exorcise. This is HORRIBLE. Who WROTE this!? -- 2014-10-14 03:16:35 - sinus
	title=title:gsub("%(.*%)","")

	ZTA.registeredBuilds[upperclass][title]={
		title=title,
		recommended = recommend,
		class=upperclass,
		spec=specialization,
		specindex=ZTA.SpecIndices[upperclass][specialization],
		build=Build:ParseBuild(build,upperclass), --returns nil if something goes wrong in parsing, so will not be displayed.
		glyphs=Build:ParseGlyphs(glyphs,upperclass),
		petspec=petspec and ZTA.SpecIndices[upperclass][petspec],
	}
	if upperclass==ZTA.class and ZTA.registeredBuilds[upperclass][title].build then
		if ZTA.registeredBuilds[upperclass][title].recommended then
			ZTA.BuildsToAdd[title]=title.." |cff88ff88(Recommended)|r"
		else
			ZTA.BuildsToAdd[title]=title
		end
	end
end

--==GLYPHS==--
function ZTA:CacheGlyphData()
	self.glyphData={}

	-- save available glyphs in self.glyphData

	for i=1,50 do
		local name,gtype,avail,icon,glyphID,link = GetGlyphInfo(i)
		if name and name~="header" then
			local fullname = link:match("%[(.*)%]")
			local glyph = {name=name,fullname=fullname,gtype=gtype,avail=avail,icon=icon,glyphID=glyphID}
			self.glyphData[glyphID] = glyph   -- for build-to-available matching
			self.glyphData[fullname] = glyph	-- for current-to-available matching
			-- Well, that's noice, but let's ask the game the level requirement of this glyph
			self:RequestGlyphReqLevel(glyph)
		end
	end

	-- cross-check with glyph slots, mark as inscribed.

	for socket=1,NUM_GLYPH_SLOTS do
		local enabled, glyphType, glyphTooltip, glyphSpell, icon = GetGlyphSocketInfo(socket)
		if glyphSpell then
			local spellname = GetSpellInfo(glyphSpell)	assert(spellname,"Glyph "..glyphSpell.." has bad spell??")
			local glyph = self.glyphData[spellname]  -- fullname, indexed above.
			if glyph then
				glyph.inscribed = socket
				--glyph.spellID = glyphSpell
				self.glyphData[glyphSpell] = glyph  -- yet another index. Fun!
			end
		end
	end
end

local socketinfo_to_glyphinfo = {1,2}
function ZTA:GetGlyphSuggestions()
	local glyphs = self.currentBuild and self.currentBuild.glyphs

	if not glyphs or #glyphs==0 then return FALSE,"BLACK" end

	local numOK=0
	local numEmpty=0
	local numLocked=0
	local sug=L['talentpopup_glyphsug_title']

	self:CacheGlyphData()

	local gtsuf = { [1]="("..L.talentpopup_glyphtype_1..")",
		        [2]="("..L.talentpopup_glyphtype_2..")",}

	--local level = UnitLevel("player")
	--local numunlocks = (level>=75 and 2 or level>=50 and 2 or 1)

	for _,gid in ipairs(glyphs) do
		local glyph = self.glyphData[gid]

		if glyph then
			glyph.suggested = true
		else
			sug=sug.."\n|cffff0088ERROR: Unknown glyph id '"..gid.."' in build!|r"
		end
	end

	-- calculate free/freeable sockets

	sockets = {0,0,0}
	for socket=1,NUM_GLYPH_SLOTS do
		local enabled, glyphType, glyphTooltip, glyphSpell, icon = GetGlyphSocketInfo(socket)
		glyphType=socketinfo_to_glyphinfo[glyphType]

		if enabled then sockets[glyphType]=sockets[glyphType]+1 end
		if glyphSpell then
			if self.glyphData[glyphSpell] and self.glyphData[glyphSpell].suggested then
				numOK = numOK + 1
				sockets[glyphType]=sockets[glyphType]-1
			end  -- ignore the socket, it's good already
		else
			if enabled then numEmpty=numEmpty+1 else numLocked=numLocked+1 end
		end
	end
	--ZTA:Debug("sockets available: "..sockets[1]..","..sockets[2]..","..sockets[3])


	-- multiple passes, to have everything in proper order

	local futuresug=""
	local futuresug2=""

	for name,glyph in pairs(self.glyphData) do if type(name)=="string" then
		if not glyph.avail and glyph.suggested then
			local s="\n|cffff8800Learn and inscribe: ".. glyph.name .." ".. gtsuf[glyph.gtype] .."|r"
			if sockets[glyph.gtype]>0 then
				if UnitLevel("player")>=(glyph.level or 1) then
					sug=sug..s
					sockets[glyph.gtype]=sockets[glyph.gtype]-1
				else
					futuresug2=futuresug2..s
				end
			else
				futuresug=futuresug..s
			end
		end
	end end
	for name,glyph in pairs(self.glyphData) do if type(name)=="string" then
		if glyph.inscribed and not glyph.suggested then
			sug=sug.."\n|cffff0000Clear: "..glyph.name.." "..gtsuf[glyph.gtype].."|r"
		end
	end end
	for name,glyph in pairs(self.glyphData) do if type(name)=="string" then
		if glyph.suggested and glyph.avail and not glyph.inscribed then
			local s="\n|cffffff00Inscribe: "..glyph.name.." "..gtsuf[glyph.gtype].."|r"
			if sockets[glyph.gtype]>0 then
				if UnitLevel("player")>=(glyph.level or 1) then
					sug=sug..s
					sockets[glyph.gtype]=sockets[glyph.gtype]-1
				else
					futuresug2=futuresug2..s
				end
			else
				futuresug=futuresug..s
			end
		end
	end end
	for name,glyph in pairs(self.glyphData) do if type(name)=="string" then
		if glyph.suggested and glyph.inscribed then
			sug=sug.."\n|cff00ff00Good: "..glyph.name.." "..gtsuf[glyph.gtype].."|r"
		end
	end end

	if #futuresug>0 then
		sug = sug.."\n\nWhen you unlock more sockets:"..futuresug
	end
	if #futuresug2>0 then
		sug = sug.."\n\nWhen you advance enough levels:"..futuresug2
	end

	-- count empties/locks

	local missing=#glyphs-numOK
	local code

	--self:Debug(("missing %s, numEmpty %s, numLocked %s"):format(missing,numEmpty,numLocked))

	if numOK==#glyphs then code="GOLD"  -- all OK
	 elseif missing<=numEmpty then code="GREEN"  -- just inscribe
	 elseif missing<=numEmpty+numLocked then code="YELLOW"  -- cool, just need to level more
	 else code="ORANGE"  -- needs wiping
	end
	return sug,code
end

function ZTA:RequestGlyphReqLevel(glyph)
	-- If the glyph data already has a level, skip
	if not glyph.level then
		local _,uc=UnitClass("player")
		local itemid=ZTA.GlyphsToItemIDs[uc][glyph.name]
		if not itemid then
			if ZGV then
				ZGV:Debug("Database incomplete, missing item id for "..glyph.name)
			end
			return
		end
		local _,_,_,_,lev=GetItemInfo(itemid)
		if lev then -- Hooray, we've found it
			glyph.level=lev
		else -- No data yet, let's wait 2 second
			TalentSchedule(2,"GlyphLevel",function() self:RequestGlyphReqLevel(glyph) end)
		end
	end
end

local tasks = {}
function TalentSchedule(time,event,func,...)
	local t = {}
	t.func=func
	t.time=GetTime()+time
	tasks[event]=t
end

function TalentOnUpdate()
	for event,table in pairs(tasks) do
		local val=tasks[event]
		if val.time <=GetTime() then
			tasks[event]=nil
			val.func()
		end
	end
end

-- Dump glyph ID numbers for GlyphsToNumbers. Run manually.
function ZTA:DumpGlyphIDs()
	local s = ""
	local _,myclass
	local glyphs={}
	_,myclass = UnitClass("player")

	s = "-- If this seems empty, hit CTRL+A to Select All. Tabs make the text invisible.\n"
	s = "-- Put this in ZTA/Build_Data.lua in the ZTA.GlyphsToNumbers section.\n\n"

	s = s .. "  [\"".. myclass:upper() .."\"]={\n"
	for i=1,120 do
		local name,gtype,avail,icon,glyphID,link = GetGlyphInfo(i)
		if name and name~="header" then
			--name = link:match("%[(.*)%]")
			s = s .. "    [\""..name.."\"]="..glyphID..",\n"
		end
	end
	s = s .. "  },\n"

	if ZGV and ZGV.ShowDump then
		ZGV:ShowDump(s)
	else
		print(s)
	end
end

-- Try to dump glyph item ID numbers
-- WARNING: Never use it at home, it will cache a big chunk of the database and probably kill your dog as well
-- Setting the second parameter to true requests immediate report
-- Also, make sure you're using an English client
local cache={}
ZTA.DumpGlyphItemIDsCache=cache
local FIRST=40000
function ZTA:DumpGlyphItemIDs(reset)
	if reset then FIRST=40000 end
	local LAST=200000 -- I suppose...
	local count=0

	-- Iterate over the region the glyph items are supposed to live in
	local found=0
	local BREAKAT=0
	for i=FIRST,LAST do -- TODO quite a hardcode, also, hardcore
		if not cache[i] then
			local name,_,_,_,lev,tp,class=GetItemInfo(i)
			if name then
				if class and tp=="Glyph" --[[and class=="Priest"--]] then -- our client here
					cache[i]={name=name,lev=lev,tp=tp,class=class,itemid=i} -- TODO unlocalize
					found=found+1
				else
					cache[i]=true -- it's cached, but not a glyph
				end
			end
			count=count+1
			if count>10000 then BREAKAT=i break end
		end
	end

	print("DumpGlyphItemIDs went from",FIRST,"up to",BREAKAT,", found",found,"glyphs so far. Retry for more.")
	FIRST=BREAKAT

		-- TODO this is UGLY
		-- Reverse class name lookup
		local capClasses = {}
		classes={}
		FillLocalizedClassList(capClasses)
		for k,v in pairs(capClasses) do
			classes[v]=k
		end

		local byclass = {}
		ZTA.DumpGlyphItemIDsCacheByClass = byclass

		-- Right, that's a report time now
		for k,v in pairs(cache) do
			if type(v)=="table" then
				if not byclass[classes[v.class]] then  byclass[classes[v.class]]={}  end
				if not v.name:find("zzOLD") then
					table.insert(byclass[classes[v.class]],v)
				end
			end
		end

		s="ZTA.GlyphsToItemIDs = {\n"
		for class,cdata in pairs(byclass) do
			s=s.."  [\""..class.."\"]={  -- "..(#cdata).." glyphs\n"
			for kk,glyph in ipairs(cdata) do if glyph.name then
				s=s.."    [\""..(glyph.name:match("Glyph of the (.*)") or glyph.name:match("Glyph of (.*)") or glyph.name).."\"]="..(glyph.itemid or 0)..",\n"
			end end
			s=s.."  },\n"
		end
		s=s.."}\n"

		if ZGV and ZGV.ShowDump then
			ZGV:ShowDump(s,"Glyph data to put in ZTA/Build_Data.lua:")
		else
			print(s)
		end
end

function Build:ParseGlyphs(rawglyphs,class)

	build=rawglyphs.."\n"
	local table = {}
	for line in build:gmatch("([^\n]+)\n") do
		line=line:match("lyph of (.*)") or gn

		local gid = ZTA.GlyphsToNumbers[class][line]
		if gid then
			tinsert(table,gid)
		else
			if ZGV.DEV then print("DEV: Unknown glyph: ",class,line) end
		end
	end
	return table
end

function ZTA:DumpTalentSpells()
	local s = ""
	local _,myclass
	_,myclass = UnitClass("player")
	s = "	[\"".. myclass:upper() .."\"]={\n"

	-- reduced to just check CURRENT spec talents. For reasons. :/  ~~ 2014-10-14 02:54:03 - sinus
	
	--for spec=1,GetNumSpecializations() do -- 1..4
	local spec = GetSpecialization()
	local id,tabname = GetSpecializationInfo(spec)

	s =s.."		[\""..tabname.."\"]="..tab..",\n"
	for tier=1,MAX_TALENT_TIERS do
		for column=1, NUM_TALENT_COLUMNS do
			local id, name = GetTalentInfo(tier,column,GetActiveSpecGroup())
			local link = GetTalentLink(id)
			if link then
				--local id = link:match("talent:(%d+)")
				--s = s .. "		[\""..name.."\"]= {id="..id..", index="..talent..",},\n"
				s = s .. "		[\""..name.."\"] = "..((tier-1)*3 + column)..",\n"
			else
				s = s .. "		-- no link for "..tab..","..talent.."\n"
			end
		end
	end

	s = s .. "	},\n"
	if ZGV and ZGV.ShowDump then
		ZGV:ShowDump(s,"Talent data:")
	else
		print(s)
	end
end