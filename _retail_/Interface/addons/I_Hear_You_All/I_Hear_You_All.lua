local sounds = {
	["CHAT_MSG_PARTY"] = "Interface\\AddOns\\I_Hear_You_All\\party.ogg", MASTER,
	["CHAT_MSG_PARTY_LEADER"] = "Interface\\AddOns\\I_Hear_You_All\\party.ogg", MASTER,
	["CHAT_MSG_OFFICER"] = "Interface\\AddOns\\I_Hear_You_All\\guild.ogg", MASTER,
	["CHAT_MSG_GUILD"] = "Interface\\AddOns\\I_Hear_You_All\\guild.ogg", MASTER,
	["CHAT_MSG_WHISPER"] = "Interface\\AddOns\\I_Hear_You_All\\whisper.ogg", MASTER,
	["CHAT_MSG_BN_WHISPER"] = "Interface\\AddOns\\I_Hear_You_All\\whisper.ogg", MASTER,
	["CHAT_MSG_RAID"] = "Interface\\AddOns\\I_Hear_You_All\\party.ogg", MASTER,
	["CHAT_MSG_RAID_LEADER"] = "Interface\\AddOns\\I_Hear_You_All\\party.ogg", MASTER,
        ["CHAT_MSG_INSTANCE_CHAT"] = "Interface\\AddOns\\I_Hear_You_All\\party.ogg", MASTER,
	["CHAT_MSG_INSTANCE_CHAT_LEADER"] = "Interface\\AddOns\\I_Hear_You_All\\party.ogg", MASTER,
}

local f = CreateFrame("Frame")
f:RegisterEvent("CHAT_MSG_RAID_LEADER")
f:RegisterEvent("CHAT_MSG_RAID")
f:RegisterEvent("CHAT_MSG_PARTY")
f:RegisterEvent("CHAT_MSG_WHISPER")
f:RegisterEvent("CHAT_MSG_OFFICER")
f:RegisterEvent("CHAT_MSG_GUILD")
f:RegisterEvent("CHAT_MSG_PARTY_LEADER")
f:RegisterEvent("CHAT_MSG_BN_WHISPER")
f:RegisterEvent("CHAT_MSG_INSTANCE_CHAT")
f:RegisterEvent("CHAT_MSG_INSTANCE_CHAT_LEADER")
f:SetScript("OnEvent", function(self, event)
	PlaySoundFile(sounds[event])
end)
