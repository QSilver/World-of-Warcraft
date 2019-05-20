local _, addon = ...
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

local function ADDON_LOADED(_, event, arg1)
    if (arg1 == addon.name) then
        TCL.Events.UnregisterEvent("ADDON_LOADED", ADDON_LOADED)
        addon.savedVariables.account.preferences.TomCatsMinimapButton = { position = 3 }
        addon.savedVariables.account.notifications = addon.savedVariables.account.notifications or { }
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
    end
end

TCL.Events.RegisterEvent("ADDON_LOADED", ADDON_LOADED)
