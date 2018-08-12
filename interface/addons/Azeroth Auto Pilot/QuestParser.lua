QNumberLocal = 0
local AAP_Reset = 0
AAP_SpecialQ = 0
AAP_LastSent = 0
AAP_GroupListSteps = {}
AAP_GroupListStepsNr = 1
AAP_ActiveZoneTest = 0
AAP_ActiveZoneTestOld = 0
function AAP_IsInGroup()
	if (IsInGroup(LE_PARTY_CATEGORY_HOME) and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] and (AAP_LastSent ~= AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) and (AAP_InstanceTest() == 0)) then
		AAP_SendDelay = 1
		AAP_RepaintGroups()
	end
end
function AAP_SendGroup()
	if (IsInGroup(LE_PARTY_CATEGORY_HOME) and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] and (AAP_LastSent ~= AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) and (AAP_InstanceTest() == 0)) then
		C_ChatInfo.SendAddonMessage("AAPChat", AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone], "PARTY");
		AAP_LastSent = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]
	end
end
function AAP_TaxiSearchFunc(AAPMrX, AAPMrY)
	local CLi
	for CLi = 1, NumTaxiNodes() do
		local aapx,aapy = TaxiNodePosition(CLi)
		aapx = (floor(aapx * 1000)/10)
		aapy = (floor(aapy * 1000)/10)
		if (AAPMrX == aapx and AAPMrY == aapy) then
			return CLi
		end
	end

end
function AAP_GroupListingFunc(AAP_StepStuffs, AAP_GListName)
	if (not AAP_GroupListSteps[1]) then
		AAP_GroupListSteps[1] = {}
		AAP_GroupListStepsNr = 1
	end
	AAP_GroupListSteps[1]["Step"] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]
	AAP_GroupListSteps[1]["Name"] = AAP_Name
	if (AAP_GListName ~= AAP_Name) then
		local AAPNews = 0
		for AAP_index,AAP_value in pairs(AAP_GroupListSteps) do
			if (AAP_GroupListSteps[AAP_index]["Name"] == AAP_GListName) then
				AAP_GroupListSteps[AAP_index]["Step"] = AAP_StepStuffs
				AAPNews = 1
			end
		end
		if (AAPNews == 0) then
			AAP_GroupListStepsNr = AAP_GroupListStepsNr + 1
			AAP_GroupListSteps[AAP_GroupListStepsNr] = {}
			AAP_GroupListSteps[AAP_GroupListStepsNr]["Name"] = AAP_GListName
			AAP_GroupListSteps[AAP_GroupListStepsNr]["Step"] = AAP_StepStuffs
		end
	end
	AAP_RepaintGroups()
end
function AAP_RepaintGroups()
	if (AAP_InstanceTest() ~= 0) then
		local CLi
		for CLi = 1, 5 do
			AAP.PartyList.PartyFrames[CLi]:Hide()
			AAP.PartyList.PartyFrames2[CLi]:Hide()
		end
	else
		if (not AAP_GroupListSteps[1]) then
			AAP_GroupListSteps[1] = {}
			AAP_GroupListStepsNr = 1
		end
		AAP_GroupListSteps[1]["Step"] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]
		AAP_GroupListSteps[1]["Name"] = AAP_Name
		local CLi
		for CLi = 1, 5 do
			if (AAP_GroupListSteps[CLi]) then
				AAP.PartyList.PartyFramesFS1[CLi]:SetText(AAP_GroupListSteps[CLi]["Name"])
				AAP.PartyList.PartyFramesFS2[CLi]:SetText(AAP_GroupListSteps[CLi]["Step"])
				local CLi2
				local Highnr = 0
				for CLi2 = 1, 5 do
					if (AAP_GroupListSteps[CLi2] and AAP_GroupListSteps[CLi2]["Step"] and AAP_GroupListSteps[CLi] and AAP_GroupListSteps[CLi]["Step"] and (AAP_GroupListSteps[CLi2]["Step"] > AAP_GroupListSteps[CLi]["Step"])) then
						Highnr = 1
					end
				end
				if (Highnr == 1) then
					AAP.PartyList.PartyFramesFS2[CLi]:SetTextColor(1, 0, 0)
				else
					AAP.PartyList.PartyFramesFS2[CLi]:SetTextColor(0, 1, 0)
				end
				AAP.PartyList.PartyFrames[CLi]:Show()
				AAP.PartyList.PartyFrames2[CLi]:Show()
			else
				AAP.PartyList.PartyFrames[CLi]:Hide()
				AAP.PartyList.PartyFrames2[CLi]:Hide()
			end
		end
	end
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["ShowGroup"] == 0) then
		local CLi
		for CLi = 1, 5 do
			AAP.PartyList.PartyFrames[CLi]:Hide()
			AAP.PartyList.PartyFrames2[CLi]:Hide()
		end
	end
end
function AAP_Plus()
	AAP_CompletedQs = GetQuestsCompleted()
	if (UnitLevel("player") == 120) then
		for AAP_index,AAP_value in pairs(AAP_BonusObj) do
			if (not AAP_CompletedQs[AAP_index]) then
				AAP_CompletedQs[AAP_index] = true
			end
		end
	end
	if (AAP1[AAP_Realm][AAP_Name]["SkippedBonusObj"]) then
		for AAP_index,AAP_value in pairs(AAP1[AAP_Realm][AAP_Name]["SkippedBonusObj"]) do
			if (not AAP_CompletedQs[AAP_index]) then
				AAP_CompletedQs[AAP_index] = true
			end
		end
	end
	if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]) then
			if (AAP_CompletedQs[47440] == true) then
				AAP1[AAP_Realm][AAP_Name]["LoaPick"] = 1
			elseif (AAP_CompletedQs[47439]) then
				AAP1[AAP_Realm][AAP_Name]["LoaPick"] = 2
			end
			local LoaSkip = 0
			if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["PickedLoa"] and AAP1[AAP_Realm][AAP_Name]["LoaPick"] > 0) then
				local nrloa = AAP1[AAP_Realm][AAP_Name]["LoaPick"]
				if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["PickedLoa"] ~= nrloa) then
					LoaSkip = 1
				end
			end
			if (LoaSkip == 1) then
				AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
				AAP_Reset = 0
				AAP_Plus()
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["PickUp"]) then
				AAP_Pickup()
				if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["PickUp2"]) then
					AAP_Pickup2()
				end
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ZoneDone"]) then
				if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ZoneDone"] == 1233211) then
					AAP_ActiveZonePick = 0
					AAP1[AAP_Realm][AAP_Name]["Zone862D"] = 1
					if (AAP_Reset == 0) then
						AAP_Reset = 1
						AAP_UPDQListV = AAP_UPDQListV2
						AAP_Plus()
					end
				end
				if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ZoneDone"] == 12523211) then
					AAP_ActiveZonePick = 0
					AAP1[AAP_Realm][AAP_Name]["Zone862Camp"] = 1
					if (AAP_Reset == 0) then
						AAP_Reset = 1
						AAP_UPDQListV = AAP_UPDQListV2
						AAP_Plus()
					end
				end
				if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ZoneDone"] == 4232161) then
					AAP_ActiveZonePick = 0
					AAP1[AAP_Realm][AAP_Name]["Zone895D"] = 1
					if (AAP_Reset == 0) then
						AAP_Reset = 1
						AAP_UPDQListV = AAP_UPDQListV2
						AAP_Plus()
					end
				end
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QaskPopup"]) then
				AAP_QAskPopWanted()
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Qpart"]) then
				AAP_QuestPartStep()
				if (AAP_Quests and AAP_ActiveZone and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Qpart2"]) then
					AAP_QuestPartStep2()
				end
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QpartPart"]) then
				AAP_QuestPartPartStep()
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Done"]) then
				AAP_Done()
				if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Done2"]) then
					AAP_Done2()
				end
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["DropQuest"]) then
				AAP_DropQuest()
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["CRange"]) then
				AAP_CRange()
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["AskQuestLine"]) then
				AAP_AskQline()
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["FlightPath"]) then
				AAP_GetFP()
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["UseFlightPath"]) then
				AAP_UseFP()
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ZonePick"]) then
				AAP_ZonePick()
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SetHS"]) then
				AAP_SetHS()
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["UseDalaHS"]) then
				AAP_UseDalaHS()
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["UseHS"]) then
				AAP_UseHS()
			end
		end
	end
	AAP_QuestDelayUpdTimer:Play()
	AAP_IsInGroup()
end
function AAP_UseFP()
	if ((AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SpecialifSkip"]) and ((not AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SpecialifSkip"]]) or (AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SpecialifSkip"]] == 1))) then
		QNumberLocal = 0
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		AAP_Reset = 0
		AAP_Plus()
	elseif (AAP_CompletedQs[AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["UseFlightPath"]] == true) then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP_Plus()
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP_AskQline()
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["ChooseQuests"] == 1) then
		local SugGroupNr = AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["NrQuests"]
		AAP.QuestList.SugQuestFrame2FS1:SetText(AAP_Locals["Optional"])
		AAP.QuestList.SugQuestFrame2FS2:SetText(ObjectiveTrackerBlocksFrame.QuestHeader.Text:GetText()..": "..SugGroupNr)
		if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SkipzNr"]) then
			AAP.QuestList.SugQuestFrame2.TextureAFrame.arrow:SetTexture(AAP_Skip[AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SkipzNr"]])
		else
			AAP.QuestList.SugQuestFrame2.TextureAFrame.arrow:SetTexture("")
		end
		AAP.QuestList.SugQuestFrame2:Show()
	else
		AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["AskQuestLine"]] = 1
		AAP.QuestList.SugQuestFrame2:Hide()
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP_Plus()
	end
end
function AAP_QAskPopQline(AAP_answer)
	if (AAP_answer == "yes") then
		AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["AskQuestLine"]] = 1
		AAP.QuestList.SugQuestFrame2:Hide()
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP_Plus()
	else
		AAP.QuestList.SugQuestFrame2:Hide()
		AAP_RemoveQWatch(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["AskQuestLine"])
		AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["AskQuestLine"]] = 0
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP_Plus()
	end
end
function AAP_QAskPopWanted()
	local Qid = AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QaskPopup"]
	if (AAP_CompletedQs[Qid] == true) then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP_Plus()
		AAP.QuestList.SugQuestFrame:Hide()
	elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"] and AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"]] and AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"]] == 0) then
		QNumberLocal = 0
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		AAP_Reset = 0
		AAP_Plus()
	else
		local SugGroupNr = AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Group"]
		AAP.QuestList.SugQuestFrameFS1:SetText(AAP_Locals["Optional"])
		AAP.QuestList.SugQuestFrameFS2:SetText(AAP_Locals["Suggested Players"]..": "..SugGroupNr)
		AAP.QuestList.SugQuestFrame:Show()
	end
end
function AAP_QAskPopWantedAsk(AAP_answer)
	if (AAP_answer == "yes") then
		AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QaskPopup"]] = 1
		AAP.QuestList.SugQuestFrame:Hide()
		AAP_AddToQWatch(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QaskPopup"])
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP_Plus()
	else
		AAP.QuestList.SugQuestFrame:Hide()
		AAP_RemoveQWatch(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QaskPopup"])
		AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QaskPopup"]] = 0
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP_Plus()
	end
end
function AAP_SkipBonusObjective(AAP_NrClicked)
	print("AAP: Skipped Bonus Objective")
	AAP1[AAP_Realm][AAP_Name]["SkippedBonusObj"][tonumber(AAP_NrClicked)] = 1
	AAP_UPDQListV = AAP_UPDQListV2
	AAP_Plus()
end
function AAP_DropQuest()
	local zdrop = AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["DropQuest"]
	if (AAP_CompletedQs[zdrop] == true) then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP_Plus()
	elseif (AAP_ActiveQuests[zdrop]) then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP_Plus()
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP_SetHS()
	if (AAP_CompletedQs[AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SetHS"]] == true) then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP_Plus()
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP_UseHS()
	if (AAP_CompletedQs[AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["UseHS"]] == true) then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP_Plus()
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP_UseDalaHS()
	if (AAP_CompletedQs[AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["UseDalaHS"]] == true) then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP_Plus()
	end

	local sta1, sta2 = GetItemCooldown(140192)
	local sta11, sta12 = GetItemCooldown(65274)
	if ((sta1 and sta1 > 0) and (sta11 and sta11 > 0) and AAP_ActiveZone and AAP_ActiveZone ~= 100) then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP_Plus()
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP_Pickup()
	local aap_t11 = 0
	local aap_t12 = 0
	local Zdedaap = 0
	for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["PickUp"]) do
		aap_t11 = aap_t11 + 1
		if (AAP_CompletedQs[AAP_value] == true) then
			aap_t12 = aap_t12 + 1
		end
	end
	if (aap_t11 == aap_t12) then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		QNumberLocal = 0
		AAP_Plus()
	else
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
		if (aap_t1 == aap_t2) then
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			QNumberLocal = 0
			AAP_Reset = 0
			AAP_Plus()
			Zdedaap = 1
		else
			if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ETA"]) then
				if (AAP_AfkTable and AAP_AfkTable[AAP_ActiveZone] and AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]) then
				else
					if (not AAP_AfkTable[AAP_ActiveZone]) then
						AAP_AfkTable[AAP_ActiveZone] = {}
					end
					AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] = 1
					AAP_AFK_Timer(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ETA"])
				end
			end
		end
	end
	if (AAP_ActiveZone and AAP_Quests and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["LoaPick"] and AAP1[AAP_Realm][AAP_Name]["LoaPick"] > 0) then
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			QNumberLocal = 0
			Zdedaap = 1
			AAP_Reset = 0
			AAP_Plus()
	elseif (AAP_ActiveZone and AAP_Quests and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["LoaPick"]) then
		if (AAP_ActiveQuests[47440]) then
			AAP1[AAP_Realm][AAP_Name]["LoaPick"] = 1
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			QNumberLocal = 0
			Zdedaap = 1
			AAP_Reset = 0
			AAP_Plus()
		elseif (AAP_ActiveQuests[47439]) then
			AAP1[AAP_Realm][AAP_Name]["LoaPick"] = 2
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			QNumberLocal = 0
			Zdedaap = 1
			AAP_Reset = 0
			AAP_Plus()
		end
	elseif (AAP_ActiveZone and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] and AAP_Quests and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"] and Zdedaap == 0 and AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"]] and AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"]] == 0) then
		QNumberLocal = 0
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		AAP_Reset = 0
		AAP_Plus()
	elseif (AAP_ActiveZone and AAP_Quests and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"] and Zdedaap == 0) then
		if (AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] and AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] == 0) then
			QNumberLocal = 0
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			AAP_Reset = 0
			AAP_Plus()
		end
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP_Pickup2()
	local aap_t11 = 0
	local aap_t12 = 0
	local Zdedaap = 0
	for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["PickUp2"]) do
		aap_t11 = aap_t11 + 1
		if (AAP_CompletedQs[AAP_value] == true) then
			aap_t12 = aap_t12 + 1
		end
	end
	if (aap_t11 == aap_t12) then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		QNumberLocal = 0
		AAP_Plus()
	else
		local aap_t1 = 0
		local aap_t2 = 0
		for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["PickUp2"]) do
			aap_t1 = aap_t1 + 1
			if (AAP_ActiveQuests[AAP_value]) then
				aap_t2 = aap_t2 + 1
			elseif (AAP_CompletedQs[AAP_value] == true) then
				aap_t2 = aap_t2 + 1
			end
		end
		if (aap_t1 == aap_t2) then
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			QNumberLocal = 0
			AAP_Reset = 0
			AAP_Plus()
			Zdedaap = 1
		else
			if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ETA"]) then
				if (AAP_AfkTable and AAP_AfkTable[AAP_ActiveZone] and AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]) then
				else
					if (not AAP_AfkTable[AAP_ActiveZone]) then
						AAP_AfkTable[AAP_ActiveZone] = {}
					end
					AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] = 1
					AAP_AFK_Timer(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ETA"])
				end
			end
		end
	end
	if (AAP_ActiveZone and AAP_Quests and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["LoaPick"] and AAP1[AAP_Realm][AAP_Name]["LoaPick"] > 0) then
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			QNumberLocal = 0
			Zdedaap = 1
			AAP_Reset = 0
			AAP_Plus()
	elseif (AAP_ActiveZone and AAP_Quests and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["LoaPick"]) then
		if (AAP_ActiveQuests[47440]) then
			AAP1[AAP_Realm][AAP_Name]["LoaPick"] = 1
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			QNumberLocal = 0
			Zdedaap = 1
			AAP_Reset = 0
			AAP_Plus()
		elseif (AAP_ActiveQuests[47439]) then
			AAP1[AAP_Realm][AAP_Name]["LoaPick"] = 2
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			QNumberLocal = 0
			Zdedaap = 1
			AAP_Reset = 0
			AAP_Plus()
		end
	elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"] and Zdedaap == 0 and AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"]] and AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"]] == 0) then
		QNumberLocal = 0
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		AAP_Reset = 0
		AAP_Plus()
	elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"] and Zdedaap == 0) then
		if (AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] and AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] == 0) then
			QNumberLocal = 0
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			AAP_Reset = 0
			AAP_Plus()
		end
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP_QuestPartPartStep()
	if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QpartPart"]) then
		local aap_t11 = 0
		local aap_t12 = 0
		for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QpartPart"]) do
			aap_t11 = aap_t11 + 1
			if (AAP_CompletedQs[AAP_index] == true) then
				aap_t12 = aap_t12 + 1
			end
		end
		local Zdedaap = 0
		if (aap_t11 == aap_t12) then
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			QNumberLocal = 0
			AAP_Reset = 0
			Zdedaap = 1
			AAP_Plus()
		elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QpartPart"]) then
			for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QpartPart"]) do
				for AAP_index2,AAP_value2 in pairs(AAP_value) do
					if (AAP_ActiveQuests[AAP_index] and AAP_ActiveQuests[AAP_index]["Obj"] and AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)] and AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)]["text"]) then
						if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["TrigText"]) then
							if (string.find(AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)]["text"], AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["TrigText"])) then
								AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
								QNumberLocal = 0
								AAP_Reset = 0
								Zdedaap = 1
								AAP_Plus()
							end
						end
					end
				end
			end
		end
		if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"] and Zdedaap == 0 and AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"]] and AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"]] == 0) then
			QNumberLocal = 0
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			AAP_Reset = 0
			AAP_Plus()
		elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"] and Zdedaap == 0) then
			if (AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] and AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] == 0) then
				QNumberLocal = 0
				AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
				AAP_Reset = 0
				AAP_Plus()
			end
		end
		AAP_SetQPTT()
		if (AAP_Reset == 0) then
			AAP_Reset = 1
			AAP_UPDQListV = AAP_UPDQListV2
		end
	end
end
function AAP_QuestPartStep()
	local aap_t11 = 0
	local aap_t12 = 0
	if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ExtraActionB"]) then
		local isFound, macroSlot = AAP_MacroFinder()
		if isFound and macroSlot then
			AAP_MacroUpdater(macroSlot, 123123123)
		end
	end
	for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Qpart"]) do
		aap_t11 = aap_t11 + 1
		if (AAP_CompletedQs[AAP_index] == true) then
			aap_t12 = aap_t12 + 1
		end
	end
	if (aap_t11 == aap_t12) then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP_Plus()
	else
		local aap_t1 = 0
		local aap_t2 = 0
		for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Qpart"]) do
			for AAP_index2,AAP_value2 in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Qpart"][AAP_index]) do
				aap_t1 = aap_t1 + 1
				if (AAP_CompletedQs[AAP_index]) then
					aap_t2 = aap_t2 + 1
				elseif (AAP_ActiveQuests and AAP_ActiveQuests[AAP_index] and AAP_ActiveQuests[AAP_index]["Obj"] and AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)] and AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)]["Comp"]) then
					if (AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)]["Comp"] == 1) then
						aap_t2 = aap_t2 + 1
					end
				end
			end
		end
		AAP_SetQPTT()
		if (aap_t1 == aap_t2) then
			QNumberLocal = 0
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			AAP_Reset = 0
			AAP_Plus()
		else
			if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ETA"]) then
				if (AAP_AfkTable and AAP_AfkTable[AAP_ActiveZone] and AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]) then
				else
					if (not AAP_AfkTable[AAP_ActiveZone]) then
						AAP_AfkTable[AAP_ActiveZone] = {}
					end
					AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] = 1
					AAP_AFK_Timer(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ETA"])
				end
			end
			if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"] and AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"]] and AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"]] == 0) then
					QNumberLocal = 0
					AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
					AAP_Reset = 0
					AAP_Plus()
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]) then
				if (AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] and AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] == 0) then
					QNumberLocal = 0
					AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
					AAP_Reset = 0
					AAP_Plus()
				end
			end
		end
	end
	if (AAP_GossipOpen == 1) then
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Qpart"]) then
			local AAPDenied = 0
			if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["DenyNPC"]) then
				if (UnitGUID("target") and UnitName("target")) then
					local guid, name = UnitGUID("target"), UnitName("target")
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
					if (npc_id and name) then
						if (tonumber(npc_id) == AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["DenyNPC"]) then
							AAPDenied = 1
						end
					end
				end
			end
			if (AAPDenied == 1) then
				CloseGossip()
				print("AAP: Not Yet!")
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"] and not IsControlKeyDown()) then
				if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"] == 99 and UnitGUID("target") and UnitName("target")) then
					local guid, name = UnitGUID("target"), UnitName("target")
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
					if (npc_id == 133538) then
						AAP_GossipOpen = 0
						SelectGossipOption(1)
						AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
						AAP_Reset = 0
						AAP_Plus()
					end
				elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"] == 999 and UnitGUID("target") and UnitName("target")) then
					local guid, name = UnitGUID("target"), UnitName("target")
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
					if (npc_id == 137645) then
						AAP_GossipOpen = 0
						SelectGossipOption(1)
						AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
						AAP_Reset = 0
						AAP_Plus()
					end
				elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"] == 101 and UnitGUID("target") and UnitName("target")) then
					local guid, name = UnitGUID("target"), UnitName("target")
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
					if (npc_id == 139633) then
						AAP_GossipOpen = 0
						SelectGossipOption(1)
						AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
						AAP_Reset = 0
						AAP_Plus()
					end
				elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"] == 98) then
					AAP_AFK_Timer(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GossipETA"])
					SelectGossipOption(1)
				else
					AAP_GossipOpen = 0
					SelectGossipOption(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"])
				end
			end
		end
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP_QuestPartStep2()
	local aap_t11 = 0
	local aap_t12 = 0
	for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Qpart2"]) do
		aap_t11 = aap_t11 + 1
		if (AAP_CompletedQs[AAP_index] == true) then
			aap_t12 = aap_t12 + 1
		end
	end
	if (aap_t11 == aap_t12) then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP_Plus()
	else
		local aap_t1 = 0
		local aap_t2 = 0
		for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Qpart2"]) do
			for AAP_index2,AAP_value2 in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Qpart2"][AAP_index]) do
				aap_t1 = aap_t1 + 1
				if (AAP_CompletedQs[AAP_index]) then
					aap_t2 = aap_t2 + 1
				elseif (AAP_ActiveQuests and AAP_ActiveQuests[AAP_index] and AAP_ActiveQuests[AAP_index]["Obj"] and AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)] and AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)]["Comp"]) then
					if (AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)]["Comp"] == 1) then
						aap_t2 = aap_t2 + 1
					end
				end
			end
		end
		AAP_SetQPTT()
		if (aap_t1 == aap_t2) then
			QNumberLocal = 0
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			AAP_Reset = 0
			AAP_Plus()
		else
			if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ETA"]) then
				if (AAP_AfkTable and AAP_AfkTable[AAP_ActiveZone] and AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]) then
				else
					if (not AAP_AfkTable[AAP_ActiveZone]) then
						AAP_AfkTable[AAP_ActiveZone] = {}
					end
					AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] = 1
					AAP_AFK_Timer(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ETA"])
				end
			end
			if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"] and AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"]] and AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"]] == 0) then
					QNumberLocal = 0
					AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
					AAP_Reset = 0
					AAP_Plus()
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]) then
				if (AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] and AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] == 0) then
					QNumberLocal = 0
					AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
					AAP_Reset = 0
					AAP_Plus()
				end
			end
		end
	end
	if (AAP_GossipOpen == 1) then
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Qpart2"]) then
			local AAPDenied = 0
			if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["DenyNPC"]) then
				if (UnitGUID("target") and UnitName("target")) then
					local guid, name = UnitGUID("target"), UnitName("target")
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
					if (npc_id and name) then
						if (tonumber(npc_id) == AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["DenyNPC"]) then
							AAPDenied = 1
						end
					end
				end
			end
			if (AAPDenied == 1) then
				CloseGossip()
				print("AAP: Not Yet!")
			elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"] and not IsControlKeyDown()) then
				if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"] == 99) then
					AAP_GossipOpen = 0
					SelectGossipOption(1)
					AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
					AAP_Reset = 0
					AAP_Plus()
				elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"] == 999 and UnitGUID("target") and UnitName("target")) then
					local guid, name = UnitGUID("target"), UnitName("target")
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
					if (npc_id == 137645) then
						AAP_GossipOpen = 0
						SelectGossipOption(1)
						AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
						AAP_Reset = 0
						AAP_Plus()
					end
				elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"] == 98) then
					AAP_AFK_Timer(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GossipETA"])
					SelectGossipOption(1)
				else
					AAP_GossipOpen = 0
					SelectGossipOption(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"])
				end
			end
		end
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP_ZonePick()
	AAP_CompletedQs = GetQuestsCompleted()
	if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ZonePick"] == "Horde") then
		AAP_ActiveZonePick = 0
		local H1 = {
			[47513] = 47513,
			[47313] = 47313,
			[47314] = 47314,
			[47315] = 47315,
		}
		local H2 = {
			[47512] = 47512,
			[47103] = 47103,
			[48535] = 48535,
		}
		local H4 = {
		}
		if ((AAP_ActiveZone == 862) and (AAP1[AAP_Realm][AAP_Name]["Zone862D"] == 0) and (AAP_ActiveQuests[47514] or AAP_CompletedQs[47514] == true)) then
				AAP_ActiveZonePick = 3
				AAP_ChangeZone()
		end
		for AAP_index,AAP_value in pairs(H1) do
			if (AAP_ActiveQuests[AAP_value]) then
				AAP_ActiveZonePick = 1
				AAP_ChangeZone()
			end
		end
		for AAP_index,AAP_value in pairs(H2) do
			if (AAP_ActiveQuests[AAP_value]) then
				AAP_ActiveZonePick = 2
				AAP_ChangeZone()
			end
		end
		for AAP_index,AAP_value in pairs(H4) do
			if (AAP_ActiveQuests[AAP_value]) then
				AAP_ActiveZonePick = 4
				AAP_ChangeZone()
			end
		end
	elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ZonePick"] == "Alliance") then
		AAP_ActiveZonePick = 0
		local A1 = {
			--- Dustvar
			[47962] = 47961,

		}
		local A3 = {
			--- Tiragarde Sound
			[47960] = 47960,
			[47181] = 47181,
		}
		if ((AAP_ActiveQuests[47961] or AAP_CompletedQs[47961] == true) and not AAP_CompletedQs[48622]) then
			AAP_ActiveZonePick = 1
			AAP_ChangeZone()
		end
		if ((AAP_ActiveQuests[47962] or AAP_CompletedQs[47962] == true) and not AAP_CompletedQs[51490]) then
			AAP_ActiveZonePick = 2
			AAP_ChangeZone()
		end
		for AAP_index,AAP_value in pairs(A3) do
			if (AAP_value and AAP_ActiveQuests[AAP_value]) then
				AAP_ActiveZonePick = 3
				AAP_ChangeZone()
			end
		end
	end
end
function AAP_Done()
	local aap_t1 = 0
	local aap_t2 = 0
	for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Done"]) do
		aap_t1 = aap_t1 + 1
		if (AAP_CompletedQs[AAP_value] == true) then
			aap_t2 = aap_t2 + 1
		end
	end
	if (aap_t1 == aap_t2) then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		AAP_Reset = 0
		AAP_Plus()
	else
		if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ETA"]) then
			if (AAP_AfkTable and AAP_AfkTable[AAP_ActiveZone] and AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]) then
			else
				if (not AAP_AfkTable[AAP_ActiveZone]) then
					AAP_AfkTable[AAP_ActiveZone] = {}
				end
				AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] = 1
				AAP_AFK_Timer(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ETA"])
			end
		end
	end
	if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] and AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]) then
		if (AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] and AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] == 0) then
			QNumberLocal = 0
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			AAP_Reset = 0
			AAP_Plus()
		end
	end
	if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]) then
			if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["VehicleExit"]) then
				VehicleExit()
			end
		end
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP_Done2()
	local aap_t1 = 0
	local aap_t2 = 0
	for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Done2"]) do
		aap_t1 = aap_t1 + 1
		if (AAP_CompletedQs[AAP_value] == true) then
			aap_t2 = aap_t2 + 1
		end
	end
	if (aap_t1 == aap_t2) then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		AAP_Reset = 0
		AAP_Plus()
	else
		if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ETA"]) then
			if (AAP_AfkTable and AAP_AfkTable[AAP_ActiveZone] and AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]) then
			else
				if (not AAP_AfkTable[AAP_ActiveZone]) then
					AAP_AfkTable[AAP_ActiveZone] = {}
				end
				AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] = 1
				AAP_AFK_Timer(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ETA"])
			end
		end
	end
	if (AAP_ActiveZone and AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"] and AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"]] and AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"]] == 0) then
		QNumberLocal = 0
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		AAP_Reset = 0
		AAP_Plus()
	elseif (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]) then
		if (AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] and AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] == 0) then
			QNumberLocal = 0
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			AAP_Reset = 0
			AAP_Plus()
		end
	end
	if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]) then
			if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["VehicleExit"]) then
				VehicleExit()
			end
		end
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP_CRange(AAP_TrigCR)
	if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["CRange"]) then
		if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["CancelBuff"]) then
			local i = 1
			local buff = UnitBuff("player", i);
			while buff do
				local name, rank, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, spellId = UnitBuff("player", i)
				if (spellId == AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["CancelBuff"]) then
					CancelUnitBuff("player", i)
				end
				i = i + 1
				buff = UnitBuff("player", i);
			end
		end
		if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ETA"]) then
			if (AAP_AfkTable and AAP_AfkTable[AAP_ActiveZone] and AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]) then
			else
				if (not AAP_AfkTable[AAP_ActiveZone]) then
					AAP_AfkTable[AAP_ActiveZone] = {}
				end
				AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] = 1
				AAP_AFK_Timer(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ETA"])
			end
		end
	end
	local dderpzzaap = 0
	if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"] and AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"]] and AAP1[AAP_Realm][AAP_Name]["QlineSkip"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QuestLineSkip"]] == 0) then
		QNumberLocal = 0
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		AAP_Reset = 0
		AAP_Plus()
	elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]) then
		if (AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] and AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] == 0) then
			QNumberLocal = 0
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			AAP_Reset = 0
			AAP_Plus()
			dderpzzaap = 1
		end
	end
	if (AAP_CompletedQs[AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["CRange"]] == true and dderpzzaap == 0) then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		AAP_Plus()
	elseif (AAP_TrigCR == "Trigged" and dderpzzaap == 0) then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		AAP_Reset = 0
		AAP_Plus()
	end
	--AAP_TestCranges()
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end


function AAP_TestCranges()
	if (AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
		local testad = true
		local plusnr = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]
		local AntiLooper = 0
		while testad do
			plusnr = plusnr + 1
			if (AAP_Quests[plusnr] and (not AAP_Quests[plusnr]["CRange"])) then
				if (AAP_Quests[plusnr]["Qpart"]) then
					local aap_t1 = 0
					local aap_t2 = 0
					for AAP_index,AAP_value in pairs(AAP_Quests[plusnr]["Qpart"]) do
						for AAP_index2,AAP_value2 in pairs(AAP_Quests[plusnr]["Qpart"][AAP_index]) do
							aap_t1 = aap_t1 + 1
							if (AAP_CompletedQs[AAP_index]) then
								aap_t2 = aap_t2 + 1
							elseif (AAP_ActiveQuests and AAP_ActiveQuests[AAP_index] and AAP_ActiveQuests[AAP_index]["Obj"] and AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)] and AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)]["Comp"]) then
								if (AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)]["Comp"] == 1) then
									aap_t2 = aap_t2 + 1
								end
							end
						end
					end
					if (aap_t1 == aap_t2) then
						QNumberLocal = 0
						AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
						AAP_Reset = 0
					end
				elseif (AAP_Quests[plusnr]["PickUp"]) then
					local aap_t1 = 0
					local aap_t2 = 0
					for AAP_index,AAP_value in pairs(AAP_Quests[plusnr]["PickUp"]) do
						aap_t1 = aap_t1 + 1
						if (AAP_ActiveQuests[AAP_value]) then
							aap_t2 = aap_t2 + 1
						elseif (AAP_CompletedQs[AAP_value] == true) then
							aap_t2 = aap_t2 + 1
						end
					end
					if (aap_t1 == aap_t2) then
						QNumberLocal = 0
						AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
						AAP_Reset = 0
					end

				end
				break
			else
				break
			end
			AntiLooper = AntiLooper + 1
			if (AntiLooper > 9) then
				break
			end
		end

	end
end


function AAP_GetFP(AAP_TrigFP)
	if (AAP_CompletedQs[AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["FlightPath"]] == true) then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		AAP_Plus()
	elseif (AAP_TrigFP == "Trigger") then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		AAP_Reset = 0
		AAP_Plus()
	else
		AAP_SetQPTT()
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP_SetButton(AAP_T_FS, AAP_T_ars)
	if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Button"] and AAP_T_FS and AAP_T_ars) then
		if (not InCombatLockdown()) then
			for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Button"]) do
				if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["UseHS"]) then
					local CL_Items, clt2, clt3, clt4, clt5, clt6, clt7, clt8, clt9, CL_ItemTex = GetItemInfo(AAP_value)
					AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Buttonptex"]:SetTexture(CL_ItemTex)
					AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Buttonntex"]:SetTexture(CL_ItemTex)
					AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Button"]:SetNormalTexture(CL_ItemTex)
					--AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Button"]:SetText(string.sub(CL_Items, 1, 1))
					AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Button"]:SetText("")
					AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Button"]:SetAttribute("type", "item");
					AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Button"]:SetAttribute("item", "item:"..AAP_value);
					AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]:Show()
						local Topz = AAP1[AAP_Realm][AAP_Name]["Settings"]["left"]
						local Topz2 = AAP1[AAP_Realm][AAP_Name]["Settings"]["top"]
						AAP.QuestList20:SetPoint("TOPLEFT", UIParent, "TOPLEFT", Topz, Topz2)
						AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]:SetPoint("BOTTOMLEFT", AAP.QuestList21, "BOTTOMLEFT",0,-((AAP_T_ars * 38)+AAP_T_ars))
						local isFound, macroSlot = AAP_MacroFinder()
						if isFound and macroSlot then
							if (AAP_ActiveZone and AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SpecialDubbleMacro"]) then
								if (not AAP_DubbleMacro[1]) then
									AAP_DubbleMacro[1] = CL_Items
								elseif (AAP_DubbleMacro and AAP_DubbleMacro[1] and not AAP_DubbleMacro[2]) then
									AAP_DubbleMacro[2] = CL_Items
								end
							else
								AAP_DubbleMacro = nil
								AAP_DubbleMacro = {}
							end
							AAP_MacroUpdater(macroSlot, CL_Items)
						end
				elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["UseDalaHS"]) then
					local bag, slot = AAP_FindQitemFunc(65274)
					local eqidsd = GetInventoryItemID("player", 15)
					local sta11, sta12 = GetItemCooldown(65274)
					if (sta11 and sta11 > 0) then
						bag = "nope"
					end
					if (bag ~= "nope" or eqidsd == 65274) then

						local CL_Items, clt2, clt3, clt4, clt5, clt6, clt7, clt8, clt9, CL_ItemTex = GetItemInfo(65274)
						AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Buttonptex"]:SetTexture(CL_ItemTex)
						AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Buttonntex"]:SetTexture(CL_ItemTex)
						AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Button"]:SetNormalTexture(CL_ItemTex)
						--AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Button"]:SetText(string.sub(CL_Items, 1, 1))
						AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Button"]:SetText("")
						AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Button"]:SetAttribute("type","macro");
						local isFound, macroSlot = AAP_MacroFinder()
						if isFound and macroSlot then
							if (AAP_ActiveZone and AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SpecialDubbleMacro"]) then
								if (not AAP_DubbleMacro[1]) then
									AAP_DubbleMacro[1] = CL_Items
								elseif (AAP_DubbleMacro and AAP_DubbleMacro[1] and not AAP_DubbleMacro[2]) then
									AAP_DubbleMacro[2] = CL_Items
								end
							else
								AAP_DubbleMacro = nil
								AAP_DubbleMacro = {}
							end
							AAP_MacroUpdater(macroSlot, CL_Items, 65274)
						end
						AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Button"]:SetAttribute("macro",macroSlot);
						AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]:Show()
						local Topz = AAP1[AAP_Realm][AAP_Name]["Settings"]["left"]
						local Topz2 = AAP1[AAP_Realm][AAP_Name]["Settings"]["top"]
						AAP.QuestList20:SetPoint("TOPLEFT", UIParent, "TOPLEFT", Topz, Topz2)
						AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]:SetPoint("BOTTOMLEFT", AAP.QuestList21, "BOTTOMLEFT",0,-((AAP_T_ars * 38)+AAP_T_ars))
					else
						local CL_Items, clt2, clt3, clt4, clt5, clt6, clt7, clt8, clt9, CL_ItemTex = GetItemInfo(AAP_value)
						AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Buttonptex"]:SetTexture(CL_ItemTex)
						AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Buttonntex"]:SetTexture(CL_ItemTex)
						AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Button"]:SetNormalTexture(CL_ItemTex)
						--AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Button"]:SetText(string.sub(CL_Items, 1, 1))
						AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Button"]:SetText("")
						AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Button"]:SetAttribute("type", "item");
						AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]["AAP_Button"]:SetAttribute("item", "item:"..AAP_value);
						AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]:Show()
						local Topz = AAP1[AAP_Realm][AAP_Name]["Settings"]["left"]
						local Topz2 = AAP1[AAP_Realm][AAP_Name]["Settings"]["top"]
						AAP.QuestList20:SetPoint("TOPLEFT", UIParent, "TOPLEFT", Topz, Topz2)
						AAP.QuestList2["BF"..tonumber(AAP_NamedBookedFS[AAP_index])]:SetPoint("BOTTOMLEFT", AAP.QuestList21, "BOTTOMLEFT",0,-((AAP_T_ars * 38)+AAP_T_ars))
						local isFound, macroSlot = AAP_MacroFinder()
						if isFound and macroSlot then
							if (AAP_ActiveZone and AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SpecialDubbleMacro"]) then
								if (not AAP_DubbleMacro[1]) then
									AAP_DubbleMacro[1] = CL_Items
								elseif (AAP_DubbleMacro and AAP_DubbleMacro[1] and not AAP_DubbleMacro[2]) then
									AAP_DubbleMacro[2] = CL_Items
								end
							else
								AAP_DubbleMacro = nil
								AAP_DubbleMacro = {}
							end
							AAP_MacroUpdater(macroSlot, CL_Items)
						end
					end
				elseif (tonumber(AAP_T_FS) == tonumber(AAP_NamedBookedFS[AAP_index])) then
					local CL_Items, clt2, clt3, clt4, clt5, clt6, clt7, clt8, clt9, CL_ItemTex = GetItemInfo(AAP_value)
					if (CL_Items and string.sub(CL_Items, 1, 1) and CL_ItemTex) then
						AAP.QuestList2["BF"..AAP_T_FS]["AAP_Buttonptex"]:SetTexture(CL_ItemTex)
						AAP.QuestList2["BF"..AAP_T_FS]["AAP_Buttonntex"]:SetTexture(CL_ItemTex)
						AAP.QuestList2["BF"..AAP_T_FS]["AAP_Button"]:SetNormalTexture(CL_ItemTex)
						--AAP.QuestList2["BF"..AAP_T_FS]["AAP_Button"]:SetText(string.sub(CL_Items, 1, 1))
						AAP.QuestList2["BF"..AAP_T_FS]["AAP_Button"]:SetText("")
						AAP.QuestList2["BF"..AAP_T_FS]["AAP_Button"]:SetAttribute("type", "item");
						AAP.QuestList2["BF"..AAP_T_FS]["AAP_Button"]:SetAttribute("item", "item:"..AAP_value);
						AAP.QuestList2["BF"..AAP_T_FS]:Show()
						local Topz = AAP1[AAP_Realm][AAP_Name]["Settings"]["left"]
						local Topz2 = AAP1[AAP_Realm][AAP_Name]["Settings"]["top"]
						AAP.QuestList20:SetPoint("TOPLEFT", UIParent, "TOPLEFT", Topz, Topz2)
						AAP.QuestList2["BF"..AAP_T_FS]:SetPoint("BOTTOMLEFT", AAP.QuestList21, "BOTTOMLEFT",0,-((AAP_T_ars * 38)+AAP_T_ars))
						local isFound, macroSlot = AAP_MacroFinder()
						if isFound and macroSlot then
							if (AAP_ActiveZone and AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SpecialDubbleMacro"]) then
								if (not AAP_DubbleMacro[1]) then
									AAP_DubbleMacro[1] = CL_Items
								elseif (AAP_DubbleMacro and AAP_DubbleMacro[1] and not AAP_DubbleMacro[2]) then
									AAP_DubbleMacro[2] = CL_Items
								end
							else
								AAP_DubbleMacro = nil
								AAP_DubbleMacro = {}
							end
							AAP_MacroUpdater(macroSlot, CL_Items)
						end
					end
				end
			end
		end
	end
end
function AAP_CountAlly()
	local Countz = 0
	if (AAP_CompletedQs[51968] == true) then
		Countz = Countz + 1
	end
	if (AAP_CompletedQs[51969] == true) then
		Countz = Countz + 1
	end
	if (AAP_CompletedQs[51967] == true) then
		Countz = Countz + 1
	end
	return Countz
end
function AAP_CountHorde()
	local Countz = 0
	if (AAP_CompletedQs[51244] == true) then
		Countz = Countz + 1
	end
	if (AAP_CompletedQs[50702] == true) then
		Countz = Countz + 1
	end
	if (AAP_CompletedQs[48400] == true) then
		Countz = Countz + 1
	end
	return Countz
end
function AAP_TestHordeCampaign()
	local ResName, NumCurr = GetCurrencyInfo(1560)
	if ((UnitLevel("player") > 117) and (not AAP1[AAP_Realm][AAP_Name]["Zone862Camp"])) then
		local AAP_TTTT = C_Map.GetBestMapForUnit("player")
	if (AAP_TTTT == 85) then
		AAP_TTTT = 86
	end
	if (AAP_TTTT == 1161) then
		AAP_TTTT = 895
	end
	if (AAP_TTTT == 1171) then
		AAP_TTTT = 895
	end
	if (AAP_TTTT == 1172) then
		AAP_TTTT = 895
	end
	if (AAP_TTTT == 1165) then
		AAP_TTTT = 862
	end
	if (AAP_TTTT == 1164) then
		AAP_TTTT = 862
	end
	if (AAP_TTTT == 1163) then
		AAP_TTTT = 862
	end
	if (AAP_TTTT == 1173) then
		AAP_TTTT = 862
	end
	if (AAP_TTTT == 1174) then
		AAP_TTTT = 862
	end
	if (AAP_TTTT == 1176) then
		AAP_TTTT = 862
	end
	if (AAP_TTTT == 1177) then
		AAP_TTTT = 862
	end
	if (AAP_TTTT == 1167) then
		AAP_TTTT = 862
	end
	if (AAP_TTTT == 1166) then
		AAP_TTTT = 862
	end
	if (AAP_TTTT == 1169) then
		AAP_TTTT = 876
	end
	if (AAP_TTTT == 1179) then
		AAP_TTTT = 942
	end
	if (AAP_TTTT == 1180) then
		AAP_TTTT = 942
	end
	if (AAP_TTTT == 1181) then
		AAP_TTTT = 942
	end
	if (AAP_TTTT == 1182) then
		AAP_TTTT = 942
	end

		if (AAP_TTTT == 1165) then
			AAP_TTTT = 862
		end
		if (AAP_TTTT == 1164) then
			AAP_TTTT = 862
		end
		if (AAP_TTTT == 1163) then
			AAP_TTTT = 862
		end
		if (AAP_TTTT == 1173) then
			AAP_TTTT = 862
		end
		if (AAP_TTTT == 1174) then
			AAP_TTTT = 862
		end
		if (AAP_TTTT == 1176) then
			AAP_TTTT = 862
		end
		if (AAP_TTTT == 1177) then
			AAP_TTTT = 862
		end
		if (AAP_TTTT == 1167) then
			AAP_TTTT = 862
		end
		if (AAP_TTTT == 1166) then
			AAP_TTTT = 862
		end
		if ((AAP1[AAP_Realm][AAP_Name]["AAP_DoWarCampaign"] == 1)) then
			if ((AAP_TTTT == 862) or (AAP_TTTT == 863) or (AAP_TTTT == 864)) then
				AAP_Quests = AAP_Zone8624["862-4"]
				AAP_ActiveZone = "862-4"
			elseif (AAP_TTTT == 895) or (AAP_TTTT == 896) or (AAP_TTTT == 942) then
				AAP_ActiveZone = AAP_TTTT
				AAP_Quests = AAP_QuestList[AAP_ActiveZone]
			else
				AAP_ActiveZone = AAP_TTTT
				AAP_Quests = AAP_QuestList[AAP_ActiveZone]
			end
		end
	end
end

function AAP_TestAllyCampaign()
	local AAP_TTTT = C_Map.GetBestMapForUnit("player")
	if (AAP_TTTT == 1161) then
		AAP_TTTT = 895
	end
	if (AAP_TTTT == 1165) then
		AAP_TTTT = 862
	end
	if (AAP_TTTT == 1164) then
		AAP_TTTT = 862
	end
	if (AAP_TTTT == 1166) then
		AAP_TTTT = 862
	end
	if (AAP_TTTT == 1167) then
		AAP_TTTT = 862
	end
	if (AAP_TTTT == 1163) then
		AAP_TTTT = 862
	end
	local AAP_testads = 0
	if (AAP_ActiveQuests[53332] and AAP_ActiveQuests[53332]["Comp"] and AAP_ActiveQuests[53332]["Comp"] == 1) then
		AAP_testads = 1
	end
	local AAP_TTTS = 0
	if ((AAP_testads == 1 or AAP_CompletedQs[53332]) and AAP_CountAlly() == 0 and (AAP_TTTT == 895)) then
		AAP_TTTS = 1
		if ((AAP_ActiveQuests[51308] or AAP_CompletedQs[51308]) and (not AAP_CompletedQs[51968])) then
			AAP_Quests = AAP_Ally8954["A895-4-1"]
			AAP_ActiveZone = "A895-4-1"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		elseif ((AAP_ActiveQuests[51283] or AAP_CompletedQs[51283]) and (not AAP_CompletedQs[51969])) then
			AAP_Quests = AAP_Ally8954["A895-4-2"]
			AAP_ActiveZone = "A895-4-2"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		elseif ((AAP_ActiveQuests[51088] or AAP_CompletedQs[51088]) and (not AAP_CompletedQs[51967])) then
			AAP_Quests = AAP_Ally8954["A895-4-3"]
			AAP_ActiveZone = "A895-4-3"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		else
			AAP_Quests = AAP_Ally8954["A895-4"]
			AAP_ActiveZone = "A895-4"
		end
	end
	if (AAP_TTTS == 0 and (AAP_ActiveQuests[53052] or AAP_CompletedQs[53052]) and (AAP_TTTT == 895) and AAP_CountAlly() == 1) then
		if ((AAP_ActiveQuests[51308] or AAP_CompletedQs[51308]) and (not AAP_CompletedQs[51968])) then
			AAP_Quests = AAP_Ally8954["A895-4-1"]
			AAP_ActiveZone = "A895-4-1"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		elseif ((AAP_ActiveQuests[51283] or AAP_CompletedQs[51283]) and (not AAP_CompletedQs[51969])) then
			AAP_Quests = AAP_Ally8954["A895-4-2"]
			AAP_ActiveZone = "A895-4-2"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		elseif ((AAP_ActiveQuests[51088] or AAP_CompletedQs[51088]) and (not AAP_CompletedQs[51967])) then
			AAP_Quests = AAP_Ally8954["A895-4-3"]
			AAP_ActiveZone = "A895-4-3"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		else
			AAP_Quests = AAP_Ally8954["A895-4-4"]
			AAP_ActiveZone = "A895-4-4"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		end
	end
	if ((AAP_ActiveQuests[53055] or AAP_CompletedQs[53055]) and (AAP_TTTT == 895) and (AAP_CountAlly() == 2) and (UnitLevel("player") > 117)) then
		if ((AAP_ActiveQuests[51308] or AAP_CompletedQs[51308]) and (not AAP_CompletedQs[51968])) then
			AAP_Quests = AAP_Ally8954["A895-4-1"]
			AAP_ActiveZone = "A895-4-1"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		elseif ((AAP_ActiveQuests[51283] or AAP_CompletedQs[51283]) and (not AAP_CompletedQs[51969])) then
			AAP_Quests = AAP_Ally8954["A895-4-2"]
			AAP_ActiveZone = "A895-4-2"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		elseif ((AAP_ActiveQuests[51088] or AAP_CompletedQs[51088]) and (not AAP_CompletedQs[51967])) then
			AAP_Quests = AAP_Ally8954["A895-4-3"]
			AAP_ActiveZone = "A895-4-3"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		else
			AAP_Quests = AAP_Ally8954["A895-4-5"]
			AAP_ActiveZone = "A895-4-5"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		end
	end
	local AAP_BTables = C_Garrison.GetInProgressMissions(LE_FOLLOWER_TYPE_GARRISON_8_0)
	local AAP_Getthru = 0
	if (AAP_BTables) then
		for AAP_index,AAP_value in pairs(AAP_BTables) do
			if (AAP_value and AAP_value["missionID"] and AAP_value["timeLeftSeconds"] and AAP_value["missionID"] == 1877 and AAP_value["timeLeftSeconds"] == 0) then
				AAP_Getthru = 1
			end
		end
	end
	local AAP_testads2 = 0
	if (AAP_ActiveQuests[51715] and AAP_ActiveQuests[51715]["Comp"] and AAP_ActiveQuests[51715]["Comp"] == 1) then
		AAP_testads2 = 1
	end
	if ((AAP_Getthru == 1 or AAP_CompletedQs[51715] or AAP_testads2 == 1) and (AAP_TTTT == 895) and not AAP_CompletedQs[53074]) then
		AAP_Quests = AAP_Ally8954["A895-4-10"]
		AAP_ActiveZone = "A895-4-10"
		if (AAP_Reset == 0) then
			AAP_Reset = 1
			AAP_UPDQListV = AAP_UPDQListV2
		end
	end
end





function AAP_SetQPTT()
	if (QNumberLocal ~= AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
		AAP_ArrowActive = 1
		AAP_ArrowActive_X = AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["TT"]["x"]
		AAP_ArrowActive_Y = AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["TT"]["y"]
		QNumberLocal = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]
	end
end
function AAP_ZoneChangeTest()
	AAP_ActiveZoneTest = C_Map.GetBestMapForUnit("player")
	AAP_CompletedQs = GetQuestsCompleted()
	local factionz = UnitFactionGroup("player")
	if (AAP_ActiveZoneTest == 85) then
		AAP_ActiveZoneTest = 86
	end
	if (AAP_ActiveZoneTest == 1161) then
		AAP_ActiveZoneTest = 895
	end
	if (AAP_ActiveZoneTest == 1171) then
		AAP_ActiveZoneTest = 895
	end
	if (AAP_ActiveZoneTest == 1172) then
		AAP_ActiveZoneTest = 895
	end
	if (AAP_ActiveZoneTest == 1165) then
		AAP_ActiveZoneTest = 862
	end
	if (AAP_ActiveZoneTest == 1164) then
		AAP_ActiveZoneTest = 862
	end
	if (AAP_ActiveZoneTest == 1163) then
		AAP_ActiveZoneTest = 862
	end
	if (AAP_ActiveZoneTest == 1173) then
		AAP_ActiveZoneTest = 862
	end
	if (AAP_ActiveZoneTest == 1174) then
		AAP_ActiveZoneTest = 862
	end
	if (AAP_ActiveZoneTest == 1176) then
		AAP_ActiveZoneTest = 862
	end
	if (AAP_ActiveZoneTest == 1177) then
		AAP_ActiveZoneTest = 862
	end
	if (AAP_ActiveZoneTest == 1167) then
		AAP_ActiveZoneTest = 862
	end
	if (AAP_ActiveZoneTest == 1166) then
		AAP_ActiveZoneTest = 862
	end
	if (AAP_ActiveZoneTest == 1169) then
		AAP_ActiveZoneTest = 876
	end
	if (AAP_ActiveZoneTest == 1179) then
		AAP_ActiveZoneTest = 942
	end
	if (AAP_ActiveZoneTest == 1180) then
		AAP_ActiveZoneTest = 942
	end
	if (AAP_ActiveZoneTest == 1181) then
		AAP_ActiveZoneTest = 942
	end
	if (AAP_ActiveZoneTest == 1182) then
		AAP_ActiveZoneTest = 942
	end

	if (AAP_ActiveZoneTest) then
		if (factionz == "Alliance") then
			AAP_ActiveZoneTest = "A"..AAP_ActiveZoneTest
			if (AAP_ActiveZoneTest == "A862") then
			elseif (AAP_ActiveZoneTest == "A942") then
			elseif (AAP_ActiveZoneTest == "A896") then
			elseif ((AAP_ActiveQuests[47961] or AAP_CompletedQs[47961] == true) and not AAP_CompletedQs[48622]) then
				AAP_ActiveZoneTest = "A895-1"
			elseif ((AAP_ActiveQuests[47962] or AAP_CompletedQs[47962] == true) and not AAP_CompletedQs[51490]) then
				AAP_ActiveZoneTest = "A895-2"
			elseif ((AAP_ActiveZoneTest == "A895") and (AAP1[AAP_Realm][AAP_Name]["Zone895D"] == 0) and (AAP_ActiveQuests[47960] or AAP_CompletedQs[47960] == true)) then
				AAP_ActiveZoneTest = "A895-3"
			elseif ((AAP_ActiveZoneTest == "A895") and (AAP1[AAP_Realm][AAP_Name]["Zone895D"] == 1) and (AAP_ActiveZonePick == 3)) then
				AAP_ActiveZoneTest = "A895"
			elseif ((AAP_ActiveZonePick > 0) and (AAP_ActiveZoneTest == "A895")) then
				AAP_ActiveZoneTest = "A895-"..AAP_ActiveZonePick
			elseif ((AAP_ActiveZoneTest == "A895") and (AAP1[AAP_Realm][AAP_Name]["Zone895D"] == 1)) then
				AAP_ActiveZoneTest = "A895"
			else
				if (AllySteps[AAP_ActiveZoneTest]) then
				else
					AAP_ActiveZoneTest = 1233123991
				end
			end
		else
		-- Horde
			if (AAP_ActiveZoneTest == 1009) then
				AAP_ActiveZoneTest = 864
			end
			if (AAP1[AAP_Realm][AAP_Name]["AAP_DoWarCampaign"] == 1 and (not AAP1[AAP_Realm][AAP_Name]["Zone862Camp"])) then
				AAP_TestHordeCampaign()
			elseif ((AAP_ActiveZoneTest == 86) and ((AAP_ActiveQuests[47439]) or (AAP_ActiveQuests[50963]) or (AAP_ActiveQuests[50617]) or (AAP_ActiveQuests[50808]))) then
				AAP_ActiveZoneTest = "86-1"
			elseif ((AAP_ActiveZoneTest == 627) and ((AAP_ActiveQuests[47439]) or (AAP_ActiveQuests[50963]) or (AAP_ActiveQuests[50617]) or (AAP_ActiveQuests[50808]))) then
				AAP_ActiveZoneTest = "627-1"
			elseif (AAP_ActiveZoneTest == 864) then
			elseif (AAP_ActiveZoneTest == 863) then
			elseif ((AAP_ActiveZonePick == 1) or (AAP_ActiveZonePick == 2)) and (AAP_ActiveZoneTest == 862) then
				AAP_ActiveZoneTest = "862-"..AAP_ActiveZonePick
			elseif ((AAP_ActiveZoneTest == 862) and (AAP1[AAP_Realm][AAP_Name]["Zone862D"] == 0) and (AAP_ActiveQuests[47514] or AAP_CompletedQs[47514] == true)) then
				AAP_ActiveZoneTest = "862-3"
			elseif ((AAP_ActiveZoneTest == 86) and ((AAP_ActiveQuests[53372]) or AAP_CompletedQs[53372])) then
				AAP_ActiveZoneTest = "86-2"
			elseif (AAP_ActiveZoneTest == 862 and AAP1[AAP_Realm][AAP_Name]["Zone862D"] == 1) then
				AAP_ActiveZoneTest = 862
				AAP_TestHordeCampaign()
			elseif (AAP_QuestList[AAP_ActiveZoneTest]) then
				AAP_TestHordeCampaign()
			else
				AAP_ActiveZoneTest = 1233123991
			end
		end
	end
	if (AAP_ActiveZoneTestOld ~= AAP_ActiveZoneTest) then
		AAP_ActiveZoneTestOld = AAP_ActiveZoneTest
		AAP_ChangeZone()
	end
end
function AAP_ChangeZone()
	if (UnitLevel("player") == 120) then
		for AAP_index,AAP_value in pairs(AAP_BonusObj) do
			if (not AAP_CompletedQs[AAP_index]) then
				AAP_CompletedQs[AAP_index] = true
			end
		end
	end
	local AAP_ActiveZoneOld = AAP_ActiveZone
	local factionz = UnitFactionGroup("player")
	AAP_ActiveZone = C_Map.GetBestMapForUnit("player")
	if (AAP_ActiveZone == 85) then
		AAP_ActiveZone = 86
	end
	if (AAP_ActiveZone == 1161) then
		AAP_ActiveZone = 895
	end
	if (AAP_ActiveZone == 1171) then
		AAP_ActiveZone = 895
	end
	if (AAP_ActiveZone == 1172) then
		AAP_ActiveZone = 895
	end
	if (AAP_ActiveZone == 1165) then
		AAP_ActiveZone = 862
	end
	if (AAP_ActiveZone == 1164) then
		AAP_ActiveZone = 862
	end
	if (AAP_ActiveZone == 1163) then
		AAP_ActiveZone = 862
	end
	if (AAP_ActiveZone == 1173) then
		AAP_ActiveZone = 862
	end
	if (AAP_ActiveZone == 1174) then
		AAP_ActiveZone = 862
	end
	if (AAP_ActiveZone == 1176) then
		AAP_ActiveZone = 862
	end
	if (AAP_ActiveZone == 1177) then
		AAP_ActiveZone = 862
	end
	if (AAP_ActiveZone == 1167) then
		AAP_ActiveZone = 862
	end
	if (AAP_ActiveZone == 1166) then
		AAP_ActiveZone = 862
	end
	if (AAP_ActiveZone == 1169) then
		AAP_ActiveZone = 876
	end
	if (AAP_ActiveZone == 1179) then
		AAP_ActiveZone = 942
	end
	if (AAP_ActiveZone == 1180) then
		AAP_ActiveZone = 942
	end
	if (AAP_ActiveZone == 1181) then
		AAP_ActiveZone = 942
	end
	if (AAP_ActiveZone == 1182) then
		AAP_ActiveZone = 942
	end

	if (AAP_ActiveZone) then
		if (factionz == "Alliance") then
			AAP_ActiveZone = "A"..AAP_ActiveZone
			if (AAP_Test_Var == 1) then
				AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoAccept"] = 1
				AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandIn"] = 0
				AAP_Quests = AAPHSteps[AAP_ActiveZone]
				print(AAP_ActiveZone)
			elseif (AAP_ActiveZone == "A862") then
				AAP_Quests = AllySteps["A862"]
			elseif (AAP_ActiveZone == "A942") then
				AAP_Quests = AAP_Ally942["A942"]
			elseif (AAP_ActiveZone == "A896") then
				AAP_Quests = AAP_Ally896["A896"]
			elseif ((AAP_ActiveQuests[47961] or AAP_CompletedQs[47961] == true) and not AAP_CompletedQs[48622]) then
				AAP_ActiveZone = "A895-1"
				AAP_Quests = AllySteps["A895-1"]
			elseif ((AAP_ActiveQuests[47962] or AAP_CompletedQs[47962] == true) and not AAP_CompletedQs[51490]) then
				AAP_ActiveZone = "A895-2"
				AAP_Quests = AllySteps["A895-2"]
			elseif ((AAP_ActiveZone == "A895") and (AAP1[AAP_Realm][AAP_Name]["Zone895D"] == 0) and (AAP_ActiveQuests[47960] or AAP_CompletedQs[47960] == true)) then
				AAP_ActiveZone = "A895-3"
				AAP_Quests = AAP_Ally895["A895-3"]
			elseif ((AAP_ActiveZone == "A895") and (AAP1[AAP_Realm][AAP_Name]["Zone895D"] == 1) and (AAP_ActiveZonePick == 3)) then
				AAP_Quests = AllySteps["A895"]
				AAP_ActiveZone = "A895"
				--AAP_TestAllyCampaign()
			elseif ((AAP_ActiveZonePick > 0) and (AAP_ActiveZone == "A895")) then
				AAP_ActiveZone = "A895-"..AAP_ActiveZonePick
				AAP_Quests = AllySteps[AAP_ActiveZone]
			elseif ((AAP_ActiveZone == "A895") and (AAP1[AAP_Realm][AAP_Name]["Zone895D"] == 1)) then
				AAP_Quests = AllySteps["A895"]
				AAP_ActiveZone = "A895"
				--AAP_TestAllyCampaign()
			else
				if (AllySteps[AAP_ActiveZone]) then
					AAP_Quests = AllySteps[AAP_ActiveZone]
				else
					AAP_ActiveZone = 1233123991
					AAP_Quests = AAP_QuestList[1233123991]
				end
				--AAP_TestAllyCampaign()

			end
		else
		-- Horde
			if (AAP_ActiveZone == 1009) then
				AAP_ActiveZone = 864
			end
			if (AAP1[AAP_Realm][AAP_Name]["AAP_DoWarCampaign"] == 1 and (not AAP1[AAP_Realm][AAP_Name]["Zone862Camp"])) then
				AAP_TestHordeCampaign()
			elseif ((AAP_ActiveZone == 86) and ((AAP_ActiveQuests[47439]) or (AAP_ActiveQuests[50963]) or (AAP_ActiveQuests[50617]) or (AAP_ActiveQuests[50808]))) then
				AAP_ActiveZone = "86-1"
				AAP_Quests = AAP_QuestList["86-1"]
			elseif ((AAP_ActiveZone == 627) and ((AAP_ActiveQuests[47439]) or (AAP_ActiveQuests[50963]) or (AAP_ActiveQuests[50617]) or (AAP_ActiveQuests[50808]))) then
				AAP_ActiveZone = "627-1"
				AAP_Quests = AAP_QuestList["627-1"]
			elseif (AAP_ActiveZone == 864) then
				AAP_Quests = AAP_Zone864[864]
			elseif (AAP_ActiveZone == 863) then
				AAP_Quests = AAP_Zone863[863]
			elseif ((AAP_ActiveZonePick == 1) or (AAP_ActiveZonePick == 2)) and (AAP_ActiveZone == 862) then
				AAP_ActiveZone = "862-"..AAP_ActiveZonePick
				AAP_Quests = AAP_QuestList[AAP_ActiveZone]
			elseif ((AAP_ActiveZone == 862) and (AAP1[AAP_Realm][AAP_Name]["Zone862D"] == 0) and (AAP_ActiveQuests[47514] or AAP_CompletedQs[47514] == true)) then
				AAP_Quests = AAP_Zone862["862-3"]
				AAP_ActiveZone = "862-3"
			elseif ((AAP_ActiveZone == 86) and ((AAP_ActiveQuests[53372]) or AAP_CompletedQs[53372])) then
				AAP_ActiveZone = "86-2"
				AAP_Quests = AAP_QuestList["86-2"]
			elseif (AAP_ActiveZone == 862 and AAP1[AAP_Realm][AAP_Name]["Zone862D"] == 1) then
				AAP_ActiveZone = 862
				AAP_Quests = AAP_QuestList[862]
				AAP_TestHordeCampaign()
			elseif (AAP_QuestList[AAP_ActiveZone]) then
				AAP_Quests = AAP_QuestList[AAP_ActiveZone]
				AAP_TestHordeCampaign()
			else
				AAP_ActiveZone = 1233123991
				AAP_Quests = AAP_QuestList[1233123991]
			end
--print(AAP_ActiveZone)
		end
		if (AAP_ActiveZoneOld ~= AAP_ActiveZone or AAP_ActiveZone == 1233123991) then
			AAP_ArrowActive = 0
			AAP_ArrowActive_X = 0
			AAP_ArrowActive_Y = 0
		end
		AAP_Plus()
	end
end
function AAP_MissionProgress()
	local AAP_MissionDone = 0
	local AAP_MissionList = C_Garrison.GetInProgressMissions(LE_FOLLOWER_TYPE_GARRISON_8_0)
	if (AAP_MissionList) then
		for AAP_index,AAP_value in pairs(AAP_MissionList) do
			for AAP_index2,AAP_value2 in pairs(AAP_value) do
				if (AAP_index2 == "missionID" and AAP_value2 == 1877) then
					AAP_MissionDone = 1
				end
			end
		end
	end
	if (AAP_MissionDone == 1) then
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP_Plus()
	end
end
function AAP_TrimPlayerServer(CLPName)
	if (string.find(CLPName, "(.*)-(.*)")) then
		local _, _, CL_First, CL_Rest = string.find(CLPName, "(.*)-(.*)")
		return CL_First
	else
		return CLPName
	end
end
AAP_ParserEventFrame = CreateFrame("Frame")
AAP_ParserEventFrame:RegisterEvent ("ADDON_LOADED")
AAP_ParserEventFrame:RegisterEvent ("ZONE_CHANGED")
AAP_ParserEventFrame:RegisterEvent ("ZONE_CHANGED_NEW_AREA")
AAP_ParserEventFrame:RegisterEvent ("QUEST_ACCEPTED")
AAP_ParserEventFrame:RegisterEvent ("QUEST_TURNED_IN")
AAP_ParserEventFrame:RegisterEvent ("QUEST_REMOVED")
AAP_ParserEventFrame:RegisterEvent ("QUEST_FINISHED")
AAP_ParserEventFrame:RegisterEvent ("PLAYER_TARGET_CHANGED")
AAP_ParserEventFrame:RegisterEvent ("CHAT_MSG_MONSTER_SAY")
AAP_ParserEventFrame:RegisterEvent ("HEARTHSTONE_BOUND")
AAP_ParserEventFrame:RegisterEvent ("UNIT_SPELLCAST_SUCCEEDED")
AAP_ParserEventFrame:RegisterEvent ("TAXIMAP_CLOSED")
AAP_ParserEventFrame:RegisterEvent ("TAXIMAP_OPENED")
AAP_ParserEventFrame:RegisterEvent ("UI_INFO_MESSAGE");
AAP_ParserEventFrame:RegisterEvent ("GOSSIP_CLOSED")
AAP_ParserEventFrame:RegisterEvent ("GOSSIP_SHOW")
AAP_ParserEventFrame:RegisterEvent ("ITEM_PUSH")
AAP_ParserEventFrame:RegisterEvent ("UNIT_SPELLCAST_SUCCEEDED")
AAP_ParserEventFrame:RegisterEvent ("QUEST_AUTOCOMPLETE")
AAP_ParserEventFrame:RegisterEvent ("SCENARIO_UPDATE")
AAP_ParserEventFrame:RegisterEvent ("SCENARIO_POI_UPDATE")
AAP_ParserEventFrame:RegisterEvent ("ADVENTURE_MAP_CLOSE")
AAP_ParserEventFrame:RegisterEvent ("CHAT_MSG_ADDON")
AAP_ParserEventFrame:RegisterEvent ("QUEST_CHOICE_UPDATE")
AAP_ParserEventFrame:RegisterEvent ("UNIT_AURA")
AAP_ParserEventFrame:RegisterEvent ("MERCHANT_SHOW")
AAP_ParserEventFrame:RegisterEvent ("ADVENTURE_MAP_UPDATE_POIS")
AAP_ParserEventFrame:RegisterEvent ("BAG_UPDATE")

AAP_ParserEventFrame:SetScript("OnEvent", function(self, event, ...)
	if (event=="MERCHANT_SHOW" and AAP_DisableAddon == 0) then
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["BuyMerchant"]) then
			AAP_ArrowEventAFkTimer2412:Play()
		end
	end
	if (event=="UNIT_AURA" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if(arg1 == "player") then
			if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ExtraLine"]) then
				for i=1,40 do
					local name, _, _, _, _, _, _, _, _, spellzid = UnitBuff("player",i)
					if (spellzid and (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ExtraLine"] == 2) and (spellzid == 272122)) then
						AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
						QNumberLocal = 0
						AAP_Reset = 0
						AAP_Plus()
					elseif (spellzid and (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ExtraLine"] == 9) and (spellzid == 272119)) then
						AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
						QNumberLocal = 0
						AAP_Reset = 0
						AAP_Plus()
					elseif (spellzid and (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ExtraLine"] == 24) and (spellzid == 273779)) then
						AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
						QNumberLocal = 0
						AAP_Reset = 0
						AAP_Plus()
					end
				end
			end
		end
	end
	if (event=="ADVENTURE_MAP_UPDATE_POIS" and AAP_DisableAddon == 0) then
		local faction = UnitFactionGroup("player")
		local mapid = C_AdventureMap.GetMapID()
		if (mapid == 1014 and faction == "Horde") then
			local i
			local numZones = C_AdventureMap.GetNumZoneChoices()
			for i=1, numZones do
				local qid, _, zonename, texts = C_AdventureMap.GetZoneChoiceInfo(i)
				if (AAP_ActiveQuests[51803] and qid == 51800) then
					C_AdventureMap.StartQuest(51800)
				elseif (AAP_ActiveQuests[51979] and qid == 51802) then
					C_AdventureMap.StartQuest(51802)
				elseif (AAP_ActiveQuests[52444] and qid == 51801) then
					C_AdventureMap.StartQuest(51801)
				end
			end
		end
	end
	if (event=="ADVENTURE_MAP_CLOSE" and AAP_DisableAddon == 0) then
		if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
			if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["CheckMission"]) then
				AAP_MissionProgress()
			end
		end
	end
	if (event=="SCENARIO_UPDATE" and AAP_DisableAddon == 0) then
		QNumberLocal = 0
		AAP_UPDQListV = AAP_UPDQListV2
	end
	if (event=="CHAT_MSG_ADDON" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4 = ...;
		if (arg1 == "AAPChat") then
			AAP_GroupListingFunc(tonumber(arg2), AAP_TrimPlayerServer(arg4))
		end
	end
	if (event=="SCENARIO_POI_UPDATE" and AAP_DisableAddon == 0) then
		AAP_UPDQListV = AAP_UPDQListV2
	end
	if (event=="UNIT_SPELLCAST_SUCCEEDED" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		-- Hearthstone cast
		if (arg1 == "player" and arg5 == 8690) then

		end
	end
	if (event=="ADDON_LOADED" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if (arg1 == "Azeroth Auto Pilot") then
			AAP_Plus()
		end
	end
	if (event=="ZONE_CHANGED" and AAP_DisableAddon == 0) then
		AAP_ZoneChangeTest()
		AAP_UPDQListV = AAP_UPDQListV2
	end
	if (event=="ZONE_CHANGED_NEW_AREA" and AAP_DisableAddon == 0) then
		AAP_ZoneChangeTest()
		AAP_UPDQListV = AAP_UPDQListV2
	end
	if (event=="QUEST_ACCEPTED" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if (arg2 and 48516 == arg2) then
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			AAP_Reset = 0
			AAP_Plus()
		end
		AAP_Plus()
		AAP_ZoneChangeTest()
		if (UnitInParty("player") and (AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoShareQ"] == 1) and (not AAP_BlockShared[arg2])) then
			local i = 0
			while (GetQuestLogTitle(i+1) ~= nil) do
				i = i + 1;
				local questTitle, level, suggestedGroup, isHeader, isCollapsed, isComplete, frequency, questID = GetQuestLogTitle(i);
				if (not header) then
					SelectQuestLogEntry(i);
					if (GetQuestLogPushable() and questID == arg2) then
						QuestLogPushQuest();
						AAP_BlockShared[arg2] = 1
					end
				end
			end
		end
	end
	if (event=="QUEST_TURNED_IN" and AAP_DisableAddon == 0) then
	end
	if (event=="QUEST_AUTOCOMPLETE" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if (AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandIn"] == 1 and not IsControlKeyDown()) then
			local i = 1
			while GetQuestLogTitle(i) do
				local questTitle, level, suggestedGroup, isHeader, isCollapsed, isComplete, frequency, questID = GetQuestLogTitle(i)
				if (questID > 0) then
					if ( not isHeader) then
						if (questID == arg1) then
							ShowQuestComplete(i)
						end
					end
				end
				i = i + 1
			end
		end
	end
	if (event=="QUEST_REMOVED" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if (arg1) then
			if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
				if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"] == arg1 and AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] and AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] == 1) then
					AAP1[AAP_Realm][AAP_Name]["WantedQuestList"][AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GroupTask"]] = 0
					AAP_Reset = 0
					AAP_Plus()
				end
			end
		end
	end
	if (event=="GOSSIP_CLOSED" and AAP_DisableAddon == 0) then
		AAP_GossipOpen = 0
		AAP_SpecialGossipO = 1
	end
	if (event=="GOSSIP_SHOW" and AAP_DisableAddon == 0) then
		if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
			local AAPDenied = 0
			if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["DenyNPC"]) then
				if (UnitGUID("target") and UnitName("target")) then
					local guid, name = UnitGUID("target"), UnitName("target")
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
					if (npc_id and name) then
						if (tonumber(npc_id) == AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["DenyNPC"]) then
							AAPDenied = 1
						end
					end
				end
			end
			if (AAPDenied == 1) then
				CloseGossip()
				print("AAP: Not Yet!")
			elseif (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Qpart"]) then
				if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"] and not IsControlKeyDown()) then
					if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"] == 47581) then
						if (AAP_SpecialGossipO == 1) then
							SelectGossipOption(3)
							AAP_SpecialGossipO = AAP_SpecialGossipO + 1
						elseif (AAP_SpecialGossipO == 2) then
							SelectGossipOption(5)
							AAP_SpecialGossipO = AAP_SpecialGossipO + 1
						elseif (AAP_SpecialGossipO == 3) then
							SelectGossipOption(1)
							AAP_SpecialGossipO = AAP_SpecialGossipO + 1
						elseif (AAP_SpecialGossipO == 4) then
							SelectGossipOption(4)
							AAP_SpecialGossipO = AAP_SpecialGossipO + 1
						elseif (AAP_SpecialGossipO == 5) then
							SelectGossipOption(2)
							AAP_SpecialGossipO = AAP_SpecialGossipO + 1
						end
					elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"] == 99) then
						local guid = UnitGUID("target")
						local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
						if (npc_id and tonumber(npc_id) == 133538) then
							SelectGossipOption(1)
							AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
							AAP_Reset = 0
							AAP_Plus()
						end
					elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"] == 999 and UnitGUID("target") and UnitName("target")) then
						local guid, name = UnitGUID("target"), UnitName("target")
						local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
						if (tonumber(npc_id) == 137645) then
							AAP_GossipOpen = 0
							SelectGossipOption(1)
							AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
							AAP_Reset = 0
							AAP_Plus()
						end
					elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"] == 98) then
					elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"] == 101) then
						SelectGossipOption(1)
						QNumberLocal = 0
						AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
						AAP_Reset = 0
						AAP_Plus()
					elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"] == 102) then
						SelectGossipOption(1)
						QNumberLocal = 0
						AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
						AAP_Reset = 0
						AAP_Plus()
					else
						AAP_GossipOpen = 0
						SelectGossipOption(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"])
					end
				end
			elseif (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["QpartPart"]) then
				if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"] and not IsControlKeyDown()) then
					SelectGossipOption(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"])
				end
			elseif (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["CRange"]) then
				if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"] and not IsControlKeyDown()) then
					SelectGossipOption(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Gossip"])
				elseif (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GossipP"] and not IsControlKeyDown()) then
					SelectGossipOption(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GossipP"])
					AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
					AAP_Reset = 0
					AAP_Plus()
					AAP_SpecialQ = 0
				end
			elseif (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Special"] and not IsControlKeyDown()) then
					AAP_GossipOpen = 0
					SelectGossipOption(1)
					AAP_SpecialQ = AAP_SpecialQ + 1
					if (AAP_SpecialQ == AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Special"]) then
						AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
						AAP_Reset = 0
						AAP_Plus()
						AAP_SpecialQ = 0
					end
			else
				AAP_GossipOpen = 1
			end
		end
	end
	if (event=="BAG_UPDATE" and AAP_DisableAddon == 0) then
		if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
			if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SearchBags"]) then
				AAP_UPDQListV = AAP_UPDQListV2
			end
		end
	end
	if (event=="ITEM_PUSH" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if (arg2) then
			if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
				if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ExtraLine"]) then
					if (133848 == arg2 and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ExtraLine"] == 12) then
						AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
						AAP_Reset = 0
						AAP_Plus()
					end
					if (1500932 == arg2 and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ExtraLine"] == 13) then
						AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
						AAP_Reset = 0
						AAP_Plus()
					end
					if (454060 == arg2 and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ExtraLine"] == 14) then
						AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
						AAP_Reset = 0
						AAP_Plus()
					end
					if (134382 == arg2 and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ExtraLine"] == 16) then
						AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
						AAP_Reset = 0
						AAP_Plus()
					end
				end
			end
			if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
				if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SearchBags"]) then
					AAP_UPDQListV = AAP_UPDQListV2
				end
			end
		end
	end
	if (event=="QUEST_FINISHED" and AAP_DisableAddon == 0) then
	end
	if (event=="PLAYER_TARGET_CHANGED" and AAP_DisableAddon == 0) then
	end
	if (event=="HEARTHSTONE_BOUND" and AAP_DisableAddon == 0) then
		if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
			if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SetHS"]) then
				AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
				AAP_Reset = 0
				AAP_Plus()
				AAP_UPDQListV = AAP_UPDQListV2
			end
		end
	end
	if (event=="CHAT_MSG_MONSTER_SAY" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if (AAP_Quests and arg5 and arg5 == UnitName("player") and AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SayTriggerStartH"]) then
			QNumberLocal = 0
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			AAP_Reset = 0
			AAP_Plus()
		end
		if (UnitGUID("target")) then
			local guid = UnitGUID("target")
			local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
			if (npc_id and tonumber(npc_id) == 126490) then
				if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
					if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]) then
						if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ETASpecial"]) then
							if (AAP_AfkTable and AAP_AfkTable[AAP_ActiveZone] and AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]) then
							else
								if (not AAP_AfkTable[AAP_ActiveZone]) then
									AAP_AfkTable[AAP_ActiveZone] = {}
								end
								AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] = 1
								AAP_AFK_Timer2(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ETASpecial"])
							end
						end
					end
				end
			end
		end
		if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
			if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["AFKTimer"]) then
				if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["AFKTimer"]["Trigger"] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["AFKTimer"]["Time"] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["AFKTimer"]["Trigger"] == "CHAT_MSG_MONSTER_SAY") then
					if (AAP_AfkTable and AAP_AfkTable[AAP_ActiveZone] and AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]) then
					else
						if (not AAP_AfkTable[AAP_ActiveZone]) then
							AAP_AfkTable[AAP_ActiveZone] = {}
						end
						AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] = 1
						AAP_AFK_Timer(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["AFKTimer"]["Time"])
					end
				end
			end
		end
	end
	if (event=="TAXIMAP_CLOSED" and AAP_DisableAddon == 0) then
	end
	if (event=="TAXIMAP_OPENED" and AAP_DisableAddon == 0) then

--	local CLi
--	for CLi = 1, NumTaxiNodes() do
--		local aapx,aapy = TaxiNodePosition(CLi)
--		aapx = (floor(aapx * 1000)/10)
--		aapy = (floor(aapy * 1000)/10)
--		print(TaxiNodeName(CLi).."-X:"..aapx.."-Y:"..aapy)
--	end

		if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] and not InCombatLockdown() and not IsControlKeyDown()) then
			if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["UseFlightPath"]) then
				if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ETA"]) then
					if (AAP_AfkTable and AAP_AfkTable[AAP_ActiveZone] and AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]) then
					else
						if (not AAP_AfkTable[AAP_ActiveZone]) then
							AAP_AfkTable[AAP_ActiveZone] = {}
						end
						AAP_AfkTable[AAP_ActiveZone][AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] = 1
						AAP_AFK_Timer(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ETA"])
					end
				end
				local Nodetotake = AAP_TaxiSearchFunc(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["PosX"], AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["PosY"])
				TakeTaxiNode(Nodetotake)
				AAP_TaxiVar = 0
				AAP_TaxiTimer:Play()
			end
		end
	end
	if (event=="UNIT_SPELLCAST_SUCCEEDED" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if (arg1 == "player") then
--print("Spell: "..arg3)
			if (arg3 and AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
				if (arg3 == 248808 or arg3 == 249108 or arg3 == 249110) then
					AAP_AFK_Timer(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["GossipETA"])
				end
				if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ButtonSpellId"]) then
					for AAP_index,AAP_value in pairs(AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ButtonSpellId"]) do
						if (arg3 == AAP_index) then
							local start, duration = GetSpellCooldown(AAP_index)
							AAP.QuestList2["BF"..AAP_NamedBookedFS[AAP_value]]["AAP_ButtonCD"]:SetCooldown(GetTime(), AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ButtonCooldown"][AAP_index])
							if (not AAP_ButtonCDCounter[99]) then
								AAP_ButtonCDCounter[99] = {}
							end
							AAP_ButtonCDCounter[99][AAP_NamedBookedFS[AAP_value]] = AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["ButtonCooldown"][AAP_index]
						end
					end
				end
			end
		end
		if (arg1 == "player" and arg3 == 89158) then
			AAP_EquipGearTimer:Play()
		end
		if ((arg1 == "player") and (arg3 == 8690)) then
			if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
				if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["UseHS"]) then
					if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["HSSteps"]) then
						AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["HSSteps"]
						AAP_Reset = 0
						AAP_Plus()
						AAP_UPDQListV = AAP_UPDQListV2
					else
						AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
						AAP_Reset = 0
						AAP_Plus()
						AAP_UPDQListV = AAP_UPDQListV2
					end
				end
			end
		end
		if ((arg1 == "player") and ((arg3 == 89157) or (arg3 == 89158))) then
			if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
				if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["UseDalaHS"]) then
					AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
					AAP_Reset = 0
					AAP_Plus()
					AAP_UPDQListV = AAP_UPDQListV2
				end
			end
		end
	end
end)











