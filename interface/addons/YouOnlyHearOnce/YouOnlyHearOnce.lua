

local addonName = ...
local f = CreateFrame ("frame")
f.db = {}

f:RegisterEvent ("ADDON_LOADED")
f:RegisterEvent ("TALKINGHEAD_REQUESTED")

f:SetScript ("OnEvent", function (self, event, arg1)
	if (event == "TALKINGHEAD_REQUESTED") then
		local displayInfo, cameraID, vo, duration, lineNumber, numLines, name, text, isNewTalkingHead = C_TalkingHead.GetCurrentLineInfo()
		if (f.db.already_saw [vo]) then
			C_Timer.After (1, TalkingHeadFrame_CloseImmediately)
		else
			f.db.already_saw [vo] = true
		end
	elseif (event == "ADDON_LOADED" and arg1 == addonName) then
		TalkingHeadRemovalDB = TalkingHeadRemovalDB or {already_saw = {}}
		if (not TalkingHeadRemovalDB.already_saw) then
			TalkingHeadRemovalDB.already_saw = {}
		end
		f.db = TalkingHeadRemovalDB
	end
end)
