local ZTA=ZygorTalentAdvisor
if not ZTA then return end

local AceGUI = LibStub("AceGUI-3.0")

local L = ZGV.L

ZTA.BuildSelect = {}

function ZTA:PopoutSetup()
	TalentFrame_LoadUI()

	ZygorTalentAdvisorPopoutButton:SetParent("PlayerTalentFrame")
	PlayerTalentFrame.advisorbutton = ZygorTalentAdvisorPopoutButton
	PlayerTalentFrame.advisorbutton:ClearAllPoints()
	PlayerTalentFrame.advisorbutton:SetPoint("TOPLEFT",PlayerTalentFrame,"TOPRIGHT",-2,-140)

	ZygorTalentAdvisorPopout:SetParent("PlayerTalentFrame")
	PlayerTalentFrame.advisorpopout = ZygorTalentAdvisorPopout
	PlayerTalentFrame.advisorpopout:ClearAllPoints()
	PlayerTalentFrame.advisorpopout:SetPoint("TOPLEFT",PlayerTalentFrame,"TOPRIGHT",-10,-130)

	PlayerTalentFrame.advisorpopout.Title:SetText(L['opt_group_talentsystem'])
	PlayerTalentFrame.advisorpopout.accept:SetText(L['talentpopup_accept'])
	PlayerTalentFrame.advisorpopout.preview:SetText(L['talentpopup_preview'])
	PlayerTalentFrame.advisorpopout.configure:SetText(L['talentpopup_configure'])

	ZygorTalentAdvisorPopoutAcceptButton:Hide()
	ZygorTalentAdvisorPopoutPreviewButton:Hide()

	local popoutSelect=AceGUI:Create("Dropdown")

	popoutSelect.frame:SetParent(PlayerTalentFrame.advisorpopout)
	popoutSelect.text:SetJustifyH("LEFT")
		popoutSelect:SetWidth(200)
		popoutSelect:SetText(L['talentpopup_build'])
	popoutSelect.pullout.frame:SetParent(popoutSelect.dropdown)

	popoutSelect:SetPoint("CENTER",PlayerTalentFrame.advisorpopout,"TOP",0,-40)

	ZTA.BuildSelect.DropdownMain=popoutSelect.dropdown
	ZTA.BuildSelect.Dropdown=popoutSelect
	ZTA.BuildSelect.Text=popoutSelect.text
	ZTA.BuildSelect.Pullout=popoutSelect.pullout
	ZTA.BuildSelect.Button=popoutSelect.button

	if next(ZTA.BuildsToAdd) then
		popoutSelect:SetList(ZTA.BuildsToAdd)
		popoutSelect:SetCallback("OnValueChanged",SelectionItem_Click)
	else 
		popoutSelect:SetList({none="none"})
	end 
end

function SelectionItem_Click(frame,event,value)
	if (value~="none") then ZTA:SetCurrentBuild(value) end
end

function ZTA:ShowButton()
	ZGV:Debug("ZTA:ShowButton")
	ZygorTalentAdvisorPopout_Hide()
	PlayerTalentFrame.advisorbutton:Show()
end

function ZygorTalentAdvisorPopout_Hide()
	PlayerTalentFrame.advisorpopout:Hide()
	ZTA.BuildSelect.Button.obj.open=nil
	ZTA.BuildSelect.Pullout.frame:Hide()

	PlayerTalentFrame.advisorbutton:ClearAllPoints()
	PlayerTalentFrame.advisorbutton:SetPoint("TOPLEFT",PlayerTalentFrame,"TOPRIGHT",-2,-140)

	PlaySound("igCharacterInfoTab")

	ZTA:ResetAllTalentIcons()
end

function ZygorTalentAdvisorPopout_Show()
	PlayerTalentFrame.advisorpopout:ClearAllPoints()
	PlayerTalentFrame.advisorpopout:SetPoint("TOPLEFT",PlayerTalentFrame,"TOPRIGHT",-10,-130)
	PlayerTalentFrame.advisorpopout:Show()

	PlayerTalentFrame.advisorbutton:ClearAllPoints()
	PlayerTalentFrame.advisorbutton:SetPoint("TOPLEFT",PlayerTalentFrame,"TOPRIGHT",-14+PlayerTalentFrame.advisorpopout:GetWidth(),-140)

	if ZTA.currentBuild  then
		-- this is retarded...
		for t,title in pairs(ZTA.BuildsToAdd) do if title==ZTA.currentBuild.title then ZTA.BuildSelect.Dropdown:SetValue(t) end end
	end

	PlaySound("igCharacterInfoTab")

	ZTA:CompareSpec()
end