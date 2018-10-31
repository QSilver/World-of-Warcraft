if not IsTestBuild() then return end
if UnitFactionGroup("player") ~= "Horde" then return end

--------------------------------------------------------------------------------
-- Module Declaration
--

local mod, CL = BigWigs:NewBoss("King Grong", 2070, 2325)
if not mod then return end
mod:RegisterEnableMob(147268)
mod.engageId = 2263
--mod.respawnTime = 31

--------------------------------------------------------------------------------
-- Locals
--

--------------------------------------------------------------------------------
-- Localization
--

--local L = mod:GetLocale()
--if L then
--
--end

--------------------------------------------------------------------------------
-- Initialization
--

function mod:GetOptions()
	return {
		--[[ Grong ]]--
		281936, -- Tantrum
		{285671, "TANK"}, -- Crushed
		{285875, "TANK"}, -- Rending Bite
		282179, -- Reverberating Slam
		285994, -- Ferocious Roar
		--[[ Flying Ape Wranglers  ]]--
		282215, -- Megatomic Seeker Missile
		--[[ Apetaganizer 3000 ]]--
		282243, -- Apetagonize
		285659, -- Apetagonizer Core
		285660, -- Discharge Apetagonizer Core
	}
end

function mod:OnBossEnable()
	--[[ Grong ]]--
	self:Log("SPELL_CAST_START", "Tantrum", 281936)
	self:Log("SPELL_AURA_APPLIED", "CrushedApplied", 285671)
	self:Log("SPELL_AURA_APPLIED_DOSE", "CrushedApplied", 285671)
	self:Log("SPELL_AURA_APPLIED", "RendingBiteApplied", 285875)
	self:Log("SPELL_AURA_APPLIED_DOSE", "RendingBiteApplied", 285875)
	self:Log("SPELL_CAST_SUCCESS", "ReverberatingSlam", 282179)
	self:Log("SPELL_CAST_START", "FerociousRoar", 285994)
	--[[ Flying Ape Wranglers  ]]--
	self:Log("SPELL_CAST_SUCCESS", "MegatomicSeekerMissile", 282215)
	--[[ Apetaganizer 3000 ]]--
	self:Log("SPELL_CAST_START", "Apetagonize", 282243)
	self:Log("SPELL_AURA_APPLIED", "ApetagonizerCore", 285659)
	self:Log("SPELL_CAST_START", "DischargeApetagonizerCore", 285660)
end

function mod:OnEngage()
end

--------------------------------------------------------------------------------
-- Event Handlers
--

function mod:Tantrum(args)
	self:Message2(args.spellId, "orange")
	self:PlaySound(args.spellId, "alarm")
	self:CastBar(args.spellId, 5) -- 1s + 4s Channel
end

function mod:CrushedApplied(args)
	self:StackMessage(args.spellId, args.destName, args.amount, "purple")
	self:PlaySound(args.spellId, "alarm", nil, args.destName)
end

function mod:RendingBiteApplied(args)
	self:StackMessage(args.spellId, args.destName, args.amount, "purple")
	self:PlaySound(args.spellId, "alert", nil, args.destName)
end

function mod:ReverberatingSlam(args)
	self:Message2(args.spellId, "yellow")
	self:PlaySound(args.spellId, "alert")
end

function mod:FerociousRoar(args)
	self:Message2(args.spellId, "red")
	self:PlaySound(args.spellId, "warning")
end

function mod:MegatomicSeekerMissile(args)
	self:Message2(args.spellId, "orange")
	self:PlaySound(args.spellId, "alarm")
end

function mod:Apetagonize(args)
	self:Message2(args.spellId, "yellow")
	self:PlaySound(args.spellId, "alert")
end

function mod:ApetagonizerCore(args)
	self:TargetMessage2(285660, "green", args.destName. args.spellName)
end

function mod:DischargeApetagonizerCore(args)
	self:Message2(args.spellId, "green")
	self:PlaySound(args.spellId, "info")
end