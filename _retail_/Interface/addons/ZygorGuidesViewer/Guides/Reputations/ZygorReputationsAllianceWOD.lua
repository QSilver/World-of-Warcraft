local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsAWOD") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Warlords of Draenor\\Arakkoa Outcasts",[[
#include "Arakkoa_Outcasts"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Warlords of Draenor\\Council of Exarchs",[[
description This guide will show you how to become Exalted with the Council of Exarchs.
description Becoming Exalted with the Council of Exarchs allows you access to special items including the Dusty Rockhide mount and the Relic of Karabor.
stickystart "info"
step
label "menu"
Killing certain mobs in Shadowmoon Valley gives you Council of Exarchs rep:
Socrethar's Rise |next "rise" |confirm
Darktide Roost |next "darktide" |confirm
step
label "rise"
kill Sargerei Initiate##81541+, Sargerei Acolyte##85168+, Sargerei Darkblade##84945+, Shadowglen Thornshooter##81502+, Shadowglen Spitter##81637+, Sargerei Demonlord##81543+
Kill level 100 mobs around _Socrethar's Rise_ for Council of Exarchs reputation |goto Shadowmoon Valley D 47.1,76.5
Return to the main menu |next "menu" |confirm
step
label "darktide"
kill Darktide Engineer##78339+, Darktide Pilferer##78148+, Darktide Guardian##78168+, Darktide Rylakinator-3000##78328+, Darkwing Adolescent##85357+
Kill level 100 mobs around _Darktide Roost_ for Council of Exarchs reputation |goto Shadowmoon Valley D 57.6,87.9
Return to the main menu |next "menu" |confirm
step "info"
Your current reputation rank is:
_Neutral_ |only if rep('Council of Exarchs')==Neutral
_Friendly_ |only if rep('Council of Exarchs')==Friendly
_Honored_ |only if rep('Council of Exarchs')==Honored
_Revered_ |only if rep('Council of Exarchs')==Revered
_Exalted_ |only if rep('Council of Exarchs')==Exalted
Completing quests in Shadowmoon Valley, Talador, and in your Garrison will give you rep with this faction
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Warlords of Draenor\\Sha'tari Defense",[[
description This guide will show you how to become Exalted with Sha'tari Defense.
description Becoming Exalted with Sha'tari Defense allows you access to special items such as the Armored Irontusk mount and a Sha'tari Defense plate Transmog set.
step
Routing to Rep |next "menu" |only if hasbuilding(144,2) or hasbuilding(145,3)
Routing to End |next "end" |only if default
step
label "menu"
Killing mobs in Talador gives you Sha'tari Defense reputation
Your current reputation rank is:
_Neutral_ |only if rep('Shatari Defense')==Neutral
_Friendly_ |only if rep('Shatari Defense')==Friendly
_Honored_ |only if rep('Shatari Defense')==Honored
_Revered_ |only if rep('Shatari Defense')==Revered
_Exalted_ |only if rep('Shatari Defense')==Exalted
Select an area below to kill mobs in for reputation
Shattrath City |next "shattrath" |confirm
Bladefury Hold |next "bladefury" |confirm
step
label "shattrath"
Kill level 100 mobs around _Shattrath City_ for Sha'tari Defense reputation |goto Talador 42.7,33.0
Return to the main menu |next "menu" |confirm
step
label "bladefury"
kill Grom'kar Bulwark##85454+, Grom'kar Punisher##85458+, Grom'kar Deadeye##85450+, Grom'kar Blademaster##85456+
Kill level 100 mobs around _Bladefury Hold_ for Sha'tari Defense reputation |goto Talador 68.8,3.5
Return to the main menu |next "menu" |confirm
step
label "end"
You must have at least a _level 2 Trading Post_ in your Garrison to gain Sha'tari Defense reputation!
Click here to proceed to the Garrison building guide |next "Zygor's Alliance Leveling Guides\\Garrisons\\Garrison Building Guide" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Warlords of Draenor\\Steamwheedle Preservation Society",[[
#include "Steamwheedle_Preservation_Society"
]])
