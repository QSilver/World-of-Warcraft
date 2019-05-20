local ZGV = ZygorGuidesViewer
if not ZGV then return end
local L = ZGV.L

local table,string,tonumber,ipairs,pairs,setmetatable = table,string,tonumber,ipairs,pairs,setmetatable

local Goal = { }
ZGV.GoalProto = Goal
ZGV.GoalProto_mt = { __index=Goal }


local split = function (div,text)
	local res={}
	repeat
		local pos = text:find(div)
		if pos then
			table.insert(res,text:sub(1,pos-1))
			text=text:sub(pos+1)
		end
	until not pos
	table.insert(res,text)
	return unpack(res)
end

function Goal:New(data)
	setmetatable(data,ZGV.GoalProto_mt)
	return data
end

Goal.indent=0

local Astrolabe = DongleStub("Astrolabe-ZGV")

local MACROICON_TALK = 0 -- INVISIBLE! -- 378
local MACROICON_KILL = 0 -- INVISIBLE! Let our icons shine through. Otherwise, it'd be "ABILITY_DUALWIELD".
local MACROICON_MISC = "INV_MISC_QUESTIONMARK" --656
-- Bleh, under 5.0.4 the "1"s are no longer playing nice, can't just make a fake texture and hope for it to be transparent. Sigh.

local BZ = LibStub("LibBabble-SubZone-3.0")
local BZL,BZR = BZ:GetUnstrictLookupTable(),BZ:GetReverseLookupTable()

local GOALTYPES = {}
ZGV.GOALTYPES = GOALTYPES
local empty_table={}
setmetatable(GOALTYPES,{__index=function() return empty_table end})

local _

-- returns: current, needed, remaining
local function GetQuestGoalData(questid,objnum,count)
	local questdata,goaldata,goalcountnow,goalcountneeded,remaining
	questdata=ZGV.questsbyid[questid]
	if not questdata or not questdata.inlog or not objnum then return end

	-- quest-goal completion display; lame 0/5
	goaldata = questdata.goals[objnum]
	if not goaldata then return end

	goalcountneeded = min(count or 9999,goaldata.needed or 9999)
	goalcountnow = goaldata.num
	remaining = goalcountneeded-goalcountnow
	if remaining<=0 then remaining=goalcountneeded end

	return goalcountnow,goalcountneeded,remaining
end

-- returns: current, needed, remaining
local function GetScenarioGoalData(criteriaid,count)
	if not C_Scenario.IsInScenario() then return 0,count or 0,count or 0,nil,"not in scenario" end
	if count==0 then count=nil end
	local needed,remaining
	local name, currentStage, numStages,  n1,b1,b2,b3,n2,n3 = C_Scenario.GetInfo()
	for stepi=1,30 do
		local stageName, stageDescription, numCriteria, isFailed,isBonus,isCurrentOnly  = C_Scenario.GetStepInfo(stepi)
		if stageName then
			for crit=1,numCriteria do
				local criteriaString, criteriaType, criteriaCompleted, quantity, totalQuantity, flags, assetID, quantityString, criteriaID = C_Scenario.GetCriteriaInfoByStep(stepi,crit)
				if criteriaID==criteriaid then
					if stepi>currentStage and stepi<=numStages and not isBonus then  return  0,count or 0,count or 0,nil,"future goal, for step "..stepi.." > current "..currentStage  end   -- it's a valid stage, but in the future - force grayed!
					if not totalQuantity or totalQuantity==0 then totalQuantity=1 end
					needed = min(count or 9999,totalQuantity)
					return quantity,needed,needed-quantity,criteriaString,nil
				end
			end
		end
	end
	return 0,count or 0,count or 0, nil,"bad goal id"
end

-- returns: current, needed, remaining
local function GetAchievementGoalData(achieveid,criteria)
	if not (achieveid or criteria) then return 0,0,0 end

	local numCriteria = GetAchievementNumCriteria(achieveid) --safety check.
	if criteria > numCriteria then return 0,0,0 end

	local desc, _, completed, quantity, requiredQuantity  = GetAchievementCriteriaInfo(achieveid, criteria)
	if desc then
		return quantity,requiredQuantity, requiredQuantity - quantity
	end

	return 0,0,0
end




function Goal:GetStatus()
	if not self.prepared then self:Prepare() end

	if not self:IsVisible() then return "hidden" end
	if not self:IsCompleteable() then return "passive" end
	local complete,possible,progress,warn,isbad = self:IsComplete()
	if complete then return "complete" end
	-- FIRST impossible (gray), THEN obsolete (blue).
	if isbad then return "warning" end
	if not possible then return "impossible" end
	if ZGV.db.profile.skipobsolete and not self.parentStep.parentGuide.noobsolete and self:IsObsolete() then return "obsolete" end
	-- only possible and progressing is left.
	return "incomplete",progress
end

function Goal:UpdateStatus()
	self.status = self:GetStatus()
	return self.status
end

function Goal:IsVisible()
	--if ZGV.db.profile.showwrongsteps then return true end
	if not self:IsFitting() then return false end
	if self.hidden then return false end
	if self.condition_visible then
		if self.condition_visible_raw=="default" then
			-- oo, special case: show this only if no others are visible!
			for i,goal in ipairs(self.parentStep.goals) do
				if goal~=self and goal.condition_visible and goal:IsVisible() then return false end
			end
			return true
		else
			ZGV.Parser.ConditionEnv._SetLocal(self.parentStep.parentGuide,self.parentStep,self)
			return self.condition_visible()
		end
	end
	return true
end


local _c = { "goal","kill","get","accept","turnin","collect","buy","fpath","home","ding","havebuff","nobuff","invehicle","outvehicle","equipped","rep","condition","achieve","create","skill","skillmax","learn","learnspell","learnpet","learnmount","confirm","earn","fly","complete" }
local completable = {}
for i=1,#_c do completable[_c[i]]=true end

function Goal:IsCompleteable()
	--if type(goal)=="number" then goal=self.CurrentStep.goals[goal] end
	if self.force_nocomplete then return false end

	if self.questid --[[and self.objnum--]] then return true end
	if self.scenario_criteriaid then return true end  --scenario
	if self.achieveid then return true end

	if self.action=="from"
	or self.action==""
	or (self.action=="goldcollect" and not self.demand)
	then return false end

	local GOALTYPE=GOALTYPES[self.action]
	if (GOALTYPE and GOALTYPE.iscomplete and not GOALTYPE.default_not_completable) or completable[self.action] then return true end

	if self.action=="goto" then
		-- this one is tricky.
		-- by default - completeable only if only 'goto' goals are present.
		local all_gotos=true
		for i,goal in ipairs(self.parentStep.goals) do
			if goal.action~="goto" then
				all_gotos=false
				break
			end
		end
		return (self.force_complete or all_gotos)
	end
	return false
end

local goalstring_slain=QUEST_MONSTERS_KILLED:gsub(": .*","")

-- returns: true = complete, false = incomplete
-- second return: true = completable, false = incompletable
function Goal:IsComplete()
	if ZGV.CurrentGuide and (ZGV.db.char.guideTurnInsOnly == ZGV.CurrentGuide.title) then
		if self.action~="turnin" then
			return false,false 
		end
	end
	
	if (self.force_sticky and ZGV.recentlyCompletedGoals[self])
		or ZGV.recentlyStickiedGoals[self]
		or self:WasSavedStickyComplete()
		or self.fake_complete then
		return true,true,true
	end
	
	--if self.map then
	self:CheckVisited() 
	--end  -- TODO: this is a bad place to call other checks.

	if not self:IsCompleteable() then return false,false, nil,"not completable" end

	if self.force_nocomplete then return false,false, nil,"forced not completable" end

	if self.countexprfun then
		ZGV.Parser.ConditionEnv._SetLocal(self.parentStep.parentGuide,self.parentStep,self)
		local res,err = pcall(self.countexprfun)
		if res then self.count=err else error("Error in step ".. self.parentStep.num .. " goal " .. self.num .. " count expression: "..err) end
	end

	if self.updatescriptfun then
		ZGV.Parser.ConditionEnv._SetLocal(self.parentStep.parentGuide,self.parentStep,self)
		local res,err = pcall(self.updatescriptfun)
		if res then self.count=err else error("Error in step ".. self.parentStep.num .. " goal " .. self.num .. " updatescript: "..err) end
	end


	-- Handle accepts and turnins first.

	if self.action=="accept" or self.action=="turnin" then return GOALTYPES[self.action].iscomplete(self) end



	-- Achievement-related?

	if self.achieveid then
		-- oh gods. The below, redux.

		if self.count and not self.achievesub then self.achievesub=1 end
		
		if self.achievesub then
			if GetAchievementNumCriteria(self.achieveid) < self.achievesub then -- Causes errors when blizzard changes crap.
				ZGV:Debug("Guide "..self.parentStep.parentGuide.title.." goal "..self.num.." cannot load: achievement "..self.achieveid.." Criteria: "..self.achievesub.." doesn't exist.")
				return false, true
			end

			local description, ctype, completed, quantity, required = GetAchievementCriteriaInfo(self.achieveid, self.achievesub)

			if self.count and quantity>=self.count then  completed=true  required=self.count  end
			
			if required ~= 0 then
				return completed, true, (quantity or 0) / (required or 1), "achieve sub"
			else
				return completed, true, (quantity or 0) , "achieve sub" -- Because no division by 0! ~~Jeremiah
			end

		else
			local id, name, points, completed = GetAchievementInfo(self.achieveid)

			if completed then return true,true, nil,"achieve" end

			-- else fall-through, so that completion progress can show.
		end

	end


	-- Quest-related? Handle appropriately.

	if self.questid then
		local iscomplete,ispossible,progress,comment,isbad = GOALTYPES['q'].iscomplete(self)
		if comment~="FALLTHROUGH" then
			return iscomplete,ispossible,progress,comment,isbad
		else
			-- well... fall through!
		end

	end


	if self.scenario_criteriaid then -- handle scenarios
		local iscomplete,ispossible,progress,comment,isbad = GOALTYPES['scenariogoal'].iscomplete(self)
		return iscomplete,ispossible,progress,comment,isbad
	end

	
	-- Use the individual goal completion routine

	local GOAL = GOALTYPES[self.action]
	if GOAL and GOAL.iscomplete then
		local iscomplete,ispossible,progress,comment,isbad = GOAL.iscomplete(self)
		return iscomplete,ispossible,progress,"fallback '".. self.action .. (comment and "': ".. comment  or  ""),isbad
	end

	return false,false, nil , "complete check failed"
end

function Goal:CheckVisited()
	if self.map then
		local isvisited = GOALTYPES['goto'].iscomplete(self)  -- "test as if it's a goto step"
		if isvisited and not self.was_visited then
			if self.status=="incomplete" then return end -- abort if it's a red incomplete line. These get really "visited" when they're complete.
			self:OnVisited()
		elseif not isvisited and self.was_visited then
			self:OnDevisited()
		end
		self.was_visited=isvisited
	end
end

function Goal:OnVisited()
	self.parentStep.current_waypoint_goal_num = self.num
	ZGV.Pointer:CycleWaypoint(1,"no cycle")
end

function Goal:OnDevisited()
	--print(CS.current_waypoint_goal_num)
	--ZGV.Pointer:RemoveWaypoint(self.waypoint) ZGV:SetWaypoint()  -- that's bullshit...
end

function Goal:GetWaypoint()
	if not self.waypoint then return end
	for k,v in ipairs(ZGV.Pointer.waypoints) do
		if v==self.waypoint then return v end
	end
end


-- Sorta kinda similar to Utils.IsPOIComplete() in ESO, but not really . . .
function Goal:IsPOIComplete(args)
	return true
end

local function COLOR_LOC(s) return "|cffffee77"..tostring(s).."|r" end
local function COLOR_COUNT(s) return "|cffffffcc"..tostring(s).."|r" end
local function COLOR_ITEM(s) return "|cffaaeeff"..tostring(s).."|r" end
local function COLOR_QUEST(s) return "|cffeebbff"..tostring(s).."|r" end
local function COLOR_NPC(s) return "|cffaaffaa"..tostring(s).."|r" end
local function COLOR_MONSTER(s) return "|cffffaaaa"..tostring(s).."|r" end
local function COLOR_GOAL(s) return "|cffffcccc"..tostring(s).."|r" end
local function COLOR_BOLD(s) return "|cffffee55"..tostring(s).."|r" end


local function plural(s,i)
	if not i or i==1 then return s else return ZygorGuidesViewer_L("Specials")["plural"](s) end
end

local function GenericText(brief,goaltype,colorfunc,count,target,nocount,isplural,_done)
	if nocount or not count or count==0 then
		local formattxt = brief and "%s" or L["stepgoal_"..goaltype.._done]
		return formattxt:format(colorfunc(plural(target,isplural and 2 or 1)))
	else
		local formattxt = brief and "%s %s" or L["stepgoal_"..goaltype.." #".._done]
		return formattxt:format(count or "?",colorfunc(plural(target,count)))
	end
end


local ParseID = ZGV.Parser.ParseID
local ParseMapXYDist = ZGV.Parser.ParseMapXYDist

GOALTYPES['talknpcs'] = {
	parse = function(self,params)
		self.dynamicwaypoint = true
		self.npcids = {}
		self.foundnpcs = {}
		local index=1
		for word in string.gmatch(params, '([^,]+)') do
			self.npcids[index] = word
			index=index+1
		end

		local npcid, npcdata, npcrawdata

		local npccounter = 1
		for npcrawdata in ZGV.NPCData.raw:gmatch"[^\n]+" do
			for id,val in npcrawdata:gmatch('(%d+)=(.*)') do
				npcid = id
				npcdata = val
			end

			for datasetindex,datasetid in pairs(self.npcids) do
				if tonumber(npcid) == tonumber(datasetid) then
					temp = ZGV.NPCData.parseNPC(npcdata)
					self.foundnpcs[npccounter] = {m=temp.m, x=temp.x/100, y=temp.y/100, id=tonumber(npcid)}
					npccounter = npccounter + 1
				end
			end
		end
	end,

	gettext = function(self)
		if self.npcid then
			return L["stepgoal_talk to"]:format(COLOR_NPC(ZGV.Localizers:GetTranslatedNPC(tonumber(self.npcid))))
		else
			return "Calculating..."
		end
	end,

	onclick = function(self)
		ZGV:Debug("Dynamic waypoint set clicked")
	end,
		
	onenter = function(self)
		self.npcid = false
		self.lastcallm = 0

		local more_points = {}
		for i=1,#self.foundnpcs do
			local w=self.foundnpcs[i]
			more_points[#more_points+1]={m=w.m,f=w.f,x=w.x,y=w.y,title=w.title}
		end

		b = self.foundnpcs[1]
		if not b then return false end

		ZGV:Debug("talknpcs: Calling librover with "..tostring(#more_points).." points")
		LibRover:QueueFindPath(0,0,0,0, b.m,0,b.x,b.y, GOALTYPES[self.action].onLibRoverResults, {goal=self, direct=not ZGV.db.profile.pathfinding, multiple_ends=more_points })
	end,

	onLibRoverResults = function(state, path, ext)
		if state == "success" then
			self = ext.goal
			ZGV:Debug("talknpcs: Ok, got data back")

			
			local last = #path
			local found = {}
			found.f = path[last].f
			found.m = path[last].m
			found.x = path[last].x * 100
			found.y = path[last].y * 100

			local npcid, npcdata, npcline, temp
			self.map, self.f, self.x, self.y = path[last].m, path[last].f, path[last].x, path[last].y
			self.waypoint = Goal:GetText()

			for _,npcdata in pairs(self.foundnpcs) do
				if npcdata.m == found.m and npcdata.x*100 == found.x and npcdata.y*100 == found.y then
					self.npcid = tostring(npcdata.id)

					self.guidestring = "talk "..tostring(npcdata.id).."|goto "..tostring(self.m).." "..tostring(self.x)..","..tostring(self.y)
					self.npcm = tostring(npcdata.m)
					self.npcx = tostring(npcdata.x)
					self.npcy = tostring(npcdata.y)

				end
			end
		end
	end,
}



GOALTYPES['_item'] = {
	parse = function(self,params)
		local count,objinfo,objid
		local obj = ""

		-- 4 Itemname##id
		count,objinfo = params:match("^([0-9]*)%s*(.*)$")
		if not count then
			objinfo = params
		end

		local function parse(str)
				-- check for plural
				local name,plural = str:match("^(.+)(%+)$")
				if plural then
					str = name
				end

				local tar, tarid = ParseID(str)

				if plural and tar then
					tar = ZygorGuidesViewer_L("Specials").plural(tar)
				end

			return tar,tarid
		end

		self.count = tonumber(count)

		local mult = {split(",",objinfo)}
		if #mult > 1 then
			local targets = {}
			self.targets = targets
			for i,info in ipairs(mult) do
				-- Name##Id are split, parse each individually and then put it in the targets table.

				local tar,tarid = parse(info)

				tinsert(targets,{tar,tarid})

				objid = objid or tarid	-- TODO only the first targetid is returned. This isn't an issue 3/1/14 but if we strip out english names then will have to use multiple ids to create the obj.

				if tar then
					obj = obj .. tar .. (i<#mult and ", " or "")	-- Append the target name to the obj, if not the last one then include a ,
				end
			end
		else
			obj, objid = parse(objinfo)
		end

		self.target,self.targetid = obj,objid

		-- something missing?
		if not self.targetid and not self.target then return "no parameter" end
	end
}

GOALTYPES['collect'] = {
	parse = GOALTYPES['_item'].parse,
	iscomplete = function(self)
		if not self.targetid then return false,true end -- no known item... what the...
		if not self.count or self.count==0 then self.count=1 end  -- completable? has to have a count.
		local got = GetItemCount(self.targetid)
		if self.more then got=max(0,got-self.more_base) end
		local progress = got/self.count
		if self.exact then
			return got==self.count, true, got<=self.count and progress or 0
		else
			return got>=self.count, true, progress>1 and 1 or progress
		end
	end
}

GOALTYPES['craft'] = GOALTYPES['collect']	-- for correct text display
GOALTYPES['farm'] = GOALTYPES['collect']	-- in dynamic gold craft guides


GOALTYPES['goldcollect'] = {
	parse = GOALTYPES['_item'].parse,
	iscomplete = function(self)
		if not self.targetid then return false,true end -- no known item... what the...
		if not self.demand then return false,true end	-- Should not get to this point... Block this in IsCompleteable. 
		local got = GetItemCount(self.targetid)
		local progress = got/self.demand
		if self.exact then
			return got==self.demand, true, got<=self.demand and progress or 0
		else
			return got>=self.demand, true, progress>1 and 1 or progress
		end
	end
}

GOALTYPES['goldtracker'] = {
	parse = function() end,
	gettext = function(self)
		local step = self.parentStep
		local totalvalue = 0
		for i,goal in pairs(step.goals) do
			if goal.action == "goldcollect" then
				local numInBags = GetItemCount(goal.targetid) or 0
				local _, _, itemRarity, _, _, _, _, _, _, _, itemSellPrice = GetItemInfo(goal.targetid)

				if itemSellPrice and itemRarity and itemRarity==0 then
					-- Thus is trash, price as vendor trash.
					totalvalue = totalvalue + itemSellPrice * numInBags
				elseif ZGV.Gold.servertrends and ZGV.Gold.servertrends.items[goal.targetid] and ZGV.Gold.servertrends.items[goal.targetid].p_lo then
					-- GetPrice only gets today's price, and there may be gaps. Check server trends first. ~~ Jeremiah
					totalvalue = totalvalue + ZGV.Gold.servertrends.items[goal.targetid].p_lo * numInBags
				else
					totalvalue = totalvalue + ZGV.Gold.Scan:GetPrice(goal.targetid) * numInBags
				end
			end
		end

		return L['stepgoal_goldtracker']:format(GetMoneyString(totalvalue))
	end,
}

GOALTYPES['buy'] = {
	parse = function(self,params)
		-- assume buys are futureproof
		self.future=true
		return GOALTYPES['_item'].parse(self,params)
	end,
	iscomplete = GOALTYPES['collect'].iscomplete
}

GOALTYPES['kill'] = {
	parse = GOALTYPES['_item'].parse,
	iscomplete = function(self)
		if self.usekillcount then --killcount version
			local count = ZGV.recentKills[self.target]
			return count and count>=self.count, true, min(count/(self.count or 1),1)
		end
		-- otherwise let it complete as any quest objective: by default.
	end
}

GOALTYPES['avoid'] = {
	parse = GOALTYPES['_item'].parse,
	-- let it complete as any quest objective: by default.
}

GOALTYPES['get'] = {
	parse = GOALTYPES['_item'].parse,
	-- let it complete as any quest objective: by default.
}

GOALTYPES['goal'] = {
	parse = GOALTYPES['_item'].parse,
	-- let it complete as any quest objective: by default.
}

GOALTYPES['confirm'] = {
	parse = function(self,params)
		self.always = (params == "always")
		self.optional = true
		self.was_clicked = false
	end,
	iscomplete = function(self)
		return self.was_clicked,true
	end,
	click_to_complete = true
}

local profSkillID = ZGV.skillIDs

GOALTYPES['learn'] = {
	parse = function(self,params)
		self.recipe,self.recipeid = ParseID(params)
		if not self.recipeid then return "'learn': no recipe found" end
	end,
	iscomplete = function(self)
		if self.recipe and ZGV.recentlyLearnedRecipes[self.recipe] then 
			return true,true
		elseif self.recipeid then
			for id,data in pairs(ZGV.db.char.RecipesKnown) do
				if type(data)=="table" and data[self.recipeid] then return true,true end
			end
		end
		return false,true -- not found
	end
}

GOALTYPES['learnmount'] = {
	parse = function(self,params)
		self.spell,self.spellid = ParseID(params)
	end,
	iscomplete = function(self)
		for i=1,GetNumCompanions("MOUNT") do
			 local id,name,spell = GetCompanionInfo("MOUNT",i)
			 if spell==self.spellid then return true,true end
		end
		return false,true
	end
}

GOALTYPES['learnpet'] = {
	parse = function(self,params)
		self.pet,self.petid = ParseID(params) --not actually used...
	end,
	iscomplete = function(self)
		local ZGspeciesID = self.parentStep.parentGuide.petSpeciesID --This is a number we input
		if not ZGspeciesID then return false,true end

		local numCollected, limit = C_PetJournal.GetNumCollectedInfo(ZGspeciesID)
		return ((numCollected or 0) > 0),true
	end
}

GOALTYPES['learnspell'] = {
	parse = function(self,params)
		self.spell,self.spellid = ParseID(params)
	end,
	iscomplete = function(self)
		return IsSpellKnown(self.spellid), true
	end
}

GOALTYPES['accept'] = {
	parse = function(self,params)
		self.action = self.action or cmd
		if not params then return "no quest parameter" end
		self.quest,self.questid = ParseID(params)
		if self.quest then
			local q,qp = self.quest:match("^(.-)%s-%((%d+)%)$")
			if q then self.quest,self.questpart=q,qp end
		end
		if not self.quest and not self.questid then return "no quest parameter" end

		if self.questid then
			ZGV.mentionedQuests[self.questid] = 1
			--[[  -- this is obsolete SIS stuff anyway
			if not step.level then return "Missing step level information" end
			local lev = ZGV.mentionedQuests[self.questid]
			if guide.dynamic then
				if not lev or lev<step.level then lev=step.level end
			else
				if not lev then lev=-1 end
			end
			ZGV.mentionedQuests[self.questid] = lev
			--]]
		end
	end,
	iscomplete = function(self)
		local quest = ZGV.questsbyid[self.questid]
		local complete = (ZGV.completedQuests[self.questid] and not self.repeatablequest)
		    or (ZGV.recentlyCompletedQuests[self.questid] or ZGV.recentlyCompletedQuests[self.quest])
		    or (quest and quest.inlog)
		    -- or ZGV.instantQuests[self.questid]  -- and ZGV.completedQuestTitles[self.quest])  -- let's not use this anymore, with GetQuestID available
		    -- or (not ZGV.CurrentGuide.daily and ZGV.db.char.permaCompletedDailies[self.questid])  -- deprecating this, let's see if this works.

		return complete, complete or ZGV:IsQuestPossible(self.questid)     --[[or ZGV.recentlyAcceptedQuests[id] --]]
	end
}

GOALTYPES['turnin'] = {
	parse = GOALTYPES['accept'].parse,
	iscomplete = function(self)
		--[[ Completion sequence:
								ZGV.completedQuests[id]		ZGV.questsbyid[id]
		 1. CHAT_MSG_SYSTEM "<quest> completed."	nil				{...}
		     - ZGV.completedQuests[id] = true		true				{...}
		 2. QUEST_LOG_UPDATE, quest gone from log.	true				nil

		--]]

		-- Completed if it's in the completed bin, but NOT in the log.
		-- If it's in the log, it couldn't be completed; this fixes some weird multiple-completion quests, like #348 Stranglethorn Fever.
		-- completeable if it's in the log and complete or non-goaled.

		local quest = ZGV.questsbyid[self.questid]
		local turned = ZGV.completedQuests[self.questid]
					and (not quest or not quest.inlog) -- Repeatables might be completed and in the log at the same time. We need to complete only when they're not in the log anymore.

			-- or (not ZGV.CurrentGuide.daily and ZGV.db.char.permaCompletedDailies[self.questid])

		return turned, turned or (quest and quest.inlog and (quest.complete or #quest.goals==0)), 0, not turned and quest and quest.inlog and not quest.complete and #quest.goals>0
	end
}

GOALTYPES['q'] = {
	parse = function(self,params,step)
		--local first=params:match("^(.-),")
		--if first then params=first end
		-- removed on 2014-08-27, who in their right mind would put several quests in one |q ?
		self.quest,self.questid,self.objnum = ParseID(params)
		if not self.questid then return "|q: no questid in parameter" end
		if self.action=="text" then self.action="q" end  -- override plaintext actions. A bit of a hack...
	end,
	iscomplete = function(self)
		-- NEW: if it's a goddamn instant daily, try to reset it.
		--if ZGV.instantQuests[self.questid] and ZGV.dailyQuests[self.questid] then ZGV:QuestTracking_ResetDailyByTitle(self.quest) end

		-- if the quest was done, the goal is done and over with. Bye.
		if ZGV.completedQuests[self.questid] then return true,true,nil,"quest complete" end

		-- if the quest cannot be completed, and we're not a futureproof goal, bail.
		--if not ZGV:IsQuestPossible(self.questid) and not self.future then return false,false end

		-- okay, so the quest may yet be possible. Is it in the log?
		local quest = ZGV.questsbyid[self.questid]
		if quest and quest.inlog then

			-- Now if it is goalbound, complete it as the goal would.
			if self.objnum then
				local questGoalData = quest.goals[self.objnum]

				if questGoalData then
					if questGoalData.complete then
						return true, true, nil,  "quest goal complete"
					else
						local count = self.count or questGoalData.needed or 1
						if count==0 then count=1 end
						if questGoalData.num>=count then
							return true, true, nil,  "quest goal num over count"
						else
							--ZGV:Debug("Not yet completed: "..questself.num.."/"..questgoal.needed)
							return false, true, questGoalData.num/count, "quest goal num below count"
						end
					end
				else
					-- As of 6.0.2, this can happen normally on multi-goal quests. Future goals will NOT be accessible.
					--ZGV:Print("WARNING: quest has no such goal! Step "..self.parentStep.num..", line "..(self.num)..", quest "..(self.questid or (self.quest and self.quest.title))..", goal "..(self.objnum or -1))
					return false, false, nil, "no such goal"
				end
				assert(false,"WTF, not supposed to reach this!")
			else
				-- bound to quest, not to quest objective?
				if not self.action or self.action=="" or self.action=="complete" then
					-- okay, this is a simple "complete the quest" check
					return quest.complete, true, nil,"quest completion"
				else
					return false,false,nil,"FALLTHROUGH"
				end
				-- otherwise... just drop from here.

				--[[
				if questInLog.complete or #questInLog.goals==0 then
					return true,true
				else
					-- otherwise drop through, let it complete on its own.
				end
				--]]
			end
		else
			-- if quest is not in log, then it usually means screw its links as well.
			-- Unless we're a future-proof goal, which drops through.
			if not self.future then
				return false,false , nil, "quest not in log"
			else
				return false,false,nil,"FALLTHROUGH"
			end
		end
	end
}

GOALTYPES['quest']=GOALTYPES['q']

GOALTYPES['noquest'] = {
	parse = function(self,params,step)
		self.npc,self.npcid=ParseID(params)
		if not self.npcid then
			-- grab an npc from any goal in the step
			for gi,goal in ipairs(step.goals) do
				if goal.npcid then self.npcid=goal.npcid break end
			end
		end
		self.sticky=true
		self.override=true
	end,
	iscomplete = function(self)
		if ZGV.GetTargetId()==self.npcid then
			if GossipFrame:IsShown() then
				local noquests=true
				local DATA_IN_GOSSIP=6  -- 5.2: name, level, isTrivial, isDaily, isRepeatable, isLegendary
				for qnum=1,GetNumGossipAvailableQuests() do
					local name,level,isTrivial,isDaily,isRepeatable,isLegendary = select((qnum-1)*DATA_IN_GOSSIP+1,GetGossipAvailableQuests())
					if isDaily then noquests=nil break end  -- one daily breaks it
				end
				local DATA_IN_GOSSIP=5  -- 5.2: name, level, isTrivial, isComplete, isLegendary
				for qnum=1,GetNumGossipActiveQuests() do
					local name,level,isTrivial,isComplete,isLegendary = select((qnum-1)*DATA_IN_GOSSIP+1,GetGossipActiveQuests())
					if isComplete then noquests=nil break end  -- one complete breaks it
				end
				if noquests then CloseGossip() end
				return noquests, true
			elseif QuestFrameGreetingPanel:IsShown() then
				local noquests=true
				for qnum=1,GetNumAvailableQuests() do
					local isTrivial,isDaily,isRepeatable = GetAvailableQuestInfo(qnum)
					if isDaily then noquests=nil break end
				end
				if noquests then CloseQuest() end
				return noquests, true
			elseif QuestFrame:IsShown() and ZGV.db.profile.autoaccept and not GetObjectiveText() and not IsQuestCompletable() then -- sitting in an incomplete quest detail
				return true, true
			elseif ZGV.last_questgiver_id==self.npcid and GetTime()-ZGV.last_questgiver_time>1 and GetTime()-ZGV.last_questgiver_time<3 then
					-- no open dialogs, and it's been like 1-3 seconds since we accepted a quest here. MIGHT BE OVERZEALOUS!
				return true, true
			end
			return false, true
		end
		return false,true
	end,
	gettext = function(self)
		return (L["stepgoal_noquest"]):format(COLOR_NPC(ZGV.Localizers:GetTranslatedNPC(self.npcid)))
	end,
	click_to_complete = true,
}

GOALTYPES['scenariostage'] = {
	parse = function(self,params)
		self.scenario_stagenum = tonumber(params)
	end,
	iscomplete = function(self)
		local name, currentStage, numStages = C_Scenario.GetInfo()
		return currentStage and currentStage>self.scenario_stagenum, currentStage>0
	end,
	gettext = function(self	)
		local name, currentStage, numStages = C_Scenario.GetInfo()
		if name and currentStage<=self.scenario_stagenum then
			return L['stepgoal_scenariostage_named']:format(currentStage,name)
		elseif name and currentStage>self.scenario_stagenum then
			return L['stepgoal_scenariostage_done']:format(self.scenario_stagenum)
		else
			return L['stepgoal_scenariostage']:format(self.scenario_stagenum)
		end
	end,
	help = "scenariostage <n>  -- completes when the current scenario has COMPLETED and MOVED PAST stage n. "
}

GOALTYPES['scenariogoal'] = {
	parse = function(self,params)
		local stagenum,rest = params:match("(%d+)%s*/%s*(.*)")
		if stagenum then self.scenario_stagenum=tonumber(stagenum) params=rest end
		local id,num = params:match("(%d+)%s+(%d+)")
		if num then num,id=tonumber(num),tonumber(id) else id=tonumber(params) end
		self.scenario_criteriaid = id
		self.count = self.count or num
	end,
	iscomplete = function(self)
		if self.scenario_stagenum then
			local iscomplete,ispossible = GOALTYPES['scenariostage'].iscomplete(self)
			if iscomplete then return true,true,0, "complete by stage" end
		end
		local current, needed, remaining, text, errortext = GetScenarioGoalData(self.scenario_criteriaid,self.count)
		if errortext then return false,false,nil,errortext,false end
		if needed>0 and self.count and self.count>needed then self.count=needed end
		return (needed>0 and remaining<=0) , needed>0 , current/max(1,needed) , "scenario goal OK",false
	end,
	gettext = function(self)
		local stageName, stageDescription, numCriteria = C_Scenario.GetStepInfo()
		if not stageName then
			-- unknown stage, we're likely not in the scenario
			if self.count then 
				return nil,L['stepgoal_scenariogoal_unknown #']:format(self.count)
			else
				return nil,L['stepgoal_scenariogoal_unknown']:format()
			end
		else
			local num,needed,remaining,text,errortext = GetScenarioGoalData(self.scenario_criteriaid,self.count)
			if errortext then return nil,"bad scenario goal #"..self.scenario_criteriaid..": "..errortext end
			if text then
				if self.count then
					return L['stepgoal_scenariogoal #']:format(text,self.count)
				else
					return L['stepgoal_scenariogoal']:format(text)
				end
			else
				-- whoa, NO goal caught it? Perhaps the wrong stage... too bad.
				if self.count then 
					return nil,L['stepgoal_scenariogoal_unknown_#']:format(self.count)
				else
					return nil,L['stepgoal_scenariogoal_unknown']:format()
				end
			end
		end

		--local text = GenericText(brief,self.action,COLOR_GOAL,remaining or self.count,self.target,not self.count or self.count==1,false,_done)
	end,
	help = "scenariogoal <id> [<count>] -- completes when the scenario goal with <id> has completed (if no <count> given) or reached partial completion (if <count> is given).",
}

GOALTYPES['use'] = {
	parse = function(self,params)
		self.item,self.itemid = ParseID(params)
		self.itemuse=true
		if not self.item and not self.itemid then return "no parameter" end
	end,
}

GOALTYPES['talk'] = {
	parse = function(self,params)
		self.npc,self.npcid = ParseID(params)
		if not self.npc and not self.npcid then return "no npc" end
	end,
}

GOALTYPES['skill'] = {
	parse = function(self,params)
		self.skill,self.skilllevel = params:match("^(.+),(%d+)$")
		self.skilllevel = tonumber(self.skilllevel)
		if not self.skill then return "'skill*': no skill found" end
	end,
	iscomplete = function(self)
		local skill = ZGV:GetSkill(self.skill)
		return skill.level>=self.skilllevel,skill.max>=self.skilllevel
	end
}

GOALTYPES['skillmax'] = {
	parse = function(self,params)
		local err = GOALTYPES['skill'].parse(self,params)
		if err then return err end
		local validlevels={[75]=1,[150]=1,[225]=1,[300]=1,[375]=1,[450]=1,[525]=1,[600]=1,[700]=1}
		if not validlevels[self.skilllevel] then return "skillmax: you can't raise a skill max level to ".. self.skilllevel.."!" end
	end,
	iscomplete = function(self)
		local skill = ZGV:GetSkill(self.skill)
		return skill and skill.max>=self.skilllevel,skill
	end
}

GOALTYPES['create'] = {
	parse = function(self,params)
		local spell,skill,level = params:match("^(.-)%s*,%s*(.-)%s*,%s*(.+)$")
		if spell then
			self.spell,self.spellid = ParseID(spell)
			if self.spell and self.spell:match("^(%d+)") then  self.hiddenCount = tonumber(self.spell:match("^(%d+)")) end --The number might not be there, but if it is gather it for use of testing.
			self.spell = GetSpellInfo(tonumber(self.spellid))

			local castskill
			if skill=="Mining" or skill=="Smelting" then
				self.skill = "Mining"
				castskill = GetSpellInfo(ZGV.skillSpells["Smelting"])
			else
				self.skill = skill
				castskill = GetSpellInfo(ZGV.skillSpells[skill]) or ""
			end

			local total = level:match("(%d+) total")
			if total then
				self.count=tonumber(total)
			else
				self.skilllevel = tonumber(level)
			end

			self.macrosrc = "#showtooltip ".. castskill .."{;}/run CloseTradeSkill(){;}/cast "..castskill.."{;}/run ZGV:PerformTradeSkillGoal({stepnum},{goalnum})"
			-- This is insane, I know. Here we have a macro that will call a function that will call upon the values above. Great and simple... NOT.
		else
			--local spell,num = params:match("^(.-)%s*,%s*([0-9]+)$")
			local num,item = params:match("^([0-9]+)%s+(.+)$")
			self.count = tonumber(num)
			self.item,self.itemid = ParseID(item)
		end
	end,
	iscomplete = function(self)
		if self.count then return GOALTYPES['collect'].iscomplete(self) end
		if not self.skill then return end
		local skill = ZGV:GetSkill(self.skill)
		if self.skilllevel then
			return skill.level>=self.skilllevel,skill.max>=self.skilllevel
		elseif self.count and self.recipedata then
			return GetItemCount(self.recipedata.itemid or 0)>=self.count,true
		end
	end
}

GOALTYPES['condition'] = {
	iscomplete = function(self)
		ZGV.Parser.ConditionEnv._SetLocal(self.parentStep.parentGuide,self.parentStep,self)
		return self.condition_complete and self:condition_complete(),true
	end
}

local invslots = {'AmmoSlot','BackSlot','Bag0Slot','Bag1Slot','Bag2Slot','Bag3Slot','ChestSlot','FeetSlot','Finger0Slot','Finger1Slot','HandsSlot','HeadSlot','LegsSlot','MainHandSlot','NeckSlot','SecondaryHandSlot','ShirtSlot','ShoulderSlot','TabardSlot','Trinket0Slot','Trinket1Slot','WaistSlot','WristSlot'}
GOALTYPES['equipped'] = {
	parse = function(self,params)
		self.target,self.targetid = ParseID(params)
	end,
	iscomplete = function(self)
		if GetItemCount(self.targetid)==0 then return false,false end  -- not even in the bags
		for i,slot in pairs(invslots) do
			local slotid,_ = GetInventorySlotInfo(slot)
			if slotid then
				local id = GetInventoryItemID("player",slotid)
				if id and id==self.targetid then
					return true,true  -- equipped!
				end
			end
		end
		return false,true  -- in bags, not equipped
	end
}

GOALTYPES['rep'] = {
	parse = function(self,params)
		self.faction,self.rep,self.repexp = params:match("^(.-)%s*,%s*(.-),([0-9]-)$")
		if type(self.rep)=="string" then self.rep=ZGV.StandingNamesEngRev[self.rep] end
		if ZGV.BFL[self.faction] then self.faction=ZGV.BFL[self.faction] end
	end,
	iscomplete = function(self)
		local rep = ZGV:GetReputation(self.faction)
		if rep then
			return rep.standing>=self.rep, true, 1-(rep:CalcTo(self.rep)/(rep.max-rep.min)) or 0
		else
			return nil,nil,nil
		end
	end
}

GOALTYPES['invehicle'] = {
	parse = function(self,params) end,
	iscomplete = function(self)
		return UnitInVehicle("player"),true
	end
}

GOALTYPES['outvehicle'] = {
	parse = function(self,params) end,
	iscomplete = function(self)
		return not UnitInVehicle("player"),true
	end
}

GOALTYPES['havebuff'] = {
	parse = function(self,params)
		self.buff = params
	end,
	iscomplete = function(self)
		for i=1,30 do
			local name,_,tex = UnitBuff("player",i)
			if name and (tex:find(self.buff) or name:find(self.buff)) then return true,true end
			local name,_,tex = UnitDebuff("player",i)
			if name and (tex:find(self.buff) or name:find(self.buff)) then return true,true end
		end
		return false,true
	end
}

GOALTYPES['nobuff'] = {
	parse = GOALTYPES['havebuff'].parse,
	iscomplete = function(self)
		for i=1,30 do
			local name,_,tex = UnitBuff("player",i)
			if name and (tex:find(self.buff) or name:find(self.buff)) then return false,true end
			local name,_,tex = UnitDebuff("player",i)
			if name and (tex:find(self.buff) or name:find(self.buff)) then return false,true end
		end
		return true,true
	end
}

GOALTYPES['click'] = {
	parse = function(self,params)
		self.target,self.targetid = ParseID(params)
	end,
}

GOALTYPES['clicknpc'] = {
	parse = function(self,params)
		self.npc,self.npcid = ParseID(params)
	end,
}

GOALTYPES['info'] = {
	parse = function(self,params)
		self.info = params
	end,
}

--[[
GOALTYPES['info'] = {
	parse = function(self,params)
		self.action = self.action or cmd
		self.item,self.itemid = ParseID(params)
		if not self.item and not self.itemid then return "no parameter" end

		-- collect the item into the gear table
		guide.items = guide.items or {}
		guide.items[self.itemid]=self.parentStep.num
	end,
}
-- is this obsolete or what..? ~sinus 2013-03-20
--]]


-- clickable icon displayers

GOALTYPES['cast'] = {
	parse = function(self,params)
		self.castspell,self.castspellid = ParseID(params)
		if not self.castspell and not self.castspellid then return "no parameter" end
	end,
}

GOALTYPES['petaction'] = {
	parse = function(self,params)
		self.petaction = tonumber(params)
		if not self.petaction then self.petaction = params end
		if not self.petaction then return "petaction needs an action number" end
	end,
}

GOALTYPES['home'] = {
	parse = function(self,params)
		self.param = params
		if not self.param then return "no parameter" end
	end,
	iscomplete = function(self)
		--return GetBindLocation("player")==self.home, true  -- didn't work well
		return ZGV.recentlyHomeChanged, true
	end
}

GOALTYPES['hearth'] = {
	parse = function(self,params)
		self.item = "Hearthstone"
		self.itemid = 6948
		self.itemuse = true
		self.param = BZL[params]
		self.force_noway = true
	end,
	iscomplete = function(self)
		return GetZoneText()==self.param or GetMinimapZoneText()==self.param or GetSubZoneText()==self.param, true
	end
}

GOALTYPES['earn'] = {
	parse = function(self,params)
		local count,excl,object = params:match("^([0-9]+)(!?) (.*)")
		self.count = tonumber(count) or 1
		if excl=="!" then self.exact = 1 end
		self.target,self.targetid = ParseID(object)
		if not self.targetid then return "no parameter" end
	end,
	iscomplete = function(self)
		local name,got = GetCurrencyInfo(self.targetid)
		if not name then return end
		local progress = got/self.count
		return got>=self.count, true, progress>1 and 1 or progress
	end
}

GOALTYPES['achieve'] = {
	parse = function(self,params)
		_,self.achieveid,self.achievesub = ParseID(params)
		if not self.achievesub and params:find("/") then self.achieveid = nil end -- They tried to make a sub but did something wrong.
		if not self.achieveid  then
			return "achieveid and achievesub need to be numbers. format |achieve ###/###" 
		end
	end,
	iscomplete = function(self)
		if self.achievesub then
			if GetAchievementNumCriteria(self.achieveid) < self.achievesub then -- Causes errors when blizzard changes crap.
				ZGV:Print("Guide ".. self.parentStep.parentGuide.title .." step ".. self.parentStep.num .." can not load because achievement ".. self.achieveid .." - criteria ".. self.achievesub .." doesn't exist.")
				return false,true,0
			end
			-- partial achievement
			local desc,ctype,completed,quantity,required = GetAchievementCriteriaInfo(self.achieveid,self.achievesub)
			if not required or required==0 then required=1 end
			if not quantity then quantity = 0 end
			if quantity>required then quantity=required end
			return not not completed, true, quantity/required
		else
			-- full achievement
			local id, name, points, completed = GetAchievementInfo(self.achieveid)
			local numcrit = GetAchievementNumCriteria(self.achieveid)
			local completenum = 0
			for i=1,numcrit do
				local desc,ctype,completed,quantity,required = GetAchievementCriteriaInfo(self.achieveid,i)
				if not required or required==0 then required=1 end
				if not quantity then quantity = 0 end
				if quantity>required then quantity=required end
				completenum=completenum+quantity/required
			end
			return not not completed, true, numcrit>0 and completenum/numcrit or 0
		end
	end,
	gettext = function(self)
		if self.achievesub then
			return (L["stepgoal_achievesub"]):format(COLOR_BOLD(select(1,GetAchievementCriteriaInfo(self.achieveid or 0,self.achievesub))),COLOR_BOLD(select(2,GetAchievementInfo(self.achieveid or 0))))
		else
			return (L["stepgoal_achieve"]):format(COLOR_QUEST(select(2,GetAchievementInfo(self.achieveid or 0))))
		end
	end,
}

GOALTYPES['achievetext'] = {
	parse = function(self,params)
		self.achieveid = tonumber(params)
		self.force_nocomplete = true
	end,
	gettext = function(self)
		if self.force_nocomplete then
			return (L["stepgoal_achievetext"]):format(COLOR_BOLD(select(8,GetAchievementInfo(self.achieveid))))
		else
			return select(8,GetAchievementInfo(self.achieveid))
		end
	end,
}

GOALTYPES['ding'] = {
	parse = function(self,params)
		self.level = tonumber(params)
		if not self.level then return "'ding': invalid level value" end
	end,
	iscomplete = function(self)
		local level = ZGV:GetPlayerPreciseLevel()
		local percent = (level<self.level-1) and 0 or (level>=self.level) and 1.0 or UnitXP("player")/UnitXPMax("player")

		return level>=tonumber(self.level), level>=tonumber(self.level)-1, percent
	end
}

GOALTYPES['questchoice'] = {
	parse = function(self,params)
		self.choiceid,self.choice = params:match("(%d+)%s+(%d+)")
		self.choiceid=tonumber(self.choiceid)
		self.choice=tonumber(self.choice)
		if not self.choice then return "questchoice <choiceid> <choice>" end
	end,
	iscomplete = function(self)
		return ZGV.Quest_Choices[self.choiceid] and ZGV.Quest_Choices[self.choiceid]==self.choice, true
	end,

}

GOALTYPES['goto'] = {
	parse = function(self,params,step,prevmap,prevfloor,indoors_flag)
		-- check for the quirky zone tag first
		local pre,zone = params:match('^([not]*zone)%s*(.-)$')
		if pre then
			self.subzonemode = pre=="notzone" and "exit" or "enter"
			self.subzone = BZL[zone] or zone
			return
		end

		local params2,title = params:match('^(.-)%s*"(.*)"')
		if title then params=params2 end

		local map,flr,x,y,dist, err = ParseMapXYDist(params)
		if err then return err end

		self.map,self.floor = (map or self.map or step.map or prevmap), (flr or self.floor or step.floor or prevfloor)
		if not self.map then
			return "'".. (self.action or "?") .."' has no map parameter, neither has one been given before."
		end

		self.x = x or self.x
		self.y = y or self.y
		self.dist = dist or self.dist

		if (self.action=="accept" or self.action=="turnin" or self.action=="kill" 	or self.action=="get" 	or self.action=="talk" 	or self.action=="goal" 	or self.action=="use") then
			self.autotitle = params or self.target or self.quest
		end

		self.is_indoors = indoors_flag

		self.waytitle=title
	end,
	iscomplete = function(self)
		-- Handle enter/exit zone/subzone mechanics.
		if self.subzone then
			local subOK = (GetMinimapZoneText()==self.subzone or GetSubZoneText()==self.subzone or GetRealZoneText()==self.subzone)
			if self.subzonemode=="exit" then subOK=not subOK end
			return subOK,true
		end


		local gm,gf=self.map,self.floor

		-- goto is surely invalid if the current map is not the target.
		-- however, we make a little exception to phased maps which may bug in WoW client
		if ZGV.Pointer:IsEnvironmentPhased(gm) then
			gm,gf=GetCurrentMapAreaID(),GetCurrentMapDungeonLevel()
		elseif ZGV.CurrentMapID and (ZGV.CurrentMapID~=gm or ZGV.CurrentMapFloor~=gf) then
			-- wtf? why the "or ZGV.CurrentMapID~=GetCurrentMapAreaID()" check? It'd bug with any map browsing!
			-- map/floor is DIFFERENT (make it work only with a negative distance, which would mean "leave the zone"
			return self.dist and self.dist<0 , true
		end
		if ZGV.recentlyVisitedCoords[self] then return true, true end

		if self.x then
			local cm,cf,cx,cy = Astrolabe:GetCurrentPlayerPosition()
			if not cm then cm,cf,cx,cy = unpack(Astrolabe.LastPlayerPosition) end
			local gx,gy,dist = self.x,self.y,self.dist or 30
			local realdist=Astrolabe:ComputeDistance(cm,cf,cx,cy,gm,gf,gx,gy)
			if not realdist then
				return false, true
			elseif (dist>0 and realdist<=dist) or (dist<0 and realdist>=-dist) then
				--ZGV.recentlyVisitedCoords[self] = true
				return true, true
			else
				local prog
				if dist>0 then prog = 1-((realdist-dist)/500) else prog = realdist/(-dist+0.1) end
				if prog<0 then prog=0 end
				if prog>1 then prog=1 end
				return false, true, prog
			end
		else
			-- map correct, apparently
			return not self.dist or self.dist>0,true
		end
	end,
	default_not_completable=true
}
GOALTYPES['at'] = GOALTYPES['goto']

GOALTYPES['fly'] = {  -- obsolete, JFTR
	parse = function(self,params)
		local node = LibTaxi:FindTaxi(params)
		if node then
			self.x=node.x
			self.y=node.y
			self.map=node.m
			self.floor= ZGV:SanitizeMapFloor(node.m,node.f)
			self.dist = 50
			self.landing = node.name
			self.title = node.name -- TODO is this safe? ~aprotas
		else
			return "'"..cmd.."' has an unknown landing name '"..params.."'."
		end
	end,
	iscomplete = function(self)
		if not UnitOnTaxi("player") then
			local goalcontinent=Astrolabe:GetMapInfo(self.map or 0,0)
			local continent=Astrolabe:GetMapInfo(ZGV.CurrentMapID,0)
			local epicflyer=IsSpellKnown(34091) or IsSpellKnown(90265) -- Artisan and Master riding respectively

			if (goalcontinent==continent and epicflyer and ZGV.db.profile.skipflysteps) or -- TODO handle the case when they are not
				-- TODO GV-76 point 7 do we discriminate between fliers and nonfliers here?
				(ZGV.CurrentMapID==self.map and not UnitOnTaxi("player") and IsMounted()) then
				--ZGV:Debug("fly advised the player to make use of his own mount")
				-- TODO avoid repetitive debug message
				return true,true
			end
		end
		
		return GOALTYPES['goto'].iscomplete(self)
	end,
	default_not_completable=true
}

GOALTYPES['fpath'] = {
	parse = function(self,params)
		self.fpath = params
		--[[
		if self.param == "GARRISON" then
			local level = C_Garrison:GetGarrisonInfo() or 1
			self.param = L["players_garrison_1"]:format(GetUnitName("player"))
			self.param1 = L["players_garrison_1"]:format(GetUnitName("player"))
			self.param2 = L["players_garrison_2"]:format(GetUnitName("player"))
			self.param3 = L["players_garrison_3"]:format(GetUnitName("player"))
			self.displayname = L["players_garrison_"..level]:format(GetUnitName("player"))
		else 
			self.displayname = self.param
		end
		--]]

		if not self.fpath then return "no parameter" end
	
	end,
	iscomplete = function(self)
		return (   ZGV.db.char.taxis[ZGV.LibTaxi.TaxiNames_English[self.fpath]] 
			or ZGV.db.char.taxis[ZGV.LibTaxi.TaxiNames_English[self.param2]]
			or ZGV.db.char.taxis[ZGV.LibTaxi.TaxiNames_English[self.param3]]), true
	end
}

GOALTYPES['follower'] = {
	parse = function(self,params)
		self.followerid = params
	end,
	iscomplete = function(self)
		return ZGV.Garrison_HasFollower(self.followerid),true
	end
}

GOALTYPES['count'] = {
	parse = function(self,params)
		self.count = tonumber(params)
	end,
}

GOALTYPES['subzone'] = {
	parse = function(self,params)
		self.subzone = params
	end,
}
function Goal:IsDynamic()
	return not not self.dynamicwaypoint
end

function FindPetActionInfo(action)
	if type(action)=="number" then return action,GetPetActionInfo(action) end
	for i=1,12 do
		local name,x,tex = GetPetActionInfo(i)
		if name and (name:find(action) or tex:find(action)) then return i,name,x,tex end
	end
end

function Goal:IsActionable()
	return (self.itemid and (GetItemCount(self.itemid)>0 or not self.itemuse))
	    or (self.castspellid and IsUsableSpell(self.castspellid))
	    or (self.petaction and FindPetActionInfo(self.petaction))
	    or ((self.script or self.macrosrc) and (self.action~="confirm"))
end

function Goal:IsFitting()
	if self.wrong then return nil end
	if not self.requirement then return true end
	self.wrong = not ZygorGuidesViewer:RaceClassMatch(self.requirement)
	return not wrong
end

function Goal:NeedsTranslation()
	--return GetLocale()~="enUS" and not self.L
	return type(self.L)=="number" or not self.L
end

local retries=20
local demandAdjust = 1  -- no adjusting!!
function Goal:AutoTranslate()
	local oldL=self.L
	if self.L==true then return false end
	if not self:IsFitting() then
		-- ignore wrong goals
		self.L=true
	end
	
	self.L = true  -- assume we're translating right
	
	if self.action=="fpath" and ZGV.LibTaxi then
		if ZGV.LibTaxi.TaxiNames_Local then
			self.param = ZGV.LibTaxi.TaxiNames_Local[self.param] or self.param
		end
	end
	if self.questid then
		local q = ZGV.Localizers:GetQuestData(self.questid)
		if q then
			self.quest=q
			if (self.action=='get' or self.action=='kill' or self.action=='goal')
			and not self.targetid and (not self.target or self.target=="?") then
				if q.goals then
					local obj=q.goals[self.objnum]
					if obj and obj.item and obj.item~=" " then
						self.target=obj.item
						self.target = self.target:gsub("^[0-9]+%s+x%s+","") -- 10 x Target
						--self.L=true
					else
						self.Lretries = (self.Lretries or retries) - 1
						self.L=nil -- WHOA.
					end
				else
					self.target="?"
					--self.L=true --sorry...
				end
			--elseif self.action=='accept' or self.action=='turnin' then
				--self.L = true  -- quest title is enough
				--ZGV:Debug("Translated: accept/turnin "..self.quest.." ("..(self.Lretries or 'all').." retries left)")
			--else
				--self.L = true
				--ZGV:Debug("Translated: '"..tostring(self.action).."' "..tostring(self.quest).." ("..(self.Lretries or 'all').." retries left)")
			end

			-- translated a quest - if it's an instant-daily, put it in a special bag
			-- it's used to remove titles from ZGV.db.char.completedQuests if removing the daily ID from completedDailies
			-- ... Not used anymore?
			--[[
			if ZGV.instantQuests[self.questid] and ZGV.dailyQuests[self.questid] then
				ZGV.db.global.instantDailies[self.questid] = qt
			end
			--]]
		else
			self.Lretries = (self.Lretries or retries) - 1
			self.L=nil -- WHOA.
		end
	end
	if self.targetid then
		--[[if QuestInfo_Name then
			local target=QuestInfo_Name[self.targetid]
			if target then
				self.target=target
			end
		--]]
		if self.action=="kill" then
			if ZygorGuidesNPCs then
				local target,tooltip=ZGV.Localizers:GetTranslatedNPC(self.targetid)
				if target then
					self.target,self.tooltip=target,tooltip or self.tooltip
				end
			end
			--self.L=true
			--ZGV:Debug("Translated: '"..tostring(self.action).."' "..tostring(self.target).." ("..(self.Lretries or 'all').." retries left)")
		elseif self.action=="collect" or self.action=="goldcollect" or self.action=="get" or self.action=="buy" or self.action=="use" or self.action=="equipped" then
			if self.action=="goldcollect" then
				local itemdata = ZGV.Gold.servertrends
				if itemdata and itemdata.items and itemdata.items[self.targetid] then
					-- Using q_hi for now because that is the maximum amount of quanity that we want, I assume. Could average q_hi and q_lo if that is better. TBD
					self.demand = floor((itemdata.items[self.targetid].q_hi + itemdata.items[self.targetid].q_lo)/2/demandAdjust)	-- Average and round down.
				end
			end
			local item = GetItemInfo(self.targetid)
			if item then
				self.target=item
				--self.L=true
				--ZGV:Debug("Translated: '"..tostring(self.action).."' "..tostring(self.target).." ("..(self.Lretries or 'all').." retries left)")
			else
				self.Lretries = (self.Lretries or retries) - 1
				self.L=nil -- WHOA.
			end
		end
	end
	if self.itemid then
		local item = GetItemInfo(self.itemid)
		if item then
			self.item = item
		else
			self.Lretries = (self.Lretries or retries) - 1
			self.L=nil -- WHOA.
		end
	end

	if self.npcid then
		local npc,tooltip=ZGV.Localizers:GetTranslatedNPC(self.npcid)
		--if npc then
		--	--self.npc,self.tooltip=npc,tooltip
		--end
		self.tooltip=tooltip or self.tooltip
		--self.npc = self.npc or "?"
		-- NPC will self-translate.
	end
	
	if self.L then
		-- translated? whee.
		if (retries-(self.Lretries or retries) > 0) then ZGV:Debug(("Translating step %d goal %d, try %d - success"):format(self.parentStep.num,self.num,retries-(self.Lretries or retries))) end
		ZGV.frameNeedsUpdating=true
		self.Lretries=nil
		self.Lfail=nil
	else
		-- not yet?
		-- do we have retries left?

		self.Lreasons=""
		if self.itemid then self.Lreasons = self.Lreasons .. " itemid "..self.itemid end
		if self.questid then self.Lreasons = self.Lreasons .. " questid "..self.questid end


		if self.Lretries and self.Lretries>0 then
			-- let it retry
			--ZGV:Debug(("Translating step %d goal %d, try %d..."):format(self.parentStep.num,self.num,retries-(self.Lretries or retries)))
		else
			-- if many translation attempts fail, just leave it.

			--if self.npcid and not self.quest then reasons = reasons .. " (questid "..self.questid..")" end
			ZGV:Debug(("&goal Translating step %d goal %d, tried %d times - failed: %s"):format(self.parentStep.num,self.num,retries-(self.Lretries or retries), self.Lreasons))
			self.L=true  --sorry.
			self.Lfail=true
			self.Lretries=nil
		end
	end

	return oldL~=self.L
end

local simulquest = {
	['goals']={
		{ type="monster",monster="Two Monsters",leaderboard="Monster slain: 0/2",needed=2,num=0 },
		{ type="monster",monster="Two Monsters Again",leaderboard="Two Monsters Again slain: 1/2",needed=2,num=1 },
		{ type="monster",monster="Three Dead Monsters",leaderboard="Three Dead Monsters slain: 3/3",needed=3,num=3 }
	}

}

local unknownquest = {
	title="?"
}


local skillspells = {	--	apprentice	journeyman	expert		artisan		master		grand master	illustrious	zen master	draenor
	Alchemy = {		[75]=2275,	[150]=2280,	[225]=3465,	[300]=11612,	[375]=28597,	[450]=51303,	[525]=80732,	[600]=105208,	[700]=156608,	},
	Archaeology = {		[75]=95553,	[150]=95554,	[225]=95555,	[300]=95556,	[375]=95557,	[450]=95558,	[525]=89727,	[600]=110394,	[700]=158763,	},
	Blacksmithing = {	[75]=2020,	[150]=2021,	[225]=3539,	[300]=9786,	[375]=29845,	[450]=51298,	[525]=76667,	[600]=110398,	[700]=158738,	},
	Cooking = {		[75]=2551,	[150]=3412,	[225]=19886,	[300]=19887,	[375]=33361,	[450]=51295,	[525]=88054,	[600]=104382,	[700]=158766,	},
	Enchanting = {		[75]=7414,	[150]=7415,	[225]=7416,	[300]=13921,	[375]=28030,	[450]=51312,	[525]=74259,	[600]=110401,	[700]=158717,	},
	Engineering = {		[75]=4039,	[150]=4040,	[225]=4041,	[300]=12657,	[375]=30351,	[450]=51305,	[525]=82775,	[600]=110404,	[700]=158740,	},
	['First Aid'] = {	[75]=3279,	[150]=3280,	[225]=19903,	[300]=19902,	[375]=27029,	[450]=50299,	[525]=74560,	[600]=110408,	[700]=158742,	},
	Fishing = {		[75]=7733,	[150]=7734,	[225]=19889,	[300]=19890,	[375]=33100,	[450]=64484,	[525]=88869,	[600]=110412,	[700]=158744,	},
	Herbalism = {		[75]=2372,	[150]=2373,	[225]=3571,	[300]=11994,	[375]=28696,	[450]=50301,	[525]=74520,	[600]=110415,	[700]=158746,	},
	Inscription = {		[75]=45375,	[150]=45376,	[225]=45377,	[300]=45378,	[375]=45379,	[450]=45380,	[525]=86009,	[600]=110418,	[700]=158749,	},
	Jewelcrafting = {	[75]=25245,	[150]=25246,	[225]=28896,	[300]=28899,	[375]=28901,	[450]=51310,	[525]=73319,	[600]=110421,	[700]=158753,	},
	Leatherworking = {	[75]=2155,	[150]=2154,	[225]=3812,	[300]=10663,	[375]=32550,	[450]=51301,	[525]=81200,	[600]=110424,	[700]=158753,	},
	Mining = {		[75]=2581,	[150]=2582,	[225]=3568,	[300]=10249,	[375]=29355,	[450]=50309,	[525]=74518,	[600]=102168,	[700]=158755,	},
	Riding = {		[75]=33389,	[150]=33392,	[225]=34092,	[300]=34093,	[375]=90266,									},
	Skinning = {		[75]=8615,	[150]=8619,	[225]=8620,	[300]=10769,	[375]=32679,	[450]=50307,	[525]=74523,	[600]=102220,	[700]=158757,	},
	Tailoring = {		[75]=3911,	[150]=3912,	[225]=3913,	[300]=12181,	[375]=26791,	[450]=51308,	[525]=75157,	[600]=110427,	[700]=158759,	},
}

local function picktext(goal,goaltext)
	if ZGV.db.profile.usegenericgoals then
		goal.text = goaltext or goal.text or "?"
	else
		goal.text = goal.text or goaltext or "?"
	end
end
-- This is a HUGE mess.

function get_recipe(skill,spellid)
	if GetTradeSkillLine()==ZGV.LocaleSkills[skill] then
		local skillName, skillType, numAvailable, isExpanded, serviceType, numSkillUps
		local itemlink
		local line
		for i=1,500 do
			local link = GetTradeSkillRecipeLink(i)
			if link then
				local sid = link:match(":([0-9]+)|h%[")
				if tonumber(sid)==spellid then
					line = i
					break
				end
			end
		end
		if line then
			local skillName, skillType, numAvailable, isExpanded, serviceType, numSkillUps = GetTradeSkillInfo(line)
			local itemid = tonumber((GetTradeSkillItemLink(line) or ""):match("|H.-:(%d+)"))

			return {avail=numAvailable,type=skillType,numup=numSkillUps and numSkillUps>0 and numSkillUps or 1, lastskill=skill, itemid=itemid}
		else
			return nil,"unknown"
		end
	else
		return nil,"closed"
	end
end

local dots_table = {'.','..','...','....','.....','....','...','..'}
local function dots(num) return dots_table[(num or 0)%8+1] end
local function Lretrydots(goal) return dots(goal.Lretries)..(ZGV.db.profile.debug and goal.Lreasons or "") end



local function ordnum(n)
	if n>5 and n<20 then return n.."th" end
	local digit=n%10
	if digit==1 then return n.."st"
	elseif digit==2 then return n.."nd"
	elseif digit==3 then return n.."rd"
	else return n.."th" end
end
	
function Goal:GetText(showcompleteness,brief,showtotals)
	if not self.prepared then self:Prepare() end
	--if type(goal)=="number" then goal=self.CurrentStep.goals[goal] end

	-- prepare for progress
	if self.force_nocomplete and self.action~="collect" and self.action~="farm" and self.action~="craft" and self.action~="buy" then showcompleteness=false end

	local goalcountnow,goalcountneeded,remaining

	if self.action=="achievetext" then showcompleteness=true end

	if showcompleteness then
		if self.questid then
			goalcountnow,goalcountneeded,remaining = GetQuestGoalData(self.questid,self.objnum,self.count)
		elseif self.scenario_criteriaid then
			goalcountnow,goalcountneeded,remaining = GetScenarioGoalData(self.scenario_criteriaid,self.count)
		elseif self.achievesub or self.achieveid then
			goalcountnow,goalcountneeded,remaining = GetAchievementGoalData(self.achieveid,self.achievesub or 1)
			if goalcountneeded==0 or goalcountneeded==1 then goalcountnow,goalcountneeded,remaining=nil end  -- no 0/1 display
		end
	end

	local complete,ext = self:IsComplete()

	local _done = complete and "_done" or ""

	local text="?"
	local progtext
	local extramsg

	local GOALTYPE=GOALTYPES[self.action]

	if self.text then

		local grabcount = self.text:match("#(%d+)#")
		if grabcount and not self.count then self.count=tonumber(grabcount) end

		if self.ordcount then remaining=ordnum(self.count) end  -- unused; was to show ordinal counts in a goal.

		local nsub=1
		-- Generates a parser proc with said behaviour, to evade calling loadstring too much
		local function make_parser(parser) -- function to generate code
			return function(s)
				if not self.textsubs then self.textsubs={} end
				local f = self.textsubs[nsub]
				if not f then
					f=parser(s)
					self.textsubs[nsub]=f
				end
				nsub=nsub+1
				return type(f)=="function" and tostring(f()) or tostring(f)
			end
		end
		local function parser_simple(s)
			local fun,err = loadstring(s:find("return") and s or "return "..s)
			if fun then
				setfenv(fun,ZGV.Parser.ConditionEnv)
				return fun
			else
				return "("..err..")"
			end
		end
		local function parser_ternary(s)
			local condcode,a,b=s:match("(.*)%?%?(.*)::(.*)")
			if condcode and a and b then
				local condfun,err = loadstring(condcode:find("return") and condcode or "return "..condcode)
				if condfun then
					local fun = function() -- Generating a real worker function
						return condfun() and a or b
					end
					setfenv(fun,ZGV.Parser.ConditionEnv)
					return fun
				else
					return "("..err..")"
				end
			else
				return "(Wrong conditional syntax)"
			end
		end
		-- TODO support nesting of conditionals
		text = self.text
			:gsub("{=(.-)=}",make_parser(parser_ternary))
			:gsub("{(.-)}",make_parser(parser_simple))
			:gsub("#(%d+)#",COLOR_COUNT(type(remaining)=="number" and remaining or self.count or "(?)"))


	
	-- individualized!
	
	elseif GOALTYPE and GOALTYPE.gettext then
		local gettext,fallback = GOALTYPE.gettext(self,complete,complete_extra,goalcountnow,goalcountneeded,remaining)
		text = gettext or fallback


	elseif self.action=='accept' then
		text = (brief and "%s" or L["stepgoal_accept".._done]):format(COLOR_QUEST((self.questpart and L['questtitle_part'] or L['questtitle']):format(self.quest and self.quest.title or Lretrydots(self),self.questpart)))

	elseif self.action=='turnin' then
		text = (brief and "%s" or L["stepgoal_turn in".._done]):format(COLOR_QUEST((self.questpart and L['questtitle_part'] or L['questtitle']):format(self.quest and self.quest.title or Lretrydots(self),self.questpart)))

	elseif self.action=='talk' then
		text = (brief and "%s" or L["stepgoal_talk to".._done]):format(COLOR_NPC(ZGV.Localizers:GetTranslatedNPC(self.npcid)))

	elseif self.action=='get' then
		--if self.test==1 then goalcount=nil elseif self.test==2 then
		text = GenericText(brief,self.action,COLOR_ITEM,remaining or self.count,self.target,not self.count or self.count==1,self.plural,_done)

	elseif self.action=='kill' then
		text = GenericText(brief,self.action,COLOR_MONSTER,remaining or self.count,self.target,not self.count or self.count==1,self.plural,_done)
		if self.usekillcount then goalcountnow=ZGV.recentKills[self.targetid] end

	elseif self.action=='collect' or self.action=='craft' or self.action=='farm' then
		goalcountnow = goalcountnow or GetItemCount(self.targetid or 0)
		goalcountneeded = goalcountneeded or self.count or 1
		remaining = remaining or goalcountneeded-goalcountnow
		if remaining<1 then remaining=goalcountneeded end
		text = GenericText(brief,self.action,COLOR_ITEM,remaining or self.count,self.target,not self.count or self.count==1,self.count~=1,_done)

	elseif self.action=='goldcollect' then
		-- Two different types of goldcollect goals. If there is a max demand, then don't want to collect more because that would flood the market.
		-- No demand then just collect until they get bored.
		goalcountnow = goalcountnow or GetItemCount(self.targetid or 0)
		if self.demand then
			-- There is a set demand for this.
			goalcountneeded = goalcountneeded or self.demand
			remaining = remaining or goalcountneeded-goalcountnow
			if remaining<1 then remaining=goalcountneeded end

			text = GenericText(brief,self.action,COLOR_ITEM, remaining or self.demand , self.target, self.demand==1, self.demand~=1, "_done")

			if goalcountneeded-goalcountnow > 0 then
				-- TODO clean this up? Doesn't localize well this way and is kind of a hack way of adjusting the text.
				-- This kind of ruins the # _ done part. But using _done to seperate demand vs no demand
				text = text:gsub("Collected", "Collect")
			end
		else
			-- if we have 0 then just display "Collect item" If we have some of the item display "Collected # item"
			text = GenericText(brief,self.action,COLOR_ITEM,goalcountnow,self.target,goalcountnow==0,not self.count or self.count==1, "")
		end

	elseif self.action=='buy' then
		goalcountnow = goalcountnow or GetItemCount(self.targetid or 0)
		goalcountneeded = goalcountneeded or self.count or 1
		remaining = remaining or goalcountneeded-goalcountnow
		if remaining<1 then remaining=goalcountneeded end
		text = GenericText(brief,self.action,COLOR_ITEM,remaining or self.count,self.target,self.count==0,self.count~=1,_done)

	elseif self.action=='goal' then
		text = GenericText(brief,self.action,COLOR_GOAL,remaining or self.count,self.target,not self.count or self.count==1,false,_done)

	elseif self.action=='earn' then
		local name,count = GetCurrencyInfo(self.targetid or 0)
		goalcount = goalcount or count
		remaining = remaining or max(self.count-goalcount,0)
		text = GenericText(brief,self.action,COLOR_ITEM,(remaining>0 and remaining) or self.count,name,false,self.count and self.count>1,_done)
		goalmaxcount = (self.exact and self.count) or goalmaxcount or self.count

	elseif self.action=='from' or self.action=='avoid' then
		-- no text overriding; don't want the kill-list? don't use it.
		for i,mob in ipairs(self.mobs) do
			local mobname
			if mob.id then mobname=ZGV.Localizers:GetTranslatedNPC(mob.id) end
			if mobname then
				mob.name = mobname
			elseif not self.knownmissing then
				ZGV:Debug("Missing from NPC database: "..mob.name.." #"..(mob.id or "?"))
				self.knownmissing=true
			end
		end
		if #self.mobs>1 then
			-- contraction
			ZGV.db.profile.contractmobs = true

			if ZGV.db.profile.contractmobs and ZygorGuidesViewer_L("Specials")['contract_mobs'] then
				local contr = ZygorGuidesViewer_L("Specials")['contract_mobs'](self.mobs)

				if contr then
					text = COLOR_MONSTER(contr)
				end
			end
			if not text or text=="?" then
				-- regular listing
				text = ""
				for i,mob in ipairs(self.mobs) do
					if #text>0 then text = text .. ", " end
					text = text .. COLOR_MONSTER(plural(mob.name,nil,mob.pl and 2 or 1))
				end
			end
		else
			text = COLOR_MONSTER(plural(self.mobs[1].name,self.mobs[1].pl and 2 or 1))
		end

		if self.action=='from' then
			text = L['stepgoal_kill']:format(text)
		elseif self.action=='avoid' then
			text = L['stepgoal_avoid']:format(text)
		end

	elseif self.action=='ding' then
		text = (brief and L["stepgoal_ding_brief"] or L["stepgoal_ding"]):format(COLOR_NPC(self.level))
		if showcompleteness then
			local percent
			local level = ZGV:GetPlayerPreciseLevel()
			percent = (level<self.level-1) and 0 or (level>=self.level) and 100 or floor(UnitXP("player")/UnitXPMax("player") * 100)
			progtext = L["completion_ding"]:format(percent)
		end

	elseif self.action=='fpath' then text = L["stepgoal_fpath"]:format(COLOR_LOC(self.fpath or self.displayname))
	elseif self.action=='home' then text = L["stepgoal_home"]:format(COLOR_LOC(self.param))
	elseif self.action=='use' then text = L["stepgoal_use"]:format(COLOR_ITEM(self.item or "item #"..self.itemid))
	elseif self.action=='item' then text = L["stepgoal_item"]:format("|c"..select(4,GetItemQualityColor(select(3,GetItemInfo(self.itemid)) or 2)).. (self.item or "item #"..self.itemid))
	elseif self.action=='cast' then text = L["stepgoal_cast"]:format(COLOR_ITEM(self.castspell or "spell #"..self.castspellid))
	elseif self.action=='petaction' then text = L["stepgoal_petaction"]:format(self.petaction)
	elseif self.action=='havebuff' then text = L["stepgoal_havebuff"]:format(COLOR_ITEM(self.buff))
	elseif self.action=='nobuff' then text = L["stepgoal_nobuff"]:format(COLOR_ITEM(self.buff))
	elseif self.action=='invehicle' then text = L["stepgoal_invehicle"]
	elseif self.action=='outvehicle' then text = L["stepgoal_outvehicle"]
	elseif self.action=='equipped' then text = L["stepgoal_equipped"]:format(self.target)
	elseif self.action=='hearth' then text = L["stepgoal_hearth to"]:format(COLOR_LOC(self.param))
	elseif self.action=='rep' then
		text = L["stepgoal_rep"]:format(ZGV.StandingNames[self.rep],self.faction)
		if showcompleteness then
			progtext = L["completion_rep"]:format(ZGV:GetReputation(self.faction):Going())
		end
	elseif self.action=='goto' --[[or (self.action=='fly' and self.map==ZGV.CurrentMapID)]] then
		--if self.CurrentGuide.steps[self.CurrentStepNum-1] and self.CurrentGuide.steps[self.CurrentStepNum-1].map~=goal.map then
		local form="stepgoal_go to"
		if self.parentStep.is_sticky then 
			stickies = ZGV:GetStickiesAt(ZGV.CurrentStep.num)
			if #stickies ~= 0 then
				local showAtText = false
				for i,stickystep in pairs(stickies) do
					if self.parentStep.num == stickystep.num then
						showAtText = showAtText or true
					end
				end
				if showAtText then
					form="stepgoal_at" 
				end
			end
		end
		if self.subzone then
			text = COLOR_LOC(self.subzone)
			if self.subzonemode=="exit" then form="stepgoal_go to_leave" end
		elseif self.map~=ZGV.CurrentMapID then
			-- different map
			if self.x then
				-- and coords
				text = COLOR_LOC(L['map_coords']:format(ZGV.Pointer.GetMapNameByID2(self.map) or "World",self.x*100,self.y*100))
			else
				-- just the map
				text = COLOR_LOC(ZGV.Pointer.GetMapNameByID2(self.map or 0))
			end
		else
			if self.x then
				-- same map
				text = COLOR_LOC(L['coords']:format(self.x and self.x*100 or 0,self.y and self.y*100 or 0))
			else
				-- just the map
				text = COLOR_LOC(ZGV.Pointer.GetMapNameByID2(self.map or 0))
			end
		end
		if self.waytitle then
			text = self.waytitle.." ("..text..")"
		end
		text = (brief and "%s" or L[form]):format( text )

		if self.waypoint_subzone then text = text .. (" (in %s)"):format(self.waypoint_subzone) end

	elseif self.action=='gotonpc' then text = L["stepgoal_gotonpc"]:format(self.npcname)
		
	elseif (self.action=='fly') then
		-- just the map
		text = (brief and "%s" or L[UnitOnTaxi("player") and "stepgoal_arrive" or "stepgoal_fly"]):format(
			COLOR_LOC(self.map==ZGV.CurrentMapID and self.landing or self.landing..", "..(ZGV.Pointer.GetMapNameByID2(self.map) or "World")) )

	elseif self.action=="achieve" then
		local id, name, points, completed = GetAchievementInfo(self.achieveid)
		if self.achievesub then
			local desc,ctype,completed,quantity,required = GetAchievementCriteriaInfo(self.achieveid,self.achievesub)
			text = L["stepgoal_achievesub"]:format(COLOR_QUEST(desc),COLOR_ITEM(name))
		else
			text = L["stepgoal_achieve"]:format(COLOR_ITEM(name))
		end
		if showcompleteness then
			if self.achievesub then
				-- partial achievement
				local desc,ctype,completed,quantity,required = GetAchievementCriteriaInfo(self.achieveid,self.achievesub)
				progtext = L["completion_goal"]:format(quantity,required)
			else
				-- full achievement
				local id, name, points, completed = GetAchievementInfo(self.achieveid)
				local numcrit = GetAchievementNumCriteria(self.achieveid)
				local completenum = 0
				for i=1,numcrit do
					local desc,ctype,completed,quantity,required = GetAchievementCriteriaInfo(self.achieveid,i)
					if completed then completenum=completenum+1 end
				end
				progtext = L["completion_goal"]:format(completenum,numcrit)
			end
		end
	elseif self.action=="skill" then
		text = L["stepgoal_skill"]:format(COLOR_ITEM(ZGV.LocaleSkills[self.skill]),self.skilllevel)
	elseif self.action=="skillmax" then
		local spell = skillspells[self.skill] and skillspells[self.skill][self.skilllevel]
		if spell and spell>0 then
			text = L["stepgoal_skillmax2"]:format(COLOR_ITEM(GetSpellInfo(spell)))
		else
			text = L["stepgoal_skillmax"]:format(COLOR_ITEM(ZGV.LocaleSkills[self.skill]),self.skilllevel)
		end
	elseif self.action=="learn" then
		text = L["stepgoal_learn"]:format(COLOR_ITEM(self.recipe))

	elseif self.action=="learnspell" then
		text = L["stepgoal_learnspell"]:format(COLOR_ITEM(GetSpellInfo(self.spellid)))

	elseif self.action=="learnpet" then
		text = L["stepgoal_learnpet"]:format(COLOR_ITEM(ZGV.Localizers:GetTranslatedNPC(self.petid)))

	elseif self.action=="learnmount" then
		text = L["stepgoal_learnmount"]:format(COLOR_ITEM(GetSpellInfo(self.spellid)))

	elseif self.action=="create" then
		if self.skill then
			-- new syntax

			local skill = ZGV:GetSkill(self.skill)
			local skill_loc = ZGV.LocaleSkills[self.skill]
			local skill_create_text = L['stepgoal_perform_'..(self.skill:lower())]

			if self:IsComplete() then
				text = ("Created %s"):format(COLOR_ITEM(self.spell))
				if self.skilllevel then
					extramsg = ("\n (%s level %s reached)"):format(COLOR_ITEM(skill_loc), COLOR_GOAL(self.skilllevel))
				elseif self.count then
					extramsg = ("\n (%s created)"):format(COLOR_GOAL(self.count))
				end
			else
				local errortype

				local errormsgs = {
					maxlevel = "(max skill level too low)",
					closed = "(open %s window)",
					unknown = "(unknown recipe)",
					trivial = "(creating %s won't raise your skill anymore)",
					lackingredients = "(ingredients suffice for only %s of %s)",
					noingredients = "(not enough ingredients)",
					wtf = "(?unknown error?)",
				}

				if self.skilllevel then
					-- create until skill reaches level
					local modifier=1
					local remaining=self.skilllevel - skill.level
					local produced = remaining

					if skill.level>=self.skilllevel then
						self.recipedata=nil
						--errortype = "(done)"
					elseif self.skilllevel>skill.max then
						self.recipedata=nil
						errortype = "maxlevel"
					else
						if not self.recipedata or self.recipedata.lastskill~=skill then
							self.recipedata,errortype = get_recipe(self.skill,self.spellid)
						end
						self.castspellid = self.spellid
					end


					if self.recipedata and self.recipedata.type then
						if self.recipedata.type=="optimal" then modifier = 1
						elseif self.recipedata.type=="medium" then modifier = 1.5
						elseif self.recipedata.type=="easy" then modifier = 3
						elseif self.recipedata.type=="trivial" and remaining>0 then errortype="trivial"
						else errortype = "wtf" end

						if modifier>0 and self.recipedata.numup>0 then
							produced = math.ceil(remaining / self.recipedata.numup * modifier)
						end
					end

					-- important info to display:
					-- skill_loc
					-- self.item == item name
					-- remaining == skill up points
					-- produced == avg items to produce

					if errortype=="trivial" then
						-- gray
						text = ("Gain %s skill points to reach %s level %s"):format(COLOR_GOAL(remaining), COLOR_ITEM(skill_loc), COLOR_GOAL(self.skilllevel))
						extramsg = errormsgs['trivial']:format(COLOR_ITEM(self.spell))
					elseif errortype or remaining<1 then
						-- error?
						text = ("Gain %s skill points, creating %s\n Reach %s level %s"):format(COLOR_GOAL(remaining), COLOR_ITEM(self.spell), COLOR_ITEM(skill_loc), COLOR_GOAL(self.skilllevel))
						if errortype then extramsg = errormsgs[errortype]:format(skill_loc) end
					elseif not self.recipedata or (self.recipedata.type=="optimal" and self.recipedata.numup==1) then
						-- orange or standard
						text = ("Gain %s skill points, creating %s\n Reach %s level %s"):format(COLOR_GOAL(remaining), COLOR_ITEM(self.spell), COLOR_ITEM(skill_loc), COLOR_GOAL(self.skilllevel))
					elseif self.recipedata.type=="optimal" and self.recipedata.numup>1 then
						-- orange
						text = ("Gain %s skill points, creating %s %s\n Reach %s level %s"):format(COLOR_GOAL(remaining), COLOR_GOAL(produced), COLOR_ITEM(self.spell), COLOR_ITEM(skill_loc), COLOR_GOAL(self.skilllevel))
					elseif self.recipedata.type=="easy" or self.recipedata.type=="medium" then
						-- yellow/green
						text = ("Gain %s skill points, creating about %s %s\n Reach %s level %s"):format(COLOR_GOAL(remaining), COLOR_GOAL(produced), COLOR_ITEM(self.spell), COLOR_ITEM(skill_loc), COLOR_GOAL(self.skilllevel))
					else
						text = "?wtf?"
					end

					if not extramsg and self.recipedata and self.recipedata.avail<produced then
						if self.recipedata.avail==0 then
							extramsg = errormsgs['noingredients']
						elseif remaining>self.recipedata.avail then
							extramsg = errormsgs['lackingredients']:format(COLOR_GOAL(self.recipedata.avail),produced)
						end
					end

					--self.skillnum = math.ceil(remaining / (self.recipedata and self.recipedata.numup or 1))
					self.skillnum = remaining

				elseif self.count then
					-- create until n items are obtained

					if not self.recipedata or self.recipedata.lastskill~=skill then
						self.recipedata,errortype = get_recipe(self.skill,self.spellid)
					end

					local have,remaining=0,0

					if self.recipedata and self.recipedata.itemid then
						self.targetid = self.recipedata.itemid
						have = GetItemCount(self.recipedata.itemid)
						if have then
							remaining = max(0,self.count-have)
							if have>=self.count then
								text = ("Created %s %s"):format(COLOR_GOAL(self.count),COLOR_ITEM(plural(self.spell,self.count)))
							else
								-- primary display
								text = skill_create_text:format(COLOR_GOAL(self.count-have),COLOR_ITEM(plural(GetItemInfo(self.recipedata.itemid),self.count-have)))
								if self.recipedata.avail==0 then
									extramsg = errormsgs.noingredients
								elseif remaining>self.recipedata.avail then
									extramsg = errormsgs.lackingredients:format(COLOR_GOAL(self.recipedata.avail),remaining)
								end
							end
						end
					else
						text = skill_create_text:format(COLOR_GOAL(self.count),COLOR_ITEM(plural(self.spell,self.count)))
						extramsg = errormsgs[errortype]:format(skill_loc)
					end

					self.skillnum = max(0,min(tonumber(self.count)-have or 0,self.recipedata and tonumber(self.recipedata.avail) or 0))

				else

					text = "error in create: no skill, no total, no nothing"
				end
			end

		else
			-- old create syntax
			text = GenericText(brief,"create",COLOR_ITEM,self.count,GetItemInfo(self.itemid),not self.count or self.count==1,self.count and self.count>1,_done)
		end

	elseif self.action=="complete" then
		local txt
		goalcountneeded=false
		local q=self.quest
		if q then
			if self.objnum then
				if q.goals then
					local goal = q.goals[self.objnum]
					if goal then
						-- BINGO!
						txt = goal.item
						goalcountneeded = goal.needed and goal.needed>1
					else
						txt = q.title.." (#"..self.objnum.." ??)"
					end
				else
					txt = q.title.." (#"..self.objnum..")"
				end
			else
				txt = q.title
			end
		else
			txt = "(?)"
		end
		text = L["stepgoal_complete"]:format(COLOR_GOAL(txt))

	elseif self.action=="confirm" then
		text = L["stepgoal_confirm"]

	elseif self.action=="click" then
		text = GenericText(brief,self.action,COLOR_ITEM,remaining or self.count,self.target,true,self.plural,_done)

	elseif self.action=="clicknpc" then
		text = GenericText(brief,self.action,COLOR_ITEM,remaining or self.count,self.npc,true,self.plural,_done)

	elseif self.action=="info" then
		text = "|cffeeeecc"..(self.infoL or self.info).."|r"
	end

	-- trickiness: coordinates.

	if self.x -- if there's a coordinate
	and not (self.action=="goto" or self.action=="fly") -- but it's not a plain goto   --and not self.text
	and not (self.text and self.text:find("[0-9%.]-,[0-9%.]-")) -- and it's not a coord-in-text
	and not self.force_noway
	and ZGV.db.profile.goal_showcoords  -- not supported for now. Hence: this is disabled for all purposes.
	then
		text = text .. L['stepgoal_at_suff']:format(COLOR_LOC(L['coords']:format(self.x*100,self.y*100)))
	end




	-- apply the (2/4) totals now, or not

	if type(showtotals)~="boolean" then showtotals=ZGV.db.profile.goaltotals end
	if showtotals then
		if goalcountnow and goalcountneeded and goalcountneeded>0 then progtext=L["completion_goal"]:format(goalcountnow,goalcountneeded)
		elseif goalcountneeded and goalcountneeded==0 then progtext=L["completion_count"]:format(goalcountnow)
		end

		local gold_achieves = {[9487]=true}
		if gold_achieves[self.achieveid] then
			local goldowned = ZGV.GetMoneyString(math.floor(goalcountnow or 0),3)
			local goldneeded = ZGV.GetMoneyString(math.floor(goalcountneeded or 0),3)
			progtext=L["completion_goal"]:format(goldowned,goldneeded)
		end

		if progtext then
			local col1,col2=""
			if complete then col1,col2=" ",""
			elseif ext then col1,col2=" |cffffbbbb","|r"
			else col1,col2=" |cffaaaaaa","|r"
			end

			text = text .. col1 .. progtext .. col2
		end
	end

	return text .. (extramsg and "\n "..extramsg or "")
end

function Goal:GetString()
	if self.action=="get" then
		return self.target
	elseif self.action=="goal" then
		return self.target
	elseif self.action=="kill" then
		--return goalstring_slain:format(self.target)
		return self.target
	end
end

DEBUGS={}

function Goal:Prepare(reset)
	if reset then self.prepared = nil end

	
	-- reset old stuff
	self.was_visited = false
	self.was_clicked = false


	if self.prepared then return end

	if self.castspellid then self.castspell=GetSpellInfo(self.castspellid) end

	if self.action=="goal" or self.action=="kill" or self.action=="get" then
		-- guess the .count if one wasn't given, or at least correct it if it's too high. Don't correct too low counts, they're to allow partial completion.
		if self.questid and self.objnum and not self.exact then
			local questData = ZGV.questsbyid[self.questid]

			if questData and questData.inlog and questData.index>0 then
				local questGoalData = questData.goals[self.objnum]
				if questGoalData and questGoalData.needed and (not self.count or self.count>questGoalData.needed) then
					self.count=questGoalData.needed
				end
			end
		end
		if not self.count then self.count=1 end
	end

	if self.countexpr and not self.countexprfun then
		local fun,err = loadstring("return ".. self.countexpr)
		if fun then
			setfenv(fun,ZGV.Parser.ConditionEnv)
			self.countexprfun = fun
		else
			ZGV:Print("Error in step expression: '".. self.countexpr .."' error: '".. err .."'")
		end
	end

	if self.updatescript and not self.updatescriptfun then
		ZGV:Debug("&step_setup goal ".. self.num.." loading updatescript: ".. self.updatescript)

		local fun,err = loadstring(self.script)
		if fun then
			setfenv(fun,ZGV.Parser.ConditionEnv)
			self.updatescriptfun = fun
		else
			self:Print("Error in |updatescript ".. self.updatescript.." : ".. tostring(err))
		end
	end

	if self.more and self.targetid then -- record current inventory state
		self.more_base = GetItemCount(self.targetid)
	end

	-- wipe completed quests by title, if they're instant
	--[[ moved to core code, to be done on ClearRecentActivities
	if self.action=="accept" or self.action=="turnin" then
		if self.questid then
			if ZGV.instantQuests[self.questid] and ZGV.completedQuestTitles[self.quest] then
				ZGV.completedQuestTitles[self.quest] = nil
			end
		end
	end
	--]]

	--ZGV:Debug("goal "..self.num.." prepared.")

	self.prepared = true
end

function Goal:IsObsolete()
	do return false end --obsoletion is by section now
end

local _n = {"ding","kill","rep","achieve","skill","skillmax","create","learn","learnspell","learnpet","learnmount","buy"}
local nonaux = {}  for i=1,#_n do nonaux[_n[i]]=true end

function Goal:IsAuxiliary()
	--[[
	if (self.questid or nonaux[self.action]) and not self.force_nocomplete then return false
	elseif self.action=="confirm" and self.always then return false
	elseif self.action=="fpath" then
		local isc = self:IsComplete()
		-- it's true or false if LibTaxi is sure of its data.
		if isc~=nil then return isc end
		-- if it's not... guess.
		local step=self.parentStep
		for i=1,5 do
			step=step:GetNextStep()
			if not step then return false end
			while (step.requirement) do
				step=step:GetNextStep()
				if not step then return false end
			end
			--print("complete? "..tostring(step:IsComplete()))
			if step:IsComplete() then return true end
		end
		return false
	else
		return true
	end
	--]]
	return (self.action=="goto" or self.action=="fly" or self.action=="hearth")
end

function Goal:OnEnter()
	if self.autoscript and not self.autoscriptfun then
		local fun,err=loadstring(self.autoscript)
		if fun then
			setfenv(fun,ZGV.Parser.ConditionEnv)
			self.autoscriptfun = fun
		else
			ZGV:Print("Error in step autoscript: '".. self.autoscript .."' error: '".. tostring(err) .."'")
		end
	end

	if self.autoscriptfun and (not ZGV.LastSkip or ZGV.LastSkip>=0) and not self.parentStep.needsreload then
		ZGV:Debug("calling autoscript ".. self.autoscript)
		ZGV.Parser.ConditionEnv._SetLocal(self.parentStep.parentGuide,self.parentStep,self)
		self:autoscriptfun()
		ZGV:Debug("called autoscript.")
	end

	self.macro = nil

	if ZGV.db.profile.magickey~="" then
		-- update automatic macros. Wrong place to do it, but there isn't any "update goal" routine yet.
		if ((self.action=="kill" and self.target)
		or (self.action=="talk" and self.npcid)
		or (self.action=="from" and self.mobs and self.mobs[1] and self.mobs[1].name))
		and not self.macrosrc then
			if self.target or self.npcid then
				self.macrosrc = "/target "..(self.target or ZGV.Localizers:GetTranslatedNPC(self.npcid))
				self.macrosrc = self.macrosrc .."\n/run ZGV:MRM():CG("..self.parentStep.num..","..self.num..")"
			elseif self.mobs and self.mobs[1] and self.mobs[1].name then
				self.macrosrc = ""
				for mi,m in ipairs(self.mobs) do if m.name and #self.macrosrc<230 then
					self.macrosrc = self.macrosrc .. "/target "..m.name.."\n"
				end end
				self.macrosrc = self.macrosrc .."/run ZGV:MRM():CG("..self.parentStep.num..","..self.num..")"
				if self.macrosrc=="" then self.macrosrc=nil end
			end
			if self.macrosrc then
				self.macroicon = self.buttonicon or (self.action=="talk" and MACROICON_TALK or MACROICON_KILL)
				self.parentStep.prepared = nil
				self.prepared = nil
			end
			ZGV:Debug("&step_setup goal "..self.num.." sets makeshift macro... should show up below...")
		end
	end

	if self.sub_goto then  -- deprecated: we shouldn't have "fly" steps anymore, Travel replaces all that.
		-- fly step!
		if (true) then
			local w1 = Astrolabe.WorldMapSize[ZGV.CurrentMapID or 0]
			local w2 = Astrolabe.WorldMapSize[self.map or 0]
			if w1 and w2 and w1.system==w2.system then

				local npc = LibRover:GetNearestTaxiInZone()
				--if npc and (not UnitOnTaxi("player") or not self.sub_goto.map) and self.map == npc.m then
				if npc and (not UnitOnTaxi("player") or not self.sub_goto.map)  then
					self.sub_goto.x = npc.x
					self.sub_goto.y = npc.y
					self.sub_goto.map = npc.m
					self.sub_goto.floor = ZGV:SanitizeMapFloor(npc.m,npc.f)
					self.sub_talk.npcid = npc.npcid

					if self.taxi~=npc then
						-- taxi changed
						self.taxi = npc
						self.sub_talk.L = nil
						ZGV:SetWaypoint()
					end
				end
			end
			self.sub_goto.hidden = not self.sub_goto.x
			self.sub_talk.hidden = not self.sub_talk.npcid
		else
			self.sub_goto.hidden=true
			self.sub_talk.hidden=true -- TODO make it inside event? Let's ask Sinus ~aprotas
			ZGV:SetWaypoint(self.num)
		end
	end

	-- The second, shared with macros, is a clickable button.
	-- So, let's make a macro!
	if (self.script or self.macrosrc)
	and self.action~="confirm" -- don't make macros for click lines!
	and (not self.macro or not GetMacroInfo(self.macro)) --[[and ZGV.db.profile.tweaks_domacros--]] then
		-- have source, need to "compile"
		if not InCombatLockdown() then
			-- do it now
			local macrosrc = self.script and ("/run "..self.script) or self.macrosrc
			macrosrc = macrosrc:gsub("{goalnum}",self.num) :gsub("{stepnum}",self.parentStep.num) :gsub("{;}","\n")

			local macroname = "ZGVMacro" .. self.num
			local macro = GetMacroIndexByName(macroname)  -- returns 0 if not found.

			DeleteMacro(macro) -- Try deleting the macro, trying to see if this fixes a bug ~~ Jeremiah
			macro=0
			
			if macro==0 then
				local MAX_ACCOUNT_MACROS = MAX_ACCOUNT_MACROS or 36
				local MAX_CHARACTER_MACROS = MAX_CHARACTER_MACROS or 18
				local storeglobal
				local numAccountMacros, numCharacterMacros = GetNumMacros()
				if numCharacterMacros>=MAX_CHARACTER_MACROS then storeglobal=true end
				if numAccountMacros>=MAX_ACCOUNT_MACROS then
					-- screw it
					macro = nil
				else
					macro = CreateMacro(macroname,self.macroicon or (self.macrosrc and self.macrosrc:find("showtooltip") and MACROICON_MISC) or MACROICON_MISC,macrosrc, not storeglobal)
				end
			end
			self.macro = macro
			if macro then
				if self.macrospell then SetMacroSpell(macro,GetSpellInfo(self.macrospell)) end
				if self.macroitem then SetMacroItem(macro,GetItemInfo(self.macroitem)) end
				ZGV:Debug("&step_setup goal %d macro: set up macro %s [%d]: %s",self.num,macroname,self.macro,macrosrc:gsub("\n"," \\n"))
				local s = debugstack()
				DEBUGS[s] = (DEBUGS[s] or 0) + 1
			else
				ZGV:Debug("&step_setup goal %d macro: did NOT set up: out of macro space?",self.num)
			end
		else
			ZGV:Debug("&step_setup goal %d macro: tried to set up, but we're in combat.",self.num)
		end
	end

	if GOALTYPES[self.action] and GOALTYPES[self.action].onenter then return GOALTYPES[self.action].onenter(self) end

	self.fake_complete = nil
end

-- Used for "indent-based collapsing of completed goals". This could get more love, it's here if anyone wants it.
function Goal:GetIndentChildren()
	local children={}
	local goals = self.parentStep.goals
	for n=self.num+1,#goals do
		if goals[n].indent==self.indent+1 then
			tinsert(children,goals[n])
		elseif goals[n].indent<=self.indent then
			break
		end
	end
	return children
end

-- Used for "indent-based collapsing of completed goals". This could get more love, it's here if anyone wants it.
function Goal:CanBeIndentHidden()
	local children = self:GetIndentChildren()
	local all=#children>0
	if all then
		for ci,child in ipairs(children) do
			if not child:CanBeIndentHidden() then all=false break end
		end
	end
	local complete,completable = self:IsComplete()
	return (all and (complete or not completable)) or (#children==0 and complete)
end

function Goal:OnClick(button)
	if IsModifiedClick("DRESSUP") and self.itemid and IsDressableItem("item:"..self.itemid) then
		DressUpItemLink("item:"..self.itemid)
		return
	end

	-- Clicked goal? Set waypoint, and set map if it's open.
	if self.x and not self.force_noway then
		if self.is_sticky then ZGV:SetWaypoint("goal",self)
		else ZGV.Pointer:CycleWaypointTo(self.num)
		end
	end
	if ZGV.GOALTYPES[self.action].click_to_complete then
		self.was_clicked = true
		if self.force_sticky_saved then
			self:SaveStickyComplete()
		end
		if self.clickfun then
			self:clickfun()
		else
			--self:SkipStep(true)
			ZGV:FakeCompleteGoal(self,true)
		end
	end
	if self.next then
		local step,guide = self.parentStep:GetJumpDestination(self.next)
		if guide then
			ZGV:Debug("WHOA. GUIDE JUMP! |cffffdd00%s|r in |cffff00dd%s|r",step,guide)
			ZGV:SetGuide(guide,step)
		else
			ZGV:FocusStep(step)
		end
	end

	if self.script then
		if not self.scriptfun then
			ZGV:Debug("goal ".. self.num.." loading script: ".. self.script)

			local fun,err = loadstring(self.script)
			if fun then
				setfenv(fun,ZGV.Parser.ConditionEnv)
				self.scriptfun = fun
			else
				ZGV:Print("Error in |script ".. self.script.." : ".. tostring(err))
			end
		end
		if self.scriptfun then  self:scriptfun()  end
	end

	if self.questid then
		ZGV:TrackQuest(self.questid)
		--self:PointToQuest(self.questid)  -- ONLY point to 'goto' coords now. 2014-09-02 14:34:42 sinus
	end

	if self.achieveid then
		-- copied from WatchFrame.lua
		if ( not AchievementFrame ) then
			AchievementFrame_LoadUI();
		end
		if ( not AchievementFrame:IsShown() ) then
			AchievementFrame_ToggleAchievementFrame()
			AchievementFrame_SelectAchievement(self.achieveid);
		else
			if ( AchievementFrameAchievements.selection ~= self.achieveid ) then
				AchievementFrame_SelectAchievement(self.achieveid);
			else
				AchievementFrame_ToggleAchievementFrame();
			end
		end
	end
	
	--[[
	-- This cost me 2h of sleep. Thanks to whoever wrote that. >:[  ~~sinus
	-- It caused untranslated |noquest lines to uselessly search for ALL NPCs in WhoWhere.
	if self.npc then
		ZGV.WhoWhere:FindNPC(self.npc)
	end
	--]]

	--[[
	-- NOT allowed :/
	if self.itemid and self.itemuse and ZGV.actionbuttons[self.num] then
		ZGV.actionbuttons[self.num]:Click()
	end
	--]]
end

function Goal:WasSavedStickyComplete()
	local stickies = ZGV.db.char.saved_sticky_goals		if not stickies then return end
	local guidestickies = stickies[self.parentStep.parentGuide.title]	if not guidestickies then return end
	return guidestickies[self.parentStep.num.."/"..self.num]
end

function Goal:SaveStickyComplete()
	if not self.force_sticky or not self.force_sticky_saved then return end
	ZGV.db.char.saved_sticky_goals = ZGV.db.char.saved_sticky_goals or {}
	local stickies = ZGV.db.char.saved_sticky_goals
	stickies[self.parentStep.parentGuide.title] = stickies[self.parentStep.parentGuide] or {}
	stickies[self.parentStep.parentGuide.title][self.parentStep.num.."/"..self.num] = self:IsComplete()
end
