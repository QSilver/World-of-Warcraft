local ZGV = ZygorGuidesViewer
if not ZGV then return end

local Menu = {}
ZGV.Menu = Menu

-- This is the Guide Menu. Why is it STILL stuck inside a skin folder is beyond me.
-- I AM FREE!!  ~Guidemenu
-- I am taking on a new name, Guidemenu.

local L = ZGV.L

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local CHAIN = ZGV.ChainCall
local ui = ZGV.UI

local SkinData = ui.SkinData

local FR

local NUMLABELSBIG=20
local LABELSBIG_ONECOLUMN=6

local specialpaths = ZGV.GuideTitles --Declared in ZGV.lua so it can be used in registering guides

setmetatable(specialpaths,{__index=function(self,ind) return ind end})


local function ZGV_Menu_Scroll_Update(scroll)
	Menu:Refresh()
end

local function SetTextureBlock(tex,nh,nv,h,v)
	tex:SetTexCoord((nh-1)/h,nh/h,(nv-1)/v,nv/v)
	tex:SetTexCoord((nh-1)/h,nh/h,(nv-1)/v,nv/v)
end

local function SetIcon(self,nh,nv,h,v,sec,big)
	local icon = sec and self.iconover or self.icon
	if nh>0 then icon:Show() else icon:Hide() end
	icon:SetTexture(ZGV.DIR..(big and "\\Skins\\guideicons-big" or "\\Skins\\Default\\Stealth\\guideicons-small") )
	SetTextureBlock(icon,nh,nv,h,v)
end

local function AssignButtonTextureDis4(obj,tx,num,total, disable4)
	obj:SetNormalTexture(tx) SetTextureBlock(obj:GetNormalTexture(),num,1,total,4)
	obj:SetPushedTexture(tx) SetTextureBlock(obj:GetPushedTexture(),num,2,total,4)
	obj:SetHighlightTexture(tx) SetTextureBlock(obj:GetHighlightTexture(),num,3,total,4)
	obj:SetDisabledTexture(tx) SetTextureBlock(obj:GetDisabledTexture(),num,disable4 and 4 or 1,total,4)
end

local function get_icon(path)
	if path:find("^LEVELING") then return 1,1,"Leveling"
	elseif path:find("^EVENTS") then return 2,1,"Events"
	elseif path:find("^DAILIES") then return 3,1,"Dailies"
	elseif path:find("^LOREMASTER") then return 4,1,"Loremaster"
	elseif path:find("^GOLD") then return 1,2,"Gold"
	elseif path:find("^PROFESSIONS") then return 2,2,"Professions"
	elseif path:find("^PETSMOUNTS") then return 3,2,"Pets & Mounts"
	elseif path:find("^ACHIEVEMENTS") then return 4,2,"Achievements"
	elseif path:find("^TITLES") then return 1,3,"Titles"
	elseif path:find("^REPUTATIONS") then return 2,3,"Reputations"
	elseif path:find("^MACROS") then return 3,3,"Macros"
	elseif path:find("^DUNGEONS") then return 4,3,"Dungeons"
	elseif path:find("^GEAR") then return 1,4,"Gear"
	else return 4,4
	end
end

local function ZGV_RecentButton_OnClick(self,click)
	if self and self.title then
		Menu:NavigateToGuide(self.title)
		--ZGV:SetGuide(self.guidenum)
		--Menu:Hide()
		--return
	end
end

local GuideStatusColor = {}
GuideStatusColor["SUGGESTED"]	= { r = 1.00, g = 0.80, b = 0.25,	font = GameFontNormalLeftYellow,	hex = "ffffcc40" }
GuideStatusColor["VALID"]	= { r = 0.25, g = 0.75, b = 0.25,	font = GameFontNormalLeftLightGreen,	hex = "ff40bf40"}
GuideStatusColor["COMPLETE"]	= { r = 0.50, g = 0.50, b = 0.50,	font = GameFontNormalLeftGrey,		hex = "ff808080"}
--GuideStatusColor["OLD"]	= { r = 0.50, g = 0.50, b = 0.50,	font = GameFontNormalLeftGrey,		hex = "ff808080"}
GuideStatusColor["INVALID"]	= { r = 0.90, g = 0.00, b = 0.00,	font = GameFontNormalLeftRed,		hex = "ffe60000"}
GuideStatusColor["HEADER"]	= { r = 1.00, g = 1.00, b = 1.00,	font = GameFontHighlightLeft,		hex = "ffffffff"}
GuideStatusColor["FOLDER"]	= { r = 1.00, g = 1.00, b = 1.00,	font = GameFontHighlightLeft,		hex = "ffffffff"}

setmetatable(GuideStatusColor,{__index=function() return { r = 1.00, g = 0.80, b = 0.25, font = GameFontNormalLeftYellow, hex = "ffcc40" } end})

function Menu:GetStatusColor(status)
	return GuideStatusColor[status]
end

local function ViewHome_Create()
	FR.ViewHome.Labels={}
	local s=12
	for i=1,NUMLABELSBIG do
		local but = CHAIN(CreateFrame("Button", FR:GetName() .. "_LabelsBig_"..i, FR.ViewHome))
			--:SetSize(310,60) :SetPoint("TOPLEFT",FR,"TOPLEFT",30+math.floor((i-1)/cols)*330,-90-((i-1)%cols)*65)
			:SetHighlightTexture("Interface\\BUTTONS\\UI-Listbox-Highlight2")
			--:SetHighlightTexture(ZGV.SkinDir.."selection")
			:SetScript("OnClick",ZGV_Menu_Button_OnClick)
			:SetFrameLevel(FR.ViewHome:GetFrameLevel()+1)
			:Enable()
		.__END
		but:GetHighlightTexture():SetAlpha(0.2)
		but:GetHighlightTexture():SetTexture(1.0,1.0,1.0)
		FR.ViewHome.Labels[i] = but

		but.icon = CHAIN(but:CreateTexture()) :SetPoint("CENTER",but,"LEFT",22,0)
			:SetSize(60,60)
			:SetTexture(ZGV.DIR.."\\Skins\\guideicons-big")
		.__END

		but.label = CHAIN(but:CreateFontString()) :SetPoint("LEFT",but.icon,"RIGHT",5,0) :SetPoint("RIGHT")
			:SetJustifyH("LEFT") :SetJustifyV("CENTER")
			:SetFont(FONT,24)
			:SetTextColor(1.0,1.0,1.0)
			:SetText("blablabla "..i)
		.__END

		but.recentbut = CHAIN(CreateFrame("Button", but:GetName().."RecentButton", but))
			:SetSize(263,14)--This is a max size. Is reset later
			:SetScript("OnEnter",function(self) self.under:Show() but:LockHighlight() end)
			:SetScript("OnLeave",function(self) self.under:Hide() but:UnlockHighlight() end)
			:SetScript("OnClick",ZGV_RecentButton_OnClick)
			:SetFrameLevel(but:GetFrameLevel()+1)
			:Enable()
		.__END

		local recent=but.recentbut

		--[[
		recent.text = CHAIN(recent:CreateFontString())
			:SetJustifyH("RIGHT") :SetJustifyV("CENTER")
			:SetFont(FONTBOLD,13)
			:SetTextColor(1.0,1.0,1.0)
			:SetText(L['guidepicker_recent'])
		.__END
		recent.label = CHAIN(recent:CreateFontString())
			:SetJustifyH("LEFT") :SetJustifyV("CENTER")
			:SetFont(FONT,14)
			:SetTextColor(0.9,0.4,0.1)
			:SetText("Last Guide..."..i)
		.__END
		recent.under= CHAIN(recent:CreateTexture()) :SetTexture(0.9,0.4,0.1,1.0) :SetPoint("BOTTOMLEFT",0,0) :SetPoint("BOTTOMRIGHT") :SetHeight(1) :Hide().__END
		recent:SetFontString(recent.label)
		--]]

		but:SetFontString(but.label)
		but.SetIcon=SetIcon
	end
end

local function ViewList_Create()
	-- small buttons' scrollbar
	local VIEWLIST = FR.ViewList

	VIEWLIST.Labels={}
	local rows = 17
	local ROWHEIGHT = 20
	for i=1,rows do
		local but
		but = CHAIN(CreateFrame("Button", FR:GetName() .. "_LabelsSmall_"..i, VIEWLIST))
			:SetPoint("TOPLEFT",FR,"TOPLEFT",0,-90-(i-1)*ROWHEIGHT) :SetPoint("TOPRIGHT",FR,"TOPLEFT",280,-90-(i-1)*ROWHEIGHT)
			:SetHeight(ROWHEIGHT)
			:SetHighlightTexture("Interface\\BUTTONS\\UI-Listbox-Highlight2")
			:SetScript("OnClick",ZGV_Menu_Button_OnClick)
			:RegisterForClicks("AnyUp")
			:SetFrameLevel(5)
			:Enable()
		 .__END
		but:GetHighlightTexture():SetAlpha(0.2)
		but:GetHighlightTexture():SetTexture(1.0,1.0,1.0)
		VIEWLIST.Labels[i]=but

		but.icon = CHAIN(but:CreateTexture()) :SetPoint("LEFT",but,"LEFT",10,0) :SetSize(17,17) :SetDrawLayer("ARTWORK",0)
			:SetTexture(ZGV.DIR.."\\Skins\\guideicons-small")
		 .__END

		but.iconover = CHAIN(but:CreateTexture()) :SetPoint("CENTER",but.icon,"CENTER",3,-3) :SetSize(17,17) :SetDrawLayer("ARTWORK",1)
			:SetTexture(ZGV.DIR.."\\Skins\\guideicons-small")
		 .__END

		but.iconover.anim = CHAIN(but.iconover:CreateAnimationGroup()) :SetLooping("REPEAT") .__END
		CHAIN(but.iconover.anim:CreateAnimation("SCALE")) :SetScale(1.4,1.4) :SetDuration(0.5) :SetSmoothing("OUT")
		CHAIN(but.iconover.anim:CreateAnimation("SCALE")) :SetScale(0.7143,0.7143) :SetDuration(0.5) :SetSmoothing("IN")

		local show_completion = nil
		but.label = CHAIN(but:CreateFontString()) :SetPoint("TOPLEFT",but,"TOPLEFT",22,2) :SetPoint("BOTTOMRIGHT",but,"BOTTOMRIGHT",show_completion and -70 or 0,0) :SetDrawLayer("ARTWORK")
			:SetJustifyH("LEFT") :SetJustifyV("CENTER") :SetFont(FONT,15) :SetTextColor(1.0,0.8,0.0)
			:SetText("blablabla tereferekuku blorpft"..i)
		 .__END
		but:SetFontString(but.label)

		but.complabel = CHAIN(but:CreateFontString()) :SetPoint("TOPLEFT",but,"TOPRIGHT",-65,2) :SetPoint("BOTTOMRIGHT",but,"BOTTOMRIGHT",0,0) :SetDrawLayer("ARTWORK")
			:SetJustifyH("RIGHT") :SetJustifyV("CENTER") :SetFont(FONT,10) :SetTextColor(1.0,0.8,0.0)
			:SetText("0%")
		 .__END
		if not show_completion then but.complabel:Hide() end

		but.complabelover = CHAIN(CreateFrame("FRAME",nil,but)) :SetPoint("TOPLEFT",but,"TOPRIGHT",-65,2) :SetPoint("BOTTOMRIGHT",but,"BOTTOMRIGHT",0,0)
			:SetScript("OnEnter",function(self)
				if not self.tip then return end
				GameTooltip:SetOwner(self,"ANCHOR_BOTTOM")
				GameTooltip:ClearLines()
				GameTooltip:SetText(self.tip)
				GameTooltip:Show()
			 end)
			:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
			:Hide()
			--:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\roundcorners",tileSize=8,edgeSize=8,insets={top=8,bottom=8,left=8,right=8}}) :SetBackdropColor(0,0,0,0.50) :SetBackdropBorderColor(0,0,0,0.5)
		.__END

		but.back = CHAIN(but:CreateTexture()) :SetAllPoints() :SetDrawLayer("BACKGROUND")
			--:SetTexture("Interface\\BUTTONS\\UI-Listbox-Highlight2")
			:SetTexture(1.0,0.8,0.0)
			--:SetBlendMode("ADD")
			:Hide()
		 .__END
		--but:SetNormalFontObject(GameFontNormalSmall)
		--but:SetHighlightFontObject(GameFontHighlightSmall)
		--but:GetFontString():SetPoint("LEFT",but,"LEFT",22,1)
		but.SetIcon=SetIcon

	end

	VIEWLIST.Scroll = CHAIN(ZGV.UI:Create("ScrollItems",VIEWLIST,VIEWLIST:GetName().."_Scroll"))
		:SetPoint("TOPLEFT",VIEWLIST,"TOPLEFT",0,0)
		:SetPoint("BOTTOMRIGHT",VIEWLIST,"BOTTOMLEFT",280,0)
		:MaxValueAtOnce(16)
		:HookScript("OnMousewheel",function(self) Menu:Refresh() end)
		--:AddButtons() -- THIS BREAKS IT. If Buttons are desired on this scrollie then need to fix it because atm clicking on the buttons causes an infinite loop somewhere
		-- I assume the loop is because we let Menu:Refresh handle hiding/showing guides. Did not convert it because why fix what isn't broke.
	.__END

	VIEWLIST.Scroll.ValueChanged = function(self) Menu:Refresh() end

		-- Switch recent layout
	VIEWLIST.SwitchRecentButton = CHAIN(CreateFrame("Button", nil, VIEWLIST))
		:RegisterForClicks("LeftButtonUp")
		:SetPoint("TOPRIGHT", VIEWLIST.Scroll.barframe,"TOPLEFT",-5,0)
		:SetSize(20,20)
		:SetScript("OnClick",function()
			Menu.simpleList = not Menu.simpleList

			Menu:NavigateTo("RECENT")
		end)
		:Hide()
	.__END

	ZGV.AssignButtonTexture(VIEWLIST.SwitchRecentButton,ZGV.SkinDir.."titlebuttons",16,32)

	VIEWLIST.GuideTitle = CHAIN(VIEWLIST:CreateFontString())
		:SetPoint("TOPLEFT",VIEWLIST,"TOPLEFT",300,-10) :SetPoint("TOPRIGHT",VIEWLIST,"TOPRIGHT",-15,-10)
		:SetJustifyH("LEFT") :SetJustifyV("CENTER") :SetHeight(16)
		:SetFont(FONT,17)
	 .__END

	VIEWLIST.GuideScroll = CHAIN(ui:Create("ScrollChild",VIEWLIST,FR:GetName().."_ScrollChild"))
		:SetPoint("TOPLEFT",VIEWLIST,300,-30)
		:SetPoint("BOTTOMRIGHT",VIEWLIST,-15,30)
		:SetHideWhenUnless(1)
	.__END

	VIEWLIST.GuideData = CHAIN(VIEWLIST.GuideScroll.child:CreateFontString())
		--:SetPoint("TOPLEFT",VIEWLIST.GuideDataHeader,"BOTTOMLEFT") :SetPoint("TOPRIGHT",VIEWLIST.GuideDataHeader,"BOTTOMRIGHT")
		:SetPoint("TOPLEFT") :SetPoint("BOTTOMRIGHT")
		:SetJustifyH("LEFT") :SetJustifyV("TOP") :SetWidth(150)
		:SetFont(FONT,12)
	 .__END

	VIEWLIST.GRAPHICHEADERHEIGHT=200

	VIEWLIST.GuidePercentage = CHAIN(VIEWLIST.GuideScroll.child:CreateFontString())
		:SetPoint("TOPLEFT",VIEWLIST.GuideData,"BOTTOMLEFT",0,-3) :SetPoint("BOTTOMRIGHT")
		:SetJustifyH("LEFT") :SetJustifyV("TOP") :SetWidth(150)
		:SetFont(FONTBOLD,12)
	 .__END

	VIEWLIST.GuideModel = CHAIN(CreateFrame("PlayerModel",VIEWLIST:GetName().."_GuideModel",VIEWLIST.GuideScroll,"ZygorGuidesViewerPlayerModel"))
		:SetPoint("TOPLEFT")
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\roundcorners",tileSize=8,edgeSize=8,insets={top=8,bottom=8,left=8,right=8}}) :SetBackdropColor(0,0,0,0.50) :SetBackdropBorderColor(0,0,0,0.5)
		:SetAutoRotation(0.4)
		:SetSize(VIEWLIST.GRAPHICHEADERHEIGHT,VIEWLIST.GRAPHICHEADERHEIGHT)
	 .__END
	-- IMPORTANT: Model will NOT SCROLL. This is totally broken on Blizzard's end. So, model stays in the GuideScroll box (NOT in the GuideScroll.Child container) and the scrollable area is made NON-scrollable for pets.

	VIEWLIST.GuideImage = CHAIN(VIEWLIST.GuideScroll.child:CreateTexture(nil,"ARTWORK"))
		:SetPoint("TOPLEFT")
		:SetSize(VIEWLIST.GRAPHICHEADERHEIGHT*2,VIEWLIST.GRAPHICHEADERHEIGHT)
	.__END

	VIEWLIST.GuideMacro = CHAIN(CreateFrame("Button","MacroTest",VIEWLIST,"ActionButtonTemplate"))
		:SetPoint("TOPLEFT",VIEWLIST,"TOPRIGHT",-55,-305) :SetPoint("BOTTOMRIGHT",VIEWLIST,"TOPRIGHT",-10,-350)
		:SetFrameLevel(1)
	.__END
	ZGV.MacroGuideProto.ActionButtonPrepare(VIEWLIST.GuideMacro,function() Menu:Refresh() end)

 -- 	VIEWLIST.GuideMacro.cooldown=CreateFrame("Cooldown",nil,VIEWLIST.GuideMacro,"CooldownFrameTemplate")

	VIEWLIST.ViewInFolderButton = CHAIN(ui:Create("Button",VIEWLIST))
		:SetPoint("TOPLEFT",VIEWLIST.GuideScroll,"BOTTOMLEFT",0,-5)--,VIEWLIST,"BOTTOMLEFT",310,-40)
		:SetSize(130,20)
		:SetText(L['guidepicker_button_viewinfolder'])
		:SetFont(FONT,14)
		:SetAttribute("tooltip",L['guidepicker_button_viewinfolder_desc'])
		:SetScript("OnClick",function(self) Menu:NavigateToGuide(Menu.selectedguide.title) end)
		:Disable()
	 .__END

	VIEWLIST.OKButton = CHAIN(ui:Create("Button",VIEWLIST))
		:SetPoint("TOPRIGHT",VIEWLIST.GuideScroll,"BOTTOMRIGHT",-10,-5)
		:SetSize(80,20)
		:SetText(L['guidepicker_button_accept'])
		:SetFont(FONT,14)
		:SetAttribute("tooltip",L['guidepicker_button_ok_desc'])
		:SetScript("OnClick",ZGV_Menu_OKButton_OnClick)
	 .__END

	VIEWLIST.MacroButton = CHAIN(CreateFrame("Button", nil, VIEWLIST, "ZygorGuidesViewer_Default_Button"))
		:SetPoint("BOTTOMLEFT",VIEWLIST,"BOTTOMLEFT",410,-40)
		:SetSize(80,20)
		:SetText(L['guidepicker_button_macro_add'])
		:SetAttribute("tooltip",L['guidepicker_button_macro_add_desc'])
		:SetScript("OnClick",ZGV_Menu_MacroButton_OnClick)
	 .__END
	VIEWLIST.MacroButton.UpdateDisplay=function(self) ZGV_Menu_MacroButton_UpdateDisplay(self) end

	VIEWLIST.BarMacroButton = CHAIN(CreateFrame("Button", nil, VIEWLIST, "ZygorGuidesViewer_Default_Button"))
		:SetPoint("BOTTOMRIGHT",VIEWLIST,"BOTTOMRIGHT",-100,-40)
		:SetSize(120,20)
		:SetText(L['guidepicker_button_macro_bar'])
		:SetAttribute("tooltip",L['guidepicker_button_macro_bar_desc'])
		:SetScript("OnClick",ZGV_Menu_BarMacroButton_OnClick)
	 .__END
end

function ViewList_Show(path,flatgroup)
	local VIEWLIST = FR.ViewList

	if not path then path=Menu.path end

	local buts = VIEWLIST.Labels

	-------------------------------
	-- DISPLAY THE LIST
	-------------------------------

	-- fill in data
	local but_offset = 0   -- to account for spacings; buttons do NOT correspond to items perfectly one-to-one anymore.
	local HEADER_PREPENDED

	for i=1,#buts do
		local offset = VIEWLIST.Scroll.low_value
		local g = Menu.flatgroup[offset+i-but_offset]

		local but = buts[i]

		local ROWHEIGHT = 22

		if path~="SUGGESTED" and Menu.suggestedpoint
		then
			local vertOffset = -90-(i-1)*ROWHEIGHT
			if path=="RECENT" then 
				vertOffset = -60-(i-1)*ROWHEIGHT
			end

			but:ClearAllPoints()
			but:SetPoint("TOPLEFT",FR,"TOPLEFT",0,vertOffset)
			but:SetPoint("TOPRIGHT",FR,"TOPLEFT",280,vertOffset)
		elseif (path=="SUGGESTED" and not Menu.suggestedpoint)
		then
			local vertOffset = -60-(i-1)*ROWHEIGHT
			but:ClearAllPoints()
			but:SetPoint("TOPLEFT",FR,"TOPLEFT",0,vertOffset)
			but:SetPoint("TOPRIGHT",FR,"TOPLEFT",280,vertOffset)
		end

		if g then
			but.icon:Hide()

			if g.header then
				-- TODO: this simulates a header!
				if not HEADER_PREPENDED and g~=Menu.flatgroup[offset+1] then

					but_offset = but_offset+1
					but:Hide()
					HEADER_PREPENDED=true
				else
					-- only the header counts, leaving name and title just for kicks
					but:SetText(specialpaths[g.header or g.name or g.title_short]:upper())

					local x,y = get_icon(g.header)
					if x then
						but:SetIcon(x,y,4,4,false,true)
						but.label:SetPoint("TOPLEFT",but,"TOPLEFT",32,2)
						but.icon:Show()
					else
						but.label:SetPoint("TOPLEFT",but,"TOPLEFT",2,2)
						but.icon:Hide()
					end

					but.target=nil
					but.isguide=nil

					but:EnableMouse(false)
					but.label:SetFont(FONTBOLD,14)

					but.iconover:Hide()
					but.complabel:Hide()

					but.back:Hide()
					local statuscolor = GuideStatusColor["HEADER"]
					but.label:SetTextColor(statuscolor.r,statuscolor.g,statuscolor.b)

					but:Show()

					HEADER_PREPENDED=nil
				end

			-- groups have names. guides have titles. go figure.
			elseif g.name then
				-- group
				but:SetText(specialpaths[g.name])
				but.target = (Menu.path and Menu.path.."\\" or "")..g.name
				but.isguide=nil

				but:EnableMouse(true)
				but.label:SetFont(FONT,13)
				but.label:SetPoint("TOPLEFT",but,"TOPLEFT",32,2)

				but:SetIcon(1,1,2,2)
				local suggest = ZGV:GetGuideFolderInfo(g)
				if suggest then
					but:SetIcon(1,2,2,2,true)
					but.iconover.anim:Play()
				else
					but:SetIcon(0,0,2,2,true)
				end
				--but.icon:Show()
				but.complabel:SetText()
				but.complabelover.tip = nil

				but.back:Hide()
				local statuscolor = GuideStatusColor["FOLDER"]
				but.label:SetTextColor(statuscolor.r,statuscolor.g,statuscolor.b)

				--but:GetFontString():SetTextColor(1,0.8,0)
				but:Show()

			elseif g.title then
				-- guide
				if Menu.path=="RECENT" then
					but:SetText(("%s, step %d"):format(g.title_short or "",g.CurrentStepNum or 1))
				else
					but:SetText(g.title_short or "")
				end
				but.target = g.title or ""
				but.isguide=true

				but:EnableMouse(true)
				but.label:SetFont(FONT,13)
				but.label:SetPoint("TOPLEFT",but,"TOPLEFT",32,2)

				local status = g.GetStatus and g:GetStatus()

				if g.icon and Menu.path == "RECENT" and Menu.simpleList then
					if type(g.icon[3]) == "string" then -- icon in get_icon() format
						local x,y = g.icon[1],g.icon[2] --get_icon(g.header)
						if x then
							but:SetIcon(x,y,4,4,false,true)
							--but.label:SetPoint("TOPLEFT",but,"TOPLEFT",32,2)
						end
					end

					but:SetIcon(0,0,2,2,true)
				else
					but:SetIcon(2,1,2,2)

					if status=="SUGGESTED" then
						but:SetIcon(1,2,2,2,true)
						but.iconover.anim:Play()
					else
						but:SetIcon(0,0,2,2,true)
					end
				end

				but.icon:Show()

				local statuscolor = GuideStatusColor[status] or {r=1,g=1,b=1}
				if Menu.selectedguide and g.title==Menu.selectedguide.title then
					but.back:Show()
					local mult = 0.7
					but.back:SetTexture(statuscolor.r*mult,statuscolor.g*mult,statuscolor.b*mult)
					but.label:SetTextColor(1,1,1)
				else
					but.back:Hide()
					but.label:SetTextColor(statuscolor.r,statuscolor.g,statuscolor.b)
				end

				local text,tip = g:GetCompletionText()
				but.complabel:SetText(text)
				but.complabelover.tip = tip
				but:Show()
				--but:GetFontString():SetTextColor(1,1,1)
			else
				but:Hide()
			end
		else
			but:Hide()
		end
	end

	if not path
	or ( path~="SUGGESTED" and path~="RECENT" ) then --Change the color of the headers. and set our
		FR.GuidesButton.label:SetTextColor(unpack(SkinData("TabSelectedColor")))
		FR.SuggestButton.label:SetTextColor(unpack(SkinData("TabDefaultColor")))
		FR.RecentButton.label:SetTextColor(unpack(SkinData("TabDefaultColor")))
	end

	Menu.suggestedpoint = path~="SUGGESTED"

	VIEWLIST.Scroll:ShowIf(Menu.path)

	-------------------------------
	-- DISPLAY THE GUIDE
	-------------------------------

	if Menu.selectedguide then
		local g = Menu.selectedguide
		VIEWLIST.GuideTitle:SetText(g.title_short)

		local s=""
		if g.startlevel and g.startlevel>0 then
			if g.endlevel and g.endlevel>0 then
				s = s .. "|cffffeebbLevels:|r ".. ZGV.FormatLevel(g.startlevel) .." to ".. ZGV.FormatLevel(g.endlevel) .. "\n"
			else
				s = s .. "|cffffeebbRequired level:|r ".. ZGV.FormatLevel(g.startlevel) .."\n"
			end
		else
			if g.endlevel and g.endlevel>0 then s = s .. "|cffffeebbEnding level:|r ".. ZGV.FormatLevel(g.endlevel) .."\n" end
		end
		if g.next then s = s .. "|cffffeebbNext guide:|r ".. g.next:match(".+\\(.-)$") .."\n" end

		s = s .. "\n"
		local status,msg = g:GetStatus()
		local color = GuideStatusColor[status]
		if status=="COMPLETE" and g.type=="LEVELING" then status=status.."_lev" end
		-- s = s .. ("|cffffeebbGuide status:|r |cff%02x%02x%02x%s|r %s\n"):format(color.r*255,color.g*255,color.b*255, L['guidepicker_status_'..status] , msg and #msg>0 and "("..msg..")" or "") -- TODO: show status properly! Conditional? Or what?

		local complete,cur,tot = g:GetCompletion()
		if complete~="loading" then
			if complete then
				if g.completionmode=="quests" then
					if g.type=="DAILIES" then
						local qmin,qsome,qmax = unpack(g.completionparams)
						qmin=tonumber(qmin)
						qsome=tonumber(qsome)
						qmax=tonumber(qmax)
						if not qmin then
							s = s .. ("|cffffeebbComplete:|r %d/%d quests\n"):format(cur,tot)
						elseif cur<qmin then
							s = s .. ("|cffffeebbDailies not started yet|r (%d/%d quests)\n"):format(cur,tot)
						elseif cur<qsome then
							s = s .. ("|cffffeebbToday: not done|r (%d/%d quests)\n"):format(cur,tot)
						elseif cur<qmax then
							s = s .. ("|cffffeebbToday: done partially|r (%d/%d quests)\n"):format(cur,tot)
						elseif cur<=tot then
							s = s .. ("|cffffeebbToday: done?|r (%d/%d quests)\n"):format(cur,tot)
						end
					else
						s = s .. ("|cffffeebbComplete:|r %d/%d quests\n"):format(cur,tot)
					end
				end
			end
		end

		s = s .. "\n"

		s = s .. (Menu.selectedguide.description or "")

		if g.macro then s = s.."\n\n"..L['guidepicker_macro_code'].."\n"..g.macro.body end

		CHAIN(VIEWLIST.GuideData)
			:SetText(s)
			:ClearAllPoints() :SetPoint("TOPLEFT",VIEWLIST.GuideScroll.child) :SetPoint("TOPRIGHT",VIEWLIST.GuideScroll.child)
			:SetWidth(VIEWLIST.GuideScroll:GetWidth()) -- I thinkF it's a bug in default UI: doing SetPoint doesn't update StringHeight ~aprotas

		VIEWLIST.GuideScroll.child:SetSize(VIEWLIST.GuideScroll:GetWidth(),VIEWLIST.GuideData:GetHeight() + ((g.model or g.image) and 203 or 0) + 10)

		VIEWLIST.GuideScroll:SetVerticalScroll(0)
		VIEWLIST.GuideScroll:Show()

		if g.type~="MACRO" then -- TODO make all this a function not to duplicate code?
			VIEWLIST.OKButton:Enable()
			VIEWLIST.OKButton:Show()
			--VIEWLIST.GuideTitleBack:SetPoint("BOTTOMRIGHT",VIEWLIST.GuideTitle,"BOTTOMRIGHT",5,0)
			--VIEWLIST.GuideStatusPre:SetPoint("TOPLEFT",FR,"TOPRIGHT",-95,-305)
			--VIEWLIST.GuideStatusPre:SetPoint("TOPRIGHT",FR,"TOPRIGHT",-15,-305)
			VIEWLIST.GuideMacro:Hide()
			VIEWLIST.MacroButton:Hide()
			VIEWLIST.BarMacroButton:Hide()
			VIEWLIST.GuideMacro:ClearMacro()
		else
			VIEWLIST.OKButton:Disable()
			VIEWLIST.OKButton:Hide()
			--VIEWLIST.GuideTitleBack:SetPoint("BOTTOMRIGHT",VIEWLIST.GuideTitle,"BOTTOMRIGHT",-47,0) -- TODO do we need to support LONG titles?
			--VIEWLIST.GuideStatusPre:SetPoint("TOPLEFT",FR,"TOPRIGHT",-147,-305)
			--VIEWLIST.GuideStatusPre:SetPoint("TOPRIGHT",FR,"TOPRIGHT",-67,-305)

			VIEWLIST.GuideScroll:SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-155,40)

			VIEWLIST.GuideMacro:SetMacro(g.macro)
			if not g.macro.updateHandlers[FR] then
				g.macro.updateHandlers[FR]=function()
					VIEWLIST.MacroButton:UpdateDisplay()
					Menu:Refresh()
				end
			end
			VIEWLIST.GuideMacro:Show()
			VIEWLIST.MacroButton:UpdateDisplay()
			VIEWLIST.MacroButton:Show()
			VIEWLIST.BarMacroButton:Show()
		end

		if g.model or g.image then
			--VIEWLIST.GuideScroll:SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-155,40)
			-- WARNING as of writing both GuideImage and GuideModel are of the same height so
			-- there's no difference on which to attach. This might change, however.
			VIEWLIST.GuideData:SetPoint("TOPLEFT",VIEWLIST.GuideScroll.child,"TOPLEFT",0,-203)
			if g.model then
				VIEWLIST.GuideModel:Show()
				VIEWLIST.GuideModel:ClearModel()
				VIEWLIST.GuideModel:SetModels(g.model)
				VIEWLIST.GuideModel:SetSlideshow(5)
				VIEWLIST.GuideImage:Hide()
			elseif g.image then
				VIEWLIST.GuideImage:SetTexture(g.image)
				VIEWLIST.GuideImage:Show()
				VIEWLIST.GuideModel:Hide()
			end
		else
			--VIEWLIST.GuideScroll:SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-35,40)
			VIEWLIST.GuideData:SetPoint("TOPLEFT",VIEWLIST.GuideScroll.child,"TOPLEFT",0,-3)
			VIEWLIST.GuideImage:Hide()
			VIEWLIST.GuideModel:Hide()
		end
	else
		VIEWLIST.GuideTitle:SetText("")
		--VIEWLIST.GuideStatus:SetText("")
		--VIEWLIST.GuideStatus.tip=nil
		VIEWLIST.GuideData:SetText("")
		VIEWLIST.OKButton:Disable()
		VIEWLIST.GuideScroll:Hide()

		VIEWLIST.GuideImage:Hide()
		VIEWLIST.GuideModel:Hide()

		-- In case a macro hid/mangled them
		VIEWLIST.OKButton:Show()
		VIEWLIST.GuideMacro:Hide()
		VIEWLIST.MacroButton:Hide()
		VIEWLIST.BarMacroButton:Hide()
	end

	VIEWLIST.ViewInFolderButton:EnableIf((Menu.path=="SUGGESTED" or Menu.path=="RECENT" or Menu.path=="SEARCH") and Menu.selectedguide)

	VIEWLIST.ViewInFolderButton:ShowIf(VIEWLIST.ViewInFolderButton:IsEnabled())
	VIEWLIST.OKButton:ShowIf(VIEWLIST.OKButton:IsEnabled())

	VIEWLIST.GuideScroll:SetVerticalScroll(1)
	VIEWLIST.GuideScroll:SetVerticalScroll(0)  -- enforce an OnVerticalScroll event, uglyyy

	VIEWLIST:Show()
end

local function ViewHome_Show(path,flatgroup)
	--Spoo(nil,nil,Menu.flatgroup)
	local VIEWHOME = FR.ViewHome

	if not Menu.path or (Menu.path and Menu.path~="SUGGESTED") then
		FR.GuidesButton.label:SetTextColor(unpack(SkinData("TabSelectedColor")))
		FR.SuggestButton.label:SetTextColor(unpack(SkinData("TabDefaultColor")))
	end

	local buts = VIEWHOME.Labels


	-- fill in data
	local skipped=0
	local shownbuts=0
	for i=1,#buts do
		local but = buts[i]

		local g = Menu.flatgroup[i+skipped]
		if g and g.name == "SUGGESTED" then
			skipped = skipped + 1
			g = Menu.flatgroup[i+skipped]
		end

		-- groups have names. guides have titles.
		-- There will be no guides in HOME, though.
		if g and g.name then
			-- group
			local name=specialpaths[g.name]
			but:SetText(name)
			but.target = (Menu.path and Menu.path.."\\" or "") .. g.name
			but.isguide=nil

			local guide = ZGV:GetMostRecentGuide(g.name)

			if guide then
				local title,num,_ = guide.title,guide.CurrentStepNum
				if title and num then
					but.recentbut.title=title
					_,title = title:match("^(.*)\\+(.-)$")
					but.recentbut.label:SetText(title)
					but.recentbut.guidenum=num
					local textlength=but.recentbut.label:GetStringWidth()
					if textlength>240 then textlength=240 end

					but.recentbut:SetWidth(textlength+3) -- 3 is extra space
					but.recentbut:Show()
				else
					ZGV:Debug("No title or num for a recent guide!?")
					but.recentbut:Hide()
				end
			else
				but.recentbut:Hide()
			end


			local x,y = get_icon(g.name)
			if x then but:SetIcon(x,y,4,4,false,true) end

			shownbuts=shownbuts+1
			--but:GetFontString():SetTextColor(1,0.8,0)
			but:Show()
		else
			but:Hide()
		end
	end

	-- reposition big labels
	local yspan=VIEWHOME:GetHeight() --350
	local xspan=VIEWHOME:GetWidth() --750
	local columnbreak

	for i=1,NUMLABELSBIG do buts[i]:ClearAllPoints() end


	
	-- COLUMNIZE BUTTONS

	columnbreak = max(6,ceil(shownbuts/2)) -- break after 6 items have been added or more if needed.
	yspan = yspan/columnbreak --Needs adjusted slightly every time the main Viewer changes size.

	for i=1,#buts do
		local but = buts[i]

		if but:IsShown() then
			local xcolumn=math.floor((i-1)/columnbreak) -- 0 or 1
			local xoffset=(xspan/2)*xcolumn
			local yrow=(i-1)%columnbreak --0 -> columnbreak-1
			local yoffset=yspan*yrow
			local iconsize=yspan*0.6

			but:SetPoint("TOPLEFT",VIEWHOME,"TOPLEFT",xoffset,-yoffset)
			but:SetSize(xspan/2,yspan*1.02) -- Just a little overlap.

			but.label:ClearAllPoints()
			but.label:SetPoint("LEFT",but.icon,"RIGHT",yspan/10,0)

			--[[
			but.recentbut.text:SetPoint("LEFT",but.icon,"BOTTOMRIGHT",xspan/100,yspan/10)
			but.recentbut:SetPoint("LEFT",but.recentbut.text,"RIGHT",3,0)
			but.recentbut.label:SetPoint("LEFT",but.recentbut,"LEFT",0,0)
			but.recentbut.label:SetSize(xspan/2-(iconsize+yspan/10+but.recentbut.text:GetWidth()+30),10)
			--]]

			for fontsize=yspan/3,yspan*0.3,-1 do
				but.label:SetFont(FONT,fontsize)
				if but.label:GetWidth() < but:GetWidth() - iconsize - yspan/4 then break end -- if label fits in but width then stop making font smaller
			end

			but.label:SetPoint("RIGHT")
			but.icon:SetSize(iconsize,iconsize)
			but.icon:SetPoint("CENTER",but,"LEFT",xspan/20,0)
		end
	end

	VIEWHOME:Show()
end

function Menu:CreateFrame()
	if FR then return FR end
	if InCombatLockdown() then return end

	FR = CHAIN(ui:Create("Frame", UIParent, "ZygorGuidesViewer_GuideMenu"))
		:SetSize(750,500)
		:SetPoint("CENTER",UIParent,"CENTER",25,0)
		:SetFrameStrata("DIALOG")
		:CanDrag(true)
		:Hide()
	.__END
	self.Frame = FR

	-- Scaling animation SUCKS when backdrops are concerned. Sucky suckage of suckness, really.

	--[[
		local size=0.95
		local s = FR.showanimgr:CreateAnimation("Scale")
		s:SetScale(1/size,1/size)
		s:SetDuration(0.2)
		s:SetSmoothing("OUT")

		FR.showanimgr = FR:CreateAnimationGroup()
		local s = FR.showanimgr:CreateAnimation("Animation")
		s:SetScript("OnUpdate",function(self)  print("a") FR:SetScale(size+(1-size)*self:GetSmoothProgress())  FR:SetAlpha(self:GetSmoothProgress()) end)
		s:SetDuration(0.2)
		s:SetSmoothing("OUT")
		FR.showanimgr:SetScript("OnPlay",function(self)  FR:Show()  FR:SetAlpha(0)  FR:SetScale(size)  end)
		FR.showanimgr:SetScript("OnFinished",function(self)  FR:SetAlpha(1)  FR:SetScale(1) end)

		local s = FR.hideanimgr:CreateAnimation("Scale")
		s:SetScale(size,size)
		s:SetDuration(0.2)
		s:SetSmoothing("OUT")
	--]]

	FR.showanimgr = FR:CreateAnimationGroup()
	local a = CHAIN(FR.showanimgr:CreateAnimation("Alpha")) :SetChange(1) :SetDuration(0.2) :SetSmoothing("OUT") .__END

	FR.showanimgr:SetScript("OnPlay",function(self)  FR:Show()  FR:SetAlpha(0)  end)
	FR.showanimgr:SetScript("OnFinished",function(self)  FR:SetAlpha(1)  end)

	FR.hideanimgr = FR:CreateAnimationGroup()
	local a = CHAIN(FR.hideanimgr:CreateAnimation("Alpha")) :SetChange(-1) :SetDuration(0.2) :SetSmoothing("OUT") .__END

	FR.hideanimgr:SetScript("OnPlay",function(self)  local p = FR  p:SetAlpha(1)  end)
	FR.hideanimgr:SetScript("OnFinished",function(self)  local p = FR  p:Hide()  end)


	--FR.Logo = CHAIN(FR:CreateTexture()) :SetTexture(ZGV.DIR.."\\Skins\\zygorlogo2") :SetSize(100,100/4) :SetPoint("BOTTOMLEFT",FR,"BOTTOMLEFT",0,25).__END
	--FR.TitleBarSep = CHAIN(FR:CreateTexture()) :SetTexture(0.9,0.4,0.1,1.0) :SetPoint("TOPLEFT",FR.Logo,"BOTTOMLEFT",15,4) :SetSize(80,2)
	FR.Version = CHAIN(FR:CreateFontString())
		:SetPoint("BOTTOMLEFT",FR,"BOTTOMLEFT",10,5)
		:SetJustifyH("LEFT")
		:SetFont(FONTBOLD,12)
		:SetText("VER:")
	.__END
	FR.VersionNum = CHAIN(FR:CreateFontString())
		:SetPoint("LEFT",FR.Version,"RIGHT",3,0)
		:SetJustifyH("LEFT")
		:SetJustifyV("CENTER")
		:SetFont(FONT,12)
		:SetText(ZGV.version)

	FR.CloseButton = CHAIN(CreateFrame("Button", nil, FR, nil))
		:SetPoint("TOPRIGHT",FR,"TOPRIGHT",-5,-5) :SetSize(15,15)
		:SetScript("OnClick",function() Menu:Hide() end)
	.__END
	ZGV.AssignButtonTexture(FR.CloseButton,ZGV.SkinDir.."titlebuttons",6,32)

	FR.GuidesButton = CHAIN(CreateFrame("Button", "ZGV_Menu_Guides", FR)) :SetPoint("TOPLEFT",FR,"TOPLEFT",10,-10) :SetSize(80,40)
		:SetScript("OnClick",function() Menu:NavigateTo() end)
	.__END

	FR.GuidesButton.label = CHAIN(FR.GuidesButton:CreateFontString())
		:SetFont(FONT,25) :SetTextColor(unpack(SkinData("TabDefaultColor")))
		:SetText(L['guidepicker_button_guides'])
	 .__END

	 FR.GuidesButton:SetFontString(FR.GuidesButton.label)

	FR.RecentButton = CHAIN(CreateFrame("Button", "ZGV_Menu_Recent", FR))
		:SetPoint("LEFT",FR.GuidesButton,"RIGHT",5,0)
		:SetSize(120,40)
		:SetScript("OnClick",function() Menu:NavigateTo("RECENT") end)
	.__END

	FR.RecentButton.label = CHAIN(FR.RecentButton:CreateFontString())
		:SetFont(FONT,25) :SetTextColor(unpack(SkinData("TabDefaultColor")))
		:SetText(L['guidepicker_button_recent'])
	 .__END
	FR.RecentButton:SetFontString(FR.RecentButton.label)

	FR.SuggestButton = CHAIN(CreateFrame("Button", "ZGV_Menu_Suggest", FR))
		:SetPoint("LEFT",FR.RecentButton,"RIGHT",5,0)
		:SetSize(120,40)
		:SetScript("OnClick",function() Menu:NavigateTo("SUGGESTED") end)
	.__END

	FR.SuggestButton.label = CHAIN(FR.SuggestButton:CreateFontString())
		:SetFont(FONT,25) :SetTextColor(unpack(SkinData("TabDefaultColor")))
		:SetText(L['guidepicker_button_suggest'])
	 .__END
	 FR.SuggestButton:SetFontString(FR.SuggestButton.label)

	FR.SettingButton = CHAIN(CreateFrame("Button",nil, FR))
		:SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-5,5)
		:SetSize(15,15)
		:SetScript("OnClick",function() ZygorGuidesViewer:OpenOptions("display"); Menu:Hide() end)
		.__END
	ZGV.AssignButtonTexture(FR.SettingButton,ZGV.SkinDir.."titlebuttons",5,32)

	-- SEARCH

	FR.SearchEdit = CHAIN(ui:Create("EditBox",FR))
		:SetPoint("TOPRIGHT",FR,"TOPRIGHT",-60,-20)
		:SetScript("OnEnterPressed",function() FR.SearchEdit:ClearFocus() end)
		:HookScript("OnEscapePressed",function() self:AbortSearch() end)
		:SetScript("OnTextChanged",function(edit,user) if user then self:NavigateTo("SEARCH") end end)
	.__END
	--[[
	Not a SeachResetButton any longer. Just a pretty picture.
	FR.SearchResetButton = CHAIN(ui:Create("Button",FR.SearchEdit))
		:SetPoint("RIGHT",FR.SearchEdit,"RIGHT",-2,0)
		:SetSize(12,12)
		--:SetAttribute("tooltip",L['guidepicker_button_searchreset_desc'])
		:SetFrameLevel(FR.SearchEdit:GetFrameLevel()+2)
		--:SetScript("OnClick",function() self:ClearSearch(true) end)
		:SetText("O")
	.__END
	ZGV.AssignButtonTexture(FR.SearchResetButton,ZGV.SkinDir.."titlebuttons",6,32)
	--]]
	FR.SearchLabel = CHAIN(FR:CreateFontString())
		:SetFont(FONTBOLD,13)
		:SetPoint("RIGHT",FR.SearchEdit.back,"LEFT",-10,0)
		:SetJustifyH("RIGHT") :SetJustifyV("CENTER") :SetSize(100,16)
		:SetText(L['guidepicker_button_searchlabel'])
	.__END

	FR.SearchGlass = CHAIN(FR.SearchEdit:CreateTexture())
		:SetPoint("RIGHT",FR.SearchEdit.back,-2,0):SetSize(12,12)
		:SetTexture(ZGV.DIR.."\\Skins\\search")
	.__END


	FR.GuidesBox = CHAIN(ui:Create("SecFrame", FR, FR:GetName() .. "_GuidesBox"))
		:SetFrameStrata("DIALOG")
		:SetPoint("TOPLEFT",FR,"TOPLEFT",1,-60)
		--:SetPoint("BOTTOMRIGHT",FR,"TOPRIGHT",-1,-440)
		:SetPoint("BOTTOMRIGHT",FR,"BOTTOMRIGHT",-1,25)
		:SetScript("OnMouseUp",function(this,but) if but=="RightButton" then Menu:NavigateBack() end end)
	.__END

	FR.Zygor = CHAIN(FR.GuidesBox:CreateTexture())
		:SetTexture(ZGV.DIR.."\\Skins\\zygor_mascot_gray")
		:SetAlpha(0.1) :SetSize(400,400)
		:SetPoint("BOTTOMRIGHT",FR.GuidesBox,"BOTTOMRIGHT",30,-130)

	FR.BackButton = CHAIN(CreateFrame("Button", nil, FR.GuidesBox))
		:SetPoint("CENTER",FR.GuidesBox,"TOPLEFT",16,-16)
		:SetSize(14,14)
		:SetScript("OnClick",function() Menu:NavigateBack() end)
	.__END
	ZGV.AssignButtonTexture(FR.BackButton,ZGV.SkinDir.."titlebuttons",9,32)

	--[[
	FR.PathIcon = CHAIN(FR.GuidesBox:CreateTexture())
		:SetSize(30,30) :SetPoint("CENTER",FR,"TOPLEFT",52,-67)
		:SetTexture(ZGV.DIR.."\\Skins\\guideicons-big")
		:Hide()
	.__END
	--]]

	FR.Path1 = CHAIN(FR.GuidesBox:CreateFontString())
		:SetPoint("TOPLEFT",FR,"TOPLEFT",31,-60) :SetPoint("TOPRIGHT",FR,"TOPLEFT",275,-60)
		:SetJustifyH("LEFT") :SetJustifyV("CENTER") :SetHeight(30)
		:SetFont(FONTBOLD,14) :Show()
	.__END

	--[[FR.pathover = CHAIN(CreateFrame("FRAME",nil,FR.GuidesBox)) :SetPoint("TOPLEFT",FR.GuidesBox,"TOPLEFT",31,-5) :SetPoint("BOTTOMRIGHT",FR.GuidesBox,"TOPLEFT",280,-32)
		:SetScript("OnEnter",function(self)
			if not self.tip then return end
			GameTooltip:SetOwner(self,"ANCHOR_TOPLEFT")
			GameTooltip:ClearLines()
			GameTooltip:SetText(self.tip)
			GameTooltip:Show()
		end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		 --:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\white",edgeFile=ZGV.DIR.."\\Skins\\midnight\\black\\roundcorners",tileSize=8,edgeSize=8,insets={top=8,bottom=8,left=8,right=8}}) :SetBackdropColor(0,0,0,0.50) :SetBackdropBorderColor(0,0,0,0.5)
	.__END--]]



	FR.ViewHome = CHAIN(CreateFrame("FRAME", FR:GetName() .. "_ViewHome", FR.GuidesBox))
		:SetAllPoints()
		:SetFrameLevel(FR.GuidesBox:GetFrameLevel()+1)
	.__END

	FR.ViewList = CHAIN(CreateFrame("FRAME", FR:GetName() .. "_ViewList", FR.GuidesBox))
		:SetAllPoints()
		:SetFrameLevel(FR.GuidesBox:GetFrameLevel()+1)
	.__END

	-- main categories:

	ViewHome_Create()

	ViewList_Create()

	return FR
end

function Menu:Show(path)
	if not FR then
		self:CreateFrame()
		if not FR then return end
	end
	if type(path)=="table" and path.title then
		self:NavigateToGuide(path.title)
	elseif path=="HOME" then
		self:NavigateTo()
	elseif path then
		self:NavigateTo(path)
	else
		self:NavigateToGuide(ZGV.CurrentGuideName)
	end
	if not FR:IsVisible() then
		FR:Show()
		FR.showanimgr:Play()
	end
end

function Menu:Hide()
	if FR then FR.hideanimgr:Play() end
end

--- MAIN FUNCTION: set self.flatgroup, because that's what gets displayed.
function Menu:NavigateTo(path)
	if path=="" then path=nil end

	if not self.Frame then self:CreateFrame() end

	-- Stupid, stupid hacks.
	if path and path:find("^GEAR") then
		if not CharacterFrame:IsShown() then ToggleFrame(CharacterFrame) end
		CharacterFrame_Expand()
		ZGVCharacterGearFinderButton:Click()
		self:Hide()
		return
	elseif path and path:find("^PETSMOUNTS\\Pets")then
		if (not PetJournalParent) then
			PetJournal_LoadUI()
		end
		if PetJournal then
			if not PetJournal:IsVisible() then TogglePetJournal(2) end
			self:Hide()
		end
		return
	elseif path and path:find("^GOLD") and not IsShiftKeyDown() then
		ZGV.db.profile.load_gold = true
		ZGV.Gold:Show()
		self:Hide()
		return
	end
	self.path = path

	self.Frame.ViewList.SwitchRecentButton:Hide()

	ZGV:Debug("Navigating To: "..tostring(path))

	local order={"BETA","LEVELING","EVENTS","DAILIES","DUNGEONS","LOREMASTER","GOLD","ACHIEVEMENTS","TITLES","REPUTATIONS","PROFESSIONS","PETSMOUNTS"}

	if path=="SUGGESTED" then
		local suggestions = ZGV:FindSuggestedGuides()

		self.Frame.GuidesButton.label:SetTextColor(unpack(SkinData("TabDefaultColor"))) --Change the text color of the buttons
		self.Frame.SuggestButton.label:SetTextColor(unpack(SkinData("TabSelectedColor")))
		self.Frame.RecentButton.label:SetTextColor(unpack(SkinData("TabDefaultColor")))

		if suggestions["LEVELING"] and #suggestions["LEVELING"]==1 and FALSE then -- automatically_navigate_to_single_suggestion__OFF
			return self:NavigateToGuide(suggestions["LEVELING"][1].title)
		else
			-------- Make a flat group from the structured results.
			if self.flatgroup then wipe(self.flatgroup) else self.flatgroup = {} end

			local suggroups={}
			
			for g,guidetype in ipairs(order) do
				local suggoftype = suggestions[guidetype]
				if suggoftype and #suggoftype>0 then
					tinsert(self.flatgroup,{header=guidetype})
					for gi,guide in ipairs(suggoftype) do
						if guide.sugGroup then -- try to find a group for it
							if suggroups[guide.sugGroup] then
								tinsert(suggroups[guide.sugGroup].guides,guide)
							else
								suggroups[guide.sugGroup] = {groups={},guides={guide},name = guide.sugGroup, ord=1}
								tinsert(self.flatgroup,suggroups[guide.sugGroup])
							end
						else
							tinsert(self.flatgroup,guide)
						end
					end
				end
			end



		--------
		end
	elseif path=="RECENT" then
		self.Frame.ViewList.SwitchRecentButton:Show()

		self.Frame.RecentButton.label:SetTextColor(unpack(SkinData("TabSelectedColor")))
		self.Frame.GuidesButton.label:SetTextColor(unpack(SkinData("TabDefaultColor"))) --Change the text color of the buttons
		self.Frame.SuggestButton.label:SetTextColor(unpack(SkinData("TabDefaultColor")))

		if self.flatgroup then wipe(self.flatgroup) else self.flatgroup = {} end

		if self.simpleList then tinsert(self.flatgroup,{header="RECENT:"}) end

		for g,gtype in ipairs(order) do repeat
			local hist = ZGV:GetGuidesHistory(gtype)
			if not (hist and #hist > 0) then break end

			if not self.simpleList then
				-- We have catagories
				tinsert(self.flatgroup,{header=gtype})
			end

			for k, guide in pairs(hist) do
				if self.simpleList and not guide.icon then
					guide.icon = {get_icon(gtype)}
				end

				tinsert(self.flatgroup,guide)
			end
		until true end
	elseif path=="SEARCH" then
		local search = self.Frame.SearchEdit:GetText()
		if search~="" then
			self.flatgroup = ZGV:FindGuides(search)
		else
			Menu:AbortSearch()
		end
	--[[
	elseif path=="DETECTOR" then
		local search = ZGV.CreatureDetector.DetectedGuides
		assert(search,"No guides detected, yet we're in DETECTOR??") -- how the hell you happened here if no target guides are found?
		if #search==1 then -- it's a single guide
			self:Show(search[1])
			return
		else
			self:Show()
		end
		self.flatgroup = search
		self.path = "Corresponding Guides"
		--self.Frame.SearchResetButton:Show()
	--]]
	else
		if path then
			self.group = ZGV:FindGroup(ZGV.registered_groups,path)
		else
			self.group = ZGV.registered_groups
		end

		self.flatgroup = {}
		for gi,g in ipairs(self.group.groups) do
			tinsert(self.flatgroup,g)
		end
		for gi,g in ipairs(self.group.guides) do
			if not g.hidden then --Dont Put guides that are hidden into the flatgroup. Hidden guides can still be searched for. They should not be suggested though.
				tinsert(self.flatgroup,g)
			end
		end
		if not self.flatgroup_backup then
			self.flatgroup_backup = {}
			for key, value in pairs(self.flatgroup) do
				self.flatgroup_backup [key] = value
			end
		end
	end

	if path~="SEARCH" then self:ClearSearch() end

	local scrollCounter = 0
	-- Could be optimized to not loop through the flat list all of the time, but usually is < 20 items so is not a big deal. Max is 2000 items when searching sometimes
	for i,v in ipairs(self.flatgroup) do
		-- 2 for a header, 1 for a list
		scrollCounter = scrollCounter + (v.header and 2 or 1)
	end

	FR.ViewList.Scroll:TotalValue(scrollCounter)
	FR.ViewList.Scroll:SetValue(0)

	-- find first guide
	local g
	for gi,gu in ipairs(self.flatgroup) do if gu.title then g=gu break end end

	self:SelectGuide(g)

	self:Refresh()
end

--- Navigate to specified guide title. If no title is given, navigate to top level.
function Menu:NavigateToGuide(guidepath)
	if type(guidepath)=="table" and guidepath.title then guidepath=guidepath.title end  --allow guide objects

	if not guidepath then
		self:NavigateTo()
	else
		local pre,post = guidepath:match("^(.+)\\(.-)$")
		self:NavigateTo(pre)
		self:SelectGuide(guidepath)
		self:ScrollIntoView()
	end
end

function Menu:NavigateBack()
	if self.path then
		local pre,post = self.path:match("^(.+)\\(.-)$")
		self:NavigateTo(pre)
	else
		self:NavigateTo()
	end
end

function Menu:Refresh()
	local path = self.path

	if path
	and path ~= "SUGGESTED" 
	and path ~= "RECENT" then
		local folders = {strsplit("\\",path)}
		local txt=specialpaths[folders[1]]
		for i=2,#folders,1 do
			txt=txt .. " |TInterface\\CHATFRAME\\ChatFrameExpandArrow:0|t " .. specialpaths[folders[i]]
		end

		FR.Path1:SetText(specialpaths[folders[#folders]]:upper())
		FR.Path1:Show()
	else
		FR.Path1:Hide()
	end

	FR.ViewHome:Hide()
	FR.ViewList:Hide()

	if self.flatgroup then
		local buts, view

		-- prepare targets
		if self.path then
			ViewList_Show()
		else
			ViewHome_Show()
		end

	else
		print("NOT A FLAT GROUP")
	end

	FR.BackButton:ShowIf(self.path and (self.path~="SUGGESTED" and self.path~="RECENT"))

	-- if guides need loading, make a guide-load cycle.
	self.guideparsetimer = self.guideparsetimer or ZGV:ScheduleRepeatingTimer(function()
		local all_loaded = ZGV:LoadNeededGuides()
		ZGV:Debug("Menu: guide full parse cycle: "..(all_loaded and "" or "not").." all loaded")
		if all_loaded then
			ZGV:CancelTimer(self.guideparsetimer)
			self.guideparsetimer = nil
		else
			self:Refresh()  -- yes, that's a self-call, but it's in a timer, so no recursion there.
		end
	end, 0.1)

	--self:RefreshGuide()
end

function Menu:ScrollIntoView()
	if self.selectedguide then
		local selectedpos
		for i,gi in ipairs(self.flatgroup) do
			if gi==self.selectedguide then  selectedpos=i  break  end
		end
		--print(selectedpos,offset)
		if selectedpos and selectedpos>10 then
			return self:UpdateScroll(selectedpos-5)
		end
	end
end

-- Display the current guide - assuming we're in LIST VIEW.
function Menu:RefreshGuide()
	ViewList_Show()  -- that's pretty much the same, let's make it easier.
end

local DOUBLECLICK_TIME = 0.5
local lastclick = 0

function ZGV_Menu_Button_OnClick(but,button)
	if button=="LeftButton" then
		if not but.target then return end
		if but.isguide then
			if GetTime()-lastclick<DOUBLECLICK_TIME and Menu.selectedguide.title==but.target then
				ZGV_Menu_OKButton_OnClick(but)
			else
				lastclick = GetTime()
				Menu:SelectGuide(but.target)
			end
		else
			Menu:NavigateTo(but.target)
		end
	else
		Menu:NavigateBack()
	end
end

function ZGV_Menu_MacroButton_OnClick(but,button)
	if button=="LeftButton" then
		if Menu.selectedguide and Menu.selectedguide.type=="MACRO" then
			local mg=Menu.selectedguide.macro
			if not mg:LocateMacro() then
				local mid=mg:CreateMacro()
			else
				mg:DeleteMacro()
			end
			Menu:Refresh()
		end
	end
end

function ZGV_Menu_BarMacroButton_OnClick(but,button)
	if button=="LeftButton" then
		if Menu.selectedguide and Menu.selectedguide.type=="MACRO" then
			local mg=Menu.selectedguide.macro
			if not mg:LocateMacro() then
				local mid=mg:CreateMacro()
			end
			mg:PlaceOnBar()
			Menu:Refresh()
		end
	end
end

function ZGV_Menu_MacroButton_UpdateDisplay(button)
	if Menu.selectedguide and Menu.selectedguide.type=="MACRO" then
		local mg=Menu.selectedguide.macro
		local macroabsent=not mg:LocateMacro()
		if mg:LocateMacro() then
			button:SetText(L['guidepicker_button_macro_del'])
			button:SetAttribute("tooltip",L['guidepicker_button_macro_del_desc'])
		else
			button:SetText(L['guidepicker_button_macro_add'])
			button:SetAttribute("tooltip",L['guidepicker_button_macro_add_desc'])
		end
	end
end

function Menu:UpdateScroll(offset)
	if FR.ViewList:IsShown() then
		--if not offset then offset=FauxScrollFrame_GetOffset(FR.ViewList.Scroll) end
		--if offset>#self.flatgroup-10 then offset=#self.flatgroup-10 end
		--if offset<0 then offset=0 end
		FR.ViewList.Scroll:SetValue(offset)
	end
end

function Menu:SelectGuide(path)
	--ZGV:Debug("&guidemenu SelectGuide "..(path and (path.title and "title="..(path.title or "nil")) or path or "nil").." in "..debugstack(1):match("^(.-)\n"))
	if type(path)=="table" and path.title then
		Menu.selectedguide=path
	else
		Menu.selectedguide=path and ZGV:GetGuideByTitle(path) or nil
	end
	Menu:RefreshGuide()
end

function ZGV_Menu_OKButton_OnClick(but)
	if Menu.selectedguide and Menu.selectedguide.type~="MACRO" then
		local ret = ZGV:SetGuide(Menu.selectedguide.title,Menu.selectedguide.CurrentStepNum or 1)
		Menu:Hide()
	end -- TODO if macro
end


function Menu:AbortSearch(nav)
	for key, value in pairs(self.flatgroup_backup) do
		self.flatgroup [key] = value
	end
	self.path=nil
	Menu:NavigateTo()
end

function Menu:ClearSearch(nav)
	FR.SearchEdit:SetText("")
	--FR.SearchResetButton:Hide()
	if nav then
		self:NavigateToGuide(ZGV.CurrentGuideName)
	end
end


function Menu:GetFolderBranch(folderpath)
	for path,group in ipairs(ZGV.registered_groups) do
		if path:match(folderpath) then
			print("folderbranch",path)
		end
	end
end
