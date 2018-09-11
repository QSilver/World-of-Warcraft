--[[
Questionably Epic Mythic+ Dungeon Tips
Configuration Page

Version: 4.5
Developed by: Voulk
Contact: 
	Discord: Voulk#1858
	Email: itsvoulk@gmail.com
	

Future Versions - Engine
 - Tooltips on all config options
 - Lock button on frame
 - Alpha channel config
 - /QE Slash command to bring up config.
 - Add an icon to fluff
 
Future Versions - Content
 - All BFA dungeons
 - Possible Raid version for LFR/N/H

]]--

local _, addon = ...;

-- Create a frame
function createQEFrame() 
	--addon.isShowing = true

	-- Create slim header panel to hold title.
	QE_HeaderPanel = CreateFrame("Frame", "QE_HeaderFrame", UIParent)
	QE_HeaderPanel:SetFrameStrata("Background")
	QE_HeaderPanel:SetWidth(450)
	QE_HeaderPanel:SetHeight(22)
	QE_HeaderPanel:EnableMouse(true)
	QE_HeaderPanel:SetMovable(true)
	QE_HeaderPanel:RegisterForDrag("LeftButton")
	QE_HeaderPanel:SetScript("OnDragStart", function(self) self:StartMoving() end)
	QE_HeaderPanel:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)

	QE_HeaderPanelTexture = QE_HeaderPanel:CreateTexture(nil, "Background")
	--QE_TipPanelTexture:SetWidth(128)
	--QE_TipPanelTexture:SetHeight(64)
	QE_HeaderPanelTexture:ClearAllPoints()
	QE_HeaderPanelTexture:SetColorTexture(35/255, 35/255, 35/255, 0.55)
	QE_HeaderPanelTexture:SetAllPoints(QE_HeaderPanel)

	QE_HeaderPanel:SetPoint("CENTER", UIParent)
	QE_HeaderPanel:Show()
	QE_HeaderPanel:SetClampedToScreen(true)

	headerQE = QE_HeaderPanel:CreateFontString("QE_HeaderText", nil, nil)
	headerQE:SetPoint("TOPLEFT", 5, -4)
	headerQE:SetFont("Fonts\\SKURRI.TTF", 16, "OUTLINE")
	headerQE:SetTextColor(239/255, 191/255, 90/255)
	headerQE:SetJustifyH("LEFT")
	headerQE:SetJustifyV("CENTER")
	headerQE:SetText("Questionably Epic Dungeon Tips")



	QE_TipPanel = CreateFrame("Frame", "QE_TipFrame", QE_HeaderPanel)
	QE_TipPanel:SetFrameStrata("Background")
	QE_TipPanel:SetWidth(450)
	QE_TipPanel:SetHeight(175)


	QE_TipPanelTexture = QE_TipPanel:CreateTexture(nil, "Background")
	--QE_TipPanelTexture:SetWidth(128)
	--QE_TipPanelTexture:SetHeight(64)
	QE_TipPanelTexture:ClearAllPoints()
	QE_TipPanelTexture:SetColorTexture(55/255, 55/255, 55/255, 0.55)
	QE_TipPanelTexture:SetAllPoints(QE_TipPanel)

	QE_TipPanel:SetPoint("TOPLEFT", QE_HeaderPanel, "BOTTOMLEFT", 0, 0)
	QE_TipPanel:Show()

	QE_MobName = QE_TipPanel:CreateFontString("QE_MobName", nil, nil)
	QE_MobName:SetPoint("TOPLEFT", 5, -5)
	QE_MobName:SetFont("Fonts\\ARIALN.ttf", 16, "OUTLINE")
	QE_MobName:SetJustifyH("LEFT")
	QE_MobName:SetJustifyV("TOP")
	QE_MobName:SetText(" ")

	-- Frame Tip Text
	QE_TipText = QE_TipPanel:CreateFontString("QE_TipText", nil, GameFontNormal)
	QE_TipText:SetPoint("TOPLEFT", QE_MobName, "BOTTOMLEFT", 0, -3)
	--QE_TipText:SetFont("Fonts\\ARIALN.ttf", 14, nil)
	QE_TipText:SetFontObject(GameFontWhite);
	local p,_,_ = QE_TipText:GetFont();
	QE_TipText:SetFont(p, 12, nil)
	QE_TipText:SetWidth(445)
	QE_TipText:SetJustifyH("LEFT")
	QE_TipText:SetJustifyV("TOP")
	QE_TipText:SetText("")


	QE_ConfigBtn = CreateFrame("Button", "QE_ConfigButton", QE_HeaderPanel)
	QE_ConfigBtn:SetFrameLevel(5)
	QE_ConfigBtn:ClearAllPoints()
	QE_ConfigBtn:SetHeight(16)
	QE_ConfigBtn:SetWidth(16)
	QE_ConfigBtn:SetNormalTexture("Interface\\Buttons\\UI-OptionsButton")
	QE_ConfigBtn:SetHighlightTexture("Interface\\Buttons\\UI-OptionsButton", 1.0)
	QE_ConfigBtn:SetAlpha(0.45)
	QE_ConfigBtn:SetPoint("TOPRIGHT", QE_HeaderPanel, "TOPRIGHT", -4, -2)

	QE_ConfigBtn:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	QE_ConfigBtn:SetScript("OnClick", function()
		InterfaceOptionsFrame_OpenToCategory(addon.configPanel)
		InterfaceOptionsFrame_OpenToCategory(addon.configPanel)
		
	end)
	QE_ConfigBtn:Show()
	
	--[[
	minimizeBtn = CreateFrame("Button", "minimize", QE_HeaderPanel)
	minimizeBtn:SetFrameLevel(5)
	minimizeBtn:ClearAllPoints()
	minimizeBtn:SetHeight(30)
	minimizeBtn:SetWidth(30)
	minimizeBtn:SetNormalTexture("Interface\\Buttons\\UI-MultiCheck-Up")
	minimizeBtn:SetHighlightTexture("Interface\\Buttons\\UI-MultiCheck-Up", 1.0)
	minimizeBtn:SetAlpha(0.45)
	minimizeBtn:SetPoint("TOPRIGHT", QE_HeaderPanel, "TOPRIGHT", -17, 5)
	minimizeBtn:SetScript("OnClick", function()
		addon:setMinimized()
		
	end)
	
	minimizeBtn:Show()
	]]--
	
	QE_HeaderPanel:RegisterEvent("PLAYER_ENTERING_WORLD")
	QE_HeaderPanel:RegisterEvent("PLAYER_TARGET_CHANGED")
	QE_HeaderPanel:RegisterEvent("ENCOUNTER_START")
	QE_HeaderPanel:RegisterEvent("PLAYER_REGEN_ENABLED")
	QE_HeaderPanel:RegisterEvent("INSTANCE_ENCOUNTER_ENGAGE_UNIT")
	QE_HeaderPanel:SetScript("OnEvent", function(self, event, ...)

		if event == "PLAYER_ENTERING_WORLD" then
			C_Timer.After(2, function() addon:setEnabled() end)
			--addon:setEnabled()
		elseif event == "PLAYER_TARGET_CHANGED" then
			--print("Player target changed" .. QEConfig.TargetTrigger .. QE_onBoss)
			if QEConfig.TargetTrigger == "Show targeted mob" and not QE_onBoss then addon:getTarget("target") end	
			
		elseif event == "INSTANCE_ENCOUNTER_ENGAGE_UNIT" and UnitExists("boss1") then
			--QE_onBoss = true
			
			if QEConfig.ShowFrame == "Show in separate frame" then 
				addon:colorFrame(QE_onBoss)
				addon:getTarget("boss1") 
			end
			
		elseif event == "PLAYER_REGEN_ENABLED" then
			QE_onBoss = false
			addon:colorFrame(QE_onBoss)
		end
		
		
	end)
end



--[[
lockBtn = CreateFrame("Button", "lock", QE_HeaderPanel)
lockBtn:SetFrameLevel(5)
lockBtn:ClearAllPoints()
lockBtn:SetHeight(25)
lockBtn:SetWidth(25)
lockBtn:SetNormalTexture("Interface\\Buttons\\LockButton-Unlocked-Up")
lockBtn:SetHighlightTexture("Interface\\Buttons\\LockButton-Unlocked-Up", 1.0)
lockBtn:SetAlpha(0.35)
lockBtn:SetPoint("TOPRIGHT", QE_HeaderPanel, "TOPRIGHT", -17, 0)

lockBtn:RegisterForClicks("LeftButtonUp", "RightButtonUp")
lockBtn:SetScript("OnClick", function()
	InterfaceOptionsFrame_OpenToCategory(configPanel)
	InterfaceOptionsFrame_OpenToCategory(configPanel)
	
end)
lockBtn:Show()
]]--



function addon:setEnabled()
	local inInstance, instanceType = IsInInstance()
	
	QE_MobName:SetText("")
	QE_TipText:SetText("")
	
	--print(C_Map.GetBestMapForUnit("player"))
	--print(addon.acceptedDungeons[C_Map.GetBestMapForUnit("player")])
	if inInstance and instanceType == "party" and QEConfig.ShowFrame == "Show in separate frame" and addon.acceptedDungeons[C_Map.GetBestMapForUnit("player")] then
		--local mapID = C_Map.GetBestMapForUnit("player")
		--if not acceptedDungeons[mapID] then return end	
		--local isShown = QE_TipPanel:IsVisible()
		--print(isShown)
		QE_HeaderPanel:Show()
		
		--if not isShown then
		--	QE_TipPanel:Hide()
		--end
	else
		QE_HeaderPanel:Hide()
	end
	
end

--[[
function addon:setMinimized(forceShow)
	if not QE_TipPanel:IsVisible() or forceShow then
		QE_TipPanel:Show()
	else
		--QE_TipPanel:Hide()
		QE_TipPanel:SetHeight(25)
		QE_TipText:Hide()
	end
end
		]]--
		
function addon:setDropdownEnabled()
	if QEConfig.ShowFrame == "Show in separate frame" then
		--targetDD:Show()
		addon.targetFS:Show()
		addon.chkTarget:Show()
		
	else
		--targetDD:Hide()
		addon.targetFS:Hide()
		addon.chkTarget:Hide()
	end

end


function addon:colorFrame(QE_onBoss) 
	if QE_onBoss then		
		QE_TipPanelTexture:SetColorTexture(100/255, 80/255, 0/255, 0.55)	
		QE_HeaderPanelTexture:SetColorTexture(70/255, 50/255, 0/255, 0.55)		
	else
		QE_TipPanelTexture:SetColorTexture(55/255, 55/255, 55/255, 0.55)	
		QE_HeaderPanelTexture:SetColorTexture(35/255, 35/255, 35/255, 0.55)
	end
end



QE_onBoss = false

createQEFrame()


