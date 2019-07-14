local _, addon = ...
local TCL = addon.TomCatsLibs

local supportedMaps = {
    [14] = true, -- Arathi
    [62] = true, -- Darkshore
    [1355] = true, -- Nazjatar
    [1462] = true, -- Mechagon
}

TomCatsRareLogMixin = {}

function TomCatsRareLogMixin:InitLayoutIndexManager()
    self.layoutIndexManager = CreateLayoutIndexManager();
--    self.layoutIndexManager:AddManagedLayoutIndex("Campaign", QUEST_LOG_WAR_CAMPAIGN_LAYOUT_INDEX + 1);
--    self.layoutIndexManager:AddManagedLayoutIndex("Other", QUEST_LOG_STORY_LAYOUT_INDEX + 1);
end

function TomCatsRareMapFrame_OnLoad(self)
    self:InitLayoutIndexManager();
end

function TomCatsRareMapFrame_OnEvent()

end

function TomCatsRareMapFrame_OnHide()

end

local function mapChanged(_, mapID)
    if supportedMaps[mapID] then
        if not WorldMapFrame.RarePanelToggle:IsShown() then
            WorldMapFrame.RarePanelToggle:Show()
        end
    else
        if WorldMapFrame.RarePanelToggle:IsShown() then
            WorldMapFrame.RarePanelToggle:Hide()
        end
    end
end

local function ADDON_LOADED(_, event, arg1)
    if (arg1 == addon.name) then
        TCL.Events.UnregisterEvent("ADDON_LOADED", ADDON_LOADED)
        WorldMapFrame.RarePanelToggle = WorldMapFrame:AddOverlayFrame("TomCatsWorldMapRareSidePanelToggleTemplate", "BUTTON", "BOTTOMRIGHT", WorldMapFrame:GetCanvasContainer(), "BOTTOMRIGHT", -2, 36);
        TomCatsRareMapFrame:SetParent(WorldMapFrame);
        TomCatsRareMapFrame:SetFrameStrata("HIGH");
        TomCatsRareMapFrame:ClearAllPoints();
        TomCatsRareMapFrame:SetPoint("TOPRIGHT", -6, -20);
        TomCatsRareMapFrame:Hide();
        hooksecurefunc(WorldMapFrame, "SetMapID", mapChanged)
        --self.QuestLog = QuestMapFrame;
    end
end

TCL.Events.RegisterEvent("ADDON_LOADED", ADDON_LOADED)

local function SetRarePanelShown(shown)
    local questLogOpen = GetCVar("questLogOpen");
    if shown then
        addon.savedVariables.account.rareLogClosed = nil;
        if (questLogOpen) then
            QuestMapFrame:Hide()
        end
        WorldMapFrame:SetWidth(WorldMapFrame.minimizedWidth + WorldMapFrame.questLogWidth);
        TomCatsRareMapFrame:Show();
        UpdateUIPanelPositions(WorldMapFrame);
        -- Populate the Rare Panel here
        TomCatsRareScrollFrame.Contents.WarCampaignHeader:Show()
        WorldMapFrame.TitleCanvasSpacerFrame:SetPoint("BOTTOMRIGHT", WorldMapFrame, "TOPRIGHT", -3 - WorldMapFrame.questLogWidth, -67);
    else
        addon.savedVariables.account.rareLogClosed = true;
        if (questLogOpen == "1") then
            TomCatsRareMapFrame:Hide();
            QuestMapFrame:Show()
            --UpdateUIPanelPositions(WorldMapFrame);
        else
            WorldMapFrame:SetWidth(WorldMapFrame.minimizedWidth);
            TomCatsRareMapFrame:Hide();
            UpdateUIPanelPositions(WorldMapFrame);
            WorldMapFrame.TitleCanvasSpacerFrame:SetPoint("BOTTOMRIGHT", WorldMapFrame, "TOPRIGHT", -3, -67);
            WorldMapFrame:OnFrameSizeChanged();
            WorldMapFrame:SynchronizeDisplayState();
        end
    end
    --if self.QuestLog and shown ~= self.QuestLog:IsShown() then
    --    if shown then
    --        self:SetWidth(self.minimizedWidth + self.questLogWidth);
    --        self.QuestLog:Show();
    --    else
    --        self:SetWidth(self.minimizedWidth);
    --        self.QuestLog:Hide();
    --    end
    --
    --    UpdateUIPanelPositions(self);
    --end
end

TomCatsWorldMapRareSidePanelToggleMixin = { };

function TomCatsWorldMapRareSidePanelToggleMixin:OnClick()
    --SetCVar("questLogOpen", 0);
    ShowUIPanel(WorldMapFrame)
    SetRarePanelShown(not TomCatsRareMapFrame:IsShown())
    --self:GetParent():HandleUserActionToggleSidePanel();

    self:Refresh();
end

function TomCatsWorldMapRareSidePanelToggleMixin:Refresh()
    if self:GetParent():IsSidePanelShown() then
        self.OpenButton:Hide();
        self.CloseButton:Show();
    else
        self.OpenButton:Show();
        self.CloseButton:Hide();
    end
end

