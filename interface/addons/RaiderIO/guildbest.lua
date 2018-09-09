local addonName, ns = ...

-- constants
local L = ns.L

-- utility functions
local GetGuildFullName
do
	function GetGuildFullName(unit)
		local guildName, _, _, guildRealm = GetGuildInfo(unit)
		if not guildName then
			return
		end
		if not guildRealm then
			_, guildRealm = ns.GetNameAndRealm(unit)
		end
		return guildName .. "-" .. guildRealm
	end
end

RaiderIO_GuildBestMixin = {}

function RaiderIO_GuildBestMixin:OnLoad()
	-- namespace reference
	ns.GUILD_BEST_FRAME = self
	-- make it tiny bit larger
	self:SetScale(1.2)
	-- prepare to be shown later
	self:Reset()
	-- set the title of the container
	self.Title:SetText(L.GUILD_BEST_TITLE)
end

function RaiderIO_GuildBestMixin:Refresh()
	if not ChallengesFrame then self:Reset() self:Hide() return end
	local guildFullName = GetGuildFullName("player")
	if not guildFullName then self:Reset() self:Hide() return end
	self:SetParent(ChallengesFrame)
	self:ClearAllPoints()
	self:SetPoint("BOTTOMLEFT", ChallengesFrame.WeeklyInfo.Child.SeasonBest, "TOPLEFT", 0, 0)
	self:SetFrameStrata("HIGH")
	self:SetUp(guildFullName)
	self:Show()
end

function RaiderIO_GuildBestMixin:SwitchBestRun()
	ns.addonConfig.displayWeeklyGuildBest = not ns.addonConfig.displayWeeklyGuildBest
	self:SetUp(GetGuildFullName("player"))
end

function RaiderIO_GuildBestMixin:SetUp(guildFullName)
	local bestRuns = ns.GUILD_BEST_DATA and ns.GUILD_BEST_DATA[guildFullName] or {}

	local keyBest = "season_best"
	local title = L.GUILD_BEST_SEASON

	if ns.addonConfig.displayWeeklyGuildBest then
		keyBest = "weekly_best"
		title = L.GUILD_BEST_WEEKLY
	end

	self.SubTitle:SetText(title)
	self.bestRuns = (bestRuns and bestRuns[keyBest]) or {}
	self:Reset()

	if not self.bestRuns or #self.bestRuns == 0 then
		self.GuildBestNoRun:Show()
		return
	end

	for i, run in ipairs(self.bestRuns) do
		local frame = self.GuildBests[i]
		if not frame then
			frame = CreateFrame("Frame", nil, ns.GUILD_BEST_FRAME, "RaiderIO_GuildBestRunTemplate")
			frame:SetPoint("TOP", self.GuildBests[i-1], "BOTTOM")
		end
		frame:SetUp(run)
		frame:Show()
	end
end

function RaiderIO_GuildBestMixin:Reset()
	self.GuildBestNoRun:Hide()
	self.GuildBestNoRun.Text:SetText(L.NO_GUILD_RECORD)
	if self.GuildBests then
		for _, frame in ipairs(self.GuildBests) do
			frame:Hide()
		end
	end
end

RaiderIO_SwitchGuildBestMixin = {}

function RaiderIO_SwitchGuildBestMixin:OnLoad()
	self.text:SetFontObject("GameFontNormalTiny2")
	self.text:SetText(L.CHECKBOX_DISPLAY_WEEKLY)
	self.text:SetPoint("LEFT", 15, 0)
	self.text:SetJustifyH("LEFT")
	self:SetSize(15, 15)
end

function RaiderIO_SwitchGuildBestMixin:OnShow()
	self:SetChecked(ns.addonConfig.displayWeeklyGuildBest)
end

RaiderIO_GuildBestRunMixin = {}

function RaiderIO_GuildBestRunMixin:SetUp(runInfo)
	self.runInfo = runInfo
	self.CharacterName:SetText(ns.GetDungeonWithData("id", self.runInfo.zone_id).shortNameLocale)
	self.Level:SetTextColor(1, 1, 1)
	if self.runInfo.upgrades == 0 then
		self.Level:SetTextColor(.62, .62, .62)
	end
	self.Level:SetText(ns.GetStarsForUpgrades(self.runInfo.upgrades) .. self.runInfo.level)
end

function RaiderIO_GuildBestRunMixin:OnEnter()
	GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
	GameTooltip:SetText(C_ChallengeMode.GetMapUIInfo(ns.GetDungeonWithData("id", self.runInfo.zone_id).keystone_instance), 1, 1, 1)
	local upgradeStr = ""
	if self.runInfo.upgrades > 0 then
		upgradeStr = " (" .. ns.GetStarsForUpgrades(self.runInfo.upgrades, true) .. ")"
	end
	GameTooltip:AddLine(MYTHIC_PLUS_POWER_LEVEL:format(self.runInfo.level) .. upgradeStr, 1, 1, 1)
	GameTooltip:AddLine(self.runInfo.clear_time, 1, 1, 1)
	if self.runInfo.party then
		GameTooltip:AddLine(" ")
		for i, member in ipairs(self.runInfo.party) do
			if (member.name) then
				local classInfo = C_CreatureInfo.GetClassInfo(member.class_id)
				local color = (classInfo and RAID_CLASS_COLORS[classInfo.classFile]) or NORMAL_FONT_COLOR
				local texture
				if (member.role == "tank") then
					texture = CreateAtlasMarkup("roleicon-tiny-tank")
				elseif (member.role == "dps") then
					texture = CreateAtlasMarkup("roleicon-tiny-dps")
				elseif (member.role == "healer") then
					texture = CreateAtlasMarkup("roleicon-tiny-healer")
				end
				GameTooltip:AddLine(MYTHIC_PLUS_LEADER_BOARD_NAME_ICON:format(texture, member.name), color.r, color.g, color.b)
			end
		end
	end
	GameTooltip:Show()
end
