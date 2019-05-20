local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("TitlesHWOD") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Warlords of Draenor Titles\\Architect",[[
description This guide will assist you in achieving the Architect Title.
#include "wod_architect"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Warlords of Draenor Titles\\Artisan",[[
description This guide will assist you in achieving the Artisan Title.
#include "wod_artisan"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Warlords of Draenor Titles\\Jenkins",[[
description This guide will assist you in achieving the Jenkins Title.
#include "wod_jenkins"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Warlords of Draenor Titles\\Empire's Twilight",[[
description This guide will assist you in achieving the Empire's Twilight Title.
#include "wod_empirestwilight"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Warlords of Draenor Titles\\Ironbane",[[
description This guide will assist you in achieving the Ironbane Title.
#include "wod_ironbane"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Warlords of Draenor Titles\\The Indomitable",[[
description This guide will assist you in achieving the Indomitable Title.
#include "wod_indomitable"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Warlords of Draenor Titles\\Talon King/Queen",[[
description This guide will assist you in achieving the Talon King/Queen Title.
#include "wod_talonkingqueen"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Warlords of Draenor Titles\\Stable Master",[[
description This guide will assist you in achieving the Stable Master Title.
step
Routing to Title |next "menu" |only if hasbuilding(67,3)
Routing to End |next "end" |only if default
step
label "menu"
This title is gained by defeating all mount-in-training targets while carrying the Garn-Tooth Necklace |tip It is found on the ground of your Level 3 Stables.
Complete mount-in-training quests from the Stables with the Garn-Tooth Necklace:
_Click_ a section below to complete the achievement:
Maimclaw |achieve 9706/1 |confirm |next "maimclaw"
Beast-Lasher |achieve 9706/2 |confirm |next "beastlasher"
Moth of Wrath |achieve 9706/3 |confirm |next "moth"
Thundercall |achieve 9706/4 |confirm |next "thundercall"
Ironbore |achieve 9706/5 |confirm |next "ironbore"
Karak |achieve 9706/6 |confirm |next "karak"
|next "achieve"
step
label "maimclaw"
kill 1 Maimclaw##87174 |goto Nagrand D/0 63.8,80.8 |tip You must have the Garn-Tooth Necklace AND kill them with every mount-in-training mount.
|achieve 9706/1
Click here to return to the _Main Menu_ |confirm |next "menu"
step
label "beastlasher"
kill 1 Gorian Beast-Lasher##87095 |goto Nagrand D/0 79.1,71.7 |tip You must have the Garn-Tooth Necklace AND kill them with every mount-in-training mount.
|achieve 9706/2
Click here to return to the _Main Menu_ |confirm |next "menu"
step
label "moth"
kill 1 Moth of Wrath##87089 |goto Nagrand D 43.6,69.6 |tip You must have the Garn-Tooth Necklace AND kill them with every mount-in-training mount.
|achieve 9706/3
Click here to return to the _Main Menu_ |confirm |next "menu"
step
label "thundercall"
_Proceed up_ the path |goto Nagrand D/0 83.5,33.1 < 10
_Continue_ up |goto 85.0,34.8 < 10
_Take the left_ path |goto 86.4,37.0 < 10
_Go down_ the path |goto Nagrand D/0 88.6,35.0 < 10
Head _along the side of the mountain_ |goto 89.0,30.3 < 10
kill 1 Thundercall##87102 |goto Nagrand D 90.6,23.6 |tip You must have the Garn-Tooth Necklace AND kill them with every mount-in-training mount.
|achieve 9706/4
Click here to return to the _Main Menu_ |confirm |next "menu"
step
label "ironbore"
kill 1 Ironbore##87090 |goto Nagrand D/0 53.2,77.6 |tip You must have the Garn-Tooth Necklace AND kill them with every mount-in-training mount.
|achieve 9706/5
Click here to return to the _Main Menu_ |confirm |next "menu"
step
label "karak"
kill 1 Karak the Great Hunter##87105 |goto Nagrand D/0 69.6,34.6 |tip You must have the Garn-Tooth Necklace AND kill them with every mount-in-training mount.
|achieve 9706/6
Click here to return to the _Main Menu_ |confirm |next "menu"
step
label "achieve"
|achieve 9706
step
label "end"
Congratulations, you now have the _Stable Master_ title! |only if achieved(9706)
You must have a level 3 Stables to gain this title! |only if default
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Warlords of Draenor Titles\\Draenei Destroyer",[[
description This guide will assist you in achieving the Draenei Destroyer Title.
stickystart "info"
step
#include "H_Garrison_MediumBuilding"
talk Raza'kul##86629
accept Nemesis: Draenei Destroyer##36930
step
Kill Draenei players in PvP across Draenor
Draenei Players slain |q Nemesis: Draenei Destroyer##36930/1
step
#include "H_Garrison_MediumBuilding"
talk Raza'kul##86629
turnin Nemesis: Draenei Destroyer##36930
step "info"
This title is gained by completing the Nemesis: Draenei Destroyer quest from the Gladiator's Sanctum
step
|achieve 9509
step
Congratulations, you now have the _Draenei Destroyer_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Warlords of Draenor Titles\\Dwarfstalker",[[
description This guide will assist you in achieving the Dwarfstalker Title.
stickystart "info"
step
#include "H_Garrison_MediumBuilding"
talk Raza'kul##86629
accept Nemesis: Dwarfstalker##36924
step
Kill Dwarf players in PvP across Draenor
Dwarf Players killed |q Nemesis: Dwarfstalker##36924/1
step
#include "H_Garrison_MediumBuilding"
talk Raza'kul##86629
turnin Nemesis: Dwarfstalker##36924
step "info"
This title is gained by completing the Nemesis: Dwarfstalker quest from the Gladiator's Sanctum
step
|achieve 9510
step
Congratulations, you now have the _Dwarfstalker_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Warlords of Draenor Titles\\Gnomebane",[[
description This guide will assist you in achieving the Gnomebane Title.
stickystart "info"
step
#include "H_Garrison_MediumBuilding"
talk Raza'kul##86629
accept Nemesis: Gnomebane##36926
step
Kill Gnome players in PvP across Draenor
Gnome Players killed |q Nemesis: Gnomebane##36926/1
step
#include "H_Garrison_MediumBuilding"
talk Raza'kul##86629
turnin Nemesis: Gnomebane##36926
step "info"
This title is gained by completing the Nemesis: Gnomebane quest from the Gladiator's Sanctum
step
|achieve 9511
step
Congratulations, you now have the _Gnomebane_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Warlords of Draenor Titles\\Manslayer",[[
description This guide will assist you in achieving the Manslayer Title.
stickystart "info"
step
#include "H_Garrison_MediumBuilding"
talk Raza'kul##86629
accept Nemesis: Manslayer##36921
step
Kill Human players in PvP across Draenor
Human Players killed |q Nemesis: Manslayer##36921/1
step
#include "H_Garrison_MediumBuilding"
talk Raza'kul##86629
turnin Nemesis: Manslayer##36921
step "info"
This title is gained by completing the Nemesis: Manslayer quest from the Gladiator's Sanctum
step
|achieve 9512
step
Congratulations, you now have the _Manslayer_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Warlords of Draenor Titles\\Scourge of the Kaldorei",[[
description This guide will assist you in achieving the Scourge of the Kaldorei Title.
stickystart "info"
step
#include "H_Garrison_MediumBuilding"
talk Raza'kul##86629
accept Nemesis: Scourge of the Kaldorei##36932
step
Kill Night Elf players in PvP across Draenor
Night Elf Players killed |q Nemesis: Scourge of the Kaldorei##36932/1
step
#include "H_Garrison_MediumBuilding"
talk Raza'kul##86629
turnin Nemesis: Scourge of the Kaldorei##36932
step "info"
This title is gained by completing the Nemesis: Scourge of the Kaldorei quest from the Gladiator's Sanctum
step
|achieve 9513
step
Congratulations, you now have the _Scourge of the Kaldorei_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Warlords of Draenor Titles\\Terror of the Tushui",[[
description This guide will assist you in achieving the Terror of the Tushui Title.
stickystart "info"
step
#include "H_Garrison_MediumBuilding"
talk Raza'kul##86629
accept Nemesis: Terror of the Tushui##36934
step
Kill Pandaren players in PvP across Draenor
Pandaren Players killed |q Nemesis: Terror of the Tushui##36934/1
step
#include "H_Garrison_MediumBuilding"
talk Raza'kul##86629
turnin Nemesis: Terror of the Tushui##36934
step "info"
This title is gained by completing the Nemesis: Terror of the Tushui quest from the Gladiator's Sanctum
step
|achieve 9514
step
Congratulations, you now have the _Terror of the Tushui_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Warlords of Draenor Titles\\Worgen Hunter",[[
description This guide will assist you in achieving the Worgen Hunter Title.
stickystart "info"
step
#include "H_Garrison_MediumBuilding"
talk Raza'kul##86629
accept Nemesis: Worgen Hunter##36928
step
Kill Worgen players in PvP across Draenor
Worgen Players killed |q Nemesis: Worgen Hunter##36928/1
step
#include "H_Garrison_MediumBuilding"
talk Raza'kul##86629
turnin Nemesis: Worgen Hunter##36928
step "info"
This title is gained by completing the Nemesis: Worgen Hunter quest from the Gladiator's Sanctum
step
|achieve 9515
step
Congratulations, you now have the _Worgen Hunter_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Warlords of Draenor Titles\\Warlord of Draenor",[[
description This guide will assist you in achieving the Warlord of Draenor Title.
step
This title is gained by completing all of the Nemesis quests from your Gladiator's Sanctum:
You also must complete the quest Fight, Kill, Salute! at the Highmaul Colliseum
|achieve 9508/1
|achieve 9508/2
|achieve 9508/3
|achieve 9508/4
|achieve 9508/5
|achieve 9508/6
|achieve 9508/7
Click here to complete the Fight, Kill, Salute! quest |confirm |next "quest" |only if not completedq(37083)
step
label "quest"
This quest is only available if you have upgraded your Gladiator's Sanctum to Level 3
talk Gharg##87247
accept Call of the Gladiator##37082 |goto Frostwall 55.6,14.2
step
talk Kharg##87311
turnin Call of the Gladiator##37082 |goto Nagrand D/0 33.0,38.6
accept Fight, Kill, Salute!##37083 |goto Nagrand D/0 33.0,38.6
step
talk Kharg##87311
Enter the Coliseum |goto Nagrand D/0 33.0,38.6
Kill players in the Coliseum |tip You can enter for free once per day.
Gladiators Slain |q Fight, Kill, Salute!##37083/1
step
talk Kharg##87311
turnin Fight, Kill, Salute!##37083 |goto Nagrand D/0 33.0,38.6
step
|achieve 9508
step
Congratulations, you now have the _Warlord of Draenor_ title!
]])
