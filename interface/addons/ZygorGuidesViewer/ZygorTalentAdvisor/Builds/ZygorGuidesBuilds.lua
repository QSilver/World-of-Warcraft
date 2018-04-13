if not ZygorTalentAdvisor then return end

local ZTA=ZygorTalentAdvisor

--***Example*** Remove all the --
--Capitalization and spelling matters.
--ZTA:RegisterBuild("CLASS","Name","Spec", [[
--	Talent Tier 1
--	Talent Tier 2
--	Talent Tier 3
--	Talent Tier 4
--	Talent Tier 5
--	Talent Tier 6
--]],[[
--	Major Glyph of 1
--	Major Glyph of 2
--	Major Glyph of 3
--	Minor Glyph of 1
--	Minor Glyph of 2
--	Minor Glyph of 3
--]],"PetSpec") --PetSpec only needed if you are a HUNTER

ZTA:RegisterBuild("DEATHKNIGHT","Leveling Blood(Recommended)","Blood", {1,2,3,2,2,2,1},[[
	Major Glyph of Pestilence
	Major Glyph of Anti-Magic Shell
	Major Glyph of Vampiric Blood
	Minor Glyph of Long Winter
	Minor Glyph of Death Gate
	Minor Glyph of Path of Frost
]])
ZTA:RegisterBuild("DEATHKNIGHT","Leveling Frost","Frost", {3,2,3,3,1,2,1},[[
	Major Glyph of Pestilence
	Major Glyph of Anti-Magic Shell
	Major Glyph of Regenerative Magic
	Minor Glyph of Tranquil Grip
	Minor Glyph of Long Winter
	Minor Glyph of Path of Frost
]])
ZTA:RegisterBuild("DEATHKNIGHT","Leveling Unholy","Unholy", {3,2,3,3,2,2,2},[[
	Major Glyph of Pestilence
	Major Glyph of Unholy Frenzy
	Major Glyph of Festering Blood
	Minor Glyph of Resilient Grip
	Minor Glyph of Death's Embrace
	Minor Glyph of Path of Frost
]])
ZTA:RegisterBuild("PRIEST","Leveling Shadow(Recommended)","Shadow", {1,1,2,1,2,3,1},[[
	Major Glyph of Inner Sanctum
	Major Glyph of Mind Flay
	Major Glyph of Weakened Soul
	Minor Glyph of Dark Archangel
	Minor Glyph of Shadow Ravens
	Minor Glyph of Shadowy Friends
]])
ZTA:RegisterBuild("PRIEST","Leveling Discipline","Discipline", {1,1,3,1,3,1,3},[[
	Major Glyph of Holy Fire
	Major Glyph of Penance
	Major Glyph of Inner Sanctum
	Minor Glyph of Borrowed Time
	Minor Glyph of Holy Resurrection
	Minor Glyph of Confession
]])
ZTA:RegisterBuild("PRIEST","Leveling Holy","Holy", {1,1,2,1,2,2,3},[[
	Major Glyph of Deep Wells
	Major Glyph of Renew
	Major Glyph of Inner Sanctum
	Minor Glyph of Heavens
	Minor Glyph of Holy Resurrection
	Minor Glyph of Confession
]])
ZTA:RegisterBuild("MAGE","Leveling Fire","Fire", {3,1,1,1,1,2,2},[[
	Major Glyph of Combustion
	Major Glyph of Inferno Blast
	Major Glyph of Evocation
	Minor Glyph of Mirror Image
	Minor Glyph of Arcane Language
	Minor Glyph of Conjure Familiar
]])
ZTA:RegisterBuild("MAGE","Leveling Frost(Recommended)","Frost", {3,1,1,3,1,2,2},[[
	Major Glyph of Splitting Ice
	Major Glyph of Icy Veins
	Major Glyph of Water Elemental
	Minor Glyph of Momentum
	Minor Glyph of Arcane Language
	Minor Glyph of Conjure Familiar
]])
ZTA:RegisterBuild("MAGE","Leveling Arcane","Arcane", {3,1,1,1,1,2,3},[[
	Major Glyph of Mana Gem
	Major Glyph of Arcane Power
	Major Glyph of Evocation
	Minor Glyph of Mirror Image
	Minor Glyph of Loose Mana
	Minor Glyph of Momentum
]])
ZTA:RegisterBuild("WARRIOR","Leveling Arms(Recommended)","Arms", {2,1,2,1,3,2,2},[[
	Major Glyph of Unending Rage
	Major Glyph of Death From Above
	Major Glyph of Sweeping Strikes
	Minor Glyph of Subtle Defender
	Minor Glyph of Thunder Strike
	Minor Glyph of Intimidating Shout
]])
ZTA:RegisterBuild("WARRIOR","Leveling Fury","Fury", {2,1,2,1,3,2,2},[[
	Major Glyph of Colossus Smash
	Major Glyph of Raging Wind
	Major Glyph of Unending Rage
	Minor Glyph of Subtle Defender
	Minor Glyph of Burning Anger
	Minor Glyph of Intimidating Shout
]])
ZTA:RegisterBuild("WARRIOR","Leveling Protection","Protection", {2,1,1,3,1,1,3},[[
	Major Glyph of Bull Rush
	Major Glyph of Unending Rage
	Major Glyph of Heavy Repercussions
	Minor Glyph of Intimidating Shout
	Minor Glyph of Burning Anger
	Minor Glyph of Blazing Trail
]])
ZTA:RegisterBuild("DRUID","Leveling Feral(Recommended)","Feral", {2,1,2,1,3,3,2},[[
	Major Glyph of Cat Form
	Major Glyph of Ferocious Bite
	Major Glyph of Savagery
	Minor Glyph of Grace
	Minor Glyph of Aquatic Form
	Minor Glyph of The Predator
]])
ZTA:RegisterBuild("DRUID","Leveling Guardian","Guardian", {3,1,3,2,3,2,2},[[
	Major Glyph of Fae Silence
	Major Glyph of Maul
	Major Glyph of Might of Ursoc
	Minor Glyph of Grace
	Minor Glyph of The Chameleon
	Minor Glyph of Aquatic Form
]])
ZTA:RegisterBuild("DRUID","Leveling Balance","Balance", {3,1,3,1,1,3,2},[[
	Major Glyph of Innervate
	Major Glyph of Guided Stars
	Major Glyph of Stampede
	Minor Glyph of Grace
	Minor Glyph of Sprouting Mushroom
	Minor Glyph of Aquatic Form
]])
ZTA:RegisterBuild("DRUID","Leveling Restoration","Restoration", {3,3,3,2,2,1,2},[[
	Major Glyph of Efflorescence
	Major Glyph of Healing Touch
	Major Glyph of Regrowth
	Minor Glyph of Grace
	Minor Glyph of Sprouting Mushroom
	Minor Glyph of Aquatic Form
]])
ZTA:RegisterBuild("SHAMAN","Leveling Elemental","Elemental", {2,2,3,3,2,2,1},[[
	Major Glyph of Chain Lightning
	Major Glyph of Lightning Shield
	Major Glyph of Fire Elemental Totem
	Minor Glyph of Thunderstorm
	Minor Glyph of Astral Recall
	Minor Glyph of Lakestrider
]])
ZTA:RegisterBuild("SHAMAN","Leveling Enhancement(Recommended)","Enhancement", {3,1,3,1,3,2,1},[[
	Major Glyph of Healing Storm
	Major Glyph of Feral Spirit
	Major Glyph of Fire Elemental Totem
	Minor Glyph of Spectral Wolf
	Minor Glyph of Astral Recall
	Minor Glyph of Lakestrider
]])
ZTA:RegisterBuild("SHAMAN","Leveling Restoration","Restoration", {3,1,3,2,1,2,1},[[
	Major Glyph of Healing Stream Totem
	Major Glyph of Water Shield
	Major Glyph of Fire Elemental Totem
	Minor Glyph of Spectral Wolf
	Minor Glyph of Astral Recall
	Minor Glyph of Lakestrider
]])
ZTA:RegisterBuild("HUNTER","Leveling Beast Mastery(Recommended)","Beast Mastery", {3,3,1,2,3,1,3},[[
	Major Glyph of Animal Bond
	Major Glyph of Deterrence
	Major Glyph of Liberation
	Minor Glyph of Revive Pet
	Minor Glyph of Aspect of the Cheetah
	Minor Glyph of Aspect of the Pack
]],"Ferocity")
ZTA:RegisterBuild("HUNTER","Leveling Marksmanship","Marksmanship", {3,3,2,3,1,1,1},[[
	Major Glyph of Aimed Shot
	Major Glyph of Animal Bond
	Major Glyph of Chimera Shot
	Minor Glyph of Revive Pet
	Minor Glyph of Aspect of the Cheetah
	Minor Glyph of Aspect of the Pack
]],"Tenacity")
ZTA:RegisterBuild("HUNTER","Leveling Survival","Survival", {3,3,2,3,1,1,1},[[
	Major Glyph of Animal Bond
	Major Glyph of Deterrence
	Major Glyph of Liberation
	Minor Glyph of Revive Pet
	Minor Glyph of Aspect of the Cheetah
	Minor Glyph of Aspect of the Pack
]],"Tenacity")
ZTA:RegisterBuild("MONK","Leveling Brewmaster","Brewmaster", {2,1,3,3,2,2,2},[[
	Major Glyph of Guard
	Major Glyph of Spinning Crane Kick
	Major Glyph of Fortifying Brew
	Minor Glyph of Spirit Roll
	Minor Glyph of Water Roll
	Minor Glyph of Zen Flight
]])
ZTA:RegisterBuild("MONK","Leveling Mistweaver","Mistweaver", {1,1,3,1,3,2,2},[[
	Major Glyph of Detox
	Major Glyph of Renewing Mist
	Major Glyph of Mana Tea
	Minor Glyph of Water Roll
	Minor Glyph of Spirit Roll
	Minor Glyph of Zen Flight
]])
ZTA:RegisterBuild("MONK","Leveling Windwalker(Recommended)","Windwalker", {3,1,2,3,3,2,3},[[
	Major Glyph of Spinning Crane Kick
	Major Glyph of Fortuitous Spheres
	Major Glyph of Touch of Karma
	Minor Glyph of Water Roll
	Minor Glyph of Spirit Roll
	Minor Glyph of Zen Flight
]])
ZTA:RegisterBuild("WARLOCK","Leveling Demonology(Recommended)","Demonology", {2,3,2,2,1,1,3},[[
	Major Glyph of Siphon Life
	Major Glyph of Imp Swarm
	Major Glyph of Curse of the Elements
	Minor Glyph of Shadow Bolt
	Minor Glyph of Crimson Banish
	Minor Glyph of Eye of Kilrogg
]])
ZTA:RegisterBuild("WARLOCK","Leveling Destruction","Destruction", {2,3,3,2,1,2,1},[[
	Major Glyph of Eternal Resolve
	Major Glyph of Conflagrate
	Major Glyph of Siphon Life
	Minor Glyph of Verdant Spheres
	Minor Glyph of Eye of Kilrogg
	Minor Glyph of Nightmares
]])
ZTA:RegisterBuild("WARLOCK","Leveling Affliction","Affliction", {3,3,3,2,1,2,1},[[
	Major Glyph of Unstable Affliction
	Major Glyph of Curse of the Elements
	Major Glyph of Siphon Life
	Minor Glyph of Verdant Spheres
	Minor Glyph of Eye of Kilrogg
	Minor Glyph of Nightmares
]])
ZTA:RegisterBuild("ROGUE","Leveling Assassination","Assassination", {2,2,2,3,1,1,2},[[
	Major Glyph of Vendetta
	Major Glyph of Redirect
	Major Glyph of Feint
	Minor Glyph of Blurred Speed
	Minor Glyph of Safe Fall
	Minor Glyph of Poisons
]])
ZTA:RegisterBuild("ROGUE","Leveling Combat(Recommended)","Combat", {2,3,2,2,1,3,2},[[
	Major Glyph of Energy
	Major Glyph of Cloak of Shadows
	Major Glyph of Feint
	Minor Glyph of Blurred Speed
	Minor Glyph of Safe Fall
	Minor Glyph of Poisons
]])
ZTA:RegisterBuild("ROGUE","Leveling Subtlety","Subtlety", {1,3,2,2,3,3,2},[[
	Major Glyph of Ambush
	Major Glyph of Stealth
	Major Glyph of Redirect
	Minor Glyph of Blurred Speed
	Minor Glyph of Safe Fall
	Minor Glyph of Poisons
]])
ZTA:RegisterBuild("PALADIN","Leveling Holy","Holy", {3,2,2,3,3,2,1},[[
	Major Glyph of Divine Plea
	Major Glyph of Divinity
	Major Glyph of Flash of Light
	Minor Glyph of Winged Vengeance
	Minor Glyph of Falling Avenger
	Minor Glyph of Righteous Retreat
]])
ZTA:RegisterBuild("PALADIN","Leveling Protection","Protection", {2,1,2,1,1,1,3},[[
	Major Glyph of Alabaster Shield
	Major Glyph of Consecration
	Major Glyph of Divine Protection
	Minor Glyph of Falling Avenger
	Minor Glyph of Righteous Retreat
	Minor Glyph of Winged Vengeance
]])
ZTA:RegisterBuild("PALADIN","Leveling Retribution(Recommended)","Retribution", {1,1,1,2,3,3,1},[[
	Major Glyph of Double Jeopardy
	Major Glyph of Mass Exorcism
	Major Glyph of Templar's Verdict
	Minor Glyph of Falling Avenger
	Minor Glyph of Righteous Retreat
	Minor Glyph of Winged Vengeance
]])