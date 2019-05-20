--[[
Name: LibTaxi-1.0
Revision: $Rev: 1 $
Author(s): sinus (sinus@sinpi.net)
Description: A library recording all player's currently known/unknown taxi routes.
Dependencies: None
License: Free for non-commercial use, except for Zygor Guides.
]]

local MAJOR_VERSION = "LibTaxi-1.0"
local MINOR_VERSION = tonumber(("$Revision: 1 $"):match("%d+"))

local addonname,addon = ...
-- #AUTODOC_NAMESPACE prototype

local GAME_LOCALE = GetLocale()

local ZGV,LibRover

do
	local LIB_MAJOR, LIB_MINOR = "LibTaxi-1.0", 1

	local Lib = LibStub:NewLibrary(LIB_MAJOR, LIB_MINOR)
	if not Lib then return end

	addon.Lib = Lib

	Lib.master = { }
	Lib.saved_tables = { }

	local Astrolabe = DongleStub("Astrolabe-ZGV")

	--Lib.TaxiNames_Local = nil
	--Lib.TaxiNames_English = nil

	-- Initialize localization. All taxis are stored as ENGLISH - lookups need pre-translation.
		if Lib.TaxiNames_Local then
			for en,lo in pairs(Lib.TaxiNames_Local) do if lo==1 then Lib.TaxiNames_Local[en]=en end end

			Lib.TaxiNames_English = {}
			for en,lo in pairs(Lib.TaxiNames_Local) do
				Lib.TaxiNames_English[lo]=en
			end

			local mt = { __index = function(t,k)  v=rawget(t,k)  if not v then print("|cffff4400Taxi |cffff8800"..k.."|r not translated to "..GetLocale()..", please report this to Zygor") return k elseif v==true then return k else return v end  end }
			setmetatable(Lib.TaxiNames_Local,mt)
			setmetatable(Lib.TaxiNames_English,mt)
		else
			local loc_stub = {}
			setmetatable(loc_stub,{ __index = function(t,k)  return k  end } )
			Lib.TaxiNames_Local = loc_stub
			Lib.TaxiNames_English = loc_stub
		end


	local minimap_exceptions = {
		["Trade District"] = "Stormwind",
		["The Great Forge"] = "Ironforge",
		["Terrace of Light"] = "Shattrath City",
		["The Stair of Destiny"] = "Hellfire Peninsula, The Dark Portal",
		["Valley of Strength"] = "Orgrimmar"
	}

	local ERR_NEWTAXIPATH=ERR_NEWTAXIPATH


	local function is_enemy(f1,f2)
		return (f1=="A" and f2=="H") or (f1=="H" and f2=="A")
	end
	Lib.is_enemy=is_enemy

	-- Add taxi to known.
	local function addTaxi(name)
		local taxi
		if type(name)=="string" then
			local eng = Lib.TaxiNames_English[name] or Lib.TaxiNames_English[name:gsub(", .*","")]
			if type(eng)=="string" then name=eng end
			--print(i..": "..TaxiNodeName(i).." = "..name)
			if not name then
				print("|cffff8888LibTaxi Error: Untranslated taxi "..name.."|r")
				return
			end
			taxi = Lib:FindTaxi(name)
		else
			taxi = name
		end

		if taxi then
			Lib.master[taxi.name]=true
			taxi.known=true
		else
			if ZGV.DEV then print("|cffff8888LibTaxi Error: Unknown taxi "..name.."|r") end  -- DEVed prints at 2014-11-12
		end
	end

	local time

	local function onEvent(this, event, arg1)
		if event == "ADDON_LOADED" and arg1==addonname and not Lib.loaded then
			Lib.loaded=true
		elseif event == "TAXIMAP_OPENED" then
			Lib:ScanTaxiMap()
			if ZGV then ZGV:SetWaypoint() end -- Force arrow to re-check itself -- Jeremiah
			if ZGV and ZGV.db and ZGV.db.profile.debug then ZGV:Debug("do |cffffff00/run ZGV.LibTaxi:DumpNeighborFlights()|r now to save these connections.") end
		elseif event == "UI_INFO_MESSAGE" then
			if arg1==ERR_NEWTAXIPATH then
				Lib:LearnCurrentTaxi()
				if ZGV and ZGV.LibRover then ZGV.LibRover:UpdateNow("quiet") end -- Try to force update of arrow ~~ Jeremiah
			end
		elseif event == "UPDATE_FACTION" then --Faction update is not needed anymore.
			Lib:MarkKnownByLevels() --Only needs to be ran once after the faction's information has been made available at startup
			--Lib.frame:UnregisterEvent("UPDATE_FACTION")
		elseif event=="PLAYER_CONTROL_LOST" then
			time=GetTime()
		elseif event=="PLAYER_CONTROL_GAINED" then
			--print("|cffffff00Total Time = |cffff0000" ..GetTime()-time.. " seconds.")
		end
	end

	Lib.frame = CreateFrame("Frame", "LibTaxiFrame")
	Lib.frame:RegisterEvent("TAXIMAP_OPENED")
	Lib.frame:RegisterEvent("UI_INFO_MESSAGE")
	Lib.frame:RegisterEvent("ADDON_LOADED")
	--Lib.frame:RegisterEvent("UPDATE_FACTION")
	--Lib.frame:RegisterEvent("PLAYER_CONTROL_LOST")
	--Lib.frame:RegisterEvent("PLAYER_CONTROL_GAINED")
	Lib.frame:SetScript("OnEvent", onEvent)


	Lib.errors = {}

	--- Gets all the known flight paths, in current locale.
	function Lib:GetTaxis()
		local paths = {}
		for fpath,t in pairs(Lib.master) do paths[Lib.TaxiNames_Local[fpath] or fpath]=t end
		return paths
	end

	--- Gets all the known flight paths, in English.
	function Lib:GetTaxisEnglish()
		local paths = {}
		for fpath,t in pairs(Lib.master) do paths[fpath]=t end
		return paths
	end

	local initialized_continents={}
	function Lib:Startup(newsave)
		ZGV = ZygorGuidesViewer
		LibRover = ZGV.LibRover

		Lib.MapIDsByName = LibRover.data.MapIDsByName or ZGV.MapIDsByName

		Lib.master=newsave
		Lib:InitializeTaxis()

		setmetatable(newsave,Lib.known_by_continent_mt)
		table.insert(Lib.saved_tables,newsave)

		Lib:MarkKnownByLevels()
		self:Debug("Startup complete.")
	end

	local function warn(message)
		local _, ret = pcall(error, message, 3)
		geterrorhandler()(ret)
	end

	-- return three-way node known status.
	-- true = known, obviously.  false = there's a marker indicating the continent is known, but the node is not.  nil = entirely unknown if known :P
	Lib.known_by_continent_mt = { __index=function(t,i)
			if rawget(t,i) then
				return true
			else
				local c = Lib.path2cont[i]
				if rawget(t,c) then
					return false
				else
					return nil
				end
			end
		end
	}

	Lib.path2cont = {}

	Lib.taxipoints = Lib.taxipoints or addon.LibTaxiData and addon.LibTaxiData.taxipoints

	Lib.flightcost = Lib.flightcost or addon.LibTaxiData and addon.LibTaxiData.flightcost

	addon.LibTaxiData = nil

	local enemyfac = "DON'T PRUNE" or (UnitFactionGroup("player")=="Alliance") and "H" or "A"-- TODO: REMOVE
	function Lib:InitializeTaxis()
		for c,cont in pairs(Lib.taxipoints) do
			for z,zone in pairs(cont) do
				z=Lib.MapIDsByName[z] or z
				if type(z)=="table" then z=z[1] end
				local n=1
				while n<=#zone do
					local node=zone[n]
					if not node then break end
					if node.faction~=enemyfac then
						Lib.path2cont[node.name] = c
						node.m = z
						node.c = Astrolabe.WorldMapSize[z].system
						n=n+1
					else
						tremove(zone,n)
					end
				end
			end
		end
	end

	-- Get faction info because Andorhal has separate Horde and Alliance flight points with the same name. ~~ Jeremiah
	local playerF
	local factionEnglish = UnitFactionGroup("player")
	if factionEnglish == "Alliance" then
		playerF = "A"
	elseif factionEnglish == "Horde" then
		playerF = "H"
	end

	local aliases={["Stormwind City"]="Stormwind", ["Theramore Isle"]="Theramore"}
	function Lib:FindTaxi(name,trim)   -- RIP manataur. Bye bye buddy.

	
		if trim and name then name = name:gsub(", .*","") end  -- trim zone names (in european languages, at least)
		name = aliases[name] or name
		for c,cont in pairs(Lib.taxipoints) do  for z,zone in pairs(cont) do  for n,node in ipairs(zone) do
			if not is_enemy(playerF,node.faction) and ( 
				node.name==name  -- raw name, pretty rare
				or node.name==(type(name)=="string" and name:gsub(", .*",""))  -- node name with zone appended
			)
			then
				return node
			end
		end  end  end
	end

	Lib.taxitag2point = {}
	function Lib:CacheTaxiTags()
		self:Debug("Caching taxi tags... playerF=%s",playerF) local t=debugprofilestop()
		for c,cont in pairs(Lib.taxipoints) do
			Lib.taxitag2point[c] = {}
			for z,zone in pairs(cont) do
				for n,node in ipairs(zone) do
					if node.taxitag and not is_enemy(playerF,node.faction) then
						Lib.taxitag2point[c][node.taxitag]=node
						node._zone = z
					end
				end
			end
		end
		self:Debug("Caching taxi tags done, took %.3f",debugprofilestop()-t)
	end
	
	function Lib:FindTaxiByTag(cont,tag)
		if not Lib.taxitag2point[cont] then Lib:CacheTaxiTags() end
		return Lib.taxitag2point[cont][tag]
	end

	function Lib:ClearContinentKnowledge(cont,operator)
		for z,zone in pairs(Lib.taxipoints[cont]) do
			for n,node in ipairs(zone) do
				if node.factionid~=1031
				and node.taxioperator==operator
				and node.taxioperator~="blackcat"
				then
					node.known=false
					Lib.master[node.name]=false
				end
			end

			--[[
				local zoneid = LibRover.data.MapIDsByName[z]
				if type(zoneid)=="table" then zoneid=zoneid[1] end  -- might cause trouble on phased maps :/
				zoneid=ZGV.Pointer:SanitizePhase(zoneid)
				if LibRover.MapLevels[zoneid]<UnitLevel("player") then -- only set contin that is our level to false
					for n,node in ipairs(zone) do
						if node.factionid~=1031 then
							if node.known==true then node.known=known end
							if Lib.master[node.name]==true then Lib.master[node.name]=known end
						end
					end
				end
			--]]  -- what was that supposed to do?  mark correct level nodes as unknown? O_o  ~sinus
		end
	end


	local hooked

	-- Scan an open taxi map for (a) node positions, names and "known" status, (b) node connections.
	function Lib:ScanTaxiMap()
	
		if not TaxiFrame:IsShown() then self:Debug("Map not shown, unable to scan."); return end

		if ZGV and ZGV.db and ZGV.db.profile.debug and not hooked then
			hooksecurefunc("TaxiNodeOnButtonEnter",function(button)
				local taxix,taxiy = TaxiNodePosition(button:GetID())
				local taxitag = ("%03d:%03d"):format(taxix*1000,taxiy*1000)
				local taxinode = self:FindTaxiByTag(GetCurrentMapContinent(),taxitag)
				self:Debug(("Taxi %d = %03d:%03d (node #%s)"):format(button:GetID(),taxix*1000,taxiy*1000,taxinode and taxinode.num or "?"))
			end)
			hooked=true

			self.TaxiFrameButton = ZGV.ChainCall(CreateFrame("BUTTON","ZGVLibTaxiButton",TaxiFrame,"UIPanelButtonTemplate"))
			:SetPoint("TOPRIGHT",TaxiFrame,"TOPRIGHT",0,-20)
			:SetSize(100,50)
			:SetText("[Z] Dump Taxis")
			:SetScript("OnClick",function() Lib:DeepScanTaxiMap() end)
			--:RegisterForClicks("AnyUp")
			:Show()
			.__END
		end

		local cont = GetCurrentMapContinent()

		self:Debug("Scanning map...")

		-- We now see the map. Whatever's not on the map, is surely unknown - so, mark everything as unknown and learn what's known.

		-- NASTY: Need to clear only the current operator. Try to find a node first, and its operator, only then clear the continent.
		local cont_cleared = false

		local currenttaxi

		for i=1,NumTaxiNodes() do
			local taxitype = TaxiNodeGetType(i)
			if taxitype~="NONE" then

				if taxitype=="CURRENT" then currenttaxi=i end

				-- check the node itself

				local name = TaxiNodeName(i)
				local taxix,taxiy = TaxiNodePosition(i)
				local taxitag = ("%03d:%03d"):format(taxix*1000,taxiy*1000)
				
				local taxi = Lib:FindTaxiByTag(cont,taxitag)

				--if not taxi then Lib:FindTaxi

				if taxi then
					self:Debug("found %s [%s]",taxi.name,taxitag)

					if not cont_cleared then
						self:Debug("Clearing continent %d, operator %s",cont,taxi.taxioperator or "default")
						Lib:ClearContinentKnowledge(cont,taxi.taxioperator)  -- TODO: find operator of current path!  -- ?? But it's hardcoded now..?
						cont_cleared = true
					end

					taxi.known = true
					Lib.master[taxi.name]=true
				else
					self:Debug("|cffff8888taxi missing in data: %s [%s] [%.5f,%.5f] - adding to data.flightcost for dumping",name,taxitag,taxix,taxiy)
					--tinsert(self.errors,("taxi missing in data: %s [%s] [%.5f,%.5f]"):format(name,taxitag,taxix,taxiy))
				end

				Lib.flightcost[cont][taxitag]=Lib.flightcost[cont][taxitag] or {}
				local fcdata = Lib.flightcost[cont][taxitag]
				fcdata.name = fcdata.name or name

			end
		end

		-- leech off QH
		if QuestHelper_KnownFlightRoutes then
			for name,_ in pairs(QuestHelper_KnownFlightRoutes) do
				addTaxi(name)
			end
		end
	end


	-- /run LibTaxi:DeepScanTaxiMap()
	-- /run LibTaxi:DumpFlightCosts()
	function Lib:DeepScanTaxiMap()  -- DEV FUNCTION
		if not TaxiFrame:IsShown() then self:Debug("LibTaxi: Map not shown, unable to scan."); return end
		local cont = GetCurrentMapContinent()
		local fccont = Lib.flightcost[cont]

		-- check connections

		local connections=0

		for dest=1,NumTaxiNodes() do if TaxiNodeGetType(dest)=="REACHABLE" then
			local startnode,endnode,starttag,endtag
			local x,y

			startnode=TaxiGetNodeSlot(dest,1,true)
			x,y = TaxiNodePosition(startnode)
			starttag = ("%03d:%03d"):format(x*1000,y*1000)

			local hops = ("%d hops to %s: "):format(GetNumRoutes(dest),TaxiNodeName(dest))

			for hop=1,GetNumRoutes(dest) do

				endnode=TaxiGetNodeSlot(dest,hop,false)
				x,y = TaxiNodePosition(endnode)
				endtag = ("%03d:%03d"):format(x*1000,y*1000)

				hops = hops .. (" (%d) %s,"):format(hop,TaxiNodeName(endnode))

				if starttag~=endtag then
					local new
					local fcstart = self.fc_by_tag[cont][starttag]
					if not fcstart then
						fcstart={name=TaxiNodeName(startnode),tag=starttag}
						tinsert(Lib.flightcost[cont],fcstart)
						self.fc_by_tag[cont][starttag]=fcstart
						self.fcnames_by_tag[cont][starttag]=fcstart.name
					end
					fcstart.neighbors = fcstart.neighbors or {}
					if not fcstart.neighbors[endtag] then new=1 end
					fcstart.neighbors[endtag] = fcstart.neighbors[endtag] or 0

					local fcend = self.fc_by_tag[cont][endtag]
					if not fcend then
						fcend={name=TaxiNodeName(endnode),tag=endtag}
						tinsert(Lib.flightcost[cont],fcend)
						self.fc_by_tag[cont][endtag]=fcend
						self.fcnames_by_tag[cont][endtag]=fcend.name
					end
					fcend.neighbors = fcend.neighbors or {}
					if not fcend.neighbors[starttag] then new=1 end
					fcend.neighbors[starttag] = fcend.neighbors[starttag] or 0
					if new then
						connections=connections+1
						print("   ^ NEW")
					end
				end

				startnode=endnode
				starttag=endtag
			end

			print(hops)

		end end


		-- Missing hops have now been given the "0" time. Enough to get connections right.

		print(("%d nodes, %d new connections. Now doing  /run LibTaxi:DumpFlightCosts()"):format(NumTaxiNodes(),connections))
		LibTaxi:DumpFlightCosts()
	end

	function Lib:MarkKnownByLevels()
		local level = UnitLevel("player")
		for c,cont in pairs(Lib.taxipoints) do
			for z,zone in pairs(cont) do
				local zoneid = self.MapIDsByName[z]
				if type(zoneid)=="table" then zoneid=zoneid[1] end  -- might cause trouble on phased maps :/
				zoneid=ZGV and ZGV.Pointer:SanitizePhase(zoneid)
				--[[if LibRover.MapLevels[zoneid]<=level  -- zone is lower level than player, we should know all taxis by now
				  and LibRover.MapLevels[zoneid]<85  -- Pandaria Zones are not learned by level
				  then
					for n,node in ipairs(zone) do
						if node.known==nil then node.known=true	end

						if  (node.quest and not ZGV.completedQuests[node.quest]) -- we didn't do the quest
							or (node.factionid and select(3,GetFactionInfoByID(node.factionid))<node.factionstanding) -- we're not esteemed enough
							or (node.condition and not node.condition()) -- condition fail
							or (node.class and select(2,UnitClass("player"))~=node.class) -- Class only! woo
						then
							node.known = false
						end

						if not node.known then Lib.master[node.name]=false end

						if Lib.master[node.name]==nil then Lib.master[node.name]=true end
					end
				else --]]
					for n,node in ipairs(zone) do
						local achieveInfo
						if node.achievemissing then
							achieveInfo = {GetAchievementInfo(node.achievemissing)}
						end
					
						if node.taxioperator and node.taxioperator=="blackcat" then node.known = true end --All blackcats are useable by an alliance character

						if node.available then
							node.known = node.available() --OVERWRITE. If we gave something special so don't worry about the others
							Lib.master[node.name]= node.known;
						elseif node.achievemissing then
							-- If the player has the achievement, then the node is missing.
							node.missing = achieveInfo[13] -- 13 = whether this toon has the achievement.
						elseif Lib.master[node.name]==false then --if zone is overlevel and for some reason it is false, set it back to nil
							Lib.master[node.name]=nil
						elseif Lib.master[node.name]==true then -- we know a flightpath that is over our level
							node.known=true
						end
					end
				--end
			end
		end
	end

	function Lib:ResetKnowledge()
		for c,cont in pairs(Lib.taxipoints) do
			for z,zone in pairs(cont) do
				for n,node in ipairs(zone) do
					node.known = nil
				end
			end
		end
		Lib:MarkKnownByLevels()
	end


	-- And now, the EVIL. Let's peek into a taxi before it flies.
	-- LibTaxi.LastTaxi becomes the node of the last taxi taken!

	local Saved_TakeTaxiNode = TakeTaxiNode
	_G.TakeTaxiNode = function(index)
		local x,y = TaxiNodePosition(index)
		Lib.LastTaxi = {fullname=TaxiNodeName(index)}
		Lib.LastTaxi.node = Lib:FindTaxi(Lib.LastTaxi.fullname)
		if Lib.LastTaxi.node then
			Lib.LastTaxi.name,Lib.LastTaxi.zone = Lib.LastTaxi.node.name,GetMapNameByID(Lib.LastTaxi.node.m)
--			Lib.LastTaxi.name,Lib.LastTaxi.zone = Lib.LastTaxi.node.name,(Lib.LastTaxi.node.m and GetMapNameByID(Lib.LastTaxi.node.m) or ("(bad map in '"..Lib.LastTaxi.name.."')")) -- just in case? or was it a bad update that broke in here?
		else
			Lib.LastTaxi.name,Lib.LastTaxi.zone = Lib.LastTaxi.fullname:match("(.*), (.*)")
		end
		Saved_TakeTaxiNode(index,"",true)
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

	local function ordered_pairs(t)
	    -- Equivalent of the pairs() function on tables. Allows to iterate
	    -- in order
	    return orderedNext, t, nil
	end

	-- OLD, DO NOT USE
	--[[
		function Lib:DumpTaxiPoints()
			local s="	data.taxipoints = {\n"
			for contnum,contdata in ipairs(Lib.taxipoints) do
				s=s.."		["..contnum.."]={\n"
				for zonename,zonedata in ordered_pairs(contdata) do
					s=s.."			['"..zonename:gsub("'","\\'").."']={\n"
					for ti,taxi in ipairs(zonedata) do
						local taxicosts=""
						if taxi.costs then
							for tag,cost in pairs(taxi.costs) do
								taxicosts = taxicosts .. " [\"" ..tag.."\"] = " ..cost..","
							end
							if #taxicosts>0 then taxicosts=taxicosts:sub(1,-2) end
						end
						local extra=""
						if taxi.class then extra=extra.."class=\""..taxi.class.."\"," end
						if taxi.quest then extra=extra.."quest="..taxi.quest.."," end
						if taxi.factionid then extra=extra.."factionid="..taxi.factionid.."," end
						local operator=""
						if taxi.taxioperator then operator=operator.."taxioperator=\"".. taxi.taxioperator .."\"," end
						local taxitag=""
						if taxi.taxitag then taxitag="taxitag="..taxi.taxitag.."," end
						s=s..('				{name="%s",faction="%s",%snpc="%s",npcid=%d,x=%.1f,y=%.1f,%s%scosts={%s}},\n'):format(taxi.name,taxi.faction,extra,taxi.npc,taxi.npcid,(taxi.x<1 and taxi.x*100 or taxi.x),(taxi.y<1 and taxi.y*100 or taxi.y),operator,taxitag,taxicosts)
					end
					s=s.."			},\n"
				end
				s=s.."		},\n"
			end
			s=s.."	}\n"
			ZGV:ShowDump(s)
		end
	--]]


	-- /run LibTaxi:DumpFlightCosts()
	function Lib:DumpFlightCosts()
		local s="data.flightcost = {\n"
		for contnum,contdata in ipairs(Lib.flightcost) do
			s=s.."	["..contnum.."]={\n"
			
			local function tagsort(a,b) return a.tag and b.tag and a.tag<b.tag end
			table.sort(contdata,tagsort)

			for i,data in ipairs(contdata) do
				s=s.."		{\n"
				
				s=s.."			tag = \""..data.tag.."\",\n"

				s=s.."			name = \""..data.name.."\",\n"
				
				if data.taxioperator then s=s.."			taxioperator = \""..data.taxioperator.."\",\n" end
				if data.faction then s=s.."			faction = \""..data.faction.."\",\n" end
				if data.comment then s=s.."			comment = \""..data.comment.."\",\n" end

				for k,v in pairs(data) do if k~="taxioperator" and k~="faction" and k~="comment" and k~="name" and k~="neighbors" and k~="tag" then print("Odd data key",k) end end
				
				if data.neighbors then
					s=s.."			neighbors = {\n"

					local sorted_neighs={}
					for ntag,cost in pairs(data.neighbors) do tinsert(sorted_neighs,ntag) end
					table.sort(sorted_neighs)

					for j,ntag in ipairs(sorted_neighs) do
						local cost = data.neighbors[ntag]
						local name = self.fcnames_by_tag[contnum][ntag]
						s = s .. "				[\""..ntag.."\"] = "..cost..", -- " .. (name or "?") .. "\n"
					end
					s=s.."			},\n"
				end
				s=s.."		},\n"
			end
			s=s.."	},\n"
		end
		s=s.."}\n"
		ZGV:ShowDump(s,"Paste into LibTaxi/data.lua")
	end

	--[[ unused?
		function Lib:MergeTags__()  --unused?
			if not LibRover.data.flightcost then return end  -- shouldn't be any anyway
			for contnum,contdata in ipairs(LibRover.data.flightcost) do
				for tag,taxidata in pairs(contdata) do
					local taxinode = Lib:FindTaxi(taxidata.Name, "trim")
					if not taxinode then
						if ZGV.DEV then print("WHOA. Taxi node not found: ",taxidata.Name) end   -- DEVed prints at 2014-11-12
					else
						taxinode.taxitag = tag
						taxinode.pre_costs = taxidata.Neighbors
					end
				end
			end
		end
	--]]

	-- Pull "flightcost" data into taxipoints. Ugly merging by names that need manual adjusting sometimes.
	function Lib:MergeData()
		local FC=Lib.flightcost
		if not FC then print("Need flightcosts data") return end

		-- order flightcosts by tag for quick retrieval
		Lib.fc_by_tag = {}
		Lib.fcnames_by_tag = {}
		for cont,conttaxis in pairs(FC) do
			Lib.fc_by_tag[cont] = {}
			Lib.fcnames_by_tag[cont] = {}
			for ti,taxi in pairs(conttaxis) do
				if not is_enemy(taxi.faction,playerF) then
					Lib.fc_by_tag[cont][taxi.tag] = taxi
				end
				Lib.fcnames_by_tag[cont][taxi.tag] = taxi.name
			end
		end

		-- for each taxi NPC find its tag.
		for c,cont in pairs(Lib.taxipoints) do repeat
			if not FC[c] then print("|cff000000 continent",c,"not found in LibTaxi.flightcost") break end  --continue
			for z,zone in pairs(cont) do
				for ni,node in pairs(zone) do
					
					local found
					for fi,fcdata in pairs(FC[c]) do
						if fcdata.name:find(node.name,0,true)
						and not is_enemy(fcdata.faction,node.faction)
						then
							if not (fcdata.taxioperator~=node.taxioperator)
							then
								found=1
								node.taxitag = fcdata.tag
								--if node.taxitag=="611:652" then tinsert(Lib.errors,("|cff00ff00%s %s|r = |cffff8800%s"):format(node.name,node.faction,node.taxitag)) end
								
								--break
								-- NO, DO NOT BREAK. We NEED multiple taxis to get the same tag, if they match.
							else
								--print("|cffff8855",node.name,"(",z,") found at",fmid,"but is wrong: fac",fmdata.faction,node.faction,"operator",fmdata.taxioperator,node.taxioperator)
							end
						end
					end

					if not found then tinsert(Lib.errors,"|cffffff00"..node.name.." ".." ("..z..") (faction:"..(node.faction or "-")..") ["..(node.taxioperator or "").."] didn't get a taxitag, no match found by name in LibTaxi.flightcost") end   -- DEVed prints at 2014-11-12
				end
			end
		until true end

		-- for each taxi NPC assign neighbors by tag. LibRover Node uses this for cost calc.
		for c,cont in pairs(Lib.taxipoints) do repeat
			for z,zone in pairs(cont) do
				for ni,node in pairs(zone) do repeat
					if not node.taxitag then tinsert(Lib.errors,"Why did "..node.name.." not get a taxitag?") break end
					if is_enemy(node.faction,playerF) then break end
					local fcdata = Lib.fc_by_tag[c][node.taxitag]
					if not fcdata then tinsert(Lib.errors,"taxi "..node.name.." "..node.taxitag.." has no fcdata?") break end -- shouldn't happen, if the node has a tag...
					if not fcdata.neighbors then break end

					node.costs = {}
					for neighbortag,cost in pairs(fcdata.neighbors) do
						node.costs[neighbortag] = cost
					end

				until true end
			end
		until true end
	end
	Lib:MergeData()

	--[[ UNUSED? not even for DEV!
		function Lib:DumpNeighborFlights()

			local s = ""

			for i=1,NumTaxiNodes() do
				x,y=TaxiNodePosition(i)
				x,y=floor(x*1000),floor(y*1000)
				if x < 100 then x = "0"..x end
				if y < 100 then y = "0"..y end
				name=TaxiNodeName(i)

				if GetNumRoutes(i)==1 then
					s= s..("		[\""..x..":"..y.."\"]".." = time, --"..name.."\n")
				elseif GetNumRoutes(i)==0 then
					s=("--[\""..x..":"..y.."\"]".." = time, --"..name.."\n".."[\""..x..":"..y.."\"]".." = {\n	[\"name\"] = \""..name.."\",\n	[\"neighbors\"] = {\n")..s
				end
			end
			s=s.."	},\n},"
			ZGV:ShowDump(s,"Paste these into LibTaxi data.lua into data.flightcost")
		end
	--]]

	--[[ UNUSED? not even for DEV!
		function Lib:DumpAllFlights()

			local s = ""

			for i=1,NumTaxiNodes() do
				x,y=TaxiNodePosition(i)
				x,y=floor(x*1000),floor(y*1000)
				if x < 100 then x = "0"..x end
				if y < 100 then y = "0"..x end
				name=TaxiNodeName(i)

				s=s..("--[\""..x..":"..y.."\"]".." = time, --"..name.."\n".."[\""..x..":"..y.."\"]".." = {\n	[\"name\"] = \""..name.."\",\n	[\"neighbors\"] = {\n").."},\n},\n"
			end
			ZGV:ShowDump(s)
		end
	--]]

	function Lib:GetTaxiByTarget()
		local id = UnitGUID("target")  if not id then return end
		id = id:match("Creature%-%d+%-%d+%-%d+%-%d+%-(%d+)")  if not id then return end
		id=tonumber(id)
		for c,cont in pairs(Lib.taxipoints) do
			for z,zone in pairs(cont) do
				for ni,node in pairs(zone) do
					if node.npcid==id then return node end
				end
			end
		end
	end

	function Lib:DumpTaxiByTarget()
		local node = self:GetTaxiByTarget()
		if node then
			print("You're at: "..node.name..", a"..(node.known and " known" or "n unknown").." taxi.")
		else
			print("I have no idea what taxi point you're at.")
		end
	end

	function Lib:LearnCurrentTaxi(if_unlearn)
		local learn=true  if if_unlearn==false then learn=false end
		local node = self:GetTaxiByTarget()
		if node then
			node.known=learn
			Lib.master[node.name]=learn
			self:Debug("%slearned by node, %s",(learn and "" or "un"),node.name)
		else
			local name = GetMinimapZoneText()
			name = Lib.TaxiNames_English[name]
			if not name then
				self:Debug("|cffff8888Taxi Error: Unknown zone "..GetMinimapZoneText().."|r")
				return
			end
			name = minimap_exceptions[name] or name
			Lib.master[name]=learn
			node=self:FindTaxi(name)
			if node then
				node.known=learn
				self:Debug("%slearned by map, node %s, map %s",(learn and "" or "un"),node.name,GetMinimapZoneText())
			else
				self:Debug("Something failed, map is %s but can't find a taxi here",GetMinimapZoneText())
			end
		end
	end

	function Lib:TestAllFlights()
		local s = ""

		for i=1,NumTaxiNodes() do
			local x,y=TaxiNodePosition(i)
			x,y=floor(x*1000),floor(y*1000)
			if x < 100 then x = "0"..x end
			if y < 100 then y = "0"..y end
			local name=TaxiNodeName(i)
			local ttag = x..":"..y

			local BZ = LibStub("LibBabble-SubZone-3.0")
			local BZL,BZR = BZ:GetUnstrictLookupTable(),BZ:GetReverseLookupTable()

			local tagmatch = Lib:FindTaxiByTag(GetCurrentMapContinent(),ttag)

			if not tagmatch then
				s = s.."\n"..ttag.." - No tag match - "..i
			end

		end
		ZGV:ShowDump(s)
	end

	function Lib:Debug(s,...)
		if ZGV and ZGV.db then ZGV:Debug("&LibTaxi "..s,...) end
	end



	--[[
	function Lib:ConvertTag(typ,a,b,c)
		if typ=="raw" then
			return tonumber(("%d:%0d:%0d"):format(a,math.ceil(b*100),math.ceil(c*100)))
		elseif typ=="fme" then
			return a
		end
	end
	--]]

	--[[
	function Lib:TestCurrent()
		for node=1,NumTaxiNodes() do
			local typ=TaxiNodeGetType(node)
			if typ=="CURRENT" then
				local x,y = TaxiNodePosition(node)
				x=Math.floor(
		end
	end
	--]]

	_G['LibTaxi']=Lib



end