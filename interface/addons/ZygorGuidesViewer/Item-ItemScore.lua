local ZGV = ZygorGuidesViewer
if not ZGV then return end

local L = ZGV.L
local G = _G
local CHAIN = ZGV.ChainCall

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe

local ItemScore = {}
ZGV.ItemScore = ItemScore
local Logs = {}
ItemScore.Logs = Logs

local Gratuity = LibStub("LibGratuity-3.0")

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local function flip_array(arr)
	local flipped = {}
	for i,name in ipairs(arr) do flipped[name]=i end
	return flipped
end

-- Blizzard will NOT play nice... Items only return localized data, how fun. Delocalize everything into numbers, then...
-- Classes last updated for MoP
local itemclasses = flip_array({GetAuctionItemClasses()})
local itemweapsubclasses = flip_array({GetAuctionItemSubClasses(1)})
local itemarmsubclasses = flip_array({GetAuctionItemSubClasses(2)})
local class_ids = {"WEAPON","ARMOR"}
local weap_ids = {"AXE","TH_AXE","BOW","GUN","MACE","TH_MACE","TH_POLE","SWORD","TH_SWORD","TH_STAFF","FIST","MISCWEAP","DAGGER","THROWN","XBOW","WAND","FISHPOLE"}
local arm_ids = {"MISCARM","CLOTH","LEATHER","MAIL","PLATE","COSMETIC","SHIELD",} --Relics are out.

local SOCKET_WEIGHT = 80 -- can be overwriten in class rules

ItemScore.ItemClassData={itemclasses,itemweapsubclasses,itemarmsubclasses,class_ids,weap_ids,arm_ids}

local exceptionsList = {
	[50287] = 1,	-- Boots of the Bay
	[19972] = 1,	-- Lucky Fishing Hat
	[19969] = 1,	-- Nat Pagle's Extreme Anglin' Boots
	[93732] = 1,	-- Darkmoon Fishing Cap
	[88710] = 1,	-- Nat's Hat
	[33820] = 1,	-- Weather-Beaten Fishing Hat
	[7349] = 1,	-- Herbalist's Gloves
	[85777] = 1,	-- Ancient Pandaren Mining Pick
	[85663] = 1,	-- Herbalist's Spade
	[86566] = 1,	-- Forager's Gloves
	[39371] = 1,	-- Keleseth's Persuader
}

-- Offhands are MISCARM.
-- Twohanders are "TH" and not "2H".
-- Last stat update. 06/30/2013
-- TODO add speed weights if desired. SPEED = {ohweight = #, mhweight = #} Add DAMAGE?
local rules = {
	["DEATHKNIGHT"] = {
		--PLATE is at 1 because DKs start at level 55
		[1] = { --BLOOD
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, PLATE=1 },
			-- OLD stats = { MASTERY={weight=20}, STAMINA={weight=18}, BONUSARMOR={weight=18}, STRENGTH={weight=17}, MULTISTRIKE={weight=15}, HASTE={weight=12}, VERSATILITY={weight=10}, DPS={weight=6}, CR_HIT_MELEE={weight=5} },
			stats = { MASTERY={weight=3.3}, STAMINA={weight=20}, BONUSARMOR={weight=13}, STRENGTH={weight=5.6}, MULTISTRIKE={weight=6.2}, HASTE={weight=6}, VERSATILITY={weight=5.7}, CRIT_HIT_MELEE={weight=3}, },
			badstats = { INTELLECT=1, SPIRIT=1, AGILITY=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[2] = { --FROST
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, AXE=2, MACE=2, SWORD=2, PLATE=1 },
			-- OLD stats = { STRENGTH={weight=20}, HASTE={weight=12}, VERSATILITY={weight=14}, MULTISTRIKE={weight=17}, MASTERY={weight=18}, CRIT={weight=9}, DPS={weight=6} },
			stats = { STRENGTH={weight=5}, HASTE={weight=1}, VERSATILITY={weight=1.4}, MULTISTRIKE={weight=1.6}, MASTERY={weight=2}, CRIT={weight=1.2}, },
			badstats = { INTELLECT=1, SPIRIT=1, AGILITY=1, EXTRA_ARMOR=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[3] = { --UNHOLY
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, PLATE=1 },
			-- OLD stats = { STRENGTH={weight=20}, HASTE={weight=12}, CRIT={weight=14}, VERSATILITY={weight=14}, MULTISTRIKE={weight=16}, MASTERY={weight=18}, DPS={weight=6} },
			stats = { STRENGTH={weight=5}, HASTE={weight=1.2}, CRIT={weight=1.7}, VERSATILITY={weight=1.5}, MULTISTRIKE={weight=2.3}, MASTERY={weight=2.2},},
			badstats = { INTELLECT=1, SPIRIT=1, AGILITY=1, EXTRA_ARMOR=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		}
	},
	["DRUID"] = {
		[1] = { --BALANCE
			itemtypes={ DAGGER=1, MACE=1, MISCWEAP=1, TH_STAFF=1, LEATHER=1, CLOTH=1 },
			-- OLD stats = { INTELLECT={weight=20}, HASTE={weight=18}, CRIT={weight=17}, MULTISTRIKE={weight=15}, VERSATILITY={weight=13}, MASTERY={weight=12}, },
			stats = { INTELLECT={weight=5}, HASTE={weight=1.72}, CRIT={weight=1.71}, MULTISTRIKE={weight=1.7}, VERSATILITY={weight=1.4}, MASTERY={weight=1.71}, },
			badstats = { STRENGTH=1, AGILITY=1, SPIRIT=1, EXTRA_ARMOR=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[2] = { --FERAL
			itemtypes={ TH_POLE=1, TH_STAFF=1, TH_MACE=1, LEATHER=1, CLOTH=1 },
			-- OLD stats = { AGILITY={weight=20}, HASTE={weight=18}, MASTERY={weight=16}, CRIT={weight=16}, MULTISTRIKE={weight=14}, VERSATILITY={weight=12}, DPS={weight=8},  },
			stats = { AGILITY={weight=5}, HASTE={weight=1.48}, MASTERY={weight=1.4}, CRIT={weight=1.7}, MULTISTRIKE={weight=1.6}, VERSATILITY={weight=1.49}, },
			badstats = { INTELLECT=1, SPIRIT=1, STRENGTH=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[3] = { --GUARDIAN
			itemtypes={ TH_POLE=1,TH_STAFF=1, TH_MACE=1, LEATHER=1, CLOTH=1 },
			-- OLD stats = { AGILITY={weight=20}, STAMINA={weight=18}, HASTE={weight=18}, CRIT={weight=16}, MULTISTRIKE={weight=14}, VERSATILITY={weight=12}, MASTERY={weight=12}, DPS={weight=4},  },
			stats = { ARMOR={weight=20}, BONUSARMOR={weight=10}, AGILITY={weight=5}, STAMINA={weight=16}, HASTE={weight=3}, CRIT={weight=1.5}, MULTISTRIKE={weight=12}, VERSATILITY={weight=5.8}, MASTERY={weight=6.2}, },
			badstats = { INTELLECT=1, SPIRIT=1, STRENGTH=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[4] = { --RESTORATION
			itemtypes={ DAGGER=1,MACE=1,MISCWEAP=1, TH_STAFF=1, LEATHER=1, CLOTH=1 },
			-- OLD stats = { SPIRIT={weight=20}, INTELLECT={weight=18}, MASTERY={weight=16}, HASTE={weight=14}, MULTISTRIKE={weight=12}, CR_HIT_RANGED={weight=12}, VERSATILITY={weight=10} },
			stats = { SPIRIT={weight=0.2}, INTELLECT={weight=1.5}, MASTERY={weight=0.71}, HASTE={weight=0.78}, MULTISTRIKE={weight=0.6}, CR_HIT_RANGED={weight=0.4}, VERSATILITY={weight=0.3}, },
			badstats = { STRENGTH=1, AGILITY=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		}
	},
	["HUNTER"] = {  -- all 3 identical
		[1] = { -- BEAST MASTERY
			itemtypes={BOW=1, XBOW=1, GUN=1, LEATHER=-50, MAIL=40 },
			--OLD stats = { AGILITY={weight=20}, MASTERY={weight=18}, MULTISTRIKE={weight=18}, CRIT={weight=16}, VERSATILITY={weight=14}, HASTE={weight=13}, MASTERY={weight=12}, DPS={weight=10} },
			stats = { AGILITY={weight=5}, MASTERY={weight=1.6}, MULTISTRIKE={weight=1.7}, CRIT={weight=1.56}, VERSATILITY={weight=1.53}, HASTE={weight=1.4}, MASTERY={weight=1.6}, },
			badstats = { STRENGTH=1, INTELLECT=1, SPIRIT=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[2] = { -- MARKSMANSHIP
			itemtypes={BOW=1, XBOW=1, GUN=1, LEATHER=-50, MAIL=40 },
			-- OLD stats = { AGILITY={weight=20}, CRIT={weight=18}, HASTE={weight=16}, MULTISTRIKE={weight=14}, MASTERY={weight=12}, VERSATILITY={weight=10}, DPS={weight=6} },
			stats = { AGILITY={weight=5}, CRIT={weight=1.6}, HASTE={weight=1.24}, MULTISTRIKE={weight=1.8}, MASTERY={weight=1.22}, VERSATILITY={weight=1.5}, },
			badstats = { STRENGTH=1, INTELLECT=1, SPIRIT=1, EXTRA_ARMOR=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[3] = { -- SURVIVAL
			itemtypes={BOW=1, XBOW=1, GUN=1, LEATHER=-50, MAIL=40 },
			-- OLD stats = { AGILITY={weight=20}, CRIT={weight=18}, HASTE={weight=16}, VERSATILITY={weight=14}, MASTERY={weight=12}, MULTISTRIKE={weight=12}, DPS={weight=6} },
			stats = { AGILITY={weight=5}, CRIT={weight=1.5}, HASTE={weight=0.8}, VERSATILITY={weight=1.4}, MASTERY={weight=1.1}, MULTISTRIKE={weight=1.8} },
			badstats = { STRENGTH=1, INTELLECT=1, SPIRIT=1, EXTRA_ARMOR=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
	},
	["MONK"] = {
		[1] = { --BREWMASTER-TANK
			itemtypes={ TH_POLE=1, TH_STAFF=1, FIST=1, AXE=1, SWORD=1, MACE=1, LEATHER=1 },
			-- OLD stats = { AGILITY={weight=20}, EXTRA_ARMOR={weight=18}, STAMINA={weight=16}, HASTE={weight=14}, CRIT={weight=15}, MULTISTRIKE={weight=12}, VERSATILITY={weight=12}, MASTERY={weight=10}, DPS={weight=6} },
			stats = { AGILITY={weight=6.24}, ARMOR={weight=23}, EXTRA_ARMOR={weight=20}, STAMINA={weight=35}, HASTE={weight=6}, CRIT={weight=3.82}, MULTISTRIKE={weight=4}, VERSATILITY={weight=6.75}, MASTERY={weight=9}, },
			badstats = { INTELLECT=1, SPIRIT=1, STRENGTH=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[2] = { --MISTWEAVER-HEAL
			itemtypes={ TH_POLE=1, TH_STAFF=1, FIST=1, AXE=1, SWORD=1, MACE=1, LEATHER=1 },
			-- OLD stats = { SPIRIT={weight=20}, INTELLECT={weight=18}, HASTE={weight=16}, MULTISTRIKE={weight=14}, CRIT={weight=14}, MASTERY={weight=12}, VERSATILITY={weight=12} },
			stats = { SPIRIT={weight=0.2}, INTELLECT={weight=1.5}, HASTE={weight=0.5}, MULTISTRIKE={weight=1.1}, CRIT={weight=1}, MASTERY={weight=0.4}, VERSATILITY={weight=0.7} },
			badstats = { STRENGTH=1, AGILITY=1, EXPERTISE=1, EXTRA_ARMOR=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[3] = { --WINDWALKER-DPS
			itemtypes={ TH_POLE=1, TH_STAFF=1, FIST=1, AXE=1, SWORD=1, MACE=1, LEATHER=1 },
			-- OLD stats = { AGILITY={weight=20}, MASTERY={weight=14}, CRIT={weight=18}, HASTE={weight=16}, MULTISTRIKE={weight=10}, VERSATILITY={weight=10}, DPS={weight=4} },
			stats = { AGILITY={weight=4.5}, MASTERY={weight=0.5}, CRIT={weight=1.65}, HASTE={weight=1.4}, MULTISTRIKE={weight=1.8}, VERSATILITY={weight=1.6}, },
			badstats = { INTELLECT=1, SPIRIT=1, EXTRA_ARMOR=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		}
	},
	["MAGE"] = {
		[1] = { -- Arcane
			itemtypes={ DAGGER=1, SWORD=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			-- OLD stats = { INTELLECT={weight=20}, MASTERY={weight=18}, HASTE={weight=16}, MULTISTRIKE={weight=14}, CRIT={weight=12}, VERSATILITY={weight=10} },
			stats = { INTELLECT={weight=4}, MASTERY={weight=1.6}, HASTE={weight=1.4}, MULTISTRIKE={weight=1.5}, CRIT={weight=1.4}, VERSATILITY={weight=1.2} },
			badstats = { STRENGTH=1, AGILITY=1, SPIRIT=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[2] = { -- Fire
			itemtypes={ DAGGER=1, SWORD=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			-- OLD stats = { INTELLECT={weight=20}, CRIT={weight=18}, HASTE={weight=16}, MASTERY={weight=14}, MULTISTRIKE={weight=12}, VERSATILITY={weight=10} },
			stats = { INTELLECT={weight=4}, CRIT={weight=1.7}, HASTE={weight=1.3}, MASTERY={weight=1.38}, MULTISTRIKE={weight=1.4}, VERSATILITY={weight=1} },
			badstats = { STRENGTH=1, AGILITY=1, SPIRIT=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[3] = { -- Frost
			itemtypes={ DAGGER=1, SWORD=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			-- OLD stats = { INTELLECT={weight=20}, HASTE={weight=18}, CRIT={weight=16}, MULTISTRIKE={weight=14}, MASTERY={weight=14}, VERSATILITY={weight=12}, },
			stats = { INTELLECT={weight=4.5}, HASTE={weight=1.3}, CRIT={weight=1.7}, MULTISTRIKE={weight=2.1}, MASTERY={weight=1.2}, VERSATILITY={weight=1.5}, },
			badstats = { STRENGTH=1, AGILITY=1, SPIRIT=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		}
	},
	["PALADIN"] = {
		[1] = { --HOLY
			itemtypes={ AXE=1, MACE=1, SWORD=1, SHIELD=1, MISCARM=1, MAIL=-50,PLATE=40 },
			-- OLD stats = { SPIRIT={weight=20}, INTELLECT={weight=20},  MASTERY={weight=18}, HASTE={weight=16}, MULTISTRIKE={weight=14}, CRIT={weight=18}, VERSATILITY={weight=14} },
			stats = { SPIRIT={weight=0.26}, INTELLECT={weight=1.5},  MASTERY={weight=0.7}, HASTE={weight=0.4}, MULTISTRIKE={weight=0.8}, CRIT={weight=1.1}, VERSATILITY={weight=0.5} },
			badstats = { AGILITY=1, STRENGTH=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[2] = { --PROTECTION
			itemtypes={ AXE=1, MACE=1, SWORD=1, SHIELD=1, MAIL=-50, PLATE=40 },
			-- OLD stats = { STRENGTH={weight=20}, STAMINA={weight=20}, EXTRA_ARMOR={weight=18}, MASTERY={weight=16}, HASTE={weight=14}, MULTISTRIKE={weight=14}, VERSATILITY={weight=14},  DPS={weight=4} },
			stats = { STRENGTH={weight=9}, STAMINA={weight=30}, ARMOR={weight=13}, EXTRA_ARMOR={weight=18}, MASTERY={weight=7}, HASTE={weight=5}, MULTISTRIKE={weight=3}, VERSATILITY={weight=7.5}, CRIT={weight=4.5} },
			badstats = { INTELLECT=1, SPIRIT=1, AGILITY=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[3] = { --RETRIBUTION
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, MAIL=-50, PLATE=40 },
			-- OLD stats = { STRENGTH={weight=20}, HASTE={weight=18}, MASTERY={weight=12}, CRIT={weight=18}, DPS={weight=20}, MULTISTRIKE={weight=18}, VERSATILITY={weight=14} },
			stats = { STRENGTH={weight=4.5}, HASTE={weight=1.2}, MASTERY={weight=1.7}, CRIT={weight=1.6}, MULTISTRIKE={weight=1.8}, VERSATILITY={weight=1.5} },
			badstats = { INTELLECT=1, SPIRIT=1, AGILITY=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		}
	},
	["PRIEST"] = {
		[1] = { -- DISCIPLINE
			itemtypes={ DAGGER=1, MACE=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			-- OLD stats = {  INTELLECT={weight=20}, CRIT={weight=18}, MASTERY={weight=16}, SPIRIT={weight=16}, HASTE={weight=16}, MULTISTRIKE={weight=14}, VERSATILITY={weight=10} },
			stats = {  INTELLECT={weight=1.5}, CRIT={weight=1}, MASTERY={weight=0.9}, SPIRIT={weight=0.2}, HASTE={weight=0.4}, MULTISTRIKE={weight=0.7}, VERSATILITY={weight=0.5} },
			badstats = { STRENGTH=1, AGILITY=1, EXTRA_ARMOR=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[2] = { -- HOLY
			itemtypes={ DAGGER=1, MACE=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			-- OLD stats = { SPIRIT={weight=20}, INTELLECT={weight=20}, HASTE={weight=14}, MASTERY={weight=18}, CRIT={weight=16}, MULTISTRIKE={weight=12}, VERSATILITY={weight=12} },
			stats = { SPIRIT={weight=0.2}, INTELLECT={weight=1.5}, HASTE={weight=0.4}, MASTERY={weight=0.85}, CRIT={weight=0.7}, MULTISTRIKE={weight=1}, VERSATILITY={weight=0.5} },
			badstats = { STRENGTH=1, AGILITY=1, EXPERTISE=1, HIT=1, DODGE=1, PARRY=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[3] = { --SHADOW
			itemtypes={ DAGGER=1, MACE=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			-- OLD stats = { INTELLECT={weight=20}, HASTE={weight=18}, CRIT={weight=16}, MULTISTRIKE={weight=16}, VERSATILITY={weight=14}, MASTERY={weight=11} },
			stats = { INTELLECT={weight=4.3}, HASTE={weight=1.7}, CRIT={weight=1.58}, MULTISTRIKE={weight=1.59}, VERSATILITY={weight=1.4}, MASTERY={weight=1.8} },
			badstats = { STRENGTH=1, AGILITY=1, EXPERTISE=1, HIT=1, DODGE=1, PARRY=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		}
	},
	["ROGUE"] = {
		[1] = { --ASSASSINATION
			itemtypes={ DAGGER=2,LEATHER=1 },
			-- OLD stats = { AGILITY={weight=20}, MASTERY={weight=16}, HASTE={weight=18}, MULTISTRIKE={weight=14}, VERSATILITY={weight=12}, CRIT={weight=12}, DPS={weight=6} },
			stats = { AGILITY={weight=4}, MASTERY={weight=1.3}, HASTE={weight=1.1}, MULTISTRIKE={weight=1.4}, VERSATILITY={weight=1.2}, CRIT={weight=1.3}, },
			badstats = { INTELLECT=1, SPIRIT=1, EXTRA_ARMOR=1, STRENGTH=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[2] = { --COMBAT
			itemtypes={ DAGGER=2,FIST=2,AXE=2,MACE=2,SWORD=2, LEATHER=1 },
			-- OLD stats = { AGILITY={weight=20}, HASTE={weight=18}, MASTERY={weight=15}, MULTISTRIKE={weight=16}, CRIT={weight=14}, VERSATILITY={weight=12}, DAMAGE={weight=20,onlyinslot="MAINHAND"}, DPS={weight=20,onlyinslot="OFFHAND"}, },
			stats = { AGILITY={weight=4.3}, HASTE={weight=1.6}, MASTERY={weight=1.4}, MULTISTRIKE={weight=1.5}, CRIT={weight=1.35}, VERSATILITY={weight=1.33} },
			badstats = { INTELLECT=1,SPIRIT=1,SPELL_PENETRATION=1,SPELL_POWER=1,DODGE=1,PARRY=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[3] = { --SUBTLETY
			itemtypes={ DAGGER=2,FIST=2,AXE=2,MACE=2,SWORD=2, LEATHER=1 },
			-- OLD stats = { AGILITY={weight=20}, HASTE={weight=18}, VERSATILITY={weight=16}, CRIT={weight=16}, MASTERY={weight=14}, MULTISTRIKE={weight=10}, DPS={weight=6} },
			stats = { AGILITY={weight=5}, HASTE={weight=1.3}, VERSATILITY={weight=1.4}, CRIT={weight=1.45}, MASTERY={weight=1.8}, MULTISTRIKE={weight=1.9}, },
			badstats = { INTELLECT=1,SPIRIT=1,SPELL_PENETRATION=1,SPELL_POWER=1,DODGE=1,PARRY=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		}
	},
	["SHAMAN"] = {
		[1] = { -- ELEMENTAL
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, TH_STAFF=1, MISCARM=1, SHIELD=1, LEATHER=-50, MAIL=40, },
			-- OLD stats = { INTELLECT={weight=20}, HASTE={weight=18}, MULTISTRIKE={weight=16}, MASTERY={weight=14}, CRIT={weight=14}, VERSATILITY={weight=12}, },
			stats = { INTELLECT={weight=4}, HASTE={weight=1.5}, MULTISTRIKE={weight=1.7}, MASTERY={weight=1.56}, CRIT={weight=1.54}, VERSATILITY={weight=1.36}, },
			badstats = { STRENGTH=1, AGILITY=1, SPIRIT=1, EXTRA_ARMOR=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[2] = { -- ENHANCEMENT:
			itemtypes={ DAGGER=2, FIST=2, AXE=2, MACE=2, MISCARM=1, LEATHER=-50, MAIL=40, },
			-- OLD stats = { AGILITY={weight=20},  HASTE={weight=18}, MULTISTRIKE={weight=16}, MASTERY={weight=16}, CRIT={weight=14}, VERSATILITY={weight=14}, DPS={weight=6} },
			stats = { AGILITY={weight=4.5},  HASTE={weight=1.47}, MULTISTRIKE={weight=1.6}, MASTERY={weight=1.5}, CRIT={weight=1.41}, VERSATILITY={weight=1.38}, },
			badstats = { INTELLECT=1, SPIRIT=1, STRENGTH=1, EXTRA_ARMOR=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[3] = { -- RESTORATION
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, TH_STAFF=1, MISCARM=1, SHIELD=1, LEATHER=-50, MAIL=40, },
			-- OLD stats = { SPIRIT={weight=20}, INTELLECT={weight=20}, HASTE={weight=18}, MASTERY={weight=16}, MULTISTRIKE={weight=16}, CRIT={weight=12}, VERSATILITY={weight=1} },
			stats = { SPIRIT={weight=0.2}, INTELLECT={weight=1.5}, HASTE={weight=0.4}, MASTERY={weight=0.8}, MULTISTRIKE={weight=0.7}, CRIT={weight=1}, VERSATILITY={weight=0.5} },
			badstats = { STRENGTH=1, AGILITY=1, EXTRA_ARMOR=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		}
	},
	["WARLOCK"] = {
		[1] = { --AFFLICTION
			itemtypes={ SWORD=1, DAGGER=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			-- OLD stats = { INTELLECT={weight=20}, HASTE={weight=18}, MULTISTRIKE={weight=16}, CRIT={weight=14}, MASTERY={weight=14}, VERSATILITY={weight=12}, },
			stats = { INTELLECT={weight=4}, HASTE={weight=1.4}, MULTISTRIKE={weight=1.45}, CRIT={weight=1.41}, MASTERY={weight=1.55}, VERSATILITY={weight=1.2}, },
			badstats = { STRENGTH=1, AGILITY=1, SPIRIT=1, EXTRA_ARMOR=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[2] = { --DEMONOLOGY
			itemtypes={ SWORD=1, DAGGER=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			-- OLD stats = { INTELLECT={weight=20}, HASTE={weight=18}, VERSATILITY={weight=16}, MASTERY={weight=15}, MULTISTRIKE={weight=12}, CRIT={weight=12}, EXTRA_ARMOR={weight=8} },
			stats = { INTELLECT={weight=4}, HASTE={weight=1.5}, VERSATILITY={weight=1.3}, MASTERY={weight=1.43}, MULTISTRIKE={weight=1.5}, CRIT={weight=1.4} },
			badstats = { STRENGTH=1, AGILITY=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[3] = { --DESTRUCTION
			itemtypes={ SWORD=1, DAGGER=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			-- OLD stats = { INTELLECT={weight=20}, MASTERY={weight=18}, CRIT={weight=17}, HASTE={weight=16}, MULTISTRIKE={weight=14}, VERSATLITY={weight=14}  },
			stats = { INTELLECT={weight=4.3}, MASTERY={weight=1.3}, CRIT={weight=1.7}, HASTE={weight=1.4}, MULTISTRIKE={weight=1.6}, VERSATLITY={weight=1.42}  },
			badstats = { STRENGTH=1, AGILITY=1, SPIRIT=1, EXTRA_ARMOR=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		}
	},
	["WARRIOR"] = {
		[1] = { --ARMS
			itemtypes={ TH_POLE=1, TH_STAFF=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, MAIL=-50, PLATE=40 },
			-- OLD stats = { STRENGTH={weight=20}, CRIT={weight=18}, MULTISTRIKE={weight=16}, HASTE={weight=16}, VERSATILITY={weight=12}, MASTERY={weight=10}, DPS={weight=6} },
			stats = { STRENGTH={weight=4.2}, CRIT={weight=2.1}, MULTISTRIKE={weight=1.55}, HASTE={weight=1.42}, VERSATILITY={weight=1.43}, MASTERY={weight=1.5} },
			badstats = { INTELLECT=1, SPIRIT=1, AGILITY=1, EXTRA_ARMOR=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[2] = { --FURY
			itemtypes={ TH_AXE=38, TH_MACE=38, TH_SWORD=38, DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, MAIL=-50, PLATE=40 },  -- duals...
			-- OLD stats = { DPS={weight=20}, MISCWEAP={weight=20}, STRENGTH={weight=20}, HASTE={weight=18}, CRIT={weight=16}, MASTERY={weight=16}, MULTISTRIKE={weight=14}, VERSATILITY={weight=12} },
			stats = { STRENGTH={weight=4}, HASTE={weight=1.62}, CRIT={weight=2}, MASTERY={weight=1.63}, MULTISTRIKE={weight=1.7}, VERSATILITY={weight=1.4} },
			badstats = { INTELLECT=1, SPIRIT=1, EXTRA_ARMOR=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		},
		[3] = { --PROT
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, MAIL=-50, PLATE=40, SHIELD=1 },
			-- OLD stats = { STAMINA={weight=20}, MASTERY={weight=18}, EXTRA_ARMOR={weight=18}, CRIT={weight=16}, STRENGTH={weight=16}, MULTISTRIKE={weight=14}, HASTE={weight=8}, DPS={weight=4} },
			stats = { STAMINA={weight=30}, MASTERY={weight=4}, ARMOR={weight=11}, EXTRA_ARMOR={weight=14}, CRIT={weight=4.2}, STRENGTH={weight=5}, MULTISTRIKE={weight=2.5}, HASTE={weight=1.5}, VERSATILITY={weight=6}, },
			badstats = { INTELLECT=1, SPIRIT=1, AGILITY=1 },
			--sockets = { META=80, RED=80, BLUE=80, YELLOW=80, PURPLE=80, GREEN=80, ORANGE=80, PRISMATIC=80 }
		}
	},
}

-- Fix rules for any common rules
for class,classrules in pairs(rules) do
	for spec,rule in pairs(classrules) do
		local stats = rule["stats"]
		local types = rule["itemtypes"]

		stats.DAMAGE_PER_SECOND = stats.DPS stats.DPS = nil -- Switch DPS to the full string.

		-- You can always wear lower tier items. Just not higher.
		if types["PLATE"] then types["MAIL"] = types["MAIL"] or -1 end
		if types["MAIL"] then types["LEATHER"] = types["LEATHER"] or -1 end
		if types["LEATHER"] then types["CLOTH"] = types["CLOTH"] or -1 end
	end
end

ItemScore.rules = rules

--No better way of knowing when the exp bonus stops.... so big table of numbers.
local maxHeirloomLevels = {
	--85
	[93846]=85, [93847]=85, [93848]=85, [93849]=85, [93850]=85, [93851]=85, [93852]=85, [93853]=85, [93854]=85, [93855]=85, [93856]=85, [93857]=85, [93845]=85, [93844]=85,
	[93841]=85, [93858]=85, [93859]=85, [93860]=85, [93891]=85, [93892]=85, [93893]=85, [93894]=85, [93895]=85, [93896]=85, [93897]=85, [93898]=85, [93899]=85, [93900]=85,
	[93902]=85, [93903]=85, [93890]=85, [93889]=85, [93861]=85, [93862]=85, [93863]=85, [93864]=85, [93865]=85, [93866]=85, [93867]=85, [93876]=85, [93885]=85, [93886]=85,
	[93887]=85, [93888]=85, [93904]=85, [93843]=85, [69888]=85, [69891]=85, [69892]=85, [61931]=85, [61935]=85, [61936]=85, [61937]=85, [69887]=85, [61958]=85, [61942]=85,
	[62023]=85, [62024]=85, [62025]=85, [62026]=85, [62027]=85, [62029]=85, [62035]=85, [62036]=85, [62037]=85, [62038]=85, [62039]=85, [62040]=85,
	--80
	[42943]=80, [44092]=80, [44093]=80, [44094]=80, [44095]=80, [44096]=80, [44097]=80, [44098]=80, [44099]=80, [44100]=80, [44101]=80, [44102]=80, [44103]=80, [44091]=80,
	[42992]=80, [42944]=80, [42945]=80, [42946]=80, [42947]=80, [42948]=80, [42949]=80, [42950]=80, [42951]=80, [42952]=80, [42984]=80, [42985]=80, [42991]=80, [44105]=80,
	[44107]=80, [48677]=80, [69893]=80, [79131]=80, [92948]=80, [69889]=80, [69890]=80, [48683]=80, [48685]=80, [48687]=80, [48689]=80, [48691]=80, [48716]=80, [48718]=80,
	[50255]=80,
}

ItemScore.maxHeirloomLevels = maxHeirloomLevels

ItemScore.possEquipSlots = {
	INVTYPE_WEAPON = 1,
		INVTYPE_WEAPONMAINHAND = 1,
			INVTYPE_RANGEDRIGHT = 1,
			INVTYPE_2HWEAPON = 1,
			INVTYPE_RANGED = 1,
		INVTYPE_WEAPONOFFHAND = 1,
			INVTYPE_SHIELD = 1,
			INVTYPE_HOLDABLE = 1,

	INVTYPE_HEAD = 1,
	INVTYPE_NECK = 1,
	INVTYPE_SHOULDER = 1,
	INVTYPE_CLOAK = 1,
	INVTYPE_CHEST = 1,
		INVTYPE_ROBE = 1,
	INVTYPE_WRIST = 1,
	INVTYPE_HAND = 1,
	INVTYPE_WAIST = 1,
	INVTYPE_LEGS = 1,
	INVTYPE_FEET = 1,
	INVTYPE_FINGER = 1,
	INVTYPE_TRINKET = 1,
}

local SC_NORULES = "no rules"
local SC_BADSLOT = "bad slot"
local SC_NOTYET = "not ready"
local SC_BADITEM = "bad item"
local SC_NOTFORU = "not for you"
local SC_LEVELREQ = "level req"
local SC_BADSTAT = "bad stat"
local SC_LOWLEVEL = "low level"
local SC_BADPARAM = "bad param"
local SC_OK = "scored ok"

function ItemScore:SetFilters(playerclass,playerspec,playerlevel)
	self.playerclass = playerclass or (select(2,UnitClass("player")))
	self.playerspec = playerspec or GetSpecialization() or 1 -- Returns nil if < level 10
	self.playerlevel = playerlevel or UnitLevel("player")

	self.curRuleSet = rules[self.playerclass][self.playerspec]

	self:SetDualWield()
end

function ItemScore:SetDualWield()
	if (IsSpellKnown(674) and self.playerclass~="HUNTER")  --Hunter, DK but we do not want hunters to dual wield.
	or IsSpellKnown(86629) -- Shaman
	or IsSpellKnown(124146) -- Monk
	or IsSpellKnown(23588) then -- Warrior onehand dual wield in fury.
		self.playerdualwield=true
	else
		self.playerdualwield=nil
	end

	-- Dual Wielding 2hs for warriors.
	if IsSpellKnown(46917) then
		self.playerdual2h=true
	else
		self.playerdual2h=nil
	end
end

function ItemScore:IsGoodEquipSlot(equipslot)
	if not equipslot then return end
	return not not self.possEquipSlots[equipslot]
end

--[[
  Tests whether the item is unique and if it is then tests to see if the 2nd item is of the same uniqueness

	Parameters:
		test_itemid - itemid or itemlink that you are questioning the uniqueness of
		my_itemid - itemid or itemlink that is already in use, so could reject the testid
	Return
		T/F based on if the item can be equipped or not.
--]]

function ItemScore:CanUseUniqueItem(test_itemid, my_itemid)
	if not (test_itemid and my_itemid) then return true end
	local uniqueness_fam,maxEquip = GetItemUniqueness(test_itemid)
	if uniqueness_fam	 -- Items without uniqueness return nil
	and ( (uniqueness_fam < 0 and my_itemid == test_itemid)	-- If item is unique, but only to itself, then uniqueness_fam will be -1
	or ( uniqueness_fam > 0 and uniqueness_fam == GetItemUniqueness(my_itemid)) ) then -- Will be the same if they are from the same uniqueness_fam. matching -1 isn't good though.
		return false
	else
		return true
	end
end

-- EVIL ASSUMPTION: Let's use a different slot, INVTYPE_2HWEAPON, for two-handers. And INVTYPE_SHIELD for shields.

--[[
  Basic scoring function that also makes sure the user is able to equip the item.
	Parameters:
		itemlink - Blizzard hyperlink for the item. Needed for percise stat values. [Item] and [Item of the Bear] have the same id but different stats.
		invslot - Slot this item is going to be tested for.
		allowbad - used for the GearFinder to find the next upgrade. Skips returning due to level restrictions
		verbose - Extra debug messages.
		hack - Only used in ZGV.Testing to make the specialization popup show up.
	Return
		value - Score of the item.
		code - string for reason why this item is rejected
		reason - more detailed breakdown of reason why rejected.
--]]

function ItemScore:GetItemScore(itemlink, invslot, allowbad, verbose)
	-- Player information not available
	if not self.curRuleSet then return -1, SC_NOTYET, "rules not set yet." end

	if not ZGV.db.profile.autogear then return -1,SC_NOTYET,"autogear disabled" end

	if not itemlink then self:Debug("No itemlink given! %s",debugstack(1)) end

	-- Player is over 10 and does not have a specialization. No scores until they choose a spec.
	if self.playerlevel >= 10 and not GetSpecialization() then

		if ZGV.DEV and hack then error("no spec? hack!!") end
	
		if not self.SpecPopup then
			self.SpecPopup = ZGV.PopupHandler:NewPopup("ZygorSpecPopup","default")
			self.SpecPopup:SetText(L['itemscore_ae_nospec'])
			self.SpecPopup.OnAccept = function(self)
				 -- Show specialization window when accept is clicked.
				if not PlayerTalentFrame:IsVisible() then
					TalentMicroButton:Click()
				end
			end

			self.SpecPopup.returnMinimizeSettings = function(self)
				local notificationText = L['notifcenter_spec_text']
				local tooltipText = L['notifcenter_gen_popup_tooltip']

				local function OnOpen() -- TODO doesn't this return 1 at > 15?
					if GetSpecialization() and not ZGV.Testing.DontHidePopups then
						ZGV.NotificationCenter.RemoveButton(self:GetName())
					end
				end

				return notificationText,L['notifcenter_gear_title'],tooltipText,nil,nil,nil,nil,OnOpen
			end
		end

		-- Show if no .time set yet. Otherwise show every hour.
		if not self.SpecPopup.time or (GetTime() - self.SpecPopup.time) > 3600 then
			self.SpecPopup:Show()
			self.SpecPopup.time = GetTime()
		end

		--[[
		TODO: [Andrew]
		I feel like it should do 3 things,
		Accept - opens their talent panel, awaits a spec, 
		Decline - doesn't ask again about this (maybe for the play session),
		Hit X - sends to Notification Center, doesn't ask again as long as it's in the NC
		--]]

		self:Debug("Not giving a score because a spec is not picked.")
		return -1, SC_NOTYET, "spec not picked"
	end

	-- INVTYPE_WEAPON is not a slot option. Should use INVTYPE_WEAPONMAINHAND or INVTYPE_WEAPONOFFHAND or one of the specific types.
	if invslot == "INVTYPE_WEAPON" then return -1,SC_BADPARAM,"invslot should not be "..invslot end

	local rule = self.curRuleSet
	local subScore, code, reason

	local value=0 -- returns with the ItemScore if nothing is returned before.
	local item = self:GetItemStatsWithTooltip(itemlink)
	if not item then return -1, SC_NOTYET, "item not found (yet)"end

	local itemid = ZGV.ItemLink.GetItemID(itemlink)

	if type(verbose)~="table" then verbose=nil end
	local function do_verbose(s,...)
		--self:Debug("&_SUB2 "..s,...)
		tinsert(verbose,s:format(...))
	end

	local function _with_debug(code,reason)
		if verbose then do_verbose("Item dropped because... |cffff0000[%s] |cffff8800%s|r",code,reason) end
		return -1,code,reason
	end

	local itemslot = item.info.equipslot

	if verbose then do_verbose("ItemScore calculating: |cff88ffff%s|r (%s)  type: %s  slot: %s  in slot: %s",item.info.prettylink,item.info.itemlink,item.info.subclass,item.info.equipslot,tostring(invslot)) end

	if verbose then do_verbose("Tooltip: %s",item.tooltip and table.concat(item.tooltip,"; ") or "unknown?") end
	
	-- We have a set slot we are testing this item for. If it doesn't go in that slot then return -1
	if invslot then
		if ( invslot == "INVTYPE_WEAPONMAINHAND" and ( itemslot == "INVTYPE_WEAPON"		-- If we only want MH then WEAPON is okay too.
							       or itemslot == "INVTYPE_RANGEDRIGHT"	-- Casters use wands
							       or itemslot == "INVTYPE_RANGED"		-- Hunters used bows.
							     )
		    )
		or ( invslot == "INVTYPE_WEAPONOFFHAND" and itemslot == "INVTYPE_WEAPON" )		-- Only want OH so WEAPON is okay too.
		or ( invslot == "INVTYPE_CHEST" and itemslot == "INVTYPE_ROBE" ) then
			-- it's OK!
		elseif invslot ~= itemslot then
			return _with_debug(SC_BADSLOT,"|cffff8888 item for "..itemslot.." doesn't match slot "..invslot)
		end
	end

	-- Score for being able to equip the item
	subScore, code, reason = self:CanEquipItem(item,allowbad,verbose)
	if subScore == "REJECT" then return _with_debug(code, reason) end
	local multiplier = subScore or 1	-- Save this to use after the whole score is calculated
	if verbose then do_verbose("  MULTIPLER %.1f",multiplier) end

	-- Score Item level -- with wod new item model (same id for all versions), itemlevel can be undervalued on upgraded items, breaking the score
	--[[
	if self.playerlevel<GetMaxPlayerLevel() then
		-- Item level is always weighted. Pre Max level it isn't very important so assign it minimum value so that items CAN NOT get scored 0
		value = value + item.info.ilevel * .01
		if verbose then  self:Debug("&_SUB0   + ILEVEL %.1f, sub weighted",item.info.ilevel * .01)  end
	else
		-- Item level is a pretty good indicator. Weight it heavily.
		value = value + item.info.ilevel * 20
		if verbose then  self:Debug("&_SUB0   + ILEVEL %.1f, over weighted",item.info.ilevel * 20)  end
	end
	--]]

	-- Score on stats
	subScore, code, reason = self:ScoreItemStats(item, invslot, itemlink, verbose)
	if subScore < 0 then return _with_debug(code, reason) end
	value = value + subScore

	value = value * multiplier

	if verbose then  do_verbose("  = |cffccff88%d",value) end
	return value,SC_OK,"no comment"
end

--[[
	Scores an item based on only the stats. Not worried about if the item is usable or not.

	Parameters:
		item - item table or itemid
		invslot - Slot this item is going to be tested for.
		itemlink - Blizzard hyperlink for the item. Needed for precise stat values. [Item] and [Item of the Bear] have the same id but different stats.
		verbose - Give it a table to get extra debug messages.
	Return
		value - Score of the item.
		code - string for reason why this item is rejected
		reason - more detailed breakdown of reason why rejected.
--]]

function ItemScore:ScoreItemStats(item, invslot, itemlink, verbose)
	-- Player information not available
	if not self.curRuleSet then return -1, SC_NOTYET, "rules not set yet." end

	local rule = self.curRuleSet

	-- If not a table already then it is itemid/itemlink
	if type(item) ~= "table" then
		item = self:GetItemStatsWithTooltip(item)
		if not item then return -1, SC_NOTYET, "item not ready yet" end
	end

	local value = 0

	if type(verbose)~="table" then verbose=nil end
	local function do_verbose(s,...)
		--self:Debug("&_SUB2 "..s,...)
		tinsert(verbose,s:format(...))
	end

	-- if not max level
	if self.playerlevel<GetMaxPlayerLevel() then
		-- If below level 20 then we will assign a value to Armor because a lot of items have no stats at that low level.
		if self.playerlevel <= 20 and item.stats.RESISTANCE0_NAME then
			value = value + (item.stats.RESISTANCE0_NAME)
			if verbose then  do_verbose("  + ARMOR weighted at %.1f",(item.stats.RESISTANCE0_NAME))  end
		end
	--else
		-- prevent level 1 item from being suggested over a lvl 90 item with 1 badstat
		--if item.info.ilevel < GetMaxPlayerLevel()*3 then return -1, SC_LOWLEVEL, "itemlevel is below maxlevel*3." end
	end

	for statname,statvalue in pairs(item.stats) do
		if statname:find("^ITEM_MOD_") or statname:find("^RESISTANCE%d") then
			statname = statname:gsub("^ITEM_MOD_",""):gsub("^CR_","") :gsub("_SHORT$","") :gsub("_NAME$","") :gsub("_RATING$","")
			if statname=="RESISTANCE0_NAME" then statname="ARMOR" end

			--[[
			     Test Hit/Expertise rating.
				- If above cap then half the value of it.
				- If below max level then half the value because it isn't nearly as important.
			--]]

			-- TODO items that make you break hit/exp cap need to be handled because score could alternate between two items.
			if statname=="HIT" and rule.stats.HIT then -- if above hit rating cap for each class then make the weight half.
				local hitRules=rule.stats.HIT
				local curHitRating = GetCombatRatingBonus(hitRules.category) + GetHitModifier()

				if curHitRating > ( hitRules.hitcap or 0) or self.playerlevel < GetMaxPlayerLevel() then
					-- weight is half.
					hitRules.weight=hitRules.default / 2
				else
					-- weight is full value. Make sure incase we changed it before.
					hitRules.weight = hitRules.default
				end
			end

			if statname=="EXPERTISE" and rule.stats.EXPERTISE then
				local expRules=rule.stats.EXPERTISE
				local curExpRating=GetExpertise()

				if curExpRating >= (expRules.expcap or 0) or self.playerlevel < GetMaxPlayerLevel() then
					expRules.weight = expRules.default / 2
				else
					expRules.weight = expRules.default
				end
			end

			local statrule = rule.stats[statname]
			if statrule then
				if statrule.onlyinslot == invslot or not statrule.onlyinslot then
					-- Upscaling dps/damage
					--if statname=="DAMAGE_PER_SECOND" or statname=="DAMAGE" then statvalue=statvalue*0.3 end

					value = value + statvalue*(statrule.weight or 1)
					if verbose then do_verbose("  + |cff00ff00%.1f %s|r: |cffaaaaaa * %.1f = |cffffffff%.1f|r",statvalue,statname, statrule.weight or 1, statvalue*(statrule.weight or 1))  end
				end
			elseif rule.badstats[statname] then
				--if verbose then  do_verbose("  + |cffffff00%.1f %s|r: |cffff0000REJECTED",statvalue,statname)  end

				-- If a bad stat is present on a item pre max level, just ignore the stat. It won't get weighted.
				-- At max level though we should rule out that item in favor of something else.
				--if self.playerlevel == GetMaxPlayerLevel() then return -1,SC_BADSTAT,"useless stat: "..statname end
			end
		elseif statname:find("^EMPTY_SOCKET") then
			socketname = statname:gsub("^EMPTY_SOCKET_","")
			local statweight = (rule.sockets and rule.sockets[socketname]) or SOCKET_WEIGHT

			-- Gems below max level are not very important. They probably won't get value so weight them lightly.
			if self.playerlevel < GetMaxPlayerLevel() then
				statweight = statweight/2
			end
		

			value = value + statvalue*statweight

			if verbose then do_verbose("  + |cff00ff00%.1f %s|r: |cffaaaaaa * %.1f = |cffffffff%.1f|r",statvalue,statname, statweight or 1, statvalue*(statweight or 1))  end
		end
	end

	return value
end

--[[
	Parameters:
		item - item table or itemid
		allowbad - used for the GearFinder to find the next upgrade. Skips returning due to level restrictions
		verbose - Extra debug messages.
	Return
		value - -1 for false, 1 for true
		code - string for reason why this item is rejected
		reason - more detailed breakdown of reason why rejected.
--]]

function ItemScore:CanEquipItem(item,allowbad,verbose)
	local rule = self.curRuleSet
	-- Player information not available
	if not rule then return "REJECT", SC_NOTYET, "rules not set yet." end

	if type(verbose)~="table" then verbose=nil end
	local function do_verbose(verbose,s,...)
		--self:Debug("&_SUB2 "..s,...)
		tinsert(verbose,s:format(...))
	end

	-- If not a table already then it is itemid/itemlink
	if type(item) ~= "table" then
		item = self:GetItemStatsWithTooltip(item)
		if not item then return "REJECT", SC_NOTYET, "item not ready yet" end
	end

	local itemslot = item.info.equipslot
	if not itemslot then return "REJECT", SC_BADPARAM, "no equipslot?!" end --Shouldn't happen

	if allowbad then return 1 end  -- at your own risk.

	-- Check level requirements
	if item.info.reqlevel > self.playerlevel then return "REJECT", SC_LEVELREQ, "|cffff4400 level req "..item.info.reqlevel end
	
	if itemslot == "INVTYPE_FINGER"
	 or itemslot == "INVTYPE_TRINKET"
	 or itemslot == "INVTYPE_NECK"
	 or itemslot == "INVTYPE_CLOAK" then
		-- Rings, trinkets, necklaces and cloaks are good for everyone.
		return 1
	else
		-- Determine item class
		local class = class_ids[itemclasses[item.info.class] or 0] or item.info.class
		local subclass = item.info.subclass

		-- Delocalize item class into a string that we set so we know what kind of item this is.
		if class == "WEAPON" then
			local cl = weap_ids[itemweapsubclasses[item.info.subclass] or 0]
			if not cl then return "REJECT", SC_BADITEM,("Unknown weapon subclass %s"):format(item.info.subclass) end
			subclass = cl
		elseif class == "ARMOR" then
			local cl = arm_ids[itemarmsubclasses[item.info.subclass] or 0]
			if not cl then return "REJECT", SC_BADITEM,("Unknown armor subclass %s"):format(item.info.subclass) end
			subclass = cl
		else
			return "REJECT",SC_BADITEM,("Unknown item class %s"):format(class)
		end

		-- Okay, type ascertained. Is it proper for the player at all?
		local uselevel = rule.itemtypes[subclass]

		-- Heirloom support. If it is a heirloom and can be used then never rule it out for being used.
		-- If they can equip it at any level then they will be able to use it.
		if item.info.quality == 7 and uselevel then uselevel = 1 end

		if not uselevel then
			-- Can never use this type
			return "REJECT", SC_NOTFORU, ("|cffcc0000 type "..subclass.." bad for ".. self.playerclass.. self.playerspec)
		elseif ( uselevel > 0 and self.playerlevel < uselevel ) then
			-- Player too low level
			return "REJECT", SC_NOTFORU,("|cffff88aa not usable at level ".. self.playerlevel)
		elseif ( uselevel < 0 and self.playerlevel >= -uselevel ) then	-- Player too high level
			return 0.5  -- just give it a bad score
		elseif uselevel==40 and self.playerlevel<50 and self.playerlevel>39 then
			-- allows hunter/pally/warr/sham to transition armor type from level 40 to 50
			-- But favors the correct type of item by giving it an extra 10% score
			if verbose then do_verbose("  + |cff00ff00100 GOOD TYPE|r: MAIL->PLATE |cffffffff100|r")  end
			return 1.1
		else
			return 1
		end
	end
end

--[[
	Tests whether or not the item is a heirloom and in our system.
	If in our system then sees if level is appropriate to get the bonus.

	Parameters:
		item - item table or itemid
		verbose - Extra debug messages.
	Return
		value - Score of the item.
--]]

function ItemScore:UsableHeirloomItem(item, verbose)
	if not self.curRuleSet then return -1, SC_NOTYET, "rules not set yet." end

	-- If not a table already then it is itemid
	if type(item) ~= "table" then
		item = self:GetItemStatsWithTooltip(item)
		if not item then return -1, SC_NOTYET, "item not ready yet" end
	end

	if type(verbose)~="table" then verbose=nil end
	local function do_verbose(verbose,s,...)
		--self:Debug("&_SUB2 "..s,...)
		tinsert(verbose,s:format(...))
	end

	if item.info.quality==7 then
		local maxhlevel = maxHeirloomLevels[item.info.itemid]
		if maxhlevel then
			local value
			if self.playerlevel < maxhlevel then
				value = 15000
			else
				-- Item is a heirloom but we are too high level to use it's bonus.
				value = 0
			end

			if verbose then  do_verbose("  + HEIRLOOM! +%.1f|r",value)  end
			return value
		else
			if verbose then  do_verbose(" Heirloom:%d not in our system.",itemid )  end
		end
	end

	-- Okay so item isn't a heirloom, no big deal
	return 0
end

--[[
	Pretty clear... Is it a fishing pole?

	Parameters:
		itemid - itemid
	Return
		yes/no
--]]

function ItemScore:IsFishingPole(itemid)
	if not itemid then return end
	
	local item = self:GetItemStatsWithTooltip(itemid)  if not item then return false end
	local cl = weap_ids[itemweapsubclasses[item.info.subclass] or 0]
	
	return cl == "FISHPOLE"
end

--[[
-- sinus 2014-12-08 19:37:25 : unused?
function ItemScore:IsException(itemid)
	if not itemid then return end
	
	return exceptionsList[itemid]
end
--]]

-- Helper Functions

do
	local ZGVI_DAMAGE_TEMPLATE = DAMAGE_TEMPLATE :gsub("%%d","(%%d+)") :gsub(" %- "," %%- ")
	local ZGVI_DAMAGE_TEMPLATE_WITH_SCHOOL = DAMAGE_TEMPLATE_WITH_SCHOOL :gsub("%%d","(%%d+)") :gsub(" %- "," %%- ")
	local ZGVI_WEAPON_SPEED_TEMPLATE = WEAPON_SPEED.." ([0-9%.]+)"

	local ItemCache = {}
	ItemScore.__ItemCache = ItemCache

	--[[
	  Returns an item object with all the information you might need.
	  Also caches this item for future use.
	  Note: If a itemlink is provided then before returning the cached item, it gathers the stats from the itemlink.

		Parameters:
			item - item itemid
			itemlink - Blizzard hyperlink for the item. Needed for precise stat values. [Item] and [Item of the Bear] have the same id but different stats.

		Return
			item - Item Object with GetItemInfo(), stats, and tooltip
	--]]

	function ItemScore:GetItemStatsWithTooltip(itemlink)
		if not itemlink then return nil,"no param" end

		-- Early cache optimization!
			if ItemCache[itemlink] then  return ItemCache[itemlink]  end

		-- Make sure we have both itemid and itemlink, whatever was given in parameters.
			--need:
			local itemid  -- 12345

			local numlink=tonumber(itemlink)
			if numlink then -- it's a plain itemid
				itemid=numlink
				itemlink="item:"..numlink..":0:0:0:0:0:0:0:0:0:0:0"
			else  -- check for link contents. Optimized, just one :match!
				itemlink,itemid = tostring(itemlink):match("(item:(%d+)[%-%d:]+)")
				itemid=tonumber(itemid)
			end

			if not itemid or not itemlink then return nil,"param not an itemlink" end  -- itemlink must've been malformed.

		-- heirloom items will return the wrong stats if you are above the max level for them.
		-- Changing the itemlink is needed to get the right stats.
			if maxHeirloomLevels[itemid] then
				itemlink=ZGV.ItemLink.SetLevel(itemlink,maxHeirloomLevels[itemid])
			end

		-- TODO: Make sure that heirlooms are REMOVED FROM CACHE (and thus recalculated) when we level up.

		if ItemCache[itemlink] then  return ItemCache[itemlink]  end

		itemlink = ZGV.ItemLink.SetLevel(itemlink)

		-- itemid and itemlink are set.

		if ItemCache[itemlink] then  return ItemCache[itemlink]  end
		


		-- Okay, it's definitely not cached, let's do the hard work.

		local name,link,quality,ilevel, reqlevel, class, subclass, maxstack, equipslot, texture, vendorprice = GetItemInfo(itemlink)
		if not name then return nil,"no iteminfo (yet?)" end

		-- Loads stats into item.stats
		local stats = GetItemStats(itemlink)
		if not stats then return nil,"no stats (yet?)" end

		Gratuity:SetHyperlink(itemlink)
		local n = Gratuity:NumLines()
		if n <= 1 then return nil,"tooltip too short" end

		-- WE HAVE THE ITEM DATA AND THE TOOLTIP! Let's store it.
		local item = {
			info={itemid=itemid,name=name,itemlink=itemlink,prettylink=link,quality=quality,ilevel=ilevel,reqlevel=reqlevel,class=class,subclass=subclass,equipslot=equipslot,vendorprice=vendorprice},
			stats = stats,
			tooltip={}, -- filled below
		}

		local function addLine(num,bool)
			local line=Gratuity:GetLine(num,bool)
			if line then
				local d1,d2 = line:match(ZGVI_DAMAGE_TEMPLATE)
				if d1 and d2 then item.stats.DAMAGE1,item.stats.DAMAGE2,item.stats.DAMAGE = tonumber(d1),tonumber(d2),(tonumber(d1)+tonumber(d2))/2 end

				local s1 = line:match(ZGVI_WEAPON_SPEED_TEMPLATE)
				if s1 then item.stats.SPEED = tonumber(s1) end

				tinsert(item.tooltip,line)
			end
		end

		for i=1,n do
			addLine(i,false)		-- left line
			addLine(i,true)		-- right line
		end

		ItemCache[itemlink]=item
		return item
	end

end

--[[
	Converts INVTYPE_... into one of the usable inventory slots.
--]]

function ItemScore:GetItemSlot(itemslot)
	if not itemslot or itemslot=="" then return end --empty or nothing then return
	itemslot = itemslot:gsub("^INVTYPE_","")
	itemslot = itemslot:sub(1,1) .. itemslot:sub(2):lower()

	local itemslot2

	if itemslot=="Hand" then itemslot="Hands"
	elseif itemslot == "Cloak" then itemslot = "Back"
	elseif itemslot == "Robe" then itemslot = "Chest"
	elseif itemslot == "Shield" or itemslot == "Weaponoffhand" or itemslot == "Holdable" then itemslot = "SecondaryHand"
	elseif itemslot == "Weaponmainhand" or itemslot == "Rangedright" or itemslot == "Ranged" then itemslot="MainHand"
	elseif itemslot == "Weapon" then
		itemslot = "MainHand"
		if self.playerdualwield then itemslot2 = "SecondaryHand" end
	elseif itemslot == "2hweapon" then
		itemslot = "MainHand"
		if self.playerdual2h then itemslot2 = "SecondaryHand" end
	elseif itemslot == "Trinket" then itemslot = "Trinket0" itemslot2 = "Trinket1"
	elseif itemslot == "Finger" then itemslot = "Finger0" itemslot2 = "Finger1"
	end

	if itemslot then itemslot=itemslot.."Slot" end
	if itemslot2 then itemslot2=itemslot2.."Slot" end

	return itemslot,itemslot2
end

--[[
	Returns the id for the items in the itemslot.
--]]

-- ZGV.ItemScore:GetItemInSlot("INVTYPE_WRIST")

function ItemScore:GetItemInSlot(itemslot)
	local itemslot1,itemslot2 = ItemScore:GetItemSlot(itemslot)

	local slot1,slot2
	if itemslot1 then slot1 = GetInventorySlotInfo(itemslot1) end
	if itemslot2 then slot2 = GetInventorySlotInfo(itemslot2) end

	local itemlink1,itemlink2
	if slot1 then itemlink1 = GetInventoryItemLink("player",slot1) end
	if slot2 then itemlink2 = GetInventoryItemLink("player",slot2) end

	-- These links are PRETTY. Sadly, we don't want that.

	-- Return: item:11111:0:0, item:22222:0:0, [Item1], [Item2]

	return itemlink1 and itemlink1:match("item[:%d]+"),itemlink2 and itemlink2:match("item[:%d]+"), itemlink1,itemlink2
end

--[[
	Get rid of the strange invtypes and convert them to a common one.

	Parameters:
		equipslot - item.equipslot
	Return
		equipslot - Common INVTYPE for that item.
		equipslot2 - 2nd INVTYPE in Weapons case.
--]]

function ItemScore:GetCommonInvType(equipslot)
	if not (equipslot and self:IsGoodEquipSlot(equipslot)) then return end

	local equipslot2

	if equipslot == "INVTYPE_ROBE" then equipslot = "INVTYPE_CHEST"
	elseif equipslot == "INVTYPE_RANGEDRIGHT" or equipslot == "INVTYPE_RANGED" then equipslot = "INVTYPE_WEAPONMAINHAND"
	elseif equipslot == "INVTYPE_WEAPON" then equipslot = "INVTYPE_WEAPONMAINHAND" equipslot2 = "INVTYPE_WEAPONOFFHAND"
	end

	return equipslot,equipslot2
end

function ItemScore:Debug(str,...)
	ZGV:Debug("&itemscore &_SUB "..str, ... )
end

function ItemScore:ScoreCursor(quiet)
	local ret=""
	local itemlink
	if GetCursorInfo()=="item" then itemlink=select(3,GetCursorInfo()) end
	if not itemlink and GameTooltip and GameTooltip:GetItem() then itemlink = select(2,GameTooltip:GetItem()) end
	if not itemlink then ret="No item in or under cursor." if not quiet then print(ret) end  return ret  end
	ret="Scoring "..tostring(itemlink).."\n"
	local verbose={}
	local score,code,comment = ZGV.ItemScore:GetItemScore(itemlink,nil,false,verbose)
	ret=ret.."SCORE: "..tostring(score).."\n"
	ret=ret.."WHY: "..tostring(code).."\n"
	ret=ret.."COMMENT: "..tostring(comment).."\n"
	ret=ret.."DETAILS:\n"
	ret=ret..table.concat(verbose,"\n").."\n"
	if code==SC_LEVELREQ or code==SC_NOTFORU or code==SC_BADITEM then
		table.wipe(verbose)
		ret=ret.."Trying to force it...\n"
		local score,code,comment = ZGV.ItemScore:GetItemScore(itemlink,nil,true,verbose)
		ret=ret.."SCORE: "..tostring(score).."\n"
		ret=ret.."WHY: "..tostring(code).."\n"
		ret=ret.."COMMENT: "..tostring(comment).."\n"
		ret=ret.."DETAILS:\n"
		ret=ret..table.concat(verbose,"\n").."\n"
	end
	if not quiet then print(ret) end
	return ret
end