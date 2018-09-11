AAP_BonusCrapAAP_BonusCrap = {}
function AAP.GliderCountFunc()
	return GetItemCount(109076)
end
function AAP.GliderFunc()
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
function AAP.CheckQPFiller(AAP_T_questID, AAP_T_Step)
	if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
		if (AAP.ActiveStuff and AAP.ActiveStuff["Fillers"]) then
			for AAP_index,AAP_value in pairs(AAP.ActiveStuff["Fillers"]) do
				if (tonumber(AAP_T_questID) == tonumber(AAP_index)) then
					for AAP_index2,AAP_value2 in pairs(AAP.ActiveStuff["Fillers"][AAP_index]) do
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
function AAP.AddToQWatch(AAP_Watchers)
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
function AAP.RemoveQWatch(AAP_Watchers)
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
function AAP.ReturnDoneNr(AAP_t_dnr)
	local aap_t1 = 0
	local aap_t2 = 0
	for AAP_index,AAP_value in pairs(AAP.ActiveStuff["Done"]) do
		aap_t1 = aap_t1 + 1
		if (AAP.CompletedQs[AAP_value] == true) then
			aap_t2 = aap_t2 + 1
		end
	end
	aap_t2 = AAP_t_dnr - aap_t2
	return aap_t2
end
function AAP.CheckCRangeText()
	local derp = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]
	local i = 1
	while i  <= 15 do
		derp = derp + 1
		if (AAP.QuestList[AAP.ActiveZone][derp] and AAP.QuestList[AAP.ActiveZone][derp]["FlightPath"]) then
			local Derp2 = AAP_Locals["Get Flight Point"]
			return Derp2
		elseif (AAP.QuestList[AAP.ActiveZone][derp] and AAP.QuestList[AAP.ActiveZone][derp]["UseFlightPath"]) then
			if (AAP.QuestList[AAP.ActiveZone][derp] and AAP.QuestList[AAP.ActiveZone][derp]["Boat"]) then
				local Derp2 = AAP_Locals["Boat to"]
				return Derp2
			else
				local Derp2 = AAP_Locals["Fly to"]
				return Derp2
			end
		elseif (AAP.QuestList[AAP.ActiveZone][derp] and AAP.QuestList[AAP.ActiveZone][derp]["PickUp"]) then
			local Derp2 = AAP_Locals["Accept Quest"]
			return Derp2
		elseif (AAP.QuestList[AAP.ActiveZone][derp] and AAP.QuestList[AAP.ActiveZone][derp]["Done"]) then
			local Derp2 = AAP_Locals["Turn in Quest"]
			return Derp2
		elseif (AAP.QuestList[AAP.ActiveZone][derp] and AAP.QuestList[AAP.ActiveZone][derp]["Qpart"]) then
			local Derp2 = AAP_Locals["Complete Quest"]
			return Derp2
		elseif (AAP.QuestList[AAP.ActiveZone][derp] and AAP.QuestList[AAP.ActiveZone][derp]["SetHS"]) then
			local Derp2 = AAP_Locals["Set Hearthstone"]
			return Derp2
		elseif (AAP.QuestList[AAP.ActiveZone][derp] and AAP.QuestList[AAP.ActiveZone][derp]["QpartPart"]) then
			local Derp2 = AAP_Locals["Complete Quest"]
			return Derp2
		end

		i = i + 1
	end
	local Derp2 = AAP_Locals["Travel to"]
	return Derp2
end
function AAP.CheckQP(AAP_T_questID, AAP_T_Step)
	if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
		if (AAP.ActiveStuff and AAP.ActiveStuff["Qpart"]) then
			for AAP_index,AAP_value in pairs(AAP.ActiveStuff["Qpart"]) do
				if (tonumber(AAP_T_questID) == tonumber(AAP_index)) then
					for AAP_index2,AAP_value2 in pairs(AAP.ActiveStuff["Qpart"][AAP_index]) do
						if (tonumber(AAP_T_Step) == tonumber(AAP_index2)) then
							return 1
						end
					end
				end
			end
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["QpartPart"]) then
			for AAP_index,AAP_value in pairs(AAP.ActiveStuff["QpartPart"]) do
				if (tonumber(AAP_T_questID) == tonumber(AAP_index)) then
					for AAP_index2,AAP_value2 in pairs(AAP.ActiveStuff["QpartPart"][AAP_index]) do
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
function AAP.PrintFillers(AAP_T_ars)
	local i = 1
	local ars = AAP_T_ars
	while GetQuestLogTitle(i) do
		local questTitle, level, suggestedGroup, isHeader, isCollapsed, isComplete, frequency, questID = GetQuestLogTitle(i)

		if (AAP_Test_Var == 1) then
			H3[questID] = questID
		end


		local numObjectives = GetNumQuestLeaderBoards(SelectQuestLogEntry(i))
		if (questID > 0 and AAP.InstanceTest() == 0 and AAP_SettingsOpen == 0) then
			if ( not isHeader) then
				for h=1, numObjectives do
					local text = 0
					local text, type, finished = GetQuestLogLeaderBoard(h, SelectQuestLogEntry(i))
					if (finished == true) then
						finished = 1
					else
						finished = 0
					end
					if (finished ~= 1 and AAP.CheckQPFiller(questID, h) == 1) then
						if (select(2,GetQuestObjectiveInfo(questID, 1, false)) == "progressbar") then
							local AAP_Mathstuff = tonumber(GetQuestProgressBarPercent(questID))
							AAP_Mathstuff = floor((AAP_Mathstuff + 0.5))
							text = "["..AAP_Mathstuff.."%] " .. text
--print("Bonus Objective?! Qid:"..questID)
						end
						AAP_BonusCrap[questID] = 1
						if (not AAP1[AAP.Realm][AAP.Name]["SkippedBonusObj"][questID]) then
							ars = ars + 1
							--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
							AAP.QuestList.QuestFrames["FS"..ars]:SetText("[".. ars .."] "..text)

							local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
							if (aapwidth and aapwidth > 400) then
								AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
							else
								AAP.QuestList.QuestFrames[ars]:SetWidth(410)
							end
							AAP.NamedBookedFS[questID.."-"..h] = ars
							AAP.SetButton(ars, ars)
							AAP.QuestList.QuestFrames[ars]["BQid"] = questID
							AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
							AAP.QuestList.QuestFrames[ars]:Show()
							if (AAP_BonusObj[questID]) then
								AAP.QuestList.QuestFrames["FS"..ars]["Button"]:Show()
							else
								AAP.QuestList.QuestFrames["FS"..ars]["Button"]:Hide()
							end
						end
					end
				end
			end
		end
		i = i + 1
	end
end
function AAP.Check_Droppable()
	local QidZ = AAP.ActiveStuff["DroppableQuest"]["Qid"]
	if (AAP.CompletedQs[QidZ] or AAP_ActiveQuests[QidZ]) then
		return 0
	end
	return 1
end
function AAP.CheckMobid(AAP_t_MobID)
	if (AAP_NPCList and AAP_NPCList[AAP_t_MobID]) then
		return AAP_NPCList[AAP_t_MobID]
	else
		return AAP.ActiveStuff["DroppableQuest"]["Text"]
	end
end

function AAP.UpdateQuestList()
--	if (WorldMapFrame:IsVisible()) then
--		return
--	end
	local CLi = 0
	AAP_BonusCrap = nil
	AAP_BonusCrap = {}
	AAP.NamedBookedFS = nil
	AAP.NamedBookedFS = {}
	for CLi = 1, 10 do
		AAP.QuestList.QuestFrames[CLi]:Hide()
		if (not InCombatLockdown()) then
			AAP.QuestList2["BF"..CLi]:Hide()
		end
		AAP.QuestList.QuestFrames["FS"..CLi]["Button"]:Hide()
	end
	if (AAP1[AAP.Realm][AAP.Name]["Settings"]["ShowQList"] == 0) then
		return
	end
	local i = 1
	local ars = 0
	if (AAP_SettingsOpen == 1) then
		ars = ars + 1
		--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))

		AAP.QuestList.QuestFrames["FS"..ars]:SetText("Test 1")
							local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
							if (aapwidth and aapwidth > 400) then
								AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
							else
								AAP.QuestList.QuestFrames[ars]:SetWidth(410)
							end
		AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
		AAP.QuestList.QuestFrames[ars]:Show()
		ars = ars + 1
		--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
		AAP.QuestList.QuestFrames["FS"..ars]:SetText("Test 2")
							local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
							if (aapwidth and aapwidth > 400) then
								AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
							else
								AAP.QuestList.QuestFrames[ars]:SetWidth(410)
							end
		AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
		AAP.QuestList.QuestFrames[ars]:Show()
		ars = ars + 1
		--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
		AAP.QuestList.QuestFrames["FS"..ars]:SetText("Test 3")
							local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
							if (aapwidth and aapwidth > 400) then
								AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
							else
								AAP.QuestList.QuestFrames[ars]:SetWidth(410)
							end
		AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
		AAP.QuestList.QuestFrames[ars]:Show()
	end
	if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] and AAP.InstanceTest() == 0 and AAP_SettingsOpen == 0) then
		local factionz = UnitFactionGroup("player")
		if ((UnitLevel("player") > 117) and (not IsQuestFlaggedCompleted(51770)) and (factionz ~= "Alliance")) then
			AAP.QuestList.Warcamp:Show()
		else
			AAP.QuestList.Warcamp:Hide()
		end

		if (AAP.ActiveStuff and AAP.ActiveStuff["SearchBags"]) then

		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["ClearZP"]) then
			AAP.ActiveZonePick = 0
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["ExtraLine"]) then
			local AAPExtralk = AAP.ActiveStuff["ExtraLine"]
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			if (AAPExtralk == 1) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText("** "..AAP_Locals["HeFlying"].." **")
			end
			if (AAPExtralk == 2) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["ClickShrine"])
			end
			if (AAPExtralk == 3) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Talk to NPC to ride boat"])
			end
			if (AAPExtralk == 4) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Takes little dmg at start1"])
			end
			if (AAPExtralk == 5) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Click 1 Dirt Pile"])
			end
			if (AAPExtralk == 6) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Go Up Elevator"])
			end
			if (AAPExtralk == 7) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Jump off Bridge"])
			end
			if (AAPExtralk == 8) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Jump off"])
			end
			if (AAPExtralk == 9) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["ClickAltar"])
			end
			if (AAPExtralk == 10) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["ClickTotem"])
			end
			if (AAPExtralk == 11) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Kajamite"])
			end
			if (AAPExtralk == 12) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Spices"])
			end
			if (AAPExtralk == 13) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["SeaUrchineBrine"])
			end
			if (AAPExtralk == 14) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["JolPoweder"])
			end
			if (AAPExtralk == 15) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["JolStir"])
			end
			if (AAPExtralk == 16) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["JolNotes"])
			end
			if (AAPExtralk == 17) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["JolHandin"])
			end
			if (AAPExtralk == 18) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["TopOfBoat"])
			end
			if (AAPExtralk == 19) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Dontwaitrun"])
			end
			if (AAPExtralk == 20) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Doesntmatterwep"])
			end
			if (AAPExtralk == 21) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Extracaravans"])
			end
			if (AAPExtralk == 22) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["dotsexpire"])
			end
			if (AAPExtralk == 23) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Banneronstuff"])
			end
			if (AAPExtralk == 24) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["GetSaurolistBuff"])
			end
			if (AAPExtralk == 25) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Get Flight Point"])
			end
			if (AAPExtralk == 26) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Fixed Quest"])
			end
			if (AAPExtralk == 27) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Talk to Princess Talanji"])
			end
			if (AAPExtralk == 28) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Zone Complete"])
			end
			if (AAPExtralk == 29) then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Missing quest"])
			end
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["ExtraLine"] and AAP.ActiveStuff["ExtraLine"] == 4) then
			local AAPExtralk = AAP.ActiveStuff["ExtraLine"]
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Takes little dmg at start2"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["Bloodlust"]) then
			if (AAP.ActiveStuff["Immuneatstart"]) then
				ars = ars + 1
				--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
				AAP.QuestList.QuestFrames["FS"..ars]:SetText("** "..AAP_Locals["Immuneatstart"].." **")
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
				AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
				AAP.QuestList.QuestFrames[ars]:Show()
			end
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText("** "..AAP_Locals["Bloodlust"].." **")
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["Waitforportal"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText("** "..AAP_Locals["waitforportal"].." **")
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["WaitforsetHS"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText("** "..AAP_Locals["WaitforsetHS"].." **")
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["BeneathHandin"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["BeneathHandin"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()

			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["Totemdmg"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText("** "..AAP_Locals["Totemdmg"].." **")
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["WarModeChk"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText("** "..AAP_Locals["WarModeOff"].." **")
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["LoaInfo"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText("** "..AAP_Locals["LoaInfo1"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["LoaInfo"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText("** "..AAP_Locals["LoaInfo2"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["UseDalaHS"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			local bag, slot = AAP.FindQitemFunc(65274)
			local sta11, sta12 = GetItemCooldown(65274)
			if (sta11 and sta11 > 0) then
				bag = "nope"
			end
			if (bag == "nope") then
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["UseDalaHS"])
			else
				local name = GetItemInfo(65274)
				AAP.QuestList.QuestFrames["FS"..ars]:SetText("Use: "..name)
			end
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["DalaranToOgri"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["DalaranToOgri"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["PortZuldazar"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["PortZuldazar"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["Scenario1"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Scenarios())
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["Scenario2"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Scenarios())
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["Scenario3"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Scenarios())
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["Scenario4"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Scenarios())
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["Scenario5"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Scenarios())
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["DontGlider"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Dontglide"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["UseGlider"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Use Item"]..": "..AAP.GliderFunc())
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["PickUp"]) then
			ars = ars + 1
			local aap_t1 = 0
			local aap_t2 = 0
			for AAP_index,AAP_value in pairs(AAP.ActiveStuff["PickUp"]) do
				aap_t1 = aap_t1 + 1
				if (IsQuestFlaggedCompleted(AAP_value) == true) then
					AAP.CompletedQs[AAP_value] = true
				end
				if (AAP_ActiveQuests[AAP_value]) then
					aap_t2 = aap_t2 + 1
				elseif (AAP.CompletedQs[AAP_value] == true) then
					aap_t2 = aap_t2 + 1
				end
			end

			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Accept Quest"] ..": " .. aap_t1 - aap_t2)
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		elseif (AAP.ActiveStuff and AAP.ActiveStuff["Done"]) then
			if (AAP.ActiveStuff["Special"]) then
			else
				ars = ars + 1
				--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
				AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Turn in Quest"] ..": " .. AAP.ReturnDoneNr(getn(AAP.ActiveStuff["Done"])))
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
				AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
				AAP.QuestList.QuestFrames[ars]:Show()
			end
			for AAP_index,AAP_value in pairs(AAP.ActiveStuff["Done"]) do
				if (AAP_value and AAP_ActiveQuests[AAP_value] and AAP_ActiveQuests[AAP_value]["Title"] and IsQuestFlaggedCompleted(AAP_value) == false) then
					ars = ars + 1
					AAP.QuestList.QuestFrames["FS"..ars]:SetText(" - Q: "..AAP_ActiveQuests[AAP_value]["Title"])
					local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
					if (aapwidth and aapwidth > 400) then
						AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
					else
						AAP.QuestList.QuestFrames[ars]:SetWidth(410)
					end
					AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
					AAP.QuestList.QuestFrames[ars]:Show()
				end
			end
			AAP.BookingList["AAP.SetQPTT"] = 1
		elseif (AAP.ActiveStuff and AAP.ActiveStuff["CRange"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP.CheckCRangeText())
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		elseif (AAP.ActiveStuff and AAP.ActiveStuff["ZonePick"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Pick Zone"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		elseif (AAP.ActiveStuff and AAP.ActiveStuff["SetHS"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Set Hearthstone"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		elseif (AAP.ActiveStuff and AAP.ActiveStuff["UseFlightPath"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
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
			if (AAP.ActiveStuff["Boat"]) then
				Flytoez = AAP_Locals["Boat to"]
			else
				Flytoez = AAP_Locals["Fly to"]
			end
			AAP.QuestList.QuestFrames["FS"..ars]:SetText(Flytoez)
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		elseif (AAP.ActiveStuff and AAP.ActiveStuff["UseHS"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Use Hearthstone"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
		elseif (AAP.ActiveStuff and AAP.ActiveStuff["ZoneDone"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText("Zone Complete")
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP_ArrowActive = 0
		elseif (AAP.ActiveStuff and AAP.ActiveStuff["FlightPath"]) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText(AAP_Locals["Get Flight Point"])
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
			AAP.BookingList["AAP.SetQPTT"] = 1
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
		if (questID > 0 and AAP.InstanceTest() == 0 and AAP_SettingsOpen == 0) then
			AAP_BonusCrap[questID] = 1
			if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
				if (not isHeader and AAP.ActiveStuff and AAP.ActiveStuff["Special"] and questID == AAP.ActiveStuff["Done"][1]) then
					--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
					AAP.QuestList.QuestFrames["FS"..ars]:SetText(questTitle)
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
					AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
					AAP.QuestList.QuestFrames[ars]:Show()
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
							if (AAP.ActiveStuff and AAP.ActiveStuff["ExtraLine"]) then
								if (AAP.ActiveStuff["ExtraLine"] == 15) then
									AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
									AAP_Reset = 0
									AAP.BookingList["AAP_Plus"] = "AAP_Plus"
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
					if (ars and finished ~= 1 and AAP.CheckQP(questID, h) == 1 and questID ~= 46930) then
						if (not AAP1[AAP.Realm][AAP.Name]["SkippedBonusObj"][questID]) then
							ars = ars + 1
							--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
							if (not text) then
								text = "Error: Missing text"
								if (questID == 50331) then
									text = AAP_Locals["Boat to"]
								end
							end
							local aaptstext = "[".. ars .."] "..text
							AAP.NamedBookedFS[questID.."-"..h] = ars
							AAP.SetButton(ars, ars)
							AAP.QuestList.QuestFrames["FS"..ars]:SetText(aaptstext)
							local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
							if (aapwidth and aapwidth > 400) then
								AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
							else
								AAP.QuestList.QuestFrames[ars]:SetWidth(410)
							end
							AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
							AAP.QuestList.QuestFrames[ars]:Show()
							AAP.QuestList.QuestFrames[ars]["BQid"] = questID
							if (AAP_BonusObj[questID]) then
								AAP.QuestList.QuestFrames["FS"..ars]["Button"]:Show()
							else
								AAP.QuestList.QuestFrames["FS"..ars]["Button"]:Hide()
							end
						end
					end
					AAP_ActiveQuests[questID]["Obj"][h]["Comp"] = finished
				end
			end
		end
		i = i + 1
	end
	if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
		if (AAP.ActiveStuff and AAP.ActiveStuff["UseHS"]) then
			for AAP_index,AAP_value in pairs(AAP.ActiveStuff["Button"]) do
				AAP.SetButton(AAP_index, ars)
			end
		end
	end
	if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
		if (AAP.ActiveStuff and AAP.ActiveStuff["UseDalaHS"]) then
			for AAP_index,AAP_value in pairs(AAP.ActiveStuff["Button"]) do
				AAP.SetButton(AAP_index, ars)
			end
		end
	end
	if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
		if (AAP.ActiveStuff and AAP.ActiveStuff["DroppableQuest"] and AAP.Check_Droppable() == 1) then
			ars = ars + 1
			--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
			AAP.QuestList.QuestFrames["FS"..ars]:SetText("[".. ars+1 .."] "..AAP.CheckMobid(AAP.ActiveStuff["DroppableQuest"]["MobId"]).."s drops quest")
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
			AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
			AAP.QuestList.QuestFrames[ars]:Show()
		end
	end




	if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
		if (AAP.ActiveStuff and AAP.ActiveStuff["Qpart"]) then
			for AAP_index,AAP_value in pairs(AAP.ActiveStuff["Qpart"]) do
				if (IsQuestFlaggedCompleted(AAP_index) == true) then
					AAP.CompletedQs[AAP_index] = true
				end
				if (AAP_BonusObj[AAP_index] and not AAP_BonusCrap[AAP_index]) then
					if ((not AAP1[AAP.Realm][AAP.Name]["SkippedBonusObj"][AAP_index]) and (not AAP.CompletedQs[AAP_index])) then
						ars = ars + 1
						--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
						AAP.QuestList.QuestFrames["FS"..ars]:SetText("[".. ars+1 .."] Bonus Objective NotDone")
						local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
						if (aapwidth and aapwidth > 400) then
							AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
						else
							AAP.QuestList.QuestFrames[ars]:SetWidth(410)
						end
						AAP.SetButton(ars, ars)
						AAP.QuestList.QuestFrames[ars]["BQid"] = AAP_index
						AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
						AAP.QuestList.QuestFrames[ars]:Show()
						if (AAP_BonusObj[AAP_index]) then
							AAP.QuestList.QuestFrames["FS"..ars]["Button"]:Show()
						else
							AAP.QuestList.QuestFrames["FS"..ars]["Button"]:Hide()
						end
					end
				elseif (not AAP_BonusCrap[AAP_index] and (AAP_index < 100000) and (not AAP.CompletedQs[AAP_index]) and (not AAP.ActiveStuff["DroppableQuest"])) then
						ars = ars + 1
						--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
						AAP.QuestList.QuestFrames["FS"..ars]:SetText("[".. ars+1 .."] Error: Missing Quest: "..AAP_index)
			local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
			if (aapwidth and aapwidth > 400) then
				AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
			else
				AAP.QuestList.QuestFrames[ars]:SetWidth(410)
			end
						AAP.SetButton(ars, ars)
						AAP.QuestList.QuestFrames[ars]["BQid"] = AAP_index
						AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
						AAP.QuestList.QuestFrames[ars]:Show()
						if (AAP_index == 50331) then
							AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 2
							AAP_Reset = 0
							AAP.BookingList["AAP_Plus"] = "AAP_Plus"
							AAP_UPDQListV = AAP_UPDQListV2
						end
				end
			end
		end
		if (AAP.ActiveStuff and AAP.ActiveStuff["Fillers"]) then
			for AAP_index,AAP_value in pairs(AAP.ActiveStuff["Fillers"]) do
				if (IsQuestFlaggedCompleted(AAP_index) == true) then
					AAP.CompletedQs[AAP_index] = true
				end
				if (AAP_BonusObj[AAP_index] and not AAP_BonusCrap[AAP_index]) then
					if ((not AAP1[AAP.Realm][AAP.Name]["SkippedBonusObj"][AAP_index]) and (not AAP.CompletedQs[AAP_index])) then
						if (ars) then
							ars = ars + 1
							--AAP.QuestList.QuestFrames[ars]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,-((ars * 38)+ars))
							AAP.QuestList.QuestFrames["FS"..ars]:SetText("[".. ars+1 .."] Bonus Objective NotDone")
							local aapwidth = AAP.QuestList.QuestFrames["FS"..ars]:GetStringWidth()
							if (aapwidth and aapwidth > 400) then
								AAP.QuestList.QuestFrames[ars]:SetWidth(aapwidth+10)
							else
								AAP.QuestList.QuestFrames[ars]:SetWidth(410)
							end
							AAP.SetButton(ars, ars)
							AAP.QuestList.QuestFrames[ars]["BQid"] = AAP_index
							AAP.QuestList.QuestFrames[ars]:SetAlpha(1)
							AAP.QuestList.QuestFrames[ars]:Show()
							if (AAP_BonusObj[AAP_index]) then
								AAP.QuestList.QuestFrames["FS"..ars]["Button"]:Show()
							else
								AAP.QuestList.QuestFrames["FS"..ars]["Button"]:Hide()
							end
						end
					end
				end
			end
		end
	end










	AAP.PrintFillers(ars)
	local CLi
	--for CLi = 1, 25 do
	--	AAP.QuestList.QuestFrames[CLi]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,CLi * 38)
	--end

	AAP.BookingList["AAP_Plus"] = "AAP_Plus"
	AAP.BookingList["AAP.SetQPTT"] = 1
end


AAP.QH_EventFrame = CreateFrame("Frame")
AAP.QH_EventFrame:RegisterEvent ("ADDON_LOADED")
AAP.QH_EventFrame:RegisterEvent ("QUEST_REMOVED")
AAP.QH_EventFrame:RegisterEvent ("QUEST_ACCEPTED")
AAP.QH_EventFrame:RegisterEvent ("UNIT_QUEST_LOG_CHANGED")
AAP.QH_EventFrame:RegisterEvent ("PLAYER_ENTERING_WORLD")
AAP.QH_EventFrame:RegisterEvent ("UPDATE_MOUSEOVER_UNIT")
AAP.QH_EventFrame:SetScript("OnEvent", function(self, event, ...)
	if (event=="ADDON_LOADED" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if (arg1 ~= "Azeroth Auto Pilot") then
			return
		end
		AAP.Updatedelay = AAP.QH_EventFrame:CreateAnimationGroup()
		AAP.Updatedelay.anim = AAP.Updatedelay:CreateAnimation()
		AAP.Updatedelay.anim:SetDuration(0.5)
		AAP.Updatedelay:SetLooping("REPEAT")
		AAP.Updatedelay:SetScript("OnLoop", function(self, event, ...)
			AAP_UPDQListV = AAP_UPDQListV2
			AAP.Updatedelay:Stop()
		end)
		AAP.Updatedelay2 = AAP.QH_EventFrame:CreateAnimationGroup()
		AAP.Updatedelay2.anim = AAP.Updatedelay2:CreateAnimation()
		AAP.Updatedelay2.anim:SetDuration(3)
		AAP.Updatedelay2:SetLooping("REPEAT")
		AAP.Updatedelay2:SetScript("OnLoop", function(self, event, ...)
			AAP_UPDQListV = AAP_UPDQListV2
			AAP.Updatedelay2:Stop()
		end)
		AAP_UPDQListV = AAP_UPDQListV2
	end
	if (event=="PLAYER_ENTERING_WORLD" and AAP_DisableAddon == 0) then
		AAP_UPDQListV = AAP_UPDQListV2
	end
	if (event=="UPDATE_MOUSEOVER_UNIT" and AAP_DisableAddon == 0) then
		if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
			if (AAP.ActiveStuff and AAP.ActiveStuff["RaidIcon"]) then
				local guid = UnitGUID("mouseover")
				if (guid) then
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid)
					if (npc_id and tonumber(AAP.ActiveStuff["RaidIcon"]) == tonumber(npc_id)) then
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
		AAP.Updatedelay:Play()
		AAP.Updatedelay2:Play()
		if (arg2 and AAP_ActiveQuests and AAP_ActiveQuests[arg2]) then
			AAP.AddToQWatch(arg2)
		end
	end
	if (event=="QUEST_REMOVED" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if (arg1) then
			AAP_ActiveQuests[arg1] = nil
			AAP.CompletedQs[arg1] = true
			AAP_UPDQListV = AAP_UPDQListV2
		end
	end
end)