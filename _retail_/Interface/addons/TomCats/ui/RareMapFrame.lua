local _, addon = ...
local TCL = addon.TomCatsLibs
local L = addon.TomCatsLibs.Locales

local supportedMaps, RaresLogFrame_ShowRareDetails

local DISPLAY_STATE_CLOSED = 1
local DISPLAY_STATE_OPEN_MINIMIZED_NO_LOG = 2
local DISPLAY_STATE_OPEN_MINIMIZED_WITH_LOG = 3
local DISPLAY_STATE_OPEN_MAXIMIZED = 4
local DISPLAY_STATE_OPEN_MINIMIZED_WITH_RARE_LOG = 5

local lastDisplayStates = { DISPLAY_STATE_CLOSED, DISPLAY_STATE_CLOSED }
local function setLastDisplayState(displayState)
    lastDisplayStates[1] = lastDisplayStates[2]
    lastDisplayStates[2] = displayState
end

local CREATURE_STATUS = {
    COMPLETE = 0,
    HIDDEN = 1,
    UNAVAILABLE = 2,
    LOOT_ELIGIBLE = 3,
    BONUS_ROLL_ELIGIBLE = 4,
    WORLD_QUEST_AVAILABLE = 5
}

local function SidePanelToggle_Refresh()
    if TomCatsRareMapFrame:IsShown() or not QuestMapFrame:IsShown() then
        WorldMapFrame.SidePanelToggle.OpenButton:Show()
        WorldMapFrame.SidePanelToggle.CloseButton:Hide()
    else
        WorldMapFrame.SidePanelToggle.OpenButton:Hide()
        WorldMapFrame.SidePanelToggle.CloseButton:Show()
    end
end

TomCatsRareLogMixin = {}

function TomCatsRareLogMixin:InitLayoutIndexManager()
    self.layoutIndexManager = CreateLayoutIndexManager()
    self.layoutIndexManager:AddManagedLayoutIndex("RaresLog", QUEST_LOG_WAR_CAMPAIGN_LAYOUT_INDEX + 1)
    local faction = UnitFactionGroup("player")
    self.RaresFrame.Contents.Separator:Show()
    self.RaresFrame.Contents.StoryHeader:Show()
    self.RaresFrame.Contents.Notice.Text:SetText(
            "New feature being developed:\n|cffffffffRare Spawn Share (34% of votes)|r\n\n|cff00ff00Round 3 voting has begun!|r\nVote each day on what's next:\n|cffffffffhttps://twitch.tv/TomCat|r"
    )
end

local raresLog

local function CheckForUpdatedRaresLog()
    if raresLog and raresLog.updated then
        TomCatsRareMapFrame:RefreshRaresLog()
        raresLog.updated = nil
    end
end

C_Timer.NewTicker(0.2, CheckForUpdatedRaresLog);

local RareTextColorLookup = {
    [CREATURE_STATUS.COMPLETE] = { QuestDifficultyColors["standard"], QuestDifficultyHighlightColors["standard"] },
    [CREATURE_STATUS.LOOT_ELIGIBLE] = { QuestDifficultyHighlightColors["header"], QuestDifficultyHighlightColors["difficult"] },
    [CREATURE_STATUS.UNAVAILABLE] = { QuestDifficultyColors["impossible"], QuestDifficultyHighlightColors["impossible"] },
}

local RareButtonLookup = {
    [CREATURE_STATUS.COMPLETE] = "Complete",
    [CREATURE_STATUS.LOOT_ELIGIBLE] = "Incomplete",
    [CREATURE_STATUS.UNAVAILABLE] = "Unavailable",
}

function TomCatsRareLogTitleButton_OnClick(self)
    PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON);
    TomCatsRareMapFrame.RaresFrame:Hide()
    RaresLogFrame_ShowRareDetails(self.creature)
end

function TomCatsRareLogTitleButton_OnMouseDown(self)
    local anchor, _, _, x, y = self.Text:GetPoint();
    self.Text:SetPoint(anchor, x + 1, y - 1);
end

function TomCatsRareLogTitleButton_OnMouseUp(self)
    local anchor, _, _, x, y = self.Text:GetPoint();
    self.Text:SetPoint(anchor, x - 1, y + 1);
end

local LOOT_NOUN_COLOR = CreateColor(1.0, 0.82, 0.0, 1.0)

function TomCatsRareLogTitleButton_OnEnter(self)
    local textColor = RareTextColorLookup[self.creature["Status"]][2]
    self.Text:SetTextColor( textColor.r, textColor.g, textColor.b );
    local creature = self.creature
    EmbeddedItemTooltip:ClearAllPoints();
    EmbeddedItemTooltip:SetPoint("TOPLEFT", self, "TOPRIGHT", 34, 0);
    EmbeddedItemTooltip:SetOwner(self, "ANCHOR_PRESERVE");
    local color = WORLD_QUEST_QUALITY_COLORS[1];
    EmbeddedItemTooltip:SetText(creature["Name"], color.r, color.g, color.b);
    local tooltipWidth = 20 + max(231, EmbeddedItemTooltipTextLeft1:GetStringWidth());
    if ( tooltipWidth > UIParent:GetRight() - QuestMapFrame:GetParent():GetRight() ) then
        EmbeddedItemTooltip:ClearAllPoints();
        EmbeddedItemTooltip:SetPoint("TOPRIGHT", self, "TOPLEFT", -34, 0);
        EmbeddedItemTooltip:SetOwner(self, "ANCHOR_PRESERVE");
        EmbeddedItemTooltip:SetText(creature["Name"], color.r, color.g, color.b);
    end
    local footerText = ("|cff00ff00<%s>|r"):format(L["Click to view Creature Details"])
    if (creature["Loot"]) then
        local itemID
        if type(creature["Loot"]) == "table" then
            if creature["Loot"].items then
                itemID = creature["Loot"].items[1]
                if #(creature["Loot"].items) > 1 then
                    footerText = ("+ %d more items\n\n" .. footerText):format(#(creature["Loot"].items) - 1)
                end
            end
        else
            itemID = creature["Loot"]
        end
        if itemID then
            GameTooltip_AddBlankLinesToTooltip(EmbeddedItemTooltip, 1);
            GameTooltip_AddColoredLine(EmbeddedItemTooltip, LOOT_NOUN, LOOT_NOUN_COLOR, true);
            EmbeddedItemTooltip_SetItemByID(EmbeddedItemTooltip.ItemTooltip, itemID)
        end
    end
    EmbeddedItemTooltip.BottomFontString:SetText(footerText)
    EmbeddedItemTooltip.BottomFontString:SetShown(true)
    EmbeddedItemTooltip:Show()
end

function TomCatsRareLogTitleButton_OnLeave(self)
    local textColor = RareTextColorLookup[self.creature["Status"]][1]
    self.Text:SetTextColor( textColor.r, textColor.g, textColor.b )
    EmbeddedItemTooltip:Hide()
end

function TomCatsRareRewardItem_OnEnter(self)
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
    GameTooltip:SetItemByID(self:GetID());
    GameTooltip:Show()
end

function TomCatsRareRewardItem_OnClick(self, button)
    if ( IsModifiedClick() and self.objectType == "item") then
        local _, itemLink = GetItemInfo(self:GetID())
        HandleModifiedItemClick(itemLink);
    end
end

function TomCatsRareLogMixin:RefreshRaresLog()
    self.titleFramePool:ReleaseAll()
    self.poiFramePool:ReleaseAll()
    local lastButton
    if (raresLog) then
        if not raresLog.isSorted then
            raresLog.isSorted = true
            raresLog.creatures_sorted = { }
            local rareNames = { }
            local lookupByName = { }
            for _, v in pairs(raresLog.creatures) do
                local name = v["Name"]
                if not name then
                    raresLog.isSorted = false
                else
                    table.insert(rareNames,name)
                    lookupByName[name] = v
                end
            end
            table.sort(rareNames)
            for _, v in ipairs(rareNames) do
                table.insert(raresLog.creatures_sorted,lookupByName[v])
            end
        end
        for _, creature in pairs(raresLog.creatures_sorted) do
            if creature["Status"] ~= CREATURE_STATUS.HIDDEN then
                local button = self.titleFramePool:Acquire()
                button.creature = creature
                button.Text:SetText(creature["Name"])
                local textColor = RareTextColorLookup[creature["Status"]][1]
                button.Text:SetTextColor(textColor.r, textColor.g, textColor.b)
                button:ClearAllPoints()
                if (lastButton) then
                    button:SetPoint("TOPLEFT",lastButton,"BOTTOMLEFT",0,-4)
                else
                    button:SetPoint("TOPLEFT",self.RaresFrame.Contents.StoryHeader, "BOTTOMLEFT", 29, -8)
                end
                --button.creature = v
                --if v["Status"] == CREATURE_STATUS.COMPLETE then
                --    button.Complete:Show()
                --elseif v["Status"] == CREATURE_STATUS.LOOT_ELIGIBLE then
                --    button.Incomplete:Show()
                --elseif v["Status"] == CREATURE_STATUS.UNAVAILABLE then
                --    button.Unavailable:Show()
                --    button.label:Disable()
                --end
                lastButton = button
                button:Show()

                local poiButton = self.poiFramePool:Acquire()
                poiButton:ClearAllPoints()
                poiButton:SetPoint("LEFT", button, -21, 2);
                poiButton.parent = button;
                poiButton:SetFrameLevel(button:GetFrameLevel() + 1)
                poiButton:Show()
                poiButton.creature = creature
                for key, value in pairs(RareButtonLookup) do
                    if (key == creature["Status"]) then
                        poiButton[value]:Show()
                    else
                        poiButton[value]:Hide()
                    end
                end
            end
        end
    end
end

local function ResetTitleFrame(framepool, frame)
    FramePool_HideAndClearAnchors(framepool, frame)
    frame.label:SetNormalFontObject(TomCatsRareIncomplete)
    frame.label:SetHighlightFontObject(TomCatsRareIncompleteHighlight)
    frame.Complete:Hide()
    frame.Incomplete:Hide()
    frame.Unavailable:Hide()
    frame.label:Enable()
end

function TomCatsRareLogMixin:Refresh()
    self.RaresFrame.Contents.LogHeader.Text:SetText(L["Rare Creatures Log"])
    self.RaresFrame.Contents.LogHeader:Show()
    self.RaresFrame.Contents.StoryHeader.Text:SetText(C_Map.GetMapInfo(WorldMapFrame:GetMapID())["name"])
    self.layoutIndexManager:Reset()
    self:RefreshRaresLog()
    self.RaresFrame.Contents:Layout()
end

-- Fire the testHandler when:
-- The rare log is first shown while on the supported map ID
-- when the map ID changes to a supported map ID while the rare log is already being shown


function TomCatsRareLogMixin:SetShown(show)
    if not self:IsShown() then
        self:Show()
        self.DetailsFrame:Hide()
        self.RaresFrame:Show()
        local handlers = supportedMaps[WorldMapFrame:GetMapID()].handlers
        if handlers and handlers.raresLog then
            raresLog = handlers.raresLog()
            raresLog.locationIndex = raresLog.locationIndex or 1
        else
            raresLog = nil
        end
    end
end

function TomCatsRareLogMixin:UpdateDisplayState()
    if not WorldMapFrame:IsShown() then
        setLastDisplayState(DISPLAY_STATE_CLOSED)
    elseif QuestMapFrame:IsShown() or QuestMapFrame.DetailsFrame:IsShown() then
        if QuestMapFrame.DetailsFrame:IsShown() then
            self:Hide()
            QuestScrollFrame:Hide()
        else
            if supportedMaps[WorldMapFrame:GetMapID()] and addon.savedVariables.character.preferQuestLog == nil then
                self:SetShown(true)
                QuestScrollFrame:Hide()
                self:Refresh()
                setLastDisplayState(DISPLAY_STATE_OPEN_MINIMIZED_WITH_RARE_LOG)
                return
            end
            QuestScrollFrame:Show()
        end
        setLastDisplayState(DISPLAY_STATE_OPEN_MINIMIZED_WITH_LOG)
    else
        if WorldMapFrame:IsMaximized() then
            setLastDisplayState(DISPLAY_STATE_OPEN_MAXIMIZED)
        else
            setLastDisplayState(DISPLAY_STATE_OPEN_MINIMIZED_NO_LOG)
        end
    end
    self:Hide()
end

function TomCatsRareMapFrame_OnLoad(self)
    self:InitLayoutIndexManager()
    self.titleFramePool = CreateFramePool("BUTTON", TomCatsRareMapFrame.RaresFrame.Contents, "TomCatsRareLogTitleTemplate");
    self.poiFramePool = CreateFramePool("FRAME", TomCatsRareMapFrame.RaresFrame.Contents, "TomCatsRarePOITemplate");
end

function TomCatsRareMapFrame_OnEvent() end

function TomCatsRareMapFrame_OnHide() end

local lastMapID = 0

local helpPlate_override

local function UpdateAll()
    if WorldMapFrame:GetMapID() ~= lastMapID then
        lastMapID = WorldMapFrame:GetMapID()
        if TomCatsRareMapFrame:IsShown() then
            local supportedMap = supportedMaps[WorldMapFrame:GetMapID()]
            if supportedMap then
                local handlers = supportedMaps[WorldMapFrame:GetMapID()].handlers
                if handlers and handlers.raresLog then
                    raresLog = handlers.raresLog()
                else
                    raresLog = nil
                end
                TomCatsRareMapFrame:Refresh()
            end
        end
    end
    TomCatsRareMapFrame:UpdateDisplayState()
    TomCatsRarePanelToggle:Refresh()
    SidePanelToggle_Refresh()
    if HelpPlate_IsShowing(helpPlate_override) and (WorldMapFrame:IsMaximized() or not WorldMapFrame:IsShown()) then
        HelpPlate_Hide()
    end
end

local function RevertToQuestFrameShown(save)
    WorldMapFrame:SetDisplayState(DISPLAY_STATE_OPEN_MINIMIZED_WITH_LOG)
    QuestScrollFrame:Show()
    TomCatsRareMapFrame:Hide()
    TomCatsRarePanelToggle:Refresh()
    SidePanelToggle_Refresh()
    setLastDisplayState(DISPLAY_STATE_OPEN_MINIMIZED_WITH_LOG)
    if save then
        SetCVar("questLogOpen", "1")
    end
end

local function Hook_WorldMapFrame_SidePanelToggle()
    if supportedMaps[WorldMapFrame:GetMapID()] then
        addon.savedVariables.character.preferQuestLog = true
    end
    if (lastDisplayStates[1] == DISPLAY_STATE_OPEN_MINIMIZED_WITH_RARE_LOG and lastDisplayStates[2] == DISPLAY_STATE_OPEN_MINIMIZED_NO_LOG) or
            (lastDisplayStates[2] == DISPLAY_STATE_OPEN_MINIMIZED_WITH_RARE_LOG and lastDisplayStates[1] == DISPLAY_STATE_OPEN_MINIMIZED_NO_LOG) then
        RevertToQuestFrameShown(true)
    end
end

local function Hook_ToggleQuestLog()
    if lastDisplayStates[2] == DISPLAY_STATE_OPEN_MINIMIZED_WITH_RARE_LOG then
        RevertToQuestFrameShown()
    end
end



TomCatsWorldMapRareSidePanelToggleMixin = { }

function TomCatsWorldMapRareSidePanelToggleMixin:OnClick()
    addon.savedVariables.character.preferQuestLog = nil
    if (self.OpenButton:IsShown()) then
        WorldMapFrame:SetDisplayState(DISPLAY_STATE_OPEN_MINIMIZED_WITH_LOG)
        QuestScrollFrame:Hide()
        TomCatsRareMapFrame:SetShown(true)
        TomCatsRareMapFrame:Refresh()
        self.OpenButton:Hide()
        self.CloseButton:Show()
        SetCVar("questLogOpen", "1")
    else
        WorldMapFrame:SetDisplayState(DISPLAY_STATE_OPEN_MINIMIZED_NO_LOG)
        TomCatsRareMapFrame:Hide()
        self.OpenButton:Show()
        self.CloseButton:Hide()
        SetCVar("questLogOpen", "0")
    end
    WorldMapFrame.SidePanelToggle.OpenButton:Show()
    WorldMapFrame.SidePanelToggle.CloseButton:Hide()
end

function TomCatsWorldMapRareSidePanelToggleMixin:Refresh()
    if WorldMapFrame.SidePanelToggle:IsShown() and supportedMaps[WorldMapFrame:GetMapID()] then
        self:Show()
        if TomCatsRareMapFrame:IsShown() then
            self.OpenButton:Hide()
            self.CloseButton:Show()
        else
            self.OpenButton:Show()
            self.CloseButton:Hide()
        end
    else
        self:Hide()
    end
end

--local helpPlateHooked
--local function Hook_HelpPlate_Show(helpPlate, parentFrame, mainHelpButton)
--    if not helpPlateHooked then
--        helpPlateHooked = true
--        if (helpPlate == WorldMapFrame.BorderFrame.Tutorial.helpInfo) then
--
--        end
--        helpPlate_override = CreateFromMixins(helpPlate)
--        table.insert(helpPlate_override,1, { ButtonPos = { x = 600,	y = -180 }, HighLightBox = { x = 590, y = -389, width = 100, height = 100 },	ToolTipDir = "DOWN", ToolTipText = "Hello zetsumi103" })
--        HelpPlate_Show(helpPlate_override, parentFrame, mainHelpButton)
--        helpPlateHooked = nil
--    end
--end
--
--local function Hook_HelpPlate_Hide(userToggled)
--
--end

local function TryShowTutorial()
    if not addon.savedVariables.account.tutorials["Rares Log Toggle"] then
        local frame = CreateFrame("FRAME",nil,TomCatsRarePanelToggle,"TomCatsRareMapFrameTutorialBoxTemplate")
        frame:SetFrameStrata("DIALOG")
        frame:SetFrameLevel(100)
        frame.Text:SetText(L["TUTORIAL_RaresLogToggle"]);
        frame.Text:SetSpacing(4);
        SetClampedTextureRotation(frame.Arrow.Arrow, 270);
        SetClampedTextureRotation(frame.Arrow.Glow, 270);
        frame.Arrow:ClearAllPoints();
        frame.Arrow:SetPoint("BOTTOMLEFT", frame, "RIGHT", -4, 4);
        frame.Arrow.Glow:ClearAllPoints();
        frame.Arrow.Glow:SetPoint("CENTER", frame.Arrow.Arrow, "CENTER", 2, 0);
        frame:ClearAllPoints();
        frame:SetPoint("RIGHT", TomCatsRarePanelToggle, "BOTTOMLEFT", -18, 0);
        local newHeight = frame.Text:GetHeight() + 48
        if 100 >= newHeight then newHeight = 100 end
        frame:SetHeight(newHeight);
        frame.CloseButton:SetScript("OnClick", function()
            addon.savedVariables.account.tutorials["Rares Log Toggle"] = true
            frame:Hide()
        end)
        frame:Show()
    end
    --if not addon.savedVariables.account.tutorials["Rares Log Stars"] then
    --    local frame = CreateFrame("FRAME",nil,TomCatsRareMapFrame,"TomCatsRareMapFrameTutorialBoxTemplate")
    --    frame:SetFrameStrata("DIALOG")
    --    frame:SetFrameLevel(100)
    --    frame.Text:SetText(L["TUTORIAL_RaresLogStars"]);
    --    frame.Text:SetSpacing(4);
    --    SetClampedTextureRotation(frame.Arrow.Arrow, 270);
    --    SetClampedTextureRotation(frame.Arrow.Glow, 270);
    --    frame.Arrow:ClearAllPoints();
    --    frame.Arrow:SetPoint("BOTTOMLEFT", frame, "RIGHT", -4, 4);
    --    frame.Arrow.Glow:ClearAllPoints();
    --    frame.Arrow.Glow:SetPoint("CENTER", frame.Arrow.Arrow, "CENTER", 2, 0);
    --    frame:ClearAllPoints();
    --    frame:SetPoint("RIGHT", TomCatsRareMapFrame, "LEFT", -18, -100);
    --    local newHeight = frame.Text:GetHeight() + 48
    --    if 100 >= newHeight then newHeight = 100 end
    --    frame:SetHeight(newHeight);
    --    frame.CloseButton:SetScript("OnClick", function()
    --        addon.savedVariables.account.tutorials["Rares Log Stars"] = true
    --        frame:Hide()
    --    end)
    --    frame:Show()
    --end
    --if not addon.savedVariables.account.tutorials["Rares Log Names"] then
    --    local frame = CreateFrame("FRAME",nil,TomCatsRareMapFrame,"TomCatsRareMapFrameTutorialBoxTemplate")
    --    frame:SetFrameStrata("DIALOG")
    --    frame:SetFrameLevel(501)
    --    frame.Text:SetText(L["TUTORIAL_RaresLogNames"]);
    --    frame.Text:SetSpacing(4);
    --    SetClampedTextureRotation(frame.Arrow.Arrow, 0);
    --    SetClampedTextureRotation(frame.Arrow.Glow, 0);
    --    frame.Arrow:ClearAllPoints();
    --    frame.Arrow:SetPoint("BOTTOM", frame, "BOTTOM", 0, -16);
    --    frame.Arrow.Glow:ClearAllPoints();
    --    frame.Arrow.Glow:SetPoint("CENTER", frame.Arrow.Arrow, "CENTER", 0, -2);
    --    frame:ClearAllPoints();
    --    frame:SetPoint("CENTER", TomCatsRareMapFrame, "CENTER", -20, 0);
    --    local newHeight = frame.Text:GetHeight() + 48
    --    if 100 >= newHeight then newHeight = 100 end
    --    frame:SetHeight(newHeight);
    --    frame.CloseButton:SetScript("OnClick", function()
    --        addon.savedVariables.account.tutorials["Rares Log Stars"] = true
    --        frame:Hide()
    --    end)
    --    frame:Show()
    --end
end

local function AddOverlayFrame(self, templateName, templateType, anchorPoint, relativeFrame, relativePoint, offsetX, offsetY)
    local frame = CreateFrame(templateType, nil, self, templateName);
    if anchorPoint then
        frame:SetPoint(anchorPoint, relativeFrame, relativePoint, offsetX, offsetY);
    end
    frame.relativeFrame = relativeFrame or self;
    --if not self.overlayFrames then
    --    self.overlayFrames = { };
    --end
    --tinsert(self.overlayFrames, frame);

    return frame;
end

local function ADDON_LOADED(_, _, arg1)
    if (arg1 == addon.name) then
        TCL.Events.UnregisterEvent("ADDON_LOADED", ADDON_LOADED)
        supportedMaps = addon.supportedMaps
        TomCatsRarePanelToggle = AddOverlayFrame(WorldMapFrame,"TomCatsWorldMapRareSidePanelToggleTemplate", "BUTTON", "BOTTOMRIGHT", WorldMapFrame:GetCanvasContainer(), "BOTTOMRIGHT", -2, 36)
        tinsert(WorldMapFrame.overlayFrames, TomCatsRarePanelToggle);
        TryShowTutorial()

        TomCatsRareMapFrame:SetParent(WorldMapFrame)
        TomCatsRareMapFrame:SetFrameStrata("HIGH")
        TomCatsRareMapFrame:SetFrameLevel(10)
        TomCatsRareMapFrame:ClearAllPoints()
        TomCatsRareMapFrame:SetPoint("TOPRIGHT", -6, -20)
        hooksecurefunc(WorldMapFrame, "SetMapID", UpdateAll)
        hooksecurefunc(WorldMapFrame.SidePanelToggle, "OnClick", Hook_WorldMapFrame_SidePanelToggle)
        hooksecurefunc(WorldMapFrame, "SetDisplayState", UpdateAll)
        hooksecurefunc("QuestMapFrame_ShowQuestDetails", UpdateAll)
        hooksecurefunc("ToggleQuestLog", Hook_ToggleQuestLog)
        hooksecurefunc("HideUIPanel", UpdateAll)
        --hooksecurefunc("HelpPlate_Show", Hook_HelpPlate_Show)
        --hooksecurefunc("HelpPlate_Hide", Hook_HelpPlate_Hide)

        if WorldMapFrame.SidePanelToggle.OpenButton.isSkinned then
            WorldMapFrame.SidePanelToggle:Hide()
            WorldMapFrame.SidePanelToggle = WorldMapFrame:AddOverlayFrame("WorldMapSidePanelToggleTemplate", "BUTTON", "BOTTOMRIGHT", WorldMapFrame:GetCanvasContainer(), "BOTTOMRIGHT", -2, 1)
            hooksecurefunc(WorldMapFrame.SidePanelToggle, "OnClick", Hook_WorldMapFrame_SidePanelToggle)
        else
            local hooked
            hooksecurefunc(WorldMapFrame.SidePanelToggle.OpenButton:GetNormalTexture(), "SetVertexColor", function()
                if not hooked then
                    WorldMapFrame.SidePanelToggle:Hide()
                    WorldMapFrame.SidePanelToggle = WorldMapFrame:AddOverlayFrame("WorldMapSidePanelToggleTemplate", "BUTTON", "BOTTOMRIGHT", WorldMapFrame:GetCanvasContainer(), "BOTTOMRIGHT", -2, 1)
                    hooksecurefunc(WorldMapFrame.SidePanelToggle, "OnClick", Hook_WorldMapFrame_SidePanelToggle)
                end
                hooked = true
            end)
        end
    end
end

local lastWaypoint

function TomCatsRareLogEntryIcon_OnClick(self)
    if (TomTom) then
        if (lastWaypoint) then
            TomTom:RemoveWaypoint(lastWaypoint)
        end
        local location = self:GetParent().creature["Locations"][raresLog.locationIndex]
        if location then
            lastWaypoint = TomTom:AddWaypoint(WorldMapFrame:GetMapID(), location[1], location[2], {
                title = self:GetParent().creature["Name"],
                persistent = false,
                minimap = true,
                world = true
            })
        end
    end
end

local ACTIVE_TEMPLATE

local function RareInfo_Display(template, parentFrame, acceptButton, material, mapView)
    ACTIVE_TEMPLATE = template;

    --QuestInfoFrame.questLog = template.questLog;
    --QuestInfoFrame.chooseItems = template.chooseItems;
    --QuestInfoFrame.acceptButton = acceptButton;
    --
    --if ( QuestInfoFrame.mapView ~= mapView ) then
    --    QuestInfoFrame.mapView = mapView;
    --    if ( mapView ) then
    --        QuestInfoFrame.rewardsFrame = MapQuestInfoRewardsFrame;
    --        QuestInfoRewardsFrame:Hide();
    --    else
    --        QuestInfoFrame.rewardsFrame = QuestInfoRewardsFrame;
    --        MapQuestInfoRewardsFrame:Hide();
    --    end
    --end
    --if ( QuestInfoFrame.material ~= material ) then
    --    QuestInfoFrame.material = material;
    --    local textColor, titleTextColor = GetMaterialTextColors(material);
    --    -- headers
    --    QuestInfoTitleHeader:SetTextColor(titleTextColor[1], titleTextColor[2], titleTextColor[3]);
    --    QuestInfoDescriptionHeader:SetTextColor(titleTextColor[1], titleTextColor[2], titleTextColor[3]);
    --    QuestInfoObjectivesHeader:SetTextColor(titleTextColor[1], titleTextColor[2], titleTextColor[3]);
    --    QuestInfoRewardsFrame.Header:SetTextColor(titleTextColor[1], titleTextColor[2], titleTextColor[3]);
    --    -- other text
    --    QuestInfoDescriptionText:SetTextColor(textColor[1], textColor[2], textColor[3]);
    --    QuestInfoObjectivesText:SetTextColor(textColor[1], textColor[2], textColor[3]);
    --    QuestInfoGroupSize:SetTextColor(textColor[1], textColor[2], textColor[3]);
    --    QuestInfoRewardText:SetTextColor(textColor[1], textColor[2], textColor[3]);
    --    -- reward frame text
    --    QuestInfoRewardsFrame.ItemChooseText:SetTextColor(textColor[1], textColor[2], textColor[3]);
    --    QuestInfoRewardsFrame.ItemReceiveText:SetTextColor(textColor[1], textColor[2], textColor[3]);
    --    QuestInfoRewardsFrame.PlayerTitleText:SetTextColor(textColor[1], textColor[2], textColor[3]);
    --    QuestInfoRewardsFrame.XPFrame.ReceiveText:SetTextColor(textColor[1], textColor[2], textColor[3]);
    --
    --    QuestInfoRewardsFrame.spellHeaderPool.textR, QuestInfoRewardsFrame.spellHeaderPool.textG, QuestInfoRewardsFrame.spellHeaderPool.textB = textColor[1], textColor[2], textColor[3];
    --end

    local elementsTable = template.elements;
    local lastFrame;
    for i = 1, #elementsTable, 3 do
        local shownFrame, bottomShownFrame = elementsTable[i](parentFrame);
        if ( shownFrame ) then
            shownFrame:SetParent(parentFrame);
            shownFrame:ClearAllPoints();
            if ( lastFrame ) then
                shownFrame:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", elementsTable[i+1], elementsTable[i+2]);
            else
                shownFrame:SetPoint("TOPLEFT", parentFrame, "TOPLEFT", elementsTable[i+1], elementsTable[i+2]);
            end
            lastFrame = bottomShownFrame or shownFrame;
        end
    end
end

local function RareInfo_ShowTitle()
    local questTitle;
    questTitle = GetTitleText();
    QuestInfoTitleHeader:SetText(questTitle);
    QuestInfoTitleHeader:SetWidth(ACTIVE_TEMPLATE.contentWidth);
    return QuestInfoTitleHeader;
end

local RARE_TEMPLATE_MAP_DETAILS = { questLog = true, chooseItems = nil, contentWidth = 244,
                                    canHaveSealMaterial = true, sealXOffset = 156, sealYOffset = -6,
                                    elements = {
                                        RareInfo_ShowTitle, 5, -5,
                                        --QuestInfo_ShowType, 0, -5,
                                        --QuestInfo_ShowObjectivesText, 0, -5,
                                        --QuestInfo_ShowTimer, 0, -10,
                                        --QuestInfo_ShowObjectives, 0, -10,
                                        --QuestInfo_ShowSpecialObjectives, 0, -10,
                                        --QuestInfo_ShowRequiredMoney, 0, 0,
                                        --QuestInfo_ShowGroupSize, 0, -10,
                                        --QuestInfo_ShowDescriptionHeader, 0, -10,
                                        --QuestInfo_ShowDescriptionText, 0, -5,
                                        --QuestInfo_ShowSeal, 0, 0,
                                        --QuestInfo_ShowSpacer, 0, 0,
                                    }
}
local REWARDS_SECTION_OFFSET = 5

local TryLoadItem, GetItemLoadCallback

function TryLoadItem(frame, item, attempts)
    return function()
        if attempts ~= 0 then
            attempts = attempts - 1
            print(item.itemID)
            item:ContinueOnItemLoad(GetItemLoadCallback(frame, item, attempts))
        end
    end
end

function GetItemLoadCallback(frame, item, attempts)
    return function()
        if not item:GetItemName() then
            C_Timer.NewTimer(1, TryLoadItem(frame, item, attempts))
        else
            print("--" .. itemID)
            frame.Name:SetText(item:GetItemName());
            SetItemButtonTexture(frame, item:GetItemIcon())
            SetItemButtonQuality(frame, item:GetItemQuality(), item.itemID, false)
        end
    end
end

local function RareInfo_ShowRewards(creature)
    --[[    local numQuestRewards = 0;
        local numQuestChoices = 0;
        local numQuestCurrencies = 0;
        local numQuestSpellRewards = 0;
        local money = 0;
        local skillName;
        local skillPoints;
        local skillIcon;
        local xp = 0;
        local artifactXP = 0;
        local artifactCategory;
        local honor = 0;
        local playerTitle;]]
    local totalHeight = 0;
    --[[    local numSpellRewards = 0;
        local rewardsFrame = QuestInfoFrame.rewardsFrame;]]
    local rewardsFrame = TomCatsRareInfoRewardsFrame

    --[[    local spellGetter;
        if ( QuestInfoFrame.questLog ) then
            local questID = select(8, GetQuestLogTitle(GetQuestLogSelection()));
            if C_QuestLog.ShouldShowQuestRewards(questID) then
                numQuestRewards = GetNumQuestLogRewards();
                numQuestChoices = GetNumQuestLogChoices();
                numQuestCurrencies = GetNumQuestLogRewardCurrencies();
                money = GetQuestLogRewardMoney();
                skillName, skillIcon, skillPoints = GetQuestLogRewardSkillPoints();
                xp = GetQuestLogRewardXP();
                artifactXP, artifactCategory = GetQuestLogRewardArtifactXP();
                honor = GetQuestLogRewardHonor();
                playerTitle = GetQuestLogRewardTitle();
                ProcessQuestLogRewardFactions();
                numSpellRewards = GetNumQuestLogRewardSpells();
                spellGetter = GetQuestLogRewardSpell;
            end
        else
            numQuestRewards = GetNumQuestRewards();
            numQuestChoices = GetNumQuestChoices();
            numQuestCurrencies = GetNumRewardCurrencies();
            money = GetRewardMoney();
            skillName, skillIcon, skillPoints = GetRewardSkillPoints();
            xp = GetRewardXP();
            artifactXP, artifactCategory = GetRewardArtifactXP();
            honor = GetRewardHonor();
            playerTitle = GetRewardTitle();
            numSpellRewards = GetNumRewardSpells();
            spellGetter = GetRewardSpell;
        end

        for rewardSpellIndex = 1, numSpellRewards do
            local texture, name, isTradeskillSpell, isSpellLearned, hideSpellLearnText, isBoostSpell, garrFollowerID, genericUnlock, spellID = spellGetter(rewardSpellIndex);
            local knownSpell = IsSpellKnownOrOverridesKnown(spellID);

            -- only allow the spell reward if user can learn it
            if ( texture and not knownSpell and (not isBoostSpell or IsCharacterNewlyBoosted()) and (not garrFollowerID or not C_Garrison.IsFollowerCollected(garrFollowerID)) ) then
                numQuestSpellRewards = numQuestSpellRewards + 1;
            end
        end

        local totalRewards = numQuestRewards + numQuestChoices + numQuestCurrencies; ]]
    local totalRewards = 1
    --[[
        if ( totalRewards == 0 and money == 0 and xp == 0 and not playerTitle and numQuestSpellRewards == 0 and artifactXP == 0 ) then
            rewardsFrame:Hide();
            return nil;
        end
    ]]
    -- Hide unused rewards
    local rewardButtons = rewardsFrame.RewardButtons;
    for i = totalRewards, #rewardButtons do
        rewardButtons[i]:ClearAllPoints();
        rewardButtons[i]:Hide();
    end
    local questItem, name, texture, quality, isUsable, numItems, itemID;
    local rewardsCount = 0;
    local lastFrame = rewardsFrame.Header;

    local totalHeight = rewardsFrame.Header:GetHeight();
    local buttonHeight = rewardsFrame.RewardButtons[1]:GetHeight();

    rewardsFrame.ArtifactXPFrame:ClearAllPoints();
    --[[    if ( artifactXP > 0 ) then
            local name, icon = C_ArtifactUI.GetArtifactXPRewardTargetInfo(artifactCategory);
            rewardsFrame.ArtifactXPFrame:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", 0, -REWARDS_SECTION_OFFSET);
            rewardsFrame.ArtifactXPFrame.Name:SetText(BreakUpLargeNumbers(artifactXP));
            rewardsFrame.ArtifactXPFrame.Icon:SetTexture(icon or "Interface\\Icons\\INV_Misc_QuestionMark");
            rewardsFrame.ArtifactXPFrame:Show();

            lastFrame = rewardsFrame.ArtifactXPFrame;
            totalHeight = totalHeight + rewardsFrame.ArtifactXPFrame:GetHeight() + REWARDS_SECTION_OFFSET;
        else]]
    rewardsFrame.ArtifactXPFrame:Hide();
    --[[    end

        -- Setup choosable rewards]]

    rewardsFrame.ItemChooseText:ClearAllPoints();
    --[[    if ( numQuestChoices > 0 ) then
            rewardsFrame.ItemChooseText:Show();
            rewardsFrame.ItemChooseText:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", 0, -5);

            local index;
            local baseIndex = rewardsCount;
            for i = 1, numQuestChoices do
                index = i + baseIndex;
                questItem = QuestInfo_GetRewardButton(rewardsFrame, index);
                questItem.type = "choice";
                questItem.objectType = "item";
                numItems = 1;
                if ( QuestInfoFrame.questLog ) then
                    name, texture, numItems, quality, isUsable, itemID = GetQuestLogChoiceInfo(i);
                    SetItemButtonQuality(questItem, quality, itemID);
                else
                    name, texture, numItems, quality, isUsable = GetQuestItemInfo(questItem.type, i);
                    SetItemButtonQuality(questItem, quality, GetQuestItemLink(questItem.type, i));
                end
                questItem:SetID(i)
                questItem:Show();
                -- For the tooltip
                questItem.Name:SetText(name);
                SetItemButtonCount(questItem, numItems);
                SetItemButtonTexture(questItem, texture);
                if ( isUsable ) then
                    SetItemButtonTextureVertexColor(questItem, 1.0, 1.0, 1.0);
                    SetItemButtonNameFrameVertexColor(questItem, 1.0, 1.0, 1.0);
                else
                    SetItemButtonTextureVertexColor(questItem, 0.9, 0, 0);
                    SetItemButtonNameFrameVertexColor(questItem, 0.9, 0, 0);
                end
                if ( i > 1 ) then
                    if ( mod(i,2) == 1 ) then
                        questItem:SetPoint("TOPLEFT", rewardButtons[index - 2], "BOTTOMLEFT", 0, -2);
                        lastFrame = questItem;
                        totalHeight = totalHeight + buttonHeight + 2;
                    else
                        questItem:SetPoint("TOPLEFT", rewardButtons[index - 1], "TOPRIGHT", 1, 0);
                    end
                else
                    questItem:SetPoint("TOPLEFT", rewardsFrame.ItemChooseText, "BOTTOMLEFT", 0, -REWARDS_SECTION_OFFSET);
                    lastFrame = questItem;
                    totalHeight = totalHeight + buttonHeight + REWARDS_SECTION_OFFSET;
                end
                rewardsCount = rewardsCount + 1;
            end
            if ( numQuestChoices == 1 ) then
                QuestInfoFrame.chooseItems = nil
                rewardsFrame.ItemChooseText:SetText(REWARD_ITEMS_ONLY);
            elseif ( QuestInfoFrame.chooseItems ) then
                rewardsFrame.ItemChooseText:SetText(REWARD_CHOOSE);
            else
                rewardsFrame.ItemChooseText:SetText(REWARD_CHOICES);
            end
            totalHeight = totalHeight + rewardsFrame.ItemChooseText:GetHeight() + REWARDS_SECTION_OFFSET;
        else]]
    rewardsFrame.ItemChooseText:Hide();
    --[[    end ]]

    rewardsFrame.spellRewardPool:ReleaseAll();
    rewardsFrame.followerRewardPool:ReleaseAll();
    rewardsFrame.spellHeaderPool:ReleaseAll();

    -- Setup spell rewards
    --[[    if ( numQuestSpellRewards > 0 ) then
            local spellBuckets = {};

            for rewardSpellIndex = 1, numSpellRewards do
                local texture, name, isTradeskillSpell, isSpellLearned, hideSpellLearnText, isBoostSpell, garrFollowerID, genericUnlock, spellID = spellGetter(rewardSpellIndex);
                local knownSpell = IsSpellKnownOrOverridesKnown(spellID);
                if texture and not knownSpell and (not isBoostSpell or IsCharacterNewlyBoosted()) and (not garrFollowerID or not C_Garrison.IsFollowerCollected(garrFollowerID)) then
                    if ( isTradeskillSpell ) then
                        AddSpellToBucket(spellBuckets, QUEST_SPELL_REWARD_TYPE_TRADESKILL_SPELL, rewardSpellIndex);
                    elseif ( isBoostSpell ) then
                        AddSpellToBucket(spellBuckets, QUEST_SPELL_REWARD_TYPE_ABILITY, rewardSpellIndex);
                    elseif ( garrFollowerID ) then
                        AddSpellToBucket(spellBuckets, QUEST_SPELL_REWARD_TYPE_FOLLOWER, rewardSpellIndex);
                    elseif ( isSpellLearned ) then
                        AddSpellToBucket(spellBuckets, QUEST_SPELL_REWARD_TYPE_SPELL, rewardSpellIndex);
                    elseif ( genericUnlock ) then
                        AddSpellToBucket(spellBuckets, QUEST_SPELL_REWARD_TYPE_UNLOCK, rewardSpellIndex);
                    else
                        AddSpellToBucket(spellBuckets, QUEST_SPELL_REWARD_TYPE_AURA, rewardSpellIndex);
                    end
                end
            end

            for orderIndex, spellBucketType in ipairs(QUEST_INFO_SPELL_REWARD_ORDERING) do
                local spellBucket = spellBuckets[spellBucketType];
                if spellBucket then
                    for i, rewardSpellIndex in ipairs(spellBucket) do
                        local texture, name, isTradeskillSpell, isSpellLearned, hideSpellLearnText, isBoostSpell, garrFollowerID = spellGetter(rewardSpellIndex);
                        -- hideSpellLearnText is a quest flag
                        if i == 1 and not hideSpellLearnText then
                            local header = rewardsFrame.spellHeaderPool:Acquire();
                            header:SetText(QUEST_INFO_SPELL_REWARD_TO_HEADER[spellBucketType]);
                            header:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", 0, -REWARDS_SECTION_OFFSET);
                            if rewardsFrame.spellHeaderPool.textR and rewardsFrame.spellHeaderPool.textG and rewardsFrame.spellHeaderPool.textB then
                                header:SetVertexColor(rewardsFrame.spellHeaderPool.textR, rewardsFrame.spellHeaderPool.textG, rewardsFrame.spellHeaderPool.textB);
                            end
                            header:Show();

                            totalHeight = totalHeight + header:GetHeight() + REWARDS_SECTION_OFFSET;
                            lastFrame = header;
                        end

                        local anchorFrame;
                        if garrFollowerID then
                            local followerFrame = rewardsFrame.followerRewardPool:Acquire();
                            local followerInfo = C_Garrison.GetFollowerInfo(garrFollowerID);
                            followerFrame.Name:SetText(followerInfo.name);
                            followerFrame.Class:SetAtlas(followerInfo.classAtlas);
                            followerFrame.PortraitFrame:SetupPortrait(followerInfo);
                            followerFrame.ID = garrFollowerID;
                            followerFrame:Show();

                            anchorFrame = followerFrame;
                        else
                            local spellRewardFrame = rewardsFrame.spellRewardPool:Acquire();
                            spellRewardFrame.Icon:SetTexture(texture);
                            spellRewardFrame.Name:SetText(name);
                            spellRewardFrame.rewardSpellIndex = rewardSpellIndex;
                            spellRewardFrame:Show();

                            anchorFrame = spellRewardFrame;
                        end

                        anchorFrame:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", 0, -REWARDS_SECTION_OFFSET);
                        totalHeight = totalHeight + anchorFrame:GetHeight() + REWARDS_SECTION_OFFSET;

                        lastFrame = anchorFrame;
                    end
                end
            end
        end

        -- Title reward
        if ( playerTitle ) then
            rewardsFrame.PlayerTitleText:Show();
            rewardsFrame.PlayerTitleText:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", 0, -REWARDS_SECTION_OFFSET);
            totalHeight = totalHeight +  rewardsFrame.PlayerTitleText:GetHeight() + REWARDS_SECTION_OFFSET;
            rewardsFrame.TitleFrame:SetPoint("TOPLEFT", rewardsFrame.PlayerTitleText, "BOTTOMLEFT", 0, -REWARDS_SECTION_OFFSET);
            rewardsFrame.TitleFrame.Name:SetText(playerTitle);
            rewardsFrame.TitleFrame:Show();
            lastFrame = rewardsFrame.TitleFrame;
            totalHeight = totalHeight +  rewardsFrame.TitleFrame:GetHeight() + REWARDS_SECTION_OFFSET;
        else]]
    rewardsFrame.PlayerTitleText:Hide();
    rewardsFrame.TitleFrame:Hide();
    --[[    end

        -- Setup mandatory rewards
        if ( numQuestRewards > 0 or numQuestCurrencies > 0 or money > 0 or xp > 0 ) then
            -- receive text, will either say "You will receive" or "You will also receive"
            local questItemReceiveText = rewardsFrame.ItemReceiveText;
            if ( numQuestChoices > 0 or numQuestSpellRewards > 0 or playerTitle ) then
                questItemReceiveText:SetText(REWARD_ITEMS);
            else
                questItemReceiveText:SetText(REWARD_ITEMS_ONLY);
            end
            questItemReceiveText:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", 0, -REWARDS_SECTION_OFFSET);
            questItemReceiveText:Show();
            totalHeight = totalHeight + questItemReceiveText:GetHeight() + REWARDS_SECTION_OFFSET;
            lastFrame = questItemReceiveText;
            -- Money and XP
            if ( QuestInfoFrame.mapView ) then
                if ( xp > 0 ) then
                    rewardsFrame.XPFrame:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", 0, -REWARDS_SECTION_OFFSET);
                    rewardsFrame.XPFrame.Name:SetText(BreakUpLargeNumbers(xp));
                    rewardsFrame.XPFrame:Show();
                    lastFrame = rewardsFrame.XPFrame;
                    totalHeight = totalHeight + buttonHeight + REWARDS_SECTION_OFFSET;
                else --]]
    rewardsFrame.XPFrame:Hide();
    --[[            end
                if ( money > 0 ) then
                    if ( xp > 0 ) then
                        rewardsFrame.MoneyFrame:SetPoint("TOPLEFT", rewardsFrame.XPFrame, "TOPRIGHT", 2, 0);
                    else
                        rewardsFrame.MoneyFrame:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", 0, -REWARDS_SECTION_OFFSET);
                        lastFrame = rewardsFrame.MoneyFrame;
                        totalHeight = totalHeight + buttonHeight + REWARDS_SECTION_OFFSET;
                    end
                    rewardsFrame.MoneyFrame.Name:SetText(GetMoneyString(money));
                    rewardsFrame.MoneyFrame:Show();
                else --]]
    rewardsFrame.MoneyFrame:Hide();
    --[[            end
            else
                -- Money rewards
                if ( money > 0 ) then
                    MoneyFrame_Update(rewardsFrame.MoneyFrame, money);
                    rewardsFrame.MoneyFrame:Show();
                else
                    rewardsFrame.MoneyFrame:Hide();
                end
                -- XP rewards
                if ( QuestInfo_ToggleRewardElement(rewardsFrame.XPFrame, BreakUpLargeNumbers(xp), lastFrame) ) then
                    lastFrame = rewardsFrame.XPFrame;
                    totalHeight = totalHeight + rewardsFrame.XPFrame:GetHeight() + REWARDS_SECTION_OFFSET;
                end
            end
            -- Skill Point rewards
            if ( QuestInfo_ToggleRewardElement(rewardsFrame.SkillPointFrame, skillPoints, lastFrame) ) then
                lastFrame = rewardsFrame.SkillPointFrame;
                rewardsFrame.SkillPointFrame.Icon:SetTexture(skillIcon);
                if (skillName) then
                    rewardsFrame.SkillPointFrame.Name:SetFormattedText(BONUS_SKILLPOINTS, skillName);
                    rewardsFrame.SkillPointFrame.tooltip = format(BONUS_SKILLPOINTS_TOOLTIP, skillPoints, skillName);
                else
                    rewardsFrame.SkillPointFrame.tooltip = nil;
                    rewardsFrame.SkillPointFrame.Name:SetText("");
                end
                totalHeight = totalHeight + buttonHeight + REWARDS_SECTION_OFFSET;
            end
            -- Item rewards]]

    local loot = creature["Loot"] or {
        items = { }
    }
    if type(loot) ~= "table" then
        loot = {
            items = { loot }
        }
    end

    local numQuestRewards = 0
    if loot.items then
        numQuestRewards = #(loot.items)
    end
    local index
    local baseIndex = 0;
    local buttonIndex = 0;
    for i = 1, numQuestRewards, 1 do
        buttonIndex = buttonIndex + 1;
        index = i + baseIndex;

        local questItem = QuestInfo_GetRewardButton(rewardsFrame, i);
        questItem.type = "reward";
        questItem.objectType = "item";

        questItem:SetID(loot.items[i])
        questItem:Show()

        local itemID = loot.items[i]
        local item = Item:CreateFromItemID(itemID)
        item:ContinueOnItemLoad(function()
            questItem.Name:SetText(item:GetItemName())
            questItem.Icon:SetTexture(item:GetItemIcon())
            SetItemButtonQuality(questItem, item:GetItemQuality(), itemID, false)
        end)
        if ( buttonIndex > 1 ) then
            if ( mod(buttonIndex,2) == 1 ) then
                questItem:SetPoint("TOPLEFT", rewardButtons[index - 2], "BOTTOMLEFT", 0, -2);
                lastFrame = questItem;
                totalHeight = totalHeight + buttonHeight + 2;
            else
                questItem:SetPoint("TOPLEFT", rewardButtons[index - 1], "TOPRIGHT", 1, 0);
            end
        else
            questItem:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", 0, -REWARDS_SECTION_OFFSET);
            lastFrame = questItem;
            totalHeight = totalHeight + buttonHeight + REWARDS_SECTION_OFFSET;
        end
        rewardsCount = rewardsCount + 1;


        --questItem:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", 0, -REWARDS_SECTION_OFFSET);
        lastFrame = questItem;
        -- totalHeight = totalHeight + buttonHeight + REWARDS_SECTION_OFFSET;
    end
    --[[            if ( QuestInfoFrame.questLog ) then
                name, texture, numItems, quality, isUsable, itemID = GetQuestLogRewardInfo(i);
                SetItemButtonQuality(questItem, quality, itemID);
            else
                name, texture, numItems, quality, isUsable = GetQuestItemInfo(questItem.type, i);
                SetItemButtonQuality(questItem, quality, GetQuestItemLink(questItem.type, i));
            end
            questItem:SetID(i)
            questItem:Show();
            -- For the tooltip
            questItem.Name:SetText(name);
            SetItemButtonCount(questItem, numItems);
            SetItemButtonTexture(questItem, texture);
            if ( isUsable ) then
                SetItemButtonTextureVertexColor(questItem, 1.0, 1.0, 1.0);
                SetItemButtonNameFrameVertexColor(questItem, 1.0, 1.0, 1.0);
            else
                SetItemButtonTextureVertexColor(questItem, 0.9, 0, 0);
                SetItemButtonNameFrameVertexColor(questItem, 0.9, 0, 0);
            end

            if ( buttonIndex > 1 ) then
                if ( mod(buttonIndex,2) == 1 ) then
                    questItem:SetPoint("TOPLEFT", rewardButtons[index - 2], "BOTTOMLEFT", 0, -2);
                    lastFrame = questItem;
                    totalHeight = totalHeight + buttonHeight + 2;
                else
                    questItem:SetPoint("TOPLEFT", rewardButtons[index - 1], "TOPRIGHT", 1, 0);
                end
            else
                questItem:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", 0, -REWARDS_SECTION_OFFSET);
                lastFrame = questItem;
                totalHeight = totalHeight + buttonHeight + REWARDS_SECTION_OFFSET;
            end
            rewardsCount = rewardsCount + 1;
        end

        -- currency
        baseIndex = rewardsCount;
        local foundCurrencies = 0;
        buttonIndex = buttonIndex + 1;
        for i = 1, GetMaxRewardCurrencies(), 1 do
            index = i + baseIndex;
            questItem = QuestInfo_GetRewardButton(rewardsFrame, index);
            questItem.type = "reward";
            questItem.objectType = "currency";
            local currencyID;
            if ( QuestInfoFrame.questLog ) then
                name, texture, numItems, currencyID, quality = GetQuestLogRewardCurrencyInfo(i);
            else
                name, texture, numItems, quality = GetQuestCurrencyInfo(questItem.type, i);
                currencyID = GetQuestCurrencyID(questItem.type, i);
            end
            if (name and texture and numItems) then
                name, texture, numItems, quality = CurrencyContainerUtil.GetCurrencyContainerInfo(currencyID, numItems, name, texture, quality);
                questItem:SetID(i)
                questItem:Show();
                -- For the tooltip
                questItem.Name:SetText(name);
                SetItemButtonCount(questItem, numItems, true);
                local currencyColor = GetColorForCurrencyReward(currencyID, numItems);
                questItem.Count:SetTextColor(currencyColor:GetRGB());
                SetItemButtonTexture(questItem, texture);
                SetItemButtonTextureVertexColor(questItem, 1.0, 1.0, 1.0);
                SetItemButtonNameFrameVertexColor(questItem, 1.0, 1.0, 1.0);
                SetItemButtonQuality(questItem, quality, currencyID);

                if ( buttonIndex > 1 ) then
                    if ( mod(buttonIndex,2) == 1 ) then
                        questItem:SetPoint("TOPLEFT", rewardButtons[index - 2], "BOTTOMLEFT", 0, -2);
                        lastFrame = questItem;
                        totalHeight = totalHeight + buttonHeight + 2;
                    else
                        questItem:SetPoint("TOPLEFT", rewardButtons[index - 1], "TOPRIGHT", 1, 0);
                    end
                else
                    questItem:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", 0, -REWARDS_SECTION_OFFSET);
                    lastFrame = questItem;
                    totalHeight = totalHeight + buttonHeight + REWARDS_SECTION_OFFSET;
                end
                rewardsCount = rewardsCount + 1;
                foundCurrencies = foundCurrencies + 1;
                buttonIndex = buttonIndex + 1;
                if (foundCurrencies == numQuestCurrencies) then
                    break;
                end
            end
        end

        rewardsFrame.HonorFrame:ClearAllPoints();
        if ( honor > 0 ) then
            local icon;
            if (UnitFactionGroup("player") == PLAYER_FACTION_GROUP[0]) then
                icon = "Interface\\Icons\\PVPCurrency-Honor-Horde";
            else
                icon = "Interface\\Icons\\PVPCurrency-Honor-Alliance";
            end

            rewardsFrame.HonorFrame:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", 0, -REWARDS_SECTION_OFFSET);
            rewardsFrame.HonorFrame.Count:SetText(BreakUpLargeNumbers(honor));
            rewardsFrame.HonorFrame.Name:SetText(HONOR);
            rewardsFrame.HonorFrame.Icon:SetTexture(icon);
            rewardsFrame.HonorFrame:Show();

            lastFrame = rewardsFrame.HonorFrame;
            totalHeight = totalHeight + rewardsFrame.HonorFrame:GetHeight() + REWARDS_SECTION_OFFSET;
        else
            rewardsFrame.HonorFrame:Hide();
        end
    else ]]
    rewardsFrame.ItemReceiveText:Hide();
    rewardsFrame.MoneyFrame:Hide();
    rewardsFrame.XPFrame:Hide();
    rewardsFrame.SkillPointFrame:Hide();
    rewardsFrame.HonorFrame:Hide();
    --[[    end

        -- deselect item
        QuestInfoFrame.itemChoice = 0;
        if ( rewardsFrame.ItemHighlight ) then
            rewardsFrame.ItemHighlight:Hide();
        end]]
    rewardsFrame:Show();
    rewardsFrame:SetHeight(totalHeight);
    return rewardsFrame, lastFrame;
end


function RaresLogFrame_ShowRareDetails(creature)
    --    RareInfo_Display(RARE_TEMPLATE_MAP_DETAILS, QuestMapFrame.DetailsFrame.ScrollFrame.Contents);
    local elements = {
        QuestInfoTitleHeader, 5, -5,
        QuestInfoQuestType, 0, -5,
        --QuestInfoObjectivesText, 0, -5,
        --QuestInfo_ShowTimer, 0, -10,
        --QuestInfo_ShowObjectives, 0, -10,
        --QuestInfo_ShowSpecialObjectives, 0, -10,
        --QuestInfo_ShowRequiredMoney, 0, 0,
        --QuestInfo_ShowGroupSize, 0, -10,
        --QuestInfo_ShowSeal, 0, 0,
        --QuestInfo_ShowSpacer, 0, 0,
    }
    local contentWidth = 244
    local parentFrame = TomCatsRareMapFrame.DetailsFrame.ScrollFrame.Contents
    QuestInfoTitleHeader:SetText(creature["Name"])
    QuestInfoTitleHeader:SetWidth(contentWidth)
    QuestInfoQuestType:SetText("|T1121272:20:20:0:2:1024:512:576:608:373:405|t Rare Spawn")


    local description = creature["Description"]
    if description then
        table.insert(elements, QuestInfoDescriptionHeader)
        table.insert(elements, 0)
        table.insert(elements, -10)
        table.insert(elements, QuestInfoDescriptionText)
        table.insert(elements, 0)
        table.insert(elements, -5)
        QuestInfoDescriptionText:SetText(description)
        QuestInfoDescriptionText:SetWidth(244)
    else
        QuestInfoDescriptionHeader:Hide()
        QuestInfoDescriptionText:Hide()
    end
    local lastFrame;
    for i = 1, #elements, 3 do
        shownFrame = elements[i]
        shownFrame:SetParent(parentFrame);
        shownFrame:ClearAllPoints();
        if ( lastFrame ) then
            shownFrame:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", elements[i+1], elements[i+2]);
        else
            shownFrame:SetPoint("TOPLEFT", parentFrame, "TOPLEFT", elements[i+1], elements[i+2]);
        end
        lastFrame = shownFrame;
        shownFrame:SetShown(true)
    end
    local rewardsFrame, lastFrame = RareInfo_ShowRewards(creature)
    parentFrame = TomCatsRareMapFrame.DetailsFrame.RewardsFrame
    rewardsFrame:SetParent(parentFrame)
    rewardsFrame:ClearAllPoints()
    rewardsFrame:SetWidth(244)
    rewardsFrame:SetPoint("TOPLEFT", parentFrame, "TOPLEFT", 8, -42)
    rewardsFrame:SetShown(true)
    --QuestInfo_Display(QUEST_TEMPLATE_MAP_REWARDS, QuestMapFrame.DetailsFrame.RewardsFrame, nil, nil, true);
    --TomCatsRareMapFrame.DetailsFrame.ScrollFrame.ScrollBar:Hide();

    TomCatsRareMapFrame.DetailsFrame.ScrollFrame.ScrollBar:SetValue(0);

    --
    --local mapFrame = QuestMapFrame:GetParent();
    --local questPortrait, questPortraitText, questPortraitName, questPortraitMount = GetQuestLogPortraitGiver();
    --if (questPortrait and questPortrait ~= 0 and QuestLogShouldShowPortrait() and (UIParent:GetRight() - mapFrame:GetRight() > QuestNPCModel:GetWidth() + 6)) then
    --    QuestFrame_ShowQuestPortrait(mapFrame, questPortrait, questPortraitMount, questPortraitText, questPortraitName, -2, -43);
    --    QuestNPCModel:SetFrameLevel(mapFrame:GetFrameLevel() + 2);
    --else
    --QuestFrame_HideQuestPortrait();
    --end
    --
    ---- height
    local height;
    if ( TomCatsRareInfoRewardsFrame:IsShown() ) then
        height = TomCatsRareInfoRewardsFrame:GetHeight() + 49;
    else
        height = 59;
    end
    height = min(height, 275);
    TomCatsRareMapFrame.DetailsFrame.RewardsFrame:SetHeight(height);
    TomCatsRareMapFrame.DetailsFrame.RewardsFrame.Background:SetTexCoord(0, 1, 0, height / 275);
    --
    --QuestMapFrame.QuestsFrame:Hide();
    TomCatsRareMapFrame.DetailsFrame:Show();
    --
    ---- save current view
    --QuestMapFrame.DetailsFrame.returnMapID = QuestMapFrame:GetParent():GetMapID();
    --local mapID = GetQuestUiMapID(questID);
    --if ( mapID ~= 0 ) then
    --    QuestMapFrame:GetParent():SetMapID(mapID);
    --end
    --QuestMapFrame.DetailsFrame.questMapID = questID;
    --
    --QuestMapFrame_UpdateQuestDetailsButtons();
    --
    --if ( IsQuestComplete(questID) and GetQuestLogIsAutoComplete(questLogIndex) ) then
    --    QuestMapFrame.DetailsFrame.CompleteQuestFrame:Show();
    --    QuestMapFrame.DetailsFrame.RewardsFrame:SetPoint("BOTTOMLEFT", 0, 44);
    --else
    --    QuestMapFrame.DetailsFrame.CompleteQuestFrame:Hide();
    --    QuestMapFrame.DetailsFrame.RewardsFrame:SetPoint("BOTTOMLEFT", 0, 20);
    --end
    --
    --StaticPopup_Hide("ABANDON_QUEST");
    --StaticPopup_Hide("ABANDON_QUEST_WITH_ITEMS");
end

function TomCatsRareMapFrame_ReturnFromRareDetails()
    TomCatsRareMapFrame.RaresFrame:Show()
    TomCatsRareMapFrame.DetailsFrame:Hide()
end

TCL.Events.RegisterEvent("ADDON_LOADED", ADDON_LOADED)

