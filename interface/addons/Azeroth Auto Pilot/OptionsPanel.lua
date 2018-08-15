local AAP_Version = tonumber(GetAddOnMetadata("Azeroth Auto Pilot", "Version"))
AAP.AAP_panel = CreateFrame( "Frame", "CLPanelFrame", UIParent)
AAP.AAP_panel.name = "Azeroth Auto Pilot"
InterfaceOptions_AddCategory(AAP.AAP_panel)
AAP_panel = {}
AAP_panel.title = CreateFrame("SimpleHTML",nil,AAP.AAP_panel)
AAP_panel.title:SetWidth(500)
AAP_panel.title:SetHeight(20)
AAP_panel.title:SetPoint("TOPLEFT", AAP.AAP_panel, 0,-30)
AAP_panel.title:SetFontObject("GameFontHighlightLarge")
AAP_panel.title:SetText("Azeroth Auto Pilot - v" .. AAP_Version)
AAP_ImportI = 0

AAP_panel.Button1 = CreateFrame("Button", "ZPButton2", AAP.AAP_panel)
AAP_panel.Button1:SetPoint("TOPLEFT", AAP.AAP_panel, "TOPLEFT", 120, -100)
AAP_panel.Button1:SetWidth(70)
AAP_panel.Button1:SetHeight(30)
AAP_panel.Button1:SetText("Load")
AAP_panel.Button1:SetNormalFontObject("GameFontNormal")
AAP_panel.Button1ntex = AAP_panel.Button1:CreateTexture()
AAP_panel.Button1ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
AAP_panel.Button1ntex:SetTexCoord(0, 0.625, 0, 0.6875)
AAP_panel.Button1ntex:SetAllPoints()	
AAP_panel.Button1:SetNormalTexture(AAP_panel.Button1ntex)
AAP_panel.Button1htex = AAP_panel.Button1:CreateTexture()
AAP_panel.Button1htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
AAP_panel.Button1htex:SetTexCoord(0, 0.625, 0, 0.6875)
AAP_panel.Button1htex:SetAllPoints()
AAP_panel.Button1:SetHighlightTexture(AAP_panel.Button1htex)
AAP_panel.Button1ptex = AAP_panel.Button1:CreateTexture()
AAP_panel.Button1ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
AAP_panel.Button1ptex:SetTexCoord(0, 0.625, 0, 0.6875)
AAP_panel.Button1ptex:SetAllPoints()
AAP_panel.Button1:SetPushedTexture(AAP_panel.Button1ptex)
AAP_panel.Button1:SetScript("OnClick", function(self, arg1)
	InterfaceOptionsFrame:Hide()
	HideUIPanel(GameMenuFrame)
	if (AAP_DisableAddon == 0) then
		AAP.OptionsFrame.MainFrame:Show()
	else
		print("AAP: BFA not detected")
	end
end)
function LoadOptionsFrame()
	AAP.OptionsFrame = {}
	AAP.OptionsFrame.MainFrame = CreateFrame("frame", "AAP_OptionsMainFrame",  UIParent)
	AAP.OptionsFrame.MainFrame:SetWidth(450)
	AAP.OptionsFrame.MainFrame:SetHeight(360)
	AAP.OptionsFrame.MainFrame:SetFrameStrata("MEDIUM")
	AAP.OptionsFrame.MainFrame:SetPoint("CENTER",  UIParent, "CENTER",0,0)
	AAP.OptionsFrame.MainFrame:SetMovable(true)
	AAP.OptionsFrame.MainFrame:EnableMouse(true)
	AAP.OptionsFrame.MainFrame:SetBackdrop( { 
		bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true, tileSize = 10, edgeSize = 10, insets = { left = 2, right = 2, top = 2, bottom = 2 }
	});
	AAP.OptionsFrame.MainFrame:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" and not AAP.OptionsFrame.MainFrame.isMoving then
			AAP.OptionsFrame.MainFrame:StartMoving();
			AAP.OptionsFrame.MainFrame.isMoving = true;
		end
	end)
	AAP.OptionsFrame.MainFrame:SetScript("OnMouseUp", function(self, button)
		if button == "LeftButton" and AAP.OptionsFrame.MainFrame.isMoving then
			AAP.OptionsFrame.MainFrame:StopMovingOrSizing();
			AAP.OptionsFrame.MainFrame.isMoving = false;
		end
	end)
	AAP.OptionsFrame.MainFrame:SetScript("OnHide", function(self)
		if ( AAP.OptionsFrame.MainFrame.isMoving ) then
			AAP.OptionsFrame.MainFrame:StopMovingOrSizing();
			AAP.OptionsFrame.MainFrame.isMoving = false;
		end
	end)
	AAP.OptionsFrame.MainFrame:Hide()

	AAP.OptionsFrame.FontString1 = AAP.OptionsFrame.MainFrame:CreateFontString("AAPSettingsFS1","ARTWORK", "ChatFontNormal")
	AAP.OptionsFrame.FontString1:SetParent(AAP.OptionsFrame.MainFrame)
	AAP.OptionsFrame.FontString1:SetPoint("TOP",AAP.OptionsFrame.MainFrame,"TOP",0,0)
	AAP.OptionsFrame.FontString1:SetWidth(240)
	AAP.OptionsFrame.FontString1:SetHeight(20)
	AAP.OptionsFrame.FontString1:SetFontObject("GameFontHighlightLarge")
	AAP.OptionsFrame.FontString1:SetText("Azeroth Auto Pilot - v" .. AAP_Version)
	AAP.OptionsFrame.FontString1:SetTextColor(1, 1, 0)

	AAP.OptionsFrame.CheckButton1 = CreateFrame("CheckButton", "CLxCheckButton1", AAP.OptionsFrame.MainFrame, "ChatConfigCheckButtonTemplate");
	AAP.OptionsFrame.CheckButton1:SetPoint("TOPLEFT", AAP.OptionsFrame.MainFrame, "TOPLEFT", 10, -50)
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["CutScene"] == 0) then
		AAP.OptionsFrame.CheckButton1:SetChecked(false)
	else
		AAP.OptionsFrame.CheckButton1:SetChecked(true)
	end
	getglobal(AAP.OptionsFrame.CheckButton1:GetName() .. 'Text'):SetText(": "..AAP_Locals["Skipped cutscene"])
	getglobal(AAP.OptionsFrame.CheckButton1:GetName() .. 'Text'):SetTextColor(1, 1, 1)
	AAP.OptionsFrame.CheckButton1:SetScript("OnClick", function()
		if (AAP.OptionsFrame.CheckButton1:GetChecked() == true) then
			AAP1[AAP_Realm][AAP_Name]["Settings"]["CutScene"] = 1
		else
			AAP1[AAP_Realm][AAP_Name]["Settings"]["CutScene"] = 0
		end
	end)

	AAP.OptionsFrame.CheckButton2 = CreateFrame("CheckButton", "CLxCheckButton2", AAP.OptionsFrame.MainFrame, "ChatConfigCheckButtonTemplate");
	AAP.OptionsFrame.CheckButton2:SetPoint("TOPLEFT", AAP.OptionsFrame.MainFrame, "TOPLEFT", 10, -70)
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoAccept"] == 0) then
		AAP.OptionsFrame.CheckButton2:SetChecked(false)
	else
		AAP.OptionsFrame.CheckButton2:SetChecked(true)
	end
	getglobal(AAP.OptionsFrame.CheckButton2:GetName() .. 'Text'):SetText(": "..AAP_Locals["Accept Quest"])
	getglobal(AAP.OptionsFrame.CheckButton2:GetName() .. 'Text'):SetTextColor(1, 1, 1)
	AAP.OptionsFrame.CheckButton2:SetScript("OnClick", function()
		if (AAP.OptionsFrame.CheckButton2:GetChecked() == true) then
			AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoAccept"] = 1
		else
			AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoAccept"] = 0
		end
	end)

	AAP.OptionsFrame.CheckButton3 = CreateFrame("CheckButton", "CLxCheckButton3", AAP.OptionsFrame.MainFrame, "ChatConfigCheckButtonTemplate");
	AAP.OptionsFrame.CheckButton3:SetPoint("TOPLEFT", AAP.OptionsFrame.MainFrame, "TOPLEFT", 10, -90)
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandIn"] == 0) then
		AAP.OptionsFrame.CheckButton3:SetChecked(false)
	else
		AAP.OptionsFrame.CheckButton3:SetChecked(true)
	end
	getglobal(AAP.OptionsFrame.CheckButton3:GetName() .. 'Text'):SetText(": "..AAP_Locals["Turn in Quest"])
	getglobal(AAP.OptionsFrame.CheckButton3:GetName() .. 'Text'):SetTextColor(1, 1, 1)
	AAP.OptionsFrame.CheckButton3:SetScript("OnClick", function()
		if (AAP.OptionsFrame.CheckButton3:GetChecked() == true) then
			AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandIn"] = 1
		else
			AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandIn"] = 0
		end
	end)




	AAP.OptionsFrame.CheckButton10 = CreateFrame("CheckButton", "CLxCheckButton10", AAP.OptionsFrame.MainFrame, "ChatConfigCheckButtonTemplate");
	AAP.OptionsFrame.CheckButton10:SetPoint("TOPLEFT", AAP.OptionsFrame.MainFrame, "TOPLEFT", 10, -110)
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoVendor"] == 0) then
		AAP.OptionsFrame.CheckButton10:SetChecked(false)
	else
		AAP.OptionsFrame.CheckButton10:SetChecked(true)
	end
	getglobal(AAP.OptionsFrame.CheckButton10:GetName() .. 'Text'):SetText(": "..AAP_Locals["AutoVendor"])
	getglobal(AAP.OptionsFrame.CheckButton10:GetName() .. 'Text'):SetTextColor(1, 1, 1)
	AAP.OptionsFrame.CheckButton10:SetScript("OnClick", function()
		if (AAP.OptionsFrame.CheckButton10:GetChecked() == true) then
			AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoVendor"] = 1
		else
			AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoVendor"] = 0
		end
	end)

	AAP.OptionsFrame.CheckButton11 = CreateFrame("CheckButton", "CLxCheckButton11", AAP.OptionsFrame.MainFrame, "ChatConfigCheckButtonTemplate");
	AAP.OptionsFrame.CheckButton11:SetPoint("TOPLEFT", AAP.OptionsFrame.MainFrame, "TOPLEFT", 10, -130)
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoRepair"] == 0) then
		AAP.OptionsFrame.CheckButton11:SetChecked(false)
	else
		AAP.OptionsFrame.CheckButton11:SetChecked(true)
	end
	getglobal(AAP.OptionsFrame.CheckButton11:GetName() .. 'Text'):SetText(": "..AAP_Locals["AutoRepair"])
	getglobal(AAP.OptionsFrame.CheckButton11:GetName() .. 'Text'):SetTextColor(1, 1, 1)
	AAP.OptionsFrame.CheckButton11:SetScript("OnClick", function()
		if (AAP.OptionsFrame.CheckButton11:GetChecked() == true) then
			AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoRepair"] = 1
		else
			AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoRepair"] = 0
		end
	end)

	AAP.OptionsFrame.CheckButton12 = CreateFrame("CheckButton", "CLxCheckButton12", AAP.OptionsFrame.MainFrame, "ChatConfigCheckButtonTemplate");
	AAP.OptionsFrame.CheckButton12:SetPoint("TOPLEFT", AAP.OptionsFrame.MainFrame, "TOPLEFT", 10, -150)
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["ShowGroup"] == 0) then
		AAP.OptionsFrame.CheckButton12:SetChecked(false)
	else
		AAP.OptionsFrame.CheckButton12:SetChecked(true)
	end
	getglobal(AAP.OptionsFrame.CheckButton12:GetName() .. 'Text'):SetText(": "..AAP_Locals["ShowGroup"])
	getglobal(AAP.OptionsFrame.CheckButton12:GetName() .. 'Text'):SetTextColor(1, 1, 1)
	AAP.OptionsFrame.CheckButton12:SetScript("OnClick", function()
		if (AAP.OptionsFrame.CheckButton12:GetChecked() == true) then
			AAP1[AAP_Realm][AAP_Name]["Settings"]["ShowGroup"] = 1
		else
			AAP1[AAP_Realm][AAP_Name]["Settings"]["ShowGroup"] = 0
		end
	end)


	AAP.OptionsFrame.CheckButton5 = CreateFrame("CheckButton", "CLxCheckButton5", AAP.OptionsFrame.MainFrame, "ChatConfigCheckButtonTemplate");
	AAP.OptionsFrame.CheckButton5:SetPoint("TOPLEFT", AAP.OptionsFrame.MainFrame, "TOPLEFT", 10, -170)
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandInChoice"] == 0) then
		AAP.OptionsFrame.CheckButton5:SetChecked(false)
	else
		AAP.OptionsFrame.CheckButton5:SetChecked(true)
	end
	getglobal(AAP.OptionsFrame.CheckButton5:GetName() .. 'Text'):SetText(": "..AAP_Locals["Choose Reward Ilvl"])
	getglobal(AAP.OptionsFrame.CheckButton5:GetName() .. 'Text'):SetTextColor(1, 1, 1)
	AAP.OptionsFrame.CheckButton5:SetScript("OnClick", function()
		if (AAP.OptionsFrame.CheckButton5:GetChecked() == true) then
			AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandInChoice"] = 1
		else
			AAP1[AAP_Realm][AAP_Name]["Settings"]["AutoHandInChoice"] = 0
		end
	end)

	AAP.OptionsFrame.CheckButton7 = CreateFrame("CheckButton", "CLxCheckButton7", AAP.OptionsFrame.MainFrame, "ChatConfigCheckButtonTemplate");
	AAP.OptionsFrame.CheckButton7:SetPoint("TOPLEFT", AAP.OptionsFrame.MainFrame, "TOPLEFT", 10, -210)
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerShow"] == 0) then
		AAP.OptionsFrame.CheckButton7:SetChecked(false)
	else
		AAP.OptionsFrame.CheckButton7:SetChecked(true)
	end
	getglobal(AAP.OptionsFrame.CheckButton7:GetName() .. 'Text'):SetText(": "..AAP_Locals["BannerShow"])
	getglobal(AAP.OptionsFrame.CheckButton7:GetName() .. 'Text'):SetTextColor(1, 1, 1)
	AAP.OptionsFrame.CheckButton7:SetScript("OnClick", function()
		if (AAP.OptionsFrame.CheckButton7:GetChecked() == true) then
			AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerShow"] = 1
			AAP.Banners.BannersFrame.Frame:Show()
		else
			AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerShow"] = 0
			AAP.Banners.BannersFrame.Frame:Hide()
		end
	end)

	AAP.OptionsFrame.CheckButton8 = CreateFrame("CheckButton", "CLxCheckButton8", AAP.OptionsFrame.MainFrame, "ChatConfigCheckButtonTemplate");
	AAP.OptionsFrame.CheckButton8:SetPoint("TOPLEFT", AAP.OptionsFrame.MainFrame, "TOPLEFT", 10, -230)
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["Lock"] == 0) then
		AAP.OptionsFrame.CheckButton8:SetChecked(false)
	else
		AAP.OptionsFrame.CheckButton8:SetChecked(true)
	end
	getglobal(AAP.OptionsFrame.CheckButton8:GetName() .. 'Text'):SetText(": "..AAP_Locals["Lock QuestList"])
	getglobal(AAP.OptionsFrame.CheckButton8:GetName() .. 'Text'):SetTextColor(1, 1, 1)
	AAP.OptionsFrame.CheckButton8:SetScript("OnClick", function()
		if (AAP.OptionsFrame.CheckButton8:GetChecked() == true) then
			AAP1[AAP_Realm][AAP_Name]["Settings"]["Lock"] = 1
		else
			AAP1[AAP_Realm][AAP_Name]["Settings"]["Lock"] = 0
		end
	end)

	AAP.OptionsFrame.CheckButton9 = CreateFrame("CheckButton", "CLxCheckButton9", AAP.OptionsFrame.MainFrame, "ChatConfigCheckButtonTemplate");
	AAP.OptionsFrame.CheckButton9:SetPoint("TOPLEFT", AAP.OptionsFrame.MainFrame, "TOPLEFT", 10, -250)
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["LockArrow"] == 0) then
		AAP.OptionsFrame.CheckButton9:SetChecked(false)
	else
		AAP.OptionsFrame.CheckButton9:SetChecked(true)
	end
	getglobal(AAP.OptionsFrame.CheckButton9:GetName() .. 'Text'):SetText(": "..AAP_Locals["Lock Arrow"])
	getglobal(AAP.OptionsFrame.CheckButton9:GetName() .. 'Text'):SetTextColor(1, 1, 1)
	AAP.OptionsFrame.CheckButton9:SetScript("OnClick", function()
		if (AAP.OptionsFrame.CheckButton9:GetChecked() == true) then
			AAP1[AAP_Realm][AAP_Name]["Settings"]["LockArrow"] = 1
		else
			AAP1[AAP_Realm][AAP_Name]["Settings"]["LockArrow"] = 0
		end
	end)

	AAP.OptionsFrame.CheckButton13 = CreateFrame("CheckButton", "CLxCheckButton13", AAP.OptionsFrame.MainFrame, "ChatConfigCheckButtonTemplate");
	AAP.OptionsFrame.CheckButton13:SetPoint("TOPLEFT", AAP.OptionsFrame.MainFrame, "TOPLEFT", 10, -275)
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["ShowArrow"] == 0) then
		AAP.OptionsFrame.CheckButton13:SetChecked(false)
	else
		AAP.OptionsFrame.CheckButton13:SetChecked(true)
	end
	getglobal(AAP.OptionsFrame.CheckButton13:GetName() .. 'Text'):SetText(": "..AAP_Locals["Show Arrow"])
	getglobal(AAP.OptionsFrame.CheckButton13:GetName() .. 'Text'):SetTextColor(1, 1, 1)
	AAP.OptionsFrame.CheckButton13:SetScript("OnClick", function()
		if (AAP.OptionsFrame.CheckButton13:GetChecked() == true) then
			AAP1[AAP_Realm][AAP_Name]["Settings"]["ShowArrow"] = 1
		else
			AAP1[AAP_Realm][AAP_Name]["Settings"]["ShowArrow"] = 0
		end
	end)

	AAP.OptionsFrame.CheckButton14 = CreateFrame("CheckButton", "CLxCheckButton14", AAP.OptionsFrame.MainFrame, "ChatConfigCheckButtonTemplate");
	AAP.OptionsFrame.CheckButton14:SetPoint("TOPLEFT", AAP.OptionsFrame.MainFrame, "TOPLEFT", 10, -295)
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["ShowQList"] == 0) then
		AAP.OptionsFrame.CheckButton14:SetChecked(false)
	else
		AAP.OptionsFrame.CheckButton14:SetChecked(true)
	end
	getglobal(AAP.OptionsFrame.CheckButton14:GetName() .. 'Text'):SetText(": "..AAP_Locals["Show QuestList"])
	getglobal(AAP.OptionsFrame.CheckButton14:GetName() .. 'Text'):SetTextColor(1, 1, 1)
	AAP.OptionsFrame.CheckButton14:SetScript("OnClick", function()
		if (AAP.OptionsFrame.CheckButton14:GetChecked() == true) then
			AAP1[AAP_Realm][AAP_Name]["Settings"]["ShowQList"] = 1
		else
			AAP1[AAP_Realm][AAP_Name]["Settings"]["ShowQList"] = 0
		end
	end)


	AAP.OptionsFrame.Slider1 = CreateFrame("Slider", "AAP_SettingsSlider1",AAP.OptionsFrame.MainFrame, "OptionsSliderTemplate")
	AAP.OptionsFrame.Slider1:SetWidth(160)
	AAP.OptionsFrame.Slider1:SetHeight(15)
	AAP.OptionsFrame.Slider1:SetPoint("TOPLEFT", AAP.OptionsFrame.MainFrame, "TOPLEFT", 210, -50)
	AAP.OptionsFrame.Slider1:SetOrientation("HORIZONTAL")
	AAP.OptionsFrame.Slider1:SetMinMaxValues(1, 200)
	AAP.OptionsFrame.Slider1.minValue, AAP.OptionsFrame.Slider1.maxValue = AAP.OptionsFrame.Slider1:GetMinMaxValues() 
	getglobal(AAP.OptionsFrame.Slider1:GetName() .. 'Low'):SetText("1%")
	getglobal(AAP.OptionsFrame.Slider1:GetName() .. 'High'):SetText("200%")
	getglobal(AAP.OptionsFrame.Slider1:GetName() .. 'Text'):SetText("QuestList Scale:")
	AAP.OptionsFrame.Slider1:SetValueStep(1)
	AAP.OptionsFrame.Slider1:SetValue(100)
	AAP.OptionsFrame.Slider1:SetScript("OnValueChanged", function(self,event) 
		event = event - event%1
		AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"] = event / 100
		AAP.QuestList.ButtonParent:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"])
		AAP.QuestList.ListFrame:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"])
		AAP.QuestList21:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"])

	end)
	AAP.OptionsFrame.Slider1:SetScript("OnMouseWheel", function(self,delta) 
		if tonumber(self:GetValue()) == nil then return end
		self:SetValue(tonumber(self:GetValue())+delta)
	end)
	AAP.OptionsFrame.Slider1:SetValue(AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"] * 100)

	AAP.OptionsFrame.Slider2 = CreateFrame("Slider", "AAP_SettingsSlider2",AAP.OptionsFrame.MainFrame, "OptionsSliderTemplate")
	AAP.OptionsFrame.Slider2:SetWidth(160)
	AAP.OptionsFrame.Slider2:SetHeight(15)
	AAP.OptionsFrame.Slider2:SetPoint("TOPLEFT", AAP.OptionsFrame.MainFrame, "TOPLEFT", 210, -100)
	AAP.OptionsFrame.Slider2:SetOrientation("HORIZONTAL")
	AAP.OptionsFrame.Slider2:SetMinMaxValues(1, 200)
	AAP.OptionsFrame.Slider2.minValue, AAP.OptionsFrame.Slider2.maxValue = AAP.OptionsFrame.Slider2:GetMinMaxValues() 
	getglobal(AAP.OptionsFrame.Slider2:GetName() .. 'Low'):SetText("1%")
	getglobal(AAP.OptionsFrame.Slider2:GetName() .. 'High'):SetText("200%")
	getglobal(AAP.OptionsFrame.Slider2:GetName() .. 'Text'):SetText("Arrow Scale:")
	AAP.OptionsFrame.Slider2:SetValueStep(1)
	AAP.OptionsFrame.Slider2:SetValue(100)
	AAP.OptionsFrame.Slider2:SetScript("OnValueChanged", function(self,event) 
		event = event - event%1
		AAP1[AAP_Realm][AAP_Name]["Settings"]["ArrowScale"] = event / 100
		AAP_ArrowFrame:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["ArrowScale"])

	end)
	AAP.OptionsFrame.Slider2:SetScript("OnMouseWheel", function(self,delta) 
		if tonumber(self:GetValue()) == nil then return end
		self:SetValue(tonumber(self:GetValue())+delta)
	end)
	AAP.OptionsFrame.Slider2:SetValue(AAP1[AAP_Realm][AAP_Name]["Settings"]["ArrowScale"] * 100)




	AAP.OptionsFrame.Slider3 = CreateFrame("Slider", "AAP_SettingsSlider3",AAP.OptionsFrame.MainFrame, "OptionsSliderTemplate")
	AAP.OptionsFrame.Slider3:SetWidth(160)
	AAP.OptionsFrame.Slider3:SetHeight(15)
	AAP.OptionsFrame.Slider3:SetPoint("TOPLEFT", AAP.OptionsFrame.MainFrame, "TOPLEFT", 210, -210)
	AAP.OptionsFrame.Slider3:SetOrientation("HORIZONTAL")
	AAP.OptionsFrame.Slider3:SetMinMaxValues(1, 200)
	AAP.OptionsFrame.Slider3.minValue, AAP.OptionsFrame.Slider3.maxValue = AAP.OptionsFrame.Slider3:GetMinMaxValues() 
	getglobal(AAP.OptionsFrame.Slider3:GetName() .. 'Low'):SetText("1%")
	getglobal(AAP.OptionsFrame.Slider3:GetName() .. 'High'):SetText("200%")
	getglobal(AAP.OptionsFrame.Slider3:GetName() .. 'Text'):SetText(AAP_Locals["BannerScale"])
	AAP.OptionsFrame.Slider3:SetValueStep(1)
	AAP.OptionsFrame.Slider3:SetValue(100)
	AAP.OptionsFrame.Slider3:SetScript("OnValueChanged", function(self,event) 
		event = event - event%1
		AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"] = event / 100
		AAP.Banners.BannersFrame.Frame:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"])
		AAP.Banners.BannersFrame["Frame1"]:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"])
		AAP.Banners.BannersFrame["Frame2"]:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"])
		AAP.Banners.BannersFrame["Frame3"]:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"])
		AAP.Banners.BannersFrame["Frame4"]:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"])
	end)
	AAP.OptionsFrame.Slider3:SetScript("OnMouseWheel", function(self,delta) 
		if tonumber(self:GetValue()) == nil then return end
		self:SetValue(tonumber(self:GetValue())+delta)
	end)
	AAP.OptionsFrame.Slider3:SetValue(AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"] * 100)








	AAP.OptionsFrame["Button1"] = CreateFrame("Button", "AAP_OptionsButtons1", AAP.OptionsFrame.MainFrame, "SecureActionButtonTemplate")
	AAP.OptionsFrame["Button1"]:SetPoint("BOTTOMRIGHT",AAP.OptionsFrame.MainFrame,"BOTTOMRIGHT",-5,5)
	AAP.OptionsFrame["Button1"]:SetWidth(70)
	AAP.OptionsFrame["Button1"]:SetHeight(30)
	AAP.OptionsFrame["Button1"]:SetText("Close")
	AAP.OptionsFrame["Button1"]:SetParent(AAP.OptionsFrame.MainFrame)
	AAP.OptionsFrame.Button1:SetNormalFontObject("GameFontNormal")
	AAP.OptionsFrame.Button1ntex = AAP.OptionsFrame.Button1:CreateTexture()
	AAP.OptionsFrame.Button1ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	AAP.OptionsFrame.Button1ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.OptionsFrame.Button1ntex:SetAllPoints()	
	AAP.OptionsFrame.Button1:SetNormalTexture(AAP.OptionsFrame.Button1ntex)
	AAP.OptionsFrame.Button1htex = AAP.OptionsFrame.Button1:CreateTexture()
	AAP.OptionsFrame.Button1htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	AAP.OptionsFrame.Button1htex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.OptionsFrame.Button1htex:SetAllPoints()
	AAP.OptionsFrame.Button1:SetHighlightTexture(AAP.OptionsFrame.Button1htex)
	AAP.OptionsFrame.Button1ptex = AAP.OptionsFrame.Button1:CreateTexture()
	AAP.OptionsFrame.Button1ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	AAP.OptionsFrame.Button1ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.OptionsFrame.Button1ptex:SetAllPoints()
	AAP.OptionsFrame.Button1:SetPushedTexture(AAP.OptionsFrame.Button1ptex)
	AAP.OptionsFrame["Button1"]:SetScript("OnClick", function(self, arg1)
		AAP.OptionsFrame.MainFrame:Hide()
		AAP_SettingsOpen = 0
		AAP_ArrowActive = 0
		AAP_ArrowActive_X = 0
		AAP_ArrowActive_Y = 0
		AAP_UpdateQuestList()
	end)



	AAP.OptionsFrame["Button2"] = CreateFrame("Button", "AAP_OptionsButtons2", AAP.OptionsFrame.MainFrame, "SecureActionButtonTemplate")
	AAP.OptionsFrame["Button2"]:SetPoint("BOTTOMLEFT",AAP.OptionsFrame.MainFrame,"BOTTOMLEFT",5,5)
	AAP.OptionsFrame["Button2"]:SetWidth(200)
	AAP.OptionsFrame["Button2"]:SetHeight(30)
	AAP.OptionsFrame["Button2"]:SetText(AAP_Locals["Keybinds"])
	AAP.OptionsFrame["Button2"]:SetParent(AAP.OptionsFrame.MainFrame)
	AAP.OptionsFrame.Button2:SetNormalFontObject("GameFontNormal")
	AAP.OptionsFrame.Button2ntex = AAP.OptionsFrame.Button2:CreateTexture()
	AAP.OptionsFrame.Button2ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	AAP.OptionsFrame.Button2ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.OptionsFrame.Button2ntex:SetAllPoints()	
	AAP.OptionsFrame.Button2:SetNormalTexture(AAP.OptionsFrame.Button2ntex)
	AAP.OptionsFrame.Button2htex = AAP.OptionsFrame.Button2:CreateTexture()
	AAP.OptionsFrame.Button2htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	AAP.OptionsFrame.Button2htex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.OptionsFrame.Button2htex:SetAllPoints()
	AAP.OptionsFrame.Button2:SetHighlightTexture(AAP.OptionsFrame.Button2htex)
	AAP.OptionsFrame.Button2ptex = AAP.OptionsFrame.Button2:CreateTexture()
	AAP.OptionsFrame.Button2ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	AAP.OptionsFrame.Button2ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.OptionsFrame.Button2ptex:SetAllPoints()
	AAP.OptionsFrame.Button2:SetPushedTexture(AAP.OptionsFrame.Button2ptex)
	AAP.OptionsFrame["Button2"]:SetScript("OnClick", function(self, arg1)
		KeyBindingFrame_LoadUI()
		KeyBindingFrame:Show()
	end)

	AAP.OptionsFrame["Button3"] = CreateFrame("Button", "AAP_OptionsButtons3", AAP.OptionsFrame.MainFrame, "SecureActionButtonTemplate")
	AAP.OptionsFrame["Button3"]:SetPoint("BOTTOMRIGHT",AAP.OptionsFrame.MainFrame,"BOTTOMRIGHT",-105,5)
	AAP.OptionsFrame["Button3"]:SetWidth(70)
	AAP.OptionsFrame["Button3"]:SetHeight(30)
	AAP.OptionsFrame["Button3"]:SetText("Reset")
	AAP.OptionsFrame["Button3"]:SetParent(AAP.OptionsFrame.MainFrame)
	AAP.OptionsFrame.Button3:SetNormalFontObject("GameFontNormal")
	AAP.OptionsFrame.Button3ntex = AAP.OptionsFrame.Button3:CreateTexture()
	AAP.OptionsFrame.Button3ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	AAP.OptionsFrame.Button3ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.OptionsFrame.Button3ntex:SetAllPoints()	
	AAP.OptionsFrame.Button3:SetNormalTexture(AAP.OptionsFrame.Button3ntex)
	AAP.OptionsFrame.Button3htex = AAP.OptionsFrame.Button3:CreateTexture()
	AAP.OptionsFrame.Button3htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	AAP.OptionsFrame.Button3htex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.OptionsFrame.Button3htex:SetAllPoints()
	AAP.OptionsFrame.Button3:SetHighlightTexture(AAP.OptionsFrame.Button3htex)
	AAP.OptionsFrame.Button3ptex = AAP.OptionsFrame.Button3:CreateTexture()
	AAP.OptionsFrame.Button3ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	AAP.OptionsFrame.Button3ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.OptionsFrame.Button3ptex:SetAllPoints()
	AAP.OptionsFrame.Button3:SetPushedTexture(AAP.OptionsFrame.Button3ptex)
	AAP.OptionsFrame["Button3"]:SetScript("OnClick", function(self, arg1)
		AAP_ResetSettings()
	end)

	AAP.OptionsFrame["Button4"] = CreateFrame("Button", "AAP_OptionsButtons4", AAP.OptionsFrame.MainFrame, "SecureActionButtonTemplate")
	AAP.OptionsFrame["Button4"]:SetPoint("BOTTOMRIGHT",AAP.OptionsFrame.MainFrame,"BOTTOMRIGHT",-5,52)
	AAP.OptionsFrame["Button4"]:SetWidth(70)
	AAP.OptionsFrame["Button4"]:SetHeight(30)
	AAP.OptionsFrame["Button4"]:SetText("Import")
	AAP.OptionsFrame["Button4"]:SetParent(AAP.OptionsFrame.MainFrame)
	AAP.OptionsFrame.Button4:SetNormalFontObject("GameFontNormal")
	AAP.OptionsFrame.Button4ntex = AAP.OptionsFrame.Button4:CreateTexture()
	AAP.OptionsFrame.Button4ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	AAP.OptionsFrame.Button4ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.OptionsFrame.Button4ntex:SetAllPoints()	
	AAP.OptionsFrame.Button4:SetNormalTexture(AAP.OptionsFrame.Button4ntex)
	AAP.OptionsFrame.Button4htex = AAP.OptionsFrame.Button4:CreateTexture()
	AAP.OptionsFrame.Button4htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	AAP.OptionsFrame.Button4htex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.OptionsFrame.Button4htex:SetAllPoints()
	AAP.OptionsFrame.Button4:SetHighlightTexture(AAP.OptionsFrame.Button4htex)
	AAP.OptionsFrame.Button4ptex = AAP.OptionsFrame.Button4:CreateTexture()
	AAP.OptionsFrame.Button4ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	AAP.OptionsFrame.Button4ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.OptionsFrame.Button4ptex:SetAllPoints()
	AAP.OptionsFrame.Button4:SetPushedTexture(AAP.OptionsFrame.Button4ptex)
	AAP.OptionsFrame["Button4"]:SetScript("OnClick", function(self, arg1)
		aap_Importstuff()
		ReloadUI()
	end)


	aap_Importfunc()
end
function aap_Importstuff()
	if (AAP_ImportI == 0) then
		print("AAP: Error: Must Select a Profile")
	else
		local nanr = 0
		for AAP_indexx,AAP_valuex in pairs(AAP1) do
			if (AAP_indexx ~= "GliderName") then
				for AAP_indexx2,AAP_valuex2 in pairs(AAP_valuex) do
					nanr = nanr + 1
					if (AAP_ImportI == nanr) then
						AAP1[AAP_Realm][AAP_Name]["Settings"] = nil
						AAP1[AAP_Realm][AAP_Name]["Settings"] = AAP_valuex2["Settings"]
						print("AAP: Imported: "..AAP_indexx2.."-"..AAP_indexx)
					end
				end
			end
		end
		AAP.OptionsFrame.MainFrame:Hide()
		AAP_SettingsOpen = 0
		AAP_ArrowActive = 0
		AAP_ArrowActive_X = 0
		AAP_ArrowActive_Y = 0
		AAP_UpdateQuestList()
		AAP.Banners.BannersFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT",AAP1[AAP_Realm][AAP_Name]["Settings"]["Bannersleft"],AAP1[AAP_Realm][AAP_Name]["Settings"]["Bannerstop"])
		AAP.Banners.BannersFrame.Frame:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"])
		AAP.Banners.BannersFrame["Frame1"]:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"])
		AAP.Banners.BannersFrame["Frame2"]:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"])
		AAP.Banners.BannersFrame["Frame3"]:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"])
		AAP.Banners.BannersFrame["Frame4"]:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["BannerScale"])
		AAP.QuestList.MainFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", AAP1[AAP_Realm][AAP_Name]["Settings"]["left"], AAP1[AAP_Realm][AAP_Name]["Settings"]["top"])
		AAP_ArrowFrame:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["ArrowScale"])
		AAP_ArrowFrameM:SetPoint("TOPLEFT", UIParent, "TOPLEFT", AAP1[AAP_Realm][AAP_Name]["Settings"]["arrowleft"], AAP1[AAP_Realm][AAP_Name]["Settings"]["arrowtop"])
		AAP.QuestList.ButtonParent:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"])
		AAP.QuestList.ListFrame:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"])
		AAP.QuestList21:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"])
		AAP.QuestList.ListFrame:SetAlpha(AAP1[AAP_Realm][AAP_Name]["Settings"]["alpha"])
		AAP.BrutallCC.BrutallFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT",AAP1[AAP_Realm][AAP_Name]["Settings"]["Brutallleft"],AAP1[AAP_Realm][AAP_Name]["Settings"]["Brutalltop"])
	end
end
function AAP_DropDown_OnClick(self, arg1, arg2, checked)
	local nanr = 0
	for AAP_indexx,AAP_valuex in pairs(AAP1) do
		if (AAP_indexx ~= "GliderName") then
			for AAP_indexx2,AAP_valuex2 in pairs(AAP_valuex) do
				nanr = nanr + 1
				if (arg1 == nanr) then
					AAP_ImportI = nanr
					UIDropDownMenu_SetText(AAP_dropDown1, "Import: "..AAP_indexx2)
				end
			end
		end
	end
end


function AAP_DropDown_Menu(frame, level, menuList)
	local info = UIDropDownMenu_CreateInfo()
	info.func = AAP_DropDown_OnClick
	local nanr = 0
	for AAP_indexx,AAP_valuex in pairs(AAP1) do
		if (AAP_indexx ~= "GliderName") then
			for AAP_indexx2,AAP_valuex2 in pairs(AAP_valuex) do
				nanr = nanr + 1
				info.text, info.arg1 = AAP_indexx.."-"..AAP_indexx2, nanr
				UIDropDownMenu_AddButton(info)
			end
		end
	end
end





function aap_Importfunc()
	AAP_dropDown = CreateFrame("Frame", "AAP_DropDownList", AAP.OptionsFrame.MainFrame, "UIDropDownMenuTemplate")
	AAP_dropDown:SetPoint("BOTTOMRIGHT",AAP.OptionsFrame.MainFrame,"BOTTOMRIGHT",-65,50)
	UIDropDownMenu_SetWidth(AAP_dropDown, 150)
	UIDropDownMenu_Initialize(AAP_dropDown, AAP_DropDown_Menu)

	AAP_dropDown = CreateFrame("Frame", "WPDemoContextMenu", AAP.OptionsFrame.MainFrame, "UIDropDownMenuTemplate")
	UIDropDownMenu_Initialize(AAP_dropDown, AAP_DropDown_Menu, "MENU")

	favoriteNumber = 42

	AAP_dropDown1 = CreateFrame("FRAME", "AAP_DropDown1", AAP.OptionsFrame.MainFrame, "UIDropDownMenuTemplate")
	AAP_dropDown1:SetPoint("BOTTOMRIGHT",AAP.OptionsFrame.MainFrame,"BOTTOMRIGHT",-65,50)
	UIDropDownMenu_SetWidth(AAP_dropDown1, 150)
	UIDropDownMenu_SetText(AAP_dropDown1, "Import Profile")

	UIDropDownMenu_Initialize(AAP_dropDown1, function(self, level, menuList)
		local info = UIDropDownMenu_CreateInfo()
		if (level or 1) == 1 then
			for i=0,4 do
				info.text, info.checked = i*10 .. " - " .. (i*10+9), favoriteNumber >= i*10 and favoriteNumber <= (i*10+9)
				info.menuList, info.hasArrow = i, true
				UIDropDownMenu_AddButton(info)
			end
		else
			info.func = self.SetValue
			for i=menuList*10, menuList*10+9 do
				info.text, info.arg1, info.checked = i, i, i == favoriteNumber
				UIDropDownMenu_AddButton(info, level)
			end
		end
	end)
	function AAP_dropDown1:SetValue(newValue)
		favoriteNumber = newValue
		UIDropDownMenu_SetText(AAP_dropDown1, "Import: "..AAP_ImportI)
		CloseDropDownMenus()
	end
end






