local ZGV = ZygorGuidesViewer
if not ZGV then return end

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local Config = {}
ZGV.Config = Config

local PROFILEPREPENDSTRING = "ZGV"

local UIFrameFadeOut,UIFrameFadeIn=ZGV.UIFrameFade.UIFrameFadeOut,ZGV.UIFrameFade.UIFrameFadeIn

-- Store the buttons in here to so they can be easily accessed, .frame set when button is made. Just ignore frame when setting options.
Config.settings = {
	new = {
		autoaccept = false,
		autoturnin = false,
		autoselectitem = false,
		autogearauto = false,
		autotaxi = true,
		autosell = true,
		runtut = true,
		--frame = NewPlayerButton
	},
	adv = {
		autoaccept = true,
		autoturnin = true,
		autoselectitem = true,
		autogearauto = true,
		autotaxi = true,
		autosell = true,
		runtut = false,
		--frame = ExpPlayerBut
	},
	man = {
		autoaccept = false,
		autoturnin = false,
		autoselectitem = false,
		autogearauto = false,
		autotaxi = false,
		autosell = false,
		runtut = true,
		--frame = ManualButton
	}
}

-- Tables where [1] = text, and [2-n] = options that it controls.
-- Used to create the toggle buttons for options

local options = {
	{ L['guideconfig_quests'], 'autoaccept', 'autoturnin' },
	{ L['guideconfig_questitem'], 'autoselectitem' },
	{ L['guideconfig_autogear'], 'autogearauto' },
	{ L['guideconfig_taxi'], 'autotaxi' },
	{ L['guideconfig_gray'], 'autosell' },
}


-- New is the default.
Config.curSettings = 'new'

local function SetSettings()
	local mySettings = Config.settings[Config.curSettings]
	for option,set in pairs(mySettings) do
		-- Set any option except frame and runtut. Those aren't really options
		if option ~= 'frame' and option ~= 'runtut' then
			ZGV.db.profile[option]=set
		end
	end
end

-- Self is the button that gets pressed.
local function Config_Continue(self)
	local startFrame=self:GetParent()
	local nextFrame=startFrame.next or self.next

	-- Last frame. Time to finish!
	if nextFrame then
		Config:ShowFrame(nextFrame)
	else
		Config:Finish("complete")
	end
end

-- Self is the button that gets pressed.
local function Config_Back(self)
	local startFrame=self:GetParent()
	local prevFrame=startFrame.prev

	-- Don't let F2 go back. It should exit
	if prevFrame and startFrame ~= Config.Frame2 then
		Config:ShowFrame(prevFrame,1)
	else
		-- F1 and F2 can not go back but their buttons are to exit the config. So dew et.
		Config:Finish("now")
	end
end

local function Config_Load(self)
	local curItem = Config.Frame2.DropDown:GetCurrentSelectedItem()
	local profilename = curItem and curItem.text and curItem.text:GetText() or Config.Frame2.DropDown.text:GetText()

	local profiles = ZGV.db:GetProfiles()

	for i,profile in ipairs(profiles) do
		if profile:match(profilename.."$") then
			ZGV.db:SetProfile(profile)
			break
		end
	end

	ZGV.Config.using_loaded_profile = true
	Config:Finish("now")
end

-- Save the name with ZGV- prepended so that we know it was our custom save.
local function Config_Save(self)
	local f4 = Config.Frame4
	local profilename = f4.EditBox:GetText()
	if profilename == "" then
		ZGV.db.usernamed=true
		profilename = GetUnitName("player") or "Default"
	end

	ZGV.db:SetProfile(profilename)

	for k,v in pairs(ZGV.optiontables) do  ZGV:Options_GrabDefaults(v,ZGV.db.profile)  end -- fill new profile with defaults

	
	--ZGV:Options_RegisterDefaults()

	--ZGV.db:SetProfile(PROFILEPREPENDSTRING..tostring(time()).."_"..profilename)

	SetSettings() -- add wizarded settings

	-- Saved so go to the last window
	--Config_Continue(f4)
	ZGV.Config.using_loaded_profile = false

end

--[[
	Puts the Guide Viewer in the bottom left part of the screen and attaches the WayPointer to the top of it.
--]]

local function PlaceZGV()
	ZGV.Pointer:SetupArrow()

	ZGV.Frame:GetParent():ClearAllPoints()
	ZGV.Pointer.ArrowFrameCtrl:ClearAllPoints()

	if ZGV.Config.using_loaded_profile then
		ZGV.db.profile.frame_anchor[2]=UIParent
		ZGV.Frame:GetParent():SetPoint(unpack(ZGV.db.profile.frame_anchor))
		ZGV.Frame:SetScale(ZGV.db.profile.framescale)
		ZGV.Frame:SetAlpha(ZGV.db.profile.opacitymain)
	else
		ZGV.Frame:GetParent():SetPoint("RIGHT",UIParent,"RIGHT",-400,-100)
	end

	if ZGV.db.profile.frame_positions and ZGV.db.profile.frame_positions.ZygorGuidesViewerPointer_ArrowCtrl then
		ZygorGuidesViewerPointer_ArrowCtrl:SetPoint(unpack(ZGV.db.profile.frame_positions.ZygorGuidesViewerPointer_ArrowCtrl))
	else
		ZGV.Pointer.ArrowFrameCtrl:SetPoint("BOTTOM",ZGV.Frame,"TOP",0,50)
	end	

	ZGV.Frame:Show()
	ZGV.CreatureViewer.Frame:Show()
	ZGV.Pointer.ArrowFrameCtrl:Show()
end

function Config:ShowSavedText()
	local f4 = self.Frame4
	local profilename = f4.EditBox:GetText()
	if not profilename then return end

	profilename = PROFILEPREPENDSTRING..profilename

	local found
	local profiles = ZGV.db:GetProfiles()
	for i,profile in ipairs(profiles) do
		if profile == profilename then
			found = true
			break
		end
	end

	-- Why don't fontstrings have :ShowIf() :(
	if found then
		f4.savedText:Show()
	else
		f4.savedText:Hide()
	end
end

function Config:UpdateProfileList()
	local dropdown = self.Frame2.DropDown
	if not dropdown then return end

	-- Set Text to "select" to start. Might change if our current profile is a valid Zygor one.
	dropdown:SetText(L['guideconfig_select'])

	-- Clear old items for adding new ones
	dropdown.pullout:Clear()

	-- DEBUG PURPOSES ONLY ~~ Jeremiah
	--local oldSetText
	--if not oldSetText then
	--	oldSetText = dropdown.SetText
	--	dropdown.SetText = function(a, b, ...)
	--		print(b)
	--		if b == nil then error("NO NIL!") end
	--		return oldSetText(a, b, ...)
	--	end
 	--end
	
	-- Load it with profiles!
	local profiles = ZGV.db:GetProfiles()
	local curprofile = ZGV.db:GetCurrentProfile()
	local mostRecent = 0
	local textSet, mostRecentProf

	local firstItemSelected = false
	for i,profile in pairs(profiles) do
		--if ZGV.db.profiles[profile].usernamed==true then
		--if profile:match("^"..PROFILEPREPENDSTRING) then
			local time, trimmedProfile = profile:match("^"..PROFILEPREPENDSTRING.."([0-9]*)_(.+)$")
			time = (not time or time=="") and 1 or tonumber(time)
			if time > mostRecent then 
				mostRecent = time 
				mostRecentProf = trimmedProfile
			end

			if profile == curprofile and not firstItemSelected then textSet=true dropdown:SetText(trimmedProfile or profile) end

			if trimmedProfile or (ZGV.db.profiles[profile].usernamed==true and profile) then
				dropdown:AddItem((trimmedProfile or profile), (trimmedProfile or profile))
				
				if not firstItemSelected then
					dropdown:SetText(trimmedProfile or profile)
					textSet = (trimmedProfile or profile)
					firstItemSelected = true
				end
			end
		--end
	end

	if mostRecentProf and not textSet then
		dropdown:SetText(mostRecentProf)
	end
end

--[[
	Changes 'setting' option in group 'which'.

	If value is passed then sets it to value.
	elseif value is nil, then toggles the option.
--]]

function Config:SetOption(which,setting,value)
	if not self.settings[which] then return end
	if self.settings[which][setting]==nil then return end -- false is okay because it is there. nil means not there

	if value == false then
		-- Setting is false
		self.settings[which][setting] = false
	else
		-- value is true or nil. If nil then just toggle last value.
		self.settings[which][setting] = value or not self.settings[which][setting]
	end
end

--[[
	Shows the next frame and hides the last screen if there was one.

	Adjusts the buttons to show up on the new screen.
--]]

function Config:ShowFrame(newFrame,back)
	if not newFrame then return end

	-- Move the Back/Cont button to the new frame.
	CHAIN(self.BackButton)
		:ClearAllPoints()
		:SetParent(newFrame)
		:SetPoint("BOTTOMLEFT",newFrame,"BOTTOMLEFT",10,10)
		:SetText(L['guideconfig_back'])

	CHAIN(self.ContButton)
		:ClearAllPoints()
		:SetParent(newFrame)
		:SetPoint("BOTTOMRIGHT",newFrame,"BOTTOMRIGHT",-10,10)
		:SetText(L['guideconfig_cont'])

	-- Adjust the buttons if needed.
	if newFrame == self.Frame1 then
		-- Text to "Exit"
		self.BackButton:SetText(L['guideconfig_exit'])
	elseif newFrame == self.Frame2 then
		self:UpdateProfileList()

		if newFrame.DropDown and newFrame.DropDown.pullout
		and (not newFrame.DropDown.pullout.items or #newFrame.DropDown.pullout.items == 0) -- No items in the pullout.
		then
			-- Go to next screen
			self:ShowFrame(back and newFrame.prev or newFrame.next)
			return
		end

		-- It likes to disappear sometimes...
		newFrame.DropDown:Show()

		-- Text to "Exit"
		self.BackButton:SetText(L['guideconfig_exit'])

		-- We know Frame2 has extra text on it. So we can set point off of it.
		CHAIN(self.ContButton)
			:ClearAllPoints()
			:SetPoint("TOP",newFrame.FullConfText,"BOTTOM",0,-10)
			:SetText(L['guideconfig_newsetup'])

	--elseif newFrame == self.Frame4 then
	--	self:ShowSavedText()
	elseif newFrame==self.Frame5 then
		Config_Save()	-- Save the settings name

		-- Text to "Let's Go!"
		self.ContButton:SetText(L['guideconfig_final'])
	end

	if self.curFrame then self.curFrame:Hide() end
	newFrame:Show()
	self.curFrame = newFrame
end

function Config:Finish(how)
	if how == "complete" then
		SetSettings()

		if Config.settings[Config.curSettings] and Config.settings[Config.curSettings].runtut then
			ZGV:ScheduleTimer(function() ZGV.Tutorial:Run() end, 1.5) -- Run the tutorial once the config has faded out?
		end
	end


	-- Hide the base, thus any other frames too.
	ZGV.Config.Base:Hide()

	-- Fade in the Guide Viewer,Model Viewer, and waypoint arrow.

	--UIFrameFadeIn(ZGV.Frame,2.0,0.0,ZGV.db.profile.opacitymain or 1.0)
	--UIFrameFadeIn(ZGV.CreatureViewer.Frame,2.0,0.0,1.0)
	--UIFrameFadeIn(ZGV.Pointer.ArrowFrameCtrl,2.0,0.0,1.0)

	-- If profile was already changed by other chars, use the position they have set.
	-- Otherwise, just put ZGV in bottom left. They can move it where they like.
	PlaceZGV()

	self.Running=false
	ZGV.db.profile.ranconfig2=true
	
	if ZGV.db.usernamed then
	--print(ZGV.db.profiles,ZGV.db.profiles[profilename])
		ZGV.db.profile.usernamed = true
		ZGV.db.usernamed = nil
	end
	
end

function Config:CreateFrame()
	local ui = ZGV.UI
	-- Bunch of local variables that get reused. We don't need to store them for later, but we need them temporarily to set points off of.
	local mainT,secT,tex,choT

	self.Base = CHAIN(ui:Create("Frame",UIParent))
		:SetSize(500,460)
		:SetPoint("CENTER",UIParent,"CENTER",0,0)
	.__END

	-- General Buttons
		self.ContButton = CHAIN(ui:Create("Button",self.Base))
			:SetSize(125,30)
			:SetFont(FONT,16)
			:SetText(L['guideconfig_cont'])
			:SetScript("OnClick",Config_Continue)
		.__END

		self.BackButton = CHAIN(ui:Create("Button",self.Base))
			:SetSize(75,30)
			:SetFont(FONT,16)
			:SetText(L['guideconfig_back'])
			:SetScript("OnClick",Config_Back)
		.__END

	-- Frame1
		local F1 = CHAIN(ui:Create("Frame",self.Base))
			:SetAllPoints()
			:CanDrag("parent")
			:Hide()
		.__END
		-- Main Title
		mainT = CHAIN(F1:CreateFontString())
			:SetPoint("TOPLEFT",F1,"TOPLEFT",10,-10)
			:SetFont(FONTBOLD,25)
			:SetText(L['guideconfig_maintitle'])
		.__END

		-- Secondary Text
		secT = CHAIN(F1:CreateFontString())
			:SetPoint("TOPLEFT",mainT,"BOTTOMLEFT",0, -5)
			:SetWidth(F1:GetWidth() - 10)
			:SetWordWrap(true)
			:SetSpacing(5)
			:SetJustifyH("LEFT")
			:SetFont(FONT,14)
			:SetText(L['guideconfig_mainbottom'])
		.__END

		-- Gnome picture
		tex = CHAIN(F1:CreateTexture())
			:SetTexture(ZGV.DIR.."\\Skins\\zygor_mascot")
			:SetPoint("CENTER",F1,"CENTER")
			:SetPoint("TOP",secT,"BOTTOM", 0, -5)
			:SetSize(350,350)
		.__END

	--[[ Old Frame2 for setting position of Guide Viewer.
	do -- Frame2
		self.Frame2 = CHAIN(CreateFrame("Frame", "ZygorGuidesViewer_Config2", self.Base, ""))
			:SetAllPoints()
			:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"})
			:SetBackdropColor(0,0,0,1.0)
			:SetMovable(true) :EnableMouse(true) :RegisterForDrag("LeftButton")
			:SetScript("OnDragStart",function(self) self:GetParent():StartMoving() end)
			:SetScript("OnDragStop",function(self) self:GetParent():StopMovingOrSizing() end)
			:Hide()
		.__END

		local F=self.Frame2
		F.prev=self.Frame1

		F.MainText = CHAIN(F:CreateFontString()) :SetPoint("TOP",F,"TOP",0,-10) :SetJustifyH("LEFT") :SetJustifyV("CENTER")
			:SetFont(FONT,25)  :SetText(L['guideconfig_placetitle'])

		F.AlignLeft = CHAIN(CreateFrame("Button", "ZGV_Config_AlignLeftButton", F, "")) :SetSize(200,150) :SetPoint("LEFT",F,"LEFT",25,15)
			:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"}) :SetBackdropColor(0.3,0.3,0.3,1.0)
			:SetHighlightTexture("Interface\\BUTTONS\\UI-Listbox-Highlight2")
			:SetScript("OnClick",function(self) PlaceZGV("LEFT") Config.Settings.Align="LEFT" Config_Continue(self) end) :RegisterForClicks("LeftButtonUp")
			.__END F.AlignLeft:GetHighlightTexture():SetAlpha(0.2)

			F.AlignLeft.Tex = CHAIN(F.AlignLeft:CreateTexture()) :SetTexture(ZGV.DIR.."\\Skins\\config-images") :SetAllPoints() :SetTexCoord(1/256,198/256,213/512,360/512) .__END

			F.AlignLeft.label = CHAIN(F.AlignLeft:CreateFontString()):SetFont(FONTBOLD,16) :SetTextColor(1.0,1.0,1.0)
			:SetText(L['guideconfig_leftalign']):SetPoint("TOP",F.AlignLeft,"TOP",0,-6).__END
			F.AlignLeft:SetFontString(F.AlignLeft.label)

		F.AlignRight = CHAIN(CreateFrame("Button", "", F, "")) :SetSize(200,150) :SetPoint("RIGHT",F,"RIGHT",-25,15)
			:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"}) :SetBackdropColor(0.3,0.3,0.3,1.0)
			:SetHighlightTexture("Interface\\BUTTONS\\UI-Listbox-Highlight2")
			:SetScript("OnClick",function(self) PlaceZGV("RIGHT")Config.Settings.Align="RIGHT" Config_Continue(self) end) :RegisterForClicks("LeftButtonUp")
			.__END F.AlignRight:GetHighlightTexture():SetAlpha(0.2)

			F.AlignRight.Tex = CHAIN(F.AlignRight:CreateTexture()) :SetTexture(ZGV.DIR.."\\Skins\\config-images") :SetAllPoints() :SetTexCoord(1/256,198/256,368/512,511/512) .__END

			F.AlignRight.label = CHAIN(F.AlignRight:CreateFontString()):SetFont(FONTBOLD,16) :SetTextColor(1.0,1.0,1.0)
				:SetText(L['guideconfig_rightalign']) :SetPoint("TOP",F.AlignRight,"TOP",0,-6) .__END
			F.AlignRight:SetFontString(F.AlignRight.label)
	end
	--]]

	-- Frame2
		local F2 = CHAIN(ui:Create("Frame",self.Base))
			:SetAllPoints()
			:CanDrag("parent")
			:Hide()
		.__END

		-- Main Title
		mainT = CHAIN(F2:CreateFontString())
			:SetPoint("TOPLEFT",F2,"TOPLEFT",10,-10)
			:SetFont(FONTBOLD,25)
			:SetText(L['guideconfig_maintitle'])
		.__END

		-- Secondary Text
		secT = CHAIN(F2:CreateFontString())
			:SetPoint("TOPLEFT",mainT,"BOTTOMLEFT",0,-5)
			:SetWidth(F2:GetWidth() - 10)
			:SetWordWrap(true)
			:SetSpacing(5)
			:SetJustifyH("LEFT")
			:SetFont(FONT,14)
			:SetText(L['guideconfig_loadtext'])
		.__END

		-- Text above dropdown
		choT = CHAIN(F2:CreateFontString())
			:SetPoint("TOP",secT,"BOTTOM",0, -50)
			:SetFont(FONT,14)
			:SetText(L['guideconfig_choosetext'])
		.__END

		F2.DropDown = CHAIN(ui:Create("DropDown",F2))
			:SetPoint("TOP",choT,"BOTTOM",0, -10)
			:SetText(L['guideconfig_select'])
		.__END

		F2.LoadButton = CHAIN(ui:Create("Button",F2))
			:SetSize(75,30)
			:SetPoint("TOP",F2.DropDown.frame,"BOTTOM",0,-10)
			:SetFont(FONT,16)
			:SetText(L['guideconfig_load'])
			:SetScript("OnClick",Config_Load)
		.__END

		-- Text for not loading a profile
		F2.FullConfText = CHAIN(F2:CreateFontString())
			:SetPoint("TOP",F2.LoadButton,"TOP",0, -70)
			:SetFont(FONT,14)
			:SetText(L['guideconfig_fulltext'])
		.__END

	-- Frame3
		local F3 = CHAIN(ui:Create("Frame",self.Base))
			:SetAllPoints()
			:CanDrag("parent")
			:Hide()
		.__END

		-- Main Title
		mainT = CHAIN(F3:CreateFontString())
			:SetPoint("TOPLEFT",F3,"TOPLEFT",10,-10)
			:SetFont(FONTBOLD,25)
			:SetText(L['guideconfig_customize'])
		.__END

		-- Secondary Text
		secT = CHAIN(F3:CreateFontString())
			:SetPoint("TOPLEFT",mainT,"BOTTOMLEFT",0, -5)
			:SetWidth(F3:GetWidth() - 10)
			:SetWordWrap(true)
			:SetSpacing(5)
			:SetJustifyH("LEFT")
			:SetFont(FONT,14)
			:SetText(L['guideconfig_automatetasks'])
		.__END

		-- Handling of setting buttons and setting of settings and toggling settings is less than pretty.
		-- I apologize.

		-- self is the button
		local function settingsButtonClick(self)
			if self.which == Config.curSettings then return end -- pressed the same button

			local which = self.which
			local lastsettingframe = Config.settings[Config.curSettings].frame
			local newsettingframe = Config.settings[which].frame

			-- Remove last highlight and hide the frame.
			lastsettingframe:SetBackdropBorderColor(0.5,0.5,0.5)
			lastsettingframe.tframe:Hide()

			-- Show new highlight and frame
			newsettingframe:SetBackdropBorderColor(0.9,0.4,0.1)
			newsettingframe.tframe:Show()

			Config.curSettings = which
		end

		F3.NewPlayerBut = CHAIN(ui:Create("Button",F3))
			:SetSize(125,100)
			:SetPoint("TOP",secT,"BOTTOM",0,-20)
			:SetPoint("LEFT",F3,"LEFT",31.25,0)
			:SetTexture(ZGV.DIR.."\\Skins\\config-images")
			:SetTexCoord(1/256,122/256,1/512,97/512)
			:SetScript("OnClick",settingsButtonClick)
		.__END
		F3.NewPlayerBut.which = "new"
		Config.settings.new.frame = F3.NewPlayerBut

		-- Hack to make border visible. Ideally these images shouldn't have a background
		F3.NewPlayerBut.tex:ClearAllPoints()
		F3.NewPlayerBut.tex:SetPoint("CENTER")
		F3.NewPlayerBut.tex:SetSize(120,95)

		F3.ExpPlayerBut = CHAIN(ui:Create("Button",F3))
			:SetSize(125,100)
			:SetPoint("LEFT",F3.NewPlayerBut,"RIGHT",31.25,0)
			:SetTexture(ZGV.DIR.."\\Skins\\config-images")
			:SetTexCoord(132/256,255/256,1/512,97/512)
			:SetScript("OnClick",settingsButtonClick)
		.__END
		F3.ExpPlayerBut.which = "adv"
		Config.settings.adv.frame = F3.ExpPlayerBut

		-- Hack to make border visible. Ideally these images shouldn't have a background
		F3.ExpPlayerBut.tex:ClearAllPoints()
		F3.ExpPlayerBut.tex:SetPoint("CENTER")
		F3.ExpPlayerBut.tex:SetSize(120,95)

		F3.ManualButton = CHAIN(ui:Create("Button",F3))
			:SetSize(125,100)
			:SetPoint("LEFT",F3.ExpPlayerBut,"RIGHT",31.25,0)
			:SetTexture(ZGV.DIR.."\\Skins\\config-images")
			:SetTexCoord(1/256,122/256,108/512,203/512)
			:SetScript("OnClick",settingsButtonClick)
		.__END
		F3.ManualButton.which = "man"
		Config.settings.man.frame = F3.ManualButton

		-- Hack to make border visible. Ideally these images shouldn't have a background
		F3.ManualButton.tex:ClearAllPoints()
		F3.ManualButton.tex:SetPoint("CENTER")
		F3.ManualButton.tex:SetSize(120,95)


		-- Helper function for making the same frame over n over
		local function makeToggleButtonFrame(which,mainTitle, secText, optionsTable, notoggle)
			local frame = CHAIN(ui:Create("SecFrame",F3))
				:SetBackdropColor(unpack(ui.SkinData("MainBackdropColor")))
				:SetPoint("TOPLEFT", F3.NewPlayerBut, "BOTTOMLEFT",0,-5)
				:SetPoint("TOPRIGHT", F3.ManualButton, "BOTTOMRIGHT")
				:SetPoint("BOTTOM", self.ContButton, "TOP",0,5)
				:Hide()
			.__END

			-- Main Title
			mainT = CHAIN(frame:CreateFontString())
				:SetPoint("TOPLEFT",frame,"TOPLEFT",0,-10)
				:SetFont(FONTBOLD,16)
				:SetText(mainTitle)
			.__END

			-- Secondary Text
			secT = CHAIN(frame:CreateFontString())
				:SetPoint("TOPLEFT",mainT,"BOTTOMLEFT",0, -6)
				:SetWidth(F3.ManualButton:GetRight() - F3.NewPlayerBut:GetLeft() - 10) -- frame:GetWidth() -10 but that returns 0 at this point.
				:SetFont(FONT,13)
				:SetText(secText)
				:SetWordWrap(true)
				:SetSpacing(3)
				:SetJustifyH("LEFT")
			.__END

			-- Toggle buttons!
			frame.toggles = {}
			for i,tbl in ipairs(optionsTable) do
				local t = CHAIN(ui:Create("ToggleButton",frame))
					:SetText(tbl[1])
				.__END
				t:SetFont(t:GetFont(),13)

				if i == 1 then
					t:SetPoint("TOPLEFT",secT,"BOTTOMLEFT",0,-15)
				else
					t:SetPoint("TOPLEFT",frame.toggles[i-1],"BOTTOMLEFT",0,-9)
				end

				--if notoggle then
				--	t:SetCanToggle(false)
				--	t:SetToggle(true)
				--else

				t:SetToggle(Config.settings[which][tbl[2]])

				t.which = which
				t.options = tbl
					-- Toggles the options when the button is clicked
				t:RegisterToggleCallback(function(self)
					for i=2, #self.options do
						Config:SetOption(self.which,self.options[i])
					end
				end)

				frame.toggles[i] = t
			end

			return frame
		end

		F3.NewPlayerBut.tframe = makeToggleButtonFrame(F3.NewPlayerBut.which,L['guideconfig_newbmain'],L['guideconfig_newbsec'],options)
		F3.ExpPlayerBut.tframe = makeToggleButtonFrame(F3.ExpPlayerBut.which,L['guideconfig_advmain'],L['guideconfig_advsec'],options)
		F3.ManualButton.tframe = makeToggleButtonFrame(F3.ManualButton.which,L['guideconfig_manmain'],L['guideconfig_mansec'],options)

		-- This one is shown first.
		F3.NewPlayerBut:SetBackdropBorderColor(0.9,0.4,0.1)
		F3.NewPlayerBut.tframe:Show()

	--[[ This got Frame2ed. Well kinda, it got updated and moved into frame 3.
	do -- Frame4
		self.Frame4 = CHAIN(CreateFrame("Frame", "ZygorGuidesViewer_Config4", self.Base, ""))
			:SetAllPoints()
			:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white"})
			:SetBackdropColor(0,0,0,1.0)
			:SetMovable(true) :EnableMouse(true) :RegisterForDrag("LeftButton")
			:SetScript("OnDragStart",function(self) self:GetParent():StartMoving() end)
			:SetScript("OnDragStop",function(self) self:GetParent():StopMovingOrSizing() end)
			:Hide()
		.__END

		local F=self.Frame4
		F.prev=self.Frame3

		F.MainText = CHAIN(F:CreateFontString()) :SetPoint("TOPLEFT",F,"TOPLEFT",10,-10) :SetJustifyH("LEFT") :SetJustifyV("TOP")
			:SetFont(FONTBOLD,20)  :SetText(L['guideconfig_featurestitle'])

		local numCheckBox=7
		F.Checks={}
		for i=1, numCheckBox do
			F.Checks[i]=CHAIN(CreateFrame("CheckButton", "ZygorGuidesViewer_Config4_Check1",F,"UICheckButtonTemplate"))
				:SetSize(30,30)	:SetPoint("TOPLEFT",F,"TOPLEFT",10,-30-(30*(i-1)))
				:SetScript("OnEnter",function() F.BottomText:SetText(L['guideconfig_checktooltip'..i])end) :SetScript("OnLeave",function() F.BottomText:SetText("")end)
			.__END
			CHAIN(F.Checks[i].text) :SetText(L['guideconfig_check'..i]) :SetFont(FONT,16)
			F.Checks[i].option=L['guideconfig_checkoption'..i]
			F.Checks[i]:SetHitRectInsets(0,-F.Checks[i].text:GetStringWidth(),0,0)
		end

		local height = F.Checks[numCheckBox]:GetBottom() - 215 --320 is the top of the Back button with some extra space.

		F.BottomText = CHAIN(F:CreateFontString()) :SetPoint("TOPLEFT",F.Checks[numCheckBox],"BOTTOMLEFT",0,0) :SetJustifyH("LEFT") :SetJustifyV("TOP")
			:SetFont(FONT,15)  :SetText("") :SetSize(450,height) :SetSpacing(2).__END
	end
	--]]

	-- Frame4
		local F4 = CHAIN(ui:Create("Frame",self.Base))
			:SetAllPoints()
			:CanDrag("parent")
			:Hide()
		.__END

		-- Main Title
		mainT = CHAIN(F4:CreateFontString())
			:SetPoint("TOPLEFT",F2,"TOPLEFT",10,-10)
			:SetFont(FONTBOLD,25)
			:SetText(L['guideconfig_savetitle'])
		.__END

		-- Secondary Text
		secT = CHAIN(F4:CreateFontString())
			:SetPoint("TOPLEFT",mainT,"BOTTOMLEFT",0,-5)
			:SetWidth(F2:GetWidth() - 10)
			:SetWordWrap(true)
			:SetSpacing(5)
			:SetJustifyH("LEFT")
			:SetFont(FONT,14)
			:SetText(L['guideconfig_savedesc'])
		.__END

		-- Text above dropdown
		choT = CHAIN(F4:CreateFontString())
			:SetPoint("TOP",secT,"BOTTOM",0, -50)
			:SetFont(FONT,14)
			:SetText(L['guideconfig_savename'])
		.__END

		F4.EditBox = CHAIN(ui:Create("EditBox",F4))
			:SetPoint("TOP",choT,"BOTTOM",0, -10)
			--:SetText(L['guideconfig_savedefault']:format(GetUnitName("player") or "?"))
			:SetText("")
			:SetScript("OnTextChanged",function(self) Config:ShowSavedText(); ZGV.db.usernamed=true end)
		.__END

		--[[
		F4.SaveButton = CHAIN(ui:Create("Button",F4))
			:SetSize(75,30)
			:SetPoint("TOP",F4.EditBox,"BOTTOM",0,-10)
			:SetFont(FONT,16)
			:SetText(L['guideconfig_save'])
			:SetScript("OnClick",Config_Save)
		.__END
		--]]

		F4.savedText = CHAIN(F4:CreateFontString())
			:SetPoint("TOP",F4.SaveButton,"BOTTOM",0,-50)
			:SetFont(FONT,18)
			:SetTextColor(0.0,1.0,0.0)
			:SetText(L['guideconfig_saved'])
			:Hide()
		.__END

	-- Frame5
		local F5 = CHAIN(ui:Create("Frame",self.Base))
			:SetAllPoints()
			:CanDrag("parent")
			:SetScript("OnShow",function(self)
				self.OnShowing = true
				if not Config.settings[Config.curSettings] then return end
				self.toggleButton:SetToggle(Config.settings[Config.curSettings].runtut)  -- False for Advanced
				self.OnShowing = nil
			end)
			:Hide()
		.__END

		-- Main Title
		mainT = CHAIN(F5:CreateFontString())
			:SetPoint("TOPLEFT",F5,"TOPLEFT",10,-10)
			:SetFont(FONTBOLD,25)
			:SetText(L['guideconfig_lasttitle'])
		.__END

		-- Secondary Text
		secT = CHAIN(F5:CreateFontString())
			:SetPoint("TOPLEFT",mainT,"BOTTOMLEFT",0, -5)
			:SetWidth(F5:GetWidth() - 10)
			:SetWordWrap(true)
			:SetSpacing(5)
			:SetJustifyH("LEFT")
			:SetFont(FONT,14)
			:SetText(L['guideconfig_spelltext'])
		.__END

		-- Wand picture
		CHAIN(F5:CreateTexture())
			:SetTexture(ZGV.DIR.."\\Skins\\zygor_wand")
			:SetPoint("CENTER",F5,"CENTER")
			--:SetPoint("TOP",secT,"BOTTOM", 0, -5)
			:SetSize(230,230)

		F5.toggleButton = CHAIN(ui:Create("ToggleButton",F5))
			:SetText(L['guideconfig_tutcheck'])
			:SetPoint("BOTTOMLEFT",self.BackButton,"TOPLEFT",0,15)
		.__END
		-- If they click the toggle button then their option will be remember for all settings. Even if they then go back and go to a different setting
		F5.toggleButton:RegisterToggleCallback(function(self)
			if F5.OnShowing then return end -- Blocks the toggle that happens in OnShow. So only wants toggles that they click.
			for which,i in pairs(Config.settings) do
				Config:SetOption(which,'runtut',self:IsChecked())
			end
		end)

	F1.next = F2
	F2.next = F3
	F3.next = F4
	F4.next = F5

	F2.prev = F1
	F3.prev = F2
	F4.prev = F3
	F5.prev = F4

	self.Frame1 = F1
	self.Frame2 = F2
	self.Frame3 = F3
	self.Frame4 = F4
	self.Frame5 = F5
end

function Config:StartConfig()
	self.Base:Show()
	self:ShowFrame(self.Frame1)
end

function Config:Run()
	if self.Running then return end
	if not self.Base then self:CreateFrame() end

	self.Running=true

	ZGV.Frame:Hide()
	self:StartConfig()
end

--[[ moved configuration wizard to it's proper place in Startup sequence, and removed dependancy om event tracking
local function OnEvent(self,event,...)
	-- InCinematic() is *true* in the CINEMATIC_STOP event - fixes issues
	-- with configuration wizard not appearing when a character is newly
	--  created (as well as similar bugs). ~~ Jeremiah
	if event=="CINEMATIC_STOP" or not (InCinematic() or ZGV.db.profile.ranconfig2) then
		Config:Run()
	end
end

function Config:RegisterEvents()
	if not ZGV.db.profile.ranconfig2 then
		Config.eventFrame=CHAIN(CreateFrame("Frame"))
			:RegisterEvent("LOADING_SCREEN_DISABLED")
			:RegisterEvent("CINEMATIC_STOP")
			:SetScript("OnEvent", OnEvent)
		.__END
	end
end

tinsert(ZGV.startups,function(self)
	Config:RegisterEvents()
end)
]]--
