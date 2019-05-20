local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("TitlesAWOD") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Warlords of Draenor Titles\\Architect",[[
description This guide will assist you in achieving the Architect Title.
#include "wod_architect"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Warlords of Draenor Titles\\Artisan",[[
description This guide will assist you in achieving the Artisan Title.
#include "wod_artisan"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Warlords of Draenor Titles\\Jenkins",[[
description This guide will assist you in achieving the Jenkins Title.
#include "wod_jenkins"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Warlords of Draenor Titles\\Empire's Twilight",[[
description This guide will assist you in achieving the Empire's Twilight Title.
#include "wod_empirestwilight"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Warlords of Draenor Titles\\Ironbane",[[
description This guide will assist you in achieving the Ironbane Title.
#include "wod_ironbane"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Warlords of Draenor Titles\\The Indomitable",[[
description This guide will assist you in achieving the Indomitable Title.
#include "wod_indomitable"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Warlords of Draenor Titles\\Talon King/Queen",[[
description This guide will assist you in achieving the Talon King/Queen Title.
#include "wod_talonkingqueen"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Warlords of Draenor Titles\\Stable Master",[[
description This guide will assist you in achieving the Stable Master Title.
step
Routing to Title |next "menu" |only if hasbuilding(67,3)
Routing to End |next "end" |only if default
label "menu"
This title is gained by defeating all mount-in-training targets while carrying the Garn-Tooth Necklace |tip It is found on the ground of your Stables.
Complete mount-in-training quests from the Stables with the Garn-Tooth Necklace:
_Click_ a section below to complete the achievement:
Maimclaw |achieve 9540/1 |confirm |next "maimclaw"
Beast-Lasher |achieve 9540/2 |confirm |next "beastlasher"
Moth of Wrath |achieve 9540/3 |confirm |next "moth"
Thundercall |achieve 9540/4 |confirm |next "thundercall"
Ironbore |achieve 9540/5 |confirm |next "ironbore"
Karak |achieve 9540/6 |confirm |next "karak"
|next "achieve"
step
label "maimclaw"
kill 1 Maimclaw##87174 |goto Nagrand D/0 63.8,80.8 |tip You must have the Garn-Tooth Necklace AND kill them with every mount-in-training mount.
|achieve 9540/1
Click here to return to the _Main Menu_ |confirm |next "menu"
step
label "beastlasher"
kill 1 Gorian Beast-Lasher##87095 |goto Nagrand D/0 79.1,71.7 |tip You must have the Garn-Tooth Necklace AND kill them with every mount-in-training mount.
|achieve 9540/2
Click here to return to the _Main Menu_ |confirm |next "menu"
step
label "moth"
kill 1 Moth of Wrath##87089 |goto Nagrand D 43.6,69.6 |tip You must have the Garn-Tooth Necklace AND kill them with every mount-in-training mount.
|achieve 9540/3
Click here to return to the _Main Menu_ |confirm |next "menu"
step
label "thundercall"
_Proceed up_ the path |goto Nagrand D/0 83.5,33.1 < 10
_Continue_ up |goto 85.0,34.8 < 10
_Take the left_ path |goto 86.4,37.0 < 10
_Go down_ the path |goto Nagrand D/0 88.6,35.0 < 10
Head _along the side of the mountain_ |goto 89.0,30.3 < 10
kill 1 Thundercall##87102 |goto Nagrand D 90.6,23.6 |tip You must have the Garn-Tooth Necklace AND kill them with every mount-in-training mount.
|achieve 9540/4
Click here to return to the _Main Menu_ |confirm |next "menu"
step
label "ironbore"
kill 1 Ironbore##87090 |goto Nagrand D/0 53.2,77.6 |tip You must have the Garn-Tooth Necklace AND kill them with every mount-in-training mount.
|achieve 9540/5
Click here to return to the _Main Menu_ |confirm |next "menu"
step
label "karak"
kill 1 Karak the Great Hunter##87105 |goto Nagrand D/0 69.6,34.6 |tip You must have the Garn-Tooth Necklace AND kill them with every mount-in-training mount.
|achieve 9540/6
Click here to return to the _Main Menu_ |confirm |next "menu"
step
label "achieve"
|achieve 9540
step
Congratulations, you now have the _Stable Master_ title! |only if achieved(9540)
You must have a level 3 Stables to gain this title! |only if default
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Warlords of Draenor Titles\\Slayer of Sin'dorei",[[
description This guide will assist you in achieving the Slayer of Sin'dorei Title.
stickystart "info"
step
#include "A_Garrison_MediumBuilding"
talk Kuros##86677
accept Nemesis: Slayer of Sin'dorei##36958
step
Kill Blood Elf players in PvP across Draenor
Blood Elf Players slain |q Nemesis: Slayer of Sin'dorei##36958/1
step
#include "A_Garrison_MediumBuilding"
talk Kuros##86677
turnin Nemesis: Slayer of Sin'dorei##36958
step "info"
This title is gained by completing the Nemesis: Slayer of Sin'dorei quest from the Gladiator's Sanctum
step
|achieve 9516
step
Congratulations, you now have the _Slayer of Sin'dorei_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Warlords of Draenor Titles\\The Death Stalker",[[
description This guide will assist you in achieving The Death Stalker Title.
stickystart "info"
step
#include "A_Garrison_MediumBuilding"
talk Kuros##86677
accept Nemesis: Death Stalker##36960
step
Kill Forsaken players in PvP across Draenor
Forsaken Players slain |q Nemesis: Death Stalker##36960/1
step
#include "A_Garrison_MediumBuilding"
talk Kuros##86677
turnin Nemesis: Death Stalker##36960
step "info"
This title is gained by completing the Nemesis: Death Stalker quest from the Gladiator's Sanctum
step
|achieve 9517
step
Congratulations, you now have _The Death Stalker_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Warlords of Draenor Titles\\Killer of Kezan",[[
description This guide will assist you in achieving the Killer of Kezan Title.
stickystart "info"
step
#include "A_Garrison_MediumBuilding"
talk Kuros##86677
accept Nemesis: Killer of Kezan##36970
step
Kill Goblin players in PvP across Draenor
Goblin Players slain |q Nemesis: Killer of Kezan##36970/1
step
#include "A_Garrison_MediumBuilding"
talk Kuros##86677
turnin Nemesis: Killer of Kezan##36970
step "info"
This title is gained by completing the Nemesis: Killer of Kezan quest from the Gladiator's Sanctum
step
|achieve 9518
step
Congratulations, you now have the _Killer of Kezan_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Warlords of Draenor Titles\\Orcslayer",[[
description This guide will assist you in achieving the Orcslayer Title.
stickystart "info"
step
#include "A_Garrison_MediumBuilding"
talk Kuros##86677
accept Nemesis: Orcslayer##36964
step
Kill Orc players in PvP across Draenor
Orc Players slain |q Nemesis: Orcslayer##36964/1
step
#include "A_Garrison_MediumBuilding"
talk Kuros##86677
turnin Nemesis: Orcslayer##36964
step "info"
This title is gained by completing the Nemesis: Orcslayer quest from the Gladiator's Sanctum
step
|achieve 9519
step
Congratulations, you now have the _Orcslayer_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Warlords of Draenor Titles\\Huojin's Fall",[[
description This guide will assist you in achieving the Huojin's Fall Title.
stickystart "info"
step
#include "A_Garrison_MediumBuilding"
talk Kuros##86677
accept Nemesis: Huojin's Fall##36968
step
Kill Pandaren players in PvP across Draenor
Pandaren Players slain |q Nemesis: Huojin's Fall##36968/1
step
#include "A_Garrison_MediumBuilding"
talk Kuros##86677
turnin Nemesis: Huojin's Fall##36968
step "info"
This title is gained by completing the Nemesis: Huojin's Fall quest from the Gladiator's Sanctum
step
|achieve 9520
step
Congratulations, you now have the _Huojin's Fall_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Warlords of Draenor Titles\\The Butcher",[[
description This guide will assist you in achieving The Butcher Title.
stickystart "info"
step
#include "A_Garrison_MediumBuilding"
talk Kuros##86677
accept Nemesis: The Butcher##36962
step
Kill Tauren players in PvP across Draenor
Tauren Players slain |q Nemesis: The Butcher##36962/1
step
#include "A_Garrison_MediumBuilding"
talk Kuros##86677
turnin Nemesis: The Butcher##36962
step "info"
This title is gained by completing the Nemesis: The Butcher quest from the Gladiator's Sanctum
step
|achieve 9521
step
Congratulations, you now have _The Butcher_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Warlords of Draenor Titles\\Troll Hunter",[[
description This guide will assist you in achieving the Troll Hunter Title.
stickystart "info"
step
#include "A_Garrison_MediumBuilding"
talk Kuros##86677
accept Nemesis: Troll Hunter##36966
step
Kill Troll players in PvP across Draenor
Troll Players slain |q Nemesis: Troll Hunter##36966/1
step
#include "A_Garrison_MediumBuilding"
talk Kuros##86677
turnin Nemesis: Troll Hunter##36966
step "info"
This title is gained by completing the Nemesis: Troll Hunter quest from the Gladiator's Sanctum
step
|achieve 9522
step
Congratulations, you now have the _Troll Hunter_ title!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Warlords of Draenor Titles\\Warlord of Draenor",[[
description This guide will assist you in achieving the Warlord of Draenor Title.
step
This title is gained by completing all of the Nemesis quests from your Gladiator's Sanctum:
You also must complete the quest Fight, Kill, Salute! at the Highmaul Colliseum
|achieve 9738/1
|achieve 9738/2
|achieve 9738/3
|achieve 9738/4
|achieve 9738/5
|achieve 9738/6
|achieve 9738/7
Click here to complete the Fight, Kill, Salute! quest |confirm |next "quest" |only if not completedq(37083)
step
label "quest"
This quest is only available if you have upgraded your Gladiator's Sanctum to Level 3
talk Gharg##87247
accept Call of the Gladiator##37082 |goto Lunarfall 57.6,79.6
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
|achieve 9738
step
Congratulations, you now have the _Warlord of Draenor_ title!
]])
