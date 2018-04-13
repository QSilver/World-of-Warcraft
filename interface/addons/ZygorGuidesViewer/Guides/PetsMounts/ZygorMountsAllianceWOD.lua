local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsMountsAWOD") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Domesticated Razorback",[[
description This guide will help you acquire the Domesticated Razorback.
model 59738
condition end hasmount(171634)
step
This mount requires you to be _Exalted_ with the _Steamwheedle "Preservation" Society_
_Click here_ for the reputation guide |confirm |next "Zygor's Alliance Reputations Guides\\Warlords of Draenor\\Steamwheedle Preservation Society"
|confirm
step
talk Gazrix Gearlock##88482 |goto Stormshield 43.2,77.4
buy Domesticated Razorback##116672
learnmount Domesticated Razorback##171634 |use Domesticated Razorback##116672
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Giant Coldsnout",[[
description This guide will help you acquire the Giant Coldsnout.
model 59737
condition end hasmount(171633)
step
This mount is one of four that will drop randomly from the _Invader's Forgotten Treasure_ reward
talk Corporal Oslo##88458
accept Gold Victory##37307 |goto Lunarfall 38.6,32.2
step
Get a _gold score_ from a Garrison invasion
talk Corporal Oslo##88458
turnin Gold Victory##37307 |goto Lunarfall 38.6,32.2
step
Open the _Invader's Forgotten Treasure_ |use Invader's Forgotten Treasure##116980
collect Giant Coldsnout##116673
learnmount Giant Coldsnout##171633 |use Giant Coldsnout##116673
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Great Greytusk",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Blacksteel Battleboar",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Frostplains Battleboar",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Bloodhoof Bull",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Armored Frostboar",[[
description This guide will help you acquire the Armored Frostboar.
model 59347
condition end hasmount(171629)
step
This mount requires the achievement _Advanced Husbandry_
_Please refer_ to our Achievement Guide to assist with this mount
_Complete the _Advanced Husbandry achievement_ |achieve 9539
step
Armored Frostboar should be _delivered via in game mail_
collect Armored Frostboar##116668
learnmount Armored Frostboar##171629 |use Armored Frostboar##116668
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Mosshide Riverwallow",[[
description This guide will help you acquire the Mosshide Riverwallow.
model 59745
condition end hasmount(171825)
step
This mount costs 50,000 Gold and 5,000 Apexis Crystals
talk Dawn-Seeker Krek##86391 |goto Stormshield 50.4,61.6
buy Mosshide Riverwallow##116768
learnmount Mosshide Riverwallow##171825 |use Mosshide Riverwallow##116768
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Sapphire Riverbeast",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Dustmane Direwolf",[[
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
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
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
talk Auctioneer Chilton##8670 |goto Stormwind City 61.0,71.6
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Garn Nighthowl",[[
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
talk Devin Tyron##86733 |goto Stormshield 53.8,65.0
buy 1 Garn Nighthowl##116794
step
label "done"
learnmount Garn Nighthowl##171851 |use Garn Nighthowl##116794
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Smoky Direwolf",[[
description This guide will help you acquire the Smoky Direwolf.
model 59760
condition end hasmount(171633)
step
.' This mount is one of four that will drop randomly from the _Invader's Forgotten Treasure_ reward.
.talk 88458
..accept 37307 |goto Lunarfall 38.6,32.2
step
.' Get a _gold score_ from a Garrison invasion.
.talk 88458
..turnin 37307 |goto Lunarfall 38.6,32.2
step
.' Open the _Invader's Forgotten Treasure_. |use Invader's Forgotten Treasure##116980
.collect Smoky Direwolf##116786
..learnmount Smokey Direwolf##171843 |use Smoky Direwolf##116786
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Armored Frostwolf",[[
description This guide will help you acquire the Armored Frostwolf.
model 59753
condition end hasmount(171838)
step
.' This mount requires the achievement _The Stable Master_.
.' _Complete the _The Stable Master achievement_. |achieve 9540
step
.' Armored Frostwolf should be _delivered via in game mail_.
.collect Armored Frostwolf##116781
..learnmount Armored Frostwolf##171838 |use Armored Frostwolf##116781
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Garn Steelmaw",[[
description This guide will help you acquire the Garn Steelmaw.
model 59756
condition end hasmount(171836)
step
.' This mount is one of four that will drop randomly from the _Invader's Forgotten Treasure_ reward.
.talk 88458
..accept 37307 |goto Lunarfall 38.6,32.2
step
.' Get a _gold score_ from a Garrison invasion.
.talk 88458
..turnin 37307 |goto Lunarfall 38.6,32.2
step
.' Open the _Invader's Forgotten Treasure_. |use Invader's Forgotten Treasure##116980
.collect Garn Steelmaw##116779
..learnmount Garn Steelmaw##171836 |use Garn Steelmaw##116779
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Pale Thorngrazer",[[
description This guide will help you acquire the Pale Thorngrazer.
model 59367
condition end hasmount(171833)
step
.' This mount is _Alliance only_ and requires you to be _Exalted_ with the _Wrynn's Vanguard_.
.' _Click here_ for the reputation guide. |confirm |next "Zygor's Alliance Reputations Guides\\Warlords of Draenor\\Wrynn's Vanguard"
|confirm
step
.talk 80882 |goto Stormshield 44.2,74.0
.buy Pale Thorngrazer##116776
..learnmount Pale Thorngrazer##171833 |use Pale Thorngrazer##116776
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Shadowmane Charger",[[
description This guide will help you acquire the Shadowmane Charger.
model 59363
condition end hasmount(171829)
step
.' This mount requires you to be _Exalted_ with the _Arakkoa Outcasts_.
.' _Click here_ for the reputation guide. |confirm |next "Zygor's Alliance Reputations Guides\\Warlords of Draenor\\Arakkoa Outcasts"
|confirm
step
.talk 85946 |goto Stormshield 45.0,75.8
.buy Shadowmane Charger##116772
..learnmount Shadowmane Charger##171829 |use Shadowmane Charger##116772
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Swift Breezestrider",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Core Hound",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Solar Spirehawk",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Armored Irontusk",[[
description This guide will help you acquire the Armored Irontusk.
model 59343
condition end hasmount(171626)
step
.' This mount is _Alliance only_ and requires you to be _Exalted_ with the _Sha'tari Defense_.
.' _Click here_ for the reputation guide. |confirm |next "Zygor's Alliance Reputations Guides\\Warlords of Draenor\\Sha'tari Defense"
|confirm
step
.talk 85427 |goto Lunarfall/0 34.2,149.2
.buy Armored Irontusk##116665
..learnmount Armored Irontusk##171626 |use Armored Irontusk##116665
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Dusty Rockhide",[[
description This guide will help you acquire the Dusty Rockhide.
model 59342
condition end hasmount(171625)
step
.' This mount is _Alliance only_ and requires you to be _Exalted_ with the _Council of Exarchs_.
.' _Click here_ for the reputation guide. |confirm |next "Zygor's Alliance Reputations Guides\\Warlords of Draenor\\Council of Exarchs"
|confirm
step
.talk 85932 |goto Stormshield 46.6,76.2
.buy Dusty Rockhide##116664
..learnmount Dusty Rockhide##171625 |use Dusty Rockhide##116664
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Mottled Meadowstomper",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Shadowhide Pearltusk",[[
description This guide will help you acquire the Shadowhide Pearltusk.
model 59341
condition end hasmount(171624)
step
.' This mount is one of four that will drop randomly from the _Invader's Forgotten Treasure_ reward.
.talk 88458
..accept 37307 |goto Lunarfall 38.6,32.2
step
.' Get a _gold score_ from a Garrison invasion.
.talk 88458
..turnin 37307 |goto Lunarfall 38.6,32.2
step
.' Open the _Invader's Forgotten Treasure_. |use Invader's Forgotten Treasure##116980
.collect Shadowhide Pearltusk##116663
..learnmount Shadowhide Pearltusk##171624 |use Shadowhide Pearltusk##116663
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Flying Mounts\\Grinning Reaver",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Vicious War Ram",[[
description This guide will help you acquire the Vicious War Ram.
model 60574
condition end hasmount(171834)
step
.' This mount is _Alliance only_ and requires the achievement _Primal Combatant_.
.' _Complete the Primal Combatant achievement_. |achieve 9238
step
.talk 73190 |goto Stormwind City 76.8,65.6
.buy Vicious War Ram##116777
..learnmount Vicious War Ram##171834 |use Vicious War Ram##116777
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Gorestrider Gronnling",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Sunhide Gronnling",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Challenger's War Yeti",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Flying Mounts\\Creeping Carpet",[[
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
.talk 8670 |goto Stormwind City 61.0,71.6
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
.talk 8670 |goto Stormwind City 61.0,71.6
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Crimson Water Strider",[[
description This guide will help you acquire the Crimson Water Strider.
model 43713
condition end hasmount(127271)
step
.' This mount requires you to be _Honored_ with the _Nat Pagle_.
.' You must also have a _700 fishing skill_, and a _level 3 Fishing Shack_.
|confirm
step
.talk 85984 |goto Lunarfall 53.8,13.8
.buy Reins of the Crimson Water Strider##87791
..learnmount Crimson Water Strider##127271 |use Reins of the Crimson Water Strider##87791
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Felfire Hawk",[[
description This guide will help you acquire the Felfire Hawk.
model 38032
condition end hasmount(97501)
step
.' This mount requires the achievement _Mountacular_.
.' _Complete the Mountacular achievement_. |achieve 9598
step
.' Felfire Hawk should be _delivered via in game mail_.
.collect Felfire Hawk##69226
..learnmount Felfire Hawk##97501 |use Felfire Hawk##69226
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Reins of the Emerald Drake",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Trained Rocktusk",[[
description This guide will help you acquire the Trained Rocktusk.
model 59735
condition end hasmount(171637)
step
.' This mount requires a _level 1 or higher Stables_ in your Garrison.
.' Each mount requires _capturing a wild mount with a lasso_ and then _completing several daily quests with it_ before it is finally learned.
.' Quests involve _killing monsters around Draenor while mounted_ on your mount-in-training.
|confirm
step
.talk 86973
..accept 36913 |goto Lunarfall 39.8,56.6
step
.' Use your _Boar Lasso_ on Young Rocktusks in the area. |use Boar Lasso##118185 |q Besting a Boar##36913/1 |goto Gorgrond/0 43.9,37.3
step
.talk 86973
..turnin 36913 |goto Lunarfall 39.8,56.6
step
.talk 86973 |goto Lunarfall 39.8,56.6
.' You will only be able to _complete 1 of the following quests_ per day
..accept 36995 |or |only if not completedq(36995)
..accept 36996 |or |only if not completedq(36996)
..accept 36997 |or |only if not completedq(36997)
..accept 36998 |or |only if not completedq(36998)
..accept 36999 |or |only if not completedq(36999)
..accept 37002 |or |only if not completedq(37002)
..accept 37000 |or |only if not completedq(37000)
..accept 37003 |or |only if not completedq(37003)
..accept 37004 |or |only if not completedq(37004)
..accept 37001 |or |only if not completedq(37001)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Riplash##87084 |q Boar Training: Riplash##36995/1 |goto Gorgrond/0 50.2,38.4
|only if havequest(36995)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Gezz'ran##87086 |q Boar Training: Gezz'ran##36996/1 |goto Talador/0 31.5,54.9
|only if havequest(36996)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Bulbapore##87087 |q Boar Training: Bulbapore##36997/1 |goto Spires of Arak/0 66.3,75.3
|only if havequest(36997)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Gorian Beast-Lasher##87095 |q Boar Training: Cruel Ogres##36998/1 |goto Nagrand D/0 79.2,71.3
|only if havequest(36998)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Darkwing Roc##87088 |q Boar Training: Darkwing Roc##36999/1 |goto Nagrand D/0 68.4,20.3
|only if havequest(36999)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Ironbore##87090 |q Boar Training: Ironbore##37002/1 |goto Nagrand D/0 53.1,77.4
|only if havequest(37002)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Moth of Wrath##87089 |q Boar Training: Moth of Wrath##37000/1 |goto Nagrand D/0 43.6,69.3
|only if havequest(37000)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Karak the Great Hunter##87105 |q Boar Training: Orc Hunters##37003/1 |goto Nagrand D/0 69.6,34.6
|only if havequest(37003)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Maimclaw##87107 |q Boar Training: The Garn##37004/1 |goto Nagrand D/0 63.8,80.9
|only if havequest(37004)
step
.' Use your _Rocktusk-In-Training Whistle_. |use Rocktusk-In-Training Whistle##118351
.kill Thundercall##87102 |q Boar Training: Thundercall##37001/1 |goto Nagrand D/0 90.6,23.6
|only if havequest(37001)
step
.talk 86973 |goto Lunarfall 39.8,56.6
..turnin 36995 |only if havequest(36995)
..turnin 36996 |only if havequest(36996)
..turnin 36997 |only if havequest(36997)
..turnin 36998 |only if havequest(36998)
..turnin 36999 |only if havequest(36999)
..turnin 37002 |only if havequest(37002)
..turnin 37000 |only if havequest(37000)
..turnin 37003 |only if havequest(37003)
..turnin 37004 |only if havequest(37004)
..turnin 37001 |only if havequest(37001)
step
.collect Trained Rocktusk##116675
..learnmount Trained Rocktusk##171637 |use Trained Rocktusk##116675
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Trained Silverpelt",[[
description This guide will help you acquire the Trained Silverpelt.
model 59365
condition end hasmount(171831)
step
.' This mount requires a _level 1 or higher Stables_ in your Garrison.
.' Each mount requires _capturing a wild mount with a lasso_ and then _completing several daily quests with it_ before it is finally learned.
.' Quests involve _killing monsters around Draenor while mounted_ on your mount-in-training.
|confirm
step
.talk 86974
..accept 36911 |goto Lunarfall 38.66,61.94
step
.' Use your _Talbuk Lasso_ on Young Silverpelts in the area. |use Talbuk Lasso##118179 |q Taming a Talbuk##36911/1 |goto Shadowmoon Valley D/0 50.3,30.1
step
.talk 86974
..turnin 36911 |goto Lunarfall 38.66,61.94
step
.talk 86974 |goto Lunarfall 38.66,61.94
.' You will only be able to _complete 1 of the following quests_ per day
..accept 36973 |or |only if not completedq(36973)
..accept 36974 |or |only if not completedq(36974)
..accept 36975 |or |only if not completedq(36975)
..accept 36976 |or |only if not completedq(36976)
..accept 36977 |or |only if not completedq(36977)
..accept 36980 |or |only if not completedq(36980)
..accept 36978 |or |only if not completedq(36978)
..accept 36981 |or |only if not completedq(36981)
..accept 36982 |or |only if not completedq(36982)
..accept 36979 |or |only if not completedq(36979)
..accept 36971 |or |only if not completedq(36971)
..accept 36972 |or |only if not completedq(36972)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Riplash##87084 |q Talbuk Training: Riplash##36973/1 |goto Gorgrond/0 50.2,38.4
|only if havequest(36973)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Gezz'ran##87086 |q Talbuk Training: Gezz'ran##36974/1 |goto Talador/0 31.5,54.9
|only if havequest(36974)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Bulbapore##87087 |q Talbuk Training: Bulbapore##36975/1 |goto Spires of Arak/0 66.3,75.3
|only if havequest(36975)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Gorian Beast-Lasher##87095 |q Talbuk Training: Cruel Ogres##36976/1 |goto Nagrand D/0 79.2,71.3
|only if havequest(36976)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Darkwing Roc##87088 |q Talbuk Training: Darkwing Roc##36977/1 |goto Nagrand D/0 68.4,20.3
|only if havequest(36977)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Ironbore##87090 |q Talbuk Training: Ironbore##36980/1 |goto Nagrand D/0 53.1,77.4
|only if havequest(36980)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Moth of Wrath##87089 |q Talbuk Training: Moth of Wrath##36978/1 |goto Nagrand D/0 43.6,69.3
|only if havequest(36978)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Karak the Great Hunter##87105 |q Talbuk Training: Orc Hunters##36981/1 |goto Nagrand D/0 69.6,34.6
|only if havequest(36981)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Maimclaw##87107 |q Talbuk Training: The Garn##36982/1 |goto Nagrand D/0 63.8,80.9
|only if havequest(36982)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Thundercall##87102 |q Talbuk Training: Thundercall##36979/1 |goto Nagrand D/0 90.6,23.6
|only if havequest(36979)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Great-Tusk##87083 |q Talbuk Training: Great-Tusk##36971/1 |goto Shadowmoon Valley D/0 62.7,39.1
|only if havequest(36971)
step
.' Use your _Silverpelt-In-Training Whistle_. |use Silverpelt-In-Training Whistle##118352
.kill Rakkiri##87085 |q Talbuk Training: Rakkiri##36972/1 |goto Frostfire Ridge/0 72.7,70.0
|only if havequest(36972)
step
.talk 86974 |goto Lunarfall 38.66,61.94
..turnin 36973 |only if havequest(36973)
..turnin 36974 |only if havequest(36974)
..turnin 36975 |only if havequest(36975)
..turnin 36976 |only if havequest(36976)
..turnin 36977 |only if havequest(36977)
..turnin 36980 |only if havequest(36980)
..turnin 36978 |only if havequest(36978)
..turnin 36981 |only if havequest(36981)
..turnin 36982 |only if havequest(36982)
..turnin 36979 |only if havequest(36979)
..turnin 36971 |only if havequest(36971)
..turnin 36972 |only if havequest(36972)
step
.collect Trained Silverpelt##116774
..learnmount Trained Silverpelt##171831 |use Trained Silverpelt##116774
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Trained Icehoof",[[
description This guide will help you acquire the Trained Icehoof.
model 59320
condition end hasmount(171617)
step
.' This mount requires a _level 1 or higher Stables_ in your Garrison.
.' Each mount requires _capturing a wild mount with a lasso_ and then _completing several daily quests with it_ before it is finally learned.
.' Quests involve _killing monsters around Draenor while mounted_ on your mount-in-training.
|confirm
step
.talk 86973
..accept 36916 |goto Lunarfall 39.8,56.6
step
.' Use your _Clefthoof Lasso_ on the Young Icehoof in the area. |use Clefthoof Lasso##118181 |q Capturing a Clefthoof##36916/1 |goto Frostfire Ridge/0 54.0,20.5
step
.talk 86973
..turnin 36916 |goto Lunarfall 39.8,56.6
step
.talk 86973 |goto Lunarfall 39.8,56.6
.' You will only be able to _complete 1 of the following quests_ per day
..accept 36985 |or |only if not completedq(36985)
..accept 36986 |or |only if not completedq(36986)
..accept 36987 |or |only if not completedq(36987)
..accept 36988 |or |only if not completedq(36988)
..accept 36989 |or |only if not completedq(36989)
..accept 36992 |or |only if not completedq(36992)
..accept 36990 |or |only if not completedq(36990)
..accept 36993 |or |only if not completedq(36993)
..accept 36994 |or |only if not completedq(36994)
..accept 36991 |or |only if not completedq(36991)
..accept 36983 |or |only if not completedq(36983)
..accept 36984 |or |only if not completedq(36984)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Riplash##87084 |q Clefthoof Training: Riplash##36985/1 |goto Gorgrond/0 50.2,38.4
|only if havequest(36985)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Gezz'ran##87086 |q Clefthoof Training: Gezz'ran##36986/1 |goto Talador/0 31.5,54.9
|only if havequest(36986)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Bulbapore##87087 |q Clefthoof Training: Bulbapore##36987/1 |goto Spires of Arak/0 66.3,75.3
|only if havequest(36987)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Gorian Beast-Lasher##87095 |q Clefthoof Training: Cruel Ogres##36988/1 |goto Nagrand D/0 79.2,71.3
|only if havequest(36988)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Darkwing Roc##87088 |q Clefthoof Training: Darkwing Roc##36989/1 |goto Nagrand D/0 68.4,20.3
|only if havequest(36989)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Ironbore##87090 |q Clefthoof Training: Ironbore##36992/1 |goto Nagrand D/0 53.1,77.4
|only if havequest(36992)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Moth of Wrath##87089 |q Clefthoof Training: Moth of Wrath##36990/1 |goto Nagrand D/0 43.6,69.3
|only if havequest(36990)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Karak the Great Hunter##87105 |q Clefthoof Training: Orc Hunters##36993/1 |goto Nagrand D/0 69.6,34.6
|only if havequest(36993)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Maimclaw##87107 |q Clefthoof Training: The Garn##36994/1 |goto Nagrand D/0 63.8,80.9
|only if havequest(36994)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Thundercall##87102 |q Clefthoof Training: Thundercall##36991/1 |goto Nagrand D/0 90.6,23.6
|only if havequest(36991)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Great-Tusk##87083 |q Clefthoof Training: Great-Tusk##36983/1 |goto Shadowmoon Valley D/0 62.7,39.1
|only if havequest(36983)
step
.' Use your _Icehoof-In-Training Whistle_. |use Icehoof-In-Training Whistle##118348
.kill Rakkiri##87085 |q Clefthoof Training: Rakkiri##36984/1 |goto Frostfire Ridge/0 72.7,70.0
|only if havequest(36984)
step
.talk 86973 |goto Lunarfall 39.8,56.6
..turnin 36985 |only if havequest(36985)
..turnin 36986 |only if havequest(36986)
..turnin 36987 |only if havequest(36987)
..turnin 36988 |only if havequest(36988)
..turnin 36989 |only if havequest(36989)
..turnin 36992 |only if havequest(36992)
..turnin 36990 |only if havequest(36990)
..turnin 36993 |only if havequest(36993)
..turnin 36994 |only if havequest(36994)
..turnin 36991 |only if havequest(36991)
..turnin 36983 |only if havequest(36983)
..turnin 36984 |only if havequest(36984)
step
.collect Trained Icehoof##116656
..learnmount Trained Icehoof##171617 |use Trained Icehoof##116656
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Trained Riverwallow",[[
description This guide will help you acquire the Trained Riverwallow.
model 59743
condition end hasmount(171638)
step
.' This mount requires a _level 1 or higher Stables_ in your Garrison.
.' Each mount requires _capturing a wild mount with a lasso_ and then _completing several daily quests with it_ before it is finally learned.
.' Quests involve _killing monsters around Draenor while mounted_ on your mount-in-training.
|confirm
step
.talk 86974
..accept 36918 |goto Lunarfall 38.66,61.94
step
.' Use your _Riverbeast Lasso_ on the Young Riverwallow in the area. |use Riverbeast Lasso##118183 |q Requisition a Riverbeast##36918/1 |goto Talador/0 63.8,54.9
step
.talk 86974
..turnin 36918 |goto Lunarfall 38.66,61.94
step
.talk 86974 |goto Lunarfall 38.66,61.94
.' You will only be able to _complete 1 of the following quests_ per day
..accept 37005 |or |only if not completedq(37005)
..accept 37006 |or |only if not completedq(37006)
..accept 37007 |or |only if not completedq(37007)
..accept 37008 |or |only if not completedq(37008)
..accept 37011 |or |only if not completedq(37011)
..accept 37009 |or |only if not completedq(37009)
..accept 37012 |or |only if not completedq(37012)
..accept 37013 |or |only if not completedq(37013)
..accept 37010 |or |only if not completedq(37010)
step
.' Use your _Riverwallow-In-Training Whistle_. |use Riverwallow-In-Training Whistle##118350
.kill Gezz'ran##87086 |q Riverbeast Training: Gezz'ran##37005/1 |goto Talador/0 31.5,54.9
|only if havequest(37005)
step
.' Use your _Riverwallow-In-Training Whistle_. |use Riverwallow-In-Training Whistle##118350
.kill Bulbapore##87087 |q Riverbeast Training: Bulbapore##37006/1 |goto Spires of Arak/0 66.3,75.3
|only if havequest(37006)
step
.' Use your _Riverwallow-In-Training Whistle_. |use Riverwallow-In-Training Whistle##118350
.kill Gorian Beast-Lasher##87095 |q Riverbeast Training: Cruel Ogres##37007/1 |goto Nagrand D/0 79.2,71.3
|only if havequest(37007)
step
.' Use your _Riverwallow-In-Training Whistle_. |use Riverwallow-In-Training Whistle##118350
.kill Darkwing Roc##87088 |q Riverbeast Training: Darkwing Roc##37008/1 |goto Nagrand D/0 68.4,20.3
|only if havequest(37008)
step
.' Use your _Riverwallow-In-Training Whistle_. |use Riverwallow-In-Training Whistle##118350
.kill Ironbore##87090 |q Riverbeast Training: Ironbore##37011/1 |goto Nagrand D/0 53.1,77.4
|only if havequest(37011)
step
.' Use your _Riverwallow-In-Training Whistle_. |use Riverwallow-In-Training Whistle##118350
.kill Moth of Wrath##87089 |q Riverbeast Training: Moth of Wrath##37009/1 |goto Nagrand D/0 43.6,69.3
|only if havequest(37009)
step
.' Use your _Riverwallow-In-Training Whistle_. |use Riverwallow-In-Training Whistle##118350
.kill Karak the Great Hunter##87105 |q Riverbeast Training: Orc Hunters##37012/1 |goto Nagrand D/0 69.6,34.6
|only if havequest(37012)
step
.' Use your _Riverwallow-In-Training Whistle_. |use Riverwallow-In-Training Whistle##118350
.kill Maimclaw##87107 |q Riverbeast Training: The Garn##37013/1 |goto Nagrand D/0 63.8,80.9
|only if havequest(37013)
step
.' Use your _Riverwallow-In-Training Whistle_. |use Riverwallow-In-Training Whistle##118350
.kill Thundercall##87102 |q Riverbeast Training: Thundercall##37010/1 |goto Nagrand D/0 90.6,23.6
|only if havequest(37010)
step
.talk 86974 |goto Lunarfall 38.66,61.94
..turnin 37005 |only if havequest(37005)
..turnin 37006 |only if havequest(37006)
..turnin 37007 |only if havequest(37007)
..turnin 37008 |only if havequest(37008)
..turnin 37011 |only if havequest(37011)
..turnin 37009 |only if havequest(37009)
..turnin 37012 |only if havequest(37012)
..turnin 37013 |only if havequest(37013)
..turnin 37010 |only if havequest(37010)
step
.collect Trained Riverwallow##116676
..learnmount Trained Riverwallow##171638 |use Trained Riverwallow##116676
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Trained Meadowstomper",[[
description This guide will help you acquire the Trained Meadowstomper.
model 59340
condition end hasmount(171623)
step
.' This mount requires a _level 1 or higher Stables_ in your Garrison.
.' Each mount requires _capturing a wild mount with a lasso_ and then _completing several daily quests with it_ before it is finally learned.
.' Quests involve _killing monsters around Draenor while mounted_ on your mount-in-training.
|confirm
step
.talk 86973
..accept 36915 |goto Lunarfall 39.8,56.6
step
.' Use your _Elekk Lasso_ on the Young Meadowstomper in the area. |use Elekk Lasso##118184 |q Entangling an Elekk##36915/1 |goto Nagrand D/0 84.8,39.6
step
.talk 86973
..turnin 36915 |goto Lunarfall 39.8,56.6
step
.talk 86973 |goto Lunarfall 39.8,56.6
.' You will only be able to _complete 1 of the following quests_ per day
..accept 37015 |or |only if not completedq(37015)
..accept 37016 |or |only if not completedq(37016)
..accept 37019 |or |only if not completedq(37019)
..accept 37017 |or |only if not completedq(37017)
..accept 37020 |or |only if not completedq(37020)
..accept 37021 |or |only if not completedq(37021)
..accept 37018 |or |only if not completedq(37018)
step
.' Use your _Meadowstomper-In-Training Whistle_. |use Meadowstomper-In-Training Whistle##118349
.kill Gorian Beast-Lasher##87095 |q Elekk Training: Cruel Ogres##37015/1 |goto Nagrand D/0 79.2,71.3
|only if havequest(37015)
step
.' Use your _Meadowstomper-In-Training Whistle_. |use Meadowstomper-In-Training Whistle##118349
.kill Darkwing Roc##87088 |q Elekk Training: Darkwing Roc##37016/1 |goto Nagrand D/0 68.4,20.3
|only if havequest(37016)
step
.' Use your _Meadowstomper-In-Training Whistle_. |use Meadowstomper-In-Training Whistle##118349
.kill Ironbore##87090 |q Elekk Training: Ironbore##37019/1 |goto Nagrand D/0 53.1,77.4
|only if havequest(37019)
step
.' Use your _Meadowstomper-In-Training Whistle_. |use Meadowstomper-In-Training Whistle##118349
.kill Moth of Wrath##87089 |q Elekk Training: Moth of Wrath##37017/1 |goto Nagrand D/0 43.6,69.3
|only if havequest(37017)
step
.' Use your _Meadowstomper-In-Training Whistle_. |use Meadowstomper-In-Training Whistle##118349
.kill Karak the Great Hunter##87105 |q Elekk Training: Orc Hunters##37020/1 |goto Nagrand D/0 69.6,34.6
|only if havequest(37020)
step
.' Use your _Meadowstomper-In-Training Whistle_. |use Meadowstomper-In-Training Whistle##118349
.kill Maimclaw##87107 |q Elekk Training: The Garn##37021/1 |goto Nagrand D/0 63.8,80.9
|only if havequest(37021)
step
.' Use your _Meadowstomper-In-Training Whistle_. |use Meadowstomper-In-Training Whistle##118349
.kill Thundercall##87102 |q Elekk Training: Thundercall##37018/1 |goto Nagrand D/0 90.6,23.6
|only if havequest(37018)
step
.talk 86973 |goto Lunarfall 39.8,56.6
..turnin 37015 |only if havequest(37015)
..turnin 37016 |only if havequest(37016)
..turnin 37019 |only if havequest(37019)
..turnin 37017 |only if havequest(37017)
..turnin 37020 |only if havequest(37020)
..turnin 37021 |only if havequest(37021)
..turnin 37018 |only if havequest(37018)
step
.collect Trained Meadowstomper##116662
..learnmount Trained Meadowstomper##171623 |use Trained Meadowstomper##116662
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Mounts\\Warlords of Draenor\\Ground Mounts\\Trained Snarler",[[
description This guide will help you acquire the Trained Snarler.
model 59757
condition end hasmount(171841)
step
.' This mount requires a _level 1 or higher Stables_ in your Garrison.
.' Each mount requires _capturing a wild mount with a lasso_ and then _completing several daily quests with it_ before it is finally learned.
.' Quests involve _killing monsters around Draenor while mounted_ on your mount-in-training.
|confirm
step
.talk 86974
..accept 36914 |goto Lunarfall 38.66,61.94
step
.' Use your _Wolf Lasso_ on the Young Snarler in the area. |use Wolf Lasso##118182 |q Wrangling a Wolf##36914/1 |goto Nagrand D/0 55.6,60.9
step
.talk 86974
..turnin 36914 |goto Lunarfall 38.66,61.94
step
.talk 86974 |goto Lunarfall 38.66,61.94
.' You will only be able to _complete 1 of the following quests_ per day
..accept 37022 |or |only if not completedq(37022)
..accept 37023 |or |only if not completedq(37023)
..accept 37026 |or |only if not completedq(37026)
..accept 37024 |or |only if not completedq(37024)
..accept 37027 |or |only if not completedq(37027)
..accept 37028 |or |only if not completedq(37028)
..accept 37025 |or |only if not completedq(37025)
step
.' Use your _Snarler-In-Training Whistle_. |use Snarler-In-Training Whistle##118353
.kill Gorian Beast-Lasher##87095 |q Wolf Training: Cruel Ogres##37022/1 |goto Nagrand D/0 79.2,71.3
|only if havequest(37022)
step
.' Use your _Snarler-In-Training Whistle_. |use Snarler-In-Training Whistle##118353
.kill Darkwing Roc##87088 |q Wolf Training: Darkwing Roc##37023/1 |goto Nagrand D/0 68.4,20.3
|only if havequest(37023)
step
.' Use your _Snarler-In-Training Whistle_. |use Snarler-In-Training Whistle##118353
.kill Ironbore##87090 |q Wolf Training: Ironbore##37026/1 |goto Nagrand D/0 53.1,77.4
|only if havequest(37026)
step
.' Use your _Snarler-In-Training Whistle_. |use Snarler-In-Training Whistle##118353
.kill Moth of Wrath##87089 |q Wolf Training: Moth of Wrath##37024/1 |goto Nagrand D/0 43.6,69.3
|only if havequest(37024)
step
.' Use your _Snarler-In-Training Whistle_. |use Snarler-In-Training Whistle##118353
.kill Karak the Great Hunter##87105 |q Wolf Training: Orc Hunters##37027/1 |goto Nagrand D/0 69.6,34.6
|only if havequest(37027)
step
.' Use your _Snarler-In-Training Whistle_. |use Snarler-In-Training Whistle##118353
.kill Maimclaw##87107 |q Wolf Training: The Garn##37028/1 |goto Nagrand D/0 63.8,80.9
|only if havequest(37028)
step
.' Use your _Snarler-In-Training Whistle_. |use Snarler-In-Training Whistle##118353
.kill Thundercall##87102 |q Wolf Training: Thundercall##37025/1 |goto Nagrand D/0 90.6,23.6
|only if havequest(37025)
step
.talk 86974 |goto Lunarfall 38.66,61.94
..turnin 37022 |only if havequest(37022)
..turnin 37023 |only if havequest(37023)
..turnin 37026 |only if havequest(37026)
..turnin 37024 |only if havequest(37024)
..turnin 37027 |only if havequest(37027)
..turnin 37028 |only if havequest(37028)
..turnin 37025 |only if havequest(37025)
step
.collect Trained Snarler##116784
..learnmount Trained Snarler##171841 |use Trained Snarler##116784
]])
