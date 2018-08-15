AAP_BookedFS = {}
AAP_NamedBookedFS = {}
AAP_BonusCrap = {}
function AAP_GliderCountFunc()
	return GetItemCount(109076)
end
function AAP_GliderFunc()
	if (AAP1["GliderName"]) then
		return AAP1["GliderName"]
	else
		local bag, slot, itemLink, itemName, count
		local DerpGot = 0
		for bag = 0,4 do
			for slot = 1,GetContainerNumSlots(bag) do
				local itemID = GetContainerItemID(bag, slot)
				if (itemID and itemID == 109076) then
					DerpGot = 1
					itemLink = GetContainerItemLink(bag,slot)
					itemName = GetItemInfo(itemLink)
					count = GetItemCount(itemLink)
				end
			end
		end
		if (DerpGot == 1) then
			AAP1["GliderName"] = itemName
			return itemName
		else
			return "Goblin Glider Kit"
		end
	end
end
function AAP_CheckQPFiller(AAP_T_questID, AAP_T_Step)
	if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Fillers"]) then
			for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Fillers"]) do
				if (tonumber(AAP_T_questID) == tonumber(AAP_index)) then
					for AAP_index2,AAP_value2 in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Fillers"][AAP_index]) do
						if (tonumber(AAP_T_Step) == tonumber(AAP_value2)) then
							return 1
						end
					end
				end
			end
		end
	end
	return 0
end
function AAP_AddToQWatch(AAP_Watchers)
	local i = 1
	while GetQuestLogTitle(i) do
		local questTitle, level, suggestedGroup, isHeader, isCollapsed, isComplete, frequency, questID = GetQuestLogTitle(i)
		if (questID > 0) then
			if (not isHeader) then
				if (questID == AAP_Watchers) then
					AddQuestWatch(i)
				end
			end
		end
		i = i + 1
	end
end
function AAP_RemoveQWatch(AAP_Watchers)
	local i = 1
	while GetQuestLogTitle(i) do
		local questTitle, level, suggestedGroup, isHeader, isCollapsed, isComplete, frequency, questID = GetQuestLogTitle(i)
		if (questID > 0) then
			if (not isHeader) then
				if (questID == AAP_Watchers) then
					RemoveQuestWatch(i)
				end
			end
		end
		i = i + 1
	end
end
function AAP_ReturnDoneNr(AAP_t_dnr)
	local aap_t1 = 0
	local aap_t2 = 0
	for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Done"]) do
		aap_t1 = aap_t1 + 1
		if (AAP_CompletedQs[AAP_value] == true) then
			aap_t2 = aap_t2 + 1
		end
	end
	aap_t2 = AAP_t_dnr - aap_t2
	return aap_t2
end
function AAP_CheckCRangeText()
	local derp = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]
	local i = 1
	while i  <= 15 do
		derp = derp + 1
		if (AAP_Quests[derp] and AAP_Quests[derp]["FlightPath"]) then
			local Derp2 = AAP_Locals["Get Flight Point"]
			return Derp2
		elseif (AAP_Quests[derp] and AAP_Quests[derp]["UseFlightPath"]) then
			if (AAP_Quests[derp] and AAP_Quests[derp]["Boat"]) then
				local Derp2 = AAP_Locals["Boat to"]
				return Derp2
			else
				local Derp2 = AAP_Locals["Fly to"]
				return Derp2
			end
		elseif (AAP_Quests[derp] and AAP_Quests[derp]["PickUp"]) then
			local Derp2 = AAP_Locals["Accept Quest"]
			return Derp2
		elseif (AAP_Quests[derp] and AAP_Quests[derp]["Done"]) then
			local Derp2 = AAP_Locals["Turn in Quest"]
			return Derp2
		elseif (AAP_Quests[derp] and AAP_Quests[derp]["Qpart"]) then
			local Derp2 = AAP_Locals["Complete Quest"]
			return Derp2
		elseif (AAP_Quests[derp] and AAP_Quests[derp]["SetHS"]) then
			local Derp2 = AAP_Locals["Set Hearthstone"]
			return Derp2
		elseif (AAP_Quests[derp] and AAP_Quests[derp]["QpartPart"]) then
			local Derp2 = AAP_Locals["Complete Quest"]
			return Derp2
		end

		i = i + 1
	end
	local Derp2 = AAP_Locals["Travel to"]
	return Derp2
end
function AAP_CheckQP(AAP_T_questID, AAP_T_Step)
	if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Qpart"]) then
			for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Qpart"]) do
				if (tonumber(AAP_T_questID) == tonumber(AAP_index)) then
					for AAP_index2,AAP_value2 in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Qpart"][AAP_index]) do
						if (tonumber(AAP_T_Step) == tonumber(AAP_index2)) then
							return 1
						end
					end
				end
			end
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QpartPart"]) then
			for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QpartPart"]) do
				if (tonumber(AAP_T_questID) == tonumber(AAP_index)) then
					for AAP_index2,AAP_value2 in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QpartPart"][AAP_index]) do
						if (tonumber(AAP_T_Step) == tonumber(AAP_index2)) then
							return 1
						end
					end
				end
			end
		end
	end
	return 0
end
function AAP_PrintFillers(AAP_T_ars)
	local i = 1
	local ars = AAP_T_ars
	while GetQuestLogTitle(i) do
		local questTitle, level, suggestedGroup, isHeader, isCollapsed, isComplete, frequency, questID = GetQuestLogTitle(i)

		if (AAP_Test_Var == 1) then
			H3[questID] = questID
		end


		local numObjectives = GetNumQuestLeaderBoards(SelectQuestLogEntry(i))
		if (questID > 0 and AAP_InstanceTest() == 0 and AAP_SettingsOpen == 0) then
			if ( not isHeader) then
				for h=1, numObjectives do
					local text = 0
					local text, type, finished = GetQuestLogLeaderBoard(h, SelectQuestLogEntry(i))
					if (finished == true) then
						finished = 1
					else
						finished = 0
					end
					local AAP_NRFS = AAP_QH_GetFS(questID .."-"..h)
					if (AAP_NRFS and finished ~= 1 and AAP_CheckQPFiller(questID, h) == 1) then
						if (select(2,GetQuestObjectiveInfo(questID, 1, false)) == "progressbar") then
							local AAP_Mathstuff = tonumber(GetQuestProgressBarPercent(questID))
							AAP_Mathstuff = floor((AAP_Mathstuff + 0.5))
							text = "["..AAP_Mathstuff.."%] " .. text
--print("Bonus Objective?! Qid:"..questID)
						end
						AAP_BonusCrap[questID] = 1
						if (not AAP1[AAP_Realm][AAP_Name]["SkippedBonusObj"][questID]) then
							ars = ars + 1
							AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
							AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("[".. ars+1 .."] "..text)

							local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
							if (aapwidth and aapwidth > 400) then
								AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
							else
								AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
							end

							AAP_SetButton(AAP_NRFS, ars)
							AAP.QuestList.QuestFrames[AAP_NRFS]["BQid"] = questID
							AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
							AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
							if (AAP_BonusObj[questID]) then
								AAP.QuestList.QuestFrames["FS"..AAP_NRFS]["Button"]:Show()
							else
								AAP.QuestList.QuestFrames["FS"..AAP_NRFS]["Button"]:Hide()
							end
						end
					end
				end
			end
		end
		i = i + 1
	end
end
function AAP_Check_Droppable()
	local QidZ = AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["DroppableQuest"]["Qid"]
	if (AAP_CompletedQs[QidZ] or AAP_ActiveQuests[QidZ]) then
		return 0
	end
	return 1
end
function AAP_CheckMobid(AAP_t_MobID)
	if (AAP_NPCList and AAP_NPCList[AAP_t_MobID]) then
		return AAP_NPCList[AAP_t_MobID]
	else
		return AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["DroppableQuest"]["Text"]
	end
end

function AAP_UpdateQuestList()
--	if (WorldMapFrame:IsVisible()) then
--		return
--	end
	local CLi = 0
	AAP_BonusCrap = nil
	AAP_BonusCrap = {}
	for CLi = 1, 50 do
		AAP_BookedFS[CLi] = 0
		AAP_NamedBookedFS = nil
		AAP_NamedBookedFS = {}
		AAP.QuestList.QuestFrames["FS"..CLi]:SetText("")
		AAP.QuestList.QuestFrames[CLi]:Hide()
		if (not InCombatLockdown()) then
			AAP.QuestList2["BF"..CLi]:Hide()
		end
		AAP.QuestList.QuestFrames["FS"..CLi]["Button"]:Hide()
	end
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["ShowQList"] == 0) then
		return
	end
	local i = 1
	local ars = -1
	if (AAP_SettingsOpen == 1) then
		local AAP_NRFS = AAP_QH_GetFS("1234112341-1")
		ars = ars + 1
		AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))

		AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("Test 1")
							local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
							if (aapwidth and aapwidth > 400) then
								AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
							else
								AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
							end
		AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
		AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
		local AAP_NRFS = AAP_QH_GetFS("1234123141-1")
		ars = ars + 1
		AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
		AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("Test 2")
							local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
							if (aapwidth and aapwidth > 400) then
								AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
							else
								AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
							end
		AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
		AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
		local AAP_NRFS = AAP_QH_GetFS("1231412341-1")
		ars = ars + 1
		AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
		AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("Test 3")
							local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
							if (aapwidth and aapwidth > 400) then
								AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
							else
								AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
							end
		AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
		AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
	end
	if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] and AAP_InstanceTest() == 0 and AAP_SettingsOpen == 0) then
		local factionz = UnitFactionGroup("player")
		if ((UnitLevel("player") > 117) and (not AAP_CompletedQs[51770]) and (factionz ~= "Alliance")) then
			AAP.QuestList.Warcamp:Show()
		else
			AAP.QuestList.Warcamp:Hide()
		end

		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SearchBags"]) then

		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ClearZP"]) then
			AAP_ActiveZonePick = 0
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ExtraLine"]) then
			local AAPExtralk = AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ExtraLine"]
			local AAP_NRFS = AAP_QH_GetFS(AAPExtralk.."1220841-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			if (AAPExtralk == 1) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("** "..AAP_Locals["HeFlying"].." **")
			end
			if (AAPExtralk == 2) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["ClickShrine"])
			end
			if (AAPExtralk == 3) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Talk to NPC to ride boat"])
			end
			if (AAPExtralk == 4) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Takes little dmg at start1"])
			end
			if (AAPExtralk == 5) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Click 1 Dirt Pile"])
			end
			if (AAPExtralk == 6) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Go Up Elevator"])
			end
			if (AAPExtralk == 7) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Jump off Bridge"])
			end
			if (AAPExtralk == 8) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Jump off"])
			end
			if (AAPExtralk == 9) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["ClickAltar"])
			end
			if (AAPExtralk == 10) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["ClickTotem"])
			end
			if (AAPExtralk == 11) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Kajamite"])
			end
			if (AAPExtralk == 12) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Spices"])
			end
			if (AAPExtralk == 13) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["SeaUrchineBrine"])
			end
			if (AAPExtralk == 14) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["JolPoweder"])
			end
			if (AAPExtralk == 15) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["JolStir"])
			end
			if (AAPExtralk == 16) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["JolNotes"])
			end
			if (AAPExtralk == 17) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["JolHandin"])
			end
			if (AAPExtralk == 18) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["TopOfBoat"])
			end
			if (AAPExtralk == 19) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Dontwaitrun"])
			end
			if (AAPExtralk == 20) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Doesntmatterwep"])
			end
			if (AAPExtralk == 21) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Extracaravans"])
			end
			if (AAPExtralk == 22) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["dotsexpire"])
			end
			if (AAPExtralk == 23) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Banneronstuff"])
			end
			if (AAPExtralk == 24) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["GetSaurolistBuff"])
			end
			if (AAPExtralk == 25) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Get Flight Point"])
			end
			if (AAPExtralk == 26) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Fixed Quest"])
			end
			if (AAPExtralk == 27) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Talk to Princess Talanji"])
			end
			if (AAPExtralk == 28) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Zone Complete"])
			end
			if (AAPExtralk == 29) then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Missing quest"])
			end
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ExtraLine"] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ExtraLine"] == 4) then
			local AAPExtralk = AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ExtraLine"]
			local AAP_NRFS = AAP_QH_GetFS(AAPExtralk.."12220841-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Takes little dmg at start2"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Bloodlust"]) then
			if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Immuneatstart"]) then
				local AAP_NRFS = AAP_QH_GetFS("123230841-1")
				ars = ars + 1
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("** "..AAP_Locals["Immuneatstart"].." **")
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
				AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			end
			local AAP_NRFS = AAP_QH_GetFS("1230841-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("** "..AAP_Locals["Bloodlust"].." **")
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Waitforportal"]) then
			local AAP_NRFS = AAP_QH_GetFS("1232841-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("** "..AAP_Locals["waitforportal"].." **")
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["WaitforsetHS"]) then
			local AAP_NRFS = AAP_QH_GetFS("1234841-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("** "..AAP_Locals["WaitforsetHS"].." **")
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["BeneathHandin"]) then
			local AAP_NRFS = AAP_QH_GetFS("1232541-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["BeneathHandin"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Totemdmg"]) then
			local AAP_NRFS = AAP_QH_GetFS("1232242-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("** "..AAP_Locals["Totemdmg"].." **")
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["WarModeChk"]) then
			local AAP_NRFS = AAP_QH_GetFS("12932242-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("** "..AAP_Locals["WarModeOff"].." **")
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["LoaInfo"]) then
			local AAP_NRFS = AAP_QH_GetFS("1312242-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("** "..AAP_Locals["LoaInfo1"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["LoaInfo"]) then
			local AAP_NRFS = AAP_QH_GetFS("1312552-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("** "..AAP_Locals["LoaInfo2"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["UseDalaHS"]) then
			local AAP_NRFS = AAP_QH_GetFS("12112552-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			local bag, slot = AAP_FindQitemFunc(65274)
			local sta11, sta12 = GetItemCooldown(65274)
			if (sta11 and sta11 > 0) then
				bag = "nope"
			end
			if (bag == "nope") then
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["UseDalaHS"])
			else
				local name = GetItemInfo(65274)
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("Use: "..name)
			end
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["DalaranToOgri"]) then
			local AAP_NRFS = AAP_QH_GetFS("15112512-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["DalaranToOgri"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["PortZuldazar"]) then
			local AAP_NRFS = AAP_QH_GetFS("1522512-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["PortZuldazar"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Scenario1"]) then
			local AAP_NRFS = AAP_QH_GetFS("1267141-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Scenarios())
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Scenario2"]) then
			local AAP_NRFS = AAP_QH_GetFS("1267141-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Scenarios())
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Scenario3"]) then
			local AAP_NRFS = AAP_QH_GetFS("1267141-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Scenarios())
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Scenario4"]) then
			local AAP_NRFS = AAP_QH_GetFS("1267141-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Scenarios())
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Scenario5"]) then
			local AAP_NRFS = AAP_QH_GetFS("1267141-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Scenarios())
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["DontGlider"]) then
			local AAP_NRFS = AAP_QH_GetFS("123452341-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Dontglide"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["UseGlider"]) then
			local AAP_NRFS = AAP_QH_GetFS("123412341-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Use Item"]..": "..AAP_GliderFunc())
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["PickUp"]) then
			local AAP_NRFS = AAP_QH_GetFS(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["PickUp"][1] .."-1")
			ars = ars + 1
			local aap_t1 = 0
			local aap_t2 = 0
			for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["PickUp"]) do
				aap_t1 = aap_t1 + 1
				if (AAP_ActiveQuests[AAP_value]) then
					aap_t2 = aap_t2 + 1
				elseif (AAP_CompletedQs[AAP_value] == true) then
					aap_t2 = aap_t2 + 1
				end
			end

			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Accept Quest"] ..": " .. aap_t1 - aap_t2)
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		elseif (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Done"]) then
			if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Special"]) then
			else
				local AAP_NRFS = AAP_QH_GetFS(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Done"][1] .."-1")
				ars = ars + 1
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
				AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Turn in Quest"] ..": " .. AAP_ReturnDoneNr(getn(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Done"])))
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
				AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			end
			AAP_SetQPTT()
		elseif (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["CRange"]) then
			local AAP_NRFS = AAP_QH_GetFS(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["CRange"] .."-21")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_CheckCRangeText())
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		elseif (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ZonePick"]) then
			local AAP_NRFS = AAP_QH_GetFS("1234567-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Pick Zone"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		elseif (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SetHS"]) then
			local AAP_NRFS = AAP_QH_GetFS("12345678-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Set Hearthstone"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		elseif (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["UseFlightPath"]) then
			local AAP_NRFS = AAP_QH_GetFS(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["UseFlightPath"].."-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			local factionz = UnitFactionGroup("player")
			local Zzone = C_Map.GetBestMapForUnit("player")
			local AAP_Cont = "X1"
			if (Zzone == 862 or Zzone == 863 or Zzone == 864) then
				AAP_Cont = "X2"
			end
			if (Zzone == 895 or Zzone == 896 or Zzone == 942) then
				AAP_Cont = "X2"
			end
			local Flytoez = ""
			if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Boat"]) then
				Flytoez = AAP_Locals["Boat to"]
			else
				Flytoez = AAP_Locals["Fly to"]
			end
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(Flytoez)
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		elseif (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["UseHS"]) then
			local AAP_NRFS = AAP_QH_GetFS("22345678-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Use Hearthstone"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		elseif (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ZoneDone"]) then
			local AAP_NRFS = AAP_QH_GetFS("222345678-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("Zone Complete")
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_ArrowActive = 0
		elseif (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["FlightPath"]) then
			local AAP_NRFS = AAP_QH_GetFS(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["FlightPath"] .."-1")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(AAP_Locals["Get Flight Point"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
			AAP_SetQPTT()
		end

	end
	while GetQuestLogTitle(i) do
		local questTitle, level, suggestedGroup, isHeader, isCollapsed, isComplete, frequency, questID = GetQuestLogTitle(i)
		local numObjectives = GetNumQuestLeaderBoards(SelectQuestLogEntry(i))
		if (not isComplete) then
			isComplete = 0
		else
			isComplete = 1
		end
		if (questID > 0 and AAP_InstanceTest() == 0 and AAP_SettingsOpen == 0) then
			AAP_BonusCrap[questID] = 1
			if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
				if (not isHeader and AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Special"] and questID == AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Done"][1]) then
					local AAP_NRFS = AAP_QH_GetFS(questID .."-1")
					ars = ars + 1
					AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
						AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(questTitle)
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
					AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
					AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
				end
			end
			if (not AAP_ActiveQuests[questID]) then
				AAP_ActiveQuests[questID] = {}
			end
			if (not AAP_ActiveQuests[questID]["Obj"]) then
				AAP_ActiveQuests[questID]["Obj"] = {}
			end
			if (not isHeader) then
				AAP_ActiveQuests[questID]["Title"] = questTitle
				AAP_ActiveQuests[questID]["Comp"] = isComplete
				AAP_ActiveQuests[questID]["NrObj"] = numObjectives
				local changed = 0
				for h=1, numObjectives do
					local text = 0
					local text, type, finished = GetQuestLogLeaderBoard(h, SelectQuestLogEntry(i))
					if (finished == true) then
						finished = 1
					else
						finished = 0
					end
					if (not AAP_ActiveQuests[questID]["Obj"][h]) then
						AAP_ActiveQuests[questID]["Obj"][h] = {}
					end
					if (questID == 51991) then
						local AAP_Mathstuff = tonumber(GetQuestProgressBarPercent(questID))
						AAP_Mathstuff = floor((AAP_Mathstuff + 0.5))
						text = "["..AAP_Mathstuff.."%] " .. text
					elseif (questID == 49755) then
						local AAP_Mathstuff = tonumber(GetQuestProgressBarPercent(questID))
						AAP_Mathstuff = floor((AAP_Mathstuff + 0.5))
						text = "["..AAP_Mathstuff.."%] " .. text
					elseif (questID == 51677) then
						local AAP_Mathstuff = tonumber(GetQuestProgressBarPercent(questID))
						AAP_Mathstuff = floor((AAP_Mathstuff + 0.5))
						text = "["..AAP_Mathstuff.."%] " .. text
						if (AAP_Mathstuff > 58 and AAP_Mathstuff < 75) then
							if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ExtraLine"]) then
								if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ExtraLine"] == 15) then
									AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
									AAP_Reset = 0
									AAP_Plus()
								end
							end
						end
					elseif ((select(2,GetQuestObjectiveInfo(questID, 1, false)) == "progressbar") and text) then
						local AAP_Mathstuff = tonumber(GetQuestProgressBarPercent(questID))
						AAP_Mathstuff = floor((AAP_Mathstuff + 0.5))
						text = "["..AAP_Mathstuff.."%] " .. text
						AAP_ActiveQuests[questID]["Obj"][h]["text"] = text
						AAP_ActiveQuests[questID]["Obj"][h]["progressbar"] = GetQuestProgressBarPercent(questID)
					else
						AAP_ActiveQuests[questID]["Obj"][h]["text"] = text
					end
					local AAP_NRFS = AAP_QH_GetFS(questID .."-"..h)
					if (AAP_NRFS and finished ~= 1 and AAP_CheckQP(questID, h) == 1 and questID ~= 46930) then
						if (not AAP1[AAP_Realm][AAP_Name]["SkippedBonusObj"][questID]) then
							ars = ars + 1
							AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
							AAP_SetButton(AAP_NRFS, ars)
							if (not text) then
								text = "Error: Missing text"
								if (questID == 50331) then
									text = AAP_Locals["Boat to"]
								end
							end
							local aaptstext = "[".. ars+1 .."] "..text
							AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText(aaptstext)
							local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
							if (aapwidth and aapwidth > 400) then
								AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
							else
								AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
							end
							AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
							AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
							AAP.QuestList.QuestFrames[AAP_NRFS]["BQid"] = questID
							if (AAP_BonusObj[questID]) then
								AAP.QuestList.QuestFrames["FS"..AAP_NRFS]["Button"]:Show()
							else
								AAP.QuestList.QuestFrames["FS"..AAP_NRFS]["Button"]:Hide()
							end
						end
					end
					AAP_ActiveQuests[questID]["Obj"][h]["Comp"] = finished
				end
			end
		end
		i = i + 1
	end
	if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["UseHS"]) then
			for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Button"]) do
				AAP_SetButton(AAP_index, ars)
			end
		end
	end
	if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["UseDalaHS"]) then
			for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Button"]) do
				AAP_SetButton(AAP_index, ars)
			end
		end
	end
	if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["DroppableQuest"] and AAP_Check_Droppable() == 1) then
			local AAP_NRFS = AAP_QH_GetFS(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["DroppableQuest"]["Qid"] .."-11")
			ars = ars + 1
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("[".. ars+1 .."] "..AAP_CheckMobid(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["DroppableQuest"]["MobId"]).."s drops quest")
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
			AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
		end
	end




	if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Qpart"]) then
			for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Qpart"]) do
				if (AAP_BonusObj[AAP_index] and not AAP_BonusCrap[AAP_index]) then
					if ((not AAP1[AAP_Realm][AAP_Name]["SkippedBonusObj"][AAP_index]) and (not AAP_CompletedQs[AAP_index])) then
						local AAP_NRFS = AAP_QH_GetFS(AAP_index .."-"..1)
						ars = ars + 1
						AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
						AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("[".. ars+1 .."] Bonus Objective NotDone")
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
						AAP_SetButton(AAP_NRFS, ars)
						AAP.QuestList.QuestFrames[AAP_NRFS]["BQid"] = AAP_index
						AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
						AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
						if (AAP_BonusObj[AAP_index]) then
							AAP.QuestList.QuestFrames["FS"..AAP_NRFS]["Button"]:Show()
						else
							AAP.QuestList.QuestFrames["FS"..AAP_NRFS]["Button"]:Hide()
						end
					end
				elseif (not AAP_BonusCrap[AAP_index] and (AAP_index < 100000) and (not AAP_CompletedQs[AAP_index]) and (not AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["DroppableQuest"])) then
						local AAP_NRFS = AAP_QH_GetFS(AAP_index .."-"..1)
						ars = ars + 1
						AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
						AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("[".. ars+1 .."] Error: Missing Quest: "..AAP_index)
			local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
			end
						AAP_SetButton(AAP_NRFS, ars)
						AAP.QuestList.QuestFrames[AAP_NRFS]["BQid"] = AAP_index
						AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
						AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
						if (AAP_index == 50331) then
							AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 2
							AAP_Reset = 0
							AAP_Plus()
							AAP_UPDQListV = AAP_UPDQListV2
						end
				end
			end
		end
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Fillers"]) then
			for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Fillers"]) do
				if (AAP_BonusObj[AAP_index] and not AAP_BonusCrap[AAP_index]) then
					if ((not AAP1[AAP_Realm][AAP_Name]["SkippedBonusObj"][AAP_index]) and (not AAP_CompletedQs[AAP_index])) then
						local AAP_NRFS = AAP_QH_GetFS(AAP_index .."-"..1)
						if (AAP_NRFS) then
							ars = ars + 1
							AAP.QuestList.QuestFrames[AAP_NRFS]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
							AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:SetText("[".. ars+1 .."] Bonus Objective NotDone")
							local aapwidth = AAP.QuestList.QuestFrames["FS"..AAP_NRFS]:GetStringWidth()
							if (aapwidth and aapwidth > 400) then
								AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(aapwidth+10)
							else
								AAP.QuestList.QuestFrames[AAP_NRFS]:SetWidth(410)
							end
							AAP_SetButton(AAP_NRFS, ars)
							AAP.QuestList.QuestFrames[AAP_NRFS]["BQid"] = AAP_index
							AAP.QuestList.QuestFrames[AAP_NRFS]:SetAlpha(1)
							AAP.QuestList.QuestFrames[AAP_NRFS]:Show()
							if (AAP_BonusObj[AAP_index]) then
								AAP.QuestList.QuestFrames["FS"..AAP_NRFS]["Button"]:Show()
							else
								AAP.QuestList.QuestFrames["FS"..AAP_NRFS]["Button"]:Hide()
							end
						end
					end
				end
			end
		end
	end










	AAP_PrintFillers(ars)
	local CLi
	--for CLi = 1, 25 do
	--	AAP.QuestList.QuestFrames[CLi]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,CLi * 38)
	--end

	AAP_Plus()
end
function AAP_QH_GetFS(AAP_qnumbr)
	if (AAP_NamedBookedFS[AAP_qnumbr]) then
		return AAP_NamedBookedFS[AAP_qnumbr]
	else
		for AAP_i,AAP_v in pairs(AAP_BookedFS) do
			if (AAP_v == 0) then
				AAP_BookedFS[AAP_i] = AAP_qnumbr
				AAP_NamedBookedFS[AAP_qnumbr] = AAP_i
				return AAP_i
			end
		end
	end
end

function AAP_RemoveFS(AAPRnr)
	for AAP_i,AAP_v in pairs(AAP_BookedFS) do
		if (AAPRnr == AAP_v) then
			AAP_BookedFS[AAP_i] = 0
			AAP_NamedBookedFS[AAP_v] = nil
			AAP.QuestList.QuestFrames["FS"..AAP_i]:SetText("")
			AAP.QuestList.QuestFrames[AAP_i]:SetAlpha(0)
			AAP.QuestList.QuestFrames[AAP_i]:Hide()
		end
	end
end

AAP_QH_EventFrame = CreateFrame("Frame")
AAP_QH_EventFrame:RegisterEvent ("ADDON_LOADED")
AAP_QH_EventFrame:RegisterEvent ("QUEST_REMOVED")
AAP_QH_EventFrame:RegisterEvent ("QUEST_ACCEPTED")
AAP_QH_EventFrame:RegisterEvent ("UNIT_QUEST_LOG_CHANGED")
AAP_QH_EventFrame:RegisterEvent ("PLAYER_ENTERING_WORLD")
AAP_QH_EventFrame:RegisterEvent ("UPDATE_MOUSEOVER_UNIT")
AAP_QH_EventFrame:SetScript("OnEvent", function(self, event, ...)
	if (event=="ADDON_LOADED" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if (arg1 ~= "Azeroth Auto Pilot") then
			return
		end
		local CLi
		for CLi = 1, 50 do
			AAP_BookedFS[CLi] = 0
		end
		AAP_Updatedelay = AAP_QH_EventFrame:CreateAnimationGroup()
		AAP_Updatedelay.anim = AAP_Updatedelay:CreateAnimation()
		AAP_Updatedelay.anim:SetDuration(0.5)
		AAP_Updatedelay:SetLooping("REPEAT")
		AAP_Updatedelay:SetScript("OnLoop", function(self, event, ...)
			AAP_UPDQListV = AAP_UPDQListV2
			AAP_Updatedelay:Stop()
		end)
		AAP_Updatedelay2 = AAP_QH_EventFrame:CreateAnimationGroup()
		AAP_Updatedelay2.anim = AAP_Updatedelay2:CreateAnimation()
		AAP_Updatedelay2.anim:SetDuration(3)
		AAP_Updatedelay2:SetLooping("REPEAT")
		AAP_Updatedelay2:SetScript("OnLoop", function(self, event, ...)
			AAP_UPDQListV = AAP_UPDQListV2
			AAP_Updatedelay2:Stop()
		end)
		AAP_UPDQListV = AAP_UPDQListV2
	end
	if (event=="PLAYER_ENTERING_WORLD" and AAP_DisableAddon == 0) then
		AAP_UPDQListV = AAP_UPDQListV2
	end
	if (event=="UPDATE_MOUSEOVER_UNIT" and AAP_DisableAddon == 0) then
		if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
			if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["RaidIcon"]) then
				local guid = UnitGUID("mouseover")
				if (guid) then
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid)
					if (npc_id and tonumber(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["RaidIcon"]) == tonumber(npc_id)) then
						if (not GetRaidTargetIndex("mouseover")) then
							SetRaidTarget("mouseover",8)
						end
					end
				end
			end
		end
	end
	if (event=="UNIT_QUEST_LOG_CHANGED" and AAP_DisableAddon == 0) then
		AAP_UPDQListV = AAP_UPDQListV2
	end

	if (event=="QUEST_ACCEPTED" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		AAP_UPDQListV = AAP_UPDQListV2
		AAP_Updatedelay:Play()
		AAP_Updatedelay2:Play()
		if (arg2 and AAP_ActiveQuests and AAP_ActiveQuests[arg2]) then
			AAP_AddToQWatch(arg2)
		end
	end
	if (event=="QUEST_REMOVED" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if (arg1) then
			AAP_ActiveQuests[arg1] = nil
			AAP_CompletedQs[arg1] = true
			AAP_UPDQListV = AAP_UPDQListV2
		end
	end
end)