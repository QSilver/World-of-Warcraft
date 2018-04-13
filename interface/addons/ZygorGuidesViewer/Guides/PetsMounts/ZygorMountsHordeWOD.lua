local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsMountsHWOD") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Domesticated Razorback",[[
description This guide will help you acquire the Domesticated Razorback.
model 59738
condition end hasmount(171634)
step
This mount requires you to be _Exalted_ with the _Steamwheedle "Preservation" Society_
_Click here_ for the reputation guide |confirm |next "Zygor's Horde Reputations Guides\\Warlords of Draenor\\Steamwheedle Preservation Society"
|confirm
step
talk Gazrix Gearlock##88482 |goto Stormshield 43.2,77.4
buy Domesticated Razorback##116672
learnmount Domesticated Razorback##171634 |use Domesticated Razorback##116672
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Giant Coldsnout",[[
description This guide will help you acquire the Giant Coldsnout.
model 59737
condition end hasmount(171633)
step
This mount is one of four that will drop randomly from the _Invader's Forgotten Treasure_ reward.
talk Blood Guard Reejah##88395
accept Gold Victory##35788 |goto Frostwall 40.4,56.2
step
Get a _gold score_ from a Garrison invasion.
talk Blood Guard Reejah##88395
turnin Gold Victory##35788 |goto Frostwall 40.4,56.2
step
Open the _Invader's Forgotten Treasure_. |use Invader's Forgotten Treasure##116980
collect Giant Coldsnout##116673
learnmount Giant Coldsnout##171633 |use Giant Coldsnout##116673
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Great Greytusk",[[
description This guide will help you acquire the Great Greytusk.
model 59736
condition end hasmount(171636)
step
_Click_ Gorok's known spawn locations below for your chance at this rare mount
_Press_ "I" on your keyboard, _select_ "Premade Groups", and _then_ "Questing" to start or join a farming raid to increase your chance of success
_Click_ here [Frostfire Ridge 58.4,19.0]
_Click_ here [Frostfire Ridge 52.0,50.6]
_Click_ here [Frostfire Ridge 65.0,52.6]
_Click_ here [Frostfire Ridge 63.6,79.8]
_Click_ here [Frostfire Ridge 22.4,66.6]
kill Gorok##50992
collect Great Greytusk##116674
learnmount Great Greytusk##171636 |use Great Greytusk##116674
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Blacksteel Battleboar",[[
description This guide will help you acquire the Blacksteel Battleboar.
model 59349
condition end hasmount(171627)
step
This mount requires the Guild achievement _Guild Glory of the Draenor Raider_
_Complete the Guild Glory of the Draenor Raider achievement_ |achieve 9669
step
Blacksteel Battleboar should be _delivered via in game mail_
collect Blacksteel Battleboar##116666
learnmount Blacksteel Battleboar##171627 |use Blacksteel Battleboar##116666
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Frostplains Battleboar",[[
description This guide will help you acquire the Frostplains Battleboar.
model 59344
condition end hasmount(171632)
step
This mount requires the achievement _Glory of the Draenor Hero_
_Complete the Glory of the Draenor Hero achievement_ |achieve 9396
step
Frostplains Battleboar should be _delivered via in game mail_
collect Frostplains Battleboar##116670
learnmount Frostplains Battleboar##171632 |use Frostplains Battleboar##116670
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Bloodhoof Bull",[[
description This guide will help you acquire the Bloodhoof Bull.
model 59323
condition end hasmount(171620)
step
_Click_ Nakk the Thunderer's known spawn locations below for your chance at this rare mount
_Press_ "I" on your keyboard, _select_ "Premade Groups", and _then_ "Questing" to start or join a farming raid to increase your chance of success
_Click_ here [Nagrand D 62.8,15.0]
kill Nakk the Thunderer##50990
collect Bloodhoof Bull##116659
learnmount Bloodhoof Bull##171620 |use Bloodhoof Bull##116659
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Armored Frostboar",[[
description This guide will help you acquire the Armored Frostboar.
model 59347
condition end hasmount(171629)
step
This mount requires the achievement _Advanced Husbandry_
_Please refer_ to our Achievement Guide to assist with this mount
_Complete the _Advanced Husbandry achievement_ |achieve 9705
step
Armored Frostboar should be _delivered via in game mail_
collect Armored Frostboar##116668
learnmount Armored Frostboar##171629 |use Armored Frostboar##116668
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Mosshide Riverwallow",[[
description This guide will help you acquire the Mosshide Riverwallow.
model 59745
condition end hasmount(171825)
step
This mount costs 50,000 Gold and 5,000 Apexis Crystals
talk Dawn-Seeker Alkset##86382 |goto Warspear 65.6,64.2
buy Mosshide Riverwallow##116768
learnmount Mosshide Riverwallow##171825 |use Mosshide Riverwallow##116768
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Sapphire Riverbeast",[[
description This guide will help you acquire the Sapphire Riverbeast.
model 59744
condition end hasmount(171824)
step
_Click_ Silthide's known spawn locations below for your chance at this rare mount
_Press_ "I" on your keyboard, _select_ "Premade Groups", and _then_ "Questing" to start or join a farming raid to increase your chance of success
_Click_ here [Talador 62.0,32.4]
_Click_ here [Talador 67.8,58.2]
kill Silthide##51015
collect Sapphire Riverbeast##116767
learnmount Sapphire Riverbeast##171824 |use Sapphire Riverbeast##116767
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Dustmane Direwolf",[[
description This guide will help you acquire the Dustmane Direwolf.
model 59762
condition end hasmount(171844)
step
This pet _requires_ you to have level 600 Leatherworking
_Click here_ to use Skinning to gather the Raw Beast Hide yourself |confirm |next "farml"
_Click here_ to be taken to the Auctioneer to purchase it |confirm |next "buyl"
step
label "farml"
collect 2000 Raw Beast Hide##110609
map Frostfire Ridge
path follow loose; loop; ants curved
path	21.8,35.6	13.0,43.8	14.6,49.8
path	23.0,65.4	44.0,62.2	50.8,54.6
path	47.6,49.8	26.8,46.0
_Kill_ any beasts you see on this path for skinning
|next "nextl"
step
label "buyl"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy 2000 Raw Beast Hide##110609
step
label "nextl"
_Click here_ to use Herbalism to gather the Gorgrond Flytrap yourself |confirm |next "farm"
_Click here_ to be taken to the Auctioneer to purchase it |confirm |next "buy"
step
label "farm"
collect 9000 Gorgrond Flytrap Ichor##109626
map Spires of Arak
path follow loose; loop; ants curved
path	31.9,26.3	30.7,33.3	37.6,45.6
path	42.6,52.3	46.6,49.2	51.9,59.7
path	52.0,71.9	54.2,79.8	56.3,94.1
path	60.4,70.1	65.8,53.9	57.0,47.4
path	54.0,38.8	45.0,36.8	41.2,26.0
path	49.5,22.9	52.6,33.3	63.9,38.1
path	66.5,36.1	67.9,46.1
step
_Create_ 1000 Gorgrond Flytrap##109126 |use Gorgrond Flytrap Ichor##109626
collect 1000 Gorgrond Flytrap##109126
next "done"
step
label "buy"
talk Auctioneer Drezmit##44866 |goto Orgrimmar 54.1,73.4
buy 1000 Gorgrond Flytrap##109126
step
label "done"
_Create_ 100 Burnished Leather
collect 100 Burnished Leather##110611
collect 20 Sorcerous Air##113264
step
_Create_ 1 Riding Harness##108883
learnmount Dustmane Direwolf##171844 |use Riding Harness##108883
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Garn Nighthowl",[[
description This guide will help you acquire the Garn Nighthowl.
model 54114
condition end hasmount(171851)
step
_Click here_ to gather the Garn Nighthowl mount yourself |confirm |next "farm"
_Click here_ to be taken to the Auctioneer to purchase it |confirm |next "buy"
step
label "farm"
_Follow_ Nok-Karosh's known patrol location below for your chance at this rare mount
_Press_ "I" on your keyboard, _select_ "Premade Groups", and _then_ "Questing" to start or join a farming raid to increase your chance of success
map Frostfire Ridge
path follow loose; loop; ants curved
path	16.6,39.2	12.8,47.2	15.4,52.6
path	26.0,45.6	19.6,39.4
kill Nok-Karosh##81001 |goto Talador/0 79.4,58.4
collect Garn Nighthowl##116794
|next "done"
step
label "buy"
talk Regla Brighthorn##86635 |goto Warspear 54.2,27.0
buy 1 Garn Nighthowl##116794
step
label "done"
learnmount Garn Nighthowl##171851 |use Garn Nighthowl##116794
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Smokey Direwolf",[[
description This guide will help you acquire the Smokey Direwolf.
model 59760
condition end hasmount(171633)
step
.' This mount is one of four that will drop randomly from the _Invader's Forgotten Treasure_ reward.
.talk 88395
..accept 35788 |goto Frostwall 40.4,56.2
step
.' Get a _gold score_ from a Garrison invasion.
.talk 88395
..turnin 35788 |goto Frostwall 40.4,56.2
step
.' Open the _Invader's Forgotten Treasure_. |use Invader's Forgotten Treasure##116980
.collect Smokey Direwolf##116786
..learnmount Smokey Direwolf##171843 |use Smokey Direwolf##116786
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Armored Frostwolf",[[
description This guide will help you acquire the Armored Frostwolf.
model 59753
condition end hasmount(171838)
step
.' This mount requires the achievement _The Stable Master_.
.' _Complete the _The Stable Master achievement_. |achieve 9706
step
.' Armored Frostwolf should be _delivered via in game mail_.
.collect Armored Frostwolf##116781
..learnmount Armored Frostwolf##171838 |use Armored Frostwolf##116781
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Garn Steelmaw",[[
description This guide will help you acquire the Garn Steelmaw.
model 59756
condition end hasmount(171836)
step
.' This mount is one of four that will drop randomly from the _Invader's Forgotten Treasure_ reward.
.talk 88395
..accept 35788 |goto Frostwall 40.4,56.2
step
.' Get a _gold score_ from a Garrison invasion.
.talk 88395
..turnin 35788 |goto Frostwall 40.4,56.2
step
.' Open the _Invader's Forgotten Treasure_. |use Invader's Forgotten Treasure##116980
.collect Garn Steelmaw##116779
..learnmount Garn Steelmaw##171836 |use Garn Steelmaw##116779
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Shadowmane Charger",[[
description This guide will help you acquire the Shadowmane Charger.
model 59363
condition end hasmount(171829)
step
.' This mount requires you to be _Exalted_ with the _Arakkoa Outcasts_.
.' _Click here_ for the reputation guide. |confirm |next "Zygor's Horde Reputations Guides\\Warlords of Draenor\\Arakkoa Outcasts"
|confirm
step
.talk 86037 |goto Warspear 54.0,61.0
.buy Shadowmane Charger##116772
..learnmount Shadowmane Charger##171829 |use Shadowmane Charger##116772
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Swift Breezestrider",[[
description This guide will help you acquire the Swift Breezestrider.
model 59364
condition end hasmount(171830)
step
_Click_ Pathrunner's known spawn locations below for your chance at this rare mount
_Press_ "I" on your keyboard, _select_ "Premade Groups", and _then_ "Questing" to start or join a farming raid to increase your chance of success
_Click_ here [Shadowmoon Valley D 43.0,31.6]
_Click_ here [Shadowmoon Valley D 39.4,36.6]
_Click_ here [Shadowmoon Valley D 53.8,30.4]
_Click_ here [Shadowmoon Valley D 56.2,52.4]
_Click_ here [Shadowmoon Valley D 44.8,43.4]
_Click_ here [Shadowmoon Valley D 46.0,67.8]
kill Pathrunner##50883
collect Swift Breezestrider##116773
learnmount Swift Breezestrider##171830 |use Swift Breezestrider##116773
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Core Hound",[[
description This guide will help you acquire the Core Hound.
model 58772
condition end hasmount(170347)
step
.' This mount requires the achievement _Boldly, You Sought the Power of Ragnaros_.
.' This Achievement can only be completed _during the 10th Anniversary event for World of Warcraft_.
.' _Complete the Boldly, You Sought the Power of Ragnaros achievement_. |achieve 9550
step
.' Armoured Frostwolf should be _delivered via in game mail_.
.collect Core Hound Chain##115484
..learnmount Core Hound##170347 |use Core Hound Chain##115484
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Solar Spirehawk",[[
description This guide will help you acquire the Solar Spirehawk.
model 59751
condition end hasmount(171828)
step
.' This mount requires you to kill _Rukhmar_, the _Spires of Arak world boss_.
.' This _will require a group_ to complete.
|confirm
step
.kill Rukhmar##87493 |goto Spires of Arak 40.0,43.0
.collect Solar Spirehawk##115484
..learnmount Solar Spirehawk##171828 |use Solar Spirehawk##116771
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Mottled Meadowstomper",[[
description This guide will help you acquire the Mottled Meadowstomper.
model 59339
condition end hasmount(171622)
step
_Click_ Luk'hok's known spawn locations below for your chance at this rare mount
_Press_ "I" on your keyboard, _select_ "Premade Groups", and _then_ "Questing" to start or join a farming raid to increase your chance of success
_Click_ here [Nagrand D 76.0,30.6]
_Click_ here [Nagrand D 66.6,44.0]
_Click_ here [Nagrand D 72.2,53.6]
_Click_ here [Nagrand D 79.6,55.6]
_Click_ here [Nagrand D 84.6,63.8]
kill Luk'hok##50981
collect Mottled Meadowstomper##116661
learnmount Mottled Meadowstomper##171622 |use Mottled Meadowstomper##116661
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Shadowhide Pearltusk",[[
description This guide will help you acquire the Shadowhide Pearltusk.
model 59341
condition end hasmount(171624)
step
.' This mount is one of four that will drop randomly from the _Invader's Forgotten Treasure_ reward.
.talk 88395
..accept 35788 |goto Frostwall 40.4,56.2
step
.' Get a _gold score_ from a Garrison invasion.
.talk 88395
..turnin 35788 |goto Frostwall 40.4,56.2
step
.' Open the _Invader's Forgotten Treasure_. |use Invader's Forgotten Treasure##116980
.collect Shadowhide Pearltusk##116663
..learnmount Shadowhide Pearltusk##171624 |use Shadowhide Pearltusk##116663
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Flying Mounts\\Grinning Reaver",[[
description This guide will help you acquire the Grinning Reaver.
model 55907
condition end hasmount(163025)
step
.' This mount can only be purchased in the official _Blizzard Store_.
.' After purchasing, check your _in-game mailbox_.
|confirm
step
.collect Grinning Reaver##112327
..learnmount Grinning Reaver##163025 |use Grinning Reaver##112327
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Gorestrider Gronnling",[[
description This guide will help you acquire the Gorestrider Gronnling.
model 59159
condition end hasmount(171436)
step
.' This mount requires the achievement _Glory of the Draenor Raider_.
.' _Complete the Glory of the Draenor Raider achievement_. |achieve 8985
step
.' Gorestrider Gronnling should be _delivered via in game mail_.
.collect Gorestrider Gronnling##116383
..learnmount Gorestrider Gronnling##171436 |use Gorestrider Gronnling##116383
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Sunhide Gronnling",[[
description This guide will help you acquire the Sunhide Gronnling.
model 60578
condition end hasmount(171849)
step
_Click_ Poundfist's known spawn locations below for your chance at this rare mount
_Press_ "I" on your keyboard, _select_ "Premade Groups", and _then_ "Questing" to start or join a farming raid to increase your chance of success
_Click_ here [Gorgrond 42.0,25.0]
_Click_ here [Gorgrond 51.4,43.1]
_Click_ here [Gorgrond 45.4,47.5]
_Click_ here [Gorgrond 47.0,54.1]
_Click_ here [Gorgrond 43.2,55.5]
kill Poundfist##50985
collect Sunhide Gronnling##116792
learnmount Sunhide Gronnling##171849 |use Sunhide Gronnling##116792
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Challenger's War Yeti",[[
description This guide will help you acquire the Challenger's War Yeti.
model 60577
condition end hasmount(171848)
step
.' This mount requires the achievement _Challenge Warlord: Silver_.
.' _Complete the Challenge Warlord: Silver achievement_. |achieve 8898
step
.' Challenger's War Yeti should be _delivered via in game mail_.
.collect Challenger's War Yeti##116791
..learnmount Challenger's War Yeti##171848 |use Challenger's War Yeti##116791
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Flying Mounts\\Creeping Carpet",[[
description This guide will help you acquire the Creeping Carpet.
model 46453
condition end hasmount(169952)
step
.' This pet requires you to have _level 600 Tailoring_.
.' Click here to gather the _Sumptuous Fur_ yourself. |confirm |next "farml"
.' Click here to be _taken to the Auctioneer_ to purchase it. |confirm |next "buyl"
step
label "farml"
.collect 2000 Sumptuous Fur##111557
map Spires of Arak
path follow loose; loop; ants curved
path	45.8,66.6	46.4,69.6	47.8,74.0
path	49.6,76.0	52.4,77.4	47.8,69.6
path	46.6,68.0
.' Kill _any Bloodmane mobs_ for looting the fur.
|next "nextl"
step
label "buyl"
.talk 44866 |goto Orgrimmar 54.1,73.4
.buy 2000 Sumptuous Fur##111557
step
label "nextl"
.' Click here to use Herbalism to gather the _Gorgrond Flytrap_ yourself. |confirm |next "farm"
.' Click here to be taken to the Auctioneer to purchase it. |confirm |next "buy"
step
label "farm"
.collect 9000 Gorgrond Flytrap Ichor##109626
map Spires of Arak
path follow loose; loop; ants curved
path	31.9,26.3	30.7,33.3	37.6,45.6
path	42.6,52.3	46.6,49.2	51.9,59.7
path	52.0,71.9	54.2,79.8	56.3,94.1
path	60.4,70.1	65.8,53.9	57.0,47.4
path	54.0,38.8	45.0,36.8	41.2,26.0
path	49.5,22.9	52.6,33.3	63.9,38.1
path	66.5,36.1	67.9,46.1
step
.' Create 1000 Gorgrond Flytrap##109126 |use Gorgrond Flytrap Ichor##109626
.collect 1000 Gorgrond Flytrap##109126
|next "done"
step
label "buy"
.talk 44866 |goto Orgrimmar 54.1,73.4
.buy 1000 Gorgrond Flytrap##109126
step
label "done"
.' Create 100 _Hexweave Cloth_.
.collect 100 Hexweave Cloth##111556
.collect 20 Sorcerous Air##113264
step
.' Create 1 Creeping Carpet##115363
..learnmount Creeping Carpet##169952 |use Creeping Carpet##115363
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Crimson Water Strider",[[
description This guide will help you acquire the Crimson Water Strider.
model 43713
condition end hasmount(127271)
step
.' This mount requires you to be _Honored_ with the _Nat Pagle_.
.' You must also have a _700 fishing skill_, and a _level 3 Fishing Shack_.
|confirm
step
.talk 85984 |goto Frostwall/0 38.2,75.6
.buy Reins of the Crimson Water Strider##87791
..learnmount Crimson Water Strider##127271 |use Reins of the Crimson Water Strider##87791
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Felfire Hawk",[[
description This guide will help you acquire the Felfire Hawk.
model 38032
condition end hasmount(97501)
step
.' This mount requires the achievement _Mountacular_.
.' _Complete the Mountacular achievement_. |achieve 9599
step
.' Felfire Hawk should be _delivered via in game mail_.
.collect Felfire Hawk##69226
..learnmount Felfire Hawk##97501 |use Felfire Hawk##69226
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Reins of the Emerald Drake",[[
description This guide will help you acquire the Reins of the Emerald Drake.
model 25834
condition end hasmount(175700)
step
.' This mount requires the achievement _Awake the Drakes_.
.' _Complete the Awake the Drakes achievement_. |achieve 9713
step
.' Reins of the Emerald Drake should be _delivered via in game mail_.
.collect Reins of the Emerald Drake##118676
..learnmount Reins of the Emerald Drake##175700 |use Reins of the Emerald Drake##118676
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Swift Frostwolf",[[
description This guide will help you acquire the Swift Frostwolf.
model 59759
condition end hasmount(171842)
step
.' This mount is _Horde only_ and requires you to be _Exalted_ with the _Frostwolf Orcs_.
.' _Click here_ for the reputation guide. |confirm |next "Zygor's Horde Reputations Guides\\Warlords of Draenor\\Frostwolf Orcs"
|confirm
step
.talk 86036 |goto Warspear 53.6,62.6
.buy Swift Frostwolf##116785
..learnmount Swift Frostwolf##171842 |use Swift Frostwolf##116785
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Ironside Warwolf",[[
description This guide will help you acquire the Ironside Warwolf.
model 59754
condition end hasmount(171839)
step
.' This mount is _Horde only_ and requires you to be _Exalted_ with the _Laughing Skull Orcs_.
.' _Click here_ for the reputation guide. |confirm |next "Zygor's Horde Reputations Guides\\Warlords of Draenor\\Laughing Skull Orcs"
|confirm
step
.talk 86698 |goto Frostwall 58.6,26.6
.buy Ironside Warwolf##116782
..learnmount Ironside Warwolf##171839 |use Ironside Warwolf##116782
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Breezestrider Stallion",[[
description This guide will help you acquire the Breezestrider Stallion.
model 59366
condition end hasmount(171832)
step
.' This mount is _Horde only_ and requires you to be _Exalted_ with the _Vol'jin's Spear_.
.' _Click here_ for the reputation guide. |confirm |next "Zygor's Horde Reputations Guides\\Warlords of Draenor\\Vol'jin's Spear"
|confirm
step
.talk 85115 |goto Warspear 47.0,21.4
.buy Breezestrider Stallion##116775
..learnmount Breezestrider Stallion##171832 |use Breezestrider Stallion##116775
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Vicious War Raptor",[[
description This guide will help you acquire the Vicious War Raptor.
model 60575
condition end hasmount(73151)
step
.' This mount is _Horde only_ and requires the achievement _Primal Combatant_.
.' _Complete the Primal Combatant achievement_. |achieve 9236
step
.talk 85115 |goto Orgrimmar 41.8,73.0
.buy Vicious War Raptor##116778
..learnmount Vicious War Raptor##171835 |use Vicious War Raptor##116778
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Trained Rocktusk",[[
description This guide will help you acquire the Trained Rocktusk.
model 59735
condition end hasmount(171637)
step
.' This mount requires a _level 1 or higher Stables_ in your Garrison.
.' Each mount requires _capturing a wild mount with a lasso_ and then _completing several daily quests with it_ before it is finally learned.
.' Quests involve _killing monsters around Draenor while mounted_ on your mount-in-training.
|confirm
step
.talk 86979
..accept 36944 |goto Frostwall 58.81,48.79
step
.' Use your _Boar Lasso_ on Young Rocktusks in the area. |use Boar Lasso##118288 |q Besting a Boar##36944/1 |goto Gorgrond/0 43.9,37.3
step
.talk 86979
..turnin 36944 |goto Frostwall 58.81,48.79
step
.talk 86979 |goto Frostwall 58.81,48.79
.' You will only be able to _complete 1 of the following quests_ per day
..accept 37032 |or |only if not completedq(37032)
..accept 37033 |or |only if not completedq(37033)
..accept 37034 |or |only if not completedq(37034)
..accept 37035 |or |only if not completedq(37035)
..accept 37036 |or |only if not completedq(37036)
..accept 37039 |or |only if not completedq(37039)
..accept 37037 |or |only if not completedq(37037)
..accept 37040 |or |only if not completedq(37040)
..accept 37041 |or |only if not completedq(37041)
..accept 37038 |or |only if not completedq(37038)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Riplash##87084 |q Boar Training: Riplash##37032/1 |goto Gorgrond/0 50.2,38.4
|only if havequest(37032)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Gezz'ran##87086 |q Boar Training: Gezz'ran##37033/1 |goto Talador/0 31.5,54.9
|only if havequest(37033)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Bulbapore##87087 |q Boar Training: Bulbapore##37034/1 |goto Spires of Arak/0 66.3,75.3
|only if havequest(37034)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Gorian Beast-Lasher##87095 |q Boar Training: Cruel Ogres##37035/1 |goto Nagrand D/0 79.2,71.3
|only if havequest(37035)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Darkwing Roc##87088 |q Boar Training: Darkwing Roc##37036/1 |goto Nagrand D/0 68.4,20.3
|only if havequest(37036)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Ironbore##87090 |q Boar Training: Ironbore##37039/1 |goto Nagrand D/0 53.1,77.4
|only if havequest(37039)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Moth of Wrath##87089 |q Boar Training: Moth of Wrath##37037/1 |goto Nagrand D/0 43.6,69.3
|only if havequest(37037)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Karak the Great Hunter##87105 |q Boar Training: Orc Hunters##37040/1 |goto Nagrand D/0 69.6,34.6
|only if havequest(37040)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Maimclaw##87107 |q Boar Training: The Garn##37041/1 |goto Nagrand D/0 63.8,80.9
|only if havequest(37041)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Thundercall##87102 |q Boar Training: Thundercall##37038/1 |goto Nagrand D/0 90.6,23.6
|only if havequest(37038)
step
.talk 86979 |goto Frostwall 58.81,48.79
.' You will only be able to _complete 1 of the following quests_ per day
..turnin 37032 |only if havequest(37032)
..turnin 37033 |only if havequest(37033)
..turnin 37034 |only if havequest(37034)
..turnin 37035 |only if havequest(37035)
..turnin 37036 |only if havequest(37036)
..turnin 37039 |only if havequest(37039)
..turnin 37037 |only if havequest(37037)
..turnin 37040 |only if havequest(37040)
..turnin 37041 |only if havequest(37041)
..turnin 37038 |only if havequest(37038)
step
.collect Trained Rocktusk##116675
..learnmount Trained Rocktusk##171637 |use Trained Rocktusk##116675
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Trained Silverpelt",[[
description This guide will help you acquire the Trained Silverpelt.
model 59365
condition end hasmount(171831)
step
.' This mount requires a _level 1 or higher Stables_ in your Garrison.
.' Each mount requires _capturing a wild mount with a lasso_ and then _completing several daily quests with it_ before it is finally learned.
.' Quests involve _killing monsters around Draenor while mounted_ on your mount-in-training.
|confirm
step
.talk 87242
..accept 36917 |goto Frostwall 59.15,50.58
step
.' Use your _Talbuk Lasso_ on Young Silverpelts in the area. |use Talbuk Lasso##118284 |q Taming a Talbuk##36917/1 |goto Shadowmoon Valley D/0 50.3,30.1
step
.talk 87242
..turnin 36917 |goto Frostwall 59.15,50.58
step
.talk 87242 |goto Frostwall 59.15,50.58
.' You will only be able to _complete 1 of the following quests_ per day
..accept 37095 |or |only if not completedq(37095)
..accept 37096 |or |only if not completedq(37096)
..accept 37097 |or |only if not completedq(37097)
..accept 37098 |or |only if not completedq(37098)
..accept 37099 |or |only if not completedq(37099)
..accept 37102 |or |only if not completedq(37102)
..accept 37100 |or |only if not completedq(37100)
..accept 37103 |or |only if not completedq(37103)
..accept 37104 |or |only if not completedq(37104)
..accept 37101 |or |only if not completedq(37101)
..accept 37093 |or |only if not completedq(37093)
..accept 37094 |or |only if not completedq(37094)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Riplash##87084 |q Talbuk Training: Riplash##37095/1 |goto Gorgrond/0 50.2,38.4
|only if havequest(37095)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Gezz'ran##87086 |q Talbuk Training: Gezz'ran##37096/1 |goto Talador/0 31.5,54.9
|only if havequest(37096)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Bulbapore##87087 |q Talbuk Training: Bulbapore##37097/1 |goto Spires of Arak/0 66.3,75.3
|only if havequest(37097)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Gorian Beast-Lasher##87095 |q Talbuk Training: Cruel Ogres##37098/1 |goto Nagrand D/0 79.2,71.3
|only if havequest(37098)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Darkwing Roc##87088 |q Talbuk Training: Darkwing Roc##37099/1 |goto Nagrand D/0 68.4,20.3
|only if havequest(37099)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Ironbore##87090 |q Talbuk Training: Ironbore##37102/1 |goto Nagrand D/0 53.1,77.4
|only if havequest(37102)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Moth of Wrath##87089 |q Talbuk Training: Moth of Wrath##37100/1 |goto Nagrand D/0 43.6,69.3
|only if havequest(37100)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Karak the Great Hunter##87105 |q Talbuk Training: Orc Hunters##37103/1 |goto Nagrand D/0 69.6,34.6
|only if havequest(37103)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Maimclaw##87107 |q Talbuk Training: The Garn##37104/1 |goto Nagrand D/0 63.8,80.9
|only if havequest(37104)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Thundercall##87102 |q Talbuk Training: Thundercall##37101/1 |goto Nagrand D/0 90.6,23.6
|only if havequest(37101)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Great-Tusk##87083 |q Talbuk Training: Great-Tusk##37093/1 |goto Shadowmoon Valley D/0 62.7,39.1
|only if havequest(37093)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Rakkiri##87085 |q Talbuk Training: Rakkiri##37094/1 |goto Frostfire Ridge/0 72.7,70.0
|only if havequest(37094)
step
.talk 87242 |goto Frostwall 59.15,50.58
.' You will only be able to _complete 1 of the following quests_ per day
..turnin 37095 |only if havequest(37095)
..turnin 37096 |only if havequest(37096)
..turnin 37097 |only if havequest(37097)
..turnin 37098 |only if havequest(37098)
..turnin 37099 |only if havequest(37099)
..turnin 37102 |only if havequest(37102)
..turnin 37100 |only if havequest(37100)
..turnin 37103 |only if havequest(37103)
..turnin 37104 |only if havequest(37104)
..turnin 37101 |only if havequest(37101)
..turnin 37093 |only if havequest(37093)
..turnin 37094 |only if havequest(37094)
step
.collect Trained Silverpelt##116774
..learnmount Trained Silverpelt##171831 |use Trained Silverpelt##116774
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Trained Icehoof",[[
description This guide will help you acquire the Trained Icehoof.
model 59320
condition end hasmount(171617)
step
.' This mount requires a _level 1 or higher Stables_ in your Garrison.
.' Each mount requires _capturing a wild mount with a lasso_ and then _completing several daily quests with it_ before it is finally learned.
.' Quests involve _killing monsters around Draenor while mounted_ on your mount-in-training.
|confirm
step
.talk 86979
..accept 36912 |goto Frostwall 58.81,48.79
step
.talk 79407 |goto Frostwall/0 45.8,51.0
.' Use your _Clefthoof Lasso_ on the Young Icehoof in the area. |use Clefthoof Lasso##118287 |q Capturing a Clefthoof##36912/1 |goto Frostfire Ridge/0 54.0,20.5
step
.talk 86979
..turnin 36912 |goto Frostwall 58.81,48.79
step
.talk 86979 |goto Frostwall 58.81,48.79
.' You will only be able to _complete 1 of the following quests_ per day
..accept 37050 |or |only if not completedq(37050)
..accept 37051 |or |only if not completedq(37051)
..accept 37052 |or |only if not completedq(37052)
..accept 37053 |or |only if not completedq(37053)
..accept 37054 |or |only if not completedq(37054)
..accept 37057 |or |only if not completedq(37057)
..accept 37055 |or |only if not completedq(37055)
..accept 37058 |or |only if not completedq(37058)
..accept 37059 |or |only if not completedq(37059)
..accept 37056 |or |only if not completedq(37056)
..accept 37048 |or |only if not completedq(37048)
..accept 37049 |or |only if not completedq(37049)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Riplash##87084 |q Clefthoof Training: Riplash##37050/1 |goto Gorgrond/0 50.2,38.4
|only if havequest(37050)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Gezz'ran##87086 |q Clefthoof Training: Gezz'ran##37051/1 |goto Talador/0 31.5,54.9
|only if havequest(37051)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Bulbapore##87087 |q Clefthoof Training: Bulbapore##37052/1 |goto Spires of Arak/0 66.3,75.3
|only if havequest(37052)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Gorian Beast-Lasher##87095 |q Clefthoof Training: Cruel Ogres##37053/1 |goto Nagrand D/0 79.2,71.3
|only if havequest(37053)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Darkwing Roc##87088 |q Clefthoof Training: Darkwing Roc##37054/1 |goto Nagrand D/0 68.4,20.3
|only if havequest(37054)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Ironbore##87090 |q Clefthoof Training: Ironbore##37057/1 |goto Nagrand D/0 53.1,77.4
|only if havequest(37057)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Moth of Wrath##87089 |q Clefthoof Training: Moth of Wrath##37055/1 |goto Nagrand D/0 43.6,69.3
|only if havequest(37055)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Karak the Great Hunter##87105 |q Clefthoof Training: Orc Hunters##37058/1 |goto Nagrand D/0 69.6,34.6
|only if havequest(37058)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Maimclaw##87107 |q Clefthoof Training: The Garn##37059/1 |goto Nagrand D/0 63.8,80.9
|only if havequest(37059)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Thundercall##87102 |q Clefthoof Training: Thundercall##37056/1 |goto Nagrand D/0 90.6,23.6
|only if havequest(37056)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Great-Tusk##87083 |q Clefthoof Training: Great-Tusk##37048/1 |goto Shadowmoon Valley D/0 62.7,39.1
|only if havequest(37048)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Rakkiri##87085 |q Clefthoof Training: Rakkiri##37049/1 |goto Frostfire Ridge/0 72.7,70.0
|only if havequest(37049)
step
.talk 86979 |goto Frostwall 58.81,48.79
.' You will only be able to _complete 1 of the following quests_ per day
..turnin 37050 |only if havequest(37050)
..turnin 37051 |only if havequest(37051)
..turnin 37052 |only if havequest(37052)
..turnin 37053 |only if havequest(37053)
..turnin 37054 |only if havequest(37054)
..turnin 37057 |only if havequest(37057)
..turnin 37055 |only if havequest(37055)
..turnin 37058 |only if havequest(37058)
..turnin 37059 |only if havequest(37059)
..turnin 37056 |only if havequest(37056)
..turnin 37048 |only if havequest(37048)
..turnin 37049 |only if havequest(37049)
step
.collect Trained Icehoof##116656
..learnmount Trained Icehoof##171617 |use Trained Icehoof##37049
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Trained Riverwallow",[[
description This guide will help you acquire the Trained Riverwallow.
model 59743
condition end hasmount(171638)
step
.' This mount requires a _level 1 or higher Stables_ in your Garrison.
.' Each mount requires _capturing a wild mount with a lasso_ and then _completing several daily quests with it_ before it is finally learned.
.' Quests involve _killing monsters around Draenor while mounted_ on your mount-in-training.
|confirm
step
.talk 87242
..accept 36945 |goto Frostwall 59.15,50.58
step
.' Use your _Riverbeast Lasso_ on the Young Riverwallow in the area. |use Riverbeast Lasso##118285 |q Requisition a Riverbeast##36945/1 |goto Talador/0 63.8,54.9
step
.talk 87242
..turnin 36945 |goto Frostwall 59.15,50.58
step
.talk 87242 |goto Frostwall 59.15,50.58
.' You will only be able to _complete 1 of the following quests_ per day
..accept 37071 |or |only if not completedq(37071)
..accept 37072 |or |only if not completedq(37072)
..accept 37073 |or |only if not completedq(37073)
..accept 37074 |or |only if not completedq(37074)
..accept 37077 |or |only if not completedq(37077)
..accept 37075 |or |only if not completedq(37075)
..accept 37078 |or |only if not completedq(37078)
..accept 37079 |or |only if not completedq(37079)
..accept 37076 |or |only if not completedq(37076)
step
.' Use your _Riverwallow-In-Training Whistle_. |use Riverwallow-In-Training Whistle##118350
.kill Gezz'ran##87086 |q Riverbeast Training: Gezz'ran##37071/1 |goto Talador/0 31.5,54.9
|only if havequest(37071)
step
.' Use your _Riverwallow-In-Training Whistle_. |use Riverwallow-In-Training Whistle##118350
.kill Bulbapore##87087 |q Riverbeast Training: Bulbapore##37072/1 |goto Spires of Arak/0 66.3,75.3
|only if havequest(37072)
step
.' Use your _Riverwallow-In-Training Whistle_. |use Riverwallow-In-Training Whistle##118350
.kill Gorian Beast-Lasher##87095 |q Riverbeast Training: Cruel Ogres##37073/1 |goto Nagrand D/0 79.2,71.3
|only if havequest(37073)
step
.' Use your _Riverwallow-In-Training Whistle_. |use Riverwallow-In-Training Whistle##118350
.kill Darkwing Roc##87088 |q Riverbeast Training: Darkwing Roc##37074/1 |goto Nagrand D/0 68.4,20.3
|only if havequest(37074)
step
.' Use your _Riverwallow-In-Training Whistle_. |use Riverwallow-In-Training Whistle##118350
.kill Ironbore##87090 |q Riverbeast Training: Ironbore##37077/1 |goto Nagrand D/0 53.1,77.4
|only if havequest(37077)
step
.' Use your _Riverwallow-In-Training Whistle_. |use Riverwallow-In-Training Whistle##118350
.kill Moth of Wrath##87089 |q Riverbeast Training: Moth of Wrath##37075/1 |goto Nagrand D/0 43.6,69.3
|only if havequest(37075)
step
.' Use your _Riverwallow-In-Training Whistle_. |use Riverwallow-In-Training Whistle##118350
.kill Karak the Great Hunter##87105 |q Riverbeast Training: Orc Hunters##37078/1 |goto Nagrand D/0 69.6,34.6
|only if havequest(37078)
step
.' Use your _Riverwallow-In-Training Whistle_. |use Riverwallow-In-Training Whistle##118350
.kill Maimclaw##87107 |q Riverbeast Training: The Garn##37079/1 |goto Nagrand D/0 63.8,80.9
|only if havequest(37079)
step
.' Use your _Riverwallow-In-Training Whistle_. |use Riverwallow-In-Training Whistle##118350
.kill Thundercall##87102 |q Riverbeast Training: Thundercall##37076/1 |goto Nagrand D/0 90.6,23.6
|only if havequest(37076)
step
.talk 87242 |goto Frostwall 59.15,50.58
.' You will only be able to _complete 1 of the following quests_ per day
..turnin 37071 |only if havequest(37049)
..turnin 37072 |only if havequest(37049)
..turnin 37073 |only if havequest(37049)
..turnin 37074 |only if havequest(37049)
..turnin 37077 |only if havequest(37049)
..turnin 37075 |only if havequest(37049)
..turnin 37078 |only if havequest(37049)
..turnin 37079 |only if havequest(37049)
..turnin 37076 |only if havequest(37049)
step
.collect Trained Riverwallow##116676
..learnmount Trained Riverwallow##171638 |use Trained Riverwallow##116676
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Trained Meadowstomper",[[
description This guide will help you acquire the Trained Meadowstomper.
model 59340
condition end hasmount(171623)
step
.' This mount requires a _level 1 or higher Stables_ in your Garrison.
.' Each mount requires _capturing a wild mount with a lasso_ and then _completing several daily quests with it_ before it is finally learned.
.' Quests involve _killing monsters around Draenor while mounted_ on your mount-in-training.
|confirm
step
.talk 86979
..accept 36946 |goto Frostwall 58.81,48.79
step
.' Use your _Elekk Lasso_ on the Young Meadowstomper in the area. |use Elekk Lasso##118286 |q Entangling an Elekk##36946/1 |goto Nagrand D/0 84.8,39.6
step
.talk 86979
..turnin 36946 |goto Frostwall 58.81,48.79
step
.talk 86979 |goto Frostwall 58.81,48.79
.' You will only be able to _complete 1 of the following quests_ per day
..accept 37063 |or |only if not completedq(37063)
..accept 37064 |or |only if not completedq(37064)
..accept 37067 |or |only if not completedq(37067)
..accept 37065 |or |only if not completedq(37065)
..accept 37068 |or |only if not completedq(37068)
..accept 37069 |or |only if not completedq(37069)
..accept 37066 |or |only if not completedq(37066)
step
.' Use your _Meadowstomper-In-Training Whistle_. |use Meadowstomper-In-Training Whistle##118349
.kill Gorian Beast-Lasher##87095 |q Elekk Training: Cruel Ogres##37063/1 |goto Nagrand D/0 79.2,71.3
|only if havequest(37063)
step
.' Use your _Meadowstomper-In-Training Whistle_. |use Meadowstomper-In-Training Whistle##118349
.kill Darkwing Roc##87088 |q Elekk Training: Darkwing Roc##37064/1 |goto Nagrand D/0 68.4,20.3
|only if havequest(37064)
step
.' Use your _Meadowstomper-In-Training Whistle_. |use Meadowstomper-In-Training Whistle##118349
.kill Ironbore##87090 |q Elekk Training: Ironbore##37067/1 |goto Nagrand D/0 53.1,77.4
|only if havequest(37067)
step
.' Use your _Meadowstomper-In-Training Whistle_. |use Meadowstomper-In-Training Whistle##118349
.kill Moth of Wrath##87089 |q Elekk Training: Moth of Wrath##37065/1 |goto Nagrand D/0 43.6,69.3
|only if havequest(37065)
step
.' Use your _Meadowstomper-In-Training Whistle_. |use Meadowstomper-In-Training Whistle##118349
.kill Karak the Great Hunter##87105 |q Elekk Training: Orc Hunters##37068/1 |goto Nagrand D/0 69.6,34.6
|only if havequest(37068)
step
.' Use your _Meadowstomper-In-Training Whistle_. |use Meadowstomper-In-Training Whistle##118349
.kill Maimclaw##87107 |q Elekk Training: The Garn##37069/1 |goto Nagrand D/0 63.8,80.9
|only if havequest(37069)
step
.' Use your _Meadowstomper-In-Training Whistle_. |use Meadowstomper-In-Training Whistle##118349
.kill Thundercall##87102 |q Elekk Training: Thundercall##37066/1 |goto Nagrand D/0 90.6,23.6
|only if havequest(37066)
step
.talk 86979 |goto Frostwall 58.81,48.79
.' You will only be able to _complete 1 of the following quests_ per day
..turnin 37063 |only if havequest(37063)
..turnin 37064 |only if havequest(37064)
..turnin 37067 |only if havequest(37067)
..turnin 37065 |only if havequest(37065)
..turnin 37068 |only if havequest(37068)
..turnin 37069 |only if havequest(37069)
..turnin 37066 |only if havequest(37066)
step
.collect Trained Meadowstomper##116662
..learnmount Trained Meadowstomper##171623 |use Trained Meadowstomper##116662
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Trained Snarler",[[
description This guide will help you acquire the Trained Snarler.
model 59757
condition end hasmount(171841)
step
.' This mount requires a _level 1 or higher Stables_ in your Garrison.
.' Each mount requires _capturing a wild mount with a lasso_ and then _completing several daily quests with it_ before it is finally learned.
.' Quests involve _killing monsters around Draenor while mounted_ on your mount-in-training.
|confirm
step
.talk 87242
..accept 36950 |goto Frostwall 59.15,50.58
step
.' Use your _Wolf Lasso_ on the Young Snarler in the area. |use Wolf Lasso##118283 |q Wrangling a Wolf##36950/1 |goto Nagrand D/0 55.6,60.9
step
.talk 87242
..turnin 36950 |goto Frostwall 59.15,50.58
step
.talk 87242 |goto Frostwall 59.15,50.58
.' You will only be able to _complete 1 of the following quests_ per day
..accept 37105 |or |only if not completedq(37105)
..accept 37106 |or |only if not completedq(37106)
..accept 37109 |or |only if not completedq(37109)
..accept 37107 |or |only if not completedq(37107)
..accept 37110 |or |only if not completedq(37110)
..accept 37111 |or |only if not completedq(37111)
..accept 37108 |or |only if not completedq(37108)
step
.' Use your _Snarler-In-Training Whistle_. |use Snarler-In-Training Whistle##118353
.kill Gorian Beast-Lasher##87095 |q Wolf Training: Cruel Ogres##37105/1 |goto Nagrand D/0 79.2,71.3
|only if havequest(37105)
step
.' Use your _Snarler-In-Training Whistle_. |use Snarler-In-Training Whistle##118353
.kill Darkwing Roc##87088 |q Wolf Training: Darkwing Roc##37106/1 |goto Nagrand D/0 68.4,20.3
|only if havequest(37106)
step
.' Use your _Snarler-In-Training Whistle_. |use Snarler-In-Training Whistle##118353
.kill Ironbore##87090 |q Wolf Training: Ironbore##37109/1 |goto Nagrand D/0 53.1,77.4
|only if havequest(37109)
step
.' Use your _Snarler-In-Training Whistle_. |use Snarler-In-Training Whistle##118353
.kill Moth of Wrath##87089 |q Wolf Training: Moth of Wrath##37107/1 |goto Nagrand D/0 43.6,69.3
|only if havequest(37107)
step
.' Use your _Snarler-In-Training Whistle_. |use Snarler-In-Training Whistle##118353
.kill Karak the Great Hunter##87105 |q Wolf Training: Orc Hunters##37110/1 |goto Nagrand D/0 69.6,34.6
|only if havequest(37110)
step
.' Use your _Snarler-In-Training Whistle_. |use Snarler-In-Training Whistle##118353
.kill Maimclaw##87107 |q Wolf Training: The Garn##37111/1 |goto Nagrand D/0 63.8,80.9
|only if havequest(37111)
step
.' Use your _Snarler-In-Training Whistle_. |use Snarler-In-Training Whistle##118353
.kill Thundercall##87102 |q Wolf Training: Thundercall##37108/1 |goto Nagrand D/0 90.6,23.6
|only if havequest(37108)
step
.talk 87242 |goto Frostwall 59.15,50.58
.' You will only be able to _complete 1 of the following quests_ per day
..turnin 37105 |only if havequest(37105)
..turnin 37106 |only if havequest(37106)
..turnin 37109 |only if havequest(37109)
..turnin 37107 |only if havequest(37107)
..turnin 37110 |only if havequest(37110)
..turnin 37111 |only if havequest(37111)
..turnin 37108 |only if havequest(37108)
step
.collect Trained Snarler##116784
..learnmount Trained Snarler##171841 |use Trained Snarler##116784
]])
