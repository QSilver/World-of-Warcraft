local _, addon = ...

--todo: Internationalize
addon.supportedMaps = {
    [14] = {
        name = "TomCats-ArathiHighlandsRares",
        title = "TomCat's Tours: Rares of Arathi Highlands",
        zone = "Arathi Highlands",
        iconTexture = "Interface\\AddOns\\TomCats\\images\\stromgarde-icon",
        backgroundColor = {118/255,18/255,20/255,0.80 }
    },
    [62] = {
        name = "TomCats-DarkshoreRares",
        title = "TomCat's Tours: Rares of Darkshore",
        zone = "Darkshore",
        iconTexture = "Interface\\AddOns\\TomCats\\images\\darnassus-icon",
        backgroundColor = {68/255,34/255,68/255,0.80 }
    },
    [1355] = {
        name = "TomCats-Nazjatar",
        title = "TomCat's Tours: Nazjatar",
        zone = "Nazjatar",
        iconTexture = "Interface\\AddOns\\TomCats\\images\\nazjatar-icon",
        backgroundColor = { 0.0,0.0,0.0,1.0 }
    },
    [1462] = {
        name = "TomCats-Mechagon",
        title = "TomCat's Tours: Mechagon",
        zone = "Mechagon",
        iconTexture = "Interface\\AddOns\\TomCats\\images\\mechagon-icon",
        backgroundColor = { 0.0,0.0,0.0,1.0 },
    },
}

-- Begin interim restart checking code
local function split(inputstr)
    local t={}
    for str in string.gmatch(inputstr, "([^.]+)") do
        table.insert(t, str)
    end
    return t
end

local function convertVersionToNumber(version)
    local parts = split(version)
    return tonumber(parts[1]) * 1000000 + tonumber(parts[2]) * 1000 + tonumber(parts[3])
end

local addonTOCVersion = convertVersionToNumber(GetAddOnMetadata("TomCats", "version"))
local newFilesSinceVersion = convertVersionToNumber("1.3.5")

if (newFilesSinceVersion > addonTOCVersion) then
    DEFAULT_CHAT_FRAME:AddMessage("|cffff0000Warning: TomCat's Tours requires that you restart WoW in order for the recent update to function properly|r")
end
-- End interim restart checking code

TomCatsToursConfig.name = "TomCat's Tours"
InterfaceOptions_AddCategory(TomCatsToursConfig)
TomCatsToursConfig_SlashCommands.name = "Slash Commands"
TomCatsToursConfig_SlashCommands.parent = "TomCat's Tours"
InterfaceOptions_AddCategory(TomCatsToursConfig_SlashCommands)
local TCL = addon.TomCatsLibs
TCL.Charms.scope = "account"

local slashCommandHandlers = { }
local components = { }

local function handleSlashCommand(msg)
    if (msg) then
        if (msg == "") then
            InterfaceOptionsFrame_OpenToCategory(TomCatsToursConfig)
            --todo: Remove the redundant call if Blizzard ever fixes this
            InterfaceOptionsFrame_OpenToCategory(TomCatsToursConfig)
        else
            local func = slashCommandHandlers[string.upper(msg)]
            if (not func) then
                InterfaceOptionsFrame_OpenToCategory(TomCatsToursConfig_SlashCommands)
                --todo: Remove the redundant call if Blizzard ever fixes this
                InterfaceOptionsFrame_OpenToCategory(TomCatsToursConfig_SlashCommands)
            else
                func()
            end
        end
    end
end

SLASH_TOMCATS1 = "/TOMCATS"
SlashCmdList["TOMCATS"] = handleSlashCommand

local slashCommandsHtmlHead = "<html>\n<body>\n<h1>Slash Commands</h1>\n<br />\n"
local slashCommandHtmlTemplate = "<h3>%s:</h3>\n<p>/TOMCATS %s</p>\n<br />\n"
local slashCommandsHtmlFoot = "</body>\n</html>"

TomCats = {}

TomCats.version = "1.3.6"

local function refreshInterfaceControlPanels()
    local slashCommandsHtml = slashCommandsHtmlHead
    local infoText = "Installed Components:\n|cffffffff"
    slashCommandsHtml = slashCommandsHtml .. format(slashCommandHtmlTemplate, "Open the TomCat's Tours Control Panel", "")
    for i, component in ipairs(components) do
        if (component.slashCommands) then
            for _, slashCommand in ipairs(component.slashCommands) do
                slashCommandsHtml = slashCommandsHtml .. format(slashCommandHtmlTemplate, slashCommand.desc, string.upper(slashCommand.command))
            end
        end
        infoText = infoText .. "   " .. component.name .. " (v" .. component.version .. ")"
        if (i ~= #components) then
            infoText = infoText .. "\n"
        end
    end
    infoText = infoText .. "|r"
    TomCatsToursConfigInstalledComponents:SetText(infoText)
    slashCommandsHtml = slashCommandsHtml .. slashCommandsHtmlFoot
    TomCatsToursConfig_SlashCommands.html:SetText(slashCommandsHtml)
end

function TomCats:Register(componentInfo)
    if (componentInfo) then
        if (componentInfo.slashCommands) then
            for _, slashCommand in ipairs(componentInfo.slashCommands) do
                slashCommandHandlers[string.upper(slashCommand.command)] = slashCommand.func
            end
        end
        if (componentInfo.raresLogHandlers) then
            for k, v in pairs(componentInfo.raresLogHandlers) do
                if addon.supportedMaps[k] then
                    addon.supportedMaps[k].handlers = v
                end
            end
        end
        table.insert(components, componentInfo)
        refreshInterfaceControlPanels()
    end
end

refreshInterfaceControlPanels()

local linkText = "Children's Week by TomCat's Tours"

local chatStep = 1

local function playChat()
    PlaySound(SOUNDKIT.TELL_MESSAGE)
    local message
--    local link = "|cffff80ff[|cfff48cba" .. GetPlayerLink("TomCat-Bladefist", "TomCat") .. "|cffff80ff]"
    local link = "|cffff80ff[|cffffff00" .. "TomCat from TomCat's Tours" .. "|cffff80ff]"
    if (chatStep == 1) then
        addon.savedVariables.account.notifications["CHILDRENSWEEK2019"] = true
        addon.charm.MinimapLoopPulseAnim:Stop()
        addon.charm:Hide()
        message = "|cffff80ffHi. I hope I am not intruding...I just wanted to say thanks for using my TomCat's Tours addons!|r"
    end
    if (chatStep == 2) then
        message = "|cffff80ffI thought you might be interested in trying my new holiday addon: " .. linkText
    end
    if (chatStep == 3) then
        message = "|cffff80ffPlease check it out, and thanks for the support!"
    end
    DEFAULT_CHAT_FRAME:AddMessage(format(_G["CHAT_WHISPER_GET"] .. message, link))
    chatStep = chatStep + 1
    if (chatStep < 4) then
        C_Timer.After(2 + chatStep, playChat)
    end
end

--local demoframe
--
--local function ChatFrame_OnHyperlinkShow(self, link, text, button)
--    local idx = strfind(text or "", linkText)
--    if (idx and idx > 1) then
--        if (not demoframe) then
--            demoframe = CreateFrame("FRAME", nil, UIParent)
--            demoframe:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
--            demoframe:SetSize(512, 512)
--            local texture = demoframe:CreateTexture()
--            texture:SetAllPoints()
--            texture:SetTexture("Interface\\AddOns\\TomCats\\images\\liita-screenshot")
--            texture:SetSize(512, 512)
--            texture:Show()
--            demoframe:Show()
--            demoframe:SetScript("OnMouseUp", function()
--                demoframe:Hide()
--            end)
--            local res = GetCVar("gxFullscreenResolution")
--            if (res) then
--                local x, y = strsplit("x", res)
--                if (x) then
--                    x = tonumber(x)
--                    if (x) then
--                        local width = UIParent:GetWidth()
--                        demoframe:SetScale(width / x)
--                    end
--                end
--            end
--        else
--            demoframe:Show()
--        end
--    end
--end
--
--hooksecurefunc("ChatFrame_OnHyperlinkShow", ChatFrame_OnHyperlinkShow)

local region

local eventEnds = {
    EU = 1557392400, -- 5/9/2019 9:00:00 UTC
    NA = 1557421200 -- 5/9/2019 17:00:00 UTC
}

local function getRegion()
    if (not region) then
        local serverTimestamp = math.floor(GetServerTime() / 60)
        local epoch = 1555891200 / 60-- 4/22/2019 0:00:00 UTC
        local currentCalendar = C_DateAndTime.GetCurrentCalendarTime()
        local days = currentCalendar.monthDay - 12
        local hours = currentCalendar.hour
        local minutes = currentCalendar.minute
        local diff1 = ((days * 24 + hours) * 60) + minutes
        local diff2 = serverTimestamp - epoch
        if (diff1 - diff2 > 0 and diff1 - diff2 < 120) then
            region = "EU"
        else
            region = "NA"
        end
    end
    return region
end


local function ChangeMap(self)
    WorldMapFrame:SetMapID(self.mapID)
    if WorldMapFrame:IsMaximized() then
        WorldMapFrame.BorderFrame.MaximizeMinimizeFrame:Minimize()
    end
    if not TomCatsRareMapFrame:IsShown() then
        TomCatsRarePanelToggle:OnClick()
    elseif not TomCatsRareMapFrame.RaresFrame:IsShown() then
        TomCatsRareMapFrame.DetailsFrame:Hide()
        TomCatsRareMapFrame.RaresFrame:Show()
    end
end

local function ADDON_LOADED(_, event, arg1)
    if (arg1 == addon.name) then
        TCL.Events.UnregisterEvent("ADDON_LOADED", ADDON_LOADED)
        addon.savedVariables.account.preferences = addon.savedVariables.account.preferences or { }
        addon.savedVariables.account.preferences.TomCatsMinimapButton = { position = 3 }
        addon.savedVariables.account.notifications = addon.savedVariables.account.notifications or { }
        addon.savedVariables.account.tutorials = addon.savedVariables.account.tutorials or { }
        local now = GetServerTime()
        --if ((not addon.savedVariables.account.notifications["CHILDRENSWEEK2019"]) and now < eventEnds[getRegion()]) then
        --    local _, _, _, _, reason = GetAddOnInfo("TomCats-ChildrensWeek")
        --    if (reason and reason == "MISSING") then
        --        addon.charm = TCL.Charms.Create({
        --            name = "TomCatsMinimapButton",
        --            iconTexture = "Interface\\AddOns\\TomCats\\images\\tomcat-icon",
        --            backgroundColor = { 0.0,0.0,0.0,1.0 },
        --            handler_onclick = playChat
        --        })
        --        addon.charm.tooltip = {
        --            Show = function(this)
        --                GameTooltip:ClearLines()
        --                GameTooltip:SetOwner(this, "ANCHOR_LEFT")
        --                GameTooltip:SetText("TomCat would like to chat!", 1, 1, 1)
        --                GameTooltip:AddLine("TomCat's Tours", nil, nil, nil, true)
        --                GameTooltip:Show()
        --            end,
        --            Hide = function()
        --                GameTooltip:Hide()
        --            end
        --        }
        --        addon.charm.MinimapLoopPulseAnim:Play()
        --    end
        --end
        --local tomcatsShortcut = TCL.Charms.Create({
        --    name = "TomCatsWorldmapRaresButton",
        --    iconTexture = "Interface\\AddOns\\TomCats\\images\\tomcat-icon",
        --    backgroundColor = { 0.0,0.0,0.0,1.0 },
        --    handler_onclick = function() handleSlashCommand("") end
        --})
        --tomcatsShortcut:SetParent(TomCatsRareMapFrame.RaresFrame.Contents.LogHeader)
        --tomcatsShortcut:SetFrameStrata("HIGH")
        --tomcatsShortcut:ClearAllPoints()
        --tomcatsShortcut:SetPoint("TOPRIGHT", TomCatsRareMapFrame.RaresFrame.Contents.LogHeader, "TOPRIGHT", -10, -8)
        --tomcatsShortcut:SetFrameLevel(TomCatsRareMapFrame.RaresFrame.Contents.LogHeader:GetFrameLevel() + 1)
        ---- prevent addons such as ElvUI from breaking this button
        ----tomcatsShortcut.SetPoint_Orig = tomcatsShortcut.SetPoint
        ----tomcatsShortcut.SetPoint = function() end
        --tomcatsShortcut.shadow:Show()
        --tomcatsShortcut.tooltip = {
        --    Show = function(this)
        --        GameTooltip:ClearLines()
        --        GameTooltip:SetOwner(this, "ANCHOR_LEFT")
        --        GameTooltip:SetText("TomCat's Tours", 1, 1, 1)
        --        GameTooltip:Show()
        --    end,
        --    Hide = function()
        --        GameTooltip:Hide()
        --    end
        --}
        --tomcatsShortcut:RegisterForDrag()

        local offset = -36
        local buttonSpacing = -34
        local count = 0
        local mapIDs = { 14, 62, 1355, 1462 }
        for i = 1, #mapIDs do
            local k = mapIDs[i]
            local v = addon.supportedMaps[k]
            local enabled = GetAddOnEnableState(UnitName("player"),v.name)
            if (enabled ~= 0) then
                local rareMapShortcut = TCL.Charms.Create({
                    name = "TomCatsWorldmapRaresButton" .. k,
                    iconTexture = v.iconTexture,
                    backgroundColor = v.backgroundColor,
                    handler_onclick = ChangeMap,
                    ignoreSlideBar = true,
                    ignoreSexyMap = true
                })
                rareMapShortcut:SetParent(WorldMapFrame)
                rareMapShortcut:SetFrameStrata("MEDIUM")
                rareMapShortcut:SetFrameLevel(9999)
                rareMapShortcut:ClearAllPoints()
                rareMapShortcut:SetPoint("TOPRIGHT", WorldMapFrame:GetCanvasContainer(), "TOPRIGHT", -4, offset + buttonSpacing * count)
                rareMapShortcut.shadow:Show()
                rareMapShortcut.tooltip = {
                    Show = function(this)
                        GameTooltip:ClearLines()
                        GameTooltip:SetOwner(this, "ANCHOR_LEFT")
                        GameTooltip:SetText(v.zone, 1, 1, 1)
                        GameTooltip:Show()
                    end,
                    Hide = function()
                        GameTooltip:Hide()
                    end
                }
                rareMapShortcut:RegisterForDrag()
                rareMapShortcut.mapID = k
                count = count + 1
            else
                addon.supportedMaps[k] = nil
            end
        end
    end
end

VignettePinMixin.OnAcquired_Orig = VignettePinMixin.OnAcquired

function VignettePinMixin:OnAcquired(vignetteGUID, vignetteInfo)
    self:OnAcquired_Orig(vignetteGUID, vignetteInfo)
    if vignetteInfo and vignetteInfo.atlasName and (vignetteInfo.atlasName == "VignetteKill" or vignetteInfo.atlasName == "Capacitance-General-WorkOrderCheckmark" or vignetteInfo.atlasName == "VignetteEventElite") then
        self.Texture:SetAtlas(vignetteInfo.atlasName, false);
        self.HighlightTexture:SetAtlas(vignetteInfo.atlasName, false);
        local x, y = self.Texture:GetSize()
        self.Texture:SetSize(x * 0.8, y * 0.8)
        self.HighlightTexture:SetSize(x * 0.8, y * 0.8)
    end
end

TCL.Events.RegisterEvent("ADDON_LOADED", ADDON_LOADED)
