QNumberLocal = 0
local AAP_Reset = 0
AAP_SpecialQ = 0
AAP_LastSent = 0
AAP_GroupListSteps = {}
AAP_GroupListStepsNr = 1
AAP.ActiveZoneTest = 0
AAP.ActiveZoneTestOld = 0
function AAP.IsInGroup()
	if (IsInGroup(LE_PARTY_CATEGORY_HOME) and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] and (AAP_LastSent ~= AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) and (AAP.InstanceTest() == 0)) then
		AAP_SendDelay = 1
		AAP.RepaintGroups()
	end
end
function AAP.SendGroup()
	if (IsInGroup(LE_PARTY_CATEGORY_HOME) and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] and (AAP_LastSent ~= AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) and (AAP.InstanceTest() == 0)) then
		C_ChatInfo.SendAddonMessage("AAPChat", AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone], "PARTY");
		AAP_LastSent = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]
	end
end
function AAP.TaxiSearchFunc(AAPMrX, AAPMrY)
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
function AAP.GroupListingFunc(AAP_StepStuffs, AAP_GListName)
	if (not AAP_GroupListSteps[1]) then
		AAP_GroupListSteps[1] = {}
		AAP_GroupListStepsNr = 1
	end
	AAP_GroupListSteps[1]["Step"] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]
	AAP_GroupListSteps[1]["Name"] = AAP.Name
	if (AAP_GListName ~= AAP.Name) then
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
	AAP.RepaintGroups()
end
function AAP.RepaintGroups()
	if (AAP.InstanceTest() ~= 0) then
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
		AAP_GroupListSteps[1]["Step"] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]
		AAP_GroupListSteps[1]["Name"] = AAP.Name
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
	if (AAP1[AAP.Realm][AAP.Name]["Settings"]["ShowGroup"] == 0) then
		local CLi
		for CLi = 1, 5 do
			AAP.PartyList.PartyFrames[CLi]:Hide()
			AAP.PartyList.PartyFrames2[CLi]:Hide()
		end
	end
end
function AAP.Plus()
	if (not AAP.CompletedQs) then
		AAP.CompletedQs	= {}
	end
	if (AAP.ActiveZone and AAP1 and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] and AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]) then
	else
		return
	end
	AAP.ActiveStuff = AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]
	if (UnitLevel("player") == 120) then
		for AAP_index,AAP_value in pairs(AAP_BonusObj) do
			if (not AAP.CompletedQs[AAP_index]) then
				AAP.CompletedQs[AAP_index] = true
			end
		end
	end
	if (AAP1[AAP.Realm][AAP.Name]["SkippedBonusObj"]) then
		for AAP_index,AAP_value in pairs(AAP1[AAP.Realm][AAP.Name]["SkippedBonusObj"]) do
			if (not AAP.CompletedQs[AAP_index]) then
				AAP.CompletedQs[AAP_index] = true
			end
		end
	end
	if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
		if (AAP.ActiveStuff) then
			if (IsQuestFlaggedCompleted(47440) == true) then
				AAP1[AAP.Realm][AAP.Name]["LoaPick"] = 1
			elseif (IsQuestFlaggedCompleted(47439) == true) then
				AAP1[AAP.Realm][AAP.Name]["LoaPick"] = 2
			end
			local LoaSkip = 0
			if (AAP.ActiveStuff["PickedLoa"] and AAP1[AAP.Realm][AAP.Name]["LoaPick"] > 0) then
				local nrloa = AAP1[AAP.Realm][AAP.Name]["LoaPick"]
				if (AAP.ActiveStuff["PickedLoa"] ~= nrloa) then
					LoaSkip = 1
				end
			end
			if (LoaSkip == 1) then
				AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
				AAP_Reset = 0
				AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			elseif (AAP.ActiveStuff["PickUp"]) then
				AAP.BookingList["AAP.Pickup"] = 1
				if (AAP.ActiveStuff["PickUp2"]) then
					AAP.BookingList["AAP.Pickup2"] = 1
				end
			elseif (AAP.ActiveStuff["ZoneDone"]) then
				if (AAP.ActiveStuff["ZoneDone"] == 1233211) then
					AAP.ActiveZonePick = 0
					AAP1[AAP.Realm][AAP.Name]["Zone862D"] = 1
					if (AAP_Reset == 0) then
						AAP_Reset = 1
						AAP_UPDQListV = AAP_UPDQListV2
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
					end
				end
				if (AAP.ActiveStuff["ZoneDone"] == 12523211) then
					AAP.ActiveZonePick = 0
					AAP1[AAP.Realm][AAP.Name]["Zone862Camp"] = 1
					if (AAP_Reset == 0) then
						AAP_Reset = 1
						AAP_UPDQListV = AAP_UPDQListV2
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
					end
				end
				if (AAP.ActiveStuff["ZoneDone"] == 4232161) then
					AAP.ActiveZonePick = 0
					AAP1[AAP.Realm][AAP.Name]["Zone895D"] = 1
					if (AAP_Reset == 0) then
						AAP_Reset = 1
						AAP_UPDQListV = AAP_UPDQListV2
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
					end
				end
			elseif (AAP.ActiveStuff["QaskPopup"]) then
				AAP.BookingList["AAP.QAskPopWanted"] = 1
			elseif (AAP.ActiveStuff["Qpart"]) then
				AAP.BookingList["AAP.QuestPartStep"] = "AAP.QuestPartStep"
				if (AAP.ActiveZone and AAP.ActiveStuff and AAP.ActiveStuff["Qpart2"]) then
					AAP.BookingList["AAP.QuestPartStep2"] = 1
				end
			elseif (AAP.ActiveStuff["QpartPart"]) then
				AAP.BookingList["AAP.QuestPartPartStep"] = 1
			elseif (AAP.ActiveStuff["Done"]) then
				AAP.BookingList["AAP.Done"] = 1
				if (AAP.ActiveStuff["Done2"]) then
					AAP.BookingList["AAP.Done2"] = 1
				end
			elseif (AAP.ActiveStuff["DropQuest"]) then
				AAP.BookingList["AAP.DropQuest"] = 1
			elseif (AAP.ActiveStuff["CRange"]) then
				AAP.BookingList["AAP.CRange"] = 1
			elseif (AAP.ActiveStuff["AskQuestLine"]) then
				AAP.BookingList["AAP.AskQline"] = 1
			elseif (AAP.ActiveStuff["FlightPath"]) then
				AAP.BookingList["AAP.GetFP"] = 1
			elseif (AAP.ActiveStuff["UseFlightPath"]) then
				AAP.BookingList["AAP.UseFP"] = 1
			elseif (AAP.ActiveStuff["ZonePick"]) then
				AAP.BookingList["AAP.ZonePick"] = 1
			elseif (AAP.ActiveStuff["SetHS"]) then
				AAP.BookingList["AAP.SetHS"] = 1
			elseif (AAP.ActiveStuff["UseDalaHS"]) then
				AAP.BookingList["AAP.UseDalaHS"] = 1
			elseif (AAP.ActiveStuff["UseHS"]) then
				AAP.BookingList["AAP.UseHS"] = 1
			end
		end
	end
	--AAP_QuestDelayUpdTimer:Play()
	AAP.BookingList["AAP.IsInGroup"] = 1
end
function AAP.UseFP()
	if ((AAP.ActiveStuff["SpecialifSkip"]) and ((not AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["SpecialifSkip"]]) or (AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["SpecialifSkip"]] == 1))) then
		QNumberLocal = 0
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	elseif (IsQuestFlaggedCompleted(AAP.ActiveStuff["UseFlightPath"]) == true) then
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP.AskQline()
	if (AAP1[AAP.Realm][AAP.Name]["Settings"]["ChooseQuests"] == 1) then
		local SugGroupNr = AAP.ActiveStuff["NrQuests"]
		AAP.QuestList.SugQuestFrame2FS1:SetText(AAP_Locals["Optional"])
		AAP.QuestList.SugQuestFrame2FS2:SetText(ObjectiveTrackerBlocksFrame.QuestHeader.Text:GetText()..": "..SugGroupNr)
		if (AAP.ActiveStuff["SkipzNr"]) then
			AAP.QuestList.SugQuestFrame2.TextureAFrame.arrow:SetTexture(AAP.Skip[AAP.ActiveStuff["SkipzNr"]])
		else
			AAP.QuestList.SugQuestFrame2.TextureAFrame.arrow:SetTexture("")
		end
		AAP.QuestList.SugQuestFrame2:Show()
	else
		AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["AskQuestLine"]] = 1
		AAP.QuestList.SugQuestFrame2:Hide()
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	end
end
function AAP.QAskPopQline(AAP_answer)
	if (AAP_answer == "yes") then
		AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["AskQuestLine"]] = 1
		AAP.QuestList.SugQuestFrame2:Hide()
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	else
		AAP.QuestList.SugQuestFrame2:Hide()
		AAP.RemoveQWatch(AAP.ActiveStuff["AskQuestLine"])
		AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["AskQuestLine"]] = 0
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	end
end
function AAP.QAskPopWanted()
	local Qid = AAP.ActiveStuff["QaskPopup"]
	if (IsQuestFlaggedCompleted(Qid) == true) then
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
		AAP.QuestList.SugQuestFrame:Hide()
	elseif (AAP.ActiveStuff["QuestLineSkip"] and AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["QuestLineSkip"]] and AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["QuestLineSkip"]] == 0) then
		QNumberLocal = 0
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	else
		local SugGroupNr = AAP.ActiveStuff["Group"]
		AAP.QuestList.SugQuestFrameFS1:SetText(AAP_Locals["Optional"])
		AAP.QuestList.SugQuestFrameFS2:SetText(AAP_Locals["Suggested Players"]..": "..SugGroupNr)
		AAP.QuestList.SugQuestFrame:Show()
	end
end
function AAP.QAskPopWantedAsk(AAP_answer)
	if (AAP_answer == "yes") then
		AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["QaskPopup"]] = 1
		AAP.QuestList.SugQuestFrame:Hide()
		AAP.AddToQWatch(AAP.ActiveStuff["QaskPopup"])
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	else
		AAP.QuestList.SugQuestFrame:Hide()
		AAP.RemoveQWatch(AAP.ActiveStuff["QaskPopup"])
		AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["QaskPopup"]] = 0
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	end
end
function AAP.SkipBonusObjective(AAP_NrClicked)
	print("AAP: Skipped Bonus Objective")
	AAP1[AAP.Realm][AAP.Name]["SkippedBonusObj"][tonumber(AAP_NrClicked)] = 1
	AAP_UPDQListV = AAP_UPDQListV2
	AAP.BookingList["AAP_Plus"] = "AAP_Plus"
end
function AAP.DropQuest()
	local zdrop = AAP.ActiveStuff["DropQuest"]
	if (IsQuestFlaggedCompleted(zdrop) == true) then
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	elseif (AAP_ActiveQuests[zdrop]) then
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP.SetHS()
	if (IsQuestFlaggedCompleted(AAP.ActiveStuff["SetHS"]) == true) then
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP.UseHS()
	if (IsQuestFlaggedCompleted(AAP.ActiveStuff["UseHS"]) == true) then
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP.UseDalaHS()
	if (IsQuestFlaggedCompleted(AAP.ActiveStuff["UseDalaHS"]) == true) then
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	end

	local sta1, sta2 = GetItemCooldown(140192)
	local sta11, sta12 = GetItemCooldown(65274)
	if ((sta1 and sta1 > 0) and (sta11 and sta11 > 0) and AAP.ActiveZone and AAP.ActiveZone ~= 100) then
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP.Pickup()
	local aap_t11 = 0
	local aap_t12 = 0
	local Zdedaap = 0
	for AAP_index,AAP_value in pairs(AAP.ActiveStuff["PickUp"]) do
		aap_t11 = aap_t11 + 1
		if (IsQuestFlaggedCompleted(AAP_value) == true) then
			aap_t12 = aap_t12 + 1
		end
	end
	if (aap_t11 == aap_t12) then
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		QNumberLocal = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	else
		local aap_t1 = 0
		local aap_t2 = 0
		for AAP_index,AAP_value in pairs(AAP.ActiveStuff["PickUp"]) do
			aap_t1 = aap_t1 + 1
			if (AAP_ActiveQuests[AAP_value]) then
				aap_t2 = aap_t2 + 1
			elseif (IsQuestFlaggedCompleted(AAP_value) == true) then
				aap_t2 = aap_t2 + 1
			end
		end
		if (aap_t1 == aap_t2) then
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			QNumberLocal = 0
			AAP_Reset = 0
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			AAP.BookingList["AAP.SetQPTT"] = 1
			Zdedaap = 1
		else
			if (AAP.ActiveStuff["ETA"]) then
				if (AAP_AfkTable and AAP_AfkTable[AAP.ActiveZone] and AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]) then
				else
					if (not AAP_AfkTable[AAP.ActiveZone]) then
						AAP_AfkTable[AAP.ActiveZone] = {}
					end
					AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]] = 1
					AAP.AFK_Timer(AAP.ActiveStuff["ETA"])
				end
			end
		end
	end
	if (AAP.ActiveZone and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] and AAP.ActiveStuff and AAP.ActiveStuff["LoaPick"] and AAP1[AAP.Realm][AAP.Name]["LoaPick"] > 0) then
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			QNumberLocal = 0
			Zdedaap = 1
			AAP_Reset = 0
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			AAP.BookingList["AAP.SetQPTT"] = 1
	elseif (AAP.ActiveZone and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] and AAP.ActiveStuff and AAP.ActiveStuff["LoaPick"]) then
		if (AAP_ActiveQuests[47440]) then
			AAP1[AAP.Realm][AAP.Name]["LoaPick"] = 1
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			QNumberLocal = 0
			Zdedaap = 1
			AAP_Reset = 0
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			AAP.BookingList["AAP.SetQPTT"] = 1
		elseif (AAP_ActiveQuests[47439]) then
			AAP1[AAP.Realm][AAP.Name]["LoaPick"] = 2
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			QNumberLocal = 0
			Zdedaap = 1
			AAP_Reset = 0
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
	elseif (AAP.ActiveZone and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] and AAP.ActiveStuff["QuestLineSkip"] and Zdedaap == 0 and AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["QuestLineSkip"]] and AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["QuestLineSkip"]] == 0) then
		QNumberLocal = 0
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	elseif (AAP.ActiveZone and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] and AAP.ActiveStuff["GroupTask"] and Zdedaap == 0) then
		if (AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] and AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] == 0) then
			QNumberLocal = 0
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			AAP_Reset = 0
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP.Pickup2()
	local aap_t11 = 0
	local aap_t12 = 0
	local Zdedaap = 0
	for AAP_index,AAP_value in pairs(AAP.ActiveStuff["PickUp2"]) do
		aap_t11 = aap_t11 + 1
		if (IsQuestFlaggedCompleted(AAP_value) == true) then
			aap_t12 = aap_t12 + 1
		end
	end
	if (aap_t11 == aap_t12) then
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		QNumberLocal = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	else
		local aap_t1 = 0
		local aap_t2 = 0
		for AAP_index,AAP_value in pairs(AAP.ActiveStuff["PickUp2"]) do
			aap_t1 = aap_t1 + 1
			if (AAP_ActiveQuests[AAP_value]) then
				aap_t2 = aap_t2 + 1
			elseif (IsQuestFlaggedCompleted(AAP_value) == true) then
				aap_t2 = aap_t2 + 1
			end
		end
		if (aap_t1 == aap_t2) then
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			QNumberLocal = 0
			AAP_Reset = 0
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			AAP.BookingList["AAP.SetQPTT"] = 1
			Zdedaap = 1
		else
			if (AAP.ActiveStuff["ETA"]) then
				if (AAP_AfkTable and AAP_AfkTable[AAP.ActiveZone] and AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]) then
				else
					if (not AAP_AfkTable[AAP.ActiveZone]) then
						AAP_AfkTable[AAP.ActiveZone] = {}
					end
					AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]] = 1
					AAP.AFK_Timer(AAP.ActiveStuff["ETA"])
				end
			end
		end
	end
	if (AAP.ActiveZone and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] and AAP.ActiveStuff and AAP.ActiveStuff["LoaPick"] and AAP1[AAP.Realm][AAP.Name]["LoaPick"] > 0) then
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			QNumberLocal = 0
			Zdedaap = 1
			AAP_Reset = 0
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			AAP.BookingList["AAP.SetQPTT"] = 1
	elseif (AAP.ActiveZone and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] and AAP.ActiveStuff and AAP.ActiveStuff["LoaPick"]) then
		if (AAP_ActiveQuests[47440]) then
			AAP1[AAP.Realm][AAP.Name]["LoaPick"] = 1
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			QNumberLocal = 0
			Zdedaap = 1
			AAP_Reset = 0
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			AAP.BookingList["AAP.SetQPTT"] = 1
		elseif (AAP_ActiveQuests[47439]) then
			AAP1[AAP.Realm][AAP.Name]["LoaPick"] = 2
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			QNumberLocal = 0
			Zdedaap = 1
			AAP_Reset = 0
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
	elseif (AAP.ActiveStuff["QuestLineSkip"] and Zdedaap == 0 and AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["QuestLineSkip"]] and AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["QuestLineSkip"]] == 0) then
		QNumberLocal = 0
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	elseif (AAP.ActiveStuff["GroupTask"] and Zdedaap == 0) then
		if (AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] and AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] == 0) then
			QNumberLocal = 0
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			AAP_Reset = 0
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP.QuestPartPartStep()
	if (AAP.ActiveStuff["QpartPart"]) then
		local aap_t11 = 0
		local aap_t12 = 0
		for AAP_index,AAP_value in pairs(AAP.ActiveStuff["QpartPart"]) do
			aap_t11 = aap_t11 + 1
			if (IsQuestFlaggedCompleted(AAP_index) == true) then
				AAP.CompletedQs[AAP_index] = true
			end
			if (AAP.CompletedQs[AAP_index] == true) then
				aap_t12 = aap_t12 + 1
			end
		end
		local Zdedaap = 0
		if (aap_t11 == aap_t12) then
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			QNumberLocal = 0
			AAP_Reset = 0
			Zdedaap = 1
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			AAP.BookingList["AAP.SetQPTT"] = 1
		elseif (AAP.ActiveStuff and AAP.ActiveStuff["QpartPart"]) then
			for AAP_index,AAP_value in pairs(AAP.ActiveStuff["QpartPart"]) do
				for AAP_index2,AAP_value2 in pairs(AAP_value) do
					if (AAP_ActiveQuests[AAP_index] and AAP_ActiveQuests[AAP_index]["Obj"] and AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)] and AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)]["text"]) then
						if (AAP.ActiveStuff and AAP.ActiveStuff["TrigText"]) then
							if (string.find(AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)]["text"], AAP.ActiveStuff["TrigText"])) then
								AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
								QNumberLocal = 0
								AAP_Reset = 0
								Zdedaap = 1
								AAP.BookingList["AAP_Plus"] = "AAP_Plus"
								AAP.BookingList["AAP.SetQPTT"] = 1
							end
						end
					end
				end
			end
		end
		if (AAP.ActiveStuff["QuestLineSkip"] and Zdedaap == 0 and AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["QuestLineSkip"]] and AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["QuestLineSkip"]] == 0) then
			QNumberLocal = 0
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			AAP_Reset = 0
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			AAP.BookingList["AAP.SetQPTT"] = 1
		elseif (AAP.ActiveStuff["GroupTask"] and Zdedaap == 0) then
			if (AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] and AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] == 0) then
				QNumberLocal = 0
				AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
				AAP_Reset = 0
				AAP.BookingList["AAP_Plus"] = "AAP_Plus"
				AAP.BookingList["AAP.SetQPTT"] = 1
			end
		end
		AAP.BookingList["AAP.SetQPTT"] = 1
		if (AAP_Reset == 0) then
			AAP_Reset = 1
			AAP_UPDQListV = AAP_UPDQListV2
		end
	end
end
function AAP.QuestPartStep()
	local aap_t11 = 0
	local aap_t12 = 0
	if (AAP.ActiveStuff["ExtraActionB"]) then
		local isFound, macroSlot = AAP.MacroFinder()
		if isFound and macroSlot then
			AAP.MacroUpdater(macroSlot, 123123123)
		end
	end
	for AAP_index,AAP_value in pairs(AAP.ActiveStuff["Qpart"]) do
		aap_t11 = aap_t11 + 1
		if (IsQuestFlaggedCompleted(AAP_index) == true) then
			AAP.CompletedQs[AAP_index] = true
		end
		if (AAP.CompletedQs[AAP_index] == true) then
			aap_t12 = aap_t12 + 1
		end
	end
	if (aap_t11 == aap_t12) then
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	else
		local aap_t1 = 0
		local aap_t2 = 0
		for AAP_index,AAP_value in pairs(AAP.ActiveStuff["Qpart"]) do
			for AAP_index2,AAP_value2 in pairs(AAP.ActiveStuff["Qpart"][AAP_index]) do
				aap_t1 = aap_t1 + 1
				if (IsQuestFlaggedCompleted(AAP_index) == true) then
					AAP.CompletedQs[AAP_index] = true
				end
				if (AAP.CompletedQs[AAP_index]) then
					aap_t2 = aap_t2 + 1
				elseif (AAP_ActiveQuests and AAP_ActiveQuests[AAP_index] and AAP_ActiveQuests[AAP_index]["Obj"] and AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)] and AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)]["Comp"]) then
					if (AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)]["Comp"] == 1) then
						aap_t2 = aap_t2 + 1
					end
				end
			end
		end
		AAP.BookingList["AAP.SetQPTT"] = 1
		if (aap_t1 == aap_t2) then
			QNumberLocal = 0
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			AAP_Reset = 0
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			AAP.BookingList["AAP.SetQPTT"] = 1
		else
			if (AAP.ActiveStuff["ETA"]) then
				if (AAP_AfkTable and AAP_AfkTable[AAP.ActiveZone] and AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]) then
				else
					if (not AAP_AfkTable[AAP.ActiveZone]) then
						AAP_AfkTable[AAP.ActiveZone] = {}
					end
					AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]] = 1
					AAP.AFK_Timer(AAP.ActiveStuff["ETA"])
				end
			end
			if (AAP.ActiveStuff["QuestLineSkip"] and AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["QuestLineSkip"]] and AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["QuestLineSkip"]] == 0) then
					QNumberLocal = 0
					AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
					AAP_Reset = 0
					AAP.BookingList["AAP_Plus"] = "AAP_Plus"
					AAP.BookingList["AAP.SetQPTT"] = 1
			elseif (AAP.ActiveStuff["GroupTask"]) then
				if (AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] and AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] == 0) then
					QNumberLocal = 0
					AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
					AAP_Reset = 0
					AAP.BookingList["AAP_Plus"] = "AAP_Plus"
					AAP.BookingList["AAP.SetQPTT"] = 1
				end
			end
		end
	end
	if (AAP_GossipOpen == 1) then
		if (AAP.ActiveStuff and AAP.ActiveStuff["Qpart"]) then
			local AAPDenied = 0
			if (AAP.ActiveStuff["DenyNPC"]) then
				if (UnitGUID("target") and UnitName("target")) then
					local guid, name = UnitGUID("target"), UnitName("target")
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
					if (npc_id and name) then
						if (tonumber(npc_id) == AAP.ActiveStuff["DenyNPC"]) then
							AAPDenied = 1
						end
					end
				end
			end
			if (AAPDenied == 1) then
				CloseGossip()
				print("AAP: Not Yet!")
			elseif (AAP.ActiveStuff["Gossip"] and not IsControlKeyDown() and AAP1[AAP.Realm][AAP.Name]["Settings"]["AutoGossip"] == 1) then
				if (AAP.ActiveStuff["Gossip"] == 99 and UnitGUID("target") and UnitName("target")) then
					local guid, name = UnitGUID("target"), UnitName("target")
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
					if (npc_id == 133538) then
						AAP_GossipOpen = 0
						SelectGossipOption(1)
						AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
						AAP_Reset = 0
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
					end
				elseif (AAP.ActiveStuff["Gossip"] == 999 and UnitGUID("target") and UnitName("target") and AAP1[AAP.Realm][AAP.Name]["Settings"]["AutoGossip"] == 1) then
					local guid, name = UnitGUID("target"), UnitName("target")
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
					if (npc_id == 137645) then
						AAP_GossipOpen = 0
						SelectGossipOption(1)
						AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
						AAP_Reset = 0
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
					end
				elseif (AAP.ActiveStuff["Gossip"] == 101 and UnitGUID("target") and UnitName("target") and AAP1[AAP.Realm][AAP.Name]["Settings"]["AutoGossip"] == 1) then
					local guid, name = UnitGUID("target"), UnitName("target")
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
					if (npc_id == 139633) then
						AAP_GossipOpen = 0
						SelectGossipOption(1)
						AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
						AAP_Reset = 0
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
					end
				elseif (AAP.ActiveStuff["Gossip"] == 98 and AAP1[AAP.Realm][AAP.Name]["Settings"]["AutoGossip"] == 1) then
					AAP.AFK_Timer(AAP.ActiveStuff["GossipETA"])
					SelectGossipOption(1)
				else
					if (AAP1[AAP.Realm][AAP.Name]["Settings"]["AutoGossip"] == 1) then
						AAP_GossipOpen = 0
						SelectGossipOption(AAP.ActiveStuff["Gossip"])
					end
				end
			end
		end
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP.QuestPartStep2()
	local aap_t11 = 0
	local aap_t12 = 0
	for AAP_index,AAP_value in pairs(AAP.ActiveStuff["Qpart2"]) do
		aap_t11 = aap_t11 + 1
		if (IsQuestFlaggedCompleted(AAP_index) == true) then
			AAP.CompletedQs[AAP_index] = true
		end
		if (AAP.CompletedQs[AAP_index] == true) then
			aap_t12 = aap_t12 + 1
		end
	end
	if (aap_t11 == aap_t12) then
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	else
		local aap_t1 = 0
		local aap_t2 = 0
		for AAP_index,AAP_value in pairs(AAP.ActiveStuff["Qpart2"]) do
			for AAP_index2,AAP_value2 in pairs(AAP.ActiveStuff["Qpart2"][AAP_index]) do
				aap_t1 = aap_t1 + 1
				if (IsQuestFlaggedCompleted(AAP_index) == true) then
					AAP.CompletedQs[AAP_index] = true
				end
				if (AAP.CompletedQs[AAP_index]) then
					aap_t2 = aap_t2 + 1
				elseif (AAP_ActiveQuests and AAP_ActiveQuests[AAP_index] and AAP_ActiveQuests[AAP_index]["Obj"] and AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)] and AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)]["Comp"]) then
					if (AAP_ActiveQuests[AAP_index]["Obj"][tonumber(AAP_index2)]["Comp"] == 1) then
						aap_t2 = aap_t2 + 1
					end
				end
			end
		end
		AAP.BookingList["AAP.SetQPTT"] = 1
		if (aap_t1 == aap_t2) then
			QNumberLocal = 0
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			AAP_Reset = 0
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			AAP.BookingList["AAP.SetQPTT"] = 1
		else
			if (AAP.ActiveStuff["ETA"]) then
				if (AAP_AfkTable and AAP_AfkTable[AAP.ActiveZone] and AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]) then
				else
					if (not AAP_AfkTable[AAP.ActiveZone]) then
						AAP_AfkTable[AAP.ActiveZone] = {}
					end
					AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]] = 1
					AAP.AFK_Timer(AAP.ActiveStuff["ETA"])
				end
			end
			if (AAP.ActiveStuff["QuestLineSkip"] and AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["QuestLineSkip"]] and AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["QuestLineSkip"]] == 0) then
					QNumberLocal = 0
					AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
					AAP_Reset = 0
					AAP.BookingList["AAP_Plus"] = "AAP_Plus"
					AAP.BookingList["AAP.SetQPTT"] = 1
			elseif (AAP.ActiveStuff["GroupTask"]) then
				if (AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] and AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] == 0) then
					QNumberLocal = 0
					AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
					AAP_Reset = 0
					AAP.BookingList["AAP_Plus"] = "AAP_Plus"
					AAP.BookingList["AAP.SetQPTT"] = 1
				end
			end
		end
	end
	if (AAP_GossipOpen == 1) then
		if (AAP.ActiveStuff and AAP.ActiveStuff["Qpart2"]) then
			local AAPDenied = 0
			if (AAP.ActiveStuff["DenyNPC"]) then
				if (UnitGUID("target") and UnitName("target")) then
					local guid, name = UnitGUID("target"), UnitName("target")
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
					if (npc_id and name) then
						if (tonumber(npc_id) == AAP.ActiveStuff["DenyNPC"]) then
							AAPDenied = 1
						end
					end
				end
			end
			if (AAPDenied == 1) then
				CloseGossip()
				print("AAP: Not Yet!")
			elseif (AAP.ActiveStuff["Gossip"] and not IsControlKeyDown() and AAP1[AAP.Realm][AAP.Name]["Settings"]["AutoGossip"] == 1) then
				if (AAP.ActiveStuff["Gossip"] == 99) then
					AAP_GossipOpen = 0
					SelectGossipOption(1)
					AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
					AAP_Reset = 0
					AAP.BookingList["AAP_Plus"] = "AAP_Plus"
				elseif (AAP.ActiveStuff["Gossip"] == 999 and UnitGUID("target") and UnitName("target")) then
					local guid, name = UnitGUID("target"), UnitName("target")
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
					if (npc_id == 137645) then
						AAP_GossipOpen = 0
						SelectGossipOption(1)
						AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
						AAP_Reset = 0
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
					end
				elseif (AAP.ActiveStuff["Gossip"] == 98) then
					AAP.AFK_Timer(AAP.ActiveStuff["GossipETA"])
					SelectGossipOption(1)
				else
					AAP_GossipOpen = 0
					SelectGossipOption(AAP.ActiveStuff["Gossip"])
				end
			end
		end
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP.ZonePick()
	if (AAP.ActiveStuff["ZonePick"] == "Horde") then
		AAP.ActiveZonePick = 0
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
		if ((AAP.ActiveZone == 862) and (AAP1[AAP.Realm][AAP.Name]["Zone862D"] == 0) and (AAP_ActiveQuests[47514] or IsQuestFlaggedCompleted(47514) == true)) then
				AAP.ActiveZonePick = 3
				AAP.BookingList["AAP_ChangeZone"] = "AAP_ChangeZone"
		end
		for AAP_index,AAP_value in pairs(H1) do
			if (AAP_ActiveQuests[AAP_value]) then
				AAP.ActiveZonePick = 1
				AAP.BookingList["AAP_ChangeZone"] = "AAP_ChangeZone"
			end
		end
		for AAP_index,AAP_value in pairs(H2) do
			if (AAP_ActiveQuests[AAP_value]) then
				AAP.ActiveZonePick = 2
				AAP.BookingList["AAP_ChangeZone"] = "AAP_ChangeZone"
			end
		end
		for AAP_index,AAP_value in pairs(H4) do
			if (AAP_ActiveQuests[AAP_value]) then
				AAP.ActiveZonePick = 4
				AAP.BookingList["AAP_ChangeZone"] = "AAP_ChangeZone"
			end
		end
	elseif (AAP.ActiveStuff["ZonePick"] == "Alliance") then
		AAP.ActiveZonePick = 0
		local A1 = {
			--- Dustvar
			[47962] = 47961,

		}
		local A3 = {
			--- Tiragarde Sound
			[47960] = 47960,
			[47181] = 47181,
		}
		if ((AAP_ActiveQuests[47961] or IsQuestFlaggedCompleted(47961) == true) and not IsQuestFlaggedCompleted(48622)) then
			AAP.ActiveZonePick = 1
			AAP.BookingList["AAP_ChangeZone"] = "AAP_ChangeZone"
		end
		if ((AAP_ActiveQuests[47962] or IsQuestFlaggedCompleted(47962) == true) and not IsQuestFlaggedCompleted(51490)) then
			AAP.ActiveZonePick = 2
			AAP.BookingList["AAP_ChangeZone"] = "AAP_ChangeZone"
		end
		for AAP_index,AAP_value in pairs(A3) do
			if (AAP_value and AAP_ActiveQuests[AAP_value]) then
				AAP.ActiveZonePick = 3
				AAP.BookingList["AAP_ChangeZone"] = "AAP_ChangeZone"
			end
		end
	end
end
function AAP.Done()
	local aap_t1 = 0
	local aap_t2 = 0
	for AAP_index,AAP_value in pairs(AAP.ActiveStuff["Done"]) do
		aap_t1 = aap_t1 + 1
		if (IsQuestFlaggedCompleted(AAP_value) == true) then
			AAP.CompletedQs[AAP_value] = true
		end
		if (AAP.CompletedQs[AAP_value] == true) then
			aap_t2 = aap_t2 + 1
		end
	end
	if (aap_t1 == aap_t2) then
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
	else
		if (AAP.ActiveStuff["ETA"]) then
			if (AAP_AfkTable and AAP_AfkTable[AAP.ActiveZone] and AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]) then
			else
				if (not AAP_AfkTable[AAP.ActiveZone]) then
					AAP_AfkTable[AAP.ActiveZone] = {}
				end
				AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]] = 1
				AAP.AFK_Timer(AAP.ActiveStuff["ETA"])
			end
		end
	end
	if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] and AAP.ActiveStuff and AAP.ActiveStuff["GroupTask"]) then
		if (AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] and AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] == 0) then
			QNumberLocal = 0
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			AAP_Reset = 0
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
	end
	if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
		if (AAP.ActiveStuff) then
			if (AAP.ActiveStuff["VehicleExit"]) then
				VehicleExit()
			end
		end
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP.Done2()
	local aap_t1 = 0
	local aap_t2 = 0
	for AAP_index,AAP_value in pairs(AAP.ActiveStuff["Done2"]) do
		aap_t1 = aap_t1 + 1
		if (IsQuestFlaggedCompleted(AAP_value) == true) then
			AAP.CompletedQs[AAP_value] = true
		end
		if (AAP.CompletedQs[AAP_value] == true) then
			aap_t2 = aap_t2 + 1
		end
	end
	if (aap_t1 == aap_t2) then
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
	else
		if (AAP.ActiveStuff["ETA"]) then
			if (AAP_AfkTable and AAP_AfkTable[AAP.ActiveZone] and AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]) then
			else
				if (not AAP_AfkTable[AAP.ActiveZone]) then
					AAP_AfkTable[AAP.ActiveZone] = {}
				end
				AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]] = 1
				AAP.AFK_Timer(AAP.ActiveStuff["ETA"])
			end
		end
	end
	if (AAP.ActiveZone and AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] and AAP.ActiveStuff["QuestLineSkip"] and AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["QuestLineSkip"]] and AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["QuestLineSkip"]] == 0) then
		QNumberLocal = 0
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	elseif (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] and AAP.ActiveStuff["GroupTask"]) then
		if (AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] and AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] == 0) then
			QNumberLocal = 0
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			AAP_Reset = 0
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
	end
	if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
		if (AAP.ActiveStuff) then
			if (AAP.ActiveStuff["VehicleExit"]) then
				VehicleExit()
			end
		end
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP.CRange(AAP_TrigCR)
	if (AAP.ActiveStuff and AAP.ActiveStuff["CRange"]) then
		if (AAP.ActiveStuff["CancelBuff"]) then
			local i = 1
			local buff = UnitBuff("player", i);
			while buff do
				local name, rank, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, spellId = UnitBuff("player", i)
				if (spellId == AAP.ActiveStuff["CancelBuff"]) then
					CancelUnitBuff("player", i)
				end
				i = i + 1
				buff = UnitBuff("player", i);
			end
		end
		if (AAP.ActiveStuff["ETA"]) then
			if (AAP_AfkTable and AAP_AfkTable[AAP.ActiveZone] and AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]) then
			else
				if (not AAP_AfkTable[AAP.ActiveZone]) then
					AAP_AfkTable[AAP.ActiveZone] = {}
				end
				AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]] = 1
				AAP.AFK_Timer(AAP.ActiveStuff["ETA"])
			end
		end
	end
	local dderpzzaap = 0
	if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] and AAP.ActiveStuff["QuestLineSkip"] and AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["QuestLineSkip"]] and AAP1[AAP.Realm][AAP.Name]["QlineSkip"][AAP.ActiveStuff["QuestLineSkip"]] == 0) then
		QNumberLocal = 0
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	elseif (AAP.ActiveStuff["GroupTask"]) then
		if (AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] and AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] == 0) then
			QNumberLocal = 0
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			AAP_Reset = 0
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			AAP.BookingList["AAP.SetQPTT"] = 1
			dderpzzaap = 1
		end
	end
	if (IsQuestFlaggedCompleted(AAP.ActiveStuff["CRange"]) == true and dderpzzaap == 0) then
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
	elseif (AAP_TrigCR == "Trigged" and dderpzzaap == 0) then
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
	end
	--AAP.TestCranges()
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP.TestCranges()
	if (AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
		local testad = true
		local plusnr = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]
		local AntiLooper = 0
		while testad do
			plusnr = plusnr + 1
			if (AAP.QuestList and AAP.QuestList[AAP.ActiveZone][plusnr] and (not AAP.QuestList[AAP.ActiveZone][plusnr]["CRange"])) then
				if (AAP.QuestList[AAP.ActiveZone][plusnr]["Qpart"]) then
					local aap_t1 = 0
					local aap_t2 = 0
					for AAP_index,AAP_value in pairs(AAP.QuestList[AAP.ActiveZone][plusnr]["Qpart"]) do
						for AAP_index2,AAP_value2 in pairs(AAP.QuestList[AAP.ActiveZone][plusnr]["Qpart"][AAP_index]) do
							aap_t1 = aap_t1 + 1
							if (IsQuestFlaggedCompleted(AAP_index) == true) then
								AAP.CompletedQs[AAP_index] = true
							end
							if (AAP.CompletedQs[AAP_index]) then
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
						AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
						AAP_Reset = 0
						AAP.BookingList["AAP.SetQPTT"] = 1
					end
				elseif (AAP.QuestList[AAP.ActiveZone][plusnr]["PickUp"]) then
					local aap_t1 = 0
					local aap_t2 = 0
					for AAP_index,AAP_value in pairs(AAP.QuestList[AAP.ActiveZone][plusnr]["PickUp"]) do
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
					if (aap_t1 == aap_t2) then
						QNumberLocal = 0
						AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
						AAP_Reset = 0
						AAP.BookingList["AAP.SetQPTT"] = 1
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
function AAP.GetFP(AAP_TrigFP)
	if (IsQuestFlaggedCompleted(AAP.ActiveStuff["FlightPath"]) == true) then
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
	elseif (AAP_TrigFP == "Trigger") then
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
	else
		AAP.BookingList["AAP.SetQPTT"] = 1
	end
	if (AAP_Reset == 0) then
		AAP_Reset = 1
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP.SetButton(AAP_T_FS, AAP_T_ars)
	if (AAP.ActiveStuff and AAP.ActiveStuff["Button"] and AAP_T_FS and AAP_T_ars) then
		if (not InCombatLockdown()) then
			for AAP_index,AAP_value in pairs(AAP.ActiveStuff["Button"]) do
				if (AAP.ActiveStuff["UseHS"]) then
					local CL_Items, clt2, clt3, clt4, clt5, clt6, clt7, clt8, clt9, CL_ItemTex = GetItemInfo(AAP_value)
					AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Buttonptex"]:SetTexture(CL_ItemTex)
					AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Buttonntex"]:SetTexture(CL_ItemTex)
					AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Button"]:SetNormalTexture(CL_ItemTex)
					--AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Button"]:SetText(string.sub(CL_Items, 1, 1))
					AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Button"]:SetText("")
					AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Button"]:SetAttribute("type", "item");
					AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Button"]:SetAttribute("item", "item:"..AAP_value);
					AAP.QuestList2["BF"..tonumber(AAP_T_ars)]:Show()
						local Topz = AAP1[AAP.Realm][AAP.Name]["Settings"]["left"]
						local Topz2 = AAP1[AAP.Realm][AAP.Name]["Settings"]["top"]
						AAP.QuestList20:SetPoint("TOPLEFT", UIParent, "TOPLEFT", Topz, Topz2)
						AAP.QuestList2["BF"..tonumber(AAP_T_ars)]:SetPoint("BOTTOMLEFT", AAP.QuestList21, "BOTTOMLEFT",0,-((AAP_T_ars * 38)+AAP_T_ars))
						local isFound, macroSlot = AAP.MacroFinder()
						if isFound and macroSlot then
							if (AAP.ActiveZone and AAP.ActiveStuff and AAP.ActiveStuff["SpecialDubbleMacro"]) then
								if (not AAP_DubbleMacro[1]) then
									AAP_DubbleMacro[1] = CL_Items
								elseif (AAP_DubbleMacro and AAP_DubbleMacro[1] and not AAP_DubbleMacro[2]) then
									AAP_DubbleMacro[2] = CL_Items
								end
							else
								AAP_DubbleMacro = nil
								AAP_DubbleMacro = {}
							end
							AAP.MacroUpdater(macroSlot, CL_Items)
						end
				elseif (AAP.ActiveStuff["UseDalaHS"]) then
					local bag, slot = AAP.FindQitemFunc(65274)
					local eqidsd = GetInventoryItemID("player", 15)
					local sta11, sta12 = GetItemCooldown(65274)
					if (sta11 and sta11 > 0) then
						bag = "nope"
					end
					if (bag ~= "nope" or eqidsd == 65274) then

						local CL_Items, clt2, clt3, clt4, clt5, clt6, clt7, clt8, clt9, CL_ItemTex = GetItemInfo(65274)
						AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Buttonptex"]:SetTexture(CL_ItemTex)
						AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Buttonntex"]:SetTexture(CL_ItemTex)
						AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Button"]:SetNormalTexture(CL_ItemTex)
						--AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Button"]:SetText(string.sub(CL_Items, 1, 1))
						AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Button"]:SetText("")
						AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Button"]:SetAttribute("type","macro");
						local isFound, macroSlot = AAP.MacroFinder()
						if isFound and macroSlot then
							if (AAP.ActiveZone and AAP.ActiveStuff and AAP.ActiveStuff["SpecialDubbleMacro"]) then
								if (not AAP_DubbleMacro[1]) then
									AAP_DubbleMacro[1] = CL_Items
								elseif (AAP_DubbleMacro and AAP_DubbleMacro[1] and not AAP_DubbleMacro[2]) then
									AAP_DubbleMacro[2] = CL_Items
								end
							else
								AAP_DubbleMacro = nil
								AAP_DubbleMacro = {}
							end
							AAP.MacroUpdater(macroSlot, CL_Items, 65274)
						end
						AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Button"]:SetAttribute("macro",macroSlot);
						AAP.QuestList2["BF"..tonumber(AAP_T_ars)]:Show()
						local Topz = AAP1[AAP.Realm][AAP.Name]["Settings"]["left"]
						local Topz2 = AAP1[AAP.Realm][AAP.Name]["Settings"]["top"]
						AAP.QuestList20:SetPoint("TOPLEFT", UIParent, "TOPLEFT", Topz, Topz2)
						AAP.QuestList2["BF"..tonumber(AAP_T_ars)]:SetPoint("BOTTOMLEFT", AAP.QuestList21, "BOTTOMLEFT",0,-((AAP_T_ars * 38)+AAP_T_ars))
					else
						local CL_Items, clt2, clt3, clt4, clt5, clt6, clt7, clt8, clt9, CL_ItemTex = GetItemInfo(AAP_value)
						AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Buttonptex"]:SetTexture(CL_ItemTex)
						AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Buttonntex"]:SetTexture(CL_ItemTex)
						AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Button"]:SetNormalTexture(CL_ItemTex)
						--AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Button"]:SetText(string.sub(CL_Items, 1, 1))
						AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Button"]:SetText("")
						AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Button"]:SetAttribute("type", "item");
						AAP.QuestList2["BF"..tonumber(AAP_T_ars)]["AAP_Button"]:SetAttribute("item", "item:"..AAP_value);
						AAP.QuestList2["BF"..tonumber(AAP_T_ars)]:Show()
						local Topz = AAP1[AAP.Realm][AAP.Name]["Settings"]["left"]
						local Topz2 = AAP1[AAP.Realm][AAP.Name]["Settings"]["top"]
						AAP.QuestList20:SetPoint("TOPLEFT", UIParent, "TOPLEFT", Topz, Topz2)
						AAP.QuestList2["BF"..tonumber(AAP_T_ars)]:SetPoint("BOTTOMLEFT", AAP.QuestList21, "BOTTOMLEFT",0,-((AAP_T_ars * 38)+AAP_T_ars))
						local isFound, macroSlot = AAP.MacroFinder()
						if isFound and macroSlot then
							if (AAP.ActiveZone and AAP.ActiveStuff and AAP.ActiveStuff["SpecialDubbleMacro"]) then
								if (not AAP_DubbleMacro[1]) then
									AAP_DubbleMacro[1] = CL_Items
								elseif (AAP_DubbleMacro and AAP_DubbleMacro[1] and not AAP_DubbleMacro[2]) then
									AAP_DubbleMacro[2] = CL_Items
								end
							else
								AAP_DubbleMacro = nil
								AAP_DubbleMacro = {}
							end
							AAP.MacroUpdater(macroSlot, CL_Items)
						end
					end
				elseif (tonumber(AAP_T_FS) == tonumber(AAP_T_ars)) then
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
						local Topz = AAP1[AAP.Realm][AAP.Name]["Settings"]["left"]
						local Topz2 = AAP1[AAP.Realm][AAP.Name]["Settings"]["top"]
						AAP.QuestList20:SetPoint("TOPLEFT", UIParent, "TOPLEFT", Topz, Topz2)
						AAP.QuestList2["BF"..AAP_T_FS]:SetPoint("BOTTOMLEFT", AAP.QuestList21, "BOTTOMLEFT",0,-((AAP_T_ars * 38)+AAP_T_ars))
						local isFound, macroSlot = AAP.MacroFinder()
						if isFound and macroSlot then
							if (AAP.ActiveZone and AAP.ActiveStuff and AAP.ActiveStuff["SpecialDubbleMacro"]) then
								if (not AAP_DubbleMacro[1]) then
									AAP_DubbleMacro[1] = CL_Items
								elseif (AAP_DubbleMacro and AAP_DubbleMacro[1] and not AAP_DubbleMacro[2]) then
									AAP_DubbleMacro[2] = CL_Items
								end
							else
								AAP_DubbleMacro = nil
								AAP_DubbleMacro = {}
							end
							AAP.MacroUpdater(macroSlot, CL_Items)
						end
					end
				end
			end
		end
	end
end
function AAP.CountAlly()
	local Countz = 0
	if (IsQuestFlaggedCompleted(51968) == true) then
		Countz = Countz + 1
	end
	if (IsQuestFlaggedCompleted(51969) == true) then
		Countz = Countz + 1
	end
	if (IsQuestFlaggedCompleted(51967) == true) then
		Countz = Countz + 1
	end
	return Countz
end
function AAP.CountHorde()
	local Countz = 0
	if (IsQuestFlaggedCompleted(51244) == true) then
		Countz = Countz + 1
	end
	if (IsQuestFlaggedCompleted(50702) == true) then
		Countz = Countz + 1
	end
	if (IsQuestFlaggedCompleted(48400) == true) then
		Countz = Countz + 1
	end
	return Countz
end
function AAP.TestHordeCampaign()
	local ResName, NumCurr = GetCurrencyInfo(1560)
	if ((UnitLevel("player") > 117) and (not AAP1[AAP.Realm][AAP.Name]["Zone862Camp"])) then
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
		if ((AAP1[AAP.Realm][AAP.Name]["AAP_DoWarCampaign"] == 1)) then
			if ((AAP_TTTT == 862) or (AAP_TTTT == 863) or (AAP_TTTT == 864)) then
				AAP.ActiveZone = "862-4"
			elseif (AAP_TTTT == 895) or (AAP_TTTT == 896) or (AAP_TTTT == 942) then
				AAP.ActiveZone = AAP_TTTT
			else
				AAP.ActiveZone = AAP_TTTT
			end
		end
	end
end
function AAP.TestAllyCampaign()
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
	if ((AAP_testads == 1 or IsQuestFlaggedCompleted(53332)) and AAP.CountAlly() == 0 and (AAP_TTTT == 895)) then
		AAP_TTTS = 1
		if ((AAP_ActiveQuests[51308] or IsQuestFlaggedCompleted(51308)) and (not IsQuestFlaggedCompleted(51968))) then
			AAP.ActiveZone = "A895-4-1"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		elseif ((AAP_ActiveQuests[51283] or IsQuestFlaggedCompleted(51283)) and (not IsQuestFlaggedCompleted(51969))) then
			AAP.ActiveZone = "A895-4-2"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		elseif ((AAP_ActiveQuests[51088] or IsQuestFlaggedCompleted(51088)) and (not IsQuestFlaggedCompleted(51967))) then
			AAP.ActiveZone = "A895-4-3"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		else
			AAP.ActiveZone = "A895-4"
		end
	end
	if (AAP_TTTS == 0 and (AAP_ActiveQuests[53052] or IsQuestFlaggedCompleted(53052)) and (AAP_TTTT == 895) and AAP.CountAlly() == 1) then
		if ((AAP_ActiveQuests[51308] or IsQuestFlaggedCompleted(51308)) and (not IsQuestFlaggedCompleted(51968))) then
			AAP.ActiveZone = "A895-4-1"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		elseif ((AAP_ActiveQuests[51283] or IsQuestFlaggedCompleted(51283)) and (not IsQuestFlaggedCompleted(51969))) then
			AAP.ActiveZone = "A895-4-2"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		elseif ((AAP_ActiveQuests[51088] or IsQuestFlaggedCompleted(51088)) and (not IsQuestFlaggedCompleted(51967))) then
			AAP.ActiveZone = "A895-4-3"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		else
			AAP.ActiveZone = "A895-4-4"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		end
	end
	if ((AAP_ActiveQuests[53055] or IsQuestFlaggedCompleted(53055)) and (AAP_TTTT == 895) and (AAP.CountAlly() == 2) and (UnitLevel("player") > 117)) then
		if ((AAP_ActiveQuests[51308] or IsQuestFlaggedCompleted(51308)) and (not IsQuestFlaggedCompleted(51968))) then
			AAP.ActiveZone = "A895-4-1"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		elseif ((AAP_ActiveQuests[51283] or IsQuestFlaggedCompleted(51283)) and (not IsQuestFlaggedCompleted(51969))) then
			AAP.ActiveZone = "A895-4-2"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		elseif ((AAP_ActiveQuests[51088] or IsQuestFlaggedCompleted(51088)) and (not IsQuestFlaggedCompleted(51967))) then
			AAP.ActiveZone = "A895-4-3"
			if (AAP_Reset == 0) then
				AAP_Reset = 1
				AAP_UPDQListV = AAP_UPDQListV2
			end
		else
			AAP.ActiveZone = "A895-4-5"
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
	if ((AAP_Getthru == 1 or IsQuestFlaggedCompleted(51715) or AAP_testads2 == 1) and (AAP_TTTT == 895) and not IsQuestFlaggedCompleted(53074)) then
		AAP.ActiveZone = "A895-4-10"
		if (AAP_Reset == 0) then
			AAP_Reset = 1
			AAP_UPDQListV = AAP_UPDQListV2
		end
	end
end
function AAP.SetQPTT()
	if (QNumberLocal ~= AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] and AAP.ActiveStuff and AAP.ActiveStuff["TT"] and AAP.ActiveStuff["TT"]["x"]) then
		AAP_ArrowActive = 1
		AAP_ArrowActive_X = AAP.ActiveStuff["TT"]["x"]
		AAP_ArrowActive_Y = AAP.ActiveStuff["TT"]["y"]
		QNumberLocal = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]
	end
end
function AAP.ChangeZone()
	if (UnitLevel("player") == 120) then
		for AAP_index,AAP_value in pairs(AAP_BonusObj) do
			if (not AAP.CompletedQs[AAP_index]) then
				AAP.CompletedQs[AAP_index] = true
			end
		end
	end
	local AAPActiveZoneOld = AAP.ActiveZone
	local factionz = UnitFactionGroup("player")
	AAP.ActiveZone = C_Map.GetBestMapForUnit("player")
	if (AAP.ActiveZone == 85) then
		AAP.ActiveZone = 86
	end
	if (AAP.ActiveZone == 1161) then
		AAP.ActiveZone = 895
	end
	if (AAP.ActiveZone == 1171) then
		AAP.ActiveZone = 895
	end
	if (AAP.ActiveZone == 1172) then
		AAP.ActiveZone = 895
	end
	if (AAP.ActiveZone == 1165) then
		AAP.ActiveZone = 862
	end
	if (AAP.ActiveZone == 1164) then
		AAP.ActiveZone = 862
	end
	if (AAP.ActiveZone == 1163) then
		AAP.ActiveZone = 862
	end
	if (AAP.ActiveZone == 1173) then
		AAP.ActiveZone = 862
	end
	if (AAP.ActiveZone == 1174) then
		AAP.ActiveZone = 862
	end
	if (AAP.ActiveZone == 1176) then
		AAP.ActiveZone = 862
	end
	if (AAP.ActiveZone == 1177) then
		AAP.ActiveZone = 862
	end
	if (AAP.ActiveZone == 1167) then
		AAP.ActiveZone = 862
	end
	if (AAP.ActiveZone == 1166) then
		AAP.ActiveZone = 862
	end
	if (AAP.ActiveZone == 1169) then
		AAP.ActiveZone = 876
	end
	if (AAP.ActiveZone == 1179) then
		AAP.ActiveZone = 942
	end
	if (AAP.ActiveZone == 1180) then
		AAP.ActiveZone = 942
	end
	if (AAP.ActiveZone == 1181) then
		AAP.ActiveZone = 942
	end
	if (AAP.ActiveZone == 1182) then
		AAP.ActiveZone = 942
	end

	if (AAP.ActiveZone) then
		if (factionz == "Alliance") then
			AAP.ActiveZone = "A"..AAP.ActiveZone
			if (AAP_Test_Var == 1) then
				AAP1[AAP.Realm][AAP.Name]["Settings"]["AutoAccept"] = 1
				AAP1[AAP.Realm][AAP.Name]["Settings"]["AutoHandIn"] = 0
			elseif (AAP.ActiveZone == "A862") then
			elseif (AAP.ActiveZone == "A942") then
			elseif (AAP.ActiveZone == "A896") then
			elseif ((AAP_ActiveQuests[47961] or IsQuestFlaggedCompleted(47961) == true) and not IsQuestFlaggedCompleted(48622)) then
				AAP.ActiveZone = "A895-1"
			elseif ((AAP_ActiveQuests[47962] or IsQuestFlaggedCompleted(47962) == true) and not IsQuestFlaggedCompleted(51490)) then
				AAP.ActiveZone = "A895-2"
			elseif ((AAP.ActiveZone == "A895") and (AAP1[AAP.Realm][AAP.Name]["Zone895D"] == 0) and (AAP_ActiveQuests[47960] or IsQuestFlaggedCompleted(47960) == true)) then
				AAP.ActiveZone = "A895-3"
			elseif ((AAP.ActiveZone == "A895") and (AAP1[AAP.Realm][AAP.Name]["Zone895D"] == 1) and (AAP.ActiveZonePick == 3)) then
				AAP.ActiveZone = "A895"
				--AAP.TestAllyCampaign()
			elseif ((AAP.ActiveZonePick > 0) and (AAP.ActiveZone == "A895")) then
				AAP.ActiveZone = "A895-"..AAP.ActiveZonePick
			elseif ((AAP.ActiveZone == "A895") and (AAP1[AAP.Realm][AAP.Name]["Zone895D"] == 1)) then
				AAP.ActiveZone = "A895"
				--AAP.TestAllyCampaign()
			else
				if (AAP.QuestList[AAP.ActiveZone]) then
				else
					AAP.ActiveZone = 1233123991
				end
				--AAP.TestAllyCampaign()

			end
		else
		-- Horde
			if (AAP.ActiveZone == 1009) then
				AAP.ActiveZone = 864
			end
			if (AAP1[AAP.Realm][AAP.Name]["AAP_DoWarCampaign"] == 1 and (not AAP1[AAP.Realm][AAP.Name]["Zone862Camp"])) then
				AAP.TestHordeCampaign()
			elseif ((AAP.ActiveZone == 86) and ((AAP_ActiveQuests[47439]) or (AAP_ActiveQuests[50963]) or (AAP_ActiveQuests[50617]) or (AAP_ActiveQuests[50808]))) then
				AAP.ActiveZone = "86-1"
			elseif ((AAP.ActiveZone == 627) and ((AAP_ActiveQuests[47439]) or (AAP_ActiveQuests[50963]) or (AAP_ActiveQuests[50617]) or (AAP_ActiveQuests[50808]))) then
				AAP.ActiveZone = "627-1"
			elseif (AAP.ActiveZone == 864) then
			elseif (AAP.ActiveZone == 863) then
			elseif ((AAP.ActiveZonePick == 1) or (AAP.ActiveZonePick == 2)) and (AAP.ActiveZone == 862) then
				AAP.ActiveZone = "862-"..AAP.ActiveZonePick
			elseif ((AAP.ActiveZone == 862) and (AAP1[AAP.Realm][AAP.Name]["Zone862D"] == 0) and (AAP_ActiveQuests[47514] or IsQuestFlaggedCompleted(47514) == true)) then
				AAP.ActiveZone = "862-3"
			elseif ((AAP.ActiveZone == 86) and ((AAP_ActiveQuests[53372]) or IsQuestFlaggedCompleted(53372))) then
				AAP.ActiveZone = "86-2"
			elseif (AAP.ActiveZone == 862 and AAP1[AAP.Realm][AAP.Name]["Zone862D"] == 1) then
				AAP.ActiveZone = 862
				AAP.TestHordeCampaign()
			elseif (AAP.QuestList[AAP.ActiveZone]) then
				AAP.TestHordeCampaign()
			else
				AAP.ActiveZone = 1233123991
			end
--print(AAP.ActiveZone)
		end
		if (AAPActiveZoneOld ~= AAP.ActiveZone or AAP.ActiveZone == 1233123991) then
			AAP_ArrowActive = 0
			AAP_ArrowActive_X = 0
			AAP_ArrowActive_Y = 0
		end
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
	end
end
function AAP.MissionProgress()
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
		AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
		QNumberLocal = 0
		AAP_Reset = 0
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP.SetQPTT"] = 1
	end
end
function AAP.TrimPlayerServer(CLPName)
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
AAP_ParserEventFrame:RegisterEvent ("UNIT_SPELLCAST_START")
AAP_ParserEventFrame:RegisterEvent ("TAXIMAP_CLOSED")
AAP_ParserEventFrame:RegisterEvent ("TAXIMAP_OPENED")
AAP_ParserEventFrame:RegisterEvent ("UI_INFO_MESSAGE");
AAP_ParserEventFrame:RegisterEvent ("GOSSIP_CLOSED")
AAP_ParserEventFrame:RegisterEvent ("GOSSIP_SHOW")
AAP_ParserEventFrame:RegisterEvent ("ITEM_PUSH")
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
		if (AAP.ActiveStuff and AAP.ActiveStuff["BuyMerchant"]) then
			AAP_ArrowEventAFkTimer2412:Play()
		end
	end
	if (event=="UNIT_AURA" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if(arg1 == "player") then
			if (AAP.ActiveStuff and AAP.ActiveStuff["ExtraLine"]) then
				for i=1,40 do
					local name, _, _, _, _, _, _, _, _, spellzid = UnitBuff("player",i)
					if (spellzid and (AAP.ActiveStuff["ExtraLine"] == 2) and (spellzid == 272122)) then
						AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
						QNumberLocal = 0
						AAP_Reset = 0
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
						AAP.BookingList["AAP.SetQPTT"] = 1
					elseif (spellzid and (AAP.ActiveStuff["ExtraLine"] == 9) and (spellzid == 272119)) then
						AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
						QNumberLocal = 0
						AAP_Reset = 0
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
						AAP.BookingList["AAP.SetQPTT"] = 1
					elseif (spellzid and (AAP.ActiveStuff["ExtraLine"] == 24) and (spellzid == 273779)) then
						AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
						QNumberLocal = 0
						AAP_Reset = 0
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
						AAP.BookingList["AAP.SetQPTT"] = 1
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
		if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
			if (AAP.ActiveStuff and AAP.ActiveStuff["CheckMission"]) then
				AAP.MissionProgress()
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
			AAP.GroupListingFunc(tonumber(arg2), AAP.TrimPlayerServer(arg4))
		end
	end
	if (event=="SCENARIO_POI_UPDATE" and AAP_DisableAddon == 0) then
		AAP_UPDQListV = AAP_UPDQListV2
	end
	if (event=="ADDON_LOADED" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if (arg1 == "Azeroth Auto Pilot") then
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		end
	end
	if (event=="ZONE_CHANGED" and AAP_DisableAddon == 0) then
		AAP.BookingList["AAP_ChangeZone"] = "AAP_ChangeZone"
		AAP_UPDQListV = AAP_UPDQListV2
	end
	if (event=="ZONE_CHANGED_NEW_AREA" and AAP_DisableAddon == 0) then
		AAP.BookingList["AAP_ChangeZone"] = "AAP_ChangeZone"
		AAP_UPDQListV = AAP_UPDQListV2
	end
	if (event=="QUEST_ACCEPTED" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if (arg2 and 48516 == arg2) then
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			AAP_Reset = 0
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		end
		AAP.BookingList["AAP_Plus"] = "AAP_Plus"
		AAP.BookingList["AAP_ChangeZone"] = "AAP_ChangeZone"
		if (UnitInParty("player") and (AAP1[AAP.Realm][AAP.Name]["Settings"]["AutoShareQ"] == 1) and (not AAP_BlockShared[arg2])) then
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
		if (AAP1[AAP.Realm][AAP.Name]["Settings"]["AutoHandIn"] == 1 and not IsControlKeyDown()) then
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
			if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
				if (AAP.ActiveStuff and AAP.ActiveStuff["GroupTask"] and AAP.ActiveStuff["GroupTask"] == arg1 and AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] and AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] == 1) then
					AAP1[AAP.Realm][AAP.Name]["WantedQuestList"][AAP.ActiveStuff["GroupTask"]] = 0
					AAP_Reset = 0
					AAP.BookingList["AAP_Plus"] = "AAP_Plus"
				end
			end
		end
	end
	if (event=="GOSSIP_CLOSED" and AAP_DisableAddon == 0) then
		AAP_GossipOpen = 0
		AAP_SpecialGossipO = 1
	end
	if (event=="GOSSIP_SHOW" and AAP_DisableAddon == 0) then
		if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
			local AAPDenied = 0
			if (AAP.ActiveStuff and AAP.ActiveStuff["DenyNPC"]) then
				if (UnitGUID("target") and UnitName("target")) then
					local guid, name = UnitGUID("target"), UnitName("target")
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
					if (npc_id and name) then
						if (tonumber(npc_id) == AAP.ActiveStuff["DenyNPC"]) then
							AAPDenied = 1
						end
					end
				end
			end
			if (AAPDenied == 1) then
				CloseGossip()
				print("AAP: Not Yet!")
			elseif (AAP.ActiveStuff and AAP.ActiveStuff["Qpart"] and AAP1[AAP.Realm][AAP.Name]["Settings"]["AutoGossip"] == 1) then
				if (AAP.ActiveStuff["Gossip"] and not IsControlKeyDown()) then
					if (AAP.ActiveStuff["Gossip"] == 47581) then
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
					elseif (AAP.ActiveStuff["Gossip"] == 99) then
						local guid = UnitGUID("target")
						local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
						if (npc_id and tonumber(npc_id) == 133538) then
							SelectGossipOption(1)
							AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
							AAP_Reset = 0
							AAP.BookingList["AAP_Plus"] = "AAP_Plus"
						end
					elseif (AAP.ActiveStuff["Gossip"] == 999 and UnitGUID("target") and UnitName("target")) then
						local guid, name = UnitGUID("target"), UnitName("target")
						local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
						if (tonumber(npc_id) == 137645) then
							AAP_GossipOpen = 0
							SelectGossipOption(1)
							AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
							AAP_Reset = 0
							AAP.BookingList["AAP_Plus"] = "AAP_Plus"
						end
					elseif (AAP.ActiveStuff["Gossip"] == 98) then
					elseif (AAP.ActiveStuff["Gossip"] == 101) then
						SelectGossipOption(1)
						QNumberLocal = 0
						AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
						AAP_Reset = 0
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
						AAP.BookingList["AAP.SetQPTT"] = 1
					elseif (AAP.ActiveStuff["Gossip"] == 102) then
						SelectGossipOption(1)
						QNumberLocal = 0
						AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
						AAP_Reset = 0
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
						AAP.BookingList["AAP.SetQPTT"] = 1
					else
						AAP_GossipOpen = 0
						SelectGossipOption(AAP.ActiveStuff["Gossip"])
					end
				end
			elseif (AAP.ActiveStuff and AAP.ActiveStuff["QpartPart"]) then
				if (AAP.ActiveStuff["Gossip"] and not IsControlKeyDown() and AAP1[AAP.Realm][AAP.Name]["Settings"]["AutoGossip"] == 1) then
					SelectGossipOption(AAP.ActiveStuff["Gossip"])
				end
			elseif (AAP.ActiveStuff and AAP.ActiveStuff["CRange"]) then
				if (AAP.ActiveStuff["Gossip"] and not IsControlKeyDown() and AAP1[AAP.Realm][AAP.Name]["Settings"]["AutoGossip"] == 1) then
					SelectGossipOption(AAP.ActiveStuff["Gossip"])
				elseif (AAP.ActiveStuff["GossipP"] and not IsControlKeyDown()) then
					SelectGossipOption(AAP.ActiveStuff["GossipP"])
					AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
					AAP_Reset = 0
					AAP.BookingList["AAP_Plus"] = "AAP_Plus"
					AAP_SpecialQ = 0
				end
			elseif (AAP.ActiveStuff and AAP.ActiveStuff["Special"] and not IsControlKeyDown()) then
					AAP_GossipOpen = 0
					SelectGossipOption(1)
					AAP_SpecialQ = AAP_SpecialQ + 1
					if (AAP_SpecialQ == AAP.ActiveStuff["Special"]) then
						AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
						AAP_Reset = 0
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
						AAP_SpecialQ = 0
					end
			else
				AAP_GossipOpen = 1
			end
		end
	end
	if (event=="BAG_UPDATE" and AAP_DisableAddon == 0) then
		if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
			if (AAP.ActiveStuff and AAP.ActiveStuff["SearchBags"]) then
				AAP_UPDQListV = AAP_UPDQListV2
			end
		end
	end
	if (event=="ITEM_PUSH" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if (arg2) then
			if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
				if (AAP.ActiveStuff and AAP.ActiveStuff["ExtraLine"]) then
					if (133848 == arg2 and AAP.ActiveStuff["ExtraLine"] == 12) then
						AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
						AAP_Reset = 0
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
					end
					if (1500932 == arg2 and AAP.ActiveStuff["ExtraLine"] == 13) then
						AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
						AAP_Reset = 0
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
					end
					if (454060 == arg2 and AAP.ActiveStuff["ExtraLine"] == 14) then
						AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
						AAP_Reset = 0
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
					end
					if (134382 == arg2 and AAP.ActiveStuff["ExtraLine"] == 16) then
						AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
						AAP_Reset = 0
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
					end
				end
			end
			if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
				if (AAP.ActiveStuff and AAP.ActiveStuff["SearchBags"]) then
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
		if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
			if (AAP.ActiveStuff and AAP.ActiveStuff["SetHS"]) then
				AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
				AAP_Reset = 0
				AAP.BookingList["AAP_Plus"] = "AAP_Plus"
				AAP_UPDQListV = AAP_UPDQListV2
			end
		end
	end
	if (event=="CHAT_MSG_MONSTER_SAY" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if (arg5 and arg5 == UnitName("player") and AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] and AAP.ActiveStuff and AAP.ActiveStuff["SayTriggerStartH"]) then
			QNumberLocal = 0
			AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
			AAP_Reset = 0
			AAP.BookingList["AAP_Plus"] = "AAP_Plus"
			AAP.BookingList["AAP.SetQPTT"] = 1
		end
		if (UnitGUID("target")) then
			local guid = UnitGUID("target")
			local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
			if (npc_id and tonumber(npc_id) == 126490) then
				if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
					if (AAP.ActiveStuff) then
						if (AAP.ActiveStuff["ETASpecial"]) then
							if (AAP_AfkTable and AAP_AfkTable[AAP.ActiveZone] and AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]) then
							else
								if (not AAP_AfkTable[AAP.ActiveZone]) then
									AAP_AfkTable[AAP.ActiveZone] = {}
								end
								AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]] = 1
								AAP.AFK_Timer2(AAP.ActiveStuff["ETASpecial"])
							end
						end
					end
				end
			end
		end
		if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
			if (AAP.ActiveStuff and AAP.ActiveStuff["AFKTimer"]) then
				if (AAP.ActiveStuff["AFKTimer"]["Trigger"] and AAP.ActiveStuff["AFKTimer"]["Time"] and AAP.ActiveStuff["AFKTimer"]["Trigger"] == "CHAT_MSG_MONSTER_SAY") then
					if (AAP_AfkTable and AAP_AfkTable[AAP.ActiveZone] and AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]) then
					else
						if (not AAP_AfkTable[AAP.ActiveZone]) then
							AAP_AfkTable[AAP.ActiveZone] = {}
						end
						AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]] = 1
						AAP.AFK_Timer(AAP.ActiveStuff["AFKTimer"]["Time"])
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

		if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] and not InCombatLockdown() and not IsControlKeyDown()) then
			if (AAP.ActiveStuff and AAP.ActiveStuff["UseFlightPath"]) then
				if (AAP.ActiveStuff["ETA"]) then
					if (AAP_AfkTable and AAP_AfkTable[AAP.ActiveZone] and AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]) then
					else
						if (not AAP_AfkTable[AAP.ActiveZone]) then
							AAP_AfkTable[AAP.ActiveZone] = {}
						end
						AAP_AfkTable[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]] = 1
						AAP.AFK_Timer(AAP.ActiveStuff["ETA"])
					end
				end
				local Nodetotake = AAP.TaxiSearchFunc(AAP.ActiveStuff["PosX"], AAP.ActiveStuff["PosY"])
				TakeTaxiNode(Nodetotake)
				AAP_TaxiVar = 0
				AAP_TaxiTimer:Play()
			end
		end
	end
	if (event=="UNIT_SPELLCAST_START" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if (arg1 == "player") then
			if (arg3 and AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
				if (arg3 == 248808 or arg3 == 249108 or arg3 == 249110) then
					AAP.AFK_Timer(AAP.ActiveStuff["GossipETA"])
				end
				if (AAP.ActiveStuff and AAP.ActiveStuff["ButtonSpellId"] and "A" == "B") then
					for AAP_index,AAP_value in pairs(AAP.ActiveStuff["ButtonSpellId"]) do
						if (arg3 == AAP_index) then
							local start, duration = GetSpellCooldown(AAP_index)
							AAP.QuestList2["BF"..AAP.NamedBookedFS[AAP_value]]["AAP_ButtonCD"]:SetCooldown(GetTime(), AAP.ActiveStuff["ButtonCooldown"][AAP_index])
							if (not AAP_ButtonCDCounter[99]) then
								AAP_ButtonCDCounter[99] = {}
							end
							AAP_ButtonCDCounter[99][AAP.NamedBookedFS[AAP_value]] = AAP.ActiveStuff["ButtonCooldown"][AAP_index]
						end
					end
				end
			end
		end
		if (arg1 == "player" and arg3 == 89158) then
			AAP_EquipGearTimer:Play()
		end
		if ((arg1 == "player") and (arg3 == 8690)) then
			if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
				if (AAP.ActiveStuff and AAP.ActiveStuff["UseHS"]) then
					if (AAP.ActiveStuff["HSSteps"]) then
						AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + AAP.ActiveStuff["HSSteps"]
						AAP_Reset = 0
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
						AAP_UPDQListV = AAP_UPDQListV2
					else
						AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
						AAP_Reset = 0
						AAP.BookingList["AAP_Plus"] = "AAP_Plus"
						AAP_UPDQListV = AAP_UPDQListV2
					end
				end
			end
		end
		if ((arg1 == "player") and ((arg3 == 89157) or (arg3 == 89158))) then
			if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
				if (AAP.ActiveStuff and AAP.ActiveStuff["UseDalaHS"]) then
					AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] = AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone] + 1
					AAP_Reset = 0
					AAP.BookingList["AAP_Plus"] = "AAP_Plus"
					AAP_UPDQListV = AAP_UPDQListV2
				end
			end
		end
	end
end)











