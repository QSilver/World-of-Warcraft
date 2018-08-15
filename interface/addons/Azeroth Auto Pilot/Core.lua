AAP_TCount = 0
AAP_Test_Var = 0
if (AAP_Test_Var == 1) then
	H3 = {
		[47514] = 47514,
	}
end
local AAP_OldSLot
AAP_5sec_thingy = 0
AAP_DubbleMacro = {}
AAP_Game_Ver, AAP_Game_Build, AAP_Game_Date, AAP_Game_tocversion = GetBuildInfo()
AAP_DisableAddon = 0
if (AAP_Game_tocversion < 80000) then
	print("Azeroth Auto Pilot: Will Load when BFA comes out.")
	AAP_DisableAddon = 1
else
	AAP_RegisterChat = C_ChatInfo.RegisterAddonMessagePrefix("AAPChat")
end
AAP_SettingsOpen = 0
AAP_CombatTestVar = 0
AAP = {}
AAP_BlockShared = {}
AAP_GossipOpen = 0
AAP_NPCList = {}
AAP_UPDQListV = -1
AAP_UPDQListV2 = 5
AAP_UPDPlus = 0
AAP_ArrowActive = 0
AAP_HorseBuffDur = 0
AAP_ArrowActive_X = 0
AAP_ArrowActive_Y = 0
AAP_SpecialGossipO = 1
AAP_QRewardPicked = 0
AAP_SendDelay = 0
AAP_ArrowActive_Distance = 0
AAP_ArrowActive_TrigDistance = 0
AAP_ArrowActive_Trigger_X = 0
AAP_ArrowActive_Trigger_Y = 0
AAP_ActiveZonePick = 0
AAP_TaxiVar = 0
AAP_TestSkipVar1 = 0
AAP_TestSkipVar2 = 0
AAP_TestSkipVar3 = 0
AAP_TestSkipVar4 = 0
AAP_AfkTimerVar = 0
AAP_AfkTimerVar2 = 0
AAP_GearIlvlList = {}
AAP_ButtonCDCounter = {}
AAP_AfkTable = {}
AAP_CompletedQs = GetQuestsCompleted()
AAP_img = "Interface\\AddOns\\Azeroth Auto Pilot\\img\\"
AAP_zones = "Interface\\AddOns\\Azeroth Auto Pilot\\Zones\\"

BINDING_HEADER_AzerothAutoPilot = "Azeroth Auto Pilot"
BINDING_NAME_AAP_MACRO = "Quest Item 1"

function AAP_UpdateILVLGear()
	AAP_GearIlvlList = nil
	AAP_GearIlvlList = {}
	for slots2 = 0,18 do
		local itemLink = GetInventoryItemLink("player", slots2)
		if (itemLink) then
			local _, _, _, _, _, _, _, _, SpotName = GetItemInfo(itemLink)
			local ilvl = GetDetailedItemLevelInfo(itemLink)
			if (SpotName and ilvl) then
				if (SpotName == "INVTYPE_WEAPONOFFHAND") then
					SpotName = "INVTYPE_WEAPON"
				end
				if (SpotName == "INVTYPE_WEAPONMAINHAND") then
					SpotName = "INVTYPE_WEAPON"
				end
				if (AAP_GearIlvlList[SpotName]) then
					if (AAP_GearIlvlList[SpotName] > ilvl) then
						AAP_GearIlvlList[SpotName] = ilvl
					end
				else
					AAP_GearIlvlList[SpotName] = ilvl
				end
			end
		end
	end
end
function AAP_ResetSettings()
	AAP1[AAP_Realm][AAP_Name]["Settings"] = {}
	AAP1[AAP_Realm][AAP_Name]["Settings"]["left"] = GetScreenWidth() / 1.6
	AAP1[AAP_Realm][AAP_Name]["Settings"]["top"] = -(GetScreenHeight() / 5)
	AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"] = UIParent:GetScale()
	AAP1[AAP_Realm][AAP_Name]["Settings"]["Lock"] = 0
	AAP1[AAP_Realm][AAP_Name]["Settings"]["Hide"] = 0
	AAP1[AAP_Realm][AAP_Name]["Settings"]["alpha"] = 1
	AAP1[AAP_Realm][AAP_Name]["Settings"]["arrowleft"] = GetScreenWidth() / 2.05
	AAP1[AAP_Realm][AAP_Name]["Settings"]["arrowtop"] = -(GetScreenHeight() / 1.5)
	AAP1[AAP_Realm][AAP_Name]["Settings"]["Hcampleft"] = GetScreenWidth() / 1.6
	AAP1[AAP_Realm][AAP_Name]["Settings"]["Hcamptop"] = -(GetScreenHeight() / 5)
	AAP1[AAP_Realm][AAP_Name]["Settings"]["CutScene"] = 1
	AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoAccept"] = 1
	AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandIn"] = 1
	AAP1[AAP_Realm][AAP_Name]["Settings"]["ChooseQuests"] = 0
	AAP1[AAP_Realm][AAP_Name]["Settings"]["ArrowScale"] = UIParent:GetScale()
	AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandInChoice"] = 0

	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["CutScene"] == 0) then
		AAP.OptionsFrame.CheckButton1:SetChecked(false)
	else
		AAP.OptionsFrame.CheckButton1:SetChecked(true)
	end
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoAccept"] == 0) then
		AAP.OptionsFrame.CheckButton2:SetChecked(false)
	else
		AAP.OptionsFrame.CheckButton2:SetChecked(true)
	end
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandIn"] == 0) then
		AAP.OptionsFrame.CheckButton3:SetChecked(false)
	else
		AAP.OptionsFrame.CheckButton3:SetChecked(true)
	end
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandInChoice"] == 0) then
		AAP.OptionsFrame.CheckButton5:SetChecked(false)
	else
		AAP.OptionsFrame.CheckButton5:SetChecked(true)
	end
	AAP.QuestList.ButtonParent:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"])
	AAP.QuestList.ListFrame:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"])
	AAP.QuestList21:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"])
	AAP.OptionsFrame.Slider1:SetValue(AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"] * 100)
	AAP.OptionsFrame.Slider2:SetValue(AAP1[AAP_Realm][AAP_Name]["Settings"]["ArrowScale"] * 100)


	AAP.QuestList.MainFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", AAP1[AAP_Realm][AAP_Name]["Settings"]["left"], AAP1[AAP_Realm][AAP_Name]["Settings"]["top"])
	AAP_ArrowFrame:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["ArrowScale"])
	AAP_ArrowFrameM:SetPoint("TOPLEFT", UIParent, "TOPLEFT", AAP1[AAP_Realm][AAP_Name]["Settings"]["arrowleft"], AAP1[AAP_Realm][AAP_Name]["Settings"]["arrowtop"])
end
function AAP_MacroFinder()
	local found = false
	local global, character = GetNumMacros()
	for i=1, global do
		local name = GetMacroInfo(i)
		if name == "AAP_MACRO" then
			found = true
			return true, i
		end
	end
	if not found then
		return false, nil
	end
end
function AAP_CreateMacro()
	if InCombatLockdown() then
		return
	end
	local global, character = GetNumMacros()
	local isFound, macroSlot = AAP_MacroFinder()
	local aap_hasSpace = global < MAX_ACCOUNT_MACROS
	if aap_hasSpace then 
		if not isFound and not InCombatLockdown() then
			CreateMacro("AAP_MACRO","INV_MISC_QUESTIONMARK","/script print('no button yet')",nil,nil)
		end
	else
		print("No global macro space. Please delete a macro to create space.")
	end
end
function AAP_SaveOldSlot()
	local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice = GetItemInfo(GetInventoryItemLink("player", 15))
	if (not AAP_OldSLot) then
		AAP_OldSLot = itemLink
	end
	EquipItemByName(65274)
end
function AAP_CheckSaveOldSlot()
	if (AAP_OldSLot) then
		local itemLink = GetInventoryItemLink("player", 15)
		if (AAP_OldSLot == itemLink) then
			print("AAP: Re-Equiped: "..itemLink)
			AAP_OldSLot = nil
			AAP_EquipGearTimer:Stop()
		else
			local bag, slot, itemLink, itemName, count, bbb1, bbb2
			local DerpGot = 0
			for bag = 0,4 do
				for slot = 1,GetContainerNumSlots(bag) do
					if (GetContainerItemLink(bag, slot)) then
						local itemLink2 = GetContainerItemLink(bag, slot)
						if (AAP_OldSLot == itemLink2) then
							UseContainerItem(bag,slot)
						end
					end
				end
			end
		end
	else
		AAP_EquipGearTimer:Stop()
	end
end
function AAP_MacroUpdater(macroSlot,itemName,aapextra)
	if (itemName) then
		if (itemName == 123123123) then
			EditMacro(macroSlot, "AAP_MACRO","INV_MISC_QUESTIONMARK","#showtooltip\n/click ExtraActionButton1",nil,nil)
		elseif (aapextra == 65274) then
			EditMacro(macroSlot, "AAP_MACRO","INV_MISC_QUESTIONMARK","#showtooltip\n/script AAP_SaveOldSlot()\n/use "..itemName,nil,nil)
		else
			if (AAP_DubbleMacro and AAP_DubbleMacro[1] and AAP_DubbleMacro[2] and AAP_ActiveZone and AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SpecialDubbleMacro"]) then
				EditMacro(macroSlot, "AAP_MACRO","INV_MISC_QUESTIONMARK","#showtooltip\n/use "..AAP_DubbleMacro[1].."\n/use "..AAP_DubbleMacro[2],nil,nil)
			elseif (AAP_ActiveZone and AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SpecialMacro"]) then
				EditMacro(macroSlot, "AAP_MACRO","INV_MISC_QUESTIONMARK","#showtooltip\n/target Serrik\n/use "..itemName,nil,nil)
			elseif (AAP_ActiveZone and AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SpecialMacro2"]) then
				EditMacro(macroSlot, "AAP_MACRO","INV_MISC_QUESTIONMARK","#showtooltip\n/target Hrillik's\n/use "..itemName,nil,nil)
			else
				EditMacro(macroSlot, "AAP_MACRO","INV_MISC_QUESTIONMARK","#showtooltip\n/use "..itemName,nil,nil)
			end
		end
	else
		EditMacro(macroSlot, "AAP_MACRO","INV_MISC_QUESTIONMARK","/script print('no button yet')",nil,nil)
	end
end
function AAP_Button1Func()

end
function AAP_FindQitemFunc(AAP_T_Qitemnr)
	if (not AAP_T_Qitemnr) then
		return "nope"
	else
		local bag, slot, itemLink, itemName, count, bbb1, bbb2
		local DerpGot = 0
		for bag = 0,4 do
			for slot = 1,GetContainerNumSlots(bag) do
				local itemID = GetContainerItemID(bag, slot)
				if (itemID and itemID == AAP_T_Qitemnr) then
					DerpGot = 1
					bbb1 = bag
					bbb2 = slot
				end
			end
		end

		if (DerpGot == 1) then
			return bbb1, bbb2
		else
			return "nope"
		end
	end
end
AAP_Skip = {
	["Nazmir1"] = AAP_img.."Nazmir1.tga",
	["Nazmir2"] = AAP_img.."Nazmir2.tga",
	["Nazmir3"] = AAP_img.."Nazmir3.tga",
	["Nazmir4"] = AAP_img.."Nazmir4.tga",
	["Nazmir5"] = AAP_img.."Nazmir5.tga",
	["Nazmir6"] = AAP_img.."Nazmir6.tga",
	["Nazmir7"] = AAP_img.."Nazmir7.tga",
	["Nazmir8"] = AAP_img.."Nazmir8.tga",
	["Nazmir9"] = AAP_img.."Nazmir9.tga",
	["Voldun1"] = AAP_img.."Voldun1.tga",
	["Voldun2"] = AAP_img.."Voldun2.tga",
	["Voldun3"] = AAP_img.."Voldun3.tga",
	["Voldun4"] = AAP_img.."Voldun4.tga",
	["Voldun5"] = AAP_img.."Voldun5.tga",
	["Zuldazar1"] = AAP_img.."Zuldazar1.tga",
	["Zuldazar2"] = AAP_img.."Zuldazar2.tga",
	["Zuldazar3"] = AAP_img.."Zuldazar3.tga",
	["Zuldazar4"] = AAP_img.."Zuldazar4.tga",
	["Zuldazar5"] = AAP_img.."Zuldazar5.tga",
	["Zuldazar6"] = AAP_img.."Zuldazar6.tga",
	["Zuldazar7"] = AAP_img.."Zuldazar7.tga",
	["Zuldazar8"] = AAP_img.."Zuldazar8.tga",
	["Zuldazar9"] = AAP_img.."Zuldazar9.tga",
	["Dustvar1"] = AAP_img.."Dustvar1.tga",
	["Dustvar2"] = AAP_img.."Dustvar2.tga",
	["Dustvar3"] = AAP_img.."Dustvar3.tga",
	["Dustvar4"] = AAP_img.."Dustvar4.tga",
	["Dustvar5"] = AAP_img.."Dustvar5.tga",
	["Dustvar6"] = AAP_img.."Dustvar6.tga",
	["Dustvar7"] = AAP_img.."Dustvar7.tga",
	["Dustvar8"] = AAP_img.."Dustvar8.tga",
	["Dustvar9"] = AAP_img.."Dustvar9.tga",
	["Stormsong1"] = AAP_img.."Stormsong1.tga",
	["Stormsong2"] = AAP_img.."Stormsong2.tga",
	["Stormsong3"] = AAP_img.."Stormsong3.tga",
	["Stormsong4"] = AAP_img.."Stormsong4.tga",
	["Stormsong5"] = AAP_img.."Stormsong5.tga",
	["Stormsong6"] = AAP_img.."Stormsong6.tga",
	["Stormsong7"] = AAP_img.."Stormsong7.tga",

}
AAP_Bar = AAP_img.."bar"
AAP_Name = UnitName("player")
AAP_Realm = string.gsub(GetRealmName(), " ", "")
AAP_ActiveQuests = {}
AAP_ActiveZone = 0
AAP_Quests = {}
AAP_EventLoop = {}
AAP_BonusObj = {
	[50009] = 1,
	[50448] = 1,
	[50133] = 1,
	[51534] = 1,
	[50779] = 1,
	[49739] = 1,
	[51689] = 1,
	[50497] = 1,
	[48093] = 1,
	[47996] = 1,
	[48934] = 1,
	[49315] = 1,
	[48852] = 1,
	[49406] = 1,
	[48588] = 1,
	[47756] = 1,
	[49529] = 1,
	[49300] = 1,
	[47797] = 1,
	[49315] = 1,
	[50178] = 1,
	[49918] = 1,
	[47527] = 1,
	[47647] = 1,
	[51900] = 1,
	[50805] = 1,
	[48474] = 1,
	[48525] = 1,
	[45972] = 1,
	[47969] = 1,
	[48181] = 1,
	[48680] = 1,
	[50091] = 1,
}
AAP_AllowedQuestList = {
	[48639] = 1,
	[48021] = 1,
	[46206] = 1,
	[42238] = 1,
	[38568] = 1,
}
local PlayMovie_hook = MovieFrame_PlayMovie

MovieFrame_PlayMovie = function(...)

	if (IsControlKeyDown() or (AAP1[AAP_Realm][AAP_Name]["Settings"]["CutScene"] == 0)) then

		PlayMovie_hook(...)

	else
		print("AAP: "..AAP_Locals["Skipped cutscene"])
		GameMovieFinished()

	end

end


if (not AAP1) then
	AAP1 = {}
end
if (not AAP1[AAP_Realm]) then
	AAP1[AAP_Realm] = {}
end
if (not AAP1[AAP_Realm][AAP_Name]) then
	AAP1[AAP_Realm][AAP_Name] = {}
end
if (not AAP1[AAP_Realm][AAP_Name]["LoaPick"]) then
	AAP1[AAP_Realm][AAP_Name]["LoaPick"] = 0
end
if (not AAP1[AAP_Realm][AAP_Name]["Zone862D"]) then
	AAP1[AAP_Realm][AAP_Name]["Zone862D"] = 0
end

AAP_ArrowFrameM = CreateFrame("Button", "AAP_Arrow", UIParent)
AAP_ArrowFrameM:SetHeight(1)
AAP_ArrowFrameM:SetWidth(1)
AAP_ArrowFrameM:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 0, 0)
AAP_ArrowFrameM:EnableMouse(true)
AAP_ArrowFrameM:SetMovable(true)

AAP_ArrowFrame = CreateFrame("Button", "AAP_Arrow", UIParent)
AAP_ArrowFrame:SetHeight(42)
AAP_ArrowFrame:SetWidth(56)
AAP_ArrowFrame:SetPoint("TOPLEFT", AAP_ArrowFrameM, "TOPLEFT", 0, 0)
AAP_ArrowFrame:EnableMouse(true)
AAP_ArrowFrame:SetMovable(true)
AAP_ArrowFrame.arrow = AAP_ArrowFrame:CreateTexture(nil, "OVERLAY")
AAP_ArrowFrame.arrow:SetTexture("Interface\\Addons\\Azeroth Auto Pilot\\Img\\Arrow.blp")
AAP_ArrowFrame.arrow:SetAllPoints()
AAP_ArrowFrame.distance = AAP_ArrowFrame:CreateFontString("ARTWORK", "ChatFontNormal")
AAP_ArrowFrame.distance:SetFontObject("GameFontNormalSmall")
AAP_ArrowFrame.distance:SetPoint("TOP", AAP_ArrowFrame, "BOTTOM", 0, 0)
AAP_ArrowFrame:Hide()
AAP_ArrowFrame:SetScript("OnMouseDown", function(self, button)
	if button == "LeftButton" and not AAP_ArrowFrameM.isMoving and AAP1[AAP_Realm][AAP_Name]["Settings"]["LockArrow"] == 0 then
		AAP_ArrowFrameM:StartMoving();
		AAP_ArrowFrameM.isMoving = true;
	end
end)
AAP_ArrowFrame:SetScript("OnMouseUp", function(self, button)
	if button == "LeftButton" and AAP_ArrowFrameM.isMoving then
		AAP_ArrowFrameM:StopMovingOrSizing();
		AAP_ArrowFrameM.isMoving = false;
		AAP1[AAP_Realm][AAP_Name]["Settings"]["arrowleft"] = AAP_ArrowFrameM:GetLeft()
		AAP1[AAP_Realm][AAP_Name]["Settings"]["arrowtop"] = AAP_ArrowFrameM:GetTop() - GetScreenHeight()
		AAP_ArrowFrameM:SetPoint("TOPLEFT", UIParent, "TOPLEFT", AAP1[AAP_Realm][AAP_Name]["Settings"]["arrowleft"], AAP1[AAP_Realm][AAP_Name]["Settings"]["arrowtop"])
	end
end)
AAP_ArrowFrame:SetScript("OnHide", function(self)
	if ( AAP_ArrowFrameM.isMoving ) then
		AAP_ArrowFrameM:StopMovingOrSizing();
		AAP_ArrowFrameM.isMoving = false;
		AAP1[AAP_Realm][AAP_Name]["Settings"]["arrowleft"] = AAP_ArrowFrameM:GetLeft()
		AAP1[AAP_Realm][AAP_Name]["Settings"]["arrowtop"] = AAP_ArrowFrameM:GetTop() - GetScreenHeight()
		AAP_ArrowFrameM:SetPoint("TOPLEFT", UIParent, "TOPLEFT", AAP1[AAP_Realm][AAP_Name]["Settings"]["arrowleft"], AAP1[AAP_Realm][AAP_Name]["Settings"]["arrowtop"])
	end
end)

AAP_AfkFrame = CreateFrame("frame", "AAP_AFkFrames", UIParent)
AAP_AfkFrame:SetWidth(120)
AAP_AfkFrame:SetHeight(40)
AAP_AfkFrame:SetPoint("CENTER", UIParent, "CENTER",0,150)
AAP_AfkFrame:EnableMouse(true)
AAP_AfkFrame:SetMovable(true)
AAP_AfkFrame:SetBackdrop( { 
	bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
	tile = true, tileSize = 10, edgeSize = 10, insets = { left = 2, right = 2, top = 2, bottom = 2 }
});
AAP_AfkFrame:SetScript("OnMouseDown", function(self, button)
	if button == "LeftButton" then
		AAP_AfkFrame:StartMoving();
		AAP_AfkFrame.isMoving = true;
	end
end)
AAP_AfkFrame:SetScript("OnMouseUp", function(self, button)
	if button == "LeftButton" and AAP_AfkFrame.isMoving then
		AAP_AfkFrame:StopMovingOrSizing();
		AAP_AfkFrame.isMoving = false;
	end
end)
AAP_AfkFrame:SetScript("OnHide", function(self)
	if ( AAP_AfkFrame.isMoving ) then
		AAP_AfkFrame:StopMovingOrSizing();
		AAP_AfkFrame.isMoving = false;
	end
end)

AAP_RideFrame = CreateFrame("Button", "AAP_Arrow", UIParent)
AAP_RideFrame:SetHeight(56)
AAP_RideFrame:SetWidth(56)
AAP_RideFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", GetScreenWidth() / 1.8, -(GetScreenHeight() / 2.7))
AAP_RideFrame:EnableMouse(true)
AAP_RideFrame:SetMovable(true)
AAP_RideFrame.arrow = AAP_RideFrame:CreateTexture(nil, "OVERLAY")
AAP_RideFrame.arrow:SetTexture("Interface/Icons/achievement_doublerainbow.blp")
AAP_RideFrame.arrow:SetAllPoints()
AAP_RideFrame.distance = AAP_RideFrame:CreateFontString("ARTWORK", "ChatFontNormal")
AAP_RideFrame.distance:SetFontObject("GameFontNormalSmall")
AAP_RideFrame.distance:SetPoint("TOP", AAP_RideFrame, "BOTTOM", 0, 0)
AAP_RideFrame:Hide()
AAP_RideFrame:SetScript("OnMouseDown", function(self, button)
	if button == "LeftButton" and not AAP_RideFrame.isMoving then
		AAP_RideFrame:StartMoving();
		AAP_RideFrame.isMoving = true;
	end
end)
AAP_RideFrame:SetScript("OnMouseUp", function(self, button)
	if button == "LeftButton" and AAP_RideFrame.isMoving then
		AAP_RideFrame:StopMovingOrSizing();
		AAP_RideFrame.isMoving = false;
	end
end)
AAP_RideFrame:SetScript("OnHide", function(self)
	if ( AAP_RideFrame.isMoving ) then
		AAP_RideFrame:StopMovingOrSizing();
		AAP_RideFrame.isMoving = false;
	end
end)
AAP_RideFrame.Fontstring = AAP_RideFrame:CreateFontString("CLaSettingsFS2212","OVERLAY", "ChatFontNormal")
AAP_RideFrame.Fontstring:SetParent(AAP_RideFrame)
AAP_RideFrame.Fontstring:SetPoint("CENTER", AAP_RideFrame, "CENTER", 0, 0)
AAP_RideFrame.Fontstring:SetFontObject("GameFontNormalSmall")
AAP_RideFrame.Fontstring:SetText("testaaaaaaaaaaaaaaaaaaaaaaaaaa")
AAP_RideFrame.Fontstring:SetJustifyH("CENTER")
AAP_RideFrame.Fontstring:SetTextColor(1, 1, 0)

AAP_RideFrame.Fontstring2 = AAP_RideFrame:CreateFontString("CLaSettingsFS21212","OVERLAY", "ChatFontNormal")
AAP_RideFrame.Fontstring2:SetParent(AAP_RideFrame)
AAP_RideFrame.Fontstring2:SetPoint("CENTER", AAP_RideFrame, "CENTER", 0, -35)
AAP_RideFrame.Fontstring2:SetFontObject("GameFontNormalSmall")
AAP_RideFrame.Fontstring2:SetText("x")
AAP_RideFrame.Fontstring2:SetJustifyH("CENTER")
AAP_RideFrame.Fontstring2:SetTextColor(1, 1, 0)


AAP_AfkFrame.Fontstring = AAP_AfkFrame:CreateFontString("AAPAFkFont","ARTWORK", "ChatFontNormal")
AAP_AfkFrame.Fontstring:SetParent(AAP_AfkFrame)
AAP_AfkFrame.Fontstring:SetPoint("LEFT", AAP_AfkFrame, "LEFT", 10, 0)
AAP_AfkFrame.Fontstring:SetFontObject("GameFontNormalLarge")
AAP_AfkFrame.Fontstring:SetText("AFK:")
AAP_AfkFrame.Fontstring:SetJustifyH("LEFT")
AAP_AfkFrame.Fontstring:SetTextColor(1, 1, 0)
AAP_AfkFrame:Hide()

AAP_ArrowFrame.Button = CreateFrame("Button", "AAP_ArrowActiveButton", AAP_ArrowFrame)
AAP_ArrowFrame.Button:SetWidth(85)
AAP_ArrowFrame.Button:SetHeight(17)
AAP_ArrowFrame.Button:SetPoint("BOTTOM", AAP_ArrowFrame, "BOTTOM", 0, -30)
AAP_ArrowFrame.Button:SetScript("OnMouseDown", function(self, button)
	AAP_ArrowFrame.Button:Hide()
	print("AAP: Skipping Waypoint")
	AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
	AAP_Reset = 0
	AAP_ArrowActive_X = 0
	AAP_ArrowActive_Y = 0
	AAP_UPDQListV = AAP_UPDQListV2
end)
AAP_ArrowFrame.Button:SetBackdrop( { 
	bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
	tile = true, tileSize = 10, edgeSize = 10, insets = { left = 2, right = 2, top = 2, bottom = 2 }
});

AAP_ArrowFrame.Fontstring = AAP_ArrowFrame:CreateFontString("CLSettingsFS2212","ARTWORK", "ChatFontNormal")
AAP_ArrowFrame.Fontstring:SetParent(AAP_ArrowFrame.Button)
AAP_ArrowFrame.Fontstring:SetPoint("CENTER", AAP_ArrowFrame.Button, "CENTER", 0, 0)

AAP_ArrowFrame.Fontstring:SetFontObject("GameFontNormalSmall")
AAP_ArrowFrame.Fontstring:SetText("Skip waypoint")
AAP_ArrowFrame.Fontstring:SetTextColor(1, 1, 0)
AAP_ArrowFrame.Button:Hide()

function AAP_SlashCmd(AAP_index)
	if (AAP_index == "reset") then
		print("AAP: Resetting Zone.")
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = 1
		local ResetAz = true
		local ResetAz2 = 0
		local ResetAz3 = 0
		while ResetAz do
			ResetAz3 = ResetAz3 + 1
			if (ResetAz2 ~= AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
				ResetAz2 = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]
				AAP_Plus()
			else
				ResetAz = nil
			end
			if (ResetAz3 > 2500) then
				ResetAz = nil
			end
		end
		AAP_UpdateQuestList()
		AAP_ChangeZone()
		AAP_UpdateQuestList()
	elseif (AAP_index == "skip") then
		print("AAP: Skipping QuestStep.")
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
		AAP_ChangeZone()
		AAP_UpdateQuestList()
	elseif (AAP_index == "skipcamp") then
		print("AAP: Skipping CampStep.")
		AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 14
		AAP_ChangeZone()
		AAP_UpdateQuestList()
	else
		AAP_SettingsOpen = 1
		AAP.OptionsFrame.MainFrame:Show()
		AAP_ArrowActive = 1
		AAP_ArrowActive_X = 1234
		AAP_ArrowActive_Y = 1234
		QNumberLocal = 99992
		AAP_UpdateQuestList()
	end
end

function AAP_ShowRideBuff()
--	if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["RideBuff"]) then
		local i = 1
		local buff = UnitBuff("vehicle", i);
		while buff do
			local name, rank, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, spellId = UnitBuff("vehicle", i)
			AAP_RideFrame.Fontstring2:SetText("x"..icon)
			if (spellId == 253498) then
				AAP_HorseBuffDur = 5.5
			end
			i = i + 1
			buff = UnitBuff("vehicle", i);
		end
		AAP_HorseBuffTimer:Play()
--	end
end
function AAP_HorseBuffTimerFunc()
	if (AAP_HorseBuffDur > 0) then
		AAP_HorseBuffDur = floor((AAP_HorseBuffDur - 0.1)*10)/10
		AAP_RideFrame:Show()
		local AAP_HorseBuffDurprintz = AAP_HorseBuffDur
		if (AAP_HorseBuffDur == 4) then
			AAP_HorseBuffDurprintz = "4.0"
		end
		if (AAP_HorseBuffDur == 3) then
			AAP_HorseBuffDurprintz = "3.0"
		end
		if (AAP_HorseBuffDur == 2) then
			AAP_HorseBuffDurprintz = "2.0"
		end
		if (AAP_HorseBuffDur == 1) then
			AAP_HorseBuffDurprintz = "1.0"
		end
		AAP_RideFrame.Fontstring:SetText(AAP_HorseBuffDurprintz)
	else
		AAP_HorseBuffDur = 0
		AAP_HorseBuffTimer:Stop()
		AAP_RideFrame:Hide()
	end
end
function AAP_TestQListSkip()
	if (AAP_TestSkipVar1 == 0) then
		if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
			local zenumbers = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]
			if (zenumbers ~= AAP_TestSkipVar2) then
				AAP_TestSkipVar2 = zenumbers
				AAP_TestSkipVar3 = 0
				AAP_TestSkipVar4 = 0
			elseif (zenumbers == AAP_TestSkipVar2 and zenumbers ~= AAP_TestSkipVar3) then
				AAP_TestSkipVar3 = zenumbers
			elseif (zenumbers == AAP_TestSkipVar2 and zenumbers == AAP_TestSkipVar3 and zenumbers ~= AAP_TestSkipVar4) then
				AAP_TestSkipVar4 = zenumbers
			else
				AAP_TestSkipVar1 = 1
			end
			AAP_Plus()
		end
	end
end
function AAP_AFK_Timer(AAP_AFkTimeh)
	AAP_AfkTimerVar = AAP_AFkTimeh
	AAP_ArrowEventAFkTimer:Play()
end
function AAP_AFK_Timer2(AAP_AFkTimeh)
	AAP_AfkTimerVar2 = AAP_AFkTimeh
	AAP_ArrowEventAFkTimer2:Play()
end
function AAP_CheckDistance()
	if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
		if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["CRange"]) then
			AAP_ArrowFrame.Button:Show()
			local plusnr = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]
			local Distancenr = 0
			local testad = true
			if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["NoExtraRange"]) then
				testad = false
			end
			while testad do
				local oldx = AAP_Quests[plusnr]["TT"]["x"]
				local oldy = AAP_Quests[plusnr]["TT"]["y"]
				plusnr = plusnr + 1
				if (AAP_Quests[plusnr] and AAP_Quests[plusnr]["CRange"]) then
					local newx = AAP_Quests[plusnr]["TT"]["x"]
					local newy = AAP_Quests[plusnr]["TT"]["y"]
					local deltaX, deltaY = oldx - newx, newy - oldy
					local distance = (deltaX * deltaX + deltaY * deltaY)^0.5
					Distancenr = Distancenr + distance
				else
					if (AAP_Quests[plusnr] and AAP_Quests[plusnr]["TT"]) then
						local newx = AAP_Quests[plusnr]["TT"]["x"]
						local newy = AAP_Quests[plusnr]["TT"]["y"]
						local deltaX, deltaY = oldx - newx, newy - oldy
						local distance = (deltaX * deltaX + deltaY * deltaY)^0.5
						Distancenr = Distancenr + distance
					end
					return floor(Distancenr + 0.5)
				end
			end
		end
	end
	return 0
end
function AAP_CombatTest()
	if (AAP_CombatTestVar == 1) then
		AAP_CombatTestVar = 0
		AAP_UPDQListV = AAP_UPDQListV2
	end
end
function AAP_InstanceTest()
	local inInstance, instanceType = IsInInstance()
	if (inInstance) then
		local name, type, difficultyIndex, difficultyName, maxPlayers, dynamicDifficulty, isDynamic, instanceMapId, lfgID = GetInstanceInfo()
		if (instanceMapId == 1760) then
			return 0
		elseif (instanceMapId == 1904) then
			return 0
		else
			return 1
		end
	else
		return 0
	end
end
function AAP_PosTest()
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["ShowArrow"] == 0) then
		AAP_ArrowActive = 0
		AAP_ArrowFrame:Hide()
	else
	if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["AreaTriggerZ"]) then
		local d_y, d_x = UnitPosition("player")
		x = AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["AreaTriggerZ"]["x"]
		y = AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["AreaTriggerZ"]["y"]
		local deltaX, deltaY = d_x - x, y - d_y
		local distance = (deltaX * deltaX + deltaY * deltaY)^0.5
		if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["AreaTriggerZ"]["R"] > distance) then
			AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
			QNumberLocal = 0
			AAP_Reset = 0
			AAP_Plus()
		end
	end
	if ((AAP_ArrowActive == 0) or (AAP_ArrowActive_X == 0) or (AAP_InstanceTest() == 1)) then
		AAP_ArrowActive = 0
		AAP_ArrowFrame:Hide()
	else
		AAP_ArrowFrame:Show()
		AAP_ArrowFrame.Button:Hide()
		local d_y, d_x = UnitPosition("player")
		if (d_x and d_y) then
			x = AAP_ArrowActive_X
			y = AAP_ArrowActive_Y
			local AAP_ArrowActive_TrigDistance
			local PI2 = math.pi * 2
			local atan2 = math.atan2
			local twopi = math.pi * 2
			local deltaX, deltaY = d_x - x, y - d_y
			distance = (deltaX * deltaX + deltaY * deltaY)^0.5
			local angle = atan2(-deltaX, deltaY)
			local player = GetPlayerFacing()
			angle = angle - player
			local perc = math.abs((math.pi - math.abs(angle)) / math.pi)
			if perc > 0.98 then
				AAP_ArrowFrame.arrow:SetVertexColor(0,1,0)
			elseif perc > 0.49 then
				AAP_ArrowFrame.arrow:SetVertexColor((1-perc)*2,1,0)
			else
				AAP_ArrowFrame.arrow:SetVertexColor(1,perc*2,0)
			end
			local cell = floor(angle / twopi * 108 + 0.5) % 108
			local col = cell % 9
			local row = floor(cell / 9)
			AAP_ArrowFrame.arrow:SetTexCoord((col * 56) / 512,((col + 1) * 56) / 512,(row * 42) / 512,((row + 1) * 42) / 512)
			AAP_ArrowFrame.distance:SetText(floor(distance + AAP_CheckDistance()) .. " "..AAP_Locals["Yards"])
			AAP_ArrowActive_Distance = 0
			if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
				if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Trigger"]) then
					local d_y, d_x = UnitPosition("player")
					AAP_ArrowActive_Trigger_X = AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Trigger"]["x"]
					AAP_ArrowActive_Trigger_Y = AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Trigger"]["y"]
					local deltaX, deltaY = d_x - AAP_ArrowActive_Trigger_X, AAP_ArrowActive_Trigger_Y - d_y
					AAP_ArrowActive_Distance = (deltaX * deltaX + deltaY * deltaY)^0.5
					AAP_ArrowActive_TrigDistance = AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["Range"]
					if (AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["HIDEME"]) then
						AAP_ArrowActive = 0
					end
				end
			end
			if (distance < 5 and AAP_ArrowActive_Distance == 0) then
				AAP_ArrowActive_X = 0
			elseif (AAP_ArrowActive_Distance and AAP_ArrowActive_TrigDistance and AAP_ArrowActive_Distance < AAP_ArrowActive_TrigDistance) then
				AAP_ArrowActive_X = 0
				if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
					if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["CRange"]) then
						AAP_ArrowActive_TrigDistance = 0
						AAP_CRange("Trigged")
					end
				end
			end
		end
	end
	end
end

function AAP_AnimeUpdater()
	if (AAP_UPDQListV > 0) then
		AAP_5sec_thingy = 10
		AAP_UPDQListV = AAP_UPDQListV - 1
	end
	if (AAP_UPDQListV == 0) then
		AAP_5sec_thingy = 10
		AAP_Plus()
		AAP_UpdateQuestList()
		AAP_extraTimer:Play()
		AAP_UPDQListV = -1
	end
end

AAP_AnimeUpdaters = CreateFrame("frame")
AAP_AnimeUpdaters:SetScript("OnUpdate", AAP_AnimeUpdater)

AAP_CoreEventFrame = CreateFrame("Frame")
AAP_CoreEventFrame:RegisterEvent ("ADDON_LOADED")
AAP_CoreEventFrame:RegisterEvent ("UPDATE_MOUSEOVER_UNIT")
AAP_CoreEventFrame:RegisterEvent ("QUEST_DETAIL")
AAP_CoreEventFrame:RegisterEvent ("GOSSIP_SHOW")
AAP_CoreEventFrame:RegisterEvent ("QUEST_GREETING")
AAP_CoreEventFrame:RegisterEvent ("QUEST_COMPLETE")
AAP_CoreEventFrame:RegisterEvent ("QUEST_PROGRESS")
AAP_CoreEventFrame:RegisterEvent ("UNIT_AURA")
AAP_CoreEventFrame:RegisterEvent ("PLAYER_EQUIPMENT_CHANGED")
AAP_CoreEventFrame:RegisterEvent ("MERCHANT_SHOW")
AAP_CoreEventFrame:RegisterEvent ("CINEMATIC_START")


AAP_CoreEventFrame:SetScript("OnEvent", function(self, event, ...)

	if (event=="PLAYER_EQUIPMENT_CHANGED" and AAP_DisableAddon == 0) then
		AAP_UpdateILVLGear()
	elseif (event=="UPDATE_MOUSEOVER_UNIT" and AAP_DisableAddon == 0) then
		if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
			if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["DroppableQuest"]) then
				if (UnitGUID("mouseover") and UnitName("mouseover")) then
					local guid, name = UnitGUID("mouseover"), UnitName("mouseover")
					local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
					if (type == "Creature" and npc_id and name) then
						if (AAP_NPCList and not AAP_NPCList[tonumber(npc_id)]) then
							AAP_NPCList[tonumber(npc_id)] = name
							AAP_UPDQListV = AAP_UPDQListV2
						end
					end
				end
			end
		end
	elseif (event=="CINEMATIC_START" and AAP_DisableAddon == 0) then
		if (not IsControlKeyDown()) then

			if (AAP1[AAP_Realm][AAP_Name]["Settings"]["CutScene"] == 1) then
				AAP_QuestAcceptTimerMovie:Play()
			end
		end

	elseif (event=="UNIT_AURA" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if (arg1 == "vehicle") then
			AAP_ShowRideBuff()
		end
	elseif (event=="ADDON_LOADED" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4, arg5 = ...;
		if (arg1 == "Azeroth Auto Pilot") then
			AAP_CompletedQs = GetQuestsCompleted()
			AAP_RegisterChat = C_ChatInfo.RegisterAddonMessagePrefix("AAPChat")
			if (not AAP1) then
				AAP1 = {}
			end
			if (not AAP1[AAP_Realm]) then
				AAP1[AAP_Realm] = {}
			end
			if (not AAP1[AAP_Realm][AAP_Name]) then
				AAP1[AAP_Realm][AAP_Name] = {}
			end
			if (not AAP1[AAP_Realm][AAP_Name]["QlineSkip"]) then
				AAP1[AAP_Realm][AAP_Name]["QlineSkip"] = {}
			end
			if (not AAP1[AAP_Realm][AAP_Name]["SkippedBonusObj"]) then
				AAP1[AAP_Realm][AAP_Name]["SkippedBonusObj"] = {}
			end
			if (not AAP1[AAP_Realm][AAP_Name]["LoaPick"]) then
				AAP1[AAP_Realm][AAP_Name]["LoaPick"] = 0
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Zone862D"]) then
				AAP1[AAP_Realm][AAP_Name]["Zone862D"] = 0
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Zone895D"]) then
				AAP1[AAP_Realm][AAP_Name]["Zone895D"] = 0
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Settings"]) then
				AAP1[AAP_Realm][AAP_Name]["Settings"] = {}
				AAP1[AAP_Realm][AAP_Name]["Settings"]["left"] = GetScreenWidth() / 1.6
				AAP1[AAP_Realm][AAP_Name]["Settings"]["top"] = -(GetScreenHeight() / 5)
				AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"] = UIParent:GetScale()
				AAP1[AAP_Realm][AAP_Name]["Settings"]["Lock"] = 0
				AAP1[AAP_Realm][AAP_Name]["Settings"]["Hide"] = 0
				AAP1[AAP_Realm][AAP_Name]["Settings"]["alpha"] = 1
				AAP1[AAP_Realm][AAP_Name]["Settings"]["arrowleft"] = GetScreenWidth() / 2.05
				AAP1[AAP_Realm][AAP_Name]["Settings"]["arrowtop"] = -(GetScreenHeight() / 1.5)
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["LockArrow"]) then
				AAP1[AAP_Realm][AAP_Name]["Settings"]["LockArrow"] = 0
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"]) then
				AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"] = UIParent:GetScale()
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerShow"]) then
				AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerShow"] = 0
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["Hcampleft"]) then
				AAP1[AAP_Realm][AAP_Name]["Settings"]["Hcampleft"] = GetScreenWidth() / 1.6
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["Hcamptop"]) then
				AAP1[AAP_Realm][AAP_Name]["Settings"]["Hcamptop"] = -(GetScreenHeight() / 5)
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["CutScene"]) then
				AAP1[AAP_Realm][AAP_Name]["Settings"]["CutScene"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoAccept"]) then
				AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoAccept"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandIn"]) then
				AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandIn"] = 1
			end
			AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoShareQ"] = 0
			if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["ChooseQuests"]) then
				AAP1[AAP_Realm][AAP_Name]["Settings"]["ChooseQuests"] = 0
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["ArrowScale"]) then
				AAP1[AAP_Realm][AAP_Name]["Settings"]["ArrowScale"] = UIParent:GetScale()
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandInChoice"]) then
				AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandInChoice"] = 0
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["Greetings"]) then
				AAP1[AAP_Realm][AAP_Name]["Settings"]["Greetings"] = 0
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoVendor"]) then
				AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoVendor"] = 0
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoRepair"]) then
				AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoRepair"] = 0
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["ShowGroup"]) then
				AAP1[AAP_Realm][AAP_Name]["Settings"]["ShowGroup"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["ShowArrow"]) then
				AAP1[AAP_Realm][AAP_Name]["Settings"]["ShowArrow"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["ShowQList"]) then
				AAP1[AAP_Realm][AAP_Name]["Settings"]["ShowQList"] = 1
			end

			if (not AAP1[AAP_Realm][AAP_Name][86]) then
				AAP1[AAP_Realm][AAP_Name][86] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name][81]) then
				AAP1[AAP_Realm][AAP_Name][81] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name][249]) then
				AAP1[AAP_Realm][AAP_Name][249] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["86-1"]) then
				AAP1[AAP_Realm][AAP_Name]["86-1"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["86-2"]) then
				AAP1[AAP_Realm][AAP_Name]["86-2"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["627-1"]) then
				AAP1[AAP_Realm][AAP_Name]["627-1"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name][627]) then
				AAP1[AAP_Realm][AAP_Name][627] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name][908]) then
				AAP1[AAP_Realm][AAP_Name][908] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name][862]) then
				AAP1[AAP_Realm][AAP_Name][862] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name][11337]) then
				AAP1[AAP_Realm][AAP_Name][11337] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name][942]) then
				AAP1[AAP_Realm][AAP_Name][942] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["862-1"]) then
				AAP1[AAP_Realm][AAP_Name]["862-1"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["862-2"]) then
				AAP1[AAP_Realm][AAP_Name]["862-2"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["862-3"]) then
				AAP1[AAP_Realm][AAP_Name]["862-3"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["862-3-1"]) then
				AAP1[AAP_Realm][AAP_Name]["862-3-1"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["862-3-2"]) then
				AAP1[AAP_Realm][AAP_Name]["862-3-2"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["862-4"]) then
				AAP1[AAP_Realm][AAP_Name]["862-4"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["862-4-1"]) then
				AAP1[AAP_Realm][AAP_Name]["862-4-1"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["862-4-2"]) then
				AAP1[AAP_Realm][AAP_Name]["862-4-2"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["862-4-3"]) then
				AAP1[AAP_Realm][AAP_Name]["862-4-3"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["862-4-10"]) then
				AAP1[AAP_Realm][AAP_Name]["862-4-10"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name][863]) then
				AAP1[AAP_Realm][AAP_Name][863] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name][864]) then
				AAP1[AAP_Realm][AAP_Name][864] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name][895]) then
				AAP1[AAP_Realm][AAP_Name][895] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name][896]) then
				AAP1[AAP_Realm][AAP_Name][896] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name][998]) then
				AAP1[AAP_Realm][AAP_Name][998] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name][1012]) then
				AAP1[AAP_Realm][AAP_Name][1012] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name][1013]) then
				AAP1[AAP_Realm][AAP_Name][1013] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name][1021]) then
				AAP1[AAP_Realm][AAP_Name][1021] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name][1022]) then
				AAP1[AAP_Realm][AAP_Name][1022] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name][1009]) then
				AAP1[AAP_Realm][AAP_Name][1009] = 1
			end
----------------- Alliance ---------------------------------
			if (not AAP1[AAP_Realm][AAP_Name]["A84"]) then
				AAP1[AAP_Realm][AAP_Name]["A84"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A862"]) then
				AAP1[AAP_Realm][AAP_Name]["A862"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A863"]) then
				AAP1[AAP_Realm][AAP_Name]["A863"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A864"]) then
				AAP1[AAP_Realm][AAP_Name]["A864"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A876"]) then
				AAP1[AAP_Realm][AAP_Name]["A876"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A895"]) then
				AAP1[AAP_Realm][AAP_Name]["A895"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A895-1"]) then
				AAP1[AAP_Realm][AAP_Name]["A895-1"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A895-2"]) then
				AAP1[AAP_Realm][AAP_Name]["A895-2"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A895-3"]) then
				AAP1[AAP_Realm][AAP_Name]["A895-3"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A895-4"]) then
				AAP1[AAP_Realm][AAP_Name]["A895-4"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A895-4-1"]) then
				AAP1[AAP_Realm][AAP_Name]["A895-4-1"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A895-4-2"]) then
				AAP1[AAP_Realm][AAP_Name]["A895-4-2"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A895-4-3"]) then
				AAP1[AAP_Realm][AAP_Name]["A895-4-3"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A895-4-4"]) then
				AAP1[AAP_Realm][AAP_Name]["A895-4-4"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A895-4-5"]) then
				AAP1[AAP_Realm][AAP_Name]["A895-4-5"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A895-4-10"]) then
				AAP1[AAP_Realm][AAP_Name]["A895-4-10"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A896"]) then
				AAP1[AAP_Realm][AAP_Name]["A896"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A908"]) then
				AAP1[AAP_Realm][AAP_Name]["A908"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A942"]) then
				AAP1[AAP_Realm][AAP_Name]["A942"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["A1021"]) then
				AAP1[AAP_Realm][AAP_Name]["A1021"] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name][1233123991]) then
				AAP1[AAP_Realm][AAP_Name][1233123991] = 1
			end
			if (not AAP1[AAP_Realm][AAP_Name]["AAP_DoWarCampaign"]) then
				AAP1[AAP_Realm][AAP_Name]["AAP_DoWarCampaign"] = 0
			end

			if (not AAP1[AAP_Realm][AAP_Name]["WantedQuestList"]) then
				AAP1[AAP_Realm][AAP_Name]["WantedQuestList"] = {}
			end
			AAP_MakeBanners()
			AAP.Banners.BannersFrame.Frame:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"])
			AAP.Banners.BannersFrame["Frame1"]:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"])
			AAP.Banners.BannersFrame["Frame2"]:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"])
			AAP.Banners.BannersFrame["Frame3"]:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"])
			AAP.Banners.BannersFrame["Frame4"]:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"])
			SlashCmdList["AAP_Cmd"] = AAP_SlashCmd
			SLASH_AAP_Cmd1 = "/aap"

			AAP_ArrowFrame:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["ArrowScale"])

			AAP_ArrowFrameM:SetPoint("TOPLEFT", UIParent, "TOPLEFT", AAP1[AAP_Realm][AAP_Name]["Settings"]["arrowleft"], AAP1[AAP_Realm][AAP_Name]["Settings"]["arrowtop"])
			AAP_MakeQuestList()
	
			AAP_ArrowEventloop = AAP_CoreEventFrame:CreateAnimationGroup()
			AAP_ArrowEventloop.anim = AAP_ArrowEventloop:CreateAnimation()
			AAP_ArrowEventloop.anim:SetDuration(0.03)
			AAP_ArrowEventloop:SetLooping("REPEAT")
			AAP_ArrowEventloop:SetScript("OnLoop", function(self, event, ...)
				if (AAP_SendDelay > 0) then
					AAP_SendDelay = AAP_SendDelay + 1
					if (AAP_SendDelay > 30) then
						AAP_SendGroup()
						AAP_SendDelay = 0
					end
				end
				if (AAP_ButtonCDCounter[99]) then
					local countz = 0
					for AAP_indexx,AAP_valuex in pairs(AAP_ButtonCDCounter[99]) do
						if (AAP_ButtonCDCounter[99][AAP_indexx] > 0) then
							countz = countz + 1
							--AAP.QuestList2["BF"..AAP_indexx]["AAP_Button"]:SetText(string.sub(AAP_valuex, 1, 3))
							AAP.QuestList2["BF"..AAP_indexx]["AAP_Button"]:SetText("")
							AAP_ButtonCDCounter[99][AAP_indexx] = AAP_ButtonCDCounter[99][AAP_indexx] - 0.01
						else
							AAP.QuestList2["BF"..AAP_indexx]["AAP_Button"]:SetText("")
						end
					end
					if (countz == 0) then
						AAP_ButtonCDCounter = nil
						AAP_ButtonCDCounter = {}
					end
				end
				AAP_PosTest()
				AAP_CombatTest()
				AAP_TestQListSkip()
			end)
			AAP_ArrowEventloop:Play()

			AAP_QuestDelayUpdTimer = AAP_CoreEventFrame:CreateAnimationGroup()
			AAP_QuestDelayUpdTimer.anim = AAP_QuestDelayUpdTimer:CreateAnimation()
			AAP_QuestDelayUpdTimer.anim:SetDuration(6)
			AAP_QuestDelayUpdTimer:SetLooping("REPEAT")
			AAP_QuestDelayUpdTimer:SetScript("OnLoop", function(self, event, ...)
				AAP_ZoneChangeTest()
				AAP_UPDQListV = AAP_UPDQListV2
				AAP_QuestDelayUpdTimer:Stop()
			end)
			AAP_QuestBuyUpdTimer = AAP_CoreEventFrame:CreateAnimationGroup()
			AAP_QuestBuyUpdTimer.anim = AAP_QuestDelayUpdTimer:CreateAnimation()
			AAP_QuestBuyUpdTimer.anim:SetDuration(0.2)
			AAP_QuestBuyUpdTimer:SetLooping("REPEAT")
			AAP_QuestBuyUpdTimer:SetScript("OnLoop", function(self, event, ...)
				if (GetMerchantNumItems()) then
					local i
					for i=1,GetMerchantNumItems() do
						local link = GetMerchantItemLink(i)
						if (link) then
							local _, _, Color, Ltype, Id, Enchant, Gem1, Gem2, Gem3, Gem4, Suffix, Unique, LinkLvl, Name = string.find(link, "|?c?f?f?(%x*)|?H?([^:]*):?(%d+):?(%d*):?(%d*):?(%d*):?(%d*):?(%d*):?(%-?%d*):?(%-?%d*):?(%d*):?(%d*):?(%-?%d*)|?h?%[?([^%[%]]*)%]?|?h?|?r?")
							if (tonumber(Id) == 160499) then
								BuyMerchantItem(i)
								MerchantFrame:Hide()
								break
							end
						end
					end
				end
				if (not AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["BuyMerchant"]) then
					AAP_QuestBuyUpdTimer:Stop()
				end
			end)
			AAP_HorseBuffTimer = AAP_CoreEventFrame:CreateAnimationGroup()
			AAP_HorseBuffTimer.anim = AAP_HorseBuffTimer:CreateAnimation()
			AAP_HorseBuffTimer.anim:SetDuration(0.1)
			AAP_HorseBuffTimer:SetLooping("REPEAT")
			AAP_HorseBuffTimer:SetScript("OnLoop", function(self, event, ...)
				AAP_HorseBuffTimerFunc()
			end)

			AAP_Horse5sTimer = AAP_CoreEventFrame:CreateAnimationGroup()
			AAP_Horse5sTimer.anim = AAP_Horse5sTimer:CreateAnimation()
			AAP_Horse5sTimer.anim:SetDuration(0.5)
			AAP_Horse5sTimer:SetLooping("REPEAT")
			AAP_Horse5sTimer:SetScript("OnLoop", function(self, event, ...)
				if (AAP_5sec_thingy == 0) then
					AAP_UpdateQuestList()
					AAP_5sec_thingy = 10
				else
					AAP_5sec_thingy = AAP_5sec_thingy - 1
				end
			end)
			AAP_Horse5sTimer:Play()
			AAP_extraTimer = AAP_CoreEventFrame:CreateAnimationGroup()
			AAP_extraTimer.anim = AAP_extraTimer:CreateAnimation()
			AAP_extraTimer.anim:SetDuration(0.1)
			AAP_extraTimer:SetLooping("REPEAT")
			AAP_extraTimer:SetScript("OnLoop", function(self, event, ...)
				AAP_UpdateQuestList()
				AAP_extraTimer:Stop()
			end)


			AAP_EquipGearTimer = AAP_CoreEventFrame:CreateAnimationGroup()
			AAP_EquipGearTimer.anim = AAP_EquipGearTimer:CreateAnimation()
			AAP_EquipGearTimer.anim:SetDuration(2)
			AAP_EquipGearTimer:SetLooping("REPEAT")
			AAP_EquipGearTimer:SetScript("OnLoop", function(self, event, ...)
				AAP_CheckSaveOldSlot()
			end)

			AAP_TaxiTimer = AAP_CoreEventFrame:CreateAnimationGroup()
			AAP_TaxiTimer.anim = AAP_TaxiTimer:CreateAnimation()
			AAP_TaxiTimer.anim:SetDuration(1)
			AAP_TaxiTimer:SetLooping("REPEAT")
			AAP_TaxiTimer:SetScript("OnLoop", function(self, event, ...)
				AAP_TaxiVar = AAP_TaxiVar + 1
				if (UnitOnTaxi("player")) then
					AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
					QNumberLocal = 0
					AAP_Reset = 0
					AAP_Plus()
					AAP_TaxiTimer:Stop()
				elseif (AAP_TaxiVar > 10) then
					AAP_TaxiTimer:Stop()
				end
			end)

			AAP_QuestAcceptTimer = AAP_CoreEventFrame:CreateAnimationGroup()
			AAP_QuestAcceptTimer.anim = AAP_QuestAcceptTimer:CreateAnimation()
			AAP_QuestAcceptTimer.anim:SetDuration(0.01)
			AAP_QuestAcceptTimer:SetLooping("REPEAT")
			AAP_QuestAcceptTimer:SetScript("OnLoop", function(self, event, ...)
				AcceptQuest()
				AAP_QuestAcceptTimer:Stop()
			end)
			AAP_QuestAcceptTimer2 = AAP_CoreEventFrame:CreateAnimationGroup()
			AAP_QuestAcceptTimer2.anim = AAP_QuestAcceptTimer2:CreateAnimation()
			AAP_QuestAcceptTimer2.anim:SetDuration(0.01)
			AAP_QuestAcceptTimer2:SetLooping("REPEAT")
			AAP_QuestAcceptTimer2:SetScript("OnLoop", function(self, event, ...)
				SelectGossipAvailableQuest(1)
				AAP_QuestAcceptTimer2:Stop()
			end)
			AAP_QuestAcceptTimer3 = AAP_CoreEventFrame:CreateAnimationGroup()
			AAP_QuestAcceptTimer3.anim = AAP_QuestAcceptTimer3:CreateAnimation()
			AAP_QuestAcceptTimer3.anim:SetDuration(0.01)
			AAP_QuestAcceptTimer3:SetLooping("REPEAT")
			AAP_QuestAcceptTimer3:SetScript("OnLoop", function(self, event, ...)
				GetQuestReward(1)
				AAP_QuestAcceptTimer3:Stop()
			end)
			AAP_QuestAcceptTimer444 = AAP_CoreEventFrame:CreateAnimationGroup()
			AAP_QuestAcceptTimer444.anim = AAP_QuestAcceptTimer444:CreateAnimation()
			AAP_QuestAcceptTimer444.anim:SetDuration(0.01)
			AAP_QuestAcceptTimer444:SetLooping("REPEAT")
			AAP_QuestAcceptTimer444:SetScript("OnLoop", function(self, event, ...)
				GetQuestReward(AAP_QRewardPicked)
				AAP_QuestAcceptTimer444:Stop()
			end)

			AAP_QuestAcceptTimer4 = AAP_CoreEventFrame:CreateAnimationGroup()
			AAP_QuestAcceptTimer4.anim = AAP_QuestAcceptTimer4:CreateAnimation()
			AAP_QuestAcceptTimer4.anim:SetDuration(0.01)
			AAP_QuestAcceptTimer4:SetLooping("REPEAT")
			AAP_QuestAcceptTimer4:SetScript("OnLoop", function(self, event, ...)
				CompleteQuest()
				AAP_QuestAcceptTimer4:Stop()
			end)
			AAP_QuestAcceptTimerMovie = AAP_CoreEventFrame:CreateAnimationGroup()
			AAP_QuestAcceptTimerMovie.anim = AAP_QuestAcceptTimerMovie:CreateAnimation()
			AAP_QuestAcceptTimerMovie.anim:SetDuration(0.5)
			AAP_QuestAcceptTimerMovie:SetLooping("REPEAT")
			AAP_QuestAcceptTimerMovie:SetScript("OnLoop", function(self, event, ...)
				print("AAP: "..AAP_Locals["Skipped cutscene"])
				CinematicFrame_CancelCinematic()
				AAP_QuestAcceptTimerMovie:Stop()
			end)
			AAP_ArrowEventAFkTimer = AAP_CoreEventFrame:CreateAnimationGroup()
			AAP_ArrowEventAFkTimer.anim = AAP_ArrowEventAFkTimer:CreateAnimation()
			AAP_ArrowEventAFkTimer.anim:SetDuration(0.1)
			AAP_ArrowEventAFkTimer:SetLooping("REPEAT")
			AAP_ArrowEventAFkTimer:SetScript("OnLoop", function(self, event, ...)
				if (AAP_AfkTimerVar > 0) then
					AAP_AfkTimerVar = AAP_AfkTimerVar - 0.1
					AAP_AfkTimerVar = floor(AAP_AfkTimerVar * 10)/10
					local aap_printtext = ""
					local aap_min = 0
					local aap_sec = AAP_AfkTimerVar
					if (aap_sec > 60) then
						aap_min = floor(aap_sec/60)
						aap_sec = aap_sec - (aap_min*60)
						if (aap_min > 9) then
							aap_printtext = aap_min .. ":"
						else
							aap_printtext = "0" .. aap_min .. ":"
						end
					end
					if (string.find(aap_sec, "(%d+).(%d+)")) then
						if (aap_sec > 10 and aap_min > 0) then
							aap_printtext = aap_printtext .. aap_sec
						elseif (aap_min > 0) then
							aap_printtext = aap_printtext .. "0" .. aap_sec
						else
							aap_printtext = aap_printtext .. aap_sec
						end
					else
						if (aap_sec > 10 and aap_min > 0) then
							aap_printtext = aap_printtext .. aap_sec .. ".0"
						elseif (aap_min > 0) then
							aap_printtext = aap_printtext .. "0" .. aap_sec .. ".0"
						else
							aap_printtext = aap_printtext .. aap_sec .. ".0"
						end
					end
					AAP_AfkFrame.Fontstring:SetText("AFK: " .. aap_printtext)
					if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]) then
						if (AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SpecialETAHide"]) then
							AAP_AfkFrame:Hide()
						else
							AAP_AfkFrame:Show()
						end
					else
						AAP_AfkFrame:Show()
					end
				else
					AAP_ArrowEventAFkTimer:Stop()
					AAP_AfkFrame:Hide()
				end
			end)
			AAP_ArrowEventAFkTimer2 = AAP_CoreEventFrame:CreateAnimationGroup()
			AAP_ArrowEventAFkTimer2.anim = AAP_ArrowEventAFkTimer2:CreateAnimation()
			AAP_ArrowEventAFkTimer2.anim:SetDuration(0.1)
			AAP_ArrowEventAFkTimer2:SetLooping("REPEAT")
			AAP_ArrowEventAFkTimer2:SetScript("OnLoop", function(self, event, ...)
				if (AAP_AfkTimerVar2 > 0) then
					AAP_AfkTimerVar2 = AAP_AfkTimerVar2 - 0.1
				else
					AAP_ArrowEventAFkTimer2:Stop()
					AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] = AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] + 1
					AAP_Reset = 0
					AAP_Plus()
				end
			end)
			AAP_ArrowEventAFkTimer2412 = AAP_CoreEventFrame:CreateAnimationGroup()
			AAP_ArrowEventAFkTimer2412.anim = AAP_ArrowEventAFkTimer2412:CreateAnimation()
			AAP_ArrowEventAFkTimer2412.anim:SetDuration(0.1)
			AAP_ArrowEventAFkTimer2412:SetLooping("REPEAT")
			AAP_ArrowEventAFkTimer2412:SetScript("OnLoop", function(self, event, ...)
				local i
				for i=1,GetMerchantNumItems() do
					local link = GetMerchantItemLink(i)
					if (link) then
						local _, _, Color, Ltype, Id, Enchant, Gem1, Gem2, Gem3, Gem4, Suffix, Unique, LinkLvl, Name = string.find(link, "|?c?f?f?(%x*)|?H?([^:]*):?(%d+):?(%d*):?(%d*):?(%d*):?(%d*):?(%d*):?(%-?%d*):?(%-?%d*):?(%d*):?(%d*):?(%-?%d*)|?h?%[?([^%[%]]*)%]?|?h?|?r?")
						if (tonumber(Id) == 160499) then
							BuyMerchantItem(i)
							MerchantFrame:Hide()
							break
						end
					end
				end

				AAP_ArrowEventAFkTimer2412:Stop()
			end)

			AAP_ArrowEventLoadinT = AAP_CoreEventFrame:CreateAnimationGroup()
			AAP_ArrowEventLoadinT.anim = AAP_ArrowEventLoadinT:CreateAnimation()
			AAP_ArrowEventLoadinT.anim:SetDuration(3)
			AAP_ArrowEventLoadinT:SetLooping("REPEAT")
			AAP_ArrowEventLoadinT:SetScript("OnLoop", function(self, event, ...)
				AAP_CreateMacro()
				AAP_UpdateILVLGear()
				AAP_ArrowEventLoadinT:Stop()
				AAP_ZoneChangeTest()
			end)
			AAP_ArrowEventLoadinT:Play()

			AAP_UpdateILVLGear()
			AAP_MakeGroupList()
			AAP_UPDQListV = AAP_UPDQListV2
			AAP_ZoneChangeTest()
			AAP_Reset = 0
			AAP_QuestDelayUpdTimer:Play()
			LoadOptionsFrame()
		end
	elseif (event=="QUEST_GREETING" and AAP_DisableAddon == 0) then
		local numAvailableQuests = 0;
		local numActiveQuests = 0;
		local lastActiveQuest = 0
		local lastAvailableQuest = 0;
		numAvailableQuests = GetNumAvailableQuests();
		numActiveQuests = GetNumActiveQuests();
		if numAvailableQuests > 0 or numActiveQuests > 0 then
			local guid = UnitGUID("target");
			if lastNPC ~= guid then
				lastActiveQuest = 1;
				lastAvailableQuest = 1;
				lastNPC = guid;
			end
			if (lastAvailableQuest > numAvailableQuests) then
				lastAvailableQuest = 1;
			end    
			for i = lastAvailableQuest, numAvailableQuests do
				lastAvailableQuest = i;
				if (AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoAccept"] == 1 and not IsControlKeyDown()) then
					SelectAvailableQuest(i);
				end
			end
		end
		if lastActiveQuest > numActiveQuests then
			lastActiveQuest = 1;
		end
if (AAP_Test_Var ~= 1) then
		if (AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandIn"] == 1 and not IsControlKeyDown()) then
			local CLi
			for CLi = 1, numActiveQuests do
				for CL_index,CL_value in pairs(AAP_ActiveQuests) do
					if (GetActiveTitle(CLi) == AAP_ActiveQuests[CL_index]["Title"] and AAP_ActiveQuests[CL_index]["Comp"] == 1) then
						SelectActiveQuest(CLi)
					end
				end
			end
		end
end
	elseif (event=="GOSSIP_SHOW" and AAP_DisableAddon == 0) then
		local arg1, arg2, arg3, arg4 = ...;
		local ActiveQuests = {GetGossipActiveQuests()}
		local ActiveQNr = GetNumGossipActiveQuests()
		local CLi
		local NumAvailableQuests = GetNumGossipAvailableQuests()
		local AvailableQuests = {GetGossipAvailableQuests()}
if (AAP_Test_Var ~= 1) then
		if (ActiveQuests and AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandIn"] == 1 and not IsControlKeyDown()) then
			for CLi = 1, ActiveQNr do
				if (ActiveQuests[(((CLi-1) * 6)+4)] == true) then
					SelectGossipActiveQuest(CLi)
				end
			end
		end
end
		if (NumAvailableQuests > 0 and AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoAccept"] == 1 and not IsControlKeyDown()) then
			if (AAP1 and AAP1[AAP_Realm] and AAP1[AAP_Realm][AAP_Name] and AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone] and AAP_Quests and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]] and AAP_Quests[AAP1[AAP_Realm][AAP_Name][AAP_ActiveZone]]["SpecialPickupOrder"]) then
				SelectGossipAvailableQuest(2)
			else
				SelectGossipAvailableQuest(1)
				AAP_QuestAcceptTimer2:Play()
			end
		end
	elseif (event=="QUEST_DETAIL" and AAP_DisableAddon == 0) then
		if (GetQuestID() and (AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoAccept"] == 1) and (not IsControlKeyDown()) and (GetQuestID() ~= 50476) and (GetQuestID() ~= 52058) and (53372 ~= GetQuestID()) and (52946 ~= GetQuestID())) then
			AAP_QuestAcceptTimer:Play()
		end
	end
	if (event=="QUEST_PROGRESS" and AAP_DisableAddon == 0) then
		if (AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandIn"] == 1 and not IsControlKeyDown()) then
if (AAP_Test_Var ~= 1) then
			AAP_QuestAcceptTimer4:Play()
end
		end
	end
	if (event=="MERCHANT_SHOW" and AAP_DisableAddon == 0) then
		if (AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoVendor"] == 1) then
			local AAPtotal = 0
			for myBags = 0,4 do
				for bagSlots = 1, GetContainerNumSlots(myBags) do
					local CurrentItemLink = GetContainerItemLink(myBags, bagSlots)
					if CurrentItemLink then
						local _, _, itemRarity, _, _, _, _, _, _, _, itemSellPrice = GetItemInfo(CurrentItemLink)
						local _, itemCount = GetContainerItemInfo(myBags, bagSlots)
						if itemRarity == 0 and itemSellPrice ~= 0 then
							AAPtotal = AAPtotal + (itemSellPrice * itemCount)
							UseContainerItem(myBags, bagSlots)
						end
					end
				end
			end
			if AAPtotal ~= 0 then
				print("AAP: Items were sold for "..GetCoinTextureString(AAPtotal))
			end
		end


		if (AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoRepair"] == 1) then
			if (CanMerchantRepair()) then	
				repairAllCost, canRepair = GetRepairAllCost();
				if (canRepair and repairAllCost > 0) then
					guildRepairedItems = false
					if (IsInGuild() and CanGuildBankRepair()) then
						local amount = GetGuildBankWithdrawMoney()
						local guildBankMoney = GetGuildBankMoney()
						amount = amount == -1 and guildBankMoney or min(amount, guildBankMoney)
						if (amount >= repairAllCost) then
							RepairAllItems(true);
							guildRepairedItems = true
							DEFAULT_CHAT_FRAME:AddMessage("AAP: Equipment has been repaired by your Guild")
						end
					end
					if (repairAllCost <= GetMoney() and not guildRepairedItems) then
						RepairAllItems(false);
						print("AAP: Equipment has been repaired for "..GetCoinTextureString(repairAllCost))
					end
				end
			end
		end
	end
	if (event=="QUEST_COMPLETE") then
		if (GetNumQuestChoices() > 1 and AAP_DisableAddon == 0) then
			if (AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandInChoice"] == 1) then
				local AAPTempGearList = {}
				local isweaponz = 0
				local AAPColorof = 0
				for h=1, GetNumQuestChoices() do
					local _, _, ItemRarityz, _, _, _, _, _, SpotName = GetItemInfo(GetQuestItemLink("choice", h))
					local ilvl = GetDetailedItemLevelInfo(GetQuestItemLink("choice", h))
					if (AAP_GearIlvlList[SpotName]) then
						if (ItemRarityz > 2) then
							AAPColorof = ItemRarityz
						end
						AAPTempGearList[h] = ilvl - AAP_GearIlvlList[SpotName]
						if (SpotName == "INVTYPE_WEAPON" or SpotName == "INVTYPE_SHIELD" or SpotName == "INVTYPE_2HWEAPON" or SpotName == "INVTYPE_WEAPONMAINHAND" or SpotName == "INVTYPE_WEAPONOFFHAND" or SpotName == "INVTYPE_HOLDABLE" or SpotName == "INVTYPE_RANGED" or SpotName == "INVTYPE_THROWN" or SpotName == "INVTYPE_RANGEDRIGHT" or SpotName == "INVTYPE_RELIC") then
							isweaponz = 1
						end
					end
				end
				if (AAPColorof > 2) then
				elseif (isweaponz == 1) then

				else
					local PickOne = 0
					local PickOne2 = -99999
					for AAP_indexx,AAP_valuex in pairs(AAPTempGearList) do
						if (AAP_valuex > PickOne2) then
							PickOne = AAP_indexx
							PickOne2 = AAP_valuex
						end
					end
					if (PickOne > 0) then
						AAP_QRewardPicked = PickOne
						AAP_QuestAcceptTimer444:Play()
					end
				end
			end
		else
			if (GetXPExhaustion() == false and ((GetQuestID() == 51796) or (GetQuestID() == 51795))) then
				print("AAP: Save Quest for Release!")
				CloseQuest()
			elseif (AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandIn"] == 1 and not IsControlKeyDown() and AAP_DisableAddon == 0) then
				AAP_QuestAcceptTimer3:Play()
			end
		end
	end
end)

