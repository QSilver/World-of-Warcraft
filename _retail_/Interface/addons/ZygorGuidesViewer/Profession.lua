if debug then
	ZygorGuidesViewer={startups={}}
	ZygorGuidesViewer_L=function() end
	GetLocale=function() return "enUS" end
	tinsert=table.insert
	ERR_LEARN_RECIPE_S = "Learn %s"
	hooksecurefunc=function() end
end

local ZGV = ZygorGuidesViewer
if not ZGV then return end


ZGV.Professions = {}
local ZGVP = ZGV.Professions
-- this is not widely used, yet, sadly - most functions remain global.


ZGV.skills = {}

local LS=ZygorGuidesViewer_L("Skills")

ZGV.skillSpells = {
	['Alchemy']=2259,
	['Blacksmithing']=2018,
	['Inscription']=45357,
	['Jewelcrafting']=25229,
	['Leatherworking']=2108,
	['Tailoring']=3908,
	['Enchanting']=7411,
	['Engineering']=4036,

	--['Herbalism']=2366,  -- that's Herb Gathering
	['Mining']=2575,
	['Smelting']=2656,
	['Skinning']=8613,

	['Archaeology']=78670,
	['Cooking']=2550,
		['Way of the Grill']=124694,
		['Way of the Wok']=125584,
		['Way of the Pot']=125586,
		['Way of the Steamer']=125587,
		['Way of the Oven']=125588,
		['Way of the Brew']=125589,
	['First Aid']=3273,
	['Fishing']=7620,
}
local skillSpells=ZGV.skillSpells

local CookingSkills = { --Copy from skillSpells, just to make scanning them easier because we only want to scan cooking masteries at one point.
	--Feel free to remove the duplicate code if you think of a better way. ~Errc
	['Way of the Pot']=125586,
	['Way of the Grill']=124694,
	['Way of the Wok']=125584,
	['Way of the Steamer']=125587,
	['Way of the Oven']=125588,
	['Way of the Brew']=125589,
}

-- sinus 2013-01-10 : this uses the "skill" numbers, found on wowhead.com/skill=171 for example. This is a backup if the above spell numbers start failing like Herbalism.
ZGV.skillIDs = {
	['Alchemy']=171,
	['Blacksmithing']=164,
	['Enchanting']=333,
	['Engineering']=202,
	['Inscription']=773,
	['Jewelcrafting']=755,
	['Leatherworking']=165,
	['Tailoring']=197,

	['Herbalism']=182,
	['Mining']=186,
	--['Smelting']=2656,
	['Skinning']=393,

	['Archaeology']=794,
	['Cooking']=185,
		--['Way of the Grill']=124694,
		--['Way of the Wok']=125584,
		--['Way of the Pot']=125586,
		--['Way of the Steamer']=125587,
		--['Way of the Oven']=125588,
		--['Way of the Brew']=125589,
	['First Aid']=129,
	['Fishing']=356,
	['Riding']=762,
}

ZGV.skillIDsRev = {}
for k,v in pairs(ZGV.skillIDs) do ZGV.skillIDsRev[v]=k end -- reverse lookup for proffesion names

ZGV.skillLocale = {
	[129]={deDE="Erste Hilfe",esES="Primeros auxilios",frFR="Secourisme",ptBR="Primeiros Socorros",ruRU="Первая помощь"},
	[164]={deDE="Schmiedekunst",esES="Herrería",frFR="Forge",ptBR="Ferraria",ruRU="Кузнечное дело"},
	[165]={deDE="Lederverarbeitung",esES="Peletería",frFR="Travail du cuir",ptBR="Couraria",ruRU="Кожевничество"},
	[171]={deDE="Alchemie",esES="Alquimia",frFR="Alchimie",ptBR="Alquimia",ruRU="Алхимия"},
	[182]={deDE="Kräuterkunde",esES="Herboristería",frFR="Herboristerie",ptBR="Herborismo",ruRU="Травничество"},
	[185]={deDE="Kochkunst",esES="Cocina",frFR="Cuisine",ptBR="Culinária",ruRU="Кулинария"},
	[186]={deDE="Bergbau",esES="Minería",frFR="Minage",ptBR="Mineração",ruRU="Горное дело"},
	[197]={deDE="Schneiderei",esES="Sastrería",frFR="Couture",ptBR="Alfaiataria",ruRU="Портняжное дело"},
	[202]={deDE="Ingenieurskunst",esES="Ingeniería",frFR="Ingénierie",ptBR="Engenharia",ruRU="Инженерное дело"},
	[333]={deDE="Verzauberkunst",esES="Encantamiento",frFR="Enchantement",ptBR="Encantamento",ruRU="Наложение чар"},
	[356]={deDE="Angeln",esES="Pesca",frFR="Pêche",ptBR="Pesca",ruRU="Рыбная ловля"},
	[393]={deDE="Kürschnerei",esES="Desuello",frFR="Dépeçage",ptBR="Esfolamento",ruRU="Снятие шкур"},
	[755]={deDE="Juwelenschleifen",esES="Joyería",frFR="Joaillerie",ptBR="Joalheria",ruRU="Ювелирное дело"},
	[762]={deDE="Reiten",esES="Equitación",frFR="Monte",ptBR="Montaria",ruRU="Верховая езда"},
	[773]={deDE="Inschriftenkunde",esES="Inscripción",frFR="Calligraphie",ptBR="Escrivania",ruRU="Начертание"},
	[794]={deDE="Archäologie",esES="Arqueología",frFR="Archéologie",ptBR="Arqueologia",ruRU="Археология"},
} -- GETS TRIMMED.
for id,data in pairs(ZGV.skillLocale) do ZGV.skillLocale[id]=data[GetLocale()] end


ZGV.LocaleSkills={}
setmetatable(ZGV.LocaleSkills,{__index=function(t,skill) return ZGV.skillLocale[ZGV.skillIDs[skill] or 0] or GetSpellInfo(ZGV.skillSpells[skill]) or skill end})
ZGV.LocaleSkillsR={}
setmetatable(ZGV.LocaleSkillsR,{__index=function(t,q) return q end})

tinsert(ZGV.startups,{"Professions setup",function(self)
	self:AddEvent("PLAYER_ENTERING_WORLD","CacheSkills")
	self:AddEvent("SKILL_LINES_CHANGED","CacheSkills")
	self:AddEvent("TRADE_SKILL_UPDATE","CacheSkills")
	self:AddEvent("CHAT_MSG_SKILL","CacheSkills")
	self:AddEvent("CHAT_MSG_SYSTEM","Profession_CHAT_MSG_SYSTEM")
	self:AddEvent("TRADE_SKILL_SHOW","Profession_TRADE_SKILL_SHOW")
	--self:AddEvent("CHAT_MSG_COMBAT_FACTION_CHANGE","CHAT_MSG_COMBAT_FACTION_CHANGE_Faction")

	self.skills[""]={
		active=false,
		level=0,
		max=0
	}

	ZGV:CacheSkills()

	if GetLocale()~="enUS" then
		for spell,num in pairs(skillSpells) do -- Localize spell-based skills. So far this only leaves Herbalism out, but who knows...
			ZGV.LocaleSkills[spell]=GetSpellInfo(num)
			ZGV.LocaleSkillsR[ZGV.LocaleSkills[spell]]=spell
		end
	end
end})

local ERR_LEARN_RECIPE_S_fmt = ERR_LEARN_RECIPE_S:gsub("%.","%%."):gsub("%%s","(.+)")
--local TRADESKILL_LOG_FIRSTPERSON_fmt = TRADESKILL_LOG_FIRSTPERSON:gsub("%%s","(.-)")

function ZGV:Profession_CHAT_MSG_SYSTEM(event,text)
	local _,_,item = text:find(ERR_LEARN_RECIPE_S_fmt)
	if item then
		self.recentlyLearnedRecipes[item]=true
	end
end

function ZGV:Profession_TRADE_SKILL_SHOW()
	self:CacheSkills()
	if self.Delayed_PerformTradeSkill_step then
		self:PerformTradeSkillGoal(self.Delayed_PerformTradeSkill_step,self.Delayed_PerformTradeSkill_goal)
		self.Delayed_PerformTradeSkill_step=nil
		self.Delayed_PerformTradeSkill_goal=nil
	end
end

function ZGV:CacheSkills()

	local current_time = debugprofilestop()
	if (current_time - (ZGV.last_cached_skills or 0)) < 1000 then return end
	ZGV.last_cached_skills = current_time	
	
	local TradeSkillFrame = TradeSkillFrame

	if not TradeSkillFrame then
	--TODO
	end

	local profs={GetProfessions()}
	for i,prof in pairs(profs) do
		local name,icon,rank,maxrank,numspells,spelloffset,skillline = GetProfessionInfo(prof)

		local pro = self.skills[name]
		if not pro then
			pro={}
			self.skills[name]=pro
		end
		pro.level=rank
		pro.max=maxrank
		pro.active=true
		pro.skillID=skillline
		pro.spell=self.skillSpells[name]
		pro.name=name

		if skillline == 185 and rank >= 535 then --Cooking > 535, so check for masteries
			for id,level in pairs(ZGV.db.char.cookingMasteries) do
				local name = GetSpellInfo(id)

				local pro = self.skills[name]
				if not pro then
					pro={}
					self.skills[name]=pro
				end
				pro.level=level
				pro.max=700 --HARD CODED
				pro.active=true -- It is in db.char... so that means we had seen it at some point
				pro.skillID=id
				pro.spell=id
				pro.name=name
			end
		end
	end

	self:CacheRecipes(profs)  -- or try to, anyway. --Do Cooking masteries too
end

function ZGV:GetSkill(name)
	local skill,spell
	skill = self.skillIDs[name]
	if not skill then spell = self.skillSpells[name] end

	if ZGV.db.profile.fakeskills[name] then
		return ZGV.db.profile.fakeskills[name]
	else
		return self:FindSkill(skill,spell)
		--local name = ZGV.LocaleSkills[name]
		--if name~="Cooking" then print(name) end
		--return self.skills[name] or self.skills[""]
	end
end

function ZGV:FindSkill(skill,spell)
	for name,skilldata in pairs(self.skills) do
		if (skill and skilldata.skillID==skill) or (spell and skilldata.spell==spell) then return skilldata end
	end
	return self.skills[""]
end


function ZGV:CacheRecipes(profs)
	-- assume tradeskill window is open?
	local skill = GetTradeSkillLine()
	if skill=="UNKNOWN" then return end

	local profID;

	for i,prof in pairs(profs) do
		local name,icon,rank,maxrank,numspells,spelloffset,skillline = GetProfessionInfo(prof)
		if skill == name then profID = skillline end
	end
	-- Runeforging does not have a profID so return.
	if not profID then return end

	-- ah fuck this
	--[[
	-- clear filters
	if TradeSkillFrameAvailableFilterCheckButton:GetChecked() then
		TradeSkillOnlyShowMakeable(false)
		TradeSkillFrameAvailableFilterCheckButton:SetChecked(false)
	end
	--UIDropDownMenu_Initialize(TradeSkillInvSlotDropDown, TradeSkillInvSlotDropDown_Initialize)
	UIDropDownMenu_SetSelectedID(TradeSkillInvSlotDropDown,1)
	SetTradeSkillInvSlotFilter(0,1,1)
	--UIDropDownMenu_Initialize(TradeSkillSubClassDropDown, TradeSkillSubClassDropDown_Initialize)
	UIDropDownMenu_SetSelectedID(TradeSkillSubClassDropDown,1)
	SetTradeSkillSubClassFilter(0,1,1)

	--expand headers
	local openedheaders={}
	for i=GetNumTradeSkills(),1,-1 do
		local name,ttype,_,expanded = GetTradeSkillInfo(i)
		if ttype=="header" and not expanded then
			ExpandTradeSkillSubClass(i)
			openedheaders[name]=true
		end
	end
	--]]

	if IsTradeSkillLinked() then return end
	-- scan!

	local recipes = self.db.char.RecipesKnown --used in Goal.lua and Options.lua

	-- make sure it's the new format
	if not self.db.char.RecipeWipe01142013 or (recipes and type(recipes[next(recipes)])~="table") then wipe(recipes) self.db.char.RecipeWipe01142013 = true end
	if not recipes[profID] then recipes[profID] = {} end
	recipes = recipes[profID]

	wipe(recipes)

	local scanned=0
	for i = 1,500 do
		local tradeName,tradeType,_,_,_,_,_,_,rank,maxrank = GetTradeSkillInfo(i)

		if tradeName and tradeType~="header" and tradeType~="subheader" then
			-- regular recipe
			local link = GetTradeSkillRecipeLink(i)
			if link then
				local spell = tonumber(link:match("|H%w+:(%d+)"))
				local recipe = {}
				recipes[spell]=recipe
				recipe.spell = spell
				recipe.link = GetTradeSkillRecipeLink(i)
				recipe.productlink = GetTradeSkillItemLink(i)
				recipe.producttype,recipe.productid = recipe.productlink:match("|H(%w+):(%d+)")
				recipe.productid = tonumber(recipe.productid)
				recipe.nummade = {GetTradeSkillNumMade(i)}
				recipe.reagents={}
				local numreagents = GetTradeSkillNumReagents(i)
				for r=1,numreagents do
					local reagent = {}
					reagent.name,reagent.texture,reagent.num,reagent.have = GetTradeSkillReagentInfo(i,r)
					reagent.link = GetTradeSkillReagentItemLink(i,r)
					if reagent.link then reagent.id = tonumber(reagent.link:match("|H%w+:(%d+)")) end
					tinsert(recipe.reagents,reagent)
				end
				scanned=scanned+1
			end
		
		elseif tradeName and tradeType=="subheader" then --Cooking Masteries
			for UsName,id in pairs(CookingSkills) do
				local name = GetSpellInfo(id) --local name

				if tradeName == name then
					self.db.char.cookingMasteries[id] = rank

					local pro = self.skills[name]
					if not pro then
						pro={} self.skills[name]=pro
					end
					pro.level = rank pro.max = maxrank pro.active = true
					pro.name = name --localized.. Does it matter?
					pro.spell = id pro.skillID = id --this Id is not actually what we need. But we can use it to match properly.

					self:Debug(tradeName.." has level "..rank)
					break
				end
			end
		end
	end
	self:Debug(scanned.." "..skill.." recipes found")

	--[[
	--collapse headers
	for i=GetNumTradeSkills(),1,-1 do
		local name = GetTradeSkillInfo(i)
		if openedheaders[name] then CollapseTradeSkillSubClass(i) end
	end
	--]]
end

function ZGV:DelayPerformTradeSkillGoal(step,goal)
	self.Delayed_PerformTradeSkill_step=step
	self.Delayed_PerformTradeSkill_goal=goal
end

function ZGV:PerformTradeSkillGoal(step,goal)
	if not step or not goal or type(step)~="number" or type(goal)~="number" or not GetTradeSkillLine() then return end
	step = ZGV.CurrentGuide.steps[step]   if not step then return end
	goal = step.goals[goal]   if not goal then return end
	if goal.skillnum then
		-- skillup-based
		self:PerformTradeSkill(goal.spellid,goal.skillnum)
	elseif goal.targetid then
		self:PerformTradeSkill(goal.spellid,goal.count-GetItemCount(goal.targetid))
	end
end

function ZGV:PerformTradeSkill(id,count)
	if not count then count=1 end
	if count<=0 then return end

	local skillNum = self:FindTradeSkillNum(id)

	if skillNum then
		DoTradeSkill(skillNum,count)
	end
end

function ZGV:FindTradeSkillNum(id)
	if not id then return end
	for i = 1,500 do
		local tradeName,tradeType = GetTradeSkillInfo(i)

		if tradeName and tradeType~="header" then
			local link = GetTradeSkillRecipeLink(i)
			if link then
				local spell = tonumber(strmatch(link,"|H%w+:(%d+)"))
				if spell==id then
					return i
				end
			end
		end
	end
end


function ZGVP:GetRecipesForProduct(producttype,productid)
	local RK = ZGV.db.char.RecipesKnown
	if not RK or not next(RK) then return "no data" end
	
	local ret
	for skillid,recipes in pairs(RK) do
		for spellid,recipe in pairs(recipes) do
			if recipe.producttype==producttype and recipe.productid == productid then
				ret=ret or {}
				tinsert(ret,recipe)
			end
		end
	end
	return ret
end

function ZGVP:GetRecipe(spellid)
	local RK = ZGV.db.char.RecipesKnown
	if not RK or not next(RK) then return "no data" end
	for skillid,recipes in pairs(RK) do
		if recipes[spellid] then return recipes[spellid] end
	end
end


-- 2569 boots
-- 2589 linencloth
-- 2996 bolt of linen

local itemconverts = {

}


local seenrecipes={}


function ZGVP:GetCraftScenarios(producttype,productid,needed)
	local results = {}

	needed=needed or 1

	if producttype=="item" then
		local pricevendor,price = ZGV.Gold:GetItemPrice(productid)
		tinsert(results,{"BUY "..needed.." "..(select(2,GetItemInfo(productid)) or "?").." "..productid,tonumber(price) or 0})
		if ZGV.Gold.usefulness[productid] then
			tinsert(results,{"FARM "..needed.." "..(select(2,GetItemInfo(productid)) or "?").." "..productid,nil})
		end
	end


	local recipes = ZGVP:GetRecipesForProduct(producttype,productid)
	if type(recipes)=="table" then
		for ri,recipe in ipairs(recipes) do
			local repetitions = math.ceil(needed/recipe.nummade[1]) -- we use this recipe so many times
			local reagentscenarios = {}
			for re,reagent in ipairs(recipe.reagents) do
				local scens = ZGVP:GetCraftScenarios("item",reagent.id,reagent.needed*repetitions)
				if scens~="no data" then
					--for k,sc in ipairs(scens) do tinsert(reagentscenarios,sc) end

					reagentscenarios[re]=scens
				end
			end

			local rs = ZGV.TableProduct(reagentscenarios) -- scenarios for ALL elements, flat.

			--for k,v in ipairs(rs) do tinsert(results,{"CRAFT",recipe.link,
			for k,v in ipairs(rs) do tinsert(results,{"CRAFT "..needed.." "..recipe.link.." ("..needed.." crafts)",reagents=v}) end

		end
	end
	return results
end


function ZGVP:GetCraftScenarioTree(producttype,productid,needed)
	local results = {}

	needed=needed or 1

	if producttype=="item" then
		local pricevendor,price = ZGV.Gold:GetItemPrice(productid)
		tinsert(results,{needed.." "..(select(2,GetItemInfo(productid)) or "?").." "..productid,tonumber(price) or 0})
		if ZGV.Gold.usefulness[productid] then
			tinsert(results,{needed.." "..(select(2,GetItemInfo(productid)) or "?").." "..productid,nil})
		end
	end


	local recipes = ZGVP:GetRecipesForProduct(producttype,productid)
	if type(recipes)=="table" then
		for ri,recipe in ipairs(recipes) do
			local repetitions = math.ceil(needed/recipe.nummade[1]) -- we use this recipe so many times
			local reagentscenarios = {}
			for re,reagent in ipairs(recipe.reagents) do
				local scens = ZGVP:GetCraftScenarios("item",reagent.id,reagent.needed*repetitions)
				if scens~="no data" then
					--for k,sc in ipairs(scens) do tinsert(reagentscenarios,sc) end

					reagentscenarios[re]=scens
				end
			end

			--local rs = ZGV.TableProduct(reagentscenarios) -- scenarios for ALL elements, flat.

			--for k,v in ipairs(rs) do tinsert(results,{"CRAFT",recipe.link,
			for k,v in ipairs(rs) do tinsert(results,{"CRAFT "..needed.." "..recipe.link.." ("..needed.." crafts)",reagents=v}) end

		end
	end
	return results
end




if debug then GetItemInfo=function(id) return "SomeItem" end GetItemCount=function(id) return 3 end end


function ZGVP:GetBestCraftScenario(producttype,productid,needed,ignore_own,ignore_buy,limit,level)

	local results = {own=0,bought=0,crafted=0,price=100000000}

	needed=needed or 1

	local possible_purchases = { }

	level=level or 0
	if level==0 then
		seenrecipes={}
	end

	if producttype=="item" then

		print(("Need %d %s##%d. %s %s"):format(needed, (select(2,GetItemInfo(productid)) or "?"),productid, (ignore_own and "no own" or ""), (ignore_buy and "no buy" or "")))


		-- Use own materials for starters.


		if not ignore_own then
		
			local own = min(GetItemCount(productid),needed)

			if own>0 then
				print(("... Own %d"):format(own))
				results.own = own
			end

		end


		-- Consider purchases.


		if not ignore_buy then

			-- prepare for purchase - INCLUDING depleting the AH!
			if results.own<needed then -- more needed, okay
				local prices = ZGV.Gold.Scan:GetPrices(productid)
				if prices and next(prices) then
					local wouldbuy=0
					for price,count in ZGV.OrderedPairs(ZGV.Gold.Scan:GetPrices(productid)) do
						if #possible_purchases+results.own < needed then
							if results.own+#possible_purchases+count<needed then
								-- "buy" out, move on
								for i=1,count do  tinsert(possible_purchases,(possible_purchases[#possible_purchases] or 0) + price)  end
								print(("... ... can buy %s, %d * %d = %d, c'd"):format(productid,count,price,count*price))
							else
								-- finish up
								for i=results.own+#possible_purchases+1,needed do  tinsert(possible_purchases,(possible_purchases[#possible_purchases] or 0) + price)  end
								print(("... ... can buy %s, %d * %d = %d, all done"):format(productid,count,price,count*price))
							end
							-- Normally we'd break out, but OrderedPairs is going to leave its trace behind if we don't let it finish.
							-- It'd probably be best to just copy the array and dispose of it properly, but preopt is evil.
						end
					end
					--[[
					if own+bought==needed then
						tinsert(results,{"BUY "..bought.." "..(select(2,GetItemInfo(productid)) or "?").." "..productid,price=cost})
						print(("... BUY %d %s##%d for %d"):format(bought,select(2,GetItemInfo(productid)) or "?",productid,cost))
					end
					--]]
				end
			end
		
			print("... ... buying options:",#possible_purchases,table.concat(possible_purchases,","))

		end


		--[[
		if ZGV.Gold.usefulness[productid] then
			tinsert(results,{"FARM "..needed.." "..(select(2,GetItemInfo(productid)) or "?").." "..productid,baseprice=price*2,price=price*2*needed})
			print("Can FARM "..(select(2,GetItemInfo(productid)) or "?").." "..productid.." for "..price.."*"..needed.."="..price*needed)
		end
		--]]
	end


	local mincraft,maxcraft = needed-results.own-#possible_purchases, needed-results.own

	print("... ... crafting options: ",mincraft,"-",maxcraft)

	
	local recipes = ZGVP:GetRecipesForProduct(producttype,productid)

	if type(recipes)=="table" then
		for ri,recipe in ipairs(recipes) do
			print("... ... ... Recipe: ",recipe.link)
			local repetitions = math.ceil(needed/recipe.nummade[1]) -- we use this recipe so many times
			local reagentscenarios = {}
			for re,reagent in ipairs(recipe.reagents) do
				local needed = reagent.num*repetitions
				local stillneeded = max(0,needed-GetItemCount(reagent.id))
				if stillneeded>0 then
					local scens = ZGVP:GetBestCraftScenario("item",reagent.id,stillneeded)
					if scens~="no data" then
						--for k,sc in ipairs(scens) do tinsert(reagentscenarios,sc) end
						reagentscenarios[re]=scens
					end
				end
			end

			--for k,v in ipairs(rs) do tinsert(results,{"CRAFT",recipe.link,
			local sum=0
			for k,scen in ipairs(reagentscenarios) do
				sum=sum+(scen.price or 0)
			end
			tinsert(results,{"CRAFT "..needed.." "..recipe.link.." ("..needed.." crafts)",price=sum,reagents=reagentscenarios})
			print("Can CRAFT "..needed.." "..recipe.link.." ("..needed.." crafts) for "..sum)

		end
	end

	if results.own+results.bought+results.crafted < needed then
		tinsert(results,{"FAIL "..needed.." "..(select(2,GetItemInfo(productid)) or "?").." "..productid,price=100000000})
		print(("... NOT ENOUGH! Got only %d/%d"):format(results.own+results.bought+results.crafted,needed))
	end

	--[[
	local bestscenario=select(2,next(results))
	for k,res in ipairs(results) do
		if res.price<bestscenario.price then
			bestscenario=res
		end
	end
	return bestscenario,"ALL CONSIDERED:",results
	--]]
	return {}

end


local function TestTradeSkill()
		local link = GetTradeSkillItemLink(GetTradeSkillSelectionIndex())
		if not link then return end
		local typ,id = link:match("|H(%w+):(%d+)")
		id=tonumber(id)
		BSC = ZGVP:GetBestCraftScenario(typ,id,1,"ignore own","ignore buy")
		print("/spoo BSC for details")
end
-- hooksecurefunc("SelectTradeSkill",TestTradeSkill)

if debug then ZGVP:GetBestCraftScenario("item",3360,1,1,1) end --ifdebug


function ZGVP:GetAllCraftScenarios() -- omg
	local RK = ZGV.db.char.RecipesKnown
	if not RK or not next(RK) then return "no data" end

	local all={}
	local limit=10
	
	for skillid,skills in pairs(RK) do
		local l=0
		all[skillid]={}
		for spellid,recipe in pairs(skills) do
			all[skillid][recipe.productid] = ZGVP:GetCraftScenarios(recipe.producttype,recipe.productid)
			l=l+1  if l==limit then break end
		end
	end

	return all
end
