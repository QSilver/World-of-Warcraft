local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ReputationsHWOD") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Warlords of Draenor\\Arakkoa Outcasts",[[
#include "Arakkoa_Outcasts"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Warlords of Draenor\\Frostwolf Orcs",[[
description This guide will show you how to become Exalted with the Frostwolf Orcs.
description Becoming Exalted with the Frostwolf Orcs allows you access to special items such as the Swift Frostwolf mount and Bladespire Relic.
stickystart "info"
step
label "menu"
Killing certain mobs in Frostfire Ridge give you Frostwolf Orc rep:
Stonefury Cliffs |next "stone" |confirm
Magnarok |next "magnarok" |confirm
Iron Siegeworks |next "iron" |confirm
step
label "stone"
kill Bloodmaul Brute##77991+, Bloodmaul Magma Shaper##77992+, Bloodmaul Taskmaster##77993+, Bloodmaul Geomancer##78578
Kill Bloodmaul mobs and their pets found around _Stonefury Cliffs_ for Frostwolf Orcs reputation |goto Frostfire Ridge/0 44.6,18.8
Return to the main menu |next "menu" |confirm
step
label "magnarok"
Many mobs in this area are _Elite_
kill Icecrag Mountainbreaker##87346+, Vicious Acidmaw##76905+, Burning Slagmaw##72348+
Kill level 100 mobs found in _Magnarok_ for Frostwolf Orcs reputation |goto Frostfire Ridge/0 69.7,30.5
Return to the main menu |next "menu" |confirm
step
label "iron"
kill Grom'kar Shocktrooper##77944+, Grom'kar Footsoldier##85997+, Grom'kar Pulverizer##78210+, Grom'kar Warforger##77945+, Grom'kar Enforcer##77940
Kill Grom'kar mobs around _Iron Siegeworks_ for Frostwolf Orcs reputation |goto Frostfire Ridge/0 86.1,54.9
Return to the main menu |next "menu" |confirm
step "info"
Completing quests in Shadowmoon Valley, Talador, and in your Garrison will give you rep with this faction
Your current reputation rank is:
_Neutral_ |only if rep('Frostwolf Orcs')==Neutral
_Friendly_ |only if rep('Frostwolf Orcs')==Friendly
_Honored_ |only if rep('Frostwolf Orcs')==Honored
_Revered_ |only if rep('Frostwolf Orcs')==Revered
_Exalted_ |only if rep('Frostwolf Orcs')==Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Warlords of Draenor\\Laughing Skull Orcs",[[
description This guide will show you how to become Exalted with the Laughing Skull Orcs.
description Becoming Exalted with the Laughing Skull Orcs allows you access to special items such as the Ironside Warwolf mount and a new Transmog helm.
step
Routing to Rep |next "menu" |only if hasbuilding(144,2) or hasbuilding(145,3)
Routing to End |next "end" |only if default
step
label "menu"
Killing mobs in Gorgrond gives you Laughing Skull Orcs rep:
Your current reputation rank is:
_Neutral_ |only if rep('Laughing Skull Orcs')==Neutral
_Friendly_ |only if rep('Laughing Skull Orcs')==Friendly
_Honored_ |only if rep('Laughing Skull Orcs')==Honored
_Revered_ |only if rep('Laughing Skull Orcs')==Revered
_Exalted_ |only if rep('Laughing Skull Orcs')==Exalted
Select an area below to kill mobs in for reputation
The Pit |next "pit" |confirm
Everbloom Wilds |next "wilds" |confirm
step
label "pit"
kill Iron Cauterizer##85127+, Iron Enforcer##85124+, Iron Bulwark##86536+, Iron Deadshot##86528+, Iron Warden##86499+
Kill level 100 mobs around _The Pit_ for Laughing Skill Orcs reputation |goto Gorgrond 48.9,28.9
Return to the main menu |next "menu" |confirm
step
label "wilds"
kill Venomous Ravager##86263+, Everbloom Wasp##86264+, Lumbering Ancient##86262+, Brine Lasher##86267
Kill level 100 mobs around _Everbloom Wilds_ for Laughing Skull Orcs reputation |goto Gorgrond 64.2,35.0
Return to the main menu |next "menu" |confirm
step
label "end"
You must have at least a _level 2 Trading Post_ in your Garrison to gain Laughing Skull Orcs reputation!
Click here to proceed to the Garrison building guide |next "Zygor's Horde Leveling Guides\\Garrison Guide\\Buildings Guide" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Warlords of Draenor\\Steamwheedle Preservation Society",[[
#include "Steamwheedle_Preservation_Society"
]])
