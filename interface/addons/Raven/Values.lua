-- Raven is an addon to monitor auras and cooldowns, providing timer bars and icons plus helpful notifications.

-- Values.lua contains functions used by value bars.

local MOD = Raven
local L = LibStub("AceLocale-3.0"):GetLocale("Raven")
local valueFunctions, colorFunctions

-- Value functions have an optional input parameter: unit (specified when creating a value bar)
-- Functions return:
--   1. status - true if the unit exists and no errors are detected
--   2. value - current numeric value, depending on the selected function
--   3. maxValue - maximum numeric value, used to calculate how much of a value bar to fill
--   4. valueText - if not nil then this will be shown instead of numeric value in "timer text"
--   5. altR, altG, altB - if not nil then this is alternative color to use for value bar

-- Add option for value bars to use alternative color or use a default or custom color or class color
-- Class color might be a good option for all custom bars

local function ValueUnitLevel(unit) return UnitLevel(unit), 120 end

local function ValueUnitHealth(unit) return UnitHealth(unit) or 0, UnitHealthMax(unit) end

local function ValueUnitPower(unit) return UnitPower(unit) or 0, UnitPowerMax(unit) end

local function ValueUnitThreat(unit) return UnitThreatSituation("player", unit) or 0, 3 end

local function ValuePlayerXP() return UnitXP("player") or 0, UnitXPMax("player") end

local functionTable = {
	[L["Level"]] = { func = ValueUnitLevel, unit = true },
	[L["Health"]] = { func = ValueUnitHealth, unit = true },
	[L["Power"]] = { func = ValueUnitPower, unit = true },
	[L["Threat"]] = { func = ValueUnitThreat, unit = true },
	[L["XP"]] = { func = ValuePlayerXP, unit = false },
}

-- Color functions are used to return specialized colors such as reaction color
-- Functions have an optional unit input parameter and return r, g, b

local function ColorClass(unit)
	if UnitIsPlayer(unit) then
		local _, token = UnitClass(unit)
		if token then
			local c = MOD.ClassColors[token]
			if c then return c.r, c.g, c.b end
		end
	end
	return nil
end

local function ColorHealth(unit)
	local h = UnitHealth(unit)
	local hmax = UnitHealthMax(unit)
	if h and hmax and h < hmax then
		local frac = h / hmax -- color goes from green to red depending on current health
		if frac > 0.5 then return (1 - frac) * 2, 1, 0 end
		return 1, frac * 2, 0
	end
	return nil
end

local function ColorPower(unit)
	local power, token, altR, altG, altB = UnitPowerType(unit)
	if token then
		local c = PowerBarColor[token]
		if c then return c.r, c.g, c.b end
	elseif altR and alrG and altB then
		return altR, altG, altB
	elseif power then 
		local c = PowerBarColor[power]
		if c then return c.r, c.g, c.b end
	end
	local c = PowerBarColor["MANA"]
	if c then return c.r, c.g, c.b end
	return nil
end

local function ColorReaction(unit)
	local r, g, b = UnitSelectionColor(unit)
	if r and g and b then return r, g, b end
	return nil
end

local function ColorThreat(unit)
	if UnitIsPlayer(unit) then -- only NPC units have threat
		local status = UnitThreatSituation("player", unit)
		if status then
			local r, g, b = GetThreatStatusColor(status)
			if r and g and b then return r, g, b end
		end
	end
	return nil
end

local colorTable = {
	[L["Class"]] = ColorClass,
	[L["Health"]] = ColorHealth,
	[L["Power"]] = ColorPower,
	[L["Reaction"]] = ColorReaction,
	[L["Threat"]] = ColorThreat,
}

-- Initialize functions and data used by this module
function MOD:InitializeValues()
	valueFunctions = MOD.CopyTable(functionTable)
	colorFunctions = MOD.CopyTable(colorTable)
end

-- Return function with a given name or nil if not found
function MOD:GetValueFunction(name)
	return valueFunctions[name].func
end

-- Return whether a function with a given name takes unit as an argument
function MOD:IsUnitValue(name)
	return valueFunctions[name].unit
end

-- Return a list of available value functions
function MOD:GetValuesList()
	local i, t = 0, {}
	for name in pairs(valueFunctions) do
		i = i + 1
		t[i] = name
	end
	table.sort(t)
	return t, i
end

-- Return function with a given name or nil if not found
function MOD:GetColorFunction(name)
	return colorFunctions[name]
end

-- Return a list of available value functions
function MOD:GetValueColorsList()
	local i, t = 0, {}
	for name in pairs(colorFunctions) do
		i = i + 1
		t[i] = name
	end
	table.sort(t)
	return t, i
end
