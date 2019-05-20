local ZGV = ZygorGuidesViewer
if not (ZGV or ZGV.ItemScore) then return end

local L = ZGV.L
local G = _G
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local CHAIN = ZGV.ChainCall
local UIFrameFadeOut,UIFrameFadeIn=ZGV.UIFrameFade.UIFrameFadeOut,ZGV.UIFrameFade.UIFrameFadeIn  -- prevent taint

local tinsert,tremove,print,ipairs,pairs,wipe,debugprofilestop,yield,resume=tinsert,tremove,print,ipairs,pairs,wipe,debugprofilestop,coroutine.yield,coroutine.resume

local ItemScore = ZGV.ItemScore
local GearFinder = {}
ItemScore.GearFinder = GearFinder
local ResultsCache = {}
GearFinder.__ResultsCache = ResultsCache

local SC_NOTYET = "not ready"

local ItemBase = { all = {} }
GearFinder.ItemBase = ItemBase

-- These are the possible slots to choose from to display the best gear for.
GearFinder.InvSlots = {
	"INVTYPE_HEAD",
	"INVTYPE_NECK",
	"INVTYPE_SHOULDER",
	"INVTYPE_CLOAK",
	"INVTYPE_CHEST",
	"INVTYPE_WRIST",
	"INVTYPE_HAND",
	"INVTYPE_WAIST",
	"INVTYPE_LEGS",
	"INVTYPE_FEET",
	"INVTYPE_FINGER",
	"INVTYPE_TRINKET",
	"INVTYPE_2HWEAPON",
	"INVTYPE_WEAPONMAINHAND",
	"INVTYPE_WEAPONOFFHAND",
	"INVTYPE_SHIELD",
	"INVTYPE_HOLDABLE",
}

--[[
	Uses parts of ItemScore to get the score.

	Parameters:
		itemid - Itemid for the item
		invslot - Slot this item is going to be tested for.
		itemlink - Blizzard hyperlink for the item. Needed for percise stat values. [Item] and [Item of the Bear] have the same id but different stats.
		verbose - debugs
	Return
		value - Score of the item.
		code - string for reason why this item is rejected
		reason - more detailed breakdown of reason why rejected.
--]]
function GearFinder:GetItemScore(itemlink,invslot,verbose)
	if not itemlink then return -1,SC_BADPARAM,"nil itemlink" end
	local total = 0

	local isvalid, code, desc, restricted, restrictInfo = GearFinder:IsValidDungeonItem(itemlink)
	if not isvalid and not restricted then return -1,code,desc end

	local score, code, desc = ItemScore:GetItemScore(itemlink,invslot,nil,verbose)
	if score < 0 then return score,code,desc
	else total = total + score end

	return total,code,desc,restricted,restrictInfo
end

--[[
	Returns true if the item is in our dungeon database AND we can access the dungeon that it is in.

	Parameters:
		itemid - Itemid for the item
	Return
		valid - 0/-1 based on if it can be used
		code - string for reason why this item is rejected
		reason - more detailed breakdown of reason why rejected.
		restriction - level or ilevel
		restrictionDist - when is it available
--]]

function GearFinder:IsValidDungeonItem(itemlink)
	if not itemlink then return false,SC_BADPARAM,"nil itemlink" end
	if not ZGV.ItemScore.playerlevel then return false, SC_NOTYET, "level not available yet." end
	if not self.items_in_guides then return false, SC_NOTYET, "no gear guides loaded/parsed" end

	local total,worn = GetAverageItemLevel()
	local inguides = self:GetItemFromGuides(itemlink)
	local dungeondata = inguides and ZGV.Dungeons[inguides.dungeon]
	if dungeondata then
		if dungeondata.minLevel and dungeondata.minLevel > ZGV.ItemScore.playerlevel then
			return false, SC_NOTFORU, "|cffff0000 level must be ".. dungeondata.minLevel.." to enter dungeon: "..dungeondata.id, "level", dungeondata.minLevel
		elseif dungeondata.min_ilevel and dungeondata.min_ilevel>total then
			return false, SC_NOTFORU, "|cffff0088 itemlevel must be "..dungeondata.min_ilevel.." to get this. dungeon: "..dungeondata.id, "ilevel", dungeondata.min_ilevel
		elseif dungeondata.isHoliday then
			return false, SC_NOTFORU,"|cffff88ff holiday dungeons not supported"
		elseif dungeondata.expansionLevel>GetExpansionLevel() then
			return false, SC_NOTFORU, "don't have expansion"
		else
			return true
		end
	end

	return false, SC_BADPARAM, "Item not in our data or missing that dungeon"
end

--== Scoring ==--

function GearFinder:GearFinderFrame_OnShow()
	self:Debug("Gear Finder Frame Shown")

	self:UpdateCharacterFramePane()
end

function GearFinder:GetBestItemsForSlot(invslot,count,verbose,item_id_order)
	if not ItemBase[invslot] then return end
	local results = {}
	local badresults = {}	-- upgrades with restrictions

	for n,itemlink in ipairs(ItemBase[invslot]) do
		-- Items are already cached because these items were gathered from self.itembase.
		itemlink = ZGV.ItemLink.SetLevel(itemlink)
		local score,code,desc,restricted,restricInfo = self:GetItemScore(itemlink, invslot)

		if score>=0 or verbose then
			if not restricted then
				-- It is a upgrade without any restrictions so this is perfedct!
				tinsert (results,{itemlink=itemlink,score=score,desc=desc,code=code})
			else
				-- Is an upgrade, but has a level or ilevel restriction
				tinsert (badresults,{itemlink=itemlink,score=score,desc=desc,code=code,restricted=restricted,restinfo=restricInfo})
			end
		end
	end

	if item_id_order then  --debugging only!!
		table.sort(results,function(a,b)  return a.itemlink<b.itemlink  end)
	else
		table.sort(results,function(a,b)  return a.score>b.score  end)
	end

	if #results>count then
		while #results>count do tremove(results) end
	end

	table.sort(badresults,function(a,b) return a.restinfo<b.restinfo end) -- Minimize the restriction. Assumed 1 level is as difficult as 1 itemlevel.. But those two in theory should never mix since ilevel should only be too low at level 90.
	-- Sorted by restriction after ^, now sort within each restriction by score.
	for i=1,#badresults - 1 do
		local thisTab,nextTab = badresults[i], badresults[i+1]
		if thisTab.restinfo == nextTab.restinfo and							-- Same restriction
		thisTab.score < nextTab.score then								-- next item has a higher score though
			badresults[i],badresults[i+1] = badresults[i+1],badresults[i]	-- Swapem
		end
	end

	if #badresults>count then
		while #badresults>count do tremove(badresults) end
	end

	if ZGV.db.profile.debug and verbose then
		self:Debug("Spec: ".. ItemScore.playerclass.. ItemScore.playerspec.."  Slot: "..invslot)
		for k,item in ipairs(results) do
			local name,link,quality,iLevel, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice = GetItemInfo(item.itemlink)
			local itemid = ZGV.ItemLink.GetItemID(item.itemlink)
			if ZGV.db.profile.debug then
				if item_id_order then
					self:Debug(("|cffbbff00##%d. %s|r  Score: %s%.1f %s %s"):format(itemid,link,(item.score>0 and "" or "|cffff8888"),item.score or "-666", item.code or "", item.desc or ""))
				else
					self:Debug(("|cffbbff00#%d. %s|r##%d  Score: %s%.1f %s %s"):format(k,link,itemid,(item.score>0 and "" or "|cffff8888"),item.score or "-666", item.code or "", item.desc or ""))
				end
			end
			if item.score>0 then self:GetItemScore(item.itemlink,invslot,verbose) end --just to print debug
		end
		self:Debug("END OF Spec: ".. ItemScore.playerclass.. ItemScore.playerspec.."  Slot: "..invslot)
	end

	-- Well either return the good results which we can use now, or return the ones we will use in the future.
	return results, badresults
end

-- 
function GearFinder:GetBestForSlot(invslot,nocache)
	local itemlink1,itemlink2,prettylink1,prettylink2 = ItemScore:GetItemInSlot(invslot)
	local index = ("%s%d-%d-%s-%s-%s"):format(ItemScore.playerclass,ItemScore.playerspec,ItemScore.playerlevel,invslot,(prettylink1 or "?"),(prettylink2 or "?"))
	local result = ResultsCache[index]

	if self.caching then self.updateAfterCaching=true return "Waiting on caching."  end

	if nocache then result=nil end

	-- if results are ready, just return them or they are already queued up, so will get to them eventually.
	if not result then
		self:Debug(("Requesting ResultsCache of %s."):format(index))
		ResultsCache[index]={ desc="queued", invslot=invslot }
		self.resultscache_is_clean=false

		return SC_NOTYET
	else
		if result.desc == "queued" then
			self:Debug(("ResultsCache of %s not ready yet."):format(index))
			return SC_NOTYET
		elseif result.desc == "uptodate" then
			self:Debug(("ResultsCache of %s is available."):format(index))
			return result
		else
			return "error"
		end
	end
end

function GearFinder:CleanResultsCache()
	if self.resultscache_is_clean then return end
	for index,v in pairs(ResultsCache) do
		if v.desc=="queued" then

			v.results,v.badresults = self:GetBestItemsForSlot(v.invslot,10)
			v.desc = "uptodate"

			if v.results then
				self.new_results_are_available = true
				self:Debug("Notifying display of new results")
			end
		end
	end
	self.resultscache_is_clean = true
	self:Debug("Cache is now clean.")
end

--== UI Controller == --
function GearFinder:UpdateCharacterFramePane()
	if not self.GearFinderFrame or not self.GearFinderFrame:IsVisible() then return end
	local gearFrame = self.GearFinderFrame

	self:Debug("Updating results display. New results are available OR just opened the frame.")
	self.new_results_are_available = nil

	local classrules = ItemScore.curRuleSet
	local types = classrules.itemtypes

	local some_are_unknown = false
	for i,itembutton in ipairs(gearFrame.Items) do
		local slot = itembutton.slot

		if  (slot=="INVTYPE_SHIELD" and not types.SHIELD)
		or (slot=="INVTYPE_HOLDABLE" and not types.MISCARM)
		or (slot=="INVTYPE_WEAPONOFFHAND" and not ItemScore.playerdualwield)
		or (slot=="INVTYPE_WEAPONMAINHAND" and not (types.WAND or types.DAGGER or types.MACE or types.SWORD or types.BOW) )	-- If you use a MH then one can use one of these
		or (slot=="INVTYPE_2HWEAPON" and not (types.TH_STAFF or types.TH_SWORD) ) --all 2h users can use swords/staffs
		then
			-- That slot doesn't apply to us.
			itembutton:Hide()
			itembutton:SetHeight(0.001)
		else
			itembutton:Show()
			itembutton:SetHeight(35)
			itembutton:SetSlot(slot)

			result = self:GetBestForSlot(slot)

			if type(result)~="table" then
				if result == SC_NOTYET then
					itembutton:SetText("...")
					some_are_unknown = true
				else
					itembutton:SetText(result or "?")
				end
			elseif (result.results and result.results[1]) or (result.badresults and result.badresults[1]) then
				-- gauge own item(s), for comparison
				local itemlink1,itemlink2 = ItemScore:GetItemInSlot(slot)
				if itemlink2 and not itemlink1 then itemlink1,itemlink2=itemlink2,itemlink1 end
				local score1,info1,score2,info2

				if slot=="INVTYPE_WEAPONMAINHAND" then
				-- exclude twohands from comparison; their stats trump onehanders always, so no onehanders would ever pop up
					local ownitemdata = ItemScore:GetItemStatsWithTooltip(itemlink1)
					if ownitemdata and ownitemdata.info.equipslot=="INVTYPE_2HWEAPON" then
						-- it's a twohander and mustn't be compared at all
						itemlink1,score1=nil,0
					end
				end

				-- get scores for own items
				-- These don't have to be dungeon items. So just use ItemScores scoring.
				if itemlink1 then  score1,info1 = ItemScore:GetItemScore(itemlink1,slot)  end   score1=score1 or 0
				if itemlink2 then  score2,info2 = ItemScore:GetItemScore(itemlink2,slot)  end   score2=score2 or 0
				if score1 > score2 and score2 > 0 then --swap items to keep track of them.
					score1,score2 = score2,score1
					itemlink1,itemlink2 = itemlink2,itemlink1
				end

				-- now we have the worse item's score in score1, the better's in score2.
				-- Either is -1 or 0 if there's no (valid) item there.

				local bestitem, bestitemlink
				bestitemlink="item:NONE"
				local myresult = result.results
				-- bestitem starts at results[1] which is the item with the highest score because results is sorted. If no bestitem is in results then checks badresults to find a item that they can't yet get
				
				while(1) do
					local foundItem
					bestitem = myresult[1]
					
					if bestitem then
						bestitemlink = bestitem.itemlink
				
						for i,itemtable in ipairs(myresult) do
							if bestitem.score > score1 and ItemScore:CanUseUniqueItem(bestitemlink,itemlink2) then
								-- Our current best item is better and doesn't break any uniqueness rules
								foundItem = 1
								break
							elseif (score2>0 and bestitem.score>score2) and ItemScore:CanUseUniqueItem(bestitemlink,itemlink1) then
								-- Current best item broke for the uniqueness on item2, so try to replace item2 instead.
								foundItem = 1
								break
							else
								-- Can't put this item in either slot, check the next item.
								bestitem = myresult[i]
								if not bestitem then break end
								bestitemlink = bestitem.itemlink
							end
						end
					end
					
					if foundItem or myresult==result.badresults then break end	-- If a item is found in results then done look in badresults
					myresult = result.badresults
				end

				if bestitem and ( bestitem.score > score1 or (score2 > 0 and bestitem.score > score2) ) then
					if not bestitemlink then error("Why no bestitemlink!?") end
					local data = self:GetItemFromGuides(bestitemlink)

					if not data then error("wtf, no data for item? "..bestitemlink) end
					
					itembutton:SetItem(bestitemlink,bestitem.restricted,bestitem.restinfo)
					assert(type(data.dungeon)=="number","Item "..bestitemlink.." has weird dungeon "..type(data.dungeon)..": "..data.dungeon)
					itembutton:SetDungeon(data.dungeon,data.boss,data.quest,data.special)
					itembutton:SetAlpha(not bestitem.restricted and 1.0 or 0.7)
					itembutton.scorediff = bestitem.score - score1
					-- valid suggestion
				else
					itembutton:SetText(L['itemfinder_noupgrade'],L['itemfinder_noupgrade_desc'])
					itembutton:SetItem()
					itembutton:SetDungeon()
					itembutton:SetAlpha(0.5)
					itembutton.scorediff = nil
				end
			else
				itembutton:SetItem()
				itembutton:SetDungeon()
				itembutton:SetAlpha(0.5)
				itembutton.scorediff = nil
				itembutton:SetText(L['itemfinder_noitems'],L['itemfinder_noitems_desc'])
			end
		end
	end
	if some_are_unknown then
		self.GearFinderFrame.BestDungButton:SetDungeon()
		self.GearFinderFrame.BestDungButton:SetHeight(35)
		self.GearFinderFrame.BestDungButton:SetText("...")
		self.GearFinderFrame.BestDungButton:Show()
	else
		-- find the best dungeon

		local bestdungs = {}
		local bestdungitems = {}

		for i,itembutton in ipairs(self.GearFinderFrame.Items) do
			if itembutton:IsShown() and itembutton.itemlink and not itembutton.restricted then
				local data = self:GetItemFromGuides(itembutton.itemlink)
				if not data then ZGV:Debug("Item "..itembutton.itemlink.." not found in guides!?") break end
				bestdungs[data.dungeon] = (bestdungs[data.dungeon] or 0) + itembutton.scorediff
				if not bestdungitems[data.dungeon] then bestdungitems[data.dungeon]={} end
				assert(itembutton.itemlink,"Why no .itemlink in ZGV.ItemScore.GearFinderFrame.Items["..i.."] !?")
				tinsert(bestdungitems[data.dungeon],{itemlink=itembutton.itemlink,prettylink=itembutton.prettylink,scorediff=itembutton.scorediff})
			end
		end

		local bestdung,bestn=nil,0
		for dung,dungn in pairs(bestdungs) do if dungn>bestn then bestdung,bestn=dung,dungn end end

		if bestdung then
			self.GearFinderFrame.BestDungButton.Slot:SetText("BEST DUNGEON:")
			self.GearFinderFrame.BestDungButton:SetDungeon(bestdung)
			self.GearFinderFrame.BestDungButton.bestitems = bestdungitems[bestdung]
			self.GearFinderFrame.BestDungButton:SetText(ZGV.Dungeons[bestdung]:GetName())
			self.GearFinderFrame.BestDungButton:SetHeight(35)
			self.GearFinderFrame.BestDungButton:Show()
		else
			self.GearFinderFrame.BestDungButton:SetHeight(0.001)
			self.GearFinderFrame.BestDungButton:Hide()
		end
	end

	-- update scroll height
	local totalHeight = 40
	for b,but in ipairs(ZygorGearFinderFrame.Items) do
		if but:IsShown() then
			totalHeight = totalHeight + but:GetHeight()
		end
	end
	ZygorGearFinderFrame.ScrollChild:SetHeight(totalHeight+10-(CharacterStatsPane.initialOffsetY or 0));
end

--== UI Setup ==--

--[[
	Template for the item buttons that show up in the Gear Frame.
--]]

local function getItemButton(name,parent)
	local but = CHAIN(CreateFrame("Button",name,parent))
		:SetSize(100,50)
		:RegisterForClicks("AnyUp")
		:SetScript("OnEnter",function(self)
			local itemlink = self.itemlink

			GameTooltip:SetOwner(self,"TOP")
			if itemlink then
				GameTooltip:SetHyperlink(itemlink)
			elseif self.bestitems then
				GameTooltip:SetText(ZGV.L['itemfinder_itemsindung'])
				for i,item in ipairs(self.bestitems) do
					local itemdata = ItemScore:GetItemStatsWithTooltip(item.itemlink)
					if itemdata and itemdata.info and itemdata.info.itemlink then
						GameTooltip:AddLine(("%s"):format(itemdata.info.prettylink:gsub("[%[%]]","")))
					end
				end
			elseif self.tip then
				GameTooltip:ZGV_ShowManyLines(self.tip)
				return
			else
				return
			end

			GameTooltip:Show()
		end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		:SetScript("OnClick",function(self)
			if ( IsModifiedClick("DRESSUP") and self.itemlink) then
				DressUpItemLink(self.itemlink)
				PlaySound("gsTitleOptionOK")
				return true
			end
		end)
	.__END

	-- Textures
		but.BgTop = CHAIN(but:CreateTexture(name.."BgTop","BACKGROUND"))
			:SetSize(169,5)
			:SetTexture("Interface\\CharacterFrame\\Char-Paperdoll-Parts")
			:SetTexCoord(0.00390625,0.66406250,0.50781250,0.57812500)
			:SetPoint("TOPLEFT")
		.__END

		but.BgBottom = CHAIN(but:CreateTexture(name.."BgBottom","BACKGROUND"))
			:SetSize(169,23)
			:SetTexture("Interface\\CharacterFrame\\Char-Paperdoll-Parts")
			:SetTexCoord(0.00390625,0.66406250,0.00781250,0.36718750)
			:SetPoint("BOTTOMLEFT",0,3)
		.__END

		but.BgMiddle = CHAIN(but:CreateTexture(name.."BgMiddle","BACKGROUND"))
			:SetSize(169,8)
			:SetTexture("Interface\\CharacterFrame\\Char-Stat-Middle")
			:SetTexCoord(0.00390625,0.66406250,0.00000000,1.00000000)
			:SetPoint("TOPLEFT",but.BgTop,"BOTTOMLEFT",1,0)
			:SetPoint("BOTTOMLEFT",but.BgBottom,"TOPLEFT")
			:SetVertTile(true)
		.__END

		but.Slot = CHAIN(but:CreateFontString(name.."Slot","OVERLAY"))
			:SetSize(0,16)
			:SetFont(FONT,12)
			:SetPoint("TOPLEFT",3,-3)
			:SetPoint("RIGHT")
			:SetJustifyH("LEFT")
			:SetText("Test")
		.__END

	-- Dungeon Button
		but.Dungeon = CHAIN(CreateFrame("Button",name.."Dungeon",but))
			:SetSize(20,20)
			:SetPoint("RIGHT",-4,-2)
			:SetAlpha(0)
			:SetScript("OnEnter",function(self)
				local p=self:GetParent()
				local dung = p.dungeonData
				if dung then
					GameTooltip:SetOwner(self,"TOP")
					if p.boss or p.quest or p.special then
						-- normal item button
						GameTooltip:SetText(L['itemfinder_openguide_dung']:format(dung:GetName()))

						if p.boss then
							GameTooltip:AddLine(L['itemfinder_openguide_boss']:format(ZGV.Localizers:GetTranslatedNPC(p.boss)))
						end
						if p.quest then
							if type(p.quest)=="table" then p.quest=p.quest[1] end
							local quest = ZGV.Localizers:GetQuestData(p.quest)
							if quest and quest.title then
								GameTooltip:AddLine(L['itemfinder_openguide_quest']:format(quest.title))
							else
								GameTooltip:AddLine(L['itemfinder_openguide_quest']:format("?"))
							end
						end
						if p.special then
							GameTooltip:AddLine(L['itemfinder_openguide_special']:format(p.special))
						end
					end
					GameTooltip:AddLine(L['itemfinder_openguide_open'])
					GameTooltip:Show()
				end
			end)
			:SetScript("OnLeave",function(self)
				GameTooltip:Hide()
			end)
			:SetScript("OnClick",function(self)
				local p=self:GetParent()
				local dmap = p.dungeonData and p.dungeonData.map
				if dmap then
					for g,guide in ipairs(ZGV.registeredguides) do
						if tonumber(guide.mapid)==tonumber(dmap) then ZGV:SetGuide(guide) return end
					end
					ZGV:Error("How odd. We don't seem to have a guide for "..GetMapNameByID(dmap))
				end
			end)
		.__END
		ZGV.AssignButtonTexture(but.Dungeon,ZGV.SkinDir.."titlebuttons",11,32)

	-- Item Label
		but.Label = CHAIN(CreateFrame("Frame",name.."Label",but))
			:SetSize(100,15)
			:SetPoint("TOPLEFT",8,-18)
			:SetPoint("RIGHT",-3,0)
		.__END

		but.Label.Text = CHAIN(but.Label:CreateFontString(name.."LabelText","OVERLAY"))
			:SetAllPoints()
			:SetFont(FONT,11)
			:SetJustifyH("LEFT")
		.__END

	-- Functions

		function but:SetItem(itemlink,restricted,restrictinfo)
			self.itemlink = itemlink
			self.restricted = restricted
			if itemlink and not restricted then
				local stats = ItemScore:GetItemStatsWithTooltip(itemlink)
				local name = stats and stats.info and stats.info.name or "?"
				self:SetText(stats and stats.info and (stats.info.prettylink:gsub("[%[%]]","")) or "?")
			elseif id then
				self:SetText(restricted and restrictinfo and L['itemfinder_soon']:format(restricted,restrictinfo) or "?")
			end
		end

		function but:SetText(text,tip)
			self.Label.Text:SetText(text)
			self.tip = tip
		end

		function but:SetDungeon(dunglfgid,boss,quest,special)
			local dungeon = ZGV.Dungeons[dunglfgid]
			if dungeon then
				self.dungeonName = dungeon:GetName()
				self.dungeonData = dungeon
			else
				self.dungeonName = "?"
				self.dungeonData = nil
			end
			self.heroic = heroic

			self.boss = boss
			self.quest = quest
			self.special = special
		end

		function but:SetSlot(slot)
			if slot=="INVTYPE_SHIELD" then slot="SHIELDSLOT" end
			if slot=="INVTYPE_WEAPONMAINHAND" and ItemScore.playerclass == "HUNTER" then slot="INVTYPE_RANGED" end	-- Ranged weapons are stored in WMH, but show the label as ranged for hunters
			self.Slot:SetText(_G[slot]:upper())
		end

	return but
end

local ctrlkeydown

--[[
	Create two different buttons that go on the character panel and then create the panel that we insert into the panel as well.
--]]

local function SetUp_ZygorGearFinderFrame()
	local self = GearFinder
	local PDFrame = PaperDollFrame
	-- Sidebar tab button:
	tinsert(PAPERDOLL_SIDEBARS,{
		name=L['Zygor Gear Finder'],
		frame="ZygorGearFinderFrame",
		icon=ZGV.DIR.."\\Skins\\guideicons-big",
		texCoords = {0,0.25,0.75,1.0} })

	PaperDollSidebarTabs:SetWidth(168+30)
	PaperDollSidebarTab3:SetPoint("BOTTOMRIGHT",PaperDollSidebarTabs,"BOTTOMRIGHT",-60,0)

	-- This frame is shown when the CP is expanded.
	self.SidebarTab = CHAIN(CreateFrame("Button","ZGVCharacterGearFinderButton",PaperDollSidebarTabs,"PaperDollSidebarTabTemplate",4))
		:SetPoint("LEFT",PaperDollSidebarTab3,"RIGHT",4,0)
		:SetScript("OnLoad",nil)
	.__END

	self.SidebarTab.Icon:SetSize(24,24)
	self.SidebarTab.Icon:SetPoint("BOTTOM",self.SidebarTab,"BOTTOM",0,2)

	PDFrame.ZygorGearFinderButton = self.SidebarTab

	-- This button is shown when CP is collapsed. Hide when expanded.
	self.PopoutButton = CHAIN(CreateFrame("Button", "ZygorGearFinderPopoutButton", PDFrame))
		:SetPoint("TOPRIGHT",PDFrame,"TOPRIGHT",-10,-32)
		:SetSize(25,25)
		:SetScript("OnClick",function() CharacterFrameExpandButton:Click() self.SidebarTab:Click() end)
		:SetNormalTexture(ZGV.DIR.."\\Skins\\guideicons-big")
		:SetScript("OnEnter",function(self) CHAIN(GameTooltip):SetOwner(self,"ANCHOR_RIGHT") :SetText("Zygor Gear Guides") :Show() end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	.__END
	self.PopoutButton:GetNormalTexture():SetTexCoord(0,0.25,0.75,1.0)

	-- Sidebar contents:
	local gearFrame = CHAIN(CreateFrame("ScrollFrame","ZygorGearFinderFrame",PDFrame,"UIPanelScrollFrameTemplate2"))
		:SetPoint("TOPLEFT",CharacterFrameInsetRight,"TOPLEFT",4,-4)
		:SetPoint("BOTTOMRIGHT",CharacterFrameInsetRight,"BOTTOMRIGHT",-27,2)
		:Hide()
	.__END

	self.GearFinderFrame = gearFrame

	gearFrame.ScrollChild = CHAIN(CreateFrame("Frame","ZygorGearFinderFrameScrollChild",gearFrame))
		:SetSize(170,150)
		:SetPoint("TOPLEFT")
	.__END

	gearFrame:SetScrollChild(gearFrame.ScrollChild)

	gearFrame.Header = CHAIN(gearFrame.ScrollChild:CreateFontString(nil,nil,"SystemFont_Shadow_Small"))
		:SetPoint("TOPLEFT",gearFrame.ScrollChild,"TOPLEFT",0,-1)
		:SetPoint("RIGHT",gearFrame.ScrollChild,"RIGHT",0,0)
		:SetJustifyH("CENTER") :SetJustifyV("TOP")
		:SetFont(FONT,12)
		:SetText(L['itemfinder_header'])
		:SetTextColor(1,0.8,0)
	.__END

	local bestdungbutton = getItemButton("ZygorGearFinderFrame_BestDungeon",gearFrame.ScrollChild)
	bestdungbutton:SetPoint("TOPLEFT",gearFrame.ScrollChild,"TOPLEFT",0,-gearFrame.Header:GetHeight()-5)
	bestdungbutton:SetPoint("RIGHT",gearFrame.ScrollChild,"RIGHT",0,0)
	bestdungbutton.BgTop:Hide()
	bestdungbutton.BgBottom:Hide()
	bestdungbutton.BgMiddle:Hide()

	gearFrame.BestDungButton = bestdungbutton

	-- set up item buttons
	gearFrame.Items = {}

	for i,slot in ipairs(self.InvSlots) do
		local itembutton =  getItemButton("ZygorGearFinderFrame_Item"..i,gearFrame.ScrollChild)
		itembutton.Dungeon:SetFrameLevel(itembutton.Label:GetFrameLevel()+1)

		if i==1 then
			CHAIN(itembutton)
				:SetPoint("TOPLEFT",bestdungbutton,"BOTTOMLEFT",0,-6)
				:SetPoint("RIGHT",gearFrame.ScrollChild,"RIGHT",0,0)
		else
			CHAIN(itembutton)
				:SetPoint("TOPLEFT",gearFrame.Items[i-1],"BOTTOMLEFT",0,0)
				:SetPoint("RIGHT",gearFrame.ScrollChild,"RIGHT",0,0)
		end

		itembutton.slot = slot

		if ZGV.db.profile.debug then
			local testbutton = CHAIN(CreateFrame("BUTTON","ZygorGearFinderFrame_Test"..i, itembutton, "UIPanelButtonTemplate"))
				:SetSize(10,10)
				:SetPoint("BOTTOMRIGHT")
				:SetScale(0.7)
				:SetScript("OnClick",function(self,but)
					local itype,itemid,itemlink = GetCursorInfo()
					local slot = self:GetParent().slot
					if itype=="item" then GearFinder:GetItemScore(itemlink,slot,"verbose") return end
					--else
					GearFinder:GetBestItemsForSlot(slot,50,"verbose",IsShiftKeyDown())
					GearFinder:Debug("OWN ITEMs for slot %s:",slot)
					local itemlink1,itemlink2 = ItemScore:GetItemInSlot(slot)
					if itemlink1 then GearFinder:GetItemScore(itemlink1,slot,"verbose") end
					if itemlink2 then GearFinder:GetItemScore(itemlink2,slot,"verbose") end
				end)
				:SetScript("OnEnter",function(self)
					local tip=ShoppingTooltip1
					tip:SetOwner(self,"RIGHT")
					tip:SetText("Click to test\nShift-click to sort by ID")
					tip:Show()
				end)

			.__END
		end

		gearFrame.Items[i] = itembutton
	end

	gearFrame:SetScript("OnLoad",function(self)
		ScrollFrame_OnLoad(self);
		ScrollFrame_OnScrollRangeChanged(self);
		self.ScrollBar.scrollStep = 50;
		self.initialOffsetY = 0
	end )
	gearFrame:SetScript("OnShow",function(self)
		GearFinder:GearFinderFrame_OnShow()
	end )
	gearFrame:SetScript("OnUpdate",function(self)
		local function maybeshowbutton(but)
			if but:IsShown() then
				if but.dungeonData and but:IsMouseOver() then
					if not but.ismouseover then
						UIFrameFadeIn(but.Dungeon, 0.2, but.Dungeon:GetAlpha(), 1.0)
					end
					if ctrlkeydown~=IsControlKeyDown() then
						ctrlkeydown=IsControlKeyDown()
						if ctrlkeydown then ShowInspectCursor() else ResetCursor() end
					end
				elseif not but:IsMouseOver() and but.ismouseover then
					UIFrameFadeOut(but.Dungeon, 0.2, but.Dungeon:GetAlpha(), 0.0)
				end
				but.ismouseover=but:IsMouseOver()
			end
		end
		for b,but in ipairs(self.Items) do maybeshowbutton(but) end
		maybeshowbutton(ZygorGearFinderFrame.BestDungButton)
	end )
end

--[[
	Called OnShow, but also when the character panel is expanded or collaspsed.
--]]

local function CharacterFrame_OnShow_Hook(...)
	self = GearFinder
	if not self.GearFinderFrame then
		SetUp_ZygorGearFinderFrame()
	end

	self.PopoutButton:SetShown(not CharacterFrame.Expanded)
end








--== Item Caching From Guide Files==--




--[[
	Adds the item into our lists of items to be analyzed for best items later.
	Sorts the items by their invtypes as well.

	Parameters:
		item - item table from ItemScore
	Return:
		nil
--]]

function GearFinder:AddItemToBase(item)
	if not item or not item.info.itemlink then return end

	local itemlink = ZGV.ItemLink.SetLevel(item.info.itemlink,0)
	if ItemBase.all[itemlink] then return end --already known

	local slot,slot2 = ItemScore:GetCommonInvType(item.info.equipslot)
	ItemBase.all[itemlink]=1

	if not ItemBase[slot] then ItemBase[slot] = {} end
	tinsert(ItemBase[slot],itemlink)

	if slot2 then
		if not ItemBase[slot2] then ItemBase[slot2] = {} end
		tinsert(ItemBase[slot2],itemlink)
	end
end

--[[
	Convert our data from the format in the guide files into something that we can use.

	self.Items has served its purpose after this. It is no longer needed because we have self.items_in_guides

	Parameters:
		nil
	Return:
		nil
--]]

function GearFinder:ParseItemDatabase()
	if not ItemScore.Items then return end

	self.items_in_guides = {}

	local is_alliance = UnitFactionGroup("player")=="Alliance" and "A"

	for dungeon,data in pairs(ItemScore.Items) do
		for i,itemset in ipairs(data) do
			for j,itemlink in ipairs(itemset) do repeat
				local boss,quest,special = itemset.boss,itemset.quest,itemset.special
				-- These 3 values could be tables or values. If a table then [1] is alliance [2] is horde. "none" means not available for that faction.
				if type(boss)=="table" then
					if is_alliance then
						if boss[1]=="none" then break end
						boss = boss[1]
					else
						if boss[2]=="none" then break end
						boss = boss[2]
					end
				elseif type(quest)=="table" then
					if is_alliance then
						if quest[1]=="none" then break end
						quest = quest[1]
					else
						if quest[2]=="none" then break end
						quest = quest[2]
					end
				elseif type(special)=="table" then
					if is_alliance then
						if special[1]=="none" then break end
						special = special[1]
					else
						if special[2]=="none" then break end
						special = special[2]
					end
				end

				itemlink=ZGV.ItemLink.SetLevel(itemlink,0)

				self.items_in_guides[itemlink]={  -- Beware. As of WOD, itemid can be an itemlink in the format of 12345:0:0:0:0:0:0:0:0:0:0:0
					dungeon = data.dungeon,
					dungeonmap = data.dungeonmap,
					heroic = data.heroic,
					boss = itemset.boss,
					quest = itemset.quest,
					special = itemset.special,
				}

				-- hack to update dungeons
				if data.dungeon and data.dungeonmap then
					local dungeon = ZGV.Dungeons[data.dungeon]
					if dungeon then
						dungeon.map=data.dungeonmap
					end
				end
			until true end
		end
	end

	-- Data is no longer needed.  GOODBYE
	ItemScore.Items = "data moved to ZGV.ItemScore.GearFinder.items_in_guides"
end

--[[
	Puts all of our raw data from the guide files into a queue to get processed.

	Parameters:
		nil
	Return:
		nil
--]]

function GearFinder:PrepareCache()
	self:ParseItemDatabase()

	self.cache_queue = {}
	self.retry_queue = {}

	self.cache_total = 0
	
	if not self.items_in_guides then return end

	-- prepare for caching
	for itemlink,guide in pairs(self.items_in_guides) do
		tinsert(self.cache_queue,itemlink)
		self.cache_total = self.cache_total + 1
	end
	self:Debug("%d items set for caching",self.cache_total)
end

--[[
	Thread to get all the dungeon items cached so that their stats are available when e need to score them later.

	Very low intensity because there is not a ton of info to process and it is not needed right at startup.
--]]

local CACHE_INTENSITY=50
local function _ItemCacheThread()
	local self = GearFinder
	self.caching = true

	-- Catchs items that shouldn't be in the guides. Gems/Throwing/Idols/Bags etc
	self.baditems = {}
	self.retry_counter = {}

	local t = debugprofilestop()
	
	local giswt_c,giswt_t=0,0
	local add_t=0

	local init_cache_len = #self.cache_queue

	local numGood=0
	
	while #self.cache_queue~= 0 or not self.caching do
		local itemlink = tremove(self.cache_queue,1)

		giswt_c=giswt_c+1
		local giswt_t1=debugprofilestop()
		local item = ItemScore:GetItemStatsWithTooltip(itemlink)
		giswt_t=giswt_t + debugprofilestop()-giswt_t1

		if not item then
			if not self.retry_counter[itemlink] then self.retry_counter[itemlink] = 0 end
			self.retry_counter[itemlink] = self.retry_counter[itemlink] + 1

			if self.retry_counter[itemlink] >= 20 then
				-- Same item has failed to cache 20 times. Time to exit because it isn't going to work.
				-- Return number of items unable to be cached.
				-- Well we are done caching, just report these items as failures and continue as usual.
				self.cached = true
				return "failure", #self.cache_queue + 1
			end

			-- Couldn't get the info this time, try again later
			tinsert(self.retry_queue,itemlink)
		else
			-- Caching was successful so remove the counter.
			self.retry_counter[itemlink] = nil
			numGood=numGood+1

			-- Item is a valid equipible item
			if ItemScore:IsGoodEquipSlot(item.info.equipslot) then
				self:AddItemToBase(item)
			else
				-- Can't equip the item? We should just remove it from the guides.
				self.baditems[itemlink] = item.info.equipslot
			end
		end

		local numCache = #self.cache_queue
		local numRetry = #self.retry_queue
		
		-- Take a break. Will resume on next OnUpdate.
		if debugprofilestop() - t > CACHE_INTENSITY then
			yield(("|cff00ff00%d|cff00aa00%%|r done (|cff88ff00%d|r good, |cffffff00%d|r to go, |cffff0000%d|r will retry)"):format((numGood/init_cache_len)*100, numGood, numCache, numRetry))
			t = debugprofilestop()
		end

		--[[
		local fps = GetFramerate()
		local target_fps = 10
		local fps_ratio = (fps/target_fps)
		CACHE_INTENSITY=CACHE_INTENSITY * fps_ratio
		CACHE_INTENSITY = min(max(CACHE_INTENSITY,5),50)
		--]]

		-- Cache is empty. Give yield to give GetItemInfo() to arrive for items in retry.  -- 2015-01-01 sinus: give what the what??
		if numCache == 0 and numRetry>0 then
			self.cache_queue, self.retry_queue = self.retry_queue, self.cache_queue
			yield(("Retrying |cffff0000%d|r items."):format(numRetry))
			t = debugprofilestop()
		end
	end

	yield(("Done %d stat checks, %.1f ms each."):format(giswt_c,giswt_t/giswt_c))
	
	self.cached = true
	return "success"
end


function GearFinder:GetItemFromGuides(itemlink)
	itemlink = ZGV.ItemLink.SetLevel(itemlink,0)
	return self.items_in_guides[itemlink]
end

--[[
	Stops the Caching thread and prints out the status at exit.

	Parameters:
		msg - message as to what the status at stopping is so additional information can be output if needed.
		count - used in the failure msg to notify user now many items failed to cache.
	Return:
		nil
--]]

function GearFinder:StopCachingThread(msg,failcount)
	msg = msg or "?"
	self:Debug("Caching thread stopped.")

	self.caching = nil
	self.cache_thread=nil

	if msg == "success" then
		self:Debug("Gear Caching complete! -------------")
	elseif msg == "failure" then
		self.cache_fails = self.cache_queue
		wipe(self.cache_queue)
		ZGV:Print(("ERROR initializing Gear Guides, %d items could not be processed. See ZGV.ItemScore.GearFinder.cache_fails"):format(failcount or 0))
	elseif msg == "error" then
		ZGV:Print("ERROR initializing Gear Guides, check the Lua errors and report them, please.")
		error(msg.."\nin\n".. (debugstack(thread) or "no stack"))
	end
end

--== Driver  ==--

--[[
	Called by the onUpdate frame. Driver for all of the various actions in the GearFinder.

	Starts by doing the caching.
--]]

function GearFinder:FrameOnUpdate()
	if not (ZGV.guidesloaded and ItemScore.Items) then return end

	if self.cache_thread and not self.cached then
		local good,ret,failcount = resume(self.cache_thread)

		if not good then
			self:StopCachingThread("error")
		else
			self:Debug("Itemcache: %s",(ret or "?"))

			if ret == "success" or ret == "failure" then
				self:StopCachingThread(ret,failcount)
			end
		end
	elseif self.updateAfterCaching then
		self.updateAfterCaching = nil
		self:UpdateCharacterFramePane()
	end

	if not self.resultscache_is_clean then
		self:CleanResultsCache()
	end

	if self.new_results_are_available then
		self:UpdateCharacterFramePane()
	end
end

--[[
	Setup for the Gear Finder by starting the caching thread and then setting up the hooks that are needed.
--]]

function GearFinder:DoStartup()
	if self.started then return end
	self.started = true

	self:PrepareCache()
	self.cache_thread = coroutine.create(_ItemCacheThread)

	-- Start out as true because nothing is there.
	self.resultscache_is_clean = true

	CharacterFrame:HookScript("OnShow",CharacterFrame_OnShow_Hook)
	hooksecurefunc("CharacterFrame_Expand",CharacterFrame_OnShow_Hook)
	hooksecurefunc("CharacterFrame_Collapse",CharacterFrame_OnShow_Hook)
end

function GearFinder:Debug(str,...)
	ItemScore:Debug("&gearfinder &_SUB2 "..str, ...)
	--print(("&gearFinder "..str):format(select(2,...)) )
end

tinsert(ZGV.startups,{"Item-GearFinder startup",function(self)
	if ZGV.db.profile.autogear then  GearFinder:DoStartup()  end
end})