-- global
local GNF = {
	ui = {},
	positions = {
		minItemLvl = -216,
		ignoredWords = -266,
		enforcedWords = -306,
		ranks = -346,
		guildMember = -242
	}
}

-- a filtered list of all the items that should be shown
local GNFP_GuildNewsTable = {};
local callCounter = 0; --used as first few calls will return weird values
local customFilterChanged = false;
local oldStatus = {}; --stores old status (options and one concrete news message) to only update when necessary
local AddonLoadedHook = CreateFrame("Frame")

AddonLoadedHook:RegisterEvent("ADDON_LOADED");
AddonLoadedHook:SetScript("OnEvent", function(self, event, AddonName)
	if AddonName == "Blizzard_GuildUI" then
		GNFP_DB = GNFP_DB or {};
		GBFP_ReplaceBlizzardFunctions()
		GNFP_SetupOptions()
		GNFP_InitFilterRanks()
	end
end)

function GNFP_SetupOptions()
	--GuildNewsFiltersFrame
	
-- Make the frame larger to fit in the options
	GuildNewsFiltersFrame:SetHeight(GuildNewsFiltersFrame:GetHeight()+160)
	GuildNewsFiltersFrame:SetWidth(GuildNewsFiltersFrame:GetWidth()+50)
	
	local backdrop = {
		bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",  -- path to the background texture
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",  -- path to the border texture
		tile = false,    -- true to repeat the background texture to fill the frame, false to scale it
		tileSize = 32,  -- size (width or height) of the square repeating background tiles (in pixels)
		edgeSize = 10,  -- thickness of edge segments and square size of edge corners (in pixels)
		insets = {    -- distance from the edges of the frame to those of the background texture (in pixels)
			left = 4,
			right = 4,
			top = 4,
			bottom = 4
		}
	}
	
-- Min Item Level Frame (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.minItemLvlFrame=CreateFrame("FRAME","GNFP_MinItemLevel_Frame",GuildNewsFiltersFrame);
	GNF.ui.minItemLvlFrame:SetWidth(50); 
	GNF.ui.minItemLvlFrame:SetHeight(20);
	GNF.ui.minItemLvlFrame:SetPoint("TopLeft",GuildNewsFiltersFrame,"TopLeft",170,GNF.positions.minItemLvl);
	GNF.ui.minItemLvlFrame:SetBackdrop(backdrop)
-- Min Item Level Frame (end) ------------------------------------------------------------------------------------------------------

-- Min Item Level Text (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.minItemLvlText = GNF.ui.minItemLvlFrame:CreateFontString("WPug_DifferentTypes_Frame_Text","ARTWORK","GameFontNormal");
	GNF.ui.minItemLvlText:SetPoint("Right",GNF.ui.minItemLvlFrame,"Left",-5,0);
	GNF.ui.minItemLvlText:SetJustifyH("Right");
	GNF.ui.minItemLvlText:SetText("|cffffffff" .. GNF_MIN_ITEM_LEVEL .. ":");
-- Min Item Level Text (end) ------------------------------------------------------------------------------------------------------

-- Min Item Level CheckBox (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.minItemLvlCheckButton = CreateFrame("CheckButton", "GNFP_MinItemLevel_CheckButton", GuildNewsFiltersFrame, "UICheckButtonTemplate");
	GNF.ui.minItemLvlCheckButton:SetWidth(23);
	GNF.ui.minItemLvlCheckButton:SetHeight(23);
	GNF.ui.minItemLvlCheckButton:SetPoint("TopLeft",GuildNewsFiltersFrame,"TopLeft",25,GNF.positions.minItemLvl);
	GNF.ui.minItemLvlCheckButton:SetText("");
	GNF.ui.minItemLvlCheckButton:SetChecked(GNFP_DB["GNFP_MinItemLevel_CheckButton"])
	GNF.ui.minItemLvlCheckButton:SetScript("OnClick", function(self)
		GNFP_DB[self:GetName()] = self:GetChecked();
		customFilterChanged = true;
		GuildNewsSort(0);
	end)
-- Min Item Level CheckBox (end) ------------------------------------------------------------------------------------------------------
	
-- Min Item Level (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.minItemLvlBox = CreateFrame("EditBox", "GNFP_MinItemLevel_Box", GuildNewsFiltersFrame, InputBoxTemplate )
	GNF.ui.minItemLvlBox:SetFont("Fonts\\FRIZQT__.TTF", 12)
	GNF.ui.minItemLvlBox:SetAutoFocus(false)
	GNF.ui.minItemLvlBox:SetNumeric(true)
	GNF.ui.minItemLvlBox:SetWidth(460)
	GNF.ui.minItemLvlBox:SetHeight(12) -- Set these to whatever height/width is needed 
	GNF.ui.minItemLvlBox:SetPoint("Left", GNFP_MinItemLevel_Frame, "Left", 8, 0)
	
	GNF.ui.minItemLvlBox:SetText(GNFP_DB["GNFP_MinItemLevel_Box"] or "354")
	GNF.ui.minItemLvlBox:SetScript("OnEditFocusLost",	function(self)
													if GNF.ui.minItemLvlBox:GetText() == "" then
														GNF.ui.minItemLvlBox:SetText(0)
													end
													
													GNFP_DB[self:GetName()] = self:GetText();
													customFilterChanged = true;
													GuildNewsSort(0);
												end)
	GNF.ui.minItemLvlBox:SetScript("OnEnterPressed",	function(self) self:ClearFocus() 	end)
	GNF.ui.minItemLvlBox:SetScript("OnEscapePressed",	function(self) self:ClearFocus()	end)
-- Min Item Level (end) ------------------------------------------------------------------------------------------------------



-- Ignored Words Frame (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.ignoredWordsFrame=CreateFrame("FRAME","GNFP_IgnoredWords_Frame",GuildNewsFiltersFrame);
	GNF.ui.ignoredWordsFrame:SetWidth(90);
	GNF.ui.ignoredWordsFrame:SetHeight(20);
	GNF.ui.ignoredWordsFrame:SetPoint("TopLeft",GuildNewsFiltersFrame,"TopLeft",170,GNF.positions.ignoredWords);
	GNF.ui.ignoredWordsFrame:SetBackdrop(backdrop)
-- Ignored Words Frame (end) ------------------------------------------------------------------------------------------------------

-- Ignored Words Text (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.ignoredWordsText = GNF.ui.ignoredWordsFrame:CreateFontString("WPug_DifferentTypes_Frame_Text","ARTWORK","GameFontNormal");
	GNF.ui.ignoredWordsText:SetPoint("Right",GNF.ui.ignoredWordsFrame,"Left",-5,0);
	GNF.ui.ignoredWordsText:SetJustifyH("Right");
	GNF.ui.ignoredWordsText:SetText("|cffffffff" .. GNF_IGNORED_WORDS .. ":");
	
	GNF.ui.ignoredWordsText2 = GNF.ui.ignoredWordsFrame:CreateFontString("WPug_DifferentTypes_Frame_Text","ARTWORK","GameFontNormal");
	GNF.ui.ignoredWordsText2:SetPoint("TopLeft",GNF.ui.ignoredWordsText,"BottomLeft",-25,-5);
	GNF.ui.ignoredWordsText2:SetJustifyH("Right");
	GNF.ui.ignoredWordsText2:SetText("|cff9f9f9f(".. GNF_IGNORED_WORD_INFO ..")");
-- Ignored Words Text (end) ------------------------------------------------------------------------------------------------------

-- Ignored Words CheckBox (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.ignoredWordsCheckButton = CreateFrame("CheckButton", "GNFP_IgnoredWords_CheckButton", GuildNewsFiltersFrame, "UICheckButtonTemplate");
	GNF.ui.ignoredWordsCheckButton:SetWidth(23);
	GNF.ui.ignoredWordsCheckButton:SetHeight(23);
	GNF.ui.ignoredWordsCheckButton:SetPoint("TopLeft",GuildNewsFiltersFrame,"TopLeft",25,GNF.positions.ignoredWords);
	GNF.ui.ignoredWordsCheckButton:SetText("");
	GNF.ui.ignoredWordsCheckButton:SetChecked(GNFP_DB["GNFP_IgnoredWords_CheckButton"])
	GNF.ui.ignoredWordsCheckButton:SetScript("OnClick", function(self)
		GNFP_DB[self:GetName()] = self:GetChecked();
		customFilterChanged = true;
		GuildNewsSort(0);
	end)
-- Ignored Words CheckBox (end) ------------------------------------------------------------------------------------------------------
	
-- Ignored Words (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.enforcedWordsBox = CreateFrame("EditBox", "GNFP_IgnoredWords_Box", GuildNewsFiltersFrame, InputBoxTemplate )
	GNF.ui.enforcedWordsBox:SetFont("Fonts\\FRIZQT__.TTF", 12)
	GNF.ui.enforcedWordsBox:SetAutoFocus(false)
	GNF.ui.enforcedWordsBox:SetWidth(80)
	GNF.ui.enforcedWordsBox:SetHeight(12) -- Set these to whatever height/width is needed 
	GNF.ui.enforcedWordsBox:SetPoint("Left", GNF.ui.ignoredWordsFrame, "Left", 8, 0)
	
	GNF.ui.enforcedWordsBox:SetText(GNFP_DB["GNFP_IgnoredWords_Box"] or "")
	GNF.ui.enforcedWordsBox:SetScript("OnEditFocusLost",	function(self)
													GNFP_DB[self:GetName()] = self:GetText();
													customFilterChanged = true;
													GuildNewsSort(0);
												end)
	GNF.ui.enforcedWordsBox:SetScript("OnEnterPressed",	function(self) self:ClearFocus() 	end)
	GNF.ui.enforcedWordsBox:SetScript("OnEscapePressed",	function(self) self:ClearFocus()	end)
-- Ignored Words (end) ------------------------------------------------------------------------------------------------------

-- Enforced Words Frame (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.enforcedWordsFrame=CreateFrame("FRAME","GNFP_EnforcedWords_Frame",GuildNewsFiltersFrame);
	GNF.ui.enforcedWordsFrame:SetWidth(90); 
	GNF.ui.enforcedWordsFrame:SetHeight(20);
	GNF.ui.enforcedWordsFrame:SetPoint("TopLeft",GuildNewsFiltersFrame,"TopLeft",170,GNF.positions.enforcedWords);
	GNF.ui.enforcedWordsFrame:SetBackdrop(backdrop)
-- Enforced Words Frame (end) ------------------------------------------------------------------------------------------------------

-- Enforced Words Text (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.enforcedWordsText = GNF.ui.ignoredWordsFrame:CreateFontString("WPug_DifferentTypes_Frame_Text","ARTWORK","GameFontNormal");
	GNF.ui.enforcedWordsText:SetPoint("Right",GNF.ui.enforcedWordsFrame,"Left",-5,0);
	GNF.ui.enforcedWordsText:SetJustifyH("Right");
	GNF.ui.enforcedWordsText:SetText("|cffffffff" .. GNF_ENFORCED_WORDS .. ":");
	
	GNF.ui.enforcedWordsText2 = GNF.ui.ignoredWordsFrame:CreateFontString("WPug_DifferentTypes_Frame_Text","ARTWORK","GameFontNormal");
	GNF.ui.enforcedWordsText2:SetPoint("TopLeft",GNF.ui.enforcedWordsText,"BottomLeft",-25,-5);
	GNF.ui.enforcedWordsText2:SetJustifyH("Right");
	GNF.ui.enforcedWordsText2:SetText("|cff9f9f9f(".. GNF_IGNORED_WORD_INFO ..")");
-- Enforced Words Text (end) ------------------------------------------------------------------------------------------------------

-- Enforced Words CheckBox (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.enforcedWordsCheckButton = CreateFrame("CheckButton", "GNFP_EnforcedWords_CheckButton", GuildNewsFiltersFrame, "UICheckButtonTemplate");
	GNF.ui.enforcedWordsCheckButton:SetWidth(23);
	GNF.ui.enforcedWordsCheckButton:SetHeight(23);
	GNF.ui.enforcedWordsCheckButton:SetPoint("TopLeft",GuildNewsFiltersFrame,"TopLeft",25,GNF.positions.enforcedWords);
	GNF.ui.enforcedWordsCheckButton:SetText("");
	GNF.ui.enforcedWordsCheckButton:SetChecked(GNFP_DB["GNFP_EnforcedWords_CheckButton"])
	GNF.ui.enforcedWordsCheckButton:SetScript("OnClick", function(self)
		GNFP_DB[self:GetName()] = self:GetChecked();
		customFilterChanged = true;
		GuildNewsSort(0);
	end)
-- Enforced Words CheckBox (end) ------------------------------------------------------------------------------------------------------
	
-- Enforced Words (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.enforcedWordsBox = CreateFrame("EditBox", "GNFP_EnforcedWords_Box", GuildNewsFiltersFrame, InputBoxTemplate )
	GNF.ui.enforcedWordsBox:SetFont("Fonts\\FRIZQT__.TTF", 12)
	GNF.ui.enforcedWordsBox:SetAutoFocus(false)
	GNF.ui.enforcedWordsBox:SetWidth(80)
	GNF.ui.enforcedWordsBox:SetHeight(12) -- Set these to whatever height/width is needed 
	GNF.ui.enforcedWordsBox:SetPoint("Left", GNF.ui.enforcedWordsFrame, "Left", 8, 0)
	
	GNF.ui.enforcedWordsBox:SetText(GNFP_DB["GNFP_IgnoredWords_Box"] or "")
	GNF.ui.enforcedWordsBox:SetScript("OnEditFocusLost",	function(self)
													GNFP_DB[self:GetName()] = self:GetText();
													customFilterChanged = true;
													GuildNewsSort(0);
												end)
	GNF.ui.enforcedWordsBox:SetScript("OnEnterPressed",	function(self) self:ClearFocus() 	end)
	GNF.ui.enforcedWordsBox:SetScript("OnEscapePressed",	function(self) self:ClearFocus()	end)
-- Enforced Words (end) ------------------------------------------------------------------------------------------------------

-- Filter Ranks DropDown Button (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.filterRanksButton = CreateFrame("Button", "GNFP_FilterRanks_Button", GuildNewsFiltersFrame, "UIPanelButtonTemplate");
	GNF.ui.filterRanksButton:SetWidth(80);
	GNF.ui.filterRanksButton:SetPoint("TopLeft",GuildNewsFiltersFrame,"TopLeft",170,GNF.positions.ranks);
	GNF.ui.filterRanksButton:SetText(GNF_EDIT_FILTER_RANKS);
	GNF.ui.filterRanksButton:SetScript("OnClick", function(self)
		ToggleDropDownMenu(1, nil,GNF.ui.filterRanksDropDown , self:GetName(), 0, 0)
	end)	
-- Filter Ranks DropDown Button (end) ------------------------------------------------------------------------------------------------------

-- FIlter Ranks Text (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.filterRanksText = GNF.ui.filterRanksButton:CreateFontString("WPug_DifferentTypes_Frame_Text","ARTWORK","GameFontNormal");
	GNF.ui.filterRanksText:SetPoint("Right",GNF.ui.filterRanksButton,"Left",-5,0);
	GNF.ui.filterRanksText:SetJustifyH("Right");
	GNF.ui.filterRanksText:SetText("|cffffffff" .. GNF_FILTER_RANKS .. ":");
-- Filter Ranks Text (end) ------------------------------------------------------------------------------------------------------

-- Filter Ranks CheckBox (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.filterRanksCheckBox = CreateFrame("CheckButton", "GNFP_FilterRanks_CheckBox", GuildNewsFiltersFrame, "UICheckButtonTemplate");
	GNF.ui.filterRanksCheckBox:SetWidth(23);
	GNF.ui.filterRanksCheckBox:SetHeight(23);
	GNF.ui.filterRanksCheckBox:SetPoint("TopLeft",GuildNewsFiltersFrame,"TopLeft",25,GNF.positions.ranks);
	GNF.ui.filterRanksCheckBox:SetText("");
	GNF.ui.filterRanksCheckBox:SetChecked(GNFP_DB["GNFP_FilterRanks_CheckBox"])
	GNF.ui.filterRanksCheckBox:SetScript("OnClick", function(self)
		GNFP_DB[self:GetName()] = self:GetChecked();
		if(self:GetChecked()) then
			GNFP_CollectGuildMemberInfo();
		end
		customFilterChanged = true;
		GuildNewsSort(0);
	end)
-- Filter Ranks CheckBox (end) ------------------------------------------------------------------------------------------------------
	if(GNFP_DB["GNFP_FilterRanks_CheckBox"]) then
		GNFP_CollectGuildMemberInfo();
	end

-- Guild member Frame (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.GuildMemberFrame=CreateFrame("FRAME","GNFP_GuildMember_Frame",GuildNewsFiltersFrame);
	GNF.ui.GuildMemberFrame:SetWidth(90); 
	GNF.ui.GuildMemberFrame:SetHeight(20);
	GNF.ui.GuildMemberFrame:SetPoint("TopLeft",GuildNewsFiltersFrame,"TopLeft",170, GNF.positions.guildMember);
	GNF.ui.GuildMemberFrame:SetBackdrop(backdrop)
-- Guild member Frame (end) ------------------------------------------------------------------------------------------------------

-- Guild member Text (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.GuildMemberText = GNF.ui.GuildMemberFrame:CreateFontString("WPug_DifferentTypes_Frame_Text","ARTWORK","GameFontNormal");
	GNF.ui.GuildMemberText:SetPoint("Right",GNF.ui.GuildMemberFrame,"Left",-5,0);
	GNF.ui.GuildMemberText:SetJustifyH("Right");
	GNF.ui.GuildMemberText:SetText("|cffffffff" .. GNF_GUILD_MEMBER .. ":");
-- Guild member Text (end) ------------------------------------------------------------------------------------------------------

-- Guild member CheckBox (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.GuildMemberCheckButton = CreateFrame("CheckButton", "GNFP_GuildMember_CheckButton", GuildNewsFiltersFrame, "UICheckButtonTemplate");
	GNF.ui.GuildMemberCheckButton:SetWidth(23);
	GNF.ui.GuildMemberCheckButton:SetHeight(23);
	GNF.ui.GuildMemberCheckButton:SetPoint("TopLeft",GuildNewsFiltersFrame,"TopLeft",25, GNF.positions.guildMember);
	GNF.ui.GuildMemberCheckButton:SetText("");
	GNF.ui.GuildMemberCheckButton:SetChecked(GNFP_DB["GNFP_GuildMember_CheckButton"])
	GNF.ui.GuildMemberCheckButton:SetScript("OnClick", function(self)
		GNFP_DB[self:GetName()] = self:GetChecked();
		customFilterChanged = true;
		GuildNewsSort(0);
	end)
-- Guild member CheckBox (end) ------------------------------------------------------------------------------------------------------
	
-- Guild member (begin) ------------------------------------------------------------------------------------------------------
	GNF.ui.GuildMemberCheckBox = CreateFrame("EditBox", "GNFP_GuildMember_Box", GuildNewsFiltersFrame, InputBoxTemplate )
	GNF.ui.GuildMemberCheckBox:SetFont("Fonts\\FRIZQT__.TTF", 12)
	GNF.ui.GuildMemberCheckBox:SetAutoFocus(false)
	GNF.ui.GuildMemberCheckBox:SetWidth(80)
	GNF.ui.GuildMemberCheckBox:SetHeight(12) -- Set these to whatever height/width is needed 
	GNF.ui.GuildMemberCheckBox:SetPoint("Left", GNF.ui.GuildMemberFrame, "Left", 8, 0)
	
	GNF.ui.GuildMemberCheckBox:SetText(GNFP_DB["GNFP_GuildMember_Box"] or "")
	GNF.ui.GuildMemberCheckBox:SetScript("OnEditFocusLost",	function(self)
													GNFP_DB[self:GetName()] = self:GetText();
													customFilterChanged = true;
													GuildNewsSort(0);
												end)
	GNF.ui.GuildMemberCheckBox:SetScript("OnEnterPressed",	function(self) self:ClearFocus() 	end)
	GNF.ui.GuildMemberCheckBox:SetScript("OnEscapePressed",	function(self) self:ClearFocus()	end)
-- Guild member (end) ------------------------------------------------------------------------------------------------------

end


function GNFP_CollectGuildMemberInfo()
	local totalMembers, onlineMembers, onlineAndMobileMembers = GetNumGuildMembers();
	
	for roosterIndex = 1, totalMembers do -- go through guild roster to create database (only way to associate guild members name with their rank (if there is another way this might be doable alot more efficiently))
		local fullName, rank, rankIndex, level, class, zone, note, officernote, online, isAway, classFileName, achievementPoints, achievementRank, isMobile = GetGuildRosterInfo(roosterIndex);
		local charName, _ = strsplit("-", fullName, 2) -- delete Server portion, necessary as server names will sometimes not be loaded, might cause confusion if exact names appear multiple times in one guild

		if not(GNFP_DB["memberRank" .. charName] == rankIndex) then --should be more efficient as most write operations will be skipped
			GNFP_DB["memberRank" .. charName] = rankIndex;
		end
	end
end

function GNFP_GuildMemberFilter(memberName)
	-- reset the filter out flag
	local GNFP_FilterFlag = false;

	if GNFP_GuildMember_Box:GetText() ~= "" then
		local SearchText = GNFP_GuildMember_Box:GetText();
		
		if SearchText ~= nil and memberName ~= nil then
			if memberName == SearchText then
				--allow the item
				GNFP_FilterFlag = true;
			end
		end
	end
	
	return GNFP_FilterFlag
end

function GNFP_IgnoredWordsFilter(itemName)
	-- reset the filter out flag
	local GNFP_FilterFlag = true;

	if GNFP_IgnoredWords_Box:GetText() ~= "" then
		local SearchText = GNFP_IgnoredWords_Box:GetText();
		
		while SearchText ~= nil do
			if SearchText ~= nil then
				local SearchTerm, RestOfText = strsplit(",", SearchText, 2)
				SearchText = RestOfText;
				
				if itemName ~= nil and SearchTerm ~= nil then
					if strfind(strlower(itemName), strlower(SearchTerm)) then
						--set the filter out flag for this id to false (it is not allowed)
						GNFP_FilterFlag = false;
					end
				end
			end
		end
	end
	
	return GNFP_FilterFlag
end

-- check if the word is enforced (could not be filtered)
function GNFP_IsEnforced(itemName)
	-- reset the filter out flag
	local GNFP_FilterFlag = false;

	if GNFP_EnforcedWords_Box:GetText() ~= "" then
		local SearchText = GNFP_EnforcedWords_Box:GetText();
		
		while SearchText ~= nil do
			if SearchText ~= nil then
				local SearchTerm, RestOfText = strsplit(",", SearchText, 2)
				SearchText = RestOfText;

				if itemName ~= nil and SearchTerm ~= nil then
					if strfind(strlower(itemName), strlower(SearchTerm)) then
						--set the filter out flag for this id to false (it is not allowed)
						GNFP_FilterFlag = true;
					end
				end
			end
		end
	end
	
	return GNFP_FilterFlag
end

function GNFP_InitFilterRanks() -- filtered Rank selection DropDown Menu (begin)

	GNF.ui.filterRanksDropDown = CreateFrame("FRAME", "GNFPFilterRanksDropDown", UIParent, "UIDropDownMenuTemplate"); -- creating the dropdown frame
	UIDropDownMenu_SetWidth(GNF.ui.filterRanksDropDown, 50);
	UIDropDownMenu_SetText(GNF.ui.filterRanksDropDown, "This should not be visible!"); -- as this menu is only opened via ToggleDropDownMenu this should not be visible
	UIDropDownMenu_Initialize(GNF.ui.filterRanksDropDown, function(self, level, menuList) -- setting the dropdown menus initialization function to:
		local info = UIDropDownMenu_CreateInfo(); -- create info
		-- add Title (begin)
		info.isTitle,info.notCheckable = true, true; -- set info attributes to fit title format
	    info.text = GNF_IGNORED_RANKS .. ":"; -- set title text
	    UIDropDownMenu_AddButton(info); -- add title to dropdown menu
		info.isTitle, info.notCheckable, info.disabled = false, false, false; -- reset info attributes to keep using it for normal buttons
		-- add Title (end)
		for rankLevel = 1, GuildControlGetNumRanks() do --go through all ranks
			info.text, info.checked = GuildControlGetRankName(rankLevel), GNFP_DB["filteredRank" .. rankLevel]; -- read rank filter settings from DB
			info.func = self.addRankFilter; -- add function to button (see below)
			info.arg1 = rankLevel; -- set first argument of function to rankLevel
			info.arg2 = info.checked; -- set second argument of function to whether this rank was filtered already
			UIDropDownMenu_AddButton(info); -- add button to dropdown menu
		end
	end)

	function GNF.ui.filterRanksDropDown:addRankFilter(rankLevel, filtered) -- function is called when a FilterRanks_DropdDown option is clicked
		if(filtered) then -- if the rankLevel is currently filtered out:
			GNFP_DB["filteredRank" .. rankLevel] = false; -- set the option whether to filter the rankLevel out to false
		else -- if the rankLevel is currently not filtered out:
			 GNFP_DB["filteredRank" .. rankLevel] = true; -- set the option whether to filter the rankLevel out to true
		end 
		customFilterChanged = true;
		GuildNewsSort(0); -- update the news display
		ToggleDropDownMenu(1, nil,GNF.ui.filterRanksDropDown, GNF.ui.filterRanksButton, 0, 0); --reopen the dropdown menu (make it seem like it never closed ;) )
	end

end -- filtered Rank selection DropDown Menu (end)

function GBFP_ReplaceBlizzardFunctions()
	local orig_GetGuildNewsInfo = GetGuildNewsInfo;
	local orig_GetNumGuildNews  = GetNumGuildNews;
	local orig_GuildNewsButton_OnClick = GuildNewsButton_OnClick;
	
	function GetNumGuildNews()
		local noStatusChange = true;
		local checkedChange = false;
		callCounter = callCounter + 1;

		--when values are more dependable start checking for status differences to improve performance (after 1 seems appropriate, 
		--higher figures are possible but will decrease performance), forcing an update every 100 calls.
		if (callCounter >= 1 and callCounter%(math.floor((oldStatus["GetNumGuildNews"]or 0 )  / 9)) ~= 0) then
			-- check for changes in the news
			checkedChange = true;
			local comparisonNews = {};
			if (oldStatus["newsPos"] ~= nil) then
				comparisonNews = { orig_GetGuildNewsInfo(oldStatus["newsPos"]) }; -- get news to compare to stored news
			end
			local indexing = 1;
			-- check if stored news and checked news are equal
			while (oldStatus["oldNews" .. indexing] == comparisonNews[indexing] and comparisonNews[3] ~= nil and indexing <= #comparisonNews) do
				indexing = indexing + 1;
			end
			
			if(indexing ~= #comparisonNews + 1 or #comparisonNews == 0) then --if they are not equal find new News to store
				noStatusChange = false;
				indexing = 1;
				comparisonNews = { orig_GetGuildNewsInfo(1) };
				while (comparisonNews[3] ~= 3 and comparisonNews[3] ~= 4 and comparisonNews[3] ~= 5 and indexing <= orig_GetNumGuildNews()) do -- search only for item news
					indexing = indexing + 1;
					comparisonNews = { orig_GetGuildNewsInfo(indexing) };
				end
				oldStatus["newsPos"] = indexing;
				for indexing = 1, #comparisonNews do --store new news info
					oldStatus["oldNews" .. indexing] = comparisonNews[indexing];
				end
			end
			
			-- check for blizzard filters
			local filters = { GetGuildNewsFilters() };
			for i = 1, #filters do
				if (not(oldStatus["filter" .. i] == filters[i])) then
					noStatusChange = false;
					oldStatus["filter" .. i] = filters[i];
				end
			end
			-- check for custom filters changes (currently done by setting boolean in the settings) 
			-- NOTE: if new custom filter options will be added, the boolean should be included or there will be problems with updating
			if (customFilterChanged) then
				customFilterChanged = false;
				noStatusChange = false;
			end
		end
		if(noStatusChange and checkedChange) then
			--print("noChange");
			return oldStatus["GetNumGuildNews"];
		end
		--print(callCounter)
		local j = 0;
		GNFP_GuildNewsTable = {};
		
		local NewsIsAllowed = true;
		local NewsIsEnforced = false;
		
		for i=1,orig_GetNumGuildNews() do 

			local isSticky, isHeader, newsType, text1, text2, id, data, data2, weekday, day, month, year = orig_GetGuildNewsInfo(i);
		
			-- enforced words filter
			if GNF.ui.enforcedWordsCheckButton:GetChecked() then
				NewsIsEnforced = GNFP_IsEnforced(text2);
			end
			
			if (newsType == 1 or newsType == 3 or newsType == 4 or newsType == 5) and text2 ~= nil and NewsIsEnforced ~= true then
			
				NewsIsAllowed = true;
				
				-- guild member filter
				if NewsIsAllowed and GNF.ui.GuildMemberCheckButton:GetChecked() and text1 ~= nil then
				    -- delete Server portion, necessary as server names will sometimes not be loaded, might cause confusion if two exact names exist in one guild
					local memberName, _ = strsplit("-", text1, 2)
					local memberAllowed = GNFP_GuildMemberFilter(memberName);


					if not memberAllowed then
						NewsIsAllowed = false;
					end
				end

				-- rank filter
				if NewsIsAllowed and GNF.ui.filterRanksCheckBox:GetChecked() and text1 ~= nil then
				    -- delete Server portion, necessary as server names will sometimes not be loaded, might cause confusion if two exact names exist in one guild
					local memberName, _ = strsplit("-", text1, 2)

					--check if members rank is filtered out or not (or -1 is used if guild member has left the guild)
					if GNFP_DB[("filteredRank" .. ((GNFP_DB["memberRank" .. memberName] or (-1)) + 1))] then
						NewsIsAllowed = false;
					end
				end

				if (newsType == 3 or newsType == 4 or newsType == 5) and text2 ~= nil then
					
					local ItemStringAllowed = GNFP_IgnoredWordsFilter(text2);
				
					-- word filter
					if GNF.ui.ignoredWordsCheckButton:GetChecked() and NewsIsAllowed then
						if not ItemStringAllowed then
							NewsIsAllowed = false;
						end
					end
					
					--item level filter
					if (GNF.ui.minItemLvlCheckButton:GetChecked() and NewsIsAllowed) and text2 ~= nil then
						--Get the item level from the item id
						local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType,
						itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice = GetItemInfo(text2);
						itemLevel = itemLevel or 0;
						
						-- get the compare value from the box
						local itemLevelCompare = tonumber(GNF.ui.minItemLvlBox:GetText()) or 0;
					
						--check if it should be filtered
						if itemLevel < itemLevelCompare then
							NewsIsAllowed = false;
						end
					end
				end
				--If the item is allowed then add it to the directory
				if NewsIsAllowed then
					j = j + 1;
					GNFP_GuildNewsTable[j] = i;
				end
			else
				j = j + 1;
				GNFP_GuildNewsTable[j] = i;
			end
		end
		oldStatus["GetNumGuildNews"] = j;
		return j;
	end
	
	function GetGuildNewsInfo(index)

		if GNFP_GuildNewsTable[index] ~= nil then

			local isSticky, isHeader, newsType, text1, text2, id, data, data2, weekday, day, month, year = orig_GetGuildNewsInfo(GNFP_GuildNewsTable[index]);

			if (newsType == 3 or newsType == 4 or newsType == 5) and text2 ~= nil then

				local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, 
				itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice = GetItemInfo(text2);
				itemLevel = itemLevel or 0;

				text1 = "(|cFFF2C319" .. itemLevel .. "|r) " .. text1

			end
			
			return isSticky, isHeader, newsType, text1, text2, id, data, data2, weekday, day, month, year
			--return orig_GetGuildNewsInfo(GNFP_GuildNewsTable[index])

		end
	end
	
	function GuildNewsButton_OnClick(self, button)
		if button == "LeftButton" then
			if IsControlKeyDown() or IsShiftKeyDown() then				
				local isSticky, isHeader, newsType, text1, text2, id, data, data2, weekday, day, month, year = GetGuildNewsInfo(self.index);
				
				if (newsType == 3 or newsType == 4 or newsType == 5) and text2 ~= nil then
					local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType,
					itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice = GetItemInfo(text2);
					
					if IsShiftKeyDown() then
						ChatEdit_InsertLink(itemLink) 
					elseif IsControlKeyDown() then
						DressUpItemLink(itemLink)
					end
				end
			end
		end
		
		orig_GuildNewsButton_OnClick(self, button)
    end
end
