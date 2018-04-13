local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("AchievementsHWOD") then return end
ZygorGuidesViewer:RegisterInclude("trainCooking",[[
goto Orgrimmar 56.3,61.5
.talk 46709
]])
ZygorGuidesViewer:RegisterInclude("trainFishing",[[
goto Orgrimmar 66.5,41.5
.talk 3332
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\General Achievements\\Savagely Superior",[[
description Wear an item with a minimal level of 608 or greater in each slot.
condition end achieved(9707)
step
'For this achievement you will need to simply equip a Superior (blue) item of at least _item level 608_ in all your Armor and Weapon slots. For rings and trinkets you can just equip one ring or trinket in both slots seperately.
'You can either purchase these items from the Auction House or run dungeons and quests for them.
.' Note that rings and trinkets can be used for both of their slots simply by switching.
|confirm
step
'Your progress with be tracked per slot below:
.' Head |achieve 9707/1
.' Neck |achieve 9707/2
.' Shoulder |achieve 9707/3
.' Chest |achieve 9707/4
.' Waist |achieve 9707/5
.' Legs |achieve 9707/6
.' Feet |achieve 9707/7
.' Wrist |achieve 9707/8
.' Hands |achieve 9707/9
.' Left Ring|achieve 9707/10
.' Right Ring |achieve 9707/11
.' First Trinket |achieve 9707/12
.' Second Trinket |achieve 9707/13
.' Cloak |achieve 9707/14
.' Weapon |achieve 9707/15
step
.' Congratulations, you have earned the _Savagely Superior_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\General Achievements\\Savagely Epic",[[
description Wear an item with a minimal level of 640 or greater in each slot.
condition end achieved(9708)
step
'For this achievement you will need to equip epic items of 640 or higher in every slot.
'You caneither purchase gear sets like this with _Honor_ from pvping, or pick them up in a _Raid_.
.' Note that rings and trinkets can be used for both of their slots simply by switching.
|confirm
step
'Your progress with be tracked per slot below:
.' Head |achieve 9708/1
.' Neck |achieve 9708/2
.' Shoulder |achieve 9708/3
.' Chest |achieve 9708/4
.' Waist |achieve 9708/5
.' Legs |achieve 9708/6
.' Feet |achieve 9708/7
.' Wrist |achieve 9708/8
.' Hands |achieve 9708/9
.' Left Ring|achieve 9708/10
.' Right Ring |achieve 9708/11
.' First Trinket |achieve 9708/12
.' Second Trinket |achieve 9708/13
.' Cloak |achieve 9708/14
.' Weapon |achieve 9708/15
step
.' Congratulations, you have earned the _Savagely Epic_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\General Achievements\\Draenor Cuisine",[[
description Sample various Draenor foods.
condition end achieved(9502)
step
'In order to earn this achievement, you will need to have the following buildings in your Garrison:
.' _Tradepost available_
.' _Herb Garden_
.' _Fishing Shack_ |tip It is highly recommened that you use what resources you have to buy fish, as all the fishing spots are random chance of any fish in Draenor
|confirm
step
.talk 87116
..accept 37062 |goto Frostwall/0 51.18,59.06
|only if not completedq(37062)
step
.click Pyxni Pennypocket##87263
.' Use the Mug of Rousing Coffeee |use Mug of Rousing Coffee##118418
.' Trader Roused |q Tricks of the Trade##37062/1 |goto 44.78,14.64
|only if not completedq(37062)
step
.talk 87116
..turnin 37062 |goto 51.16,59.11
|only if not completedq(37062)
step
'This step is here for the purpose of checking your progress with the achievement.
.' Blackrock Barbeque |achieve 9502/1
.' Blackrock Ham |achieve 9502/2
.' Braised Riverbeast |achieve 9502/3
.' Calamari Crepes |achieve 9502/4
.' Clefthoof Sausages |achieve 9502/5
.' Fat Sleeper Cakes |achieve 9502/6
.' Fiery Calamari |achieve 9502/7
.' Frosty Stew |achieve 9502/8
.' Gorground Chowder |achieve 9502/9
.' Grilled Gulper |achieve 9502/10
.' Grilled Saberfish |achieve 9502/11
.' Hearty Elekk Steak |achieve 9502/12
.' Pan-Seared Talbuk |achieve 9502/13
.' Rylak Crepes |achieve 9502/14
.' Saberfish Broth |achieve 9502/15
.' Skulker Chowder |achieve 9502/16
.' Sleeper Surprise |achieve 9502/17
.' Steamed Scorpion |achieve 9502/18
.' Sturgeon Stew |achieve 9502/19
.' Talador Surf and Turf |achieve 9502/20
.' If you don't have the ability to cook as well as Fishing, a Trade Post and an Herb Garden Available to your Garrion, click here. |next "buyah" |confirm
.' If you would l ike to gather your own materials using Garrison resources and cook yourself, click here. |next "cook" |confirm
step
label "cook"
.talk 86778
.' You will need a trading post in your garrison to collect the following items:
'Meat:
.buy 30 Raw Boar Meat##109136
.buy 30 Raw Clefthoof Meat##109131
.buy 30 Raw Elekk Meat##109134
.buy 30 Raw Riverbeast Meat##109135
.buy 30 Raw Talbuk Meat##109132
.buy 30 Rylak Egg##109133
.' Roughly 1440 Garrison Resources will be required to purchase all of these items
step
.talk 86778
'Fish: |tip
.buy 60 Abyssal Gulper Eel Flesh##109143
.buy 60 Blind Lake Sturgeon Flesh##109140
.buy 10 Crescent Saberfish Flesh##109137
.buy 60 Fat Sleeper Flesh##109139
.buy 60 Fire Ammonite Tentacle##109141
.buy 60 Jawless Skulker Flesh##109138
.buy 60 Sea Scorpion Segment##109142
'Rough 2960 Garrison Resources will be required to purchase all of these items
step
.talk 86778
'Herbalism:
.buy 1 Fireweed##109125
.buy 1 Frostweed##109124
.buy 1 Gorgrond Flytrap##109126
.buy 1 Nagrand Arrowbloom##109128
.buy 1 Starflower##109127
.buy 1 Talador Orchid##109129
'Roughly 60 Garrison Resources will be required to purchase all of these items
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Blackrock Barbecue##160986,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Blackrock Ham##160962,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Braised Riverbeast##160968,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Calamari Crepes##160999,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Clefthoof Sausages##160971,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Fat Sleeper Cakes##160981,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Fiery Calamari##160982,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Frosty Stew##160987,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Gorgrond Chowder##161000,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Grilled Gulper##160978,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Grilled Saberfish##161002,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Hearty Elekk Steak##160958,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Pan-Seared Talbuk##160966,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Rylak Crepes##160969,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Saberfish Broth##161001,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Skulker Chowder##160983,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Sleeper Surprise##160989,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Steamed Scorpion##160973,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Sturgeon Stew##160979,Cooking,1 total
step
'Make a Cooking Fire |cast Cooking Fire##818
.create Talador Surf and Turf##160984,Cooking,1 total
step
label "buyah"
'If you have an Auction Building in your Garrison, you can use that. Otherwise:
#include "auctioneer"
.buy 1 Blackrock Barbeque##111449
.buy 1 Blackrock Ham##111433
.buy 1 Braised Riverbeast##111436
.buy 1 Calamari Crepes##111453
.buy 1 Clefthoof Sausages##111438
.buy 1 Fat Sleeper Cakes##111444
.buy 1 Fiery Calamari##111445
.buy 1 Frosty Stew##111450
.buy 1 Gorground Chowder##111454
.buy 1 Grilled Gulper##111441
.buy 1 Grilled Saberfish##111456
.buy 1 Hearty Elekk Steak##111431
.buy 1 Pan-Seared Talbuk##111434
.buy 1 Rylak Crepes##111437
.buy 1 Saberfish Broth##111455
.buy 1 Skulker Chowder##111446
.buy 1 Sleeper Surprise##111452
.buy 1 Steamed Scorpion##111439
.buy 1 Sturgeon Stew##111442
.buy 1 Talador Surf and Turf##111447
step
label "NOMS"
.' Sample the Blackrock Barbeque |achieve 9502/1 |use Blackrock Barbeque##111449
step
.' Sample the Blackrock Ham |achieve 9502/2 |use Blackrock Ham##111433
step
.' Sample the Braised Riverbeast |achieve 9502/3 |use Braised Riverbeast##111436
step
.' Sample the Calamari Crepes |achieve 9502/4 |use Calamari Crepes##111453
step
.' Sample the Clefthoof Sausages |achieve 9502/5 |use Clefthoof Sausages##111438
step
.' Sample the Fat Sleeper Cakes |achieve 9502/6 |use Fat Sleeper Cakes##111444
step
.' Sample the Fiery Calamari |achieve 9502/7 |use Fiery Calamari##111445
step
.' Sample the Frosty Stew |achieve 9502/8 |use Frosty Stew##111450
step
.' Sample the Gorground Chowder |achieve 9502/9 |use Gorground Chowder##111454
step
.' Sample the Grilled Gulper |achieve 9502/10 |use Grilled Gulper##111441
step
.' Sample the Grilled Saberfish |achieve 9502/11 |use Grilled Saberfish##111456
step
.' Sample the Hearty Elekk Steak |achieve 9502/12 |use Hearty Elekk Steak##111431
step
.' Sample the Pan-Seared Talbuk |achieve 9502/13 |use Pan-Seared Talbuk##111434
step
.' Sample the Rylak Crepes |achieve 9502/14 |use Rylak Crepes##111437
step
.' Sample the Saberfish Broth |achieve 9502/15 |use Saberfish Broth##111455
step
.' Sample the Skulker Chowder |achieve 9502/16 |use Skulker Chowder##111446
step
.' Sample the Sleeper Surprise |achieve 9502/17 |use Sleeper Surprise##111452
step
.' Sample the Steamed Scorpion |achieve 9502/18 |use Steamed Scorpion##111439
step
.' Sample the Sturgeon Stew |achieve 9502/19 |use Sturgeon Stew##111442
step
.' Sample the Talador Surf and Turf |achieve 9502/20 |use Talador Surf and Turf##111447
step
'Congratulations, you have earned the _Draenor Cuisine_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\General Achievements\\Everything Is Awesome",[[
description Throw Twenty Awesomefish.
condition end achieved(9547)
step
.' For this achievement, you will either need to buy _20 Awesomefish_ or gather them yourself.
.' Click here to buy from the Auction. |confirm
.' Click here to fish them up. |confirm |next "fish"
step
#include "auctioneer"
.collect 20 Awesome Fish##118414 |next "toss"
step
label "fish"
.' Fish in the water here |cast Fishing##7620 |goto Frostfire Ridge/0 41.0,65.4
.collect 20 Awesome Fish##118414
step
.' Fish in the water here |cast Fishing##7620 |goto Shadowmoon Valley D 27.5,7.0
.collect 20 Awesome Fish##118414
|only Alliance
step
label "toss"
.' Throw 20 fish at random players in Orgrimmar |goto Orgrimmar 50.8,77.5 |tip Since the cooldown is 1 minute, It may be in your best interest to do this while you are doing something else
.' 20 fish thrown at other players |achieve 9547/1
step
.' Congratulations, you have earned the _Everything Is Awesome_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\General Achievements\\Got My Mind On My Draenor Money",[[
description Loot 10,000 gold in Draenor.
condition end achieved(9487)
step
_Loot_ 10,000 gold in Draenor |tip The achievemnet is measured in copper
|achieve 9487/1
step
Congratulations, you have _earned_ the Got My Mind On My Draenor Money Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\A Demidos of Reality",[[
description Defeat Demidos, Devourer of Lights in Socrethar's Rise.
condition end achieved(9437)
step
This achievement _can only be completed_ during the Assault on Socrethar's Rise
accept Assault on Socrethar's Rise##36691 |goto Frostwall 40.8,51.8
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Defeat_ Demidos, Devourer of Lights in Socrethar's Rise
kill Demidos##84911 |achieve 9437 |goto Shadowmoon Valley D 46.0,71.7
step
Congratulations, you have _earned_ the A Demidos of Reality Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\A-VOID-ance",[[
description Defeat Kenos without using Void Implosion to slay any Coalesced Void Fragments in the Shadowmoon Enclave.
condition end achieved(9433)
step
This achievement _can only be completed_ during the Assault on Pillars of Fate daily
accept Assault on Pillars of Fate##36689 |goto Frostwall 40.8,51.8
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Defeat_ Kenos without using Void Implosion to slay any Coalesced Void Fragments in the Shadowmoon Enclave
kill Kenos the Unraveler##85037 |achieve 9433 |goto Spires of Arak 70.4,24.2
step
Congratulations, you have _earned_ the A-VOID-ance Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Ancient No More",[[
description Defeat all of the rare creatures in the Everbloom Wilds.
condition end achieved(9678)
step
_Slay_ the following rare elite in the Everbloom Wilds |tip The will more than likely require some help from friends
kill Swift Onyx Flayer##88582
|achieve 9678/1 |goto Gorgrond 71.4,34.8
step
_Slay_ the following rare elite in the Everbloom Wilds |tip The will more than likely require some help from friends
kill Basten##86257
|achieve 9678/3 |goto Gorgrond 69.2,44.6
step
_Slay_ the following rare elite in the Everbloom Wilds |tip The will more than likely require some help from friends
kill Alkali##86268
|achieve 9678/5 |goto Gorgrond 71.0,39.0
step
_Slay_ the following rare elite in the Everbloom Wilds |tip The will more than likely require some help from friends
kill Firestarter Grash##88580
|achieve 9678/7 |goto Gorgrond 72.8,35.8
step
_Slay_ the following rare elite in the Everbloom Wilds |tip The will more than likely require some help from friends
kill Hunter Bal'ra##88672
|achieve 9678/9 |goto Gorgrond 55.0,46.6
step
_Slay_ the following rare elite in the Everbloom Wilds |tip The will more than likely require some help from friends
kill Mogamago##88586
|achieve 9678/2 |goto Gorgrond 61.8,39.3
step
_Slay_ the following rare elite in the Everbloom Wilds |tip The will more than likely require some help from friends
kill Venolasix##86266
|achieve 9678/4 |goto Gorgrond 63.8,31.6
step
_Slay_ the following rare elite in the Everbloom Wilds |tip The will more than likely require some help from friends
kill Depthroot##82058
|achieve 9678/6 |goto Gorgrond 57.6,35.8
step
_Slay_ the following rare elite in the Everbloom Wilds |tip The will more than likely require some help from friends
kill Grove Warden Yal##88583
|achieve 9678/8 |goto Gorgrond 59.6,43.0
step
Congratulations, you have _earned_ the Ancient No More Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Arak Star",[[
description Complete the Spires of Arak bonus objectives listed below.
condition end achieved(9605)
step
label "start"
_Click_ the Spires of Arak bonus objectives listed below to complete them
The Howling Crag |achieve 9605/1 |confirm |next "hcrag"
Bloodmane Pridelands |achieve 9605/2 |confirm |next "blands"
The Writhing Mire |achieve 9605/3 |confirm |next "wmire"
Bladefist Hold |achieve 9605/4 |confirm |next "bhold"
step
label "hcrag"
_Follow_ the path |goto Spires of Arak 60.6,38.2 < 10
_Run through_ the hills avoiding mobs |goto Spires of Arak 60.0,37.9 < 10
_Follow_ the path |goto Spires of Arak 58.6,32.5 < 20
_Run on_ the road |goto Spires of Arak 59.0,27.4 < 20
accept Bonus Objective: The Howling Crag##36590 |goto 61.5,25.1
stickystart "thc1"
step
accept Bonus Objective: The Howling Crag##36590
_Go down_ the ramp |goto Spires of Arak/0 63.8,25.3 < 20
_Follow_ the path |goto Spires of Arak 65.0,25.1 < 20
_Enter_ the cave |goto 64.8,24.1 < 20
from Insane Nullifier##85902
_Distrupt_ the Ritual of the Void |q Bonus Objective: The Howling Crag##36590/4 |goto Spires of Arak/0 63.0,23.2
step
accept Bonus Objective: The Howling Crag##36590
_Leave_ the cave | goto Spires of Arak 65.0,24.2 < 20
_Enter_ the cave |goto Spires of Arak/0 64.8,25.8
_Follow_ the path in the cave |goto Spires of Arak 63.8,25.8 < 10
from Apexis Assault Construct##77767+ |tip There are 3 of them in the corners of this room in the cave.
collect 3 Apexis Keystone##116766 |n
_Click_ 3 Apexis Pylons |goto Spires of Arak/0 63.9,27.8 |tip They look like huge rotating floating crystals with yellow light beams shooting from them
kill Stored Projection##85887 |q Bonus Objective: The Howling Crag##36590/6 |goto 64.0,27.6
step
accept Bonus Objective: The Howling Crag##36590
_Follow_ the path in the cave |goto Spires of Arak 63.8,25.8 < 10
_Leave_ the cave |goto Spires of Arak/0 64.8,25.8
_Enter_ the cave |goto Spires of Arak/0 66.7,26.5 < 20
from Vile Siphonmaster##77767
_Disrupt_ the Ritual of Siphoning |q Bonus Objective: The Howling Crag##36590/3 |goto Spires of Arak/0 68.5,26.3
step
accept Bonus Objective: The Howling Crag##36590
_Leave_ the cave |goto Spires of Arak/0 66.7,26.5 < 20
_Enter_ the cave |goto 65.2,27.0 < 20
from Crazed Obliterator##85901
_Disrupt_ the Ritual of Destruction |q Bonus Objective: The Howling Crag##36590/5 |goto Spires of Arak/0 63.7,26.2
step
accept Bonus Objective: The Howling Crag##36590
_Leave_ the cave |goto Spires of Arak 65.5,27.2 < 20
_Follow_ the path up |goto Spires of Arak 66.8,30.8 < 10
click Rylak Egg##177853 |tip They look like a big gray eggs in nests on the ground around this area.
_Destroy_ #5# Rylak Eggs |q Bonus Objective: The Howling Crag##36590/2 |goto Spires of Arak 67.2,28.0
More eggs can be _found_ on this cliff [64.2,26.9]
Even more eggs can be _found_ on this cliff [63.2,23.6]
step "thc1"
accept Bonus Objective: The Howling Crag##36590
from Irradiated Jawbreaker##86044, Raving Venomslasher##85893, Twisted Bilecaster##85894
kill 15 Pale Orcs |q Bonus Objective: The Howling Crag##36590/1
|achieve 9605/1
_Click_ here to return to the menu |confirm always |next "start"
step
label "blands"
_Run_ on the sand along the edge of the water |goto Spires of Arak 38.4,63.0 < 10
_Keep following_ the path and _go over_ this hill |goto Spires of Arak 42.3,65.5 < 10
accept Bonus Objective: Bloodmane Pridelands##36660 |goto Spires of Arak 44.0,66.2
stickystart "bmb1"
stickystart "prisonerposts"
step
accept Bonus Objective: Bloodmane Pridelands##36660
kill Brokenfang##86076 |q Bonus Objective: Bloodmane Pridelands##36660/3 |goto Spires of Arak/0 45.1,65.0
step
accept Bonus Objective: Bloodmane Pridelands##36660
_Follow_ the path |goto Spires of Arak 46.6,68.5 < 20
kill Ralshira##86135 |q Bonus Objective: Bloodmane Pridelands##36660/4 |goto Spires of Arak/0 49.4,70.2
step
accept Bonus Objective: Bloodmane Pridelands##36660
_Follow_ the path |goto Spires of Arak 48.7,71.3 < 10
_Jump down_ these rocky hills |goto Spires of Arak 49.2,74.0 < 10
kill Shadowclaw##86138 |q Bonus Objective: Bloodmane Pridelands##36660/5 |goto Spires of Arak/0 50.5,77.1
step "bmb1"
accept Bonus Objective: Bloodmane Pridelands##36660
from Bloodmane Bonereaver##85896+, Bloodmane Shortfang##85892+, Bloodmane Earthbinder##85897+, Bloodmane Longclaw##85900+
kill 15 Bloodmane Saberon |q Bonus Objective: Bloodmane Pridelands##36660/1 |goto Spires of Arak/0 46.4,68.5
step "prisonerposts"
accept Bonus Objective: Bloodmane Pridelands##36660
clicknpc Prisoner Post##86159 |tip They look like tan wooden pillars with arrakoas tied to them all around this area. They can be in the caves also, so be sure to check those as well.
_Free_ #6# Captured Ravenspeakers |q Bonus Objective: Bloodmane Pridelands##36660/2 |goto Spires of Arak/0 48.3,70.0
|achieve 9605/2
_Click_ here to return to the menu |confirm always |next "start"
step
label "wmire"
_Go through_ the doorway |goto Spires of Arak 37.0,55.2 < 10
_Follow_ the road |goto Spires of Arak 37.4,52.3 < 10
_Go through_ the doorway |goto Spires of Arak 38.9,50.0 < 10
_Follow_ the road |goto Spires of Arak 39.0,48.0 < 20
_Run around_ the hills |goto Spires of Arak 38.0,45.3 < 10
accept Bonus Objective: The Writhing Mire##35649 |goto 36.70,45.36
stickystart "bonusmire"
stickystart "toxinbarrels"
step
accept Bonus Objective: The Writhing Mire##35649
kill Taskmaster Banegore##85219 |q Bonus Objective: The Writhing Mire##35649/1 |goto Spires of Arak/0 32.3,47.4
step
accept Bonus Objective: The Writhing Mire##35649
kill 5 Varashian Vilefang##85429+ |q Bonus Objective: The Writhing Mire##35649/3 |goto Spires of Arak/0 32.1,43.9
step "toxinbarrels"
accept Bonus Objective: The Writhing Mire##35649
click Barrel of Harvested Toxin##11599 |tip They look like wooden barrels with an orange ring in the middle
_Destroy_ #3# Barrels of Harvested Toxin |q Bonus Objective: The Writhing Mire##35649/2 |goto Spires of Arak/0 33.3,43.3
step  "bonusmire"
accept Bonus Objective: The Writhing Mire##35649
from Shattered Hand Blade##82130+, Shattered Hand Flesh-Sculpter##85214+, Shattered Hand Grunt##85461+
kill 20 Shattered Hand |q Bonus Objective: The Writhing Mire##35649/4 |goto Spires of Arak/0 32.1,43.9
|achieve 9605/3
_Click_ here to return to the menu |confirm always |next "start"
step
label "bhold"
_Run up_ the path |goto Spires of Arak 30.9,38.0 < 20
accept Bonus Objective: Bladefist Hold##36792 |goto 31.17,34.04 |tip There are Elite kills here if you find you cannot handle them you may need to ask for help.\
stickystart "bonusbladefist1"
stickystart "bonusbladefist2"
stickystart "iron grenades"
step
accept Bonus Objective: Bladefist Hold##36792
_Enter_ the cave |goto Spires of Arak/0 30.0,31.6 < 10
kill Brood Mother Xylax##86455 |q Bonus Objective: Bladefist Hold##36792/4 |goto Spires of Arak/0 30.7,29.7  |tip She's Elite so you may need a group
step "bonusbladefist1"
accept Bonus Objective: Bladefist Hold##36792
_Leave_ the cave |goto Spires of Arak/0 30.0,31.6 < 10
kill 12 Bladefist Skitterer##86294 |q Bonus Objective: Bladefist Hold##36792/2 |goto Spires of Arak/0 30.1,32.9
step
accept Bonus Objective: Bladefist Hold##36792
_Follow the path_ up the mountain |goto Spires of Arak 30.3,31.7 < 10
_Turn left_ to the arena |goto Spires of Arak/0 31.6,29.4 < 20
kill Bagdoth Goredrinker##86461 |q Bonus Objective: Bladefist Hold##36792/5 |goto Spires of Arak/0 30.5,27.4 |tip He's Elite so you may need a group
step "iron grenades"
accept Bonus Objective: Bladefist Hold##36792
clicknpc Iron Grenade##86524 |tip They look like spiked metal balls laying on the ground all around this area
_Detonate_ #6# Iron Grenades |q Bonus Objective: Bladefist Hold##36792/3 |goto Spires of Arak/0 30.5,28.9 |tip Click the button that appears in the center of your screen and THROW IT FAST! before it explodes
You can _find_ more around [Spires of Arak 29.1,27.5]
step
accept Bonus Objective: Bladefist Hold##36792
_Follow_ the path |goto Spires of Arak 29.2,27.4 < 20
_Enter_ the building |goto Spires of Arak 28.0,27.3 < 10
_Run up_ the stairs all the way to the top |goto Spires of Arak 27.7,27.1 < 10
kill Val'dune Fleshcrafter##86482 |q Bonus Objective: Bladefist Hold##36792/6 |goto Spires of Arak/0 27.9,26.9 |tip He's Elite so you may need a group
step "bonusbladefist2"
accept Bonus Objective: Bladefist Hold##36792
from Shattered Hand Brawler##86285+, Shattered Hand Cutter##86296+, Bladefist Ravager##86286+, Shattered Hand Blood-Twister##86295+, Shattered Hand Dominator##86416+, Shattered Hand Orc##86399+
kill 25 Shattered Hand Orc |q Bonus Objective: Bladefist Hold##36792/1 |goto Spires of Arak/0 30.5,27.4
|achieve 9605/4
_Click_ here to return to the menu |confirm always |next "start"
step
.' Congratulations, you have _earned_ the Arak Star Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Frostfire Fridge",[[
description Complete the 3 Bonus Objectives in Frostfire Ridge.
condition end achieved(9606)
step
'_Go down_ the icy ramp |goto Frostfire Ridge/0 21.3,44.4 < 20
..accept 34505 |goto Frostfire Ridge/0 26.1,52.3
.click Frost Wolf Howler##78910, Frostwolf Grunt##78870
.' 0/12 Frostwolves thawed  |q Bonus Objective: Forbidden Glacier##34505/2 |goto Frostfire Ridge 26.1,51.5
.kill 1 Malevolent Breath##78791
.' 1/10 Malevolent Breath slain  |q Bonus Objective: Forbidden Glacier##34505/1
step
..accept 33145 |goto Frostfire Ridge/0 65.91,47.46
stickystart "1"
step
.clicknpc Captured Frost Wolf##73284
.' Captured Frostwolves Freed |q Bonus Objective: Grimfrost Hill##33145/2 |count 1 |goto Frostfire Ridge/0 68.3,47.9
step
.clicknpc Captured Frost Wolf##73284
.' Captured Frostwolves Freed |q Bonus Objective: Grimfrost Hill##33145/2 |count 2 |goto Frostfire Ridge/0 67.2,46.7
step
.clicknpc Captured Frost Wolf##73284
.' Captured Frostwolves Freed |q Bonus Objective: Grimfrost Hill##33145/2 |goto Frostfire Ridge/0 67.2,45.4
step "1"
..accept 33145 |goto 67.75,47.01
.kill 8 Grimfrost Drudge##72955, Grimfrost Wolfslayer##72953, Grimfrost Lavaslinger##72987 |q Bonus Objective: Grimfrost Hill##33145/1 |goto 67.75,47.01
step
.' _Follow_ the open path back |goto Frostfire Ridge/0 61.5,17.7
..accept 34501 |goto 65.68,18.13
stickystart "2"
step
.' _Enter_ the cave |goto 65.7,18.1
.kill Maggle##78896 |q Bonus Objective: Frostbite Hollow##34501/1
step
.' _Follow the path back |goto Frostfire Ridge/9 40.2,41.9
.' _Jump down_ the ledge |goto 51.1,48.8
.kill Feagel the Biter##78893 |q Bonus Objective: Frostbite Hollow##34501/2 |goto 66.58,19.07
step
.' _Go through_ the tunnel |goto Frostfire Ridge/9 55.1,56.1 < 10
.kill Frostscreamer Raeger##78764 |q Bonus Objective: Frostbite Hollow##34501/3 |goto 68.51,57.03
step "2"
.kill 10 Shiverblood Slasher##78758, Shiverblood Frostbinder##78869 |q Bonus Objective: Frostbite Hollow##34501/4 |goto 47.36,28.94
step
.' Congratulations, you have earned the _Frostfire Fridge_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Between Arak and a Hard Place",[[
description Complete the Spires of Arak storylines.
condition end achieved(8926)
step
.' _Complete the Spires of Arak storylines_ listed below:
.' Shadows Gather |achieve 8926/1
.' Admiral Taylor's Garrison |achieve 8926/2
.' Secrets of the Talonpriests |achieve 8926/3
.' The Gods of Arak |achieve 8926/4
.' Legacy of the Apexis |achieve 8926/5
.' Terokk's Legend |achieve 8926/6
.' Establishing Axefall |achieve 8926/7
.' Pinchwhistle Gearworks |achieve 8926/8
.' When the Raven Swallows the Day |achieve 8926/9
.' _Please refer to our Spires of Arak leveling guide_ to earn this achievement.
step
.' Congratulations, you have earned the _Between Arak and a Hard Place_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Bobbing for Orcs",[[
description Dispose of 40 floating orcs in Shattrath City.
condition end achieved(9635)
step
This achievement _can only be completed_ during the Assault on Shattrath Harbor daily
accept Assault on Shattrath Harbor##36667 |goto Frostwall 40.8,51.8
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Drag_ the floating orc corpses to dry land and _set them on fire_
_Dispose_ of #40# floating orcs in Shattrath City |achieve 9635 |goto Talador 45.8,22.9
step
Congratulations, you have _earned_ the Bobbing for Orcs Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Breaker of Chains",[[
description Free 50 slaves from captivity in the Bloodmaul Stronghold.
condition end achieved(9533)
step
This achievement _can only be completed_ during the Assault on Stonefury Cliffs daily
accept Assault on Stonefury Cliffs##36669 |goto Frostwall 40.8,51.8
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Free_ #50# slaves from captivity in the Bloodmaul Stronghold |achieve 9533 |goto Frostfire Ridge 43.0,15.6 |tip They must be the slaves in cages and not the slaves that are working
step
Congratulations, you have _earned_ the Breaker of Chains Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Broke Back Precipice",[[
description Defeat the powerful foes within Broken Precipice.
condition end achieved(9571)
step
This achievement _can only be completed_ during the Assault on the Broken Precipice daily
accept Assault on the Broken Precipice##36694 |goto Frostwall 40.8,51.8
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Defeat_ the foes within Broken Precipice listed below
kill Durg Spinecrusher##87788 |tip Seems to be on a 30 minute respawn timer
|achieve 9571/1 |goto Nagrand D 36.0,23.6
kill Bonebreaker##87837 |tip Seems to be on a 30 minute respawn timer
|achieve 9571/2 |goto Nagrand D 38,15
kill Pit Slayer##87846 |tip Summoned by smashing the head on the pike that is located in the arena styled area of the precipice
|achieve 9571/3 |goto Nagrand D 38.8,13.8
step
Congratulations, you have _earned_ the Broke Back Precipice Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Buried Treasures",[[
description Find all of the Warsong objects within Mok'gol Watchpost.
condition end achieved(9548)
step
This achievement _can be completed_ during the Assault on Assault on Mok'gol Watchpost daily
accept Assault on Mok'gol Watchpost##36693 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
Find all of the Warsong objects_ within Mok'gol Watchpost
clicknpc Garrosh's Shackles##87522 |achieve 9548/1 |goto Nagrand D 41.6,37.4 |tip Inside the hut
clicknpc Warsong Relics##87524 |achieve 9548/2 |goto Nagrand D/0 45.5,36.8 |tip Leaning against the fence (may have other locations)
clicknpc Stolen Draenei Tome##87526 |achieve 9548/4 |goto Nagrand D/0 45.1,38.2 |tip If it's not in this tower it will be in another one
step
The last three require you to _assume_ a spectral wolf form and _click_ dirt mounds |tip Be sure to dismiss any summoned pets as they will cancel the effect
kill Mok'gol Wolfsong##86659+ |tip They will drop Wolf Totems on the ground
clicknpc Wolf totem##87280
clicknpc Dirt Mound##87530
clicknpc Warsong Remains##87525 |achieve 9548/3 |tip Click dirt mounds around the area
clicknpc Wolf Pup Remains##87527 |achieve 9548/5 |tip Click dirt mounds around the area
clicknpc Gnarled Bone##87528 |achieve 9548/6 |tip Click dirt mounds around the area
step
Congratulations, you have _earned_ the Buried Treasures Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Burn it to the Ground",[[
description Burn 100 trees in the Everbloom Wilds.
condition end achieved(9667)
step
This achievement _can be completed_ during the Assault on Assault on the Everbloom Wilds daily
accept Assault on the Everbloom Wilds##36695 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
There are Iron Pyrotech corpses scattered around Everbloom Wilds which grant you a Blackrock Flamethrower when you _interact_ with them
clicknpc Iron Pyrotech##88828
_Use_ the Blackrock Flamethrower button in the middle of the screen
_Burn_ #100# trees in the Everbloom Wilds |achieve 9667 |goto Gorgrond 72.4,38.6
step
.' Congratulations, you have _earned_ the Burn it to the Ground Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\By Fire Be... Merged?",[[
description Complete the quest "Rekindling an Old Flame" without using a Kindling Flame to rekindle the essence in Magnarok.
condition end achieved(9537)
step
This achievement _can only be completed_ during the Assault on Magnarok daily
accept Assault on Magnarok##36697 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Complete_ the quest "Rekindling an Old Flame" without using a Kindling Flame to rekindle the essence in Magnarok
talk Firaga##87971
accept Rekindling an Old Flame##37204
step
_Make your way_ back down the steps wihout using a Kindling Flame to keep the flame lit |tip If you drop the flame you can pick it back up
clicknpc The Essence of Flame##87966 |goto Frostfire Ridge 69.8,37.9
turnin Rekindling an Old Flame##37204 |goto Frostfire Ridge 74.8,30.0
|achieve 9537
step
Congratulations, you have _earned_ the By Fire Be... Merged? Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Chapter I: Call of the Archmage",[[
description Begin Khadgar's legendary quest and prove yourself raid-ready by defeating the spirit of Kairozdormu.
condition end achieved(9640)
step
talk Khadgar's Servant##83858 |tip He patrols your garrison giving NPCs a tour
accept Call of the Archmage##35988 |goto Frostwall 51.4,42.0
step
talk Archmage Khadgar##83823
turnin Call of the Archmage##35988 |goto Talador 85.16,31.68
accept Spires of the Betrayer##36157 |goto Talador 85.16,31.68
step
_Que_ for the Skyreach dungeon |tip This quest can be completed on normal or heroic mode
kill High Sage Viryx##76266
get Pure Solium Band##114780 |q Spires of the Betrayer##36157/1 |goto Skyreach/2 46.6,34.9
step
talk Archmage Khadgar##83823
turnin Spires of the Betrayer##36157 |goto Talador 85.16,31.68
accept Khadgar's Task##35989 |goto Talador 85.16,31.68
step
talk Archmage Khadgar##83823
_Ask_ him "What's the plan, Khadgar?" |tip Wait for the RP to finish
turnin Khadgar's Task##35989 |goto Talador 85.16,31.68
accept Core of Flame##35990 |goto Talador 85.16,31.68
accept Core of Iron##35991 |goto Talador 85.16,31.68
accept Core of Life##35992 |goto Talador 85.16,31.68
accept Draenor's Secret Power##36158 |goto Talador 85.16,31.68
stickystart "secretpower"
step
_Que_ for the Bloodmaul Slag Mines dungeon |tip Heroic mode ONLY
kill Gug'rokk##86224
get Core of Flame##113682 |q Core of Flame##35990/1 |goto Bloodmaul Slag Mines/1 65.4,22.7
step
_Que_ for the Grimrail Depot dungeon |tip Heroic mode ONLY
kill Skylord Tovra##86228 |goto Grimrail Depot/4 8.6,51.0 |tip After the cutscene you will end up off the train where you'll find the Core of Iron
get Core of Iron##114107 |q Core of Iron##35991/1 |goto Gorgrond/0 54.9,31.9
step
_Que_ for the Everbloom dungeon |tip Heroic mode ONLY
kill Yalnu##86248
get Core of Life##114138 |q Core of Life##35992/1 |goto The Everbloom/2 45.0,72.0
step
talk Archmage Khadgar##83823
turnin Core of Flame##35990 |goto Talador 85.16,31.68
turnin Core of Iron##35991 |goto Talador 85.16,31.68
turnin Core of Life##35992 |goto Talador 85.16,31.68
step
talk Archmage Khadgar##83823
accept Tackling Teron'gor##35993 |goto Talador 85.16,31.68
step
_Que_ for the Auchindoun dungeon |tip Heroic mode ONLY
kill Teron'gor##86220
get Corrupted Blood of Teron'gor##114240 |q Tackling Teron'gor##35993/1 |goto Auchindoun/1 49.6,33.5 |tip It's contained in the blue slime puddle on the floor so don't miss it!
step
talk Archmage Khadgar##83823
turnin Tackling Teron'gor##35993 |goto Talador 85.16,31.68
step "secretpower"
_Save up_ #4986# Apexis Crystals |q Draenor's Secret Power##36158/1 |tip You don't get these back so be sure you want to spend them!
step
talk Archmage Khadgar##83823
turnin Draenor's Secret Power##36158 |goto Talador 85.16,31.68
accept Eyes of the Archmage##35994 |goto Talador 85.16,31.68
step
talk Archmage Khadgar##83823
_Tell him_ "I'm ready. Start casting!" |q Eyes of the Archmage##35994/1 |tip Defend him as he performs the ritual |goto Talador/0 84.7,31.4
step
talk Archmage Khadgar##83823
turnin Eyes of the Archmage##35994 |goto Talador 85.16,31.68
accept Fugitive Dragon##36000 |goto Talador 85.16,31.68
step
talk Archmage Khadgar##84702
turnin Fugitive Dragon##36000 |goto Nagrand D 77.13,36.87
accept The Dragon's Tale##36206 |goto Nagrand D 77.13,36.87
step
_Move to_ the first clue |q The Dragon's Tale##36206/1 |goto Nagrand D/0 78.5,35.5
step
_Move to_ the second clue |q The Dragon's Tale##36206/2 |goto Nagrand D/0 81.1,35.5
step
_Move to_ the third clue |q The Dragon's Tale##36206/3 |goto Nagrand D/0 83.3,36.5 |tip It's on top of the archway
step
_Head up_ the narrow path |goto Nagrand D/0 85.2,34.4<10
_Move to_ the fourth clue |q The Dragon's Tale##36206/4 |goto Nagrand D/0 86.7,38.2
step
_Head up_ the hill |goto Nagrand D/0 87.9,38.3<10
_Move to_ the fifth clue |q The Dragon's Tale##36206/5 |goto Nagrand D/0 89.9,35.6
step
_Locate_ Kairozdormu |q The Dragon's Tale##36206/6 |goto Nagrand D/0 92.4,31.7
|modelnpc Kairozdormu##84744
step
talk Archmage Khadgar##84702
turnin The Dragon's Tale##36206 |goto Nagrand D/0 92.34,31.44
accept Tarnished Bronze##35995 |goto Nagrand D/0 92.34,31.44
step
talk Archmage Khadgar##84702
_Tell him_ "I'll deal out the damage." |tip If you're a DPS
_Tell him_ "I'll heal us." |tip If you're a healer
_Tell him_ "I'll defend us." |tip If you're a tank
kill Spirit of Kairozdormu##84744 |q Tarnished Bronze##35995/1 |goto Nagrand D/0 92.34,31.44
step
talk Archmage Khadgar##84702
turnin Tarnished Bronze##35995 |goto Nagrand D/0 92.34,31.44
accept Power Unleashed##3600 |goto Nagrand D/0 92.34,31.44
step
talk Archmage Khadgar##83823
_Tell him_ "I'm ready, Archmage." |q Power Unleashed##3600/1 |goto Talador 85.1,31.7 |tip Wait for the RP to end
step
talk Archmage Khadgar##84702
turnin Power Unleashed##3600 |goto Nagrand D/0 92.34,31.44
accept Empire's Fall##35997 |goto Nagrand D/0 92.34,31.44
step
|achieve 9640
step
Congratulations, you have _earned_ the Chapter I: Call of the Archmage Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Charged Up",[[
description Defeat 30 Shadow Council members while under the effects of Arkonite Empowerment in Shattrath City.
condition end achieved(9634)
step
This achievement _can only be completed_ during the Assault on Shattrath Harbor daily
accept Assault on Shattrath Harbor##36667 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Stand_ near a Tainted Arkonite Crystal to get Arkonite Empowerment buff |tip Do NOT break the crystal!
_Defeat_ #30# Shadow Council members while under the effects of Arkonite Empowerment in Shattrath City |achieve 9634 |goto Talador 41.5,21.3
step
Congratulations, you have _earned_ the Charged Up Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Cut off the Head",[[
description Defeat all of the rare creatures in Shattrath City.
condition end achieved(9633)
step
_Slay_ the following rare elite in Shattrath City |tip This will more than likely require some help from friends
kill Bombardier Gu'gok##87597
|achieve 9633/1 |goto Talador 44.0,38.0
step
_Slay_ the following rare elite in Shattrath City |tip This will more than likely require some help from friends
kill Gug'tol##83019
|achieve 9633/2 |goto Talador 47.6,39.0
step
_Slay_ the following rare elite in Shattrath City |tip This will more than likely require some help from friends
kill Haakun the All-Consuming##83008 |nomodels
|achieve 9633/3 |goto Talador 48.0,25.4
step
_Slay_ the following rare elite in Shattrath City |tip This will more than likely require some help from friends
kill Felfire Consort##82992
|achieve 9633/4 |goto Talador 50.2,35.2
step
_Slay_ the following rare elite in Shattrath City |tip This will more than likely require some help from friends
kill Avatar of Socrethar##88043
|achieve 9633/5 |goto Talador 46.6,35.2
step
_Slay_ the following rare elite in Shattrath City |tip This will more than likely require some help from friends
kill Sargerei War Council##88071
|achieve 9633/6 |goto Talador 46.0,27.4
step
_Slay_ the following rare elite in Shattrath City |tip This will more than likely require some help from friends
kill Legion Vanguard##88494
|achieve 9633/7 |goto Talador 37.8,21.4
step
_Slay_ the following rare elite in Shattrath City |tip This will more than likely require some help from friends
kill Xothear, the Destroyer##82922
|achieve 9633/8 |goto Talador 38.0,14.6
step
Congratulations, you have _earned_ the Cut off the Head Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Delectable Ogre Delicacies",[[
description Gain the well fed effects from Toasted Roach Crunchies, Pickled Rat Skewers, and Charred Boar Chops at the same time in Bloodmaul Stronghold.
condition end achieved(9534)
step
This achievement _can only be completed_ during the Assault on Stonefury Cliffs daily
accept Assault on Stonefury Cliffs##36669 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
Inside the building you'll find two spawn points inside by the fire pit
You'll find a third spawn directly across from the building at a stone table |tip The spawns are random
clicknpc Toasted Roach Crunchies##82801 |tip Grants increased movement speed for 5 minutes
clicknpc Pickled Rat Skewers## |tip Grants 25% haste for 2 minutes
clicknpc Charred Boar Chops##82823 |tip Reduces damage taken by 50% for 2 minutes
|achieve 9534 |goto Frostfire Ridge 48,15
step
Congratulations, you have _earned_ the Delectable Ogre Delicacies Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Don't Let the Tala-door Hit You on the Way Out",[[
description Complete the Talador storylines.
condition end achieved(8919)
step
.' _Complete the Talador storylines_ listed below:
.' Establishing your Outpost |achieve 8919/1
.' The Battle for Shattrath |achieve 8919/2
.' The Plight of the Arakkoa |achieve 8919/3
.' In the Shadows of Auchidoun |achieve 8919/4
.' _Please refer to our Talador leveling guide_ to earn this achievement.
step
.' Congratulations, you have earned the _Don't Let the Tala-door Hit You on the Way Out_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Eggs in One Basket",[[
description Escort Arakkoa Outcasts to Outcast Darkscryer with 100 morale during Operation: Skettis Ruins.
condition end achieved(9612)
step
This achievement _can only be completed_ during the Assault on Skettis daily
accept Assault on Skettis##36688 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Escort_ Arakkoa Outcasts to Outcast Darkscryer with 100 morale during Operation: Skettis Ruins
from Skyreach Labormaster##85542+, Skyreach Dreadtalon##84303+
get 4 Talon Key##118701
_Free_ 4 Arakkoa Outcasts at once
_Kill_ any hostile Skyreach mobs in the area to gain morale |tip Get 100 morale and then escort them to quest turnin
|achieve 9612 |goto Spires of Arak 59.6,11.4
step
Congratulations, you have _earned_ the Eggs in One Basket Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Fight the Power",[[
description Defeat all of the rare creatures in The Pit.
condition end achieved(9655)
step
_Slay_ the following rare elite in The Pit |tip This will more than likely require some help from friends
kill Maniacal Madgard##86562
|achieve 9655/1 |goto Gorgrond 49.0,33.8
step
_Slay_ the following rare elite in The Pit |tip This will more than likely require some help from friends
kill Defector Dazgo##86566
|achieve 9655/2 |goto Gorgrond 48.2,21.0
step
_Slay_ the following rare elite in The Pit |tip This will more than likely require some help from friends
kill Durp the Hated##86571
|achieve 9655/3 |goto Gorgrond 50.0,23.8
step
_Slay_ the following rare elite in The Pit |tip This will more than likely require some help from friends
kill Inventor Blammo##86574
|achieve 9655/4 |goto Gorgrond 47.6,30.6
step
_Slay_ the following rare elite in The Pit |tip This will more than likely require some help from friends
kill Horgg##86577
|achieve 9655/5 |goto Gorgrond 48.6,32.6
step
_Slay_ the following rare elite in The Pit |tip This will more than likely require some help from friends
kill Blademaster Ro'gor##86579
|achieve 9655/6 |goto Gorgrond 46.0,33.6
step
_Slay_ the following rare elite in The Pit |tip This will more than likely require some help from friends
kill Morgo Kain##86582
|achieve 9655/7 |goto Gorgrond 49.0,22.6
step
Congratulations, you have _earned_ the Fight the Power Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Fish Gotta Swim, Birds Gotta Eat",[[
description Steal a fish from a Kaliri before it successfully eats it then consume it in Skettis Ruins.
condition end achieved(9613)
step
This achievement _can only be completed_ during the Assault on Skettis daily
accept Assault on Skettis##36688 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Kill_ the Kaliri that has dove into the water before it goes out of range or eats the fish
kill Darting Swift Feather##84013+
Spiced Barbed Trout _will drop_ and become a lootable object
click Spiced Barbed Trout##114238
|achieve 9613 |goto Spires of Arak 54.0,10.4
step
Congratulations, you have _earned_ the Fish Gotta Swim, Birds Gotta Eat Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Goodness Gracious",[[
description Activate 12 different Fel Runes within 6 seconds and live to tell the tale in Shattrath City.
condition end achieved(9486)
step
This achievement _can only be completed_ during the Assault on the Heart of Shattrath daily
accept Assault on the Heart of Shattrath##36699 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Head_ inland from the flightmaster |goto Talador/0 49.9,48.1<20 |n
_Make your way_ to the elevator and take it down |goto Talador/0 47.5,44.1<10 |n
_Go_ down the stairs |goto Talador/0 45.3,41.3<20 |n
_Cross the bridge_ |goto 42.7,40.4<20 |n
_Take_ the elevator up |goto 35.9,45.5<5 |c
step
The runes you use to complete this are in a house _located_ in the southwest side of Shattrath City on the upper level
_Use_ any class skills, gear, or potions that you have to boost your speed as you only have six seconds to complete this! |tip The runes do quite a bit of damage each time you hit one so having potions or a healer nearby is almost required
Activate #12# Runes within six seconds |achieve 9486 |goto Talador 34.6,46.2 |tip A speed boost is very helpful for completion
step
Congratulations, you have _earned_ the Goodness Gracious Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Heralds of the Legion",[[
description Defeat all the rare creatures in Shattrath City.
condition end achieved(9638)
step
_Slay_ the following rare elite in Shattrath City |tip This will more than likely require some help from friends
kill Orumo the Observer##87668
|achieve 9638/1 |goto Talador 31.4,47.5
step
_Slay_ the following rare elite in Shattrath City |tip This will more than likely require some help from friends
kill Lord Korinak##82920
|achieve 9638/2 |goto Talador 30.5,26.4
step
_Slay_ the following rare elite in Shattrath City |tip This will more than likely require some help from friends
kill Lady Demlash##82942
|achieve 9638/3 |goto Talador 33.8,37.8
step
_Slay_ the following rare elite in Shattrath City |tip This will more than likely require some help from friends
kill Shadowflame Terrorwalker##82930
|achieve 9638/4 |goto Talador 32.8,38.8
step
_Slay_ the following rare elite in Shattrath City |tip This will more than likely require some help from friends
kill Kurlosh Doomfang##82988
|achieve 9638/5 |goto Talador 37.2,37.6
step
_Slay_ the following rare elite in Shattrath City |tip This will more than likely require some help from friends
kill Matron of Sin##82998
|achieve 9638/6 |goto Talador 39.0,49.6
step
_Slay_ the following rare elite in Shattrath City |tip This will more than likely require some help from friends
kill Vigilant Paarthos##88436
|achieve 9638/7 |goto Talador 37.4,43.0
step
Congratulations, you have _earned_ the Heralds of the Legion Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\History of Violence",[[
description Unearth the ancient ogre relics in Broken Precipice.
condition end achieved(9610)
step
This achievement _can only be completed_ during the Assault on the Broken Precipice daily
accept Assault on the Broken Precipice##36694 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Unearth_ the ancient ogre relic listed below
.clicknpc Thak the Conqueror's Bust##88085
|achieve 9610/2 |goto Nagrand D 41.2,12.2
step
The next 3 items require you to _interact_ with a Jewel of Transformation to _break_ boulder piles in the area
clicknpc Jewel of Transformation##88064 |goto Nagrand D 36.2,17.2
clicknpc Boulder Pile##88068 |tip Smash them until you find the remaining three
clicknpc Krog the Dominator's Hammer##88082
|achieve 9610/1
clicknpc Thurg the Slave Lord's Necklace##88092
|achieve 9610/3
clicknpc Gorg the Subjugator's Idol##88088
|achieve 9610/4
step
Congratulations, you have _earned_ the History of Violence Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\I Want More Talador",[[
description Complete the Talador bonus objectives.
condition end achieved(9674)
step
label "start"
_Click_ the Talador bonus objectives listed below to complete them
Aruuna's Desolation |achieve 9674/1 |confirm |next "adeso"
Court of Souls |achieve 9674/2 |confirm |next "csouls"
Kuuro's Claim _or_ Zangarra |achieve 9674/3 |confirm |next "kuzag"
Mor'gran Logworks _or_ Orunai Coast |achieve 9674/4 |confirm |next "morcoa"
Zorkra's Fall |achieve 9674/5 |confirm |next "zfall"
step
label "adeso"
accept Bonus Objective: Aruuna's Desolation##34639
kill Frenzied Ancient##79409 |q Bonus Objective: Aruuna's Desolation##34639/1 |goto Talador 76.18,48.67 |tip He's a burning tree that walks around this area so you may have to search for him
clicknpc Panicked Young Prowler##79432
Calm #7# Young Prowlers |q Bonus Objective: Aruuna's Desolation##34639/2 |goto 75.80,49.12
|achieve 9674/1
_Click_ here to return to the menu |confirm always |next "start"
step
label "csouls"
Run through_ the tall gateway |goto Talador 45.3,71.9 < 20
_Continue_ along the stone path |goto 46.3,68.1 < 20
_Follow_ the stairs up |goto 47.6,63.8 < 20
_Go down_ the steps |goto Talador 45.9,61.0 < 20
accept Bonus Objective: Court of Souls##34667 |goto 43.95,58.16
stickystart "bonuscourt"
step
accept Bonus Objective: Court of Souls##34667
clicknpc Auchenai Ballista##79523 |tip They look like machines made of wood and stone aimed at the sky
_Left-click_ to target Shadowgaze Batriders |tip They are flying around in the sky
_Use_ the ballista's abilities to shoot them down
_Shoot down_ #4# Shadowgaze Batriders |q Bonus Objective: Court of Souls##34667/3 |goto Talador 43.8,59.2
|achieve 9674/2
step
accept Bonus Objective: Court of Souls##34667
_Click_ the yellow arrow to release from the ballista
from Warlock Soulstealer##79482+
_Release_ #8# Draenei spirits |q Bonus Objective: Court of Souls##34667/1 |goto Talador 43.2,60.9
|achieve 9674/2
step "bonuscourt"
from 10 Doombringer##79503+, Searing Ravager##79506+, Tormenting Concubine##79540+
kill 10 Demons|q Bonus Objective: Court of Souls##34667/2 |goto Talador/0 43.2,60.9
|achieve 9674/2
_Click_ here to return to the menu |confirm always |next "start"
step
label "kuzag"
Proceeding to Vol'jin's Arsenal |next "artillery1" |only if completedq(35102)
Proceeding to Arcane Sanctum Quest |next "arcane1"|only if completedq(34632)
step
label "artillery1"
accept Bonus Objective: Zangarra##37422
kill 6 Invasive Shambler##79335 |q Bonus Objective: Zangarra##37422/1 |goto Talador 81.1,29.2
kill Encroaching Giant##79333 |q Bonus Objective: Zangarra##37422/2 |goto Talador 81.1,29.2 |tip They are rare so just walk around until you find one
|achieve 9674/3
_Click_ here to return to the menu |confirm always |next "start"
step
label "arcane1"
_Follow_ the path out of Fort Wrynn |goto Talador 70.1,21.4 < 20
accept Bonus Objective: Kuuro's Claim##37421 |goto Talador 74.0,23.6
step
accept Bonus Objective: Kuuro's Claim##37421
_Enter_ the cave |goto Talador 75.3,22.4 < 10
_Follow_ the path in the cave |goto Talador 76.3,19.5 < 10
from Glowgullet Shardshedder##80013+, Glowgullet Devourer##79190+
kill 8 Goren |q Bonus Objective: Kuuro's Claim##37421/1 |goto Talador 77.5,18.2
kill 6 Iridium Geode##80072 |q Bonus Objective: Kuuro's Claim##37421/2 |goto Talador 78.4,18.6
You can find more Iridium Geodes if you run up the path at [Talador 77.5,19]
|achieve 9674/3
_Click_ here to return to the menu |confirm always |next "start"
step
label "morcoa"
Proceeding to Vol'jin's Arsenal |next "artillery2" |only if completedq(35102)
Proceeding to Arcane Sanctum Quest |next "arcane2"|only if completedq(34632)
step
label "artillery2"
accept Bonus Objective: Mor'gran Logworks##35237
kill 6 Iron Shredder##75815+ |q Bonus Objective: Mor'gran Logworks##35237/1 |goto Talador 56.8,16.4
collect 20 Lumber##112994 |q Bonus Objective: Mor'gran Logworks##35237/2 |goto Talador 56.8,16.4
|achieve 9674/4
_Click_ here to return to the menu |confirm always |next "start"
step
label "arcane2"
accept Bonus Objective: Orunai Coast##35236
kill 6 Iron Shredder##75815 |q Bonus Objective: Orunai Coast##35236/1 |goto Talador/0 59.7,13.3
click Lumber## |tip They look like cut logs on the ground in stacks of three around this area
collect 20 Lumber##112994 |q Bonus Objective: Orunai Coast##35236/2  |goto Talador/0 59.7,13.3
|achieve 9674/4
_Click_ here to return to the menu |confirm always |next "start"
step
label "zfall"
accept Bonus Objective: Zorkra's Fall##34660
clicknpc Zorka's Void Gate##79520 |tip They look like big blue and pink swirling portals around this area
_Seal_ #4# of Zorka's Void Gates |q Bonus Objective: Zorkra's Fall##34660/1 |goto Talador/0 53.9,87.5
kill 6 Shattered Hand Grunt##79544 |q Bonus Objective: Zorkra's Fall##34660/2
|achieve 9674/5
_Click_ here to return to the menu |confirm always |next "start"
step
Congratulations, you have _earned_ the I Want More Talador Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\I Was Framed!",[[
description Bait a Darkwing Matron into ambushing a Darktide Rylakinator-3000 while in Darktide Roost.
condition end achieved(9483)
step
This achievement _can only be completed_ during the Assault on Darktide Roost daily
accept Assault on Darktide Roost##36692 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Pull_ a Darktide Rylakinator-3000 next to a Darkwing Whelpling and let the flamethrower damage it until it calls its mother down
_You shouldn't touch the Whelpling!_
The _matron will attack_ the Rylakinator instead of you! |achieve 9483 |goto Shadowmoon Valley D 59.8,87.8
|modelnpc Darktide Rylakinator-3000##78328
|modelnpc Darkwing Whelpling##84927
|modelnpc Darkwing Matron##84002
step
Congratulations, you have _earned_ the I Was Framed! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\In Plain Sight",[[
description Find the Iron Horde Attack Plans in The Pit.
condition end achieved(9656)
step
This achievement _can only be completed_ during the Assault on the Pit daily
accept Assault on the Pit##36701 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
The book you're looking for _spawns_ in different areas. _Launching yourself_ to one of the areas below should yield a fruitful discovery.
clicknpc Iron Troop Launcher##85211 |goto Gorgrond 46.0,31.0
_Launch yourself_ on top of the crane here to check for the book |goto Gorgrond/0 45.8,27.2
_Launch yourself_ atop the tower in the middle of the pit to check for the book |goto Gorgrond 48,27
_Launch yourself_ atop a section of broken track at one end of the track to check for the book |goto Gorgrond/0 45.3,25.2
click Iron Horde Attack Orders |tip A brown book with a metal binding surrounding it
|achieve 9656
step
Congratulations, you have _earned_ the In Plain Sight Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Iron Wings",[[
description Use the Iron Troop Launcher in The Pit to get launched through four rings in 3 minutes.
condition end achieved(9659)
step
This achievement _can only be completed_ during the Assault on the Pit daily
accept Assault on the Pit##36701 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
clicknpc Iron Troop Launcher##85211 |goto Gorgrond 46.0,31.0
When inside the Launcher _you will see two rings_ in front of you
_Aim_ the Launcher so the line goes through the rings
You will _land on the other side_ close to another Launcher
clicknpc Iron Troop Launcher##85211 |goto Gorgrond 46.7,22.3
_Aim_ the Launcher through the same ring |tip Repeat untill you get the achievement
|achieve 9659
step
Congratulations, you have _earned_ the Iron Wings Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\It's the Stones!",[[
description Destroy 5 Draenic Darkstones in Socrethar's Rise.
condition end achieved(9436)
step
This achievement _can only be completed_ during the Assault on Socrethar's Rise
accept Assault on Socrethar's Rise##36691 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Destroy_ #5# Draenic Darkstones in Socrethar's Rise |achieve 9433
The Darkstones have up to a 1.5 hour _respawn_ time
_Click_ the stone here [Shadowmoon Valley D 46,71] |tip On Demidos' Hill behind a tree
_Click_ the stone here [Shadowmoon Valley D 49,71] |tip Behind a pumpkin farm building next to a tree
_Click_ the stone here [Shadowmoon Valley D 47,78] |tip At the very top of a rock pile
_Click_ the stone here [Shadowmoon Valley D 47,76] |tip At the very top of a rock pile
_Click_ the stone here [Shadowmoon Valley D 44.8,82.5] |tip On the ledge of the mountain
|modelnpc Draenic Darkstone##85991
step
Congratulations, you have _earned_ the It's the Stones! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Make It a Bonus",[[
description Complete the Gorgrond bonus objectives.
condition end achieved(9607)
step
label "start"
_Click_ the Gorgrond bonus objectives listed below to complete them
Brimstone Springs |achieve 9607/1 |confirm |next "bspring"
Iyun Weald |achieve 9607/2 |confirm |next "iweld"
Mistcreep Mire |achieve 9607/3 |confirm |next "mmire"
Valley of Destruction |achieve 9607/4 |confirm |next "destro"
Ruins of the First Bastion |achieve 9607/5 |confirm |next "bastion"
The Forgotten Caves |achieve 9607/6 |confirm |next "fcaves"
South Gronn Canyon or Evermorn Springs |achieve 9607/7 |confirm |next "gronn"
Stonemaul Arena or Tangleheart |achieve 9607/8 |confirm |next "arena"
Affliction Ridge or The Razorbloom |achieve 9607/9 |confirm |next "razorbl"
stickystart "lesserbrimfury"
step
label "bspring"
_Go up_ the hill |goto Gorgrond/0 44.0,55.9 < 20
accept Bonus Objective: Brimstone Springs##36603 |goto Gorgrond/0 40.4,57.5
step
kill 15 Sulfuric Ooze##85960 |q Bonus Objective: Brimstone Springs##36603/2 |goto Gorgrond/0 40.4,57.5 |tip They are found in the pools of water around the area
You can find more around [Gorgrond 40.3,60.7]
step
kill 3 Grievous Depthworm##85942 |q Bonus Objective: Brimstone Springs##36603/3 |goto Gorgrond/0 40.3,53.4
step "lesserbrimfury"
kill 8 Lesser Brimfury##85924 |q Bonus Objective: Brimstone Springs##36603/1 |goto Gorgrond 42.5,55.2
|achieve 9607/1
_Click_ here to return to the menu |confirm always |next "start"
step
label "iweld"
accept Bonus Objective: Iyun Weald##36571 |goto Gorgrond/0 62.73,53.46 |tip Avoid Biolante as you do this quest
step
click Thorny Leafling##85809 |tip They are small enemies on the ground around this area
_Punt_ #20# Thorny Leafling |q Bonus Objective: Iyun Weald##36571/2 |goto 62.73,53.46
kill 6 Weald Stinger##85807+ |q Bonus Objective: Iyun Weald##36571/3 |goto 63.08,52.74
kill 12 Thorny Stabber##80744+ |q Bonus Objective: Iyun Weald##36571/1 |goto 62.73,53.46
|achieve 9607/2
_Click_ here to return to the menu |confirm always |next "start"
step
label "mmire"
accept Bonus Objective: Mistcreep Mire##36563 |goto Gorgrond/0 52.42,67.57
step
kill 5 Lernaea Vilescale##85693 |q Bonus Objective: Mistcreep Mire##36563/1 |goto 52.42,67.57
clicknpc Hydra Egg##85786+ |tip They look like big white eggs on the ground around this area
_Break+ #25# Hydra Eggs |q Bonus Objective: Mistcreep Mire##36563/2 |goto 52.42,67.57
|achieve 9607/3
_Click_ here to return to the menu |confirm always |next "start"
step
label "destro"
accept Bonus Objective: Valley of Destruction##36480 |goto Gorgrond/0 44.7,48.2 < 15
step
kill 5 Canyon Boulderbreaker##81246 |q Bonus Objective: Valley of Destruction##36480/1 |goto 44.69,47.82
kill 20 Goren Nibbler##81775 |q Bonus Objective: Valley of Destruction##36480/2 |goto 46.07,47.61
_Break_ #15# Goren Eggs  |q Bonus Objective: Valley of Destruction##36480/3 |goto 46.22,47.20 |tip They look like clusters of gray-ish eggs on the ground around this area - walk on them to break them
|achieve 9607/4
_Click_ here to return to the menu |confirm always |next "start"
stickystart "podlingsjars"
step
label "bastion"
_Leave_ the cave |goto Gorgrond 51.4,77.6 < 10
_Follow_ the path into the valley |goto Gorgrond 50.5,77.9 < 10
_Go up_ and _follow_ the path |goto Gorgrond 50.7,80.0 < 20
accept Bonus Objective: Ruins of the First Bastion##35881
kill Malkor##83452 |q Bonus Objective: Ruins of the First Bastion##35881/3 |goto Gorgrond 52.1,81.3
step "podlingsjars"
from Frenzied Spitter##83450+, Frenzied Forager##83449+
kill 20 Frenzied Podlings |q Bonus Objective: Ruins of the First Bastion##35881/1 |goto Gorgrond 50.4,80.0
click Ancient Ogre Hoard Jar## |tip They look like brown and white containers that look like vases on the ground around this area
_Loot_ #8# Ancient Jars |q Bonus Objective: Ruins of the First Bastion##35881/2 |goto Gorgrond 50.4,80.0
|achieve 9607/5
_Click_ here to return to the menu |confirm always |next "start"
stickystart "bonuscaves"
step
label "fcaves"
_Run up_ the path |goto Gorgrond 50.2,71.2 < 30
_Go up_ the hill |goto Gorgrond 49.6,74.2 < 20
_Follow_ the path up the hill |goto Gorgrond 51.0,77.0 < 20
_Enter_ the cave |goto Gorgrond 51.4,77.6 < 10
accept Bonus Objective: The Forgotten Caves##34724 |goto 51.35,77.72
step
_Take the left path_ in the cave |goto Gorgrond 52.0,78.7 < 10
_Run or jump_ up the path next to the cave pillar |goto Gorgrond 53.4,79.5 < 10
kill Gorg the Host##76496 |q Bonus Objective: The Forgotten Caves##34724/3 |goto Gorgrond/0 53.7,79.5
step "bonuscaves"
_All_ around in the cave
kill 15 Spider Egg Sac##76548 |q Bonus Objective: The Forgotten Caves##34724/2 |goto Gorgrond/0 51.5,78.8 |tip They looks like big white wriggling cocoons
from Pale Spiderwalker##76534+, Pale Flinger##76465+
kill 12 Pale |q Bonus Objective: The Forgotten Caves##34724/1 |goto Gorgrond/0 51.5,78.8
|achieve 9607/6
_Click_ here to return to the menu |confirm always |next "start"
step
label "gronn"
Proceeding to Lowlands Lumber Yard |next "logging1" |only if completedq(36474)
Proceeding to Savage Fight Club |next "sparring1" |only if completedq(35880)
step
label "logging1"
accept Bonus Objective: South Gronn Canyon##36476
from Drywind Bonepicker##81207+, Boneyard Tunneler##81518+
kill 15 Goren or Gronnling |q Bonus Objective: South Gronn Canyon##36476/1 |goto Gorgrond 47.4,53.8
kill 10 Grom'kar Grunt##75091 |q Bonus Objective: South Gronn Canyon##36476/2 |goto Gorgrond 47.4,53.8
talk Grom'kar Peon##85540 |tip They look like orcs laying on the ground around this area
_Execute_ #8# Dying Grom'kar Peons |q Bonus Objective: South Gronn Canyon##36476/3 |goto Gorgrond 47.4,53.8
|achieve 9607/7
_Click_ here to return to the menu |confirm always |next "start"
stickystart "bloomweavers"
step
label "sparring1"
_Go around_ the huge rocks |goto Gorgrond 46.8,88.6 < 20
_Follow_ the path |goto Gorgrond 45.1,84.9 < 20
_Jump up_ into the opening of this tree house |goto Gorgrond 43.8,84.2 < 10
accept Bonus Objective: Evermorn Springs##36504
step
kill Infested Ogron##82062 |q Bonus Objective: Evermorn Springs##36504/2 |goto Gorgrond 42.8,80.6
step
_Run up_ the path |goto Gorgrond 42.5,81.9 < 20
_Follow_ the green path |goto Gorgrond 40.9,84.0 < 20
kill 3 Dew Master##81553 |q Bonus Objective: Evermorn Springs##36504/3 |goto Gorgrond 39.6,81.7
step "bloomweavers"
kill 10 Bloom Weaver##81575 |q Bonus Objective: Evermorn Springs##36504/1 |goto Gorgrond 43.5,80.0
|achieve 9607/7
_Click_ here to return to the menu |confirm always |next "start"
step
label "arena"
Proceeding to Lowlands Lumber Yard |next "logging2" |only if completedq(36474)
Proceeding to Savage Fight Club |next "sparring2" |only if completedq(35880)
stickystart "bonusstonemaul"
step
label "logging2"
_Cross_ this bridge and _follow_ the road |goto Gorgrond 44.6,71.8 < 20
_Enter_ the Stonemaul Arena area |goto Gorgrond 42.0,65.4 < 30
accept Bonus Objective: Stonemaul Arena##36566
step
'_Run up_ the wooden ramp |goto Gorgrond 41.0,66.2 < 10
kill Slave Hunter Krag##79623 |q Bonus Objective: Stonemaul Arena##36566/3 |goto Gorgrond/0 41.1,66.2
step
kill Slave Hunter Brol##79621 |q Bonus Objective: Stonemaul Arena##36566/4 |goto Gorgrond/0 40.5,66.7
step
_Run up_ the rocks |goto Gorgrond 39.7,68.1 < 10
_Enter_ the building |goto Gorgrond 39.0,68.2 < 10
kill Slave Hunter Mol##79626 |q Bonus Objective: Stonemaul Arena##36566/5 |goto Gorgrond/0 39.0,68.8
step "bonusstonemaul"
click Keg of Grog## |tip They look like large wooden barrels laying on the ground around this area (They can be in buildings, so be sure to check those)
_Destroy_ #15# Grog Kegs |q Bonus Objective: Stonemaul Arena##36566/2 |goto Gorgrond/0 40.2,66.0
from Stonemaul Guard##75819+, Stonemaul Slaver##75835+
_Slay_ #20# Stonemaul Ogres |q Bonus Objective: Stonemaul Arena##36566/1 |goto Gorgrond/0 40.2,66.0
|achieve 9607/8
_Click_ here to return to the menu |confirm always |next "start"
stickystart "tangle1"
step
label "sparring2"
_Follow_ the path |goto Gorgrond 52.2,68.4 < 20
_Go through_ the path of huge thorny vines |goto Gorgrond 56.1,71.5 < 10
accept Bonus Objective: Tangleheart##36564
step
kill Ontogen the Harvester##82372 |q Bonus Objective: Tangleheart##36564/3 |goto Gorgrond 59.9,71.1
step "tangle1"
accept Bonus Objective: Tangleheart##36564 |goto Gorgrond/0 60.6,67.0
click Pollen Pod## |tip They are yellow-orange spiky looking plant blulbs on the ground around this area.
_Destroy_ #10# Pollen Pods |q Bonus Objective: Tangleheart##36564/2 |goto Gorgrond/0 60.6,67.0
kill 15 Tangleheart Cultivator##82322 |q Bonus Objective: Tangleheart##36564/1 |goto Gorgrond/0 61.7,64.5 |tip They aren't heavily packed together so just run around this whole area and kill them when you find them
|achieve 9607/8
_Click_ here to return to the menu |confirm always |next "start"
step
label "razorbl"
Proceeding to Lowlands Lumber Yard |next "logging3" |only if completedq(36474)
Proceeding to Savage Fight Club |next "sparring3" |only if completedq(35880)
step
label "logging3"
_Leave_ the Stonemaul Arena area |goto Gorgrond 42.0,65.4 < 30
accept Bonus Objective: Affliction Ridge##36473
kill 25 Goren Gouger##80690+, Botani Greensworn##80696+, Gronnling Bonebreaker##80685+, Goren Gouger##80690+, Gronn Rockthrower##80689+, Mandragora Lifedrinker##80699+, Creeping Vine##85538+ |q Bonus Objective: Affliction Ridge##36473/1 |goto Gorgrond 43.6,64.4
step
clicknpc Ancient Seedbearer##82392+ |tip They look like big tree ents with leafy green plants as hair laying on the ground around this area
_Burn_ #5# Ancient Seedbearers |q Bonus Objective: Affliction Ridge##36473/2 |goto Gorgrond 43.6,64.4
|achieve 9607/9
_Click_ here to return to the menu |confirm always |next "start"
stickystart "infestedtoxic"
step
label "sparring3"
accept Bonus Objective: The Razorbloom##36500
_Follow_ the path up |goto Gorgrond 50.4,70.8 < 20
_Go up_ the small hill |goto Gorgrond 49.2,73.0 < 20
_Enter_ the small house |goto Gorgrond 49.3,71.4 < 10
kill Voice of Iyu##81634 |q Bonus Objective: The Razorbloom##36500/2 |goto 49.43,71.66
step "infestedtoxic"
accept Bonus Objective: The Razorbloom##36500
from Infested Orc##81617+, Infested Behemoth##82841+
kill 12 Infested |q Bonus Objective: The Razorbloom##36500/1 |goto Gorgrond 48.3,71.4
_Squish_ #25# Toxic Slimemold |q Bonus Objective: The Razorbloom##36500/3 |goto Gorgrond 48.3,71.4 |tip They are small green slimes all over the area in groups (Walk on them to squish them)
|achieve 9607/9
_Click_ here to return to the menu |confirm always |next "start"
step
Congratulations, you have earned the _Make It a Bonus_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Making the Cut",[[
description Defeat Krud the Eviscerator in the Gorian Proving Grounds.
condition end achieved(9617)
step
.' In order to do this achievement _you must be on the Garrison daily quest "Assault on the Gorian Proving Grounds"_.
.kill Krud the Eviscerator##88210
|achieve 9617 |goto Nagrand D 58.2,12.0
step
.' Congratulations, you have earned the _Making the Cut_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Mean and Green",[[
description Reach 10 stacks of Mutagen in the Everbloom Wilds.
condition end achieved(9654)
step
_Fly_ to Everbloom Outlook |goto Gorgrond/0 68.8,28.8<5
_Head South_ through the forest |goto Gorgrond/0 70.6,33.5<20
_Continue South_ through the marsh |goto Gorgrond/0 71.7,38.2<20
_Gain_ the Mutagen debuff from killing mobs in the Everbloom Wilds
_Stand_ in the green pool that will appear under their corpse to gain 1 stack of Mutagen |tip Leaving Everbloom Wilds will remove all stacks
kill Twisted Guardian##88279+, Enthralled Mutant##88394+
_Gain_ 10 stacks of Mutagen
|achieve 9654 |goto Gorgrond/0 71.6,41.8
step
Congratulations, you have _earned_ the Mean and Green Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Nagrandeur",[[
description Complete the Nagrand storylines.
condition end achieved(8928)
step
.' _Complete the Nagrand storylines_ listed below:
.' The Might of Steel and Blood |achieve 8928/1
.' The Ring of Trials |achieve 8928/2
.' The Shadow of the Void |achieve 8928/3
.' The Dark Heart of Oshu'gun |achieve 8928/4
.' Remains of Telaar |achieve 8928/5
.' Trouble at the Overwatch |achieve 8928/6
.' The Taking of Lok-rath |achieve 8928/7
.' The Legacy of Garrosh Hellscream |achieve 8928/8
.' _Please refer to our Nagrand leveling guide_ to earn this achievement.
step
.' Congratulations, you have earned the _Nagrandeur_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\On the Shadow's Trail",[[
description Complete the Shadowmoon Valley storyline "To Catch a Shadow".
condition end achieved(9529)
step
.' _Complete the Frostfire Ridge storylines_ listed below:
.' To Capture Gul'dan |achieve 9529/1
.' _Please refer to our Frostfire Ridge leveling guide_ to earn this achievement.
step
.' Congratulations, you have earned the _On the Shadow's Trail_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\One of Us! One of Us!",[[
description Gain Power Overwhelming while inside the realm of the void in the Shadowmoon Enclave.
condition end achieved(9434)
step
This achievement _can only be completed_ during the Assault on Pillars of Fate daily
accept Assault on Pillars of Fate##36689 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Click_ the Void Portal |goto Spires of Arak 72.2,23.6 |tip When you enter the portal you will enter the Twisting Nether
kill Void Fragment##86179+, Void Remnant##86550+, Void Horror##85392+, Void Spawn##85303+, Void Beast##85304+ |tip Killing these mobs will fill up your Void Attunement bar
_Gain_ the Power Overwhelming buff |achieve 9434
step
Congratulations, you have _earned_ the One of Us! One of Us! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Picky Palate",[[
description Benefit from the effects of a Prickly Guava, a Lovely Coconut, and Gorgraberries at once in Everbloom Wilds.
condition end achieved(9663)
step
This achievement _can only be completed_ during the Assault on the Everbloom Wilds daily
accept Assault on the Everbloom Wilds##36695 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
All three fruits are _scattered around_ the Everbloom Wilds area |tip They are small and difficult to see
click Gorgraberry## |tip The buff lasts for ten minutes so searching for the next isn't a total rush
click Lovely Coconut##9448 |tip The buff lasts for ten minutes so searching for the next isn't a total rush
click Prickly Guava## |tip The buff lasts for ten minutes so searching for the next isn't a total rush
|achieve 9663 |goto Gorgrond 72.4,38.6
step
Congratulations, you have _earned_ the Picky Palate Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Pillars of Draenor",[[
description Hold the power of all 3 pillars of power in the Everbloom Wilds simultaneously.
condition end achieved(9658)
step
This achievement _can only be completed_ during the Assault on the Everbloom Wilds daily
accept Assault on the Everbloom Wilds##36695 |goto Frostwall/0 41.8,51.0
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
All 3 Pillars have a 5 minute duration buff and once you get all three buffs _you get the Pillar of Power buff_
click Pillar of Creation## |goto Gorgrond 69.8,43.9
click Pillar of Rejuvenation## |goto Gorgrond 70.7,36.5
click Pillar of Life## |goto Gorgrond 73.6,42.8
|achieve 9658
step
Congratulations, you have _earned_ the Pillars of Draenor Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Planned to Fail",[[
description Destroy 10 Secret Warplans in Iron Siegeworks.
condition end achieved(9711)
step
This achievement _can only be completed_ during the Assault on the Iron Siegeworks daily |tip This daily can be picked up in zone; not sure about garrison pickup yet
accept Assault on the Iron Siegeworks##36696 |goto Frostfire Ridge 85.1,59.7
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Destroy_ #10# Secret Warplans scattered throughout the zone |achieve 9711/1 |goto Frostfire Ridge 85.8,55.4 |tip The warplans are large maps laying around with daggers stabbed into them
step
Congratulations, you have _earned_ the Planned to Fail Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Poisoning the Well",[[
description Poison 10 Kegs of Impaler Ale in Iron Siegeworks.
condition end achieved(9710)
step
This achievement _can only be completed_ during the Assault on the Iron Siegeworks daily |tip This daily can be picked up in zone; not sure about garrison pickup yet
accept Assault on the Iron Siegeworks##36696 |goto Frostfire Ridge 85.1,59.7
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Poison_ #10# Kegs of Impaler Ale scattered throughout the zone |achieve 9710/1 |goto Frostfire Ridge 85.8,55.4 |tip These seem to be places mostly inside buildings and might be campable and used multiple times
|model Keg of Impaler Ale##7490
step
Congratulations, you have _earned_ the Poisoning the Well Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Poor Communication",[[
description Burn 30 Sargerei Missives in Shattrath City.
condition end achieved(9637)
step
This achievement _can only be completed_ during the Assault on the Heart of Shattrath daily
accept Assault on the Heart of Shattrath##36699 |goto Frostfire Ridge 85.1,59.7
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Head_ inland from the flightmaster |goto Talador/0 49.9,48.1<20 |n
_Make your way_ to the elevator and take it down |goto Talador/0 47.5,44.1<10 |n
_Go_ down the stairs |goto Talador/0 45.3,41.3<20 |n
_Cross the bridge_ |goto 42.7,40.4<20 |c
step
_Burn_ #30# Sargerei Missives in Shattrath City |achieve 9637/1 |tip They are sheets of paper pinned to a wall or laying on a flat surface
These spots should be enough to go back and farm them repeatedly |tip Made easier when there's a group farming this area because most of the mobs will be dead
_Click_ for missive on the wall [Talador 37.88,43.90]
_Click_ for missive near the stairs [Talador 37.08,42.92]
_Click_ for missive on the sign [Talador 37.48,41.04]
_Click_ for missive on the wall near stairs [Talador 35.79,40.46]
_Click_ for missive pinned to the tree [Talador 34.34,39.90]
_Click_ for missive in a house on the wall [Talador 33.78,40.69]
_Click_ for missive same house on the diagonal wall above [Talador 33.78,40.69]
_Click_ for missive in a house on the bookshelf to the right [Talador 33.62,39.75]
step
Congratulations, you have _earned_ the Poor Communication Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Putting the Gore in Gorgrond",[[
description Complete the Gorgrond storylines.
condition end achieved(8923)
step
.' _Complete the Gorgrond storylines_ listed below:
.' We Need An Outpost |achieve 8923/1
.' The Sparring Arena |achieve 8923/2
.' Power of the Genesaur (or Chains of Iron) |achieve 8923/3
.' Chains of Iron (or Power of the Genesaur) |achieve 8923/3
.' The Iron Approach |achieve 8923/4
.' _Please refer to our Gorgrond leveling guide_ to earn this achievement.
step
.' Congratulations, you have earned the _Putting the Gore in Gorgrond_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Securing Draenor",[[
description Complete the Draenor bonus objectives.
condition end achieved(9562)
step
.' _Complete the Draenor bonus objectives_ listed below:
.' Assault on the Iron Siegeworks |achieve 9562/1 |goto Frostfire Ridge 87.4,56.6
.' Assault on Stonefury Cliffs |achieve 9562/2 |goto Frostfire Ridge 43.0,15.6
.' Assault on Magnarok |achieve 9562/3 |goto Frostfire Ridge 71.6,26.0
.' Assault on the Pit |achieve 9562/4 |goto Gorgrond 47.2,30.0
.' Assault on the Everbloom Wilds |achieve 9562/5 |goto Gorgrond 58.6,41.2
.' Assault on the Broken Precipice |achieve 9562/6 |goto Nagrand D 36.0,23.6
.' Challenge at the Ring of Blood |achieve 9562/7 |goto Nagrand D 55.9,15.5
.' Assault on Shattrath Harbor |achieve 9562/8 |goto Nagrand D 44.4,37.4
.' Assault on Mok'gol Watchpost |achieve 9562/9 |goto Shadowmoon Valley D 48.2,77.8
.' Assault on Socrethar's Rise |achieve 9562/10 |goto Shadowmoon Valley D 60.0,90.2
.' Assault on Darktide Roost |achieve 9562/11 |goto Spires of Arak 52.0,12.2
.' Assault on Pillars of Fate |achieve 9562/12 |goto Shadowmoon Valley D 30.2,54.0
.' Assault on Skettis |achieve 9562/13 |goto Talador 46.2,30.4
step
.' Congratulations, you have earned the _Securing Draenor_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Slagnarok",[[
description Defeat 20 creatures after slagging them with goren acid in Magnarok.
condition end achieved(9536)
step
This achievement _can only be completed_ during the Assault on Magnarok daily
accept Assault on Magnarok##36697 |goto Frostwall 40.8,51.8
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
Make your way _across_ The Cracking Plains |goto Frostfire Ridge/0 61.7,32.9<20
Head _through_ Magnarok |goto Frostfire Ridge/0 68.1,32.5<20
clicknpc Vicious Acidmaw##76905 |tip They're the ones rolling around the area
While riding the Acidnaw _aim it_ towards groups of mobs |tip Kill the mobs while they have the acid debuff
_Defeat_ #20# creatures |achieve 9536/1 |goto Frostfire Ridge 70.8,28.6
step
Congratulations, you have _earned_ the Slagnarok Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Take From Them Everything",[[
description Maintain one of the beneficial effects from destroying Sargerei supplies for 10 minutes in Socrethar's Rise.
condition end achieved(9435)
step
This achievement is _completed_ in Socrethar's Rise but _does not need_ to be done during the daily
It is best to _do this_ when it isn't the daily to reduce the number of people around to almost none
|confirm
step
In order to gain this achievement you must _maintain_ one of three buffs attainable in Socrethar's Rise
The buffs last for 2 minutes and _cannot_ be extended past 2 minutes so only use the next buff object at around 15 seconds |tip You should only need six total uses
You _cannot_ use a mix of the three it has to be the same buff for 10 consecutive minutes
It's _recommended_ that you head to the small herb garden _here_ |goto Shadowmoon Valley D 48.0,72.7
_Click_ a fruit basket in the area to gain the Draenic Pear buff |tip They are small wooden bowls filled with colorful fruits
_Kill mobs in the area_ or _wait patiently_ for the buff to almost expire before using another fruit basket |tip You should spend your two minutes finding your next source for the buff
|achieve 9435
step
Congratulations, you have _earned_ the Take From Them Everything Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\That Was Entirely Unnecessary",[[
description Punt 100 Goren Eggs in Magnarok.
condition end achieved(9535)
step
This achievement _can only be completed_ during the Assault on Magnarok daily
accept Assault on Magnarok##36697 |goto Frostwall 40.8,51.8
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
Make your way _across_ The Cracking Plains |goto Frostfire Ridge/0 61.7,32.9<20
Head _through_ Magnarok |goto Frostfire Ridge/0 68.1,32.5<20
_Punt_ #100# Goren Eggs in Magnarok |achieve 9535/1 |goto Frostfire Ridge 70.8,28.6 |tip In the lava and on the rocks in the lava little grey eggs spawn that you must kick
step
Congratulations, you have _earned_ the That Was Entirely Unnecessary Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\The Garrison Campaign",[[
description Complete the Garrison Campaign chapters.
condition end achieved(9492)
#include "H_Garrison_Campaign"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\The Power Is Yours",[[
description Combine the effects of all three types of Rune Crystals in Shattrath City.
condition end achieved(9632)
step
This achievement _can only be completed_ during the Assault on the Heart of Shattrath daily |tip This also requires a group of at least three!
accept Assault on the Heart of Shattrath##36699 |goto Frostfire Ridge 85.1,59.7
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Head_ inland from the flightmaster |goto Talador/0 49.9,48.1<20 |n
_Make your way_ to the elevator and take it down |goto Talador/0 47.5,44.1<10 |n
_Go_ down the stairs |goto Talador/0 45.3,41.3<20 |n
_Cross the bridge_ |goto 42.7,40.4<20 |c
step
This achievement _requires_ at least three people because you can only have one buff active at a time |tip So group up!
In order to complete this each person must _click on a different crystal_ and then _focus fire_ on the same mobs
Once a mob _has been debuffed by all three_ simultaneously you will complete the achievement
The best area to have access to all three crystals at once is _around the Sha'tari Rest and Recovery_ |goto Talador 33.4,40.3 |achieve 9632 |tip The furthest west building in the Residential District
step
Congratulations, you have _earned_ the The Power Is Yours Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\The Song of Silence",[[
description Defeat the elite Warsong of Mok'gol Watchpost.
condition end achieved(9541)
step
_Defeat_ the elite Warsong of Mok'gol Watchpost listed below
kill Karosh Blackwind##86959 |tip Find a friend or wait for the daily to defeat him easily
|achieve 9541/1 |goto Nagrand D 46.0,36.0
kill Brutag Grimblade##87234 |tip Find a friend or wait for the daily to defeat him easily
|achieve 9541/2 |goto Nagrand D 43.0,36.4
step
_Kill_ ogres in Mok'gol to get the Secret Meeting Details and use it to summon Krahl and Gortag
kill Mok'gol Brutalizer##72571+, Mok'gol Grunt##86657+, Mok'gol Raider##87385+ |goto Nagrand D 41.6,37.4
get Secret Meeting Details##120290
clicknpc Signal Horn##87361 |goto Nagrand D 42.0,36.8
kill Krahl Deadeye##87239 |tip Krahl and Gortag spawn together and must be defeated together
|achieve 9541/3
kill Gortag Steelgrip##87344 |tip Krahl and Gortag spawn together and must be defeated together
|achieve 9541/4
step
Congratulations, you have _earned_ the The Song of Silence Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\United We Stand",[[
description Free 10 captured guards in Shattrath City.
condition end achieved(9636)
step
This achievement _can only be completed_ during the Assault on Shattrath Harbor daily
accept Assault on Shattrath Harbor##36667 |goto Frostfire Ridge 85.1,59.7
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Following_ the route displayed on your map should net a majority of the spawn locations for the prisoners
map Talador
path loose; loop; curved
path	45.6,36.8	46.8,32.2	49.2,31.2
path	48.4,29.8	46.8,27.6	47.2,23.6
path	46.8,20.8	43.6,22.6	41.2,20.4
path	37.8,18.8	37.0,14.4	35.2,16.6
path	37.6,21.0	44.4,27.8	43.4,29.8
clicknpc Captive Sha'tari Peacekeeper##86448
clicknpc Captive Sunsworn Honor Guard##85103
_Free_ #10# captured guards in Shattrath City |achieve 9636 |goto Talador 41.5,21.3
step
Congratulations, you have _earned_ the United We Stand Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Welcome to Draenor",[[
description Complete the quest "The Dark Portal"
condition end achieved(8922)
step
..accept 34398 |goto Orgrimmar/1 49.9,77.3
step
.' _Follow_ the path back |goto Gorgrond/0 53.5,44.8
.talk 84714
.fpath Everbloom Wilds |goto Gorgrond/0 57.0,45.9
step
.talk 78423
.' Speak with Archmage Khadgar at the foot of the Dark Portal in Blasted Lands. |q The Dark Portal##34398 |goto Blasted Lands/0 54.95,50.38
step
.talk 78558
..turnin 34398 |goto 54.74,48.21
|achieve 8922
step
'Congratulations, you have the _Welcome to Draenor_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\With a Nagrand Cherry On Top",[[
description Complete the Nagrand bonus objectives.
condition end achieved(9615)
step
label "start"
_Click_ the Nagrand bonus objectives listed below to complete them |only if not achieved(9615)
You have _completed_ all of the achievements below |tip You have this earned on your account, however you can earn it on each character again |next "end" |only if achieved(9615)
Hemet's Happy Hunting Grounds |achieve 9615/1 |confirm |next "hunt"
Ironfist Harbor |achieve 9615/2 |confirm |next "harbor"
Snarlpaw Ledge |achieve 9615/3 |confirm |next "ledge"
step
label "hunt"
_Follow_ the path |goto Nagrand D 82.8,48.6 < 20
_Run up_ the path |goto Nagrand D 85.2,48.2 < 20
accept Bonus Objective: Hemet's Happy Hunting Grounds##35379 |goto Nagrand D 85.8,48.2
stickystart "nagrandprowlers"
step
accept Bonus Objective: Hemet's Happy Hunting Grounds##35379
_Run up_ the path |goto Nagrand D 87.8,48.5 < 10
_Cross_ the bridge |goto Nagrand D 88.0,46.9 < 10
kill Lupe##82205 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/2 |goto 87.46,45.94
kill Loup##82209 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/3 |goto 87.46,45.94
step
kill Big Pete##82202 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/4 |goto 88.72,43.75
step "nagrandprowlers"
kill 15 Nagrand Prowler##81902 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/1 |goto 88.49,47.46
|achieve 9615/1
_Click_ here to return to the menu |confirm always |next "start"
step
label "harbor"
_Jump down_ the ledge here |goto Nagrand D/0 44.4,74.6 < 20
accept Bonus Objective: Ironfist Harbor##34723 |goto Nagrand D/0 43.2,74.8
stickystart "oss"
step
_Enter_ the building |goto Nagrand D/0 38.1,71.2 < 20
_Go up_ the stairs |goto Nagrand D/0 37.4,70.3 < 15
kill General Kull'krosh##79588 |goto Nagrand D/0 37.5,71.6 |q Bonus Objective: Ironfist Harbor##34723/4
step
_Jump down_ here |goto Nagrand D/0 37.3,71.9 < 10
_Follow_ the coast along the water |goto Nagrand D/0 37.4,72.9 < 10
kill Rezlorg##79651 |q Bonus Objective: Ironfist Harbor##34723/3 |goto Nagrand D/0 38.2,73.4
step
_Go onto_ the docks |goto Nagrand D/0 39.1,74.8 < 20
click Iron Supply Crate## |tip They look like wooden boxes with metal trimmings on the ground around this area.
_Destroy_ #12# Dock Suppy Crates |q Bonus Objective: Ironfist Harbor##34723/2 |goto Nagrand D/0 37.5,77.6
step "oss"
from Warsong Initiate##79754+, Iron Arbalester##79584+, Iron Guard##79581+
kill 30 Orc Soldiers |q Bonus Objective: Ironfist Harbor##34723/1 |goto Nagrand D/0 39.6,74.0
|achieve 9615/2
_Click_ here to return to the menu |confirm always |next "start"
stickystart "frightenedspirits"
step
label "ledge"
'_Go down_ the large slanted rock |goto Nagrand D/0 78.5,27.9 < 20
'_Jump down_ here |goto Nagrand D 77.6,29.3 < 10
'_Jump down_ again |goto Nagrand D 77.7,28.4 < 10
accept Bonus Objective: Snarlpaw Ledge##37280
kill Boneseer Cold-Eye##88361 |q Bonus Objective: Snarlpaw Ledge##37280/3 |goto 79.88,30.08
step
from Snarlpaw Shadowfang##88363+, Snarlpaw Razortooth##88358+, Snarlpaw Bloodtracker##88365+
kill 15 Snarlpaw saberon |q Bonus Objective: Snarlpaw Ledge##37280/2 |goto 79.11,30.96
step "frightenedspirits"
talk Frightened Spirit##88811 |tip You will have to kill the ghost attacking them to release some of them
_Tell them_ "The saberon attack is over. Go now, and rest in peace."
_Release_ #6# Frightened spirits |q Bonus Objective: Snarlpaw Ledge##37280/1 |goto 78.92,30.10
|achieve 9615/3
_Click_ here to return to the menu |confirm always |next "start"
step
label "end"
Congratulations, you have _earned_ the With a Nagrand Cherry On Top Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Writing in the Snow",[[
description Find Bodrick Grey's tattered journal page in the Bloodmaul Stronghold.
condition end achieved(9530)
step
This achievement _can only be completed_ during the Assault on Stonefury Cliffs daily
accept Assault on Stonefury Cliffs##36669 |goto Frostwall 40.8,51.8
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Find_ Bodrick Grey's tattered journal page in the Bloodmaul Stronghold at one of the locations below |tip The journal spawn tends to be random
_Click here_ for this location [Frostfire Ridge 46.01,17.01]
_Click here_ for this location [Frostfire Ridge 46.64,15.65]
_Click here_ for this location [Frostfire Ridge 48.54,14.59]
_Click here_ for this location [Frostfire Ridge 40.01,11.02]
_Click here_ for this location [Frostfire Ridge 44.84,14.02]
_Click here_ for this location [Frostfire Ridge 46.62,15.64]
step
Congratulations, you have _earned_ the Writing in the Snow Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\Would You Like a Pamphlet?",[[
description Have all three incantations found in Forbidden Tomes active at once in the Shadowmoon Enclave.
condition end achieved(9432)
step
This achievement _can only be completed_ during the Assault on Pillars of Fate daily
accept Assault on Pillars of Fate##36689 |goto Frostwall 40.8,51.8
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
_Click_ the tomes at the locations below to gain 1 of 3 random buffs |tip The tomes are books with a metal spiked spine
|tip The buffs last five minutes so you need to act quickly when moving from one to the next
_Click here_ for this tome location [Spires of Arak 74.6,31.2]
_Click here_ for this tome location [Spires of Arak 74.2,27.7]
_Click here_ for this tome location [Spires of Arak 72.7,32.5]
_Click here_ for this tome location [Spires of Arak 71.7,27.9]
_Click here_ for this tome location [Spires of Arak 70.5,24.1]
_Click here_ for this tome location [Spires of Arak 69.7,20.0]
_Gain_ all three buffs at once |achieve 9432
step
Congratulations, you have _earned_ the Would You Like a Pamphlet? Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\You Can't Make a Giant Omelette",[[
description Break the Giant Rylak Egg in Darktide Roost.
condition end achieved(9479)
step
This achievement _can only be completed_ during the Assault on Darktide Roost daily
accept Assault on Darktide Roost##36692 |goto Frostwall 40.8,51.8
step
_NOTE_: You cannot progress on this achievement if your daily progress bar reached 100% or if the daily is turned in |tip You can abandon the quest and take it again for more opportunites if waiting for the next daily isn't for you
|confirm
step
kill Darktide Engineer##78339+, Darktide Engineer##78999+ |goto Shadowmoon Valley D 58.8,85.9
get Goblin Rocket Pack##115020
_Click here_ when you have found a Goblin Rocket Pack |confirm
step
_Make your way_ to the south eastern point of the island |goto Shadowmoon Valley D/0 63.0,95.4<20
_Follow_ the trail up the hill | goto Shadowmoon Valley D/0 63.0,93.0<20
_Use_ the Goblin Rocket Pack here |use Goblin Rocket Pack##115020 |goto Shadowmoon Valley D 60.6,89.2<5 |tip Click the button in the center of your screen and aim for the shelf above you
_Click_ the button again and aim for the shelf above you |goto Shadowmoon Valley D 60.8,89.0<5
_Click_ the Giant Rylak Egg in the nest |achieve 9479 |goto Shadowmoon Valley D 61.2,88.8
step
Congratulations, you have _earned_ the You Can't Make a Giant Omelette... Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Quest Achievements\\You Have Been Rylakinated!",[[
description Defeat 10 Darkwing Adolescents within 3 minutes while driving a Rylakinator-3000 in Darktide Roost.
condition end achieved(9481)
step
In order to complete this achievemnt _you must have_ the Garrison Campaign quest for Darktide Roost and _have completed_ the quest Dirty Rats in this quest line |only if not completedq(34355)
|confirm
step
kill Darktide Engineer##78339+, Darktide Engineer##78999+ |goto Shadowmoon Valley D 58.8,85.9
get Rylakinator-3000 Power Cell##116978
_Click here_ when you have found a Rylakinator-3000 Power Cell |confirm
step
clicknpc Unmanned Darktide Rylakinator-3000##86085 |tip The achievement timer instantly starts as you enter the vehicle so make sure you are ready before you jump in
kill 10 Darkwing Adolescents##85357 |achieve 9481 |goto Shadowmoon Valley D 57.6,89.4 |tip The injured ones and the whelps do NOT count towards the achievement
step
Congratulations, you have _earned_ the You Have Been Rylakinated! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Reputation Achievements\\Arakkoa Outcasts",[[
description Earn Exalted status with the Arakkoa Outcasts.
condition end achieved(9469)
step
This achievement _can be completed_ with the Arakkoa Outcasts Reputation Guide
|confirm |next "Zygor's Horde Reputations Guides\\Warlords of Draenor\\Arakkoa Outcasts"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Reputation Achievements\\Frostwolf Orcs",[[
description Earn Exalted status with the Frostwolf Orcs.
condition end achieved(9471)
step
This achievement _can be completed_ with the Frostwolf Orcs Reputation Guide
|confirm |next "Zygor's Horde Reputations Guides\\Warlords of Draenor\\Frostwolf Orcs"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Reputation Achievements\\Laughing Skull Orcs",[[
description Earn Exalted status with the Laughing Skull Orcs.
condition end achieved(9475)
step
This achievement _can be completed_ with the Laughing Skull Orcs Reputation Guide
|confirm |next "Zygor's Horde Reputations Guides\\Warlords of Draenor\\Laughing Skull Orcs"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Reputation Achievements\\Mantle of the Talon King",[[
description Complete the Terokk's Legacy storyline and earn Exalted status with the Arakkoa Outcasts.
condition end achieved(9072)
step
label "start"
_Click here_ to complete the Terokk's Legacy storyline |confirm |next "terokk" |only if not completedq(35896)
You have _completed_ the required Terokk's Legacy storyline |only if completedq(35896)
_Click here_ to proceed to the reputation guide |confirm |next "Zygor's Alliance Reputations Guides\\Warlords of Draenor\\Arakkoa Outcasts"
You have _reached_ Exalted with the Arakkoa Outcasts |only if rep('Arakkoa Outcasts')==Exalted
step
label "terokk"
talk Reshad##81770
accept Rites of the Talonpriests##35733 |goto Spires of Arak 46.49,46.65
step
talk Effigy of Terokk##82813
turnin Rites of the Talonpriests##35733 |goto 46.62,46.74
accept The Talon King##35734 |goto 46.62,46.74
step
talk Effigy of Terokk##82813
_Touch_ the wingblades to witness one of Terokk's legends
_Take Control_ of the Talon King |invehicle |q 35734
stickystart "20bloodmane"
stickystart "30bloodmane"
step
_Follow_ the beach |goto Spires of Arak 49.5,75.6 < 20
kill Pridelord Karash##82950 |q The Talon King##35734/3 |goto 45.86,66.48
step "20bloodmane"
kill 20 Bloodmane Hunter##82938 |q The Talon King##35734/2 |goto 45.86,66.48
step "30bloodmane"
kill 30 Bloodmane Shortfang##82946 |q The Talon King##35734/1 |goto 45.86,66.48
step
talk Reshad##81770
turnin The Talon King##35734 |goto 46.50,46.66
accept The Missing Piece##35897 |goto 46.49,46.66
step
talk Effigy of Terokk##82813
turnin The Missing Piece##35897 |goto 46.62,46.73
accept Terokk's Fall##35895 |goto 46.62,46.73
step
talk Effigy of Terokk##82813 |goto Spires of Arak 46.6,46.7
_Touch_ the bangle to witness Terokk's fall
_Enter_ the memory |invehicle |q 35895
step
_Find_ Lithic |q Terokk's Fall##35895/1 |goto 64.00,40.47
step
_Use_ the abilities on your hotbar to
kill 20 Crazed Outcast##83600 |q Terokk's Fall##35895/3 |goto 64.14,41.97
click Outcast Talon Guard##83716
_Use_ the Talon Kings Command ability on your hotbar to
_Rally_ #5# Talon Guards |q Terokk's Fall##35895/2 |goto 64.07,42.12
step
click The Eye of Anzu##6964 |tip It looks like an orb sitting on a small golden stand on the ground.
_Use_ the Eye of Anzu |q Terokk's Fall##35895/4 |goto 66.92,45.25
step
talk Reshad##81770
turnin Terokk's Fall##35895 |goto 46.49,46.67
step
talk Shade of Terokk##84122
turnin A Worthy Vessel##36059 |goto 46.64,46.80
accept The Avatar of Terokk##35896 |goto 46.64,46.80
step
talk Shade of Terokk##84122 |goto 46.64,46.80
_Accept_ Terokk's power
_Enter_ the memory |invehicle |q 35896
step
kill 25 Shattered Hand Gladiator##84032+ |q The Avatar of Terokk##35896/1 |goto 30.69,27.86
kill 4 Shattered Hand Pit-Master##84052+ |q The Avatar of Terokk##35896/2 |goto 30.69,27.86
kill Kargath Bladefist##84053 |q The Avatar of Terokk##35896/3 |goto 30.69,27.86 |tip You will be able to confront him once you kill the Gladiators and Pit-Masters
step
talk Reshad##81770
turnin The Avatar of Terokk##35896 |goto 46.49,46.67
|next "start"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Reputation Achievements\\Savage Friends",[[
description Earn Exalted with 3 Draenor reputations.
condition end achieved(9477)
step
.' _Earn Exalted_ with 3 Draenor reputations.
.' To earn exalted with the Arakkoa Outcasts _click here_. |confirm |next "Zygor's Horde Reputations Guides\\Warlords of Draenor\\Arakkoa Outcasts"
.' To earn exalted with the Frostwolf Orcs _click here_. |confirm |next "Zygor's Horde Reputations Guides\\Warlords of Draenor\\Frostwolf Orcs"
.' To earn exalted with the Laughing Skull Orcs _click here_. |confirm |next "Zygor's Horde Reputations Guides\\Warlords of Draenor\\Laughing Skull Orcs"
.' To earn exalted with the Steamwheedle Preservation Society _click here_. |confirm |next "Zygor's Horde Reputations Guides\\Warlords of Draenor\\Steamwheedle Preservation Society"
.' To earn exalted with the Vol'jin's Spear _click here_. |confirm |next "Zygor's Horde Reputations Guides\\Warlords of Draenor\\Vol'jin's Spear"
|achieve 9477
step
.' Congratulations, you have earned the _Savage Friends_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Reputation Achievements\\Steamwheedle Perservation Society",[[
description Earn Exalted status with the Steamwheedle Perservation Society.
condition end achieved(9472)
step
This achievement _can be completed_ with the Steamwheedle Perservation Society Reputation Guide
|confirm |next "Zygor's Alliance Reputations Guides\\Warlords of Draenor\\Steamwheedle Preservation Society"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Reputation Achievements\\Vol'jin's Spear",[[
description Earn Exalted status with the Vol'jin's Spear.
condition end achieved(9473)
step
This achievement _can be completed_ with the Vol'jin's Spear Reputation Guide
|confirm |next "Zygor's Horde Reputations Guides\\Warlords of Draenor\\Vol'jin's Spear"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Explore Draenor",[[
description Complete the Angler achievements.
condition end achieved(8935)
achieveid 8937,8939,8938,8940,8941,8942
step
label "start"
_Click_ the exploration achievements listed below to complete them
You have _completed_ all of the achievements below |tip You have this earned on your account, however you can earn it on each character again |next "end" |only if achieved(8935)
_Explore_ Shadowmoon Valley |achieve 8935/2 |confirm |next "svalley"
_Explore_ Talador |achieve 8935/4 |confirm |next "talad"
_Explore_ Gorgrond |achieve 8935/3 |confirm |next "grond"
_Explore_ Frostfire Ridge |achieve 8935/1 |confirm |next "fridge"
_Explore_ Spires of Arak |achieve 8935/5 |confirm |next "sarak"
_Explore_ Nagrand |achieve 8935/6 |confirm |next "nagra"
_OR_
_Click here_ to complete Zygor's suggested path through all of the above zones |confirm |next
step
label "svalley"
_Skipping_ next part of guide |next "+talad" |only if step:Find("+svalley1"):IsComplete()
_Proceeding_ next step |next |only if default
step
_Discover_ Socrethar's Rise |achieve 8938/10 |goto Shadowmoon Valley D 42.9,69.9
step
_Discover_ Shaz'gul |achieve 8938/8 |goto Shadowmoon Valley D 40.0,66.0
step
_Discover_ Isle of Shadows |achieve 8938/11 |goto Shadowmoon Valley D 40.1,79.2
step
_Discover_ Darktide Roost |achieve 8938/2 |goto Shadowmoon Valley D 61.1,78.1
step
_Discover_ The Shimmer Moor |achieve 8938/9 |goto Shadowmoon Valley D 58.7,58.3
step
_Discover_ Karabor |achieve 8938/7 |goto Shadowmoon Valley D 61.2,45.3
step
_Discover_ Elodor |achieve 8938/3 |goto Shadowmoon Valley D 52.3,26.7
step
_Discover_ Gloomshade Grove |achieve 8938/5 |goto Shadowmoon Valley D 40.3,26.5
step
_Discover_ Embaari Village |achieve 8938/4 |goto Shadowmoon Valley D 38.6,33.4
step
_Discover_ Anguish Fortress |achieve 8938/1 |goto Shadowmoon Valley D 32.2,23.6
step
_Discover_ Gul'var |achieve 8938/6 |goto Shadowmoon Valley D 20.5,13.6
step
label "svalley1"
_Explore_ Shadowmoon Valley |achieve 8938
step
label "talad"
_Skipping_ next part of guide |next "+grond" |only if step:Find("+talad1"):IsComplete()
_Proceeding_ next step |next |only if default
step
_Discover_ Anchorite's Sojourn |achieve 8940/10 |goto Talador 76.7,56.6
step
_Discover_ Duskfall Island |achieve 8940/3 |goto Talador 71.6,57.7
step
_Discover_ Tomb of Lights |achieve 8940/13 |goto Talador 58.9,64.8
step
_Discover_ Auchindoun |achieve 8940/2 |goto Talador 54.6,69.6
step
_Discover_ Gordal Fortress |achieve 8940/6 |goto Talador 67.7,68.8
step
_Discover_ Telmor |achieve 8940/12 |goto Talador 50.6,86.7
step
_Discover_ Gul'rok |achieve 8940/7 |goto Talador 38.5,79.3
step
_Discover_ Court of Souls |achieve 8940/4 |goto Talador 40.0,60.1
step
_Discover_ Shattrath City |achieve 8940/11 |goto Talador 41.4,43.0
step
_Discover_ Orunai Coast |achieve 8940/9 |goto Talador 51.8,26.8
step
_Discover_ Tuurem |achieve 8940/14 |goto Talador 63.3,37.4 |goto Talador 59.6,32.6
step
_Discover_ Aruuna |achieve 8940/1 |goto Talador 75.4,40.6
step
_Discover_ Zangarra |achieve 8940/15 |goto Talador 78.6,27.9
step
_Discover_ Fort Wrynn |achieve 8940/5 |goto Talador 68.0,20.3
step
_Discover_ The Path of Glory |achieve 8940/8 |goto Talador 66,10
step
label "talad1"
_Explore_ Talador |achieve 8940
step
label "grond"
_Skipping_ next part of guide |next "+fridge" |only if step:Find("+grond1"):IsComplete()
_Proceeding_ next step |next |only if default
step
_Discover_ Bastion Rise |achieve 8939/1 |goto Gorgrond 48.6,79.3
step
_Discover_ Tangleheart |achieve 8939/12 |goto Gorgrond 50.3,70.7
step
_Discover_ Crimson Fen |achieve 8939/4 |goto Gorgrond 53.9,65.0
step
_Discover_ Highpass |achieve 8939/9 |goto Gorgrond 52.9,60.7
step
_Discover_ Iyun Weald |achieve 8939/10 |goto Gorgrond 61.0,51.7
step
_Discover_ Everbloom Wilds |achieve 8939/6 |goto Gorgrond 54.4,44.5
step
_Discover_ Grimrail Depot |achieve 8939/3 |goto Gorgrond 54.4,33.3
step
_Discover_ The Pit |achieve 8939/14 |goto Gorgrond 47.6,38.7
step
_Discover_ The Iron Approach |achieve 8939/13 |goto Gorgrond 43.3,20.9
step
_Discover_ Gronn Canyon |achieve 8939/8 |goto Gorgrond 46.4,45.2
step
_Discover_ Stonemaul Arena |achieve 8939/11 |goto Gorgrond 42.5,64.5
step
_Discover_ Beastwatch |achieve 8939/2 |goto Gorgrond 45.4,71.1
step
_Discover_ Evermorn Springs |achieve 8939/7 |goto Gorgrond 42.2,77.5
step
_Discover_ Deadgrin |achieve 8939/5 |goto Gorgrond 41.4,74.1
step
label "grond1"
_Explore_ Gorgrond |achieve 8939
step
label "fridge"
_Skipping_ next part of guide |next "+sarak" |only if step:Find("+fridge1"):IsComplete()
_Proceeding_ next step |next |only if default
step
_Discover_ Bones of Agurak |achieve 8937/3 |goto Frostfire Ridge 86.2,71.2
step
_Discover_ Iron Siegeworks |achieve 8937/9 |goto Frostfire Ridge 83.7,59.4
step
_Detour_ through the tunnel in the boulders blocking the path here |goto Frostfire Ridge 78.9,55.9<5
_Discover_ Iron Waystation |achieve 8937/10 |goto Frostfire Ridge 74.7,62.7
step
_Discover_ Grom'gar |achieve 8937/8 |goto Frostfire Ridge 65.7,58.0
step
_Discover_ Grimfrost Hill |achieve 8937/7 |goto Frostfire Ridge 68.3,50.3
step
_Discover_ The Cracking Plains |achieve 8937/14 |goto Frostfire Ridge 54.6,44.1
step
_Discover_ Magnarok |achieve 8937/11 |goto Frostfire Ridge 68.1,32.0
step
_Discover_ Colossal's Fall |achieve 8937/4 |goto Frostfire Ridge 62.4,29.8
step
_Discover_ Stonefang Outpost |achieve 8937/12 |goto Frostfire Ridge 46.9,52.3
step
_Discover_ The Boneslag |achieve 8937/13 |goto Frostfire Ridge 46.5,47.4
step
_Discover_ Wor'gol |achieve 8937/15 |goto Frostfire Ridge 23.8,54.9
step
_Discover_ Bladespire Citadel |achieve 8937/1 |goto Frostfire Ridge 27.4,32.1
step
_Discover_ Frostwind Crag |achieve 8937/6 |goto Frostfire Ridge 36.1,19.3
step
_Discover_ Bloodmaul Stronghold |achieve 8937/2 |goto Frostfire Ridge 36.9,13.0
step
_Discover_ Daggermaw Ravine |achieve 8937/5 |goto Frostfire Ridge 44.8,31.2
step
label "fridge1"
_Explore_ Frostfire Ridge |achieve 8937
step
label "sarak"
_Skipping_ next part of guide |next "+nagra" |only if step:Find("+sarak1"):IsComplete()
_Proceeding_ next step |next |only if default
step
_Discover_ Skettis |achieve 8941/1 |goto Spires of Arak 45.3,18.9
step
_Discover_ The Howling Crag |achieve 8941/2 |goto Spires of Arak 61.1,25.4
step
_Discover_ Lost Veil Anzu |achieve 8941/13 |goto Spires of Arak 73.4,37.9
step
_Discover_ Sethekk Hollow |achieve 8941/10 |goto Spires of Arak 61.9,37.3
step
_Discover_ Terrace of Dawn |achieve 8941/9 |goto Spires of Arak 53.8,46.7
step
_Discover_ Windswept Terrace |achieve 8941/8 |goto Spires of Arak 47.48,52.29
step
_Discover_ Ravenskar |achieve 8941/15 |goto Spires of Arak 55,55
step
_Discover_ Veil Zekk |achieve 8941/5 |goto Spires of Arak 61.2,55.2
step
_Discover_ Pinchwhistle Gearworks |achieve 8941/14 |goto Spires of Arak 61.3,70.0
step
_Discover_ Pinchwhistle Point |achieve 8941/4 |goto Spires of Arak 57.8,85.6
step
_Discover_ Bloodmane Valley |achieve 8941/16 |goto Spires of Arak 51.0,67.2
step
_Discover_ Southport |achieve 8941/7 |goto Spires of Arak 41.7,59.9
step
_Discover_ Admiral Taylor's Garrison |achieve 8941/12 |goto Spires of Arak 39.8,49.4
step
_Discover_ Axefall |achieve 8941/17 |goto Spires of Arak 41.2,46.8
step
_Discover_ The Writhing Mire |achieve 8941/3 |goto Spires of Arak 36.8,44.0
step
_Discover_ Bladefist Hold |achieve 8941/11 |goto Spires of Arak 31.3,28.9
step
_Discover_ Veil Akraz |achieve 8941/6 |goto Spires of Arak 68.6,36.8
step
label "sarak1"
_Explore_ Spires of Arak |achieve 8941
step
label "nagra"
_Skipping_ next part of guide |next "+end" |only if step:Find("+nagra1"):IsComplete()
_Proceeding_ next step |next |only if default
step
_Discover_ The Ring of Trials |achieve 8942/13 |goto Nagrand D 79.7,49.8
step
_Discover_ Telaar |achieve 8942/11 |goto Nagrand D 69.0,64.2
step
_Discover_ Gates of Grommashar |achieve 8942/3 |goto Nagrand D 75.0,68.1
step
_Discover_ Mar'gok's Overwatch |achieve 8942/8 |goto Nagrand D 80.5,67.1
step
_Discover_ Hallvalor |achieve 8942/4 |goto Nagrand D 84.4,56.4
step
_Discover_ Zangar Shore |achieve 8942/15 |goto Nagrand D 86.3,27.6
step
_Discover_ Throne of the Elements |achieve 8942/14 |goto Nagrand D 73.2,20.8
step
_Discover_ The Ring of Blood |achieve 8942/12 |goto Nagrand D 57.0,19.0
step
_Discover_ Broken Precipice |achieve 8942/2 |goto Nagrand D 50.4,19.3
step
_Discover_ Highmaul Harbor |achieve 8942/5 |goto Nagrand D 37.4,32.4
step
_Discover_ Mok'gol Watchpost |achieve 8942/9 |goto Nagrand D 42.7,33.2
step
_Discover_ Lok-rath |achieve 8942/7 |goto Nagrand D 53.4,43.3
step
_Discover_ Ancestral Grounds |achieve 8942/1 |goto Nagrand D 41.2,56.4
step
_Discover_ Oshu'gun |achieve 8942/10 |goto Nagrand D 47.2,61.0
step
_Discover_ Ironfist Harbor |achieve 8942/6 |goto Nagrand D 43.9,76.3
step
label "nagra1"
_Explore_ Nagrand |achieve 8942
step
label "end"
Congratulations, you have _earned_ the Explore Draenor Achievement! |achieve 8935 |only if achieved(8935)
You _have not_ explored all of Eastern Kingdoms yet |only if not achieved(8935)
|confirm |next "start" |only if not achieved(8935)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Exploration Achievements\\Grand Treasure Hunter",[[
description Discover 200 treasures of Draenor.
condition end achieved(9728)
achieveid 9726, 9727, 9728
step
This guide will walk you through _picking up random treasures_ located in Draenor
In order to loot some of these treasures _you will need to pick up Archaeology_ if you don't already have it
Only level one Archaeology is _required_
|confirm
step
_Enter_ the tower |goto Frostfire Ridge 37.6,59.7 < 5
_Go up_ the ramp |goto 37.0,59.8 < 5
.click Raided Loot##3365 |tip It's a giant black chest
Collect the Garrison Resources |goto 37.2,59.2
confirm |sticky saved
step
_Follow_ the rocky passage up |goto Frostfire Ridge 42.5,59.4 < 20
.click Forgotten Supplies##3365 |tip It looks like a bed roll
Collect the Garrison Resources |goto 43.7,55.6 |tip It's at the top of the watch tower
confirm |sticky saved
step
_Follow_ the passage back |goto Frostfire Ridge 46.0,53.0 < 20
talk Grizzled Frostwolf Veteran##74585
Tell him _Stand and Fight! Victory or death!_ |goto Frostfire Ridge 45.4,50.3 < 20
kill Thunderlord Crag-Leaper##72378 |tip There will be 2 waves with 3 enemies in each
click Dusty Chest##3365 |tip It's a small box on the ground
Collect the Frostwolf Veteran's Keepsake and Garrison Resources |goto Frostfire Ridge 45.4,50.8
confirm |sticky saved
step
Follow the path down|goto Frostfire Ridge 29.1,47.8 < 35
_Go up_ the ramp |goto 27.3,42.7 < 20
click Slave's Stash##3365
Collect the Half Empty Bottle of Prison Moonshine |goto Frostfire Ridge 27.6,42.8
confirm |sticky saved
step
_Go up_ the ramp |goto Frostfire Ridge 25.2,47.9 < 25
_Enter_ the cave |goto Frostfire Ridge/0 25.3,51.6 < 25
click Frozen Frostwolf Axe##3365 |tip It's an axe being held by a frozen orc
Collect the Icebound Frost-Singer Axe |goto Frostfire Ridge/0 24.2,48.6
confirm |sticky saved
step
_Leave_ the cave |goto Frostfire Ridge/0 25.2,51.4 < 25
_Enter_ the cave |goto Frostfire Ridge/0 19.4,50.0 < 25
click Pale Loot Sack##3365 |tip It looks like a small brown bag on the ground
Collect the Garrison Resources |goto Frostfire Ridge/0 21.6,50.7
confirm |sticky saved
step
_Leave_ the cave |goto Frostfire Ridge/0 19.4,50.0 < 25
_Follow_ the snowy ledge up |goto Frostfire Ridge/0 16.5,52.6 < 35
_Climb up_ the rock formation |goto 15.2,50.8 < 15
.click Supply Dump##3365 |tip It looks like a tiny treasure chest
Collect the Garrison Resources |goto Frostfire Ridge/0 16.1,49.8
confirm |sticky saved
step
_Pass through_ the forest |goto Frostfire Ridge/0 13.4,47.4 < 35 |tip Be sure to avoid the level 100 elites, they have a low aggro radius
_Go down_ the ledge |goto 10.5,48.4 < 20
.click Sealed Jug##3365
Collect the Waterlogged Jounral |goto Frostfire Ridge/0 9.8,45.3
confirm |sticky saved
step
_Follow_ the ledge up |goto Frostfire Ridge/0 10.9,48.5 < 35
_Cross_ the large field |goto Frostfire Ridge/0 23.3,34.7 < 40
_Enter_ the tower |goto Frostfire Ridge/0 24.5,29.4 < 10
_Go up_ the ramp |goto 24.2,28.8 < 10
Mount up and _jump across_ to the stone platform |goto Frostfire Ridge/0 24.3,27.7 < 20
click Spectator's Chest##3365 |tip It's a small box on the ground
Collect "Da Bruisery" Hot & Wroth and the Thunderbelly Mead |goto Frostfire Ridge/0 24.3,27.1
confirm |sticky saved
step
_Jump down_ the ledge here |goto Frostfire Ridge/0 24.3,25.8 < 20
_Go up_ the stairs |goto Frostfire Ridge/0 22.0,26.2 < 25
_Pass through_ the doorway |goto 23.3,24.3 < 15
click Arena Master's War Horn##3365
Collect the Arena Master's War Horn |goto Frostfire Ridge/0 23.2,25.0
confirm |sticky saved
step
_Go up_ the hill |goto Frostfire Ridge/0 24.7,22.9 < 20
_Jump down_ the ledge here |goto Frostfire Ridge/0 24.1,21.7 |tip It might take a bit to jump at the right angle
click Gnawed Bone##3365
Collect the Gnawbone Knife |goto 25.5,20.4
confirm |sticky saved
step
_Go down_ the ramp |goto Frostfire Ridge/0 25.7,14.2 < 25
_Enter_ the cave |goto Frostfire Ridge/0 23.4,12.0 < 25
click Snow-Covered Strongbox##3365
Collect the gold |goto Frostfire Ridge/0 24.0,12.9
confirm |sticky saved
step
goto Frostfire Ridge/0 20.0,13.0
click Lucky Coin##3365 |tip It's a tiny coin on the ground
Collect the Lucky Coin |goto Frostfire Ridge/0 19.2,12.0
step
_Go up_ the ramp and leave the cave |goto Frostfire Ridge/0 23.4,12.1 < 25
_Go down_ the ramp |goto 22.6,9.4 < 25
Fish from the giant clam pool |cast Fishing##7620 |goto Frostfire Ridge/0 21.9,9.5
confirm |sticky saved
step
_Go up_ the ramp |goto Frostfire Ridge/0 39.0,41.3 < 25
_Continue up_ the small ramp |goto 39.0,38.3 < 15
click Obsidian Petroglyph##3365 |tip It's a large stone
|goto Frostfire Ridge/0 38.3,37.8
confirm |sticky saved
step
_Go down_ the hill |goto Frostfire Ridge/0 39.0,39.7 < 25
_Cross_ the field |goto 44.4,41.9 < 25
_Follow_ the hidden path up |goto Frostfire Ridge/0 43.4,37.1 < 25
_Jump down_ the ledge here |goto 42.3,32.7 < 20
_Jump on top_ of the spears lodged into the walls |goto Frostfire Ridge/0 42.8,31.4 < 10
click Crag-Leaper's Cache##3365
Collect the Crag-Leaping Boots |goto Frostfire Ridge/0 42.7,31.7
confirm |sticky saved
step
_Go up_ the path |goto Frostfire Ridge/0 43.7,31.3 < 25
_Jump down|goto 46.5,32.5 < 25
_Go down_ the hill |goto Frostfire Ridge/0 51.3,35.9 < 25
click Young Orc Traveler##75072
_"<Take the scroll.>"_ |goto Frostfire Ridge/0 54.9,35.5 < 15
confirm |sticky saved
step
_Go up_ the hill |goto Frostfire Ridge/0 63.3,15.9 < 25
.talk 75081
_"<Take the letter.>"_ |goto 63.4,14.7
Open the Bound Traveler's Scroll |use Bound Traveler's Scroll##107270
Open the Frozen Envelope |use Frozen Envelope##107271
Combine the Frostwolf First-Fang and Snow Hare's Foot |use Frostwolf First-Fang##107272
confirm |sticky saved
step
_Follow_ the path through the plains |goto Frostfire Ridge/0 59.9,18.8 < 45
_Continue_ along the path |goto 58.3,28.3 < 45
_Go up_ the hill here |goto Frostfire Ridge/0 64.1,31.4 < 25
_Cross_ the giant boulders |goto Frostfire Ridge/0 64.3,27.9 < 25
click Survivalist's Cache##3365 |tip It looks like a tiny box resting behind some rocks
Collect the Garrison Resources |goto 64.7,25.7 < 25
confirm |sticky saved
step
kill Frozen Fury##78631+
click Frozen Orc Skeleton##3365 |tip It's a pile of bones on the ground
Collect the Rimefrost Fetish |goto Frostfire Ridge/0 57.0,52.2
confirm |sticky saved
step
_Cross_ the large open field |goto Frostfire Ridge/0 57.5,63.7 < 35
click Iron Horde Munitions##3365 |tip It's a rectangular box on the ground between a siege cannon and ammunition
Collect the Garrison Resources |goto 56.7,71.9
confirm |sticky saved
step
_Follow_ the path around your garrison |goto Frostfire Ridge/0 62.4,78.0 < 35
_Continue_ around the path |goto 66.2,80.3 < 25
click Iron Horde Supplies##3365 |tip It's a crate sitting on a cart
Collect the Garrison Resources |goto Frostfire Ridge/0 69.0,69.1
confirm |sticky saved
step
_Jump down_ the rock formation |goto Frostfire Ridge/0 66.1,67.4 < 25
_Go up_ the ramp |goto Frostfire Ridge/0 64.3,68.2 < 25
click Wiggling Egg##6478
Collect the Mysterious Egg |goto Frostfire Ridge/0 64.4,65.8
confirm |sticky saved
step
_Enter_ the tower |goto Frostfire Ridge/0 68.0,45.9
click Grimfrost Treasure##3365 |tip It looks like a cog on the ground
Collect the Garrison Resources |goto Frostfire Ridge/0 68.2,45.8
confirm |sticky saved
step
click Femur of Improbability##3365 |tip It's a bone holding up a giant boulder
Collect the Cracked Femur |goto Gorgrond/0 40.0,72.2
confirm |sticky saved
step
_Leave_ Deadgrin |goto Gorgrond/0 41.3,73.9
click Explorer Canister##3365 |tip It's underwater between large rocks
Collect the Exploratron 2000 Spare Parts |goto 40.4,76.6
confirm |sticky saved
step
_Jump_ onto the fallen tree roots |goto Gorgrond/0 44.0,73.4 < 25
click Laughing Skull Cache##3365 |tip it's a round brown bag on the ground
Collect the Garrison Resources |goto Gorgrond/0 44.2,74.2
confirm |sticky saved
step
_Follow_ the path back to Evermorn Springs |goto Gorgrond/0 44.6,79.3 < 35
_Jump_ over the vines here |goto 42.1,78.5 < 15
click Evermorn Supply Cache##3365 |tip It looks like a giant pot with a lid
Collect your random green item |goto Gorgrond/0 41.8,78.1
confirm |sticky saved
step
_Jump_ over the vines here |goto Gorgrond/0 42.0,78.5 < 20
_Follow_ the ramp up |goto 42.3,81.9 < 25
click Discarded Pack##3365
Collect your random green item |goto 42.4,83.4
confirm |sticky saved
step
_Leave_ through the small passage |goto Gorgrond/0 44.2,79.5 < 30
_Follow_ the path down |goto 44.5,82.6 < 35
_Jump_ up the rocks here |goto Gorgrond/0 45.8,88.4 < 35
_Go up_ the hill |goto Gorgrond/0 44.3,91.5 < 35
kill 1 Intimidating Baby Adder##77872
click Ockbar's Pack##3365 |tip It's a backpack that appears when you kill the Intimidating Baby Adder
Collect the Glossy Brochure |goto Gorgrond/0 43.0,92.9
confirm |sticky saved
step
goto Gorgrond/0 46.5,93.5 < 25
_Jump_ onto the wooden platform |goto Gorgrond/0 48.1,93.4 < 25
click Stashed Emergency Rucksack##3365
Collect the random green item |goto Gorgrond/0 48.0,93.4
confirm |sticky saved
step
_Follow_ the path down |goto Gorgrond/0 48.3,85.7 < 35
_Continue along_ the path |goto Gorgrond/0 48.6,78.4 < 35
_Enter_ the cave |goto Gorgrond/0 51.4,77.6 < 35
_Follow_ the path back |goto Gorgrond/0 51.7,79.6 < 35
_Continue along_ the path |goto 52.9,80.6 < 35
click Strange Looking Dagger##3365 |tip It looks like a dagger sticking out of the ground
Collect the Pale Bloodthief Dagger |goto Gorgrond/0 53.0,80.0
confirm |sticky saved
step
_Leave_ the cave |goto Gorgrond/0 51.4,77.6 < 25
_Jump_ into the hole in the ground |goto Gorgrond/0 53.0,74.6 < 20
click Remains of Balik Orecrusher##3365
Collect the Cracked Mirror##118714 |goto Gorgrond/0 53.1,74.5
confirm |sticky saved
step
_Leave_ the cave |goto Gorgrond/0 51.6,74.4 < 35
click Pile of Rubble##3365 |tip It's a pile of rocks at the top of the broken ogre head statue
Collect the random green item |	goto Gorgrond/0 44.0,70.5
confirm |sticky saved
step
_Go up_ the hill |goto Gorgrond/0 43.0,68.2 < 25
_Jump down_ the ledge here |goto 40.8,68.0 < 25
_Follow_ the ramp up |goto Gorgrond/0 39.2,65.7 < 25
_Go up_ the ramp inside of the tower |goto 39.1,68.5 < 25
click Sasha's Secret Stash##3365 |tip It's hanging from a woodem beam hanging from the tower, you may have to jump down to reach it
Collect the random green item |goto Gorgrond/0 39.1,68.0
confirm |sticky saved
step
click Odd Skull##3365 |tip It looks like a giant skull
Collect a Beastskull Vessel |goto Gorgrond/0 52.5,67.0
confirm |sticky saved
step
_Follow_ the path down |goto Gorgrond/0 55.0,65.1 < 35
_Jump onto_ the mushroom formation here |goto Gorgrond/0 57.3,65.4 < 15
click Strange Spore##3365 |tip It looks like a giant orb with orange bulbs in it
Collect the Crimson Spore##118106 |goto Gorgrond/0 57.0,65.3
confirm |sticky saved
step
_Go up_ the large hill here |goto Gorgrond/0 59.6,57.5 < 20
_Head up_ the small ramp |goto 59.5,53.7 < 25
_Cross_ the bridge |goto 58.0,54.5 < 25
click Remains of Balldir Deeprock##3365 |tip It looks like
Collect Diary of Balldir Deeprock |goto Gorgrond/0 57.8,56.0
confirm |sticky saved
step
If you chose the shredder, you can simply fly up to the mushroom with this treasure.
_Go up_ the mountain and follow the path along the ledge |goto Gorgrond/0 59.8,53.5 < 35
_Jump on top of the red mushroom here |goto Gorgrond/0 62.0,60.5 < 15
_Jump across_ to the next mushroom |goto Gorgrond/0 60.7,60.8 < 15
click Vindicator's Hammer##3365 |tip It's a hammer laying inside of a nest
Collect the Vindicator's Hammer |goto Gorgrond/0 59.4,63.7
confirm |sticky saved
step
_Go up_ the large hill here |goto Gorgrond/0 59.6,57.5 < 20
_Enter_ the cave |goto Gorgrond/0 48.6,47.2 < 15
click Warm Goren Egg##3365 |tip It's a giant egg at the back of the cave
Collect the Warm Goren Egg |goto Gorgrond/0 48.9,47.3
confirm |sticky saved
step
Go up the small hill here |goto Gorgrond/0 46.0,49.8 < 25
click Suntouched Spear##3365 |tip It looks like a big spear sticking out of the ground
Collect the Suntouched Spear|goto Gorgrond/0 45.7,49.8
confirm |sticky saved
step
_Enter_ the cave |goto Gorgrond/0 44.6,50.7 < 25
click Harvestable Precious Crystal##6477
Collect the garrison resource |goto Gorgrond/0 46.1,50.0
confirm |sticky saved
step
_Leave_ the cave |goto Gorgrond/0 44.6,50.7 < 25
_Go up_ the hill |goto Gorgrond/0 42.2,49.4 < 30
_Continue_ along the path |goto 42.2,51.6 < 25
click Brokor's Sack##3365 |tip It's a small bag on the ground
Collect Brokor's Walking Stick |goto Gorgrond/0 41.7,52.9
confirm |sticky saved
step
_Enter_ the cave |goto 43.5,48 < 25
_Go down_ the path |goto Gorgrond/18 42.1,48.9 < 25
_Continue_ along the path |goto Gorgrond/19 46.7,77.8 < 25
_Pass through_ the opening |goto Gorgrond/19 44.4,56.7 < 25
click Horned Skull##3365
Collect the garrison resources |goto Gorgrond/19 46.9,66.5
confirm |sticky saved
step
_Go up_ the hill |goto Gorgrond/19 63.2,72.5 < 25
_Leave_ the cave |goto Gorgrond/18 64.5,82.8 < 25
_Go up_ the rocky passage |goto Gorgrond/0 41.5,47.8 < 25
_Enter_ the cave |goto Gorgrond/0 42.8,44.4 < 25
click Iron Supply Chest##3365
Collect the garrison resources |goto Gorgrond/0 43.7,42.5
confirm |sticky saved
step
_Leave_ the cave |goto Gorgrond/0 42.9,44.1 < 25
click Sniper's Crossbow##3365 |tip It's a weapon that is leaning against a spyglass
Collect the Iron Lookout's Arbalest |goto Gorgrond/0 45.0,42.6
confirm |sticky saved
step
click Petrified Rylak Egg##3365 |tip It's an egg between three nests
Collect the Clump of Gems |goto Gorgrond/0 46.2,43.0
confirm |sticky saved
step
_Go up_ the hill |goto Gorgrond/0 49.0,41.0 < 25
click Weapons Cache##3365 |tip It's a circular object
Collect the Iron Horde Weapon Cache |goto Gorgrond/0 49.3,43.6
confirm |sticky saved
step
Enter the cave |goto Talador/0 75.3,22.4 < 20
_Go down_ the ramp |goto Talador/0 76.3,19.5 < 20
_Go up_ the ramp |goto 78.0,18.7 < 20
_Follow_ the path |goto 79.8,17.4 < 20
click Pure Crystal Dust##3365 |tip It looks like a giant purple pile on the ground
Collect the Iridium Inlaid Band |goto Talador/0 78.2,14.8
confirm |sticky saved
step
Leave the cave |goto Talador/0 75.1,22.5 < 35
_Cross_ the path |goto Talador/0 71.1,20.1 < 35
_Go up_ the hill |goto 69.0,15.9 < 35
click Rook's Tacklebox##3365 |tip It looks like an open box with fishing lures
Collect the Rook's Lucky Fishin' Line |goto 64.9,13.3
confirm |sticky saved
step
_Cross_ the bridge |goto Talador/0 65.0,10.9 < 35
_Carefully_ make your way down the steep ledge |goto Talador 65.2,8.8 < 35
_Enter_ the cave |goto Talador 64.8,9.4 < 35
click Jug of Aged Ironwine##3365 |tip It looks like a bag on the ground
Collect the Jugs of Ironwine |goto Talador 65.5,11.3
confirm |sticky saved
step
_Leave_ the cave |goto Talador 64.8,9.2 < 25
_Follow_ the mountain side |goto Talador/0 61.6,7.9 < 25
_Continue_ along the mountain side |goto 59.0,5.6 < 25
_Go up_ the hill |goto 56.8,6.0 < 30
click Deceptia's Smoldering Boots##3365 |tip It looks like a pair of smoking boots
Collect the Treasure |goto 58.9,12.1
confirm |sticky saved
step
_Go up_ the path |goto Talador 60.9,19.2 < 35
_Jump_ onto the platform  here |goto Talador 57.6,28.2 < 35
Climb to the top of it and jump to the square platforms along the wall
It is easier to reach the lunchbox if you are not mounted
click Foreman's Lunchbox##3365 |tip It's a small box sitting on the ledge
Collect the Tasty Talador Lunch |goto 57.4,28.7
confirm |sticky saved
step
click Amethyl Crystal##3365 |tip it's a 3 pronged crystal
Collect the Amethyl Crystal |goto Talador/0 62.1,32.4
confirm |sticky saved
step
_Cross_ the river |goto Talador/0 55.0,31.9 < 25
_Go down_ the ramp |goto 52.1,33.4 < 25
click Luminous Shell##3365 |tip It's a tiny sea shell on the ground
Collect the Snail Shell Necklace |goto 52.5,29.5
confirm |sticky saved
step
_Enter_ the cave |goto 53.3,26.2 < 15
click Ketya's Stash##3365 |tip It's a big chest sitting on the ledge of a rock formation
_Avoid_ the red circles and the lasers
Collect Stonegrinder and the garrison resources |goto Talador/0 53.9,27.7
confirm |sticky saved
step
_Leave_ the cave |goto Talador/0 53.3,26.2
_Climb_ up the boat to land |goto Talador 36.2,13.6 < 35 |tip This will go a lot faster using the Water Strider mount
click Light of the Sea##3365 |tip It looks like a giant yellow orb
Collect the gold |goto Talador 38.1,12.4
confirm |sticky saved
step
Make your way back to the shore |goto Talador 51.3,23.2 < 35
_Follow_ the hill up |goto Talador/0 51.4,33.1 < 30
_Cross_ the bridge |goto Talador/0 56.6,42.4 < 25
click Barrel of Fish##3365 |tip it's a barrel sitting at the ledge of a dock
Collect the garrison resources |goto Talador/0 62.4,48.0
confirm |sticky saved
step
click Lightbearer |tip It looks like a hammer leaning against a tree
Collect the Lightbearer |goto Talador 68.8,56.2
confirm |sticky saved
step
Follow this path, clicking the Teroclaw Nests you find at each waypoint
Please keep in mind that once you find the _Teroclaw Hatchling_, the nests will no longer be available
_
map Talador
path follow loose; loop; ants curved
path	70.8,32.0	73.5,30.7	74.6,29.3
path	74.4,34.1	72.8,35.6	72.4,37.0
path	70.9,35.5
click Teroclaw Nest##3365 |tip It's a nest with 3 eggs, one of which is broken
Collect the Teroclaw Hatchling |goto Talador
confirm |sticky saved
step
talk Iron Scout##75644
_"Search the body."_
Collect the garrison resources |goto Talador/0 75.1,36.0
step
_Enter_ the cave |goto Talador/0 78.3,35.5 < 15
_Go down_ the ramp |goto Talador/0 81.1,35.9 < 20
click Aruuna Mining Cart##3365 |tip It's a mine cart full of purple crystals
Collect the Blackrock Ore |goto 81.8,35.0
confirm |sticky saved
step
_Go up_ the ramp |goto Talador/0 81.4,36.0 < 15
_Leave_ the cave |goto 78.3,35.5 < 15
click Keluu's Belongings##3365 |tip It's a brown bag on the ground
Collect the gold |goto Talador/0 75.7,41.4
confirm |sticky saved
step
_Go up_ the hill |goto Talador/0 75.8,39.6 < 30
_Cross_ the bridge |goto 75.4,40.6 < 25
_Enter_ the building |goto Talador/0 76.1,44.4 < 15
click Relic of Aruuna##3365 |tip It's a small lockbox sitting on the balcony
Collect the Tiny Naaru Statue |goto 75.8,44.7
confirm |sticky saved
step
click Charred Sword##3365 |tip It's a large sword that is lodged into the ground
Collect the Blazegrease Greatsword |goto Talador/0 77.0,50.0
confirm |sticky saved
step
click Bright Coin##3365 |tip It's a golden coin that is underwater
Collect the Bright Coin |goto Talador/0 73.5,51.4
confirm |sticky saved
step
_Cross_ the water |goto Talador/0 72.3,56.3 < 20
_Cross_ the platform |goto 64.4,57.1 < 30
_Follow_ the path up |goto Talador/0 60.9,67.0 < 30
click Draenei Weapons##3365 |tip It's a weapon rack with a shield, 2 halbreds a sword and a mace
Collect the Surplus Auchenai Weaponry |goto Talador/0 55.3,66.7
confirm |sticky saved
step
_Follow_ the path up |goto Talador/0 64.6,69.9 < 35
_Continue_ up the path |goto Talador/0 67.4,68.6 < 35
click Grappling Hook Rope |goto Talador/0 69.0,69.1 < 5
_Cross_ the bridge |goto Talador/0 69.0,75.2 < 35
_Go up_ the stairs |goto Talador/0 68.5,79.0 < 35
_Continue up_ the stairs |goto 67.5,78.7 < 35
_Enter_ the building |goto Talador/0 65.1,79.1 < 35
click Iron Box##3365 |tip It's a small lockbox on the ground
Collect the Gordunni Skullthumper |goto 64.6,79.2
confirm |sticky saved
step
_Jump down_ here |goto Talador/0 65.3,77.7 < 10
_Continue_ down the water fall |goto 64.1,77.2 < 10 |tip Aim for the center of the water to prevent fall damage
_Jump_ to the center of the river |goto Talador/0 61.9,77.2 < 10
_Go up_ the hill |goto Talador/0 61.1,78.0 < 10
_Enter_ the cave |goto Talador 61.2,84.1 < 15
click Curious Deathweb Egg##3365 |tip It looks like a giant websack swinging back and forth
Collect the Giant Deathweb Egg |goto Talador 66.5,86.9
confirm |sticky saved
step
_Go up_ the ramp |goto Talador 64.5,86.7 < 15
click Webbed Sac##3365 |tip It's hanging from the giant crystal
Collect the Treasure |goto Talador 65.5,88.6
confirm |sticky saved
step
_Jump down_ into the pool of water |goto Talador 66.3,85.2 < 15
click Rusted Lockbox##3365 |tip It's a tiny lockbox at the bottom of the pool of water
Collect the random green item
confirm |sticky saved
step
_Exit_ the cave |goto Talador 61.2,84.0 < 15
_Pass_ through the Deathweb Hollow |goto Talador/0 59.8,83.6 < 35
_Jump down the ledge_ |goto 56.3,83.9 < 30
_Enter_ the building |goto Talador/0 47.9,90.7 < 30
click Relic of Telmor##3365 |tip It's a mid sized, chest
Collect the Tiny Naaru Statue |goto Talador/0 47.0,91.7
confirm |sticky saved
step
_Follow_ the path back |goto Talador/0 45.1,91.8 < 30
_Jump_ down the ledge |goto 42.8,92.1 < 30
_Go down_ the path |goto 39.0,93.6 < 30
talk Aarko##77664
Ask him: _"Do you need help?"_|goto Talador/0 36.5,96.0
Defend Aarko against 3 waves of enemies
click Aarko's Family Treasure |tip It's a mid sized chest
Collect Aarko's Antique Crossbow |goto Talador/0 36.5,96.0
confirm |sticky saved
step
click Farmer's Bounty##3365 |tip It's a large barrel sitting
Collect the Treasure |goto Talador/0 35.4,96.6
confirm |sticky saved
step
_Go up_ the hill |goto Talador/0 35.2,93.3 < 30
_Make your way_ up the side of the mountain |goto 37.2,89.3 < 30
click Treasure of Ango'rosh##3365 |tip It's a tiny box sitting atop a rock
Collect the Succulent Offshoot |goto Talador/0 38.4,84.5
confirm |sticky saved
step
_Follow_ the path down |goto Talador/0 34.9,78.4 < 15
_Enter_ the building |goto 33.6,76.3 < 15
click Bonechewer Remnants##3365 |tip It's a chest at the back of the building
Collect the gold |goto 33.3,76.8
confirm |sticky saved
step
_Enter_ the cave |goto Talador/0 36.7,75.3
kill Viperlash##77564
click Bonechewer Spear##3365 |tip It's a large spear sticking out of Viperlash's back
Collect Warpstalker-Scale Grips |goto Talador/0 37.7,74.8
confirm |sticky saved
step
_Leave_ the cave |goto Talador/0 36.7,75.3 < 15
_Go down_ the ledge here |goto Talador/0 34.2,69.9 < 35
_Go down_ the hill |goto Talador/0 27.4,68.5 < 30
_Cross_ the water |goto Talador/0 26.8,74.7 < 30
_Go up_ the hill |goto Talador/0 27.7,76.5 < 30
_Enter_ the cave |goto 28.0,75.3 < 15
Click the 3 statues until they are facing the square
Once they are all facing it, click them again until they are facing away once more
click Gift of the Ancients##3365
Collect the Signet Ring of Gehs'taal
confirm |sticky saved
step
_Swim_ to the shoreline |goto Talador/0 25.9,72.9 < 35
_Go up_ the hill |goto 27.7,68.4 < 30
_Enter_ the Tomb of Souls |goto Talador/14 49.1,89.4 < 15
_Go down_ the ramp |goto Talador/14 36.5,67.3 < 20
click Soulbinder's Reliquary##3365
Collect the Auchenai Soulbinder's Signet |goto Talador/14 28.5,35.3
confirm |sticky saved
step
_Follow_ the path back |goto Spires of Arak/0 37.0,18.2 < 15
_Go up_ the hidden ramp |goto 36.2,17.9 < 10
click Outcast's Belongings##3365 |tip It's a small jar lying next to a corpse
Collect the random green item |goto Spires of Arak/0 36.8,17.2
confirm |sticky saved
step
_Follow_ the path down |goto Spires of Arak 39.7,19.1 < 35
click Misplaced Scrolls##73979 |tip It's a tiny scroll sitting by some rubble
Collect the Arakkoa Archaeology Fragments |goto Spires of Arak/0 42.7,18.3
confirm |sticky saved
step
_Go up_ the hill |goto Spires of Arak/0 43.4,15.1 < 10
_Jump up_ onto the ledge |goto 43.3,16.3 < 10
click Relics of the Outcasts##73979
Collect the Arakkoa Archaeology Fragments |goto Spires of Arak 43.0,16.4
confirm |sticky saved
step
click Elixir of Shadow Sight##3365 |tip It's a small potion inside of an open container
Collect the Elixir of Shadow Sight |goto Spires of Arak 43.9,15.0
confirm |sticky saved
step
click Rukhmar's Image##85206 |tip It looks like a bird with it's wings spread
Collect the Rukhmar's Image |goto Spires of Arak/0 44.3,12.1
confirm |sticky saved
step
_Go down_ the narrow path |goto 42.3,19.5 < 35
_Go up_ the semi hidden ramp here |goto Spires of Arak 41.6,22.0 < 10
click Outcast's Belongings |tip It's a small jar lying next to a corpse
Collect the random green item |goto Spires of Arak 42.2,21.7
confirm |sticky saved
step
_Enter_ the burning building
click Elixir of Shadow Sight##3365 |tip It's a large potion vial sitting in a basket
Collect the Elixir of Shadow Sight |goto Spires of Arak 43.8,24.6 < 5
confirm |sticky saved
step
_Jump onto_ the tree trunk here |goto Spires of Arak/0 44.5,27.6 < 10
_Cross_ the ropes |goto Spires of Arak/0 43.1,26.2 < 10
click Relics of the Outcasts##73979 |tip It's a small lockbox on your right
Collect the Arakkoa Cipher |goto Spires of Arak/0 43.2,27.2
confirm |sticky saved
step
Use an Elixir of Shadow |use Elixir of Shadow Sight##115463 |goto Spires of Arak/0 42.4,26.7 |tip Be careful not to use more than one
click Anzu's Scorn |tip It's a giant floating wand
Collect Anzu's Scorn
confirm |sticky saved
step
_Go up_ the hill |goto Spires of Arak 33.9,25.3 < 35
_Jump_ on top of the wood shelf using the hill
click Sun-Touched Cache
Collect the garrison resources |goto Spires of Arak 34.1,27.5
confirm |sticky saved
step
_Go up_ the hill |goto Spires of Arak/0 33.3,25.9 < 15
Walk up to the platform underneath the chest
click Sun-Touched Cache##73979 |tip It's a chest sitting on top of a platform
Collect to Arakkoa Archaeology Fragments |goto Spires of Arak/0 33.3,27.3
confirm |sticky saved
step
_Follow_ the path back |goto Spires of Arak 34.4,32.3 < 35
click Orcish Signaling Horn |tip It's between the busted wagon debris
Collect Novice Rylak Hunter's Horn |goto 36.3,39.3
confirm |sticky saved
step
_Go down_ the path down |goto Spires of Arak 37.5,42.8 < 10
_Follow_ the path back |goto 38.0,46.7
click Garrison Supplies |tip It's a small box in a wagon next to a sleeping Lazy Spectral Laborer
Collect the Garrison Resources |goto Spires of Arak 37.1,47.5
confirm |sticky saved
step
_Enter_ the building |goto Spires of Arak 38.8,50.2 < 20
_Go down_ the stairs |goto Spires of Arak 37.7,51.3 < 10
talk Miril Dumonde##82432 |goto 37.4,50.8 < 10
buy 3 Rooby Reat##114835 |n
talk Rooby Roo##84332 |goto Spires of Arak 37.4,50.8 < 10
use Rooby Reat##114835
Follow Rooby Roo
click Rooby's Roo##3365
Collect the Rooby Roo's Ruby Rollar |goto Spires of Arak 37.3,50.7
confirm |sticky saved
step
_Leave_ the area |goto Spires of Arak 38.7,50.2 < 30
click Garrison Workman's Hammer##3365 |tip It's inside of the cart
Collect the Treasure |goto Spires of Arak 41.9,50.4
confirm |sticky saved
step
_Follow_ the hidden path up |goto Spires of Arak 41.0,56.0 < 20
_Go up_ the ramp |goto Spires of Arak 39.9,56.0 < 20
click Abandoned Mining Pick
Collect the Peon's Mining Pick |goto Spires of Arak 40.6,55.0
confirm |sticky saved
step
_Follow_ the path back |goto Spires of Arak 38.7,55.8 < 15
click An Old Key |tip It's sitting on top of a rock, with a skeleton leaning against it
Collect the Treasure |goto Spires of Arak 37.7,56.3
confirm |sticky saved
step
_Enter_ the building |goto Spires of Arak/0 36.4,53.6 < 15
click Admiral Taylor's Coffer##170675
Collect Admiral Taylor's Garrison Log |goto Spires of Arak/0 36.2,54.4
step
_Leave_ the building |goto Spires of Arak/0 36.3,53.7 < 15
click Ephial's Dark Grimoire |tip It's sitting on a desk
Collect Ephial's Grimoire |goto Spires of Arak 36.4,57.8
confirm |sticky saved
step
_Follow_ the path back |goto Spires of Arak 38.4,55.7 < 25
_Continue_ along the hidden path |goto 40.7,56.8 < 25
_Go up_ the small hill |goto Spires of Arak 48.4,61.3 < 25
click Elixir of Shadow Sight |tip It's on the ground next to a dead Ravenspeaker Initiate
Collect the Elixir of Shadow Sight |goto Spires of Arak 49.0,62.6
confirm |sticky saved
step
_Go up_ the hill |goto Spires of Arak 48.8,56.4 < 25
click Offering to the Raven Mother |tip It's sitting at the center of a nest here
Collect the Ravenmother Offering |goto Spires of Arak 48.9,54.7
confirm |sticky saved
step
click Offering to the Raven Mother |tip It's sitting inside of the Cultist Statue
Collect the Ravenmother Offering |goto Spires of Arak 48.3,52.6
confirm |sticky saved
step
_Follow_ the path |goto Spires of Arak 51.3,58.1 < 35
_Jump down_ the ledge |goto 51.9,61.3 < 25
_Go up_ the hill |goto Spires of Arak 51.4,63.6 < 25
click Offering to the Raven Mother##3365 |tip It's sitting at the center of a nest
Collect the Ravenmother Offering |goto Spires of Arak 51.9,64.6
confirm |sticky saved
step
_Follow_ the path |goto Spires of Arak 50.9,67.0 < 30
_Continue_ along the path |goto 52.9,76.2 < 30
click Elixir of Shadow Sight##3365 |tip It's a vial that's underwater resting against a broken passage
Collect the Elixir of Shadow Sight  |goto Spires of Arak 53.1,84.5
confirm |sticky saved
step
_Follow_ the path back |goto Spires of Arak 54.1,85.8 < 15
_Go up_ the small ramp |goto Spires of Arak 55.1,89.9 < 15
_Enter_ the building |goto Spires of Arak 55.7,91.0 < 10
_Go up_ the stairs |goto 55.4,90.9 < 10
Use the bed post to jump onto the platforms along the wall |goto Spires of Arak 55.5,90.5
click Campaign Contributions##3365 |tip It's a chest above the entrance to the room
Collect the Gold |goto Spires of Arak 55.5,90.8
confirm |sticky saved
step
_Jump out_ of the window |goto Spires of Arak 55.7,91.0 < 15
click Sailor Zazzuk's 180-Proof Rum##3365 |tip It's sitting inside of a small hut
Collect Sailor Zazzuk's 180-Proof Rum |goto Spires of Arak 59.2,90.6
confirm |sticky saved
step
click Escape Pod##6477 |goto Spires of Arak/0 60.9,88.0
Listen to Nizzix for a moment
click Nizzix's Chest##6478
Collect the Garrison Resources |goto Spires of Arak/0 60.9,87.8
confirm |sticky saved
step
_Swim_ out to this location, then dive below for the treasure
click Coinbender's Payment##3365 |tip It's a chest between bones
Collect the Treasure |goto Spires of Arak 68.4,89.0
confirm |sticky saved
step
click Shredder Parts##3365 |tip They are sitting inside of a green bin
Collect the Garrison Resources |goto Spires of Arak 60.9,84.6
confirm |sticky saved
step
click Spray-O-Matic 5000 XT##3365 |tip It's inside of the wrecked ship, leaning against a red box
Collect the Garrison Resources |goto Spires of Arak 59.6,81.3
confirm |sticky saved
step
Use 1 Elixir of Shadow Sight |use Elixir of Shadow Sight##115463
click Anzu's Piercing Talon |tip It will be a sword that appears before you
Collect Anzu's Piercing Talon |goto Spires of Arak/0 57.0,78.9
confirm |sticky saved
step
_Follow_ the path |goto 60.0,73.6 < 35
_Go up_ the hidden path |goto Spires of Arak 62.1,64.1 < 35
click Offering to the Raven Mother##3365 |tip It's sitting at the center of a nest
Collect the Ravenmother Offering |goto Spires of Arak 61.0,63.9
confirm |sticky saved
step
_Follow_ the path |goto Spires of Arak/0 62.9,66.0 < 15
_Go up_ the hidden ramp |goto 63.1,66.3 < 15
click Mysterious Mushrooms##3365 |tip It's a white thorny plant
Collect the Starflower |goto Spires of Arak 63.6,67.4
confirm |sticky saved
step
_Follow_ the path up |goto Spires of Arak 61.1,62.6 < 25
click Ogron Plunder
Collect the Dwarf Beard Rings and Burglar's Vest |goto Spires of Arak 58.7,60.3
confirm |sticky saved
step
_Follow_ the path back |goto Spires of Arak 66.2,58.1 < 10
click Waterlogged Satchel##3365 |tip The Sachel is under water, trapped by a rock
Collect the random green item and gold |goto Spires of Arak 66.5,56.5
confirm |sticky saved
step
_Follow_ the mountainside |goto Spires of Arak 70.5,52.7 < 15
Go up the hill |goto Spires of Arak 71.6,49.8 < 15
click Sethekk Ritual Brew##3365 |tip It's a bowl sitting on top of an alter
Collect the herbs, healing potion and Skyreach Sunrise |goto 71.6,48.6
confirm |sticky saved
step
_Go up_ the hill |goto Spires of Arak 70.4,48.9 < 15
_Follow_ the path |goto 68.4,46.7 < 25
click Elixir of Shadow Sight##3365 |tip It's a vial laying in a basket
Collect the Elixir of Shadow Sight  |goto Spires of Arak 69.2,43.3
confirm |sticky saved
step
_Go up_ the hill |goto Spires of Arak/0 68.6,40.6 < 15
_Jump up_ the broken wall here |goto Spires of Arak/0 67.8,39.9 < 10
click Relics of the Outcasts##73979 |tip It's a mid sized chest on the edge of the broken wall
Collect the Arakkoa Archaeology Fragments |goto Spires of Arak/0 67.4,39.9
confirm |sticky saved
step
click Sethekk Idol##85190 |tip It's a skeletal serpent
Collect the Sethekk Idol |goto Spires of Arak/0 68.3,38.9
confirm |sticky saved
step
Use an Elixir of Shadow Sight |use ##115463 |goto Spires of Arak/0 61.1,55.3
click Gift of Anzu |tip It's a weapon that floats in front of you
Collect Anzu's Scything Talon
confirm |sticky saved
step
_Climb_ the rope |goto Spires of Arak/0 60.2,53.2 < 5
click Relics of the Outcasts##73979
Collect the Arakkoa Cipher and Arakkoa Archaeology Fragments |goto Spires of Arak/0 60.2,53.8
confirm |sticky saved
step
_Go up_ the ramp |goto Spires of Arak 53.5,54.8 < 20
click Offering to the Raven Mother##3365
Collect the Ravenmother Offering |goto Spires of Arak 53.3,55.5
confirm |sticky saved
step
_Jump up_ the ledge here |goto Spires of Arak/0 52.1,49.0 < 5
_Cross_ the rope carefully |goto Spires of Arak/0 52.4,49.4 < 5
.click Relics of the Outcasts##73979
Collect the Arakka Cipher and Fragments|goto Spires of Arak/0 51.9,49.0
confirm |sticky saved
step
Use an Elixir of Shadow Sight once you reach the destination |use Elixir of Shadow Sight##115463
click Gift of Anzu##3365
Collect the |goto Spires of Arak 48.6,44.5
confirm |sticky saved
step
Climb the hill here, and jump onto the rope |goto Spires of Arak/0 47.0,43.6
click Relics of the Outcasts##73979
Cross the rop and collect the Arakkoa Archaeology Fragments |goto Spires of Arak/0 46.0,44.2
confirm |sticky saved
step
Use an Elixir of Shadow Sight once you reach the destination |use Elixir of Shadow Sight##115463
Collect Anzu's Reach |goto Spires of Arak/0 46.9,40.5
confirm |sticky saved
step
_Go up_ the hill |goto Spires of Arak 49.2,38.6 < 20
click Assassin's Spear##3365 |tip It's lodged in the back of a dead Arakkoa
Collect the Treasure |goto Spires of Arak 49.2,37.2
confirm |sticky saved
step
_Go up_ the formation |goto Spires of Arak 49.2,35.9 < 20
click Lost Ring##3365 |tip It's very small, resting at the bottom of the stream
Collect the Treasure |goto 47.8,36.1
confirm |sticky saved
step
_Climb_ the chain |goto Spires of Arak 47.2,33.9 < 20
click Outcast's Pouch##3365 |tip It's a bag hanging underneath the chain holding the dead Arakkoa
Collect the Treasure |goto Spires of Arak 46.9,34.1
confirm |sticky saved
step
click Shattered Hand Lockbox##3365
Collect the True Steel Lockbox |goto Spires of Arak 47.9,30.7
confirm |sticky saved
step
_Jump down_ the waterfall |goto Spires of Arak 50.0,32.7 < 20
click Toxicfang Venom##3365 |tip It's a vial on the ground next to 2 barrels
Collect the Toxicfang Venom |goto Spires of Arak 54.3,32.5
confirm |sticky saved
step
click Lost Herb Satchel##3365
Collect the Treasure |goto Spires of Arak 50.7,28.7
confirm |sticky saved
step
click Shattered Hand Cache##3365 |tip It's inside of the tent, behind 3 barrels
Collect the Garrison Resources |goto Spires of Arak 56.2,28.8
confirm |sticky saved
step
_Go up_ the ramp |goto Spires of Arak 53.5,27.9 < 25
_Follow_ the path |goto Spires of Arak 51.2,28.8 < 25
_Go up_ the hill |goto 50.4,26.5 < 15
_Follow_ the path up |goto 50.7,26.1 < 15
click Iron Horde Explosives##3365
Collect the Garrison Resources |goto Spires of Arak 50.3,25.8
confirm |sticky saved
step
_Follow_ the path |goto Spires of Arak 51.2,23.8 < 20
click Fractured Sunstone##3365 |tip It's a tiny yellow stone sitting at the bottom of the stream
Collect the Fractured Sunstone |goto 50.5,22.1
confirm |sticky saved
step
_Go up_ the hill |goto Spires of Arak 50.8,22.9 < 15
_Follow_ the path down |goto 53.4,23.2 < 15
click Elixir of Shadow Sight##3365
Collect the Elixir of SHadow Sight |goto Spires of Arak 55.6,22.1
confirm |sticky saved
step
_Go up_ the path |goto Spires of Arak/0 53.0,22.9 < 25
_Continue up_ the path |goto 51.3,20.4 < 20
Use the Elixir of Shadow Sight |use ##115463
click Gift of Anzu
collect Anzu's Stoicism |goto Spires of Arak/0 52.0,19.6
confirm |sticky saved
step
_Go down_ the path |goto Spires of Arak/0 51.3,20.4 < 25
_Continnue down_ the path |goto 53.9,23.1 < 25
_Jump down_ the ledge |goto Spires of Arak/0 55.7,23.3 < 10
_Go up_ the narrow path |goto 57.5,24.0 < 15
click Statue of Anzu##85165 |tip It's a bird statue
Collect the Statue of Anzu |goto Spires of Arak/0 58.0,22.3
confirm |sticky saved
step
_Climb up_ the mountain |goto Spires of Arak/0 53.8,47.4 < 15
click Misplaced Scroll##73979
Collect the Arakkoa Cipher and Fragments |goto 52.5,42.8
step
click Sunken Treasure##3365
Collect the Garrison Resources |goto Shadowmoon Valley D/0 28.8,7.1
confirm |sticky saved
step
click Fantastic Fish##3365
Collect the Garrison Resources |goto Shadowmoon Valley D/0 26.6,5.6
confirm |sticky saved
step
Enter the cave |goto Shadowmoon Valley D/0 27.7,4.4 < 15
click Stolen Treasure##3365
Collect the Garrison Resources |goto 27.1,2.5
confirm |sticky saved
step
_Follow_ the path down |goto Shadowmoon Valley D/0 24.9,16.7 < 35
_Go up_ the ramp to Gul'var |goto 23.0,29.2 < 35
_Go up_ the ramp here |goto Shadowmoon Valley D/0 19.8,29.7 < 15
click Demonic Cache##3365
Collect the Fingers of the Void |goto Shadowmoon Valley D/0 20.4,30.6
confirm |sticky saved
step
_Go down_ the ramp |goto Shadowmoon Valley D/0 22.0,30.8 < 25
_Continue down_ the hill |goto 25.5,29.1 < 25
_Go up_ the ramp |goto Shadowmoon Valley D/0 25.0,33.1 < 25
_Enter_ the cave |goto Shadowmoon Valley D/15 73.1,30.9 < 15
_Jump_ down the ledge here |goto Shadowmoon Valley D/15 50.6,46.6 < 10
click Rotting Basket##3365
Collect the Battered Wolfskull Helm |goto Shadowmoon Valley D/15 56.1,49.2
confirm |sticky saved
step
_Leave_ the cave |goto Shadowmoon Valley D/15 73.6,32.5 < 15
_Go down_ way down the hillside |goto Shadowmoon Valley D/0 28.0,33.6 < 15
_Go through_ the gate |goto Shadowmoon Valley D/0 28.8,37.0 < 15
_Jump_ to the stone platform |goto Shadowmoon Valley D/0 27.9,40.3 < 10
click Dusty Lockbox##3365
|goto Shadowmoon Valley D/0 29.8,37.5
confirm |sticky saved
step
_Jump down_ here |goto Shadowmoon Valley D/0 28.3,38.6 < 15
_Enter_ the building |goto Shadowmoon Valley D/0 28.7,39.5 < 15
click Shadowmoon Treasure##3365
Collect the Garrison Resources |goto Shadowmoon Valley D/0 28.2,39.3
confirm |sticky saved
step
_Go up_ the hill |goto Shadowmoon Valley D/0 29.3,41.4 < 25
_Go up_ the stairs |goto Shadowmoon Valley D/0 30.6,44.5 < 15
click Shadowmoon Sacrificial Dagger##3365 |tip It's a dagger sticking out of bones
Collect Shadowmoon Sacrificial Dagger
confirm |sticky saved
step
_Follow_ the path down |goto Shadowmoon Valley D/0 31.9,45.0 < 15
_Follow the mountainside trail |goto 34.0,44.2 < 15
_Continue up_ the hill |goto Shadowmoon Valley D/0 37.6,44.3
click Giant Moonwillow Cone##3365
Collect the Moonwillow Wand |goto Shadowmoon Valley D/0 34.4,46.2
step
_Jump down_ the pit here |goto Shadowmoon Valley D/0 31.3,39.3 < 20
click Ronokk's Belongings##3365
Collect Ronokk's Greatcloak |goto Shadowmoon Valley D/0 31.3,39.1
confirm |sticky saved
step
_Leave_ the room |goto Shadowmoon Valley D/0 31.8,40.1 < 15
_Enter_ the room |goto 33.5,40.1 < 15
click Carved Drinking Horn##3365
Collect the Carved Drinking Horn |goto Shadowmoon Valley D/0 33.5,39.7
confirm |sticky saved
step
_Go up_ the stairs |goto Shadowmoon Valley D/0 33.6,40.6 < 15
_Enter_ the room |goto 33.6,42.8 < 15
click Veema's Herb Bag##3365
Collect the Herb from the bag|goto Shadowmoon Valley D/0 34.2,43.5
confirm |sticky saved
step
_Go up_ the stairs |goto Shadowmoon Valley D/0 32.1,43.5 < 15
_Pass through_ |goto 35.0,42.2 < 15
click Uzko's Knickknacks##3365
Collect Uzko's Dusty Boots |goto Shadowmoon Valley D/0 35.9,40.9
confirm |sticky saved
step
click Beloved's Offering##3365
Collect the Bouquet of Dried Flowers |goto Shadowmoon Valley D/0 36.8,41.4
confirm |sticky saved
step
click Greka's Urn##3365
Collect Greka's Dentures |goto Shadowmoon Valley D/0 38.5,43.0
confirm |sticky saved
step
click Ashes of A'kumbo##3365
Collect Ashes of A'kumbo |goto Shadowmoon Valley D/0 37.8,44.3
confirm |sticky saved
step
click Rovo's Dagger##3365 |tip It's a "T" shaped dagger inside of a crypt cubbyhole
collect Rovo's Dagger |goto Shadowmoon Valley D/0 36.7,44.5
confirm |sticky saved
step
_Go down_ the hill |goto Shadowmoon Valley D/0 38.1,41.0 < 25
_Go up_ the hill here |goto 53.06,53.18 < 35
_Cross_ the rock bridge |goto Shadowmoon Valley D/0 50.8,51.8 < 15
click Ancestral Greataxe##3365 |tip It's an axe lodged int he ground
Collect Ancestral Shadowmoon Greataxe |goto Shadowmoon Valley D/0 52.8,48.4
confirm |sticky saved
step
_Go up_ the ramp |goto Shadowmoon Valley D/0 52.6,48.7 < 15
_Follow_ the narrow path |goto 49.3,48.3 < 15
_Go up_ the rock formation |goto 48.5,46.5 < 15
_Jump_ down to the rocks below |goto Shadowmoon Valley D/0 47.8,45.5 < 10
click Hanging Satchel##3365 |tip It's a bag hanging from a tree branch
Collect the Cragsman Gloves and Potion of Slow Fall |goto Shadowmoon Valley D/0 47.1,46.1
confirm |sticky saved
step
_Jump_ into the hole in the ground |goto Shadowmoon Valley D/0 47.3,46.0 < 15
_Use_ the rocks to reach to top platform back in this corner |goto 48.9,47.6 < 15
click Glowing Cave Mushroom##3365
get Starflower##109127 |goto 48.7,47.6
confirm |sticky saved
step
_Leave_ the cave |goto Shadowmoon Valley D/0 46.5,45.3 < 15
_Cross_ the marsh |goto Shadowmoon Valley D/0 43.3,50.3 < 30
_Go up_ the hill |goto Shadowmoon Valley D/0 40.7,56.9 < 30
_Enter_ the building |goto Shadowmoon Valley D/0 38.6,60.2 < 10
click Iron Horde Tribute##3365 |tip It's a Giant chest at the center of the room
Collect Tiny Iron Star##108903 |goto Shadowmoon Valley D/0 37.5,59.3
confirm |sticky saved
step
click Iron Horde Cargo Shipment##3365 |tip It's a chest sitting at the back of a cart
Collect the Garrison Resources |goto Shadowmoon Valley D/0 42.1,61.3
confirm |sticky saved
step
click Peaceful Offering##3365 |tip It's a bowl on the ground next to the pillar
Collect Shadowmoon Offering |goto Shadowmoon Valley D/0 43.8,60.6
confirm |sticky saved
step
click Peaceful Offering##3365 |tip It's a small chest on the ground next to the pillar
Collect Shadowmoon Offering |goto Shadowmoon Valley D/0 44.5,59.1
confirm |sticky saved
step
click Peaceful Offering##3365
Collect Shadowmoon Offering |goto Shadowmoon Valley D/0 45.2,60.5
confirm |sticky saved
step
click Peaceful Offering##3365
Collect Shadowmoon Offering |goto Shadowmoon Valley D/0 44.5,63.6
confirm |sticky saved
step
click Waterlogged Chest##3365
Collect Darktide Pincer |goto Shadowmoon Valley D/0 39.2,83.9
confirm |sticky saved
step
click Swamplighter Hive##3365
Collect Angry Beehive |goto Shadowmoon Valley D/0 55.3,75.0
confirm |sticky saved
step
_Follow_ the path down |goto Shadowmoon Valley D/0 59.4,53.5 < 25
_Continue_ along the path |goto 58.2,60.5 < 25 |tip Avoid the Alliance town that is along this path
click The Crystal Blade of Torvath
_"<Touch the sword.>"_
kill Silverleaf Ancient##79686
Collect The Crystal Blade of Torvath and the Garrison Resources	|goto Shadowmoon Valley D/0 61.7,67.9
confirm |sticky saved
step
_Go down_ the hill |goto Shadowmoon Valley D/0 60.5,59.4 < 35
_Continue_ along the path |goto Shadowmoon Valley D/0 59.4,53.5 < 25
click Kaliri Egg##3365 |tip it's an egg sitting in a large nest
Giant Kaliri Egg |goto Shadowmoon Valley D/0 57.9,45.3
confirm |sticky saved
step
click Alchemist's Satchel##3365 |tip It's a bag laying on the ground
Collect the Herbs |goto Shadowmoon Valley D/0 55.0,45.0
confirm |sticky saved
step
click False-Bottomed Jar##3365 |tip It's a large Jar standing near a fence
Collect the gold |goto Shadowmoon Valley D/0 51.7,35.4
You will likely be attack regardless of how close you get
confirm |sticky saved
step
click Armored Elekk Tusk##3365 |tip It's a giant tusk standing up
Collect Armored Elekk Tusk |goto Shadowmoon Valley D/0 41.4,28.0
confirm |sticky saved
step
click Sunken Fishing boat##3365
Collect Awesomefish |goto Shadowmoon Valley D/0 37.2,26.0
confirm |sticky saved
step
_Enter_ the cave |goto Shadowmoon Valley D/0 37.9,22.3
click Bubbling Cauldron##3365
Collect Void-Boiled Squirrel |goto Shadowmoon Valley D/0 37.2,23.1
confirm |sticky saved
step
_Enter_ the cave |goto Shadowmoon Valley D/0 46.3,27.2 < 15
click Shadowmoon Exile Treasure##3365
Collect Shadowmoon Astrologer's Almanac |goto Shadowmoon Valley D/0 45.8,24.6
confirm |sticky saved
step
_Leave_ the cave |goto Shadowmoon Valley D/0 46.3,27.2 < 15
click Mushroom-Covered Chest##3365
Collect the Garrison Resources |goto Shadowmoon Valley D/0 52.9,24.9
confirm |sticky saved
step
_Follow_ the path back |goto Shadowmoon Valley D/0 58.3,24.9 < 20
_Continue_ along the path |goto 60.2,24.0 < 20
_Go up_ the hill |goto 63.0,25.3 < 20
_Avoid_ the town as best you can |goto Shadowmoon Valley D/0 63.2,23.1 < 20
_Follow_ the path back |goto 62.0,21.3 < 20
_Climb_ the mountainside |goto 59.6,17.5 < 20
_Jump down_ the ledge here|goto 57.8,18.3 < 20
_Jump onto_ the mushroom |goto Shadowmoon Valley D/0 56.2,18.2 < 20
click Strange Spore##3365
Collect an Umbrafen Spore |goto Shadowmoon Valley D/0 55.8,19.9
confirm |sticky saved
step
_Follow_ the path back |goto Shadowmoon Valley D/0 58.5,22.7 < 15
_Go up_ the ramp |goto 58.6,24.7 < 20
_Follow_ the hill up |goto 59.4,22.9 < 20
click Mikkal's Chest##3365
Collect the Empty Paint Jar |goto Shadowmoon Valley D/0 58.9,21.9
confirm |sticky saved
step
_Go through_ the gates |goto Shadowmoon Valley D/0 58.0,27.3 < 20
_Make your way_ to the open field |goto 58.2,33.1 < 35
click Orc Skeleton##3365
Collect the Rusty Iron Band |goto Shadowmoon Valley D/0 67.0,33.5
confirm |sticky saved
step
_Follow_ the path around |goto Shadowmoon Valley D/0 63.9,36.3 < 35
_Go up_ the stairs |goto 63.3,46.5 < 25
_Continue_ up the stairs |goto 68.7,46.6 < 25
_Go through_ the passage |goto Shadowmoon Valley D/0 71.6,42.8 < 15
_Follow_ the path back|goto 75.9,40.9 < 20
_Go down_ the stairs |goto Shadowmoon Valley D/0 80.0,44.6 < 15
click Cargo of the Raven Queen##3365
Collect the Garrison Resources |goto Shadowmoon Valley D/0 84.6,44.7
step
_Follow_ the hill up|goto Talador/0 28.8,65.8 < 20
_Take_ the path towards Nagrand |goto 31.0,58.8 < 20
_Follow_ the path into Nagrand |goto Nagrand D/0 90.7,71.8 < 20
click Warsong Supplies##3365
Collect the Garrison Resources |goto Nagrand D/0 89.4,65.8
confirm |sticky saved
step
_Follow_ the path here |goto Nagrand D/0 85.7,66.3 < 25
_Go up_ the hill |goto 82.0,68.8 < 25
_Follow_ the narrow path here |goto 85.2,70.2 < 15
click Grizzlemaw's Bonepile##3365
Collect the Discarded Bones |goto Nagrand D/0 87.1,72.9
confirm |sticky saved
step
_Cross_ the lake |goto Nagrand D/0 86.3,68.2 < 25
_Go up_ the hill |goto Nagrand D 83.5,68.6 < 30
_Go up_ the stairs |goto Nagrand D 81.1,74.2 < 20
_Continue up_ the stairs |goto Nagrand D 83.9,77.1 < 20
_Follow_ the rocky hill up |goto Nagrand D 81.6,79.5 < 20
click Ogre Beads##3365
Collect the Trophy Ring of Gordal |goto 80.9,79.8
confirm |sticky saved
step
_Make your way_ down the rocky steps |goto Nagrand D 79.7,78.1 < 20
_Go up_ the path here |goto Nagrand D 77.5,72.5 < 15
click Steamwheedle Exploration Glider |goto Nagrand D 76.1,73.0 < 10
Once on the Glider, fly to this location  |goto 76.1,70.0
click Warsong Spear##3365 |tip It's a spear hanging from the rock ledge
Collect the Ceremonial Warsong Spear
|confirm |sticky saved
step
_Make your way_ around the mountain |goto Nagrand D 78.3,68.5 < 15
_Go up_ the hill |goto 77.7,72.3 < 10
click Steamwheedle Exploration Glider |goto Nagrand D 76.1,73.0 < 10
click Warsong Lockbox##3365 |tip It's a chest with spikes inside of the tower here
Collect the garrison resources |goto Nagrand D 73.1,70.4
confirm |sticky saved
step
_Make your way_ around the mountain |goto Nagrand D 78.3,68.5 < 15
_Go up_ the hill |goto 77.7,72.3 < 15
click Steamwheedle Exploration Glider |goto Nagrand D 76.1,73.0 < 10
click Appropriated Warsong Supplies##3365 |tip It's a small box near a goblin
Collect the garrison resources |goto Nagrand D 73.1,75.5 < 5
confirm |sticky saved
step
_Jump_ up the ledge |goto Nagrand D 72.3,73.7
_Make you way_ down the ledge |goto 72.0,71.6
_Jump_ down the ledge here  |goto 72.0,69.5
_Make your way_ around the mountain |goto Nagrand D 78.3,68.5 < 15
_Go up_ the hill |goto 77.7,72.3 < 15
_Go up_ the ledge here |goto Nagrand D 75.9,65.9 < 15
_Carefully_ drop down the ledge here |goto 75.0,65.8 < 10
click Important Exploration Supplies##3365 |tip it's a green barrel sitting inside of a cart
Collect the Tol Barad Coconut Rum |goto Nagrand D 75.2,65.7
confirm |sticky saved
step
_Go up_ the hill |goto 77.7,72.3 < 15
_Cross_ the bridge |goto Nagrand D 76.0,69.5 < 15
_Go up_ the ledge here |goto Nagrand D 75.9,65.9 < 15
click Steamwheedle Exploration Glider |goto Nagrand D 75.7,64.5 < 10
Fly to this spot here |goto Nagrand D 75.2,64.9 < 10 |tip It will be a little tricky to reach this. There is a small landing spot so it is easy to miss
click Saberon Stash##3365
Collect the gold and random green item |goto Nagrand D 75.2,64.9
confirm |sticky saved
step
_Jump_ down to the area below |goto Nagrand D 74.7,65.2 < 10
click Polished Saberon Skull##3365  |tip It's a skull at the ledge of the platform
Collect the Trophy Signet of the Sabermaw |goto Nagrand D 72.7,61.0 < 6
confirm |sticky saved
step
_Jump_ down here. Stay as close to the wall as possible |goto Nagrand D 75.8,62.0 < 10
click Adventurer's Mace##3365
Collect the random green item |goto Nagrand D 75.8,62.0
confirm |sticky saved
step
_Go up_ the path |goto Nagrand D 75.4,62.6 < 10
_Continue up_ the large ramp |goto Nagrand D 74.8,65.1 < 10
_Jump down_ the ledge here |goto 76.3,64.9 < 10
_Follow_ the path up to the Glider |goto 75.7,66.1 < 10
click Steamwheedle Exploration Glider |goto Nagrand D/0 75.7,64.6 |tip Fly Down underneath the large formation. Once you reach the rock, flying against it can help guide you downward
click Goblin Pack##3365 |tip It's a tiny pack on the ledge here
Collect the garrison resources |goto Nagrand D 73.0,62.1
confirm |sticky saved
step
_Go up_ the path |goto Nagrand D 75.4,62.6 < 10
_Continue up_ the large ramp |goto Nagrand D 74.8,65.1 < 10
_Jump down_ the ledge here |goto 76.3,64.9 < 10
_Follow_ the path up to the Glider |goto 75.7,66.1 < 10
click Steamwheedle Exploration Glider |goto Nagrand D/0 75.7,64.6 < 5
Arena building step
Fly to the Pillar located at the Ring of Trials |goto Nagrand D/0 77.8,52.0 < 10 |tip When you reach the pillar you will need to fly in circles in order to not overshoot the landing
click Steamwheedle Supplies##3365
Collect the garrison resources |goto Nagrand D/0 77.8,52.0
confirm |sticky saved
step
_Climb_ the boxes here |goto Nagrand D/0 77.8,51.6
_Go down_ the hill |goto Nagrand D 71.2,50.4 < 30
_Continue down_ the path |goto 68.1,52.7 < 30
_Go up_ the hill |goto Nagrand D/0 66.8,48.7 < 30
click Highmaul Sledge##3365 |tip It's a hammer sitting atop a stone
Collect the Trophy Loop of the Highmaul |goto Nagrand D/0 67.4,49.0
confirm |sticky saved
step
_Go up_ the hill |goto Nagrand D/0 67.9,46.1 < 30
_Follow_ the path |goto 68.8,49.2 < 30
Jump down to the tree here
click Adventurer's Pack |tip It's hanging from the tree branch
Collect the random green item |goto 69.8,52.3
confirm |sticky saved
step
_Go up_ the hill |goto Nagrand D/0 61.3,54.3 < 35
click Abandoned Cargo##3365 |tip It's sitting amongst the wreckage
Collect the random green item |goto 67.6,59.8
confirm |sticky saved
step
click Lost Pendant |tip It's a tiny gold pendant hanging in the tree
Collect the Treasure |goto Nagrand D/0 61.7,57.4
confirm |sticky saved
step
click Golden Kaliri Egg##3365 |tip Climb the tree branch. It looks like 3 purple eggs, one of which is broken inside of a nest
Collect the Golden Kaliri Egg |goto Nagrand D/0 58.2,52.6
confirm |sticky saved
step
Jump onto the tree branch below the ridge
click Pokkar's Thirteenth Axe##3365 |tip It's a 1 handed axe stuck in the tree
Collect Pokhar's Thirteenth Axe |goto Nagrand D/0 58.4,59.4
confirm |sticky saved
step
_Go up_ the hill |goto Nagrand D/0 59.2,57.4 < 20
_Jump_ across the gap |goto Nagrand D/0 57.7,59.9 < 20
_Jump down_ here |goto Nagrand D/0 57.2,61.9 < 20
_Continue down_ the ledge |goto 57.6,62.3 < 20
click Pale Elixir##3365 |tip It's a small blue vials laying next to a dead Pale Skulker
Collect the Pale Vision Potion |goto 57.8,62.1
confirm |sticky saved
step
_Enter_ the cave | goto Nagrand D/0 56.3,61.8 < 10 |tip It is located below
_Follow_ the path down |goto Nagrand D/12 76.1,42.0 < 10
_Go up_ the hill |goto Nagrand D/12 62.1,40.1 < 10
click Adventurer's Pouch##3365 |tip It's a pouch hanging at the side of an impaled blood elf
Collect the random green item |goto Nagrand D/12 66.0,57.4
confirm |sticky saved
step
_Go through_ the passage |goto Nagrand D/12 64.8,31.4 < 10
_Go up_ the stairs |goto 50.4,32.0 < 10
_Traverse_ the tunnel |goto 36.6,49.9 < 10
_Go up_ the ramp |goto Nagrand D/12 22.6,66.5 < 10
Make your way into the narrow tunnel up |goto Nagrand D/0 47.2,64.3 < 10
_Jump down_ here |goto Nagrand D/0 47.0,62.0 < 10
click Genedar Debris##3365 |tip It's sitting on a small hill
Collect the garrison resources |goto Nagrand D/0 48.1,60.2
confirm |sticky saved
step
click Warsong Cache##3365 |tip It's a small chest inside of the house
Collect the garrison resources |goto Nagrand D/0 51.7,60.3
confirm |sticky saved
step
click Genedar Debris##3365 |tip It's a purple crystal lying against a tree
Collect the garrison resources |goto Nagrand D/0 55.3,68.2
confirm |sticky saved
step
_Follow_ the path up |goto Nagrand D/0 57.4,67.0 < 30
_Jump_ behind the tree |goto 62.1,66.8 < 30
click Bag of Herbs##3365 |tip It's a bag full of wheat next to a stone
Collect the random herb |goto Nagrand D/0 62.5,67.0
confirm |sticky saved
step
_Follow_ the path |goto Nagrand D/0 61.0,59.5 < 35
_Follow_ the path up to Telaar |goto Nagrand D/0 69.7,59.4 < 35
_Enter_ Telaar |goto 68.2,64.2 < 35
Go into the water behind the hill and to climb up to the treasure
click Telaar Defender Shield##3365
Collect the Trophy Band of Telaar |goto Nagrand D/0 64.7,65.9
confirm |sticky saved
step
_Carefully_ jump down the ledge here |goto Nagrand D/0 65.8,61.4 < 10
click Abu'gar's Vitality##3365 |tip It's a fishing pole sitting on a rack
Collect Abu'Gar's Vitality
confirm |sticky saved
step
_Go up_ the hill |goto Nagrand D/0 67.6,58.9 < 30
_Enter_ Telaar |goto 68.4,64.3 < 25
_Jump down_ the waterfall |goto Nagrand D/0 62.8,67.5 < 25
_Go up_ the path |goto Nagrand D/0 60.7,73.1 < 25
click Adventurer's Pouch##3365 |tip It's on the Clumbsy Adventurer's waist
Collect the the random green |goto Nagrand D/0 56.6,73.0
confirm |sticky saved
step
_Carefully_ follow the path down |goto Nagrand D/0 57.6,71.9 < 20
_Follow_ the path up |goto Nagrand D/0 58.5,67.7 < 20
_Go up_ the path |goto Nagrand D/0 60.7,73.1 < 20
click Goblin Rocket
_Use_ the Goblin Rocket |goto Nagrand D/0 58.5,76.3 < 10
click Steamwheedle Exploration Glider |goto Nagrand D/0 53.4,73.2 < 10
The Void-Infused Crystal is near the center of the giant Oshu'gun formation
Collect the Serrated Void Crystal |goto Nagrand D/0 50.0,66.6
confirm |sticky saved
step
_Carefully_ make your way down the side of Oshu'gun |goto Nagrand D/0 50.5,66.4 < 25
_Follow_ the path around Oshu'gun |goto Nagrand D/0 49.8,69.1 < 25
click Fragment of Oshu'gun##3365 |tip It's a purple crystal next to Oshu'gun
Collect the Fragment of Oshu'gun |goto 45.8,66.3
confirm |sticky saved
step
_Follow_ the path up |goto Nagrand D/0 45.1,68.3 < 25
click Genedar Debris##3365 |tip It's a purple object hidden between shrubbery
Collect the garrison resources |goto 44.7,67.5
confirm |sticky saved
step
click Genedar Debris##3365 |tip It's a pot sitting at the base of a tree
Collect the garrison resources |goto Nagrand D/0 48.6,72.7
confirm |sticky saved
step
_Cross_ the bridge |goto Nagrand D/0 52.1,72.3 < 30
_Follow_ the path |goto Nagrand D/0 59.9,69.1 < 30
_Follow_ the path up |goto Nagrand D/0 60.8,73.0 < 30
click Goblin Rocket
_Use_ the Goblin Rocket |goto Nagrand D/0 58.5,76.3 < 10
click Steamwheedle Exploration Glider |goto Nagrand D/0 53.4,73.2 < 10
click Steamwheedle Supplies##3365
Collect the garrison resources |goto Nagrand D/0 52.7,80.1
confirm |sticky saved
step
_Go up_ the hill |goto Nagrand D/0 52.5,75.1 < 30
_Follow_ the path |goto 55.9,69.7 < 30
_Cross_ the bridge |goto Nagrand D/0 59.8,69.0 < 30
_Follow_ the hill up |goto 60.8,73.1 < 30
click Goblin Rocket
_Use_ the Goblin Rocket |goto Nagrand D/0 58.5,76.3 < 30
click Steamwheedle Exploration Glider |goto Nagrand D/0 53.4,73.2 < 30
_Fly down_ to the Island |goto Nagrand D/0 50.1,81.7 < 30
click Steamwheedle Supplies##3365 |tip It's a small chest sitting on a crate
Collect the garrison resources |goto Nagrand D/0 50.1,82.2
confirm |sticky saved
step
_Follow_ the path |goto 55.9,69.7 < 30
_Cross_ the bridge |goto Nagrand D/0 59.8,69.0 < 30
_Follow_ the hill up |goto 60.8,73.1 < 30
click Goblin Rocket
_Use_ the Goblin Rocket |goto Nagrand D/0 58.5,76.3 < 10
click Steamwheedle Exploration Glider |goto Nagrand D/0 53.4,73.2 < 10
click Goblin Pack  |tip This is tricky to get, you will need to aim for a tree branch
Collect the garrison resources |goto Nagrand D/0 47.2,74.3
confirm |sticky saved
step
_Enter_ the cave |goto 41.6,68.3
click Spirit Coffer##3365 |tip It looks like an urn sitting on top of the ledge.
Collect the garrison resources |goto Nagrand D/0 40.4,68.6
confirm |sticky saved
step
_Leave_ the cave |goto Nagrand D/0 41.7,68.3
click Genedar Debris##3365 |tip It's a purple object on the ground at the base of the tree
Collect the garrison resources |goto Nagrand D/0 43.3,57.5
confirm |sticky staved
step
_Cross_ the bridge |goto Nagrand D/0 41.5,56.8 < 10
click Rusty Keys##84068
There will be a parrot carrying Rusty Keys flying around the area |goto 38.8,59.1 |tip You will need to wait until he is over land to click the keys
click Goldtoe's Plunder##168128 |tip It's a chest sitting on a pile of gold
Collect the gold from the chest |goto Nagrand D/0 38.3,58.8
confirm |sticky saved
step
_Follow_ the path up |goto Nagrand D/0 38.9,58.3 < 10
_Go up_ the hill |goto Nagrand D/0 36.4,55.8 < 10
click Forgotten Brazier##3365
click Spirit's Gift##3365
Collect the garrison resources |goto Nagrand D/0 35.5,57.2
confirm |sticky saved
step
_Go down_ the ramp |goto Nagrand D/0 36.1,55.7 < 20
_Follow_ the path back |goto 41.8,53.1 < 20
click Abu'Gar's Favorite Lure##3365 |tip It's a small object near the base of the bridge here
Collect Abu'Gar's Favorite Lure|goto Nagrand D/0 38.4,49.4
confirm |sticky saved
step
_Cross_ the bridge |goto Nagrand D/0 41.5,52.3
click Adventurer's Pack##3365 |tip It's a brown bag on the back of a dead night elf
Collect the random green item |goto Nagrand D/0 45.6,52.0
confirm |sticky saved
step
_Follow_ the path |goto Nagrand D/0 50.1,49.8 < 35
click Warsong Helm##3365 |tip It's a severed orc head at the base of the small waterfall
Collect the Riverwashed Warsong Helm |goto Nagrand D/0 52.4,44.4
|confirm |sticky saved
step
Congratulations! You have _earned_ the _Grand Treasure Hunter_ Achievement!
_Click here_ to continue gathering the remaining tresures |confirm
step
_Go through_ the gate |goto Nagrand D/0 52.8,47.1 < 20
_Follow_ the path |goto 55.2,49.6 < 30
_Continue_ along the path |goto Nagrand D/0 61.4,44.1 < 30
Avoid the town alliance |goto Nagrand D/0 64.0,42.9 < 30 |only Horde
click Watertight Bag##3365 |tip It's a bag under the bridge next to a pile of bones
Collect the Ogre Diving Cap |goto Nagrand D/0 64.7,35.7
confirm |sticky saved
step
click Freshwater Clam##3365
Collect the Enormous Nagrand Pearl |goto Nagrand D/0 73.1,21.6
confirm |sticky saved
step
_Follow_ the path up |goto Nagrand D/0 67.3,16.1 < 20
_Drop down_ to the small platform below |goto Nagrand D/0 66.9,19.5 |tip Careful not to over jump the ledge
click Elemental Offering##3365 |tip It's a tiny bamboo chest
Collect the Smoldering Offerings
confirm |sticky saved
step
_Follow_ the path up |goto Nagrand D/0 67.1,15.8 < 25
_Continue up_ the large hill |goto Nagrand D/0 68.3,9.9 < 25
_Go up_ the side ramp |goto 75.0,8.5 < 25
_Jump across_ to the platform |goto Nagrand D/0 72.7,11.1 < 10
You will see a ledge below the platform you just jumped from. Jump to it |goto Nagrand D/0 73.1,11.7
click A Pile of Dirt##3365 |tip It's a midsized pile of dirt with a shovel sticking out of it
Collect the garrison resources |goto Nagrand D/0 73.0,10.8
confirm |sticky saved
step
_Jump_ into the water below |goto Nagrand D/0 72.6,12.0 < 20
_Jump across_ the rock formation here |goto 71.9,13.2 < 15
_Continue jumping_ across the rock formations |goto Nagrand D/0 70.7,13.4 < 15
click Steamwheedle Exploration Glider |goto Nagrand D/0 67.6,14.2
_Fly over to this platform_ |goto Nagrand D/0 67.6,14.2 < 15
click Steamwheedle Supplies##3365 |tip It's a small bag next to a couple of boxes
Collect the garrison resources |goto Nagrand D/0 64.6,17.6
confirm |sticky saved
step
_Jump down_ to the ledge below |goto Nagrand D/0 64.3,18.2 < 30
_Follow_ the path up |goto Nagrand D/0 67.3,16.2 < 30
_Follow_ the water back this way |goto Nagrand D/0 72.6,12.0 < 30
_Jump across_ the rock formation here |goto 71.9,13.2 < 10
_Continue jumping_ across the rock formations |goto Nagrand D/0 70.7,13.4 < 10
click Steamwheedle Exploration Glider |goto Nagrand D/0 67.6,14.2
_Fly down_ to this spot |tip You will see a fire pit as well as a tanner set up
click Mountain Climber's Pack##3365 |tip It's a square package sitting next to a pile of bones
Collect the garrison resources |goto Nagrand D/0 70.4,13.8
confirm |sticky saved
step
_Jump down_ the rocky formation here |goto Nagrand D/0 70.5,14.0 < 10
click Adventurer's Sack##3365 |tip It's underwater, you will see a drowned corpse floating above it
Collect the gold and random green item |goto Nagrand D/0 73.9,14.1
confirm |sticky saved
step
_Go up_ the hill |goto 74.2,16.1 < 30
_Continue_ up the hill |goto 76.0,21.1 < 30
_Continue up_ the path |goto Nagrand D/0 76.8,14.2 < 30
_Follow_ the small ledge up |goto 77.3,11.7 < 30
_Jump across_ the gap |goto Nagrand D/0 78.1,14.2 < 30
click Elemental Shackles##3365 |tip It looks like a pair of gray bracers with orange crystals
Collect the Trophy Gemstone of the Elements |goto Nagrand D/0 78.9,15.5
confirm |sticky saved
step
_Jump down_ the ledge here |goto Nagrand D/0 78.4,14.6 < 10
_Go to_ the edge of the waterfall. There will be a ledge going upward on the left |goto 75.9,15.2 < 10
_Follow_ the narrow path up |goto Nagrand D/0 76.5,16.8 < 10
_Enter_ the cave |goto Nagrand D/0 77.0,17.2
Click the totems in the following order:
Blue, Green, Aqua, Red
click Bounty of the Elements##168814
Collect the garrison resources |goto Nagrand D/0 77.0,16.6
confirm |sticky saved
step
_Follow_ the path down |goto Nagrand D/0 76.3,16.7 < 10
_Go down_ the ramp |goto Nagrand D/0 76.6,14.2 < 10
_Carefully_ go down the small ramp here |goto 81.4,13.6 < 10
click Adventurer's Staff##3365 |tip A dead gnome is holding it
Collect the random green item |goto Nagrand D/0 81.5,13.1
confirm |sticky saved
step
_Follow_ the path up |goto Nagrand D/0 82.0,14.0 < 10
_Make_ your way down the cliff here |goto Nagrand D/0 83.4,20.1 < 10
_Jump_ down the ledge here |goto Nagrand D/0 83.2,24.5 < 10
_Follow_ the path up |goto Nagrand D/0 83.4,33.1 < 10
_Continue_ up the path |goto Nagrand D/0 84.7,34.5 < 10
_Follow_ the path down |goto Nagrand D/0 88.4,35.4 < 10
_Jump down_ the ledge here |goto 88.3,32.4 < 10
_Enter_ the cave and jump over the trip wire inside.
You will be propelled out of the cave if you touch the trip wire.
click Smuggler's Cache##3365 |tip It's a chest here
Collect the garrison resources |goto Nagrand D/0 89.1,33.1
confirm |sticky saved
step
_Follow_ the path up |goto Nagrand D/0 88.3,32.0 < 10
_Go up_ the ramp |goto Nagrand D/0 88.5,35.5 < 20
_Cross_ the bridge |goto Nagrand D/0 87.1,38.9 < 15
_Go up_ the ramp |goto Nagrand D/0 86.4,41.3 < 10
click Steamwheedle Exploration Glider |goto Nagrand D/0 87.3,41.1 < 10
Fly to the small rock formation |goto Nagrand D/0 88.3,42.6 < 10
click Steamwheedle Supplies##3365 |tip It's a brown bag next to a couple of crates
Collect the garrison resources |goto Nagrand D/0 88.3,42.6
confirm |sticky saved
step
_Follow_ the path up |goto Nagrand D/0 87.3,40.2 < 10
_Continue up_ the ramp |goto 86.4,41.3 < 10
.click Steamwheedle Exploration Glider |goto Nagrand D/0 87.3,41.1 < 10
_Fly onto_ the tree |goto Nagrand D/0 87.5,44.9 < 10 |tip It will be a little tricky, try and land on the trunk of the tree
click Hidden Stash##3365 |tip It's hanging from a tree branch
Collect the garrison resources |goto Nagrand D/0 87.5,44.9
confirm |sticky saved
step
_Follow_ the path up |goto Nagrand D/0 84.6,43.4 < 20
click Abu'gar's Missing Reel##3365 |tip It looks like a tackle box laying on the ground
Collect Abu'Gar's Finest Reel |goto Nagrand D/0 85.4,38.8
confirm |sticky saved
step
_Go up_ the path |goto 85.0,36.6 < 10
_Go up_ the ramp |goto 85.3,34.5 < 10
_Follow_ the path around |goto Nagrand D/0 87.6,38.4 < 10
click Steamwheedle Exploration Glider |goto 83.8,33.7 < 10
_Fly_ over to the mushroom |goto Nagrand D/0 86.9,18.7 < 10
_Jump down_ to the mushroom below |goto Nagrand D/0 86.9,19.6 < 10
click Steamwheedle Supplies##3365 |tip It's a box sitting next to a few tackle boxes
Collect the garrison resources |goto 87.6,20.3
confirm |sticky saved
step
_Follow_ the path up |goto Nagrand D/0 85.6,24.9 < 40
_Go up_ the ramp |goto 83.7,29.8 < 10
_Continue_ up the ramp |goto Nagrand D/0 82.9,28.1 < 10
_Jump over_ to the platform |goto Nagrand D/0 83.8,29.9 < 10
_Follow_ the ramp up |goto Nagrand D/0 87.4,31.2 < 10
_Follow_ the small ramp up |goto Nagrand D/0 88.2,32.1 < 10
_Follow_ the path |goto 88.4,35.5 < 10
click Steamwheedle Exploration Glider |goto Nagrand D/0 83.8,33.7 < 10
Fly to the Mushroom here |goto Nagrand D/0 88.8,18.1 |tip It will have debris on it
click Fungus-Covered Chest##3365 |tip It's a chest sitting amongst some wreckage
Collect the garrison resources |goto Nagrand D/0 88.9,18.2
confirm |sticky saved
step
_Follow_ the path |goto Nagrand D/0 86.5,27.8 < 25
_Go up_ the path |goto 82.6,33.0 < 25
_Follow_ the path around |goto Nagrand D/0 76.2,34.9 < 20
_Follow_ the ramp up |goto Nagrand D/0 74.8,27.3 < 20
_Continue_ up the hill |goto Nagrand D/0 76.0,20.9 < 30
_Follow_ the bridge up |goto Nagrand D/0 81.1,16.7 < 20
_Continue_ along the path |goto 78.5,27.9 < 20
Jump down to the formation below|goto 77.3,28.6
click Bone-Carved Dagger##3365 |tip It's a dagger sticking out of a rack of ribs
Collect the Saberon-Fang Shanker |goto Nagrand D/0 77.3,28.1
confirm |sticky saved
step
Carefully make your way down the ledge |goto Nagrand D/0 77.6,28.5 < 10
_Go up_ the hill here |goto Nagrand D/0 80.8,38.6 < 25
_Cross_ the rock formation|goto Nagrand D/0 82.9,36.8 < 20
_Go up_ the ramp |goto 85.3,34.7 < 15
_Follow_ the path up |goto Nagrand D/0 87.2,38.6 < 15
click Steamwheedle Exploration Glider |goto 83.8,33.8 < 15
_Fly_ to the ledge of the small mountain formation |goto Nagrand D/0 81.2,37.3
click Brilliant Dreampetal##3365 |tip It's a plant on the ledge of a mountainside
Collect the Brilliant Dreampetals |goto Nagrand D/0 81.1,37.1
confirm |sticky saved
step
click Gambler's Purse##3365 |tip It's a brown bag in a large patch of grass
Collect the Counterfeit Coins |goto Nagrand D/0 75.4,47.1
confirm |sticky saved
step
_Follow_ the path |goto Nagrand D/0 81.8,50.4 < 45
click Adventurer's Pack##3365 |tip It's a backpack that is sitting at the base of a rock and a tree
Collect the random green item |goto Nagrand D/0 82.3,56.6
confirm |sticky saved
step
_Follow_ the path into Hallvalor |goto Nagrand D/0 85.0,58.3 < 20
_Go into_ the |goto Nagrand D/0 85.8,55.8 < 15
_Follow_ the path back goto 84.6,56.1 < 15
_Go along_  the path along the mountainside |goto Nagrand D/0 84.7,54.5 < 15
_Jump down_ to the building here |goto Nagrand D/0 85.3,53.3
click Burning Blade Cache##3365 |tip It's a chest sitting on top of a building
Collect the Stonecrag Breastplate of the Peerless |goto Nagrand D/0 85.4,53.4
confirm |sticky saved
step
_Jump down_ the hill here |goto Nagrand D/0 85.2,52.6 < 15
_Follow_ the path|goto Nagrand D/0 82.4,48.5 < 30
_Go up_ the mountainside |goto Nagrand D/0 78.2,71.9 < 30
_Cross_ the bridge |goto 76.1,70.2 < 15
_Follow_ the path up |goto Nagrand D/0 75.9,66.0 < 15
click Steamwheedle Exploration Glider |goto Nagrand D/0 75.7,64.5 < 10
Fly over to the tower |goto Nagrand D/0 80.6,60.5
click Warsong Spoils |tip It's a chest sitting next to a fire pit
Collect the garrison resources |goto Nagrand D/0 80.6,60.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Exploration Achievements\\Gorgrond Monster Hunter",[[
description Slay the rare elites in Gorgrond.
condition end achieved(9400)
step
_Slay_ the following rare elite in Gorgrond |tip You can use your shredder to make the fights easier if you build the lumber mill
kill Erosian the Violent##81540
|achieve 9400/6 |goto Gorgrond 51.8,41.6
step
_Slay_ the following rare elite in Gorgrond |tip You can use your shredder to make the fights easier if you build the lumber mill
kill Charl Doomwing##81548
|achieve 9400/7 |goto Gorgrond 46.0,46.8
step
_Slay_ the following rare elite in Gorgrond |tip You can use your shredder to make the fights easier if you build the lumber mill
kill Dessicus of the Dead Pools##81529
|achieve 9400/4 |goto Gorgrond 40.0,52.2
step
_Slay_ the following rare elite in Gorgrond |tip You can use your shredder to make the fights easier if you build the lumber mill
kill Crater Lord Igneous##81528
|achieve 9400/3 |goto Gorgrond 43.8,59.6
step
_Slay_ the following rare elite in Gorgrond |tip You can use your shredder to make the fights easier if you build the lumber mill
kill Khargax the Devourer##81537
|achieve 9400/5 |goto Gorgrond 52.4,65.8
step
_Slay_ the following rare elite in Gorgrond |tip You can use your shredder to make the fights easier if you build the lumber mill
kill Fungal Praetorian##80785
|achieve 9400/8 |goto Gorgrond 58.0,63.6
step
_Slay_ the following rare elite in Gorgrond |tip You can use your shredder to make the fights easier if you build the lumber mill
kill Roardan the Sky Terror##77093
|achieve 9400/2 |goto Gorgrond 61.6,61.6
step
_Slay_ the following rare elite in Gorgrond |tip You can use your shredder to make the fights easier if you build the lumber mill
kill Biolante##75207
|achieve 9400/1 |goto Gorgrond 63.0,54.6
step
.' Congratulations, you have _earned_ the Gorgrond Monster Hunter Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Exploration Achievements\\Prove Your Strength",[[
description Complete the following Proofs of Strength in Gorgrond.
condition end achieved(9402)
step
In order to earn this achievement you will _need to have_ the Sparring Arena bulit in Gorgrond |tip You can swap out your building if you wish, or do this on an alt as the achievement is account wide
|confirm
step
kill Ogron Spinecrusher##81240+
get Worn Ogron Horn##114019 |goto Gorgrond 43.6,48.2
use Worn Ogron Horn##114019
accept Proof of Strength: Ogron Horn##36076
step
kill Turbulent Steamfury##81685+
get Elemental Crystal##114038 |goto Gorgrond 43.8,57.8
use Elemental Crystal##114038
accept Proof of Strength: Elemental Crystal##36106
step
kill Goren Gouger##80690+
get Acid-Stained Goren Tooth##113590 |goto Gorgrond 46.0,64.2
use Acid-Stained Goren Tooth##113590
accept Proof of Strength: Goren Tooth##35948
step
kill Gronn Rockthrower##80689+
get Gronn Eye##114023 |goto Gorgrond 45.6,64.6
use Gronn Eye##114023
accept Proof of Strength: Gronn Eye##36083
step
kill Infested Orc##81617+
get Orc Thorn##114027 |goto Gorgrond 47.4,72.6
use Orc Thorn##114027
accept Proof of Strength: Orc Thorn##36091
step
kill Thicket Ravager##81561+
get Ravager Claw##114032 |goto Gorgrond 45.6,80.6
use Ravager Claw##114032
accept Proof of Strength: Ravager Claw##36097
step
kill Bloom Weaver##81575+
get Botani Bloom##114025 |goto Gorgrond 44.0,81.6
use Botani Bloom##114025
accept Proof of Strength: Botani Bloom##36086
step
kill Gronnling Bonebreaker##80685+
get Gronnling Scale##114021 |goto Gorgrond 47.0,85.0
use Gronnling Scale##114021
accept Proof of Strength: Gronnling Scale##36080
step
kill Mistcreep Stinger##85695+
get Wasp Stinger##114034 |goto Gorgrond 52.4,67.0
use Wasp Stinger##114034
accept Proof of Strength: Wasp Stinger##36101
step
kill Mire Basilisk##85694+
get Basilisk Scale##114036 |goto Gorgrond 53.6,66.8
use Basilisk Scale##114036
accept Proof of Strength: Basilisk Scale##36104
step
kill Silent Watcher##81005+
get Ancient Branch##114030 |goto Gorgrond 56.8,56.0
use Ancient Branch##114030
accept Proof of Strength: Ancient Branch##36094
step
talk Limbflayer##76688
turnin Proof of Strength: Ogron Horn##36076 |goto Gorgrond 46.2,69.6 |achieve 9402/8
turnin Proof of Strength: Elemental Crystal##36106 |goto Gorgrond 46.2,69.6 |achieve 9402/4
turnin Proof of Strength: Goren Tooth##35948 |goto Gorgrond 46.2,69.6 |achieve 9402/5
turnin Proof of Strength: Gronn Eye##36083 |goto Gorgrond 46.2,69.6 |achieve 9402/6
turnin Proof of Strength: Orc Thorn##36091 |goto Gorgrond 46.2,69.6 |achieve 9402/9
turnin Proof of Strength: Ravager Claw##36097 |goto Gorgrond 46.2,69.6 |achieve 9402/10
turnin Proof of Strength: Botani Bloom##36086 |goto Gorgrond 46.2,69.6 |achieve 9402/3
turnin Proof of Strength: Gronnling Scale##36080 |goto Gorgrond 46.2,69.6 |achieve 9402/7
turnin Proof of Strength: Wasp Stinger##36101 |goto Gorgrond 46.2,69.6 |achieve 9402/11
turnin Proof of Strength: Basilisk Scale##36104 |goto Gorgrond 46.2,69.6 |achieve 9402/2
turnin Proof of Strength: Ancient Branch##36094 |goto Gorgrond 46.2,69.6 |achieve 9402/1
step
Congratulations, you have _earned_ the Prove Your Strength Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Exploration Achievements\\Shredder Maniac",[[
description Collect 12 or more Hardened Thornvines in Gorgrond.
condition end achieved(9401)
step
In order to earn this achievement you will _need to have_ the Logging Camp bulit in Gorgrond
|confirm
step
_Click_ the below locations to loot #12# or more Hardened Thornvines in Gorgrond |achieve 9401
Hardened Thornvine at [Gorgrond 47.23,51.83]
Hardened Thornvine at [Gorgrond 49.04,48.47]
Hardened Thornvine at [Gorgrond 47.53,43.60]
Hardened Thornvine at [Gorgrond 42.92,43.48]
Hardened Thornvine at [Gorgrond 42.35,54.78]
Hardened Thornvine at [Gorgrond 39.31,56.25]
Hardened Thornvine at [Gorgrond 40.92,67.32]
Hardened Thornvine at [Gorgrond 41.12,77.28]
Hardened Thornvine at [Gorgrond 41.96,81.60]
Hardened Thornvine at [Gorgrond 45.34,81.98]
Hardened Thornvine at [Gorgrond 45.79,89.30]
Hardened Thornvine at [Gorgrond 45.97,93.60]
Hardened Thornvine at [Gorgrond 49.59,78.86]
Hardened Thornvine at [Gorgrond 47.61,76.81]
Hardened Thornvine at [Gorgrond 47.02,69.07]
Hardened Thornvine at [Gorgrond 51.79,69.10]
Hardened Thornvine at [Gorgrond 51.77,61.51]
Hardened Thornvine at [Gorgrond 56.76,57.23]
Hardened Thornvine at [Gorgrond 63.30,57.20]
step
Congratulations, you have _earned_ the Shredder Maniac Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Draenor Fisherman",[[
description Obtain 700 skill points in fishing.
condition end achieved(9503)
step
.' To obtain 700 skill points in Fishing _click here_. |confirm |next "Profession Guides\\Fishing\\Fishing 600-700 Leveling Guide"
|achieve 9503
step
.' Congratulations, you have earned the _Draenor Fisherman_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Arakkoa Archivist",[[
description Restore and display pristine versions of all Arakkoa artifacts.
condition end achieved(9412)
step
.' _Restore and display pristine versions of all Arakkoa artifacts_ listed below:
.' Pristine Dreamcatcher |achieve 9412/1
.' Pristine Burial Urn |achieve 9412/2
.' Pristine Decree Scrolls |achieve 9412/3
.' Pristine Solar Orb |achieve 9412/4
.' Pristine Sundial |achieve 9412/5
.' Pristine Talonpriest Mask |achieve 9412/6
.' Pristine Outcast Dreamcatcher |achieve 9412/7
.' Pristine Apexis Crystal |achieve 9412/8
.' Pristine Apexis Heiroglyph |achieve 9412/9
.' Pristine Apexis Scroll |achieve 9412/10
step
.' Congratulations, you have earned the _Arakkoa Archivist_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Draenor Angler",[[
description Complete the Angler achievements.
condition end achieved(9462)
achieveid 9455,9456,9457,9458,9459,9460,9461
step
label "start"
_Click_ the Angler achievements listed below to complete them
You have _completed_ all of the achievements below |tip You have this earned on your account, however you can earn it on each character again |next "end" |only if achieved(9462)
Sea Scorpion Angler |achieve 9462/1 |confirm |next "scorp"
Jawless Skulker Angler |achieve 9462/2 |confirm |next "skulk"
Fat Sleeper Angler |achieve 9462/3 |confirm |next "sleep"
Blind Lake Sturgeon Angler |achieve 9462/4 |confirm |next "blake"
Blackwater Whiptail Angler |achieve 9462/5 |confirm |next "bwhip"
Abyssal Gulper Eel Angler |achieve 9462/6 |confirm |next "agulp"
Fire Ammonite Angler |achieve 9462/7 |confirm |next "firea"
step
label "blake"
use Blind Lake Sturgeon Bait##110290 |tip Use bait on cooldown
_Catch_ 100 Enormous Blind Lake Sturgeon fish in Draenor
_Fish here_ until you earn the achievement |achieve 9458 |goto Shadowmoon Valley D 48.5,34.1
|next "start"
step
label "bwhip"
use Blackwater Whiptail Bait##110294 |tip Use bait on cooldown
_Catch_ 100 Enormous Blackwater Whiptail fish in Draenor
_Fish here_ until you earn the achievement |achieve 9457 |goto Talador 78.9,54.6
|next "start"
step
label "agulp"
use Abyssal Gulper Eel Bait##110293 |tip Use bait on cooldown
_Catch_ 100 Enormous Abyssal Gulper Eel in Draenor
_Fish here_ until you earn the achievement |achieve 9456 |goto Spires of Arak 51.5,32.9
step
label "sleep"
use Fat Sleeper Bait##110289 |tip Use bait on cooldown
_Catch_ 100 Enormous Fat Sleeper fish in Draenor
_Fish here_ until you earn the achievement |achieve 9459 |goto Nagrand D 84.5,43.7
step
label "firea"
use Fire Ammonite Bait##110291 |tip Use bait on cooldown
_Catch_ 100 Enormous Fire Ammonite fish in Draenor
_Fish here_ until you earn the achievement |achieve 9455 |goto Frostfire Ridge 51.0,59.1
step
label "skulk"
use Jawless Skulker Bait##110274 |tip Use bait on cooldown
_Catch_ 100 Enormous Jawless Skulker fish in Draenor
_Fish here_ until you earn the achievement |achieve 9460 |goto Gorgrond 40.4,76.5
step
label "scorp"
use Sea Scorpion Bait##110292 |tip Use bait on cooldown
_Catch_ 100 Enormous Sea Scorpion fish in Draenor
_Fish here_ until you earn the achievement |achieve 9461 |goto Frostfire Ridge 56.2,75.4
step
label "end"
Congratulations, you have _earned_ the Draenor Angler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Draenor Archaeologist",[[
description Obtain 700 skill points in archaeology.
condition end achieved(9409)
step
.' To obtain 700 skill points in Archaeology _click here_. |confirm |next "Profession Guides\\Archaeology\\Archaeology 600-700 Leveling Guide"
|achieve 9409
step
.' Congratulations, you have earned the _Draenor Archaeologist_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Draenor Cook",[[
description Obtain 700 skill points in cooking.
condition end achieved(9500)
step
.' To obtain 700 skill points in Cooking _click here_. |confirm |next "Profession Guides\\Cooking\\Cooking 600-700 Leveling Guide"
|achieve 9500
step
.' Congratulations, you have earned the _Draenor Cook_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Draenor Curator",[[
description Restore and display pristine versions of all Draenor artifacts.
condition end achieved(9419)
step
_Click here_ to level Archaeology |confirm |next "Profession Guides\\Archaeology\\Archaeology 600-700 Leveling Guide"
_OR_
_Click here_ to continue |confirm |next
step
_Restore and display_ pristine versions of all Draenor artifacts listed below |tip These are randomly solved with Archaeology so don't give up!
Pristine Dreamcatcher |achieve 9419/1
Pristine Burial Urn |achieve 9419/2
Pristine Decree Scrolls |achieve 9419/3
Pristine Solar Orb |achieve 9419/4
Pristine Sundial |achieve 9419/5
Pristine Talonpriest Mask |achieve 9419/6
Pristine Outcast Dreamcatcher |achieve 9419/7
Pristine Apexis Crystal |achieve 9419/8
Pristine Apexis Heiroglyph |achieve 9419/9
Pristine Apexis Scroll |achieve 9419/10
Pristine Dreamcatcher |achieve 9419/11
Pristine Burial Urn |achieve 9419/12
Pristine Decree Scrolls |achieve 9419/13
Pristine Solar Orb |achieve 9419/14
Pristine Sundial |achieve 9419/15
Pristine Talonpriest Mask |achieve 9419/16
Pristine Outcast Dreamcatcher |achieve 9419/17
_Click here_ for page 2 |confirm |next
step
Pristine Apexis Crystal |achieve 9419/18
Pristine Apexis Heiroglyph |achieve 9419/19
Pristine Apexis Scroll |achieve 9419/20
Pristine Fang-Scarred Frostwolf Axe |achieve 9419/21
Pristine Frostwolf Ancestry Scrimshaw |achieve 9419/22
Pristine Wolfskin Snowshoes |achieve 9419/23
Pristine Warsinger's Drums |achieve 9419/24
Pristine Screaming Bullroarer |achieve 9419/25
Pristine Warsong Ceremonial Pike |achieve 9419/26
Pristine Metalworker's Hammer |achieve 9419/27
Pristine Elemental Bellows |achieve 9419/28
Pristine Blackrock Razor |achieve 9419/29
Pristine Weighted Chopping Axe |achieve 9419/30
Pristine Hooked Dagger |achieve 9419/31
Pristine Barbed Fishing Hook |achieve 9419/32
Pristine Calcified Eye In a Jar |achieve 9419/33
Pristine Ceremonial Tattoo Needles |achieve 9419/34
_Click here_ for page 3 |confirm |next
step
Pristine Ancestral Talisman |achieve 9419/35
Pristine Cracked Ivory Idol |achieve 9419/36
Pristine Flask of Blazegrease |achieve 9419/37
Pristine Gronn-Tooth Necklace |achieve 9419/38
Pristine Doomsday Prophecy |achieve 9419/39
Pristine Stonemaul Succession Stone |achieve 9419/40
Pristine Stone Manacles |achieve 9419/41
Pristine Ogre Figurine |achieve 9419/42
Pristine Pictogram Carving |achieve 9419/43
Pristine Gladiator's Shield |achieve 9419/44
Pristine Mortar and Pestle |achieve 9419/45
Pristine Eye of Har'guun the Blind |achieve 9419/46
Pristine Stone Dentures |achieve 9419/47
Pristine Rylak Riding Harness |achieve 9419/48
Pristine Imperial Decree Stele |achieve 9419/49
step
Congratulations, you have _earned_ the Draenor Curator Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Draenor Fisherman",[[
description Obtain 700 skill points in fishing.
condition end achieved(9503)
step
.' To obtain 700 skill points in Fishing _click here_. |confirm |next "Profession Guides\\Fishing\\Fishing 600-700 Leveling Guide"
|achieve 9503
step
.' Congratulations, you have earned the _Draenor Fisherman_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Draenor Master",[[
description Obtain 700 skill points in a profession.
condition end achieved(9464)
step
.' _Obtain 700 skill points_ in any profession below:
.' _Click here_ for Alchemy |confirm |next "Profession Guides\\Alchemy\\Alchemy 600-700 Leveling Guide"
.' _Click here_ for Blacksmithing |confirm |next "Profession Guides\\Blacksmithing\\Blacksmithing 600-700 Leveling Guide"
.' _Click here_ for Enchanting |confirm |next "Profession Guides\\Enchanting\\Enchanting 600-700 Leveling Guide"
.' _Click here_ for Engineering |confirm |next "Profession Guides\\Engineering\\Engineering 600-700 Leveling Guide"
.' _Click here_ for Herbalism |confirm |next "Profession Guides\\Herbalism\\Herbalism 600-700 Leveling Guide"
.' _Click here_ for Inscription |confirm |next "Profession Guides\\Inscription\\Inscription 600-700 Leveling Guide"
.' _Click here_ for Jewelcrafting |confirm |next "Profession Guides\\Jewelcrafting\\Jewelcrafting 600-700 Leveling Guide"
.' _Click here_ for Leatherworking |confirm |next "Profession Guides\\Leatherworking\\Leatherworking 600-700 Leveling Guide"
.' _Click here_ for Minin |confirm |next "Profession Guides\\Mining\\Mining 600-700 Leveling Guide"
.' _Click here_ for Skinning |confirm |next "Profession Guides\\Skinning\\Skinning 600-700 Leveling Guide"
.' _Click here_ for Tailoring |confirm |next "Profession Guides\\Tailoring\\Tailoring 600-700 Leveling Guide"
|achieve 9464
step
.' Congratulations, you have earned the _Draenor Master_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Draenor Medic",[[
description Obtain 700 skill points in First Aid.
condition end achieved(9505)
step
.' To unlock a maximum First Aid skill of 700, you will _need to loot First Aid in Draenor_.
.' These can drop off any mob, _continue killing or questing until you get it_.
..collect First Aid in Draenor##111364 |n
.use First Aid in Draenor##111364
.learn Healing Tonic##172540
step
.' You will need _200 Sea Scorpion Segments_ to reach level 700 in First Aid.
.' These can be _gathered_ if you have the Fishing skill, or _purchased_ off the Auction House.
.' _Click here_ to go Fishing. |next "fish" |confirm
.' _Click here_ to go to the Auction House. |next "buyfish" |confirm
step
label "fish"
.' _Fish in the water_ here. |goto Shadowmoon Valley D 41.5,65.4 |cast Fishing##131474
.use Sea Scorpion Bait##110292
.' _Use any Sea Scorpion Bait_ you may have while fishing.
.collect Small Sea Scorpion##111658 |n
.use Small Sea Scorpion##111658 |tip These can only be used in stacks of 20.
.collect Sea Scorpion##111665 |n
.use Sea Scorpion##111665 |tip These can only be used in stacks of 10.
.collect Enormous Sea Scorpion##111672 |n
.use Enormous Sea Scorpion##111672 |tip These can only be used in stacks of 5.
..collect 200 Sea Scorpion Segments##109142
|next "craft"
step
label "buyfish"
#include "auctioneer"
.' _Buy 200 Sea Scorpion Segments_ from the Auction House.
..collect 200 Sea Scorpion Segment##109142
|next "craft"
step
label "craft"
.create 20 Healing Tonic##172540,First Aid,700
|achieve 9505
step
.' Congratulations, you have earned the _Draenor Medic_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Draenic Seed Collector",[[
description Collect 500 Draenic Seeds.
condition end achieved(9454)
step
Draenic Seeds can be _acquired_ through garrison herb picking slowly every day |tip Having the herbalism profession allows you to gain the seed through regular herb nodes in Draenor
Collecting 500 is _required_ for level 3 garrison herb farm |tip The achievemnt is account wide so you can do this on an alt instead of dropping a profession if you please
_Collect_ #500# Draenic Seeds |achieve 9454
step
Congratulations, you have _earned_ the Draenic Seed Collector Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Draenic Stone Collector",[[
description Collect 500 Draenic Stones.
condition end achieved(9453)
step
Draenic Stone can be _acquired_ through garrison mining slowly every day |tip Having the mining profession allows you to gain the stone through regular mining nodes in Draenor
Collecting 500 is _required_ for level 3 garrison mine |tip The achievemnt is account wide so you can do this on an alt instead of dropping a profession if you please
_Collect_ #500# Draenic Stones |achieve 9453
step
Congratulations, you have _earned_ the Draenic Stone Collector Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Grand Master of All",[[
description Raise all primary professions to 700 skill points.
condition end achieved(9087)
step
.' _Raise all primary professions_ to 700 skill points.
.' _Click here_ for Alchemy |achieve 9087/1 |confirm |next "Profession Guides\\Alchemy\\Alchemy 600-700 Leveling Guide"
.' _Click here_ for Blacksmithing |achieve 9087/2 |confirm |next "Profession Guides\\Blacksmithing\\Blacksmithing 600-700 Leveling Guide"
.' _Click here_ for Enchanting |achieve 9087/3 |confirm |next "Profession Guides\\Enchanting\\Enchanting 600-700 Leveling Guide"
.' _Click here_ for Engineering |achieve 9087/4 |confirm |next "Profession Guides\\Engineering\\Engineering 600-700 Leveling Guide"
.' _Click here_ for Herbalism |achieve 9087/5 |confirm |next "Profession Guides\\Herbalism\\Herbalism 600-700 Leveling Guide"
.' _Click here_ for Inscription |achieve 9087/6 |confirm |next "Profession Guides\\Inscription\\Inscription 600-700 Leveling Guide"
.' _Click here_ for Jewelcrafting |achieve 9087/7 |confirm |next "Profession Guides\\Jewelcrafting\\Jewelcrafting 600-700 Leveling Guide"
.' _Click here_ for Leatherworking |achieve 9087/8 |confirm |next "Profession Guides\\Leatherworking\\Leatherworking 600-700 Leveling Guide"
.' _Click here_ for Mining |achieve 9087/9 |confirm |next "Profession Guides\\Mining\\Mining 600-700 Leveling Guide"
.' _Click here_ for Skinning |achieve 9087/10 |confirm |next "Profession Guides\\Skinning\\Skinning 600-700 Leveling Guide"
.' _Click here_ for Tailoring |achieve 9087/11 |confirm |next "Profession Guides\\Tailoring\\Tailoring 600-700 Leveling Guide"
step
.' Congratulations, you have earned the _Grand Master of All_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Highmaul Historian",[[
description Restore and display pristine versions of all Ogre artifacts.
condition end achieved(9411)
step
_Click here_ to level Archaeology |confirm |next "Profession Guides\\Archaeology\\Archaeology 600-700 Leveling Guide"
_OR_
_Click here_ to continue |confirm |next
step
_Restore and display_ pristine versions of all Ogre artifacts listed below |tip These are randomly solved with Archaeology so don't give up!
Pristine Stonemaul Succession Stone |achieve 9411/1
Pristine Stone Manacles |achieve 9411/2
Pristine Ogre Figurine |achieve 9411/3
Pristine Pictogram Carving |achieve 9411/4
Pristine Gladiator's Shield |achieve 9411/5
Pristine Mortar and Pestle |achieve 9411/6
Pristine Eye of Har'guun |achieve 9411/7
Pristine Stone Dentures |achieve 9411/8
Pristine Rylak Riding Harness |achieve 9411/9
Pristine Imperial Decree Stele |achieve 9411/10
step
Congratulations, you have _earned_ the Highmaul Historian Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Inspector Gadgetzan",[[
description Acquire decoded messages from Blingtron 5000.
condition end achieved(9071)
step
_Acquire_ the decoded messages from Blingtron 5000 listed below |tip Blingtron 5000 offers a daily from which these messages are gained
The Blingtron 5000 can be _constructed through Engineering_ or _used by another player_
Decoded Message 001-003 |achieve 9071/1
Decoded Message 001-014 |achieve 9071/2
Decoded Message 001-107 |achieve 9071/3
Decoded Message 001-111 |achieve 9071/4
Decoded Message 001-119 |achieve 9071/5
Decoded Message 001-150 |achieve 9071/6
Decoded Message 001-159 |achieve 9071/7
Decoded Message 001-168 |achieve 9071/8
step
Congratulations, you have _earned_ the Inspector Gadgetzan Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Ogre Observer",[[
description Discover the Ogre artifacts.
condition end achieved(9414)
step
_Click here_ to level Archaeology |confirm |next "Profession Guides\\Archaeology\\Archaeology 600-700 Leveling Guide"
_OR_
_Click here_ to continue |confirm |next
step
_Discover_ the following Ogre artifacts listed below |tip These are randomly solved with Archaeology so don't give up!
Eye of Har'gunn the Blind |achieve 9414/1
Gladiator's Shield |achieve 9414/2
Imperial Decree Stele |achieve 9414/3
Mortar and Pestle |achieve 9414/4
Ogre Figurine |achieve 9414/5
Pictogram Carving |achieve 9414/6
Rylak Riding Harness |achieve 9414/7
Stone Dentures |achieve 9414/8
Stone Manacles |achieve 9414/9
Stonemaul Succession Stone |achieve 9414/10
step
Congratulations, you have _earned_ the Ogre Observer Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Savage Skills to Pay the Bills",[[
description Obtain 700 skill points in Fishing, First Aid, Cooking, and Archaeology.
condition end achieved(9506)
step
.' _Obtain 700 skill points_ in Fishing, First Aid, Cooking, and Archaeology.
.' _Click here_ for Archaeology |achieve 9506/1 |confirm |next "Profession Guides\\Archaeology\\Archaeology 600-700 Leveling Guide"
.' _Click here_ for Cooking |achieve 9506/2 |confirm |next "Profession Guides\\Cooking\\Cooking 600-700 Leveling Guide"
.' _Click here_ for First Aid |achieve 9506/3 |confirm |next "Profession Guides\\First Aid\\First Aid 600-700 Leveling Guide"
.' _Click here_ for Fishing |achieve 9506/4 |confirm |next "Profession Guides\\Fishing\\Fishing 600-700 Leveling Guide"
step
.' Congratulations, you have earned the _Savage Skills to Pay the Bills_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Secrets of Skettis",[[
description Discover the Arakkoa artifacts.
condition end achieved(9415)
step
_Click here_ to level Archaeology |confirm |next "Profession Guides\\Archaeology\\Archaeology 600-700 Leveling Guide"
_OR_
_Click here_ to continue |confirm |next
step
_Discover_ the following Arakkoa artifacts listed below |tip These are randomly solved with Archaeology so don't give up!
Dreamcatcher |achieve 9415/1
Burial Urn |achieve 9415/2
Decree Scrolls |achieve 9415/3
Solar Orb |achieve 9415/4
Sundial |achieve 9415/5
Talonpriest Mask |achieve 9415/6
Outcast Dreamcatcher |achieve 9415/7
Apexis Crystal |achieve 9415/8
Apexis Heiroglyph |achieve 9415/9
Apexis Scroll |achieve 9415/10
step
Congratulations, you have _earned_ the Secrets of Skettis Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Strength and Honor",[[
description Discover the Draenor Clans artifacts.
condition end achieved(9413)
step
_Click here_ to level Archaeology |confirm |next "Profession Guides\\Archaeology\\Archaeology 600-700 Leveling Guide"
_OR_
_Click here_ to continue |confirm |next
step
_Discover_ the following Draenor Clans artifacts listed below |tip These are randomly solved with Archaeology so don't give up!
Quilen Statuette |achieve 9413/1
Barbed Fishing Hook |achieve 9413/2
Blackrock Razor |achieve 9413/3
Calcified Eye In a Jar |achieve 9413/4
Ceremonial Tattoo Needles |achieve 9413/5
Cracked Ivory Idol |achieve 9413/6
Doomsday Prophecy |achieve 9413/7
Elemental Bellows |achieve 9413/8
Fang-Scarred Frostwolf Axe |achieve 9413/9
Flask of Blazegrease |achieve 9413/10
Frostwolf Ancestry Scrimshaw |achieve 9413/11
Gronn-Tooth Necklace |achieve 9413/12
Hooked Dagger |achieve 9413/13
Metalworker's Hammer |achieve 9413/14
Screaming Bullroarer |achieve 9413/15
Warsinger's Drums |achieve 9413/16
Warsong Ceremonial Pike |achieve 9413/17
Weighted Chopping Axe |achieve 9413/18
Wolfskin Snowshoes |achieve 9413/19
step
Congratulations, you have _earned_ the Strength and Honor Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\The Draenor Gourmet",[[
description Cook 20 of the Draenor recipes listed below.
condition end achieved(9501)
step
In order to earn this achievement you will need to _have the following buildings_ in your Garrison
_Tradepost available_
_Herb Garden_
_Fishing Shack_ |tip It is highly recommened that you use what resources you have to buy fish as all the fishing spots are random chance of any fish in Draenor
|confirm
step
talk Trader Joseph##87211
accept Tricks of the Trade##37088 |goto Lunarfall/0 52.8,43.9
|only if not completedq(37088)
step
click Tradesman Portanuus##87287
_Use_ the Mug of Rousing Coffeee |use Mug of Rousing Coffee##118418
Trader _roused_ |q Tricks of the Trade##37088/1 |goto Lunarfall/0 57.9,71.8
|only if not completedq(37088)
step
talk Trader Joseph##87211
turnin Tricks of the Trade##37088 |goto Lunarfall/0 52.8,43.9
|only if not completedq(37088)
step
This step is here for the purpose of _checking your progress_ with the achievement
Blackrock Barbeque |achieve 9501/1
Blackrock Ham |achieve 9501/2
Braised Riverbeast |achieve 9501/3
Calamari Crepes |achieve 9501/4
Clefthoof Sausages |achieve 9501/5
Fat Sleeper Cakes |achieve 9501/6
Feast of Blood |achieve 9501/7
Feast of the Waters |achieve 9501/8
Fiery Calamari |achieve 9501/9
Frosty Stew |achieve 9501/10
Gorground Chowder |achieve 9501/11
Grilled Gulper |achieve 9501/12
Grilled Saberfish |achieve 9501/13
Hearty Elekk Steak |achieve 9501/14
Pan-Seared Talbuk |achieve 9501/15
Rylak Crepes |achieve 9501/16
Saberfish Broth |achieve 9501/17
Skulker Chowder |achieve 9501/18
Sleeper Surprise |achieve 9501/19
Steamed Scorpion |achieve 9501/20
Sturgeon Stew |achieve 9501/21
Talador Surf and Turf |achieve 9501/22
_Click_ to continue |confirm
step
talk Tradesman Portanuus##87204
You will _need_ a trading post in your garrison to collect the following items
_Meat_
buy 40 Raw Boar Meat##109136
buy 40 Raw Clefthoof Meat##109131
buy 40 Raw Elekk Meat##109134
buy 40 Raw Riverbeast Meat##109135
buy 40 Raw Talbuk Meat##109132
buy 40 Rylak Egg##109133
Roughly 1680 Garrison Resources _will be required_ to purchase all of these items
step
talk Tradesman Portanuus##87204
_Fish_
buy 70 Abyssal Gulper Eel Flesh##109143
buy 70 Blind Lake Sturgeon Flesh##109140
buy 10 Crescent Saberfish Flesh##109137
buy 70 Fat Sleeper Flesh##109139
buy 70 Fire Ammonite Tentacle##109141
buy 70 Jawless Skulker Flesh##109138
buy 70 Sea Scorpion Segment##109142
Rough 3260 Garrison Resources _will be required_ to purchase all of these items
step
talk Tradesman Portanuus##87204
_Herbalism_
buy 1 Fireweed##109125
buy 1 Frostweed##109124
buy 1 Gorgrond Flytrap##109126
buy 1 Nagrand Arrowbloom##109128
buy 1 Starflower##109127
buy 1 Talador Orchid##109129
Roughly 60 Garrison Resources _will be required_ to purchase all of these items
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Blackrock Barbecue##160986,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Blackrock Ham##160962,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Braised Riverbeast##160968,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Calamari Crepes##160999,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Clefthoof Sausages##160971,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Fat Sleeper Cakes##160981,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Feast of Blood##173978,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Feast of the Waters##173979,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Fiery Calamari##160982,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Frosty Stew##160987,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Gorgrond Chowder##161000,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Grilled Gulper##160978,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Grilled Saberfish##161002,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Hearty Elekk Steak##160958,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Pan-Seared Talbuk##160966,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Rylak Crepes##160969,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Saberfish Broth##161001,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Skulker Chowder##160983,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Sleeper Surprise##160989,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Steamed Scorpion##160973,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Sturgeon Stew##160979,Cooking,1 total
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Talador Surf and Turf##160984,Cooking,1 total
step
Congratulations, you have _earned_ the The Draenor Gourmet Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\The Search For Fact, Not Truth",[[
description Find 30 rare artifacts.
condition end achieved(9422)
step
_Click here_ to level Archaeology |confirm |next "Profession Guides\\Archaeology\\Archaeology 600-700 Leveling Guide"
_OR_
_Click here_ to continue |confirm |next
step
_Find_ #30# rare artifacts |achieve 9422 |tip These are randomly solved with Archaeology so don't give up!
step
Congratulations, you have _earned_ the The Search For Fact, Not Truth Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Unite the Clans",[[
description Restore and display pristine versions of all Draenor Clans artifacts.
condition end achieved(9410)
step
_Click here_ to level Archaeology |confirm |next "Profession Guides\\Archaeology\\Archaeology 600-700 Leveling Guide"
_OR_
_Click here_ to continue |confirm |next
step
_Restore and display_ pristine versions of all Draenor Clans artifacts listed below |tip These are randomly solved with Archaeology so don't give up!
Pristine Fang-Scarred Frostwolf Axe |achieve 9410/1
Pristine Frostwolf Ancestry Scrimshaw |achieve 9410/2
Pristine Wolfskin Snowshoes |achieve 9410/3
Pristine Warsinger's Drums |achieve 9410/4
Pristine Screaming Bullroarer |achieve 9410/5
Pristine Warsong Ceremonial Pike |achieve 9410/6
Pristine Metalworker's Hammer |achieve 9410/7
Pristine Elemental Bellows |achieve 9410/8
Pristine Blackrock Razor |achieve 9410/9
Pristine Weighted Chopping Axe |achieve 9410/10
Pristine Hooked Dagger |achieve 9410/11
Pristine Barbed Fishing Hook |achieve 9410/12
Pristine Calcified Eye In A Jar |achieve 9410/13
Pristine Ceremonial Tattoo Needles |achieve 9410/14
Pristine Ancestral Talisman |achieve 9410/15
Pristine Cracked Ivory Idol |achieve 9410/16
Pristine Flask of Blazegrease |achieve 9410/17
Pristine Gronn-Tooth Necklace |achieve 9410/18
Pristine Doomsday Prophecy |achieve 9410/19
step
Congratulations, you have _earned_ the Unite the Clans Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Working in Draenor",[[
description Obtain 700 skill points in two primary professions.
condition end achieved(9507)
step
.' _Obtain 700 skill points_ in two primary professions listed below:
.' _Click here_ for Alchemy |confirm |next "Profession Guides\\Alchemy\\Alchemy 600-700 Leveling Guide"
.' _Click here_ for Blacksmithing |confirm |next "Profession Guides\\Blacksmithing\\Blacksmithing 600-700 Leveling Guide"
.' _Click here_ for Enchanting |confirm |next "Profession Guides\\Enchanting\\Enchanting 600-700 Leveling Guide"
.' _Click here_ for Engineering |confirm |next "Profession Guides\\Engineering\\Engineering 600-700 Leveling Guide"
.' _Click here_ for Herbalism |confirm |next "Profession Guides\\Herbalism\\Herbalism 600-700 Leveling Guide"
.' _Click here_ for Inscription |confirm |next "Profession Guides\\Inscription\\Inscription 600-700 Leveling Guide"
.' _Click here_ for Jewelcrafting |confirm |next "Profession Guides\\Jewelcrafting\\Jewelcrafting 600-700 Leveling Guide"
.' _Click here_ for Leatherworking |confirm |next "Profession Guides\\Leatherworking\\Leatherworking 600-700 Leveling Guide"
.' _Click here_ for Mining |confirm |next "Profession Guides\\Mining\\Mining 600-700 Leveling Guide"
.' _Click here_ for Skinning |confirm |next "Profession Guides\\Skinning\\Skinning 600-700 Leveling Guide"
.' _Click here_ for Tailoring |confirm |next "Profession Guides\\Tailoring\\Tailoring 600-700 Leveling Guide"
step
.' Congratulations, you have earned the _Working in Draenor_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Pet Battle Achievements\\An Awfully Big Adventure",[[
description Defeat trainers with an Elekk Plushie on your team.
condition end achieved(9069)
step
Defeating all the following trainers with an Elekk Plushie on your team _will require_ level 25 pets so train up!
Two of the trainers are located on Darkmoon Island, and _will need to be completed_ when the Faire is in town
|confirm
step
_Defeat_ Brok |achieve 9069/7 |goto Mount Hyjal 61.4,32.8
step
_Defeat_ Obalis |achieve 9069/29 |goto Uldum 56.6,41.8
step
_Defeat_ Stone Cold Trixxy |achieve 9069/34 |goto Winterspring 65.6,64.6
step
_Defeat_ Goz Banefury |achieve 9069/17 |goto Twilight Highlands 56.6,56.8
step
_Defeat_ Lydia Accoste |achieve 9069/22 |goto Deadwind Pass 40.2,76.6
step
_Defeat_ Nicki Tinytech |achieve 9069/28 |goto Hellfire Peninsula 64.4,49.2
step
_Defeat_ Ras'an |achieve 9069/31 |goto Zangarmarsh 17.2,50.6
step
_Defeat_ Morulu the Elder |achieve 9069/25 |goto Shattrath City 59.0,70.0
step
_Defeat_ Bloodknight Antari |achieve 9069/5 |goto Shadowmoon Valley 30.6,41.8
step
_Defeat_ Narrok |achieve 9069/26 |goto Nagrand 61.0,49.4
step
_Defeat_ Beegle Blastfuse |achieve 9069/3 |goto Howling Fjord 28.6,33.8
step
_Defeat_ Okrut Dragonwaste |achieve 9069/30 |goto Dragonblight 59.0,77.0
step
_Defeat_ Nearly Headless Jacob |achieve 9069/27 |goto Crystalsong Forest 50.2,59.0
step
_Defeat_ Gutretch |achieve 9069/18 |goto Zul'Drak 13.2,66.8
step
_Defeat_ Major Payne |achieve 9069/23 |goto Icecrown 77.4,19.6
step
_Defeat_ Hyuna of the Shrines |achieve 9069/19 |goto The Jade Forest 48.0,54.0
step
_Defeat_ Whispering Pandaren Spirit |achieve 9069/42 |goto The Jade Forest 28.8,36.0
step
_Defeat_ Thundering Pandaren Spirit |achieve 9069/39 |goto Kun-Lai Summit 64.8,93.6
step
_Defeat_ Courageous Yon |achieve 9069/11 |goto Kun-Lai Summit 35.8,73.6
step
_Defeat_ Aki the Chosen |achieve 9069/1 |goto Vale of Eternal Blossoms 31.2,74.2
step
_Defeat_ Farmer Nishi |achieve 9069/14 |goto Valley of the Four Winds 46.0,43.6
step
_Defeat_ Mo'ruk |achieve 9069/24 |goto Krasarang Wilds 62.2,45.8
step
_Defeat_ Flowing Pandaren Spirit |achieve 9069/15 |goto Dread Wastes 61.2,87.6
step
_Defeat_ Wastewalker Shu |achieve 9069/41 |goto Dread Wastes 55.0,37.6
step
_Defeat_ Burning Pandaren Spirit |achieve 9069/8 |goto Townlong Steppes 57.0,42.2
step
_Defeat_ Seeker Zusshi |achieve 9069/32 |goto Townlong Steppes 36.2,52.2
step
_Defeat_ Blingtron 4000 |achieve 9069/4 |goto Timeless Isle 40.2,56.4
step
_Defeat_ Sully "The Pickle" McLeary |achieve 9069/35 |goto Timeless Isle 37.8,57.2
step
_Defeat_ Shademaster Kiryn |achieve 9069/33 |goto Timeless Isle 37.8,57.2
step
_Defeat_ Dr. Ion Goldbloom |achieve 9069/13 |goto Timeless Isle 40.2,56.2
step
_Defeat_ Chen Stormstout |achieve 9069/9 |goto Timeless Isle 37.2,47.2
step
_Defeat_ Taran Zhu |achieve 9069/37 |goto Timeless Isle 40.0,52.6
step
_Defeat_ Lorewalker Cho |achieve 9069/21 |goto Timeless Isle 40.0,52.6
step
_Defeat_ Wise Mari |achieve 9069/43 |goto Timeless Isle 40.0,52.6
step
_Defeat_ Wrathion |achieve 9069/44 |goto Timeless Isle 37.8,57.2
step
_Defeat_ Taralune |achieve 9069/36 |goto Talador 49.0,80.6
step
_Defeat_ Cymre Brightblade |achieve 9069/12 |goto Gorgrond 51.0,70.6
step
_Defeat_ Ashlei |achieve 9069/2 |goto Shadowmoon Valley D 50.0,31.2
step
_Defeat_ Vesharr |achieve 9069/40 |goto Spires of Arak 46.2,45.4
step
_Defeat_ Tarr the Terrible |achieve 9069/38 |goto Nagrand D 56.2,9.8
step
_Defeat_ Gargra |achieve 9069/16 |goto Frostfire Ridge 68.6,64.6
step
_Defeat_ Bordin Steadyfist |achieve 9069/6 |goto Deepholm 49.8,57.0
step
_Defeat_ Christoph VonFeasel |achieve 9069/10 |goto Darkmoon Island 47.4,62.2
step
_Defeat_ Jeremy Feasel |achieve 9069/20 |goto Darkmoon Island 47.8,62.6
step
Congratulations, you have _earned_ the An Awfully Big Adventure Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Pet Battle Achievements\\Draenic Pet Battler",[[
description Win 500 pet battles in Draenor.
condition end achieved(9463)
step
_Win_ #500# pet battles in Draenor |achieve 9463 |goto Frostfire Ridge 54,20 |tip A good place to grind is near the neutral flight master at Bloodmaul Slag Mines in Frostfire Ridge
step
Congratulations, you have _earned_ the Draenic Pet Battler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Pet Battle Achievements\\Draenor Safari",[[
description Catch every battle pet in Draenor.
condition end achieved(9685)
step
Capturing pets in Draenor _will require_ level 25 pets so train up!
|confirm
step
_Capture_ Mossbite Skitterer |achieve 9685/15 |goto Shadowmoon Valley D 48.2,82.0
learnpet Mossbite Skitterer##85005
step
_Capture_ Waterfly |achieve 9685/23 |goto Shadowmoon Valley D 53.8,66.8
learnpet Waterfly##88355
step
_Capture_ Moonshell Crab |achieve 9685/14 |goto Shadowmoon Valley D 67.6,32.4
learnpet Moonshell Crab##82045
step
_Capture_ Royal Moth |achieve 9685/18 |goto Shadowmoon Valley D 39.2,39.4
learnpet Royal Moth##88417
step
_Capture_ Zangar Crawler |achieve 9685/25 |goto Shadowmoon Valley D 41.2,16.0
learnpet Zangar Crawler##88466
step
_Capture_ Swamplighter Firefly |achieve 9685/20 |goto Spires of Arak 54.5,87.3
learnpet Swamplighter Firefly##88359
step
_Capture_ Golden Dawnfeather |achieve 9685/8 |goto Spires of Arak 41.2,57.2
learnpet Golden Dawnfeather##85798
step
_Capture_ Bloodsting Wasp |achieve 9685/3 |goto Spires of Arak 44.2,49.6
learnpet Bloodsting Wasp##85255
step
_Capture_ Thicket Skitterer |achieve 9685/21 |goto Spires of Arak 45.0,47.3
learnpet Thicket Skitterer##85007
step
_Capture_ Leatherhide Runt |achieve 9685/13 |goto Nagrand D 80.0,56.4
learnpet Leatherhide Runt##89198
step
_Capture_ Mud Jumper |achieve 9685/16 |goto Nagrand D 69.4,20.8
learnpet Mud Jumper##83642
step
_Capture_ Frostfur Rat |achieve 9685/6 |goto Frostfire Ridge 51.8,20.7
learnpet Frostfur Rat##82715
step
_Capture_ Twilight Wasp |achieve 9685/22 |goto Frostfire Ridge 56.4,17.6
learnpet Twilight Wasp##85253
step
_Capture_ Icespine Hatchling |achieve 9685/9 |goto Frostfire Ridge 54.8,37.6
learnpet Icespine Hatchling##85003
step
_Capture_ Ironclaw Scuttler |achieve 9685/10 |goto Frostfire Ridge 54.0,37.0
learnpet Ironclaw Scuttler##88474
step
_Capture_ Frostshell Pincher |achieve 9685/7 |goto Frostfire Ridge 54.2,59.2
learnpet Frostshell Pincher##88480
step
_Capture_ Junglebeak |achieve 9685/11 |goto Gorgrond 42.4,73.6
learnpet Junglebeak##85192
step
_Capture_ Axebeak Hatchling |achieve 9685/2 |goto Gorgrond 59.2,52.8
learnpet Axebeak Hatchling##85389
step
_Capture_ Amberbarb Wasp |achieve 9685/1 |goto Gorgrond 51.6,70.8
learnpet Amberbarb Wasp##85257
step
_Capture_ Wood Wasp |achieve 9685/24 |goto Gorgrond 49.2,80.9
learnpet Wood Wasp##85254
step
_Capture_ Mudback Calf |achieve 9685/17 |goto Gorgrond 47.6,88.2
learnpet Mudback Calf##88571
step
_Capture_ Kelp Scuttler |achieve 9685/12 |goto Talador 54.0,16.1
learnpet Kelp Scuttler##88465
step
_Capture_ Brilliant Bloodfeather |achieve 9685/4 |goto Talador 65.6,31.2
learnpet Brilliant Bloodfeather##88385
step
_Capture_ Shadow Sporebat |achieve 9685/19 |goto Talador 84.9,29.8
learnpet Shadow Sporebat##88576
step
_Capture_ Flat-Tooth Calf |achieve 9685/5 |goto Talador 70.8,53.4
learnpet Flat-Tooth Calf##88572
step
Congratulations, you have _earned_ the Draenor Safari Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Pet Battle Achievements\\Overstuffed",[[
description Raise an Elekk Plushie to level 25.
condition end achieved(9070)
step
.' _Click here_ to obtain an Elekk Plushie. |confirm |next "Zygor's Alliance Pets & Mounts Guide\\Pets\\Elekk Plushie"
.' _Raise an Elekk Plushie_ to level 25. |achieve 9070
step
.' Congratulations, you have earned the _Overstuffed_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Pet Battle Achievements\\Pet Charmer",[[
description Earn 500 Pet Charms.
condition end achieved(9712)
step
label "start"
Pet Charms are rewarded by _completing_ pet battle dailies versus the trainers in Draenor below
_Click_ to battle Cymre Brightblade |confirm |next "cymre"
_Click_ to battle Ashlei |confirm |next "ashle"
_Click_ to battle Vesharr |confirm |next "vesha"
_Click_ to battle Gargra |confirm |next "gargr"
_Click_ to battle Taralune |confirm |next "teral"
_Click_ to battle Tarr the Terrible |confirm |next "tarrt"
_Earn_ #500# Pet Charms |achieve 9712 |next "end"
step
label "cymre"
talk Cymre Brightblade##83837
accept Cymre Brightblade##37201 |goto Gorgrond 51.1,70.6 |tip Defeat her in pet combat!
step
turnin Cymre Brightblade##37201 |goto Gorgrond 51.1,70.6
|next "start"
step
label "ashle"
talk Ashlei##87124
accept Ashlei##37203 |goto Shadowmoon Valley D 50.0,31.3 |tip Defeat her in pet combat!
step
turnin Ashlei##37203 |goto Shadowmoon Valley D 50.0,31.3
|next "start"
step
label "vesha"
talk Vesharr##87123
accept Vesharr##37207 |goto Spires of Arak 46.3,45.3 |tip Defeat him in pet combat!
step
turnin Vesharr##37207 |goto Spires of Arak 46.3,45.3
|next "start"
step
label "gargr"
talk Gargra##87122
accept Gargra##37205 |goto Frostfire Ridge 68.6,64.8 |tip Defeat him in pet combat!
step
turnin Gargra##37205 |goto Frostfire Ridge 68.6,64.8
|next "start"
step
label "teral"
talk Taralune##87125
accept Taralune##37208 |goto Talador 49.1,80.3 |tip Defeat her in pet combat!
step
turnin Taralune##37208 |goto Talador 49.1,80.3
|next "start"
step
label "tarrt"
talk Tarr the Terrible##87110
accept Tarr the Terrible##37206 |goto Nagrand D 56.2,9.8 |tip Defeat him in pet combat!
step
turnin Tarr the Terrible##37206 |goto Nagrand D 56.2,9.8
|next "start"
step
label "end"
Congratulations, you have _earned_ the Pet Charmer Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Pet Battle Achievements\\So. Many. Pets.",[[
description Collect 600 unique pets.
condition end achieved(9643)
step
_Collect_ #600# unique pets |achieve 9643 |tip You can select any pet from the Pet Journal by pressing "Shift+P" and clicking the Zygor icon next to the pet you want
step
Congratulations, you have _earned_ the So. Many. Pets. Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Pet Battle Achievements\\Taming Draenor",[[
description Defeat all of the Pet Tamers in Draenor.
condition end achieved(9724)
step
_Defeat all_ of the Pet Tamers in Draenor listed below
_Click_ to battle Cymre Brightblade |achieve 9721/2 |confirm |next "cymre"
_Click_ to battle Ashlei |achieve 9721/1 |confirm |next "ashle"
_Click_ to battle Vesharr |achieve 9721/6 |confirm |next "vesha"
_Click_ to battle Gargra |achieve 9721/3 |confirm |next "gargr"
_Click_ to battle Taralune |achieve 9721/4 |confirm |next "teral"
_Click_ to battle Tarr the Terrible |achieve 9721/5 |confirm |next "tarrt"
next "end" |only if achieved(9724)
step
label "cymre"
talk Cymre Brightblade##83837
accept Cymre Brightblade##37201 |goto Gorgrond 51.1,70.6 |tip Defeat her in pet combat!
step
turnin Cymre Brightblade##37201 |goto Gorgrond 51.1,70.6
next "start"
step
label "ashle"
talk Ashlei##87124
accept Ashlei##37203 |goto Shadowmoon Valley D 50.0,31.3 |tip Defeat her in pet combat!
step
turnin Ashlei##37203 |goto Shadowmoon Valley D 50.0,31.3
next "start"
step
label "vesha"
talk Vesharr##87123
accept Vesharr##37207 |goto Spires of Arak 46.3,45.3 |tip Defeat him in pet combat!
step
turnin Vesharr##37207 |goto Spires of Arak 46.3,45.3
next "start"
step
label "gargr"
talk Gargra##87122
accept Gargra##37205 |goto Frostfire Ridge 68.6,64.8 |tip Defeat him in pet combat!
step
turnin Gargra##37205 |goto Frostfire Ridge 68.6,64.8
next "start"
step
label "teral"
talk Taralune##87125
accept Taralune##37208 |goto Talador 49.1,80.3 |tip Defeat her in pet combat!
step
turnin Taralune##37208 |goto Talador 49.1,80.3
next "start"
step
label "tarrt"
talk Tarr the Terrible##87110
accept Tarr the Terrible##37206 |goto Nagrand D 56.2,9.8 |tip Defeat him in pet combat!
step
turnin Tarr the Terrible##37206 |goto Nagrand D 56.2,9.8
next "start"
step "end"
Congratulations, you have _earned_ the _Taming Draenor_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\A Rare Friend",[[
description Recruit a Rare follower.
condition end achieved(9130)
step
Any follower recruited has a chance to be _randomly upgraded_ upon recruiting
If none of your current followers have upgraded on their own _you can recruit one a week_ from your Garrison Inn
You can also _refer to_ our individual follower guides
_Recruit_ a Rare follower |achieve 9130
step
Congratulations, you have _earned_ the A Rare Friend Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\A Rare Mission",[[
description Complete a Rare garrison mission.
condition end achieved(9141)
step
#include "H_Garrison_CommandTable"
_Select_ a mission labeled "Rare" and complete it |achieve 9141 |tip Rare missions are blue shaded and say RARE! under the level requirement
step
Congratulations, you have _earned_ the A Rare Mission Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\An Epic Buddy",[[
description Recruit an Epic follower.
condition end achieved(9131)
step
Any follower recruited has a chance to be _randomly upgraded_ upon recruiting
If none of your current followers have upgraded on their own _you can recruit one a week_ from your Garrison Inn
You can also _refer to_ our individual follower guides
_Recruit_ an Epic follower |achieve 9131
step
Congratulations, you have _earned_ the An Epic Buddy Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Builder",[[
description Upgrade all the buildings on your garrison plots to level 2.
condition end achieved(9095)
step
#include "H_Garrison_ArchitectTable"
_Upgrade_ all the buildings on your garrison plots listed below
_Upgrade_ #2# small buildings |achieve 9095/1 |tip Profession Buildings, Salvage Yard, Storehouse
_Upgrade_ #2# medium buildings |achieve 9095/2 |tip Barn, Frostfire Tavern, Gladiator's Sanctum, Lumber Mill, Trading Post
_Upgrade_ #1# large building |achieve 9095/3 |tip Barracks, Stables, War Mill, Goblin Gearworks, Spirit Lodge
step
Congratulations, you have _earned_ the Builder Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Choppin' Even More Logs",[[
description Place 100 Work Orders at the Lumber Mill.
condition end achieved(9080)
step
This achievement _requires_ a level 1 Lumber Mill
|confirm
step
Work Orders can be completed for the Mill by chopping down trees in Draenor and collecting Timber |tip Ten timber equals one work order
#include "H_Garrison_MediumBuilding"
_Place_ #100# work orders the Lumber Mill |achieve 9080
step
Congratulations, you have _earned_ the Choppin' Even More Logs Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Choppin' Some Logs",[[
description Place 10 Work Orders at the Lumber Mill.
condition end achieved(9076)
step
This achievement _requires_ a level 1 Lumber Mill
|confirm
step
Work Orders can be completed for the Mill by chopping down trees in Draenor and collecting Timber |tip Ten timber equals one work order
#include "H_Garrison_MediumBuilding"
_Place_ #10# work orders the Lumber Mill |achieve 9076
step
Congratulations, you have _earned_ the Choppin' Some Logs Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Choppin' Some More Logs",[[
description Place 50 Work Orders at the Lumber Mill.
condition end achieved(9077)
step
This achievement _requires_ a level 1 Lumber Mill
|confirm
step
Work Orders can be completed for the Mill by chopping down trees in Draenor and collecting Timber |tip Ten timber equals one work order
#include "H_Garrison_MediumBuilding"
_Place_ #50# work orders the Lumber Mill |achieve 9077
step
Congratulations, you have _earned_ the Choppin' Some More Logs Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Commander",[[
description Recruit 40 followers.
condition end achieved(9494)
step
Please _refer to_ our individual follower guides to track down the more elusive followers on the list
_You can also recruit one a week_ from your Garrison Inn
_Recruit_ #40# followers |achieve 9494
step
Congratulations, you have _earned_ the Commander Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Draenor Pet Brawler",[[
description Win 2000 pet battles in Draenor.
condition end achieved(9264)
step
_Win_ #2000# pet battles in Draenor |achieve 9264 |goto Frostfire Ridge 54,20 |tip A good place to grind is near the neutral flight master at Bloodmaul Slag Mines in Frostfire Ridge
step
Congratulations, you have _earned_ the Draenor Pet Brawler Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Draftsman",[[
description Learn 20 garrison blueprints.
condition end achieved(9125)
step
#include "H_Garrison_BlueprintVendor"
_Buy_ #20# different blueprints for updating your Garrison plots |achieve 9125
step
Congratulations, you have _earned_ the Draftsman Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Exploration Mission Specialist",[[
description Complete a garrison exploration mission.
condition end achieved(9150)
step
#include "H_Garrison_CommandTable"
.' _Select a mission with the Exploration icon_ and complete it. |achieve 9150 |tip The icon looks like a spyglass.
step
.' Congratulations, you have earned the _Exploration Mission Specialist_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Fearless Leader",[[
description Recruit 25 followers.
condition end achieved(9109)
step
Please _refer to_ our individual follower guides to track down the more elusive followers on the list
_You can also recruit one a week_ from your Garrison Inn
_Recruit_ #25# followers |achieve 9109
step
Congratulations, you have _earned_ the Fearless Leader Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Filling the Ranks",[[
description Raise 20 garrison followers to level 100.
condition end achieved(9129)
step
Follower levels are earned by _completing_ garrison missions
#include "H_Garrison_CommandTable"
_Raise_ #20# followers to level 100 |achieve 9129
step
Congratulations, you have _earned_ the Filling the Ranks Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Follow the Leader",[[
description Recruit 5 followers.
condition end achieved(9107)
step
Please _refer to_ our individual follower guides to track down the more elusive followers on the list
_You can also recruit one a week_ from your Garrison Inn
_Recruit_ #5# followers |achieve 9107
step
Congratulations, you have _earned_ the Follow the Leader Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Following Up",[[
description Raise a follower to level 100.
condition end achieved(9110)
step
Follower levels are earned by _completing_ garrison missions
#include "H_Garrison_CommandTable"
_Raise_ #1# follower to level 100 |achieve 9110
step
Congratulations, you have _earned_ the Filling the Ranks Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Grand Master Draftsman",[[
description Learn 60 garrison blueprints.
condition end achieved(9128)
step
#include "H_Garrison_BlueprintVendor"
_Buy_ #60# different blueprints for updating your Garrison plots |achieve 9128
step
Congratulations, you have _earned_ the Grand Master Draftsman Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Item Level Army",[[
description Raise 10 followers' item level to 650.
condition end achieved(9213)
step
Your followers' item level _can be raised past 600_ once they hit level 100
_Applying_ weapon and armor enchancements to them at the command table helps keep track of their current item levels
The enhancements can be _earned through_ missions or work orders at the War Mill
|confirm
step
#include "H_Garrison_CommandTable" |tip Find the follower you wish to upgrade from here
use Weapon Enhancement Token##120302 |tip Creates an uncommon, rare, or epic weapon upgrade
use War Ravaged Weaponry##114616 |tip Makes weapon item level 615
use Blackrock Weaponry##114081 |tip Makes weapon item level 630
use Goredrenched Weaponry##114622 |tip Makes weapon item level 645
use Balanced Weapon Enhancement##114128 |tip Adds 3 weapon item levels
use Striking Weapon Enhancement##114129 |tip Adds 6 weapon item levels
use Power Overrun Weapon Enhancement##114131 |tip Adds 9 weapon item levels
use Armor Enhancement Token##120301 |tip Creates an uncommon, rare, or epic armor upgrade
use War Ravaged Armor Set##114807 |tip Makes armor item level 615
use Blackrock Armor Set##114806 |tip Makes armor item level 630
use Goredrenched Armor Set##114746 |tip Makes armor item level 645
use Braced Armor Enhancement##114745 |tip Adds 3 armor item levels
use Fortified Armor Enhancement##114808 |tip Adds 6 armor item levels
use Heavily Reinforced Armor Enhancement##114822 |tip Adds 9 armor item levels
_Raise_ 10 followers' item level to 650 |achieve 9213
step
Congratulations, you have _earned_ the Item Level Army Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Item Level Force",[[
description Raise 20 followers' item level to 650.
condition end achieved(9243)
step
Your followers' item level _can be raised past 600_ once they hit level 100
_Applying_ weapon and armor enchancements to them at the command table helps keep track of their current item levels
The enhancements can be _earned through_ missions or work orders at the War Mill
|confirm
step
#include "H_Garrison_CommandTable" |tip Find the follower you wish to upgrade from here
use Weapon Enhancement Token##120302 |tip Creates an uncommon, rare, or epic weapon upgrade
use War Ravaged Weaponry##114616 |tip Makes weapon item level 615
use Blackrock Weaponry##114081 |tip Makes weapon item level 630
use Goredrenched Weaponry##114622 |tip Makes weapon item level 645
use Balanced Weapon Enhancement##114128 |tip Adds 3 weapon item levels
use Striking Weapon Enhancement##114129 |tip Adds 6 weapon item levels
use Power Overrun Weapon Enhancement##114131 |tip Adds 9 weapon item levels
use Armor Enhancement Token##120301 |tip Creates an uncommon, rare, or epic armor upgrade
use War Ravaged Armor Set##114807 |tip Makes armor item level 615
use Blackrock Armor Set##114806 |tip Makes armor item level 630
use Goredrenched Armor Set##114746 |tip Makes armor item level 645
use Braced Armor Enhancement##114745 |tip Adds 3 armor item levels
use Fortified Armor Enhancement##114808 |tip Adds 6 armor item levels
use Heavily Reinforced Armor Enhancement##114822 |tip Adds 9 armor item levels
_Raise_ 20 followers' item level to 650 |achieve 9243
step
Congratulations, you have _earned_ the Item Level Force Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Keeping It Rare",[[
description Complete 50 Rare garrison missions.
condition end achieved(9142)
step
#include "H_Garrison_CommandTable"
_Select_ #50# missions labeled "Rare" and complete them |achieve 9142 |tip Rare missions are blue shaded and say RARE! under the level requirement
step
Congratulations, you have _earned_ the Keeping It Rare Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Master Builder",[[
description Upgrade all the buildings on your garrison plots to level 3.
condition end achieved(9096)
step
#include "H_Garrison_ArchitectTable"
_Upgrade_ all the buildings on your garrison plots listed below
_Upgrade_ #3# small buildings |achieve 9096/1 |tip Profession Buildings, Salvage Yard, Storehouse
_Upgrade_ #2# medium buildings |achieve 9096/2 |tip Barn, Frostfire Tavern, Gladiator's Sanctum, Lumber Mill, Trading Post
_Upgrade_ #2# large building |achieve 9096/3 |tip Barracks, Stables, War Mill, Goblin Gearworks, Spirit Lodge
step
Congratulations, you have _earned_ the Master Builder Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Master Draenor Crafter",[[
description Craft 50 Epic items with an item level of at least 600.
condition end achieved(9246)
step
.' _Please refer to our individual profession guides_ to help with this achievement.
.' _Craft 50 Epic items_ with an item level of at least 600. |achieve 9246
step
.' Congratulations, you have earned the _Master Draenor Crafter_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Master Draftsman",[[
description Learn 40 garrison blueprints.
condition end achieved(9126)
step
#include "H_Garrison_BlueprintVendor"
_Buy_ #40# different blueprints for updating your Garrison plots |achieve 9126
step
Congratulations, you have _earned_ the Master Draftsman Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Master of Apexis",[[
description Collect 100,000 Apexis Crystals.
condition end achieved(9265)
step
.' _Apexis Crystals can be earned_ by completing dailes, weeklies, work orders, and dungeon bosses.
.' _Collect 100,000_ Apexis Crystals. |achieve 9265
step
.' Congratulations, you have earned the _Master of Apexis_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Master of Mounts",[[
description Fully train all six mounts at your Stables.
condition end achieved(9526)
achieveid 9538
step
_The minimum level to complete this guide is 99_
This guide _will assist you with earning the achievements_ Intro to Husbandry and Master of Mounts
After you have completed the Intro to Husbandry portion of this guide _you should build your level 2 Stables ASAP_ to gain access to the Black Claw of Sethe
_Carrying the Black Claw of Sethe as early on as possible_ helps gain progress towards the Avanced Husbandry achievement covered in another guide
If you don't want to carry the Black Claw for this guide that's up to you as _it will be fully covered in the Advanced Husbandry and Stable Master achievement guides_
confirm |next
step
_Skipping_ next part of guide |next "+start" |only if step:Find("+captures"):IsComplete()
_Proceeding_ next step |next |only if default
step
#include "H_Garrison_LargeBuilding"
talk Tormak the Scarred##86979
accept Capturing a Clefthoof##36912
step
The _beast will move around erratically_ attempting to break free so be on your toes!
_Use_ your Clefthoof Lasso on the Young Icehoof in the area |use Clefthoof Lasso##118181 |q Capturing a Clefthoof##36916/1 |goto Frostfire Ridge/0 54.0,20.5
|modelnpc Young Icehoof##87050
step
#include "H_Garrison_LargeBuilding"
talk Tormak the Scarred##86979
turnin Capturing a Clefthoof##36912 |achieve 9538/3
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
accept Taming a Talbuk##36917 |tip If you cannot see this quest (it will show up as a daily) you should log out and log back in. This is a Blizzard bug we cannot account for at this time.
step
The _beast will move around erratically_ attempting to break free so be on your toes!
_Use_ your Talbuk Lasso on Young Silverpelts in the area |use Talbuk Lasso##118179 |q Taming a Talbuk##36911/1 |goto Shadowmoon Valley D/0 50.3,30.1
|modelnpc Young Silverpelt##87055
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
turnin Taming a Talbuk##36917 |achieve 9538/2
step
#include "H_Garrison_LargeBuilding"
talk Tormak the Scarred##86979
accept Besting a Boar##36944 |tip If you cannot see this quest (it will show up as a daily) you should log out and log back in. This is a Blizzard bug we cannot account for at this time.
step
The _beast will move around erratically_ attempting to break free so be on your toes!
_Use_ your Boar Lasso on Young Rocktusks in the area |use Boar Lasso##118185 |q Besting a Boar##36913/1 |goto Gorgrond/0 43.9,37.3
|modelnpc Young Rocktusk##87054
step
#include "H_Garrison_LargeBuilding"
talk Tormak the Scarred##86979
turnin Besting a Boar##36944 |achieve 9538/4
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
accept Requisition a Riverbeast##36945 |tip If you cannot see this quest (it will show up as a daily) you should log out and log back in. This is a Blizzard bug we cannot account for at this time.
step
The _beast can be captured by following the riverbank_, but can be done much easier with water walking potions or a Water Strider mount
_Use_ your Riverbeast Lasso on the Young Riverwallow in the area. |use Riverbeast Lasso##118183 |q Requisition a Riverbeast##36918/1 |goto Talador/0 63.8,54.9
|modelnpc Young Riverwallow##87053
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
turnin Requisition a Riverbeast##36945 |achieve 9538/5
step
#include "H_Garrison_LargeBuilding"
talk Tormak the Scarred##86979
accept Entangling an Elekk##36946 |tip If you cannot see this quest (it will show up as a daily) you should log out and log back in. This is a Blizzard bug we cannot account for at this time.
step
The _beast will move around erratically and jump to nearby ledges_ attempting to break free so be on your toes!
_Use_ your Elekk Lasso on the Young Meadowstomper in the area. |use Elekk Lasso##118184 |q Entangling an Elekk##36915/1 |goto Nagrand D/0 84.8,39.6
|modelnpc Young Meadowstomper##87051
step
#include "H_Garrison_LargeBuilding"
talk Tormak the Scarred##86979
turnin Entangling an Elekk##36946 |achieve 9538/6
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
accept Wrangling a Wolf##36950 |tip If you cannot see this quest (it will show up as a daily) you should log out and log back in. This is a Blizzard bug we cannot account for at this time.
step
The _beast will move around erratically and jump to nearby ledges_ attempting to break free so be on your toes!
_Use_ your Wolf Lasso on the Young Snarler in the area |use Wolf Lasso##118182 |q Wrangling a Wolf##36914/1 |goto Nagrand D/0 55.6,60.9
|modelnpc Young Snarler##87056
step "captures"
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
turnin Wrangling a Wolf##36950 |achieve 9538/1
step "start"
#include "H_Garrison_LargeBuilding"
talk Tormak the Scarred##86979
You will only be able to _complete 1 of the following quests_ per day
accept Clefthoof Training: Riplash##37050 |or |only if not completedq(37050)
accept Clefthoof Training: Gezz'ran##37051 |or |only if not completedq(37051)
accept Clefthoof Training: Bulbapore##37052 |or |only if not completedq(37052)
accept Clefthoof Training: Cruel Ogres##37053 |or |only if not completedq(37053)
accept Clefthoof Training: Darkwing Roc##37054 |or |only if not completedq(37054)
accept Clefthoof Training: Ironbore##37057 |or |only if not completedq(37057)
accept Clefthoof Training: Moth of Wrath##37055 |or |only if not completedq(37055)
accept Clefthoof Training: Orc Hunters##37058 |or |only if not completedq(37058)
accept Clefthoof Training: The Garn##37059 |or |only if not completedq(37059)
accept Clefthoof Training: Thundercall##37056 |or |only if not completedq(37056)
accept Clefthoof Training: Great-Tusk##37048 |or |only if not completedq(37048)
accept Clefthoof Training: Rakkiri##37049 |or |only if not completedq(37049)
step
#include "H_Garrison_LargeBuilding"
talk Tormak the Scarred##86979
You will only be able to _complete 1 of the following quests_ per day
accept Boar Training: Riplash##37032 |or |only if not completedq(37032)
accept Boar Training: Gezz'ran##37033 |or |only if not completedq(37033)
accept Boar Training: Bulbapore##37034 |or |only if not completedq(37034)
accept Boar Training: Cruel Ogres##37035 |or |only if not completedq(37035)
accept Boar Training: Darkwing Roc##37036 |or |only if not completedq(37036)
accept Boar Training: Ironbore##37039 |or |only if not completedq(37039)
accept Boar Training: Moth of Wrath##37037 |or |only if not completedq(37037)
accept Boar Training: Orc Hunters##37040 |or |only if not completedq(37040)
accept Boar Training: The Garn##37041 |or |only if not completedq(37041)
accept Boar Training: Thundercall##37038 |or |only if not completedq(37038)
step
#include "H_Garrison_LargeBuilding"
talk Tormak the Scarred##86979
You will only be able to _complete 1 of the following quests_ per day
accept Elekk Training: Cruel Ogres##37063 |or |only if not completedq(37063)
accept Elekk Training: Darkwing Roc##37064 |or |only if not completedq(37064)
accept Elekk Training: Ironbore##37067 |or |only if not completedq(37067)
accept Elekk Training: Moth of Wrath##37065 |or |only if not completedq(37065)
accept Elekk Training: Orc Hunters##37068 |or |only if not completedq(37068)
accept Elekk Training: The Garn##37069 |or |only if not completedq(37069)
accept Elekk Training: Thundercall##37066 |or |only if not completedq(37066)
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
You will only be able to _complete 1 of the following quests_ per day
accept Wolf Training: Cruel Ogres##37105 |or |only if not completedq(37105)
accept Wolf Training: Darkwing Roc##37106 |or |only if not completedq(37106)
accept Wolf Training: Ironbore##37109 |or |only if not completedq(37109)
accept Wolf Training: Moth of Wrath##37107 |or |only if not completedq(37107)
accept Wolf Training: Orc Hunters##37110 |or |only if not completedq(37110)
accept Wolf Training: The Garn##37111 |or |only if not completedq(37111)
accept Wolf Training: Thundercall##37108 |or |only if not completedq(37108)
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
You will only be able to _complete 1 of the following quests_ per day
accept Talbuk Training: Riplash##37095 |or |only if not completedq(37095)
accept Talbuk Training: Gezz'ran##37096 |or |only if not completedq(37096)
accept Talbuk Training: Bulbapore##37097 |or |only if not completedq(37097)
accept Talbuk Training: Cruel Ogres##37098 |or |only if not completedq(37098)
accept Talbuk Training: Darkwing Roc##37099 |or |only if not completedq(37099)
accept Talbuk Training: Ironbore##37102 |or |only if not completedq(37102)
accept Talbuk Training: Moth of Wrath##37100 |or |only if not completedq(37100)
accept Talbuk Training: Orc Hunters##37103 |or |only if not completedq(37103)
accept Talbuk Training: The Garn##37104 |or |only if not completedq(37104)
accept Talbuk Training: Thundercall##37101 |or |only if not completedq(37101)
accept Talbuk Training: Great-Tusk##37093 |or |only if not completedq(37093)
accept Talbuk Training: Rakkiri##37094 |or |only if not completedq(37094)
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
You will only be able to _complete 1 of the following quests_ per day
accept Riverbeast Training: Gezz'ran##37071 |or |only if not completedq(37071)
accept Riverbeast Training: Bulbapore##37072 |or |only if not completedq(37072)
accept Riverbeast Training: Cruel Ogres##37073 |or |only if not completedq(37073)
accept Riverbeast Training: Darkwing Roc##37074 |or |only if not completedq(37074)
accept Riverbeast Training: Ironbore##37077 |or |only if not completedq(37077)
accept Riverbeast Training: Moth of Wrath##37075 |or |only if not completedq(37075)
accept Riverbeast Training: Orc Hunters##37078 |or |only if not completedq(37078)
accept Riverbeast Training: The Garn##37079 |or |only if not completedq(37079)
accept Riverbeast Training: Thundercall##37076 |or |only if not completedq(37076)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Great-Tusk##87083 |q Talbuk Training: Great-Tusk##37093/1 |goto Shadowmoon Valley D/0 62.7,39.1
only if havequest(37093)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Great-Tusk##87083 |q Clefthoof Training: Great-Tusk##37048/1 |goto Shadowmoon Valley D/0 62.7,39.1
only if havequest(37048)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Gezz'ran##87086 |q Talbuk Training: Gezz'ran##37096/1 |goto Talador/0 31.5,54.9
only if havequest(37096)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Gezz'ran##87086 |q Clefthoof Training: Gezz'ran##37051/1 |goto Talador/0 31.5,54.9
only if havequest(37051)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Gezz'ran##87086 |q Boar Training: Gezz'ran##37033/1 |goto Talador/0 31.5,54.9
only if havequest(37033)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Gezz'ran##87086 |q Riverbeast Training: Gezz'ran##37071/1 |goto Talador/0 31.5,54.9
only if havequest(37071)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Bulbapore##87087 |q Talbuk Training: Bulbapore##37097/1 |goto Spires of Arak/0 66.3,75.3
only if havequest(37097)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Bulbapore##87087 |q Clefthoof Training: Bulbapore##37052/1 |goto Spires of Arak/0 66.3,75.3
only if havequest(37052)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Bulbapore##87087 |q Boar Training: Bulbapore##37034/1 |goto Spires of Arak/0 66.3,75.3
only if havequest(37034)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Bulbapore##87087 |q Riverbeast Training: Bulbapore##37072/1 |goto Spires of Arak/0 66.3,75.3
only if havequest(37072)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Riplash##87084 |q Talbuk Training: Riplash##37095/1 |goto Gorgrond/0 50.2,38.4
only if havequest(37095)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Riplash##87084 |q Clefthoof Training: Riplash##37050/1 |goto Gorgrond/0 50.2,38.4
only if havequest(37050)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Riplash##87084 |q Boar Training: Riplash##37032/1 |goto Gorgrond/0 50.2,38.4
only if havequest(37032)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Rakkiri##87085 |q Talbuk Training: Rakkiri##37094/1 |goto Frostfire Ridge/0 72.7,70.0
only if havequest(37094)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Rakkiri##87085 |q Clefthoof Training: Rakkiri##37049/1 |goto Frostfire Ridge/0 72.7,70.0
only if havequest(37049)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Darkwing Roc##87088 |q Wolf Training: Darkwing Roc##37106/1 |goto Nagrand D/0 68.4,20.3
only if havequest(37106)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Darkwing Roc##87088 |q Talbuk Training: Darkwing Roc##37099/1 |goto Nagrand D/0 68.4,20.3
only if havequest(37099)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Darkwing Roc##87088 |q Clefthoof Training: Darkwing Roc##37054/1 |goto Nagrand D/0 68.4,20.3
only if havequest(37054)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Darkwing Roc##87088 |q Boar Training: Darkwing Roc##37036/1 |goto Nagrand D/0 68.4,20.3
only if havequest(37036)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
ill Darkwing Roc##87088 |q Riverbeast Training: Darkwing Roc##37074/1 |goto Nagrand D/0 68.4,20.3
only if havequest(37074)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Darkwing Roc##87088 |q Elekk Training: Darkwing Roc##37064/1 |goto Nagrand D/0 68.4,20.3
only if havequest(37064)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Thundercall##87102 |q Wolf Training: Thundercall##37108/1 |goto Nagrand D/0 90.6,23.6
only if havequest(37108)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Thundercall##87102 |q Talbuk Training: Thundercall##37101/1 |goto Nagrand D/0 90.6,23.6
only if havequest(37101)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Thundercall##87102 |q Boar Training: Thundercall##37038/1 |goto Nagrand D/0 90.6,23.6
only if havequest(37038)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Thundercall##87102 |q Riverbeast Training: Thundercall##37076/1 |goto Nagrand D/0 90.6,23.6
only if havequest(37076)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Thundercall##87102 |q Clefthoof Training: Thundercall##37056/1 |goto Nagrand D/0 90.6,23.6
only if havequest(37056)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Thundercall##87102 |q Elekk Training: Thundercall##37066/1 |goto Nagrand D/0 90.6,23.6
only if havequest(37066)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Karak the Great Hunter##87105 |q Wolf Training: Orc Hunters##37110/1 |goto Nagrand D/0 69.6,34.6
only if havequest(37110)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Karak the Great Hunter##87105 |q Talbuk Training: Orc Hunters##37103/1 |goto Nagrand D/0 69.6,34.6
only if havequest(37103)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Karak the Great Hunter##87105 |q Clefthoof Training: Orc Hunters##37058/1 |goto Nagrand D/0 69.6,34.6
only if havequest(37058)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Karak the Great Hunter##87105 |q Boar Training: Orc Hunters##37040/1 |goto Nagrand D/0 69.6,34.6
only if havequest(37040)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Karak the Great Hunter##87105 |q Riverbeast Training: Orc Hunters##37078/1 |goto Nagrand D/0 69.6,34.6
only if havequest(37078)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Karak the Great Hunter##87105 |q Elekk Training: Orc Hunters##37068/1 |goto Nagrand D/0 69.6,34.6
only if havequest(37068)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Gorian Beast-Lasher##87095 |q Wolf Training: Cruel Ogres##37105/1 |goto Nagrand D/0 79.2,71.3
only if havequest(37105)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Gorian Beast-Lasher##87095 |q Talbuk Training: Cruel Ogres##37098/1 |goto Nagrand D/0 79.2,71.3
only if havequest(37098)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Gorian Beast-Lasher##87095 |q Clefthoof Training: Cruel Ogres##37053/1 |goto Nagrand D/0 79.2,71.3
only if havequest(37053)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Gorian Beast-Lasher##87095 |q Boar Training: Cruel Ogres##37035/1 |goto Nagrand D/0 79.2,71.3
only if havequest(37035)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Gorian Beast-Lasher##87095 |q Riverbeast Training: Cruel Ogres##37073/1 |goto Nagrand D/0 79.2,71.3
only if havequest(37073)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Gorian Beast-Lasher##87095 |q Elekk Training: Cruel Ogres##37063/1 |goto Nagrand D/0 79.2,71.3
only if havequest(37063)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Maimclaw##87107 |q Wolf Training: The Garn##37111/1 |goto Nagrand D/0 63.8,80.9
only if havequest(37111)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Maimclaw##87107 |q Talbuk Training: The Garn##37104/1 |goto Nagrand D/0 63.8,80.9
only if havequest(37104)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Maimclaw##87107 |q Clefthoof Training: The Garn##37059/1 |goto Nagrand D/0 63.8,80.9
only if havequest(37059)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Maimclaw##87107 |q Boar Training: The Garn##37041/1 |goto Nagrand D/0 63.8,80.9
only if havequest(37041)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Maimclaw##87107 |q Riverbeast Training: The Garn##37079/1 |goto Nagrand D/0 63.8,80.9
only if havequest(37079)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Maimclaw##87107 |q Elekk Training: The Garn##37069/1 |goto Nagrand D/0 63.8,80.9
only if havequest(37069)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Ironbore##87090 |q Wolf Training: Ironbore##37109/1 |goto Nagrand D/0 53.1,77.4
only if havequest(37109)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Ironbore##87090 |q Talbuk Training: Ironbore##37102/1 |goto Nagrand D/0 53.1,77.4
only if havequest(37102)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Ironbore##87090 |q Clefthoof Training: Ironbore##37057/1 |goto Nagrand D/0 53.1,77.4
only if havequest(37057)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Ironbore##87090 |q Boar Training: Ironbore##37039/1 |goto Nagrand D/0 53.1,77.4
only if havequest(37039)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Ironbore##87090 |q Riverbeast Training: Ironbore##37077/1 |goto Nagrand D/0 53.1,77.4
only if havequest(37077)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Ironbore##87090 |q Elekk Training: Ironbore##37067/1 |goto Nagrand D/0 53.1,77.4
only if havequest(37067)
step
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##118353
kill Moth of Wrath##87089 |q Wolf Training: Moth of Wrath##37107/1 |goto Nagrand D/0 43.6,69.3
only if havequest(37107)
step
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##118352
kill Moth of Wrath##87089 |q Talbuk Training: Moth of Wrath##37100/1 |goto Nagrand D/0 43.6,69.3
only if havequest(37100)
step
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##118348
kill Moth of Wrath##87089 |q Clefthoof Training: Moth of Wrath##37055/1 |goto Nagrand D/0 43.6,69.3
only if havequest(37055)
step
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##118351
kill Moth of Wrath##87089 |q Boar Training: Moth of Wrath##37037/1 |goto Nagrand D/0 43.6,69.3
only if havequest(37037)
step
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##118350
kill Moth of Wrath##87089 |q Riverbeast Training: Moth of Wrath##37075/1 |goto Nagrand D/0 43.6,69.3
only if havequest(37075)
step
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##118349
kill Moth of Wrath##87089 |q Elekk Training: Moth of Wrath##37065/1 |goto Nagrand D/0 43.6,69.3
only if havequest(37065)
step
#include "H_Garrison_LargeBuilding"
talk Tormak the Scarred##86979
turnin Clefthoof Training: Riplash##37050 |only if havequest(37050)
turnin Clefthoof Training: Gezz'ran##37051 |only if havequest(37051)
turnin Clefthoof Training: Bulbapore##37052 |only if havequest(37052)
turnin Clefthoof Training: Cruel Ogres##37053 |only if havequest(37053)
turnin Clefthoof Training: Darkwing Roc##37054 |only if havequest(37054)
turnin Clefthoof Training: Ironbore##37057 |only if havequest(37057)
turnin Clefthoof Training: Moth of Wrath##37055 |only if havequest(37055)
turnin Clefthoof Training: Orc Hunters##37058 |only if havequest(37058)
turnin Clefthoof Training: The Garn##37059 |only if havequest(37059)
turnin Clefthoof Training: Thundercall##37056 |only if havequest(37056)
turnin Clefthoof Training: Great-Tusk##37048 |only if havequest(37048)
turnin Clefthoof Training: Rakkiri##37049 |only if havequest(37049)
turnin Boar Training: Riplash##37032 |only if havequest(37032)
turnin Boar Training: Gezz'ran##37033 |only if havequest(37033)
turnin Boar Training: Bulbapore##37034 |only if havequest(37034)
turnin Boar Training: Cruel Ogres##37035 |only if havequest(37035)
turnin Boar Training: Darkwing Roc##37036 |only if havequest(37036)
turnin Boar Training: Ironbore##37039 |only if havequest(37039)
turnin Boar Training: Moth of Wrath##37037 |only if havequest(37037)
turnin Boar Training: Orc Hunters##37040 |only if havequest(37040)
turnin Boar Training: The Garn##37041 |only if havequest(37041)
turnin Boar Training: Thundercall##37038 |only if havequest(37038)
turnin Elekk Training: Cruel Ogres##37063 |only if havequest(37063)
turnin Elekk Training: Darkwing Roc##37064 |only if havequest(37064)
turnin Elekk Training: Ironbore##37067 |only if havequest(37067)
turnin Elekk Training: Moth of Wrath##37065 |only if havequest(37065)
turnin Elekk Training: Orc Hunters##37068 |only if havequest(37068)
turnin Elekk Training: The Garn##37069 |only if havequest(37069)
turnin Elekk Training: Thundercall##37066 |only if havequest(37066)
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
turnin Wolf Training: Cruel Ogres##37105 |only if havequest(37105)
turnin Wolf Training: Darkwing Roc##37106 |only if havequest(37106)
turnin Wolf Training: Ironbore##37109 |only if havequest(37109)
turnin Wolf Training: Moth of Wrath##37107 |only if havequest(37107)
turnin Wolf Training: Orc Hunters##37110 |only if havequest(37110)
turnin Wolf Training: The Garn##37111 |only if havequest(37111)
turnin Wolf Training: Thundercall##37108 |only if havequest(37108)
turnin Talbuk Training: Riplash##37095 |only if havequest(37095)
turnin Talbuk Training: Gezz'ran##37096 |only if havequest(37096)
turnin Talbuk Training: Bulbapore##37097 |only if havequest(37097)
turnin Talbuk Training: Cruel Ogres##37098 |only if havequest(37098)
turnin Talbuk Training: Darkwing Roc##37099 |only if havequest(37099)
turnin Talbuk Training: Ironbore##37102 |only if havequest(37102)
turnin Talbuk Training: Moth of Wrath##37100 |only if havequest(37100)
turnin Talbuk Training: Orc Hunters##37103 |only if havequest(37103)
turnin Talbuk Training: The Garn##37104 |only if havequest(37104)
turnin Talbuk Training: Thundercall##37101 |only if havequest(37101)
turnin Talbuk Training: Great-Tusk##37093 |only if havequest(37093)
turnin Talbuk Training: Rakkiri##37094 |only if havequest(37094)
turnin Riverbeast Training: Gezz'ran##37071 |only if havequest(37071)
turnin Riverbeast Training: Bulbapore##37072 |only if havequest(37072)
turnin Riverbeast Training: Cruel Ogres##37073 |only if havequest(37073)
turnin Riverbeast Training: Darkwing Roc##37074 |only if havequest(37074)
turnin Riverbeast Training: Ironbore##37077 |only if havequest(37077)
turnin Riverbeast Training: Moth of Wrath##37075 |only if havequest(37075)
turnin Riverbeast Training: Orc Hunters##37078 |only if havequest(37078)
turnin Riverbeast Training: The Garn##37079 |only if havequest(37079)
turnin Riverbeast Training: Thundercall##37076 |only if havequest(37076)
next "start"
step "end"
Congratulations, you have _earned_ the Intro to Husbandry Achievement! |only if achieved(9538)
Congratulations, you have _earned_ the _Master of Mounts_ Achievement! |only if achieved(9526)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Mission Specialist",[[
description Complete the Mission Specialist achievements.
condition end achieved(9147)
achieveid 9145,9146
step
_Click_ the Mission Specialist achievements listed below to complete them
You have _completed_ all of the achievements below |tip You have this earned on your account, however you can earn it on each character again |next "end" |only if achieved(9147)
Patrol Mission Specialist |achieve 9147/1 |confirm |next "patrol"
Treasure Mission Specialist |achieve 9147/2 |confirm |next "treasure"
step
label "patrol"
Patrol Missions _require_ a level 1 Barracks
#include "H_Garrison_CommandTable"
_Select_ a patrol mission with the Patrol icon and _complete_ it |achieve 9146 |tip The icon looks like a sword and shield
|next "start"
step
label "treasure"
Treasure Missions _require_ a level 3 Inn
#include "H_Garrison_CommandTable"
_Select_ a mission with the Treasure icon and _complete_ it |achieve 9145 |tip The icon looks like a stone tablet
step
label "end"
Congratulations, you have _earned_ the Mission Specialist Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Master Trapper",[[
description Place 125 Work Orders at the Barn by trapping creatures in the world.
condition end achieved(9565)
step
This achievement _requires_ a level 1 Barn
Barn work orders _require you to trap_ Clefthooves, Elekks, Talbuks, Wolves, Riverbeasts, or Boars using the provided Iron Trap
#include "H_Garrison_MediumBuilding"
_Place_ #125# work orders at the Barn |achieve 9565
step
Congratulations, you have _earned_ the Master Trapper Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Movin' On Up",[[
description Upgrade any garrison building to level 3.
condition end achieved(9098)
step
#include "H_Garrison_ArchitectTable"
_Upgrade_ any garrison building to level 3 |achieve 9098
step
Congratulations, you have _earned_ the Movin' On Up Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\My Item Level Is Higher than Yours",[[
description Raise a follower's item level to 625.
condition end achieved(9211)
step
Your followers' item level _can be raised past 600_ once they hit level 100
_Applying_ weapon and armor enchancements to them at the command table helps keep track of their current item levels
The enhancements can be _earned through_ missions or work orders at the War Mill
|confirm
step
#include "H_Garrison_CommandTable" |tip Find the follower you wish to upgrade from here
use Weapon Enhancement Token##120302 |tip Creates an uncommon, rare, or epic weapon upgrade
use War Ravaged Weaponry##114616 |tip Makes weapon item level 615
use Blackrock Weaponry##114081 |tip Makes weapon item level 630
use Goredrenched Weaponry##114622 |tip Makes weapon item level 645
use Balanced Weapon Enhancement##114128 |tip Adds 3 weapon item levels
use Striking Weapon Enhancement##114129 |tip Adds 6 weapon item levels
use Power Overrun Weapon Enhancement##114131 |tip Adds 9 weapon item levels
use Armor Enhancement Token##120301 |tip Creates an uncommon, rare, or epic armor upgrade
use War Ravaged Armor Set##114807 |tip Makes armor item level 615
use Blackrock Armor Set##114806 |tip Makes armor item level 630
use Goredrenched Armor Set##114746 |tip Makes armor item level 645
use Braced Armor Enhancement##114745 |tip Adds 3 armor item levels
use Fortified Armor Enhancement##114808 |tip Adds 6 armor item levels
use Heavily Reinforced Armor Enhancement##114822 |tip Adds 9 armor item levels
_Raise_ 1 follower's item level to 625 |achieve 9211
step
Congratulations, you have _earned_ the My Item Level Is Higher than Yours Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\My Item Level Is Way Higher than Yours",[[
description Raise a follower's item level to 650.
condition end achieved(9212)
step
Your followers' item level _can be raised past 600_ once they hit level 100
_Applying_ weapon and armor enchancements to them at the command table helps keep track of their current item levels
The enhancements can be _earned through_ missions or work orders at the War Mill
|confirm
step
#include "H_Garrison_CommandTable" |tip Find the follower you wish to upgrade from here
use Weapon Enhancement Token##120302 |tip Creates an uncommon, rare, or epic weapon upgrade
use War Ravaged Weaponry##114616 |tip Makes weapon item level 615
use Blackrock Weaponry##114081 |tip Makes weapon item level 630
use Goredrenched Weaponry##114622 |tip Makes weapon item level 645
use Balanced Weapon Enhancement##114128 |tip Adds 3 weapon item levels
use Striking Weapon Enhancement##114129 |tip Adds 6 weapon item levels
use Power Overrun Weapon Enhancement##114131 |tip Adds 9 weapon item levels
use Armor Enhancement Token##120301 |tip Creates an uncommon, rare, or epic armor upgrade
use War Ravaged Armor Set##114807 |tip Makes armor item level 615
use Blackrock Armor Set##114806 |tip Makes armor item level 630
use Goredrenched Armor Set##114746 |tip Makes armor item level 645
use Braced Armor Enhancement##114745 |tip Adds 3 armor item levels
use Fortified Armor Enhancement##114808 |tip Adds 6 armor item levels
use Heavily Reinforced Armor Enhancement##114822 |tip Adds 9 armor item levels
_Raise_ 1 follower's item level to 650 |achieve 9212
step
Congratulations, you have _earned_ the My Item Level Is Way Higher than Yours Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\On a Few Missions",[[
description Complete 50 garrison missions.
condition end achieved(9134)
step
#include "H_Garrison_CommandTable"
.' _Start and complete 50_ garrison missions. |achieve 9134
step
.' Congratulations, you have earned the _On a Few Missions_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\On a Lot of Missions",[[
description Complete 100 garrison missions.
condition end achieved(9138)
step
#include "H_Garrison_CommandTable"
.' _Start and complete 100_ garrison missions. |achieve 9138
step
.' Congratulations, you have earned the _On a Lot of Missions_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\On a Massive Number of Missions",[[
description Complete 500 garrison missions.
condition end achieved(9139)
step
#include "H_Garrison_CommandTable"
.' _Start and complete 500_ garrison missions. |achieve 9139
step
.' Congratulations, you have earned the _On a Massive Number of Missions_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\On a Metric Ton of Missions",[[
description Complete 1000 garrison missions.
condition end achieved(9140)
step
#include "H_Garrison_CommandTable"
.' _Start and complete 1000_ garrison missions. |achieve 9140
step
.' Congratulations, you have earned the _On a Metric Ton of Missions_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\On a Mission",[[
description Complete 10 garrison missions.
condition end achieved(9133)
step
#include "H_Garrison_CommandTable"
.' _Start and complete 10_ garrison missions. |achieve 9133
step
.' Congratulations, you have earned the _On a Mission_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Patrol Mission Specialist",[[
description Complete a garrison patrol mission.
condition end achieved(9146)
step
.' Patrol Missions require a _level 1 Barracks_.
|confirm
step
#include "H_Garrison_CommandTable"
.' _Select a mission with the Patrol icon_ and complete it. |achieve 9146 |tip The icon looks like a sword and shield.
step
.' Congratulations, you have earned the _Patrol Mission Specialist_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Patrolling Draenor",[[
description Complete 50 garrison patrol missions.
condition end achieved(9523)
step
.' Patrol Missions require a _level 1 Barracks_.
|confirm
step
#include "H_Garrison_CommandTable"
.' _Select 50 missions with the Patrol icon_ and complete them. |achieve 9523 |tip The icon looks like a sword and shield.
step
.' Congratulations, you have earned the _Patrolling Draenor_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Raising the Bar",[[
description Raise 10 garrison followers to level 100.
condition end achieved(9111)
step
Follower levels are earned by _completing_ garrison missions
#include "H_Garrison_CommandTable"
_Raise_ #10# followers to level 100 |achieve 9111
step
Congratulations, you have _earned_ the Raising the Bar Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Salvaging Pays Off",[[
description Open 100 pieces of Salvage from missions.
condition end achieved(9468)
step
This achievement _requires_ a level 1 Salvage Yard
#include "H_Garrison_SmallBuilding"
_Open_ #100# pieces of salvage |achieve 9468 |tip Salvage is earned by having a Salvage Yard built and completing Garrison Missions
step
Congratulations, you have _earned_ the Salvaging Pays Off Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Stay Awhile and Listen",[[
description Complete all of the Inn quests.
condition end achieved(9703)
step
#include "H_Inn_Quests"
step
Congratulations, you have _earned_ the Stay Awhile and Listen Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\The Rarer the Better",[[
description Complete 300 Rare garrison missions.
condition end achieved(9143)
step
#include "H_Garrison_CommandTable"
.' _Select 300 missions labeled "Rare"_ and complete them. |achieve 9143
step
.' Congratulations, you have earned the _The Rarer the Better_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\The Stable Master",[[
description Defeat all mount-in-training targets in Nagrand while carrying the Garn-Tooth Necklace.
condition end achieved(9706)
achieveid 9705
step
First thing's first you need to gather the Garn-Tooth Necklace from your Stables
If you haven't finished the Advanced Husbandry achievement also pick up the Black Claw of Sethe |only if not achieved(9705)
collect Garn-Tooth Necklace##118470 |tip The necklace is laying on the ground in front of a wooden barrel at the Stables entrance
collect Black Claw of Sethe##118469 |tip The claw is laying on the ground in front of a pile of lumber at the Stables entrance |only if not achieved(9705)
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
_Tell him_ "I'd like the talbuk-in-training."
collect Silverpelt-In-Training Whistle##119443
_Tell him_ "I'd like the clefthoof-in-training."
collect Icehoof-In-Training Whistle##119441
_Tell him_ "I'd like the boar-in-training."
collect Rocktusk-In-Training Whistle##119444
_Tell him_ "I'd like the riverbeast-in-training."
collect Riverwallow-In-Training Whistle##119445
_Tell him_ "I'd like the elekk-in-training."
collect Meadowstomper-In-Training Whistle##119446
_Tell him_ "I'd like the wolf-in-training."
collect Snarler-In-Training Whistle##119442
step
Each of these whistles can be _used three times per day_ and have a 24 hour cooldown so _make sure you're ready and have the right mount selected!_
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##119443
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##119441
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##119444
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##119445
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##119446
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##119442
kill 6 Gorian Beast-Lasher##87095 |achieve 9706/2 |goto Nagrand D/0 79.2,71.3
step
Each of these whistles can be _used three times per day_ and have a 24 hour cooldown so _make sure you're ready and have the right mount selected!_
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##119443
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##119441
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##119444
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##119445
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##119446
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##119442
kill 6 Karak the Great Hunter##87105 |achieve 9706/6 |goto Nagrand D/0 69.6,34.6
step
Each of these whistles can be _used three times per day_ and have a 24 hour cooldown so _make sure you're ready and have the right mount selected!_
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##119443
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##119441
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##119444
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##119445
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##119446
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##119442
kill 6 Thundercall##87102 |achieve 9706/4 |goto Nagrand D/0 90.6,23.6
step
Each of these whistles can be _used three times per day_ and have a 24 hour cooldown so _make sure you're ready and have the right mount selected!_
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##119443
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##119441
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##119444
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##119445
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##119446
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##119442
kill 6 Maimclaw##87107 |achieve 9706/1 |goto Nagrand D/0 63.8,80.9
step
Each of these whistles can be _used three times per day_ and have a 24 hour cooldown so _make sure you're ready and have the right mount selected!_
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##119443
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##119441
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##119444
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##119445
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##119446
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##119442
kill 6 Ironbore##87090 |achieve 9706/5 |goto Nagrand D/0 53.1,77.4
step
Each of these whistles can be _used three times per day_ and have a 24 hour cooldown so _make sure you're ready and have the right mount selected!_
_Use_ your Silverpelt-In-Training Whistle |use Silverpelt-In-Training Whistle##119443
_Use_ your Icehoof-In-Training Whistle |use Icehoof-In-Training Whistle##119441
_Use_ your Rocktusk-In-Training Whistle |use Rocktusk-In-Training Whistle##119444
_Use_ your Riverwallow-In-Training Whistle |use Riverwallow-In-Training Whistle##119445
_Use_ your Meadowstomper-In-Training Whistle |use Meadowstomper-In-Training Whistle##119446
_Use_ your Snarler-In-Training Whistle |use Snarler-In-Training Whistle##119442
kill 6 Moth of Wrath##87089 |achieve 9706/3 |goto Nagrand D/0 43.6,69.3
step
Congratulations, you have _earned_ the _Advanced Husbandry_ Achievement! |only if achieved(9705)
Congratulations, you have _earned_ the _The Stable Master_ Achievement! |only if achieved(9706)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\The Trap Game",[[
description Place 50 Work Orders at the Barn by trapping creatures in the world.
condition end achieved(9450)
step
This achievement _requires_ a level 1 Barn
Barn work orders _require you to trap_ Clefthooves, Elekks, Talbuks, Wolves, Riverbeasts, or Boars using the provided Iron Trap
#include "H_Garrison_MediumBuilding"
_Place_ #50# work orders at the Barn |achieve 9450
step
Congratulations, you have _earned_ the The Trap Game Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Trap Superstar",[[
description Place 500 Work Orders at the Barn by trapping creatures in the world.
condition end achieved(9452)
step
This achievement _requires_ a level 1 Barn
Barn work orders _require you to trap_ Clefthooves, Elekks, Talbuks, Wolves, Riverbeasts, or Boars using the provided Iron Trap
#include "H_Garrison_MediumBuilding"
_Place_ #500# work orders at the Barn |achieve 9452
step
Congratulations, you have _earned_ the Trap Superstar Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Trapper's Delight",[[
description Place 250 Work Orders at the Barn by trapping creatures in the world.
condition end achieved(9451)
step
This achievement _requires_ a level 1 Barn
Barn work orders _require you to trap_ Clefthooves, Elekks, Talbuks, Wolves, Riverbeasts, or Boars using the provided Iron Trap
#include "H_Garrison_MediumBuilding"
_Place_ #250# work orders at the Barn |achieve 9451
step
Congratulations, you have _earned_ the Trapper's Delight Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Treasure Master",[[
description Complete 50 garrison treasure missions.
condition end achieved(9524)
step
.' Treasure Missions require a _level 3 Inn_.
|confirm
step
#include "H_Garrison_CommandTable"
.' _Select 50 missions with the Treasure icon_ and complete them. |achieve 9524 |tip The icon looks like a stone tablet.
step
.' Congratulations, you have earned the _Treasure Master_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Treasure Mission Specialist",[[
description Complete a garrison treasure mission.
condition end achieved(9145)
step
.' Treasure Missions require a _level 3 Inn_.
|confirm
step
#include "H_Garrison_CommandTable"
.' _Select a mission with the Treasure icon_ and complete it. |achieve 9145 |tip The icon looks like a stone tablet.
step
.' Congratulations, you have earned the _Treasure Mission Specialist_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Defender of Draenor",[[
description Get 5000 honorable kills in Draenor.
condition end achieved(9248)
step
.' _Get 5000 honorable kills_ in Draenor. |achieve 9248
step
.' Congratulations, you have earned the _Defender of Draenor_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\The Garrison Campaign",[[
description This guide will walk you through the Garrison Campaign questlines.
#include "H_Garrison_Campaign"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Where You Go, They Will Follow",[[
description Recruit 10 followers.
condition end achieved(9108)
step
Please _refer to_ our individual follower guides to track down the more elusive followers on the list
_You can also recruit one a week_ from your Garrison Inn
_Recruit_ #10# followers |achieve 9108
step
Congratulations, you have _earned_ the Where You Go, They Will Follow Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Wingman",[[
description Become a Personal Wingman with one of your Barracks Bodyguards.
condition end achieved(9498)
step
This achievement _requires_ a level 2 Garrison and a level 2 Barracks
You also _need one of the five_ followers that can be bodyguards assigned to your Barracks |tip Search within our guides for the Bodyguard trait to find one
|confirm
stickystart "bodyguards"
step
#include "H_Garrison_MediumBuilding"
_Ask_ your Barracks Bodyguard to follow you in Draenor |tip The follower assigned to the Barracks will be waiting right outside the Barracks door
|confirm
step
Any _kill that grants XP_ will give 10 reputation for your chosen bodyguard
You _must complete all three tiers_ of reputation with your chosen bodyguard to earn this achievement
You can _farm reputation easily_ by traveling to this location and killing the Stingtail Workers |goto Spires of Arak/0 58.5,46.0 |achieve 9498 |tip They are weak and repawn quickly
|modelnpc Stingtail Worker##84905
step "bodyguards"
_Become a Personal Wingman_ with one of your Barracks Bodyguards listed below |tip Use our follower guides to find each of these
Leorajh |achieve 9498
Talonpriest Ishaal |achieve 9498
Tormmok |achieve 9498
Aeda Brightdawn |achieve 9498
Vivianne |achieve 9498
step
Congratulations, you have _earned_ the Wingman Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Wingmen",[[
description Become a Personal Wingman with all of your Barracks Bodyguards.
condition end achieved(9499)
step
This achievement _requires_ a level 2 Garrison and a level 2 Barracks
You also _need one of the five_ followers that can be bodyguards assigned to your Barracks |tip Search within our guides for the Bodyguard trait to find one
|confirm
stickystart "bodyguards"
step
#include "H_Garrison_MediumBuilding"
_Ask_ your Barracks Bodyguard to follow you in Draenor |tip The follower assigned to the Barracks will be waiting right outside the Barracks door
|confirm
step
Any _kill that grants XP_ will give 10 reputation for your chosen bodyguard
You _must complete all three tiers_ of reputation with your chosen bodyguard to earn this achievement
You can _farm reputation easily_ by traveling to this location and killing the Stingtail Workers |goto Spires of Arak/0 58.5,46.0 |achieve 9499 |tip They are weak and repawn quickly
|modelnpc Stingtail Worker##84905
step "bodyguards"
_Become a Personal Wingman_ with all of your Barracks Bodyguards listed below |tip Use our follower guides to find each of these
Leorajh |achieve 9499/1
Talonpriest Ishaal |achieve 9499/2
Tormmok |achieve 9499/3
Aeda Brightdawn |achieve 9499/4
Vivianne |achieve 9499/5
step
Congratulations, you have _earned_ the Wingmen Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Working Many Orders",[[
description Complete 750 Work Orders at your garrison.
condition end achieved(9407)
step
#include "H_Garrison_MediumBuilding"
_Complete_ #750# work orders around your Garrison |achieve 9407
step
Congratulations, you have _earned_ the Working Many Orders Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Working More Orders",[[
description Complete 250 Work Orders at your garrison.
condition end achieved(9406)
step
#include "H_Garrison_MediumBuilding"
_Complete_ #250# work orders around your Garrison |achieve 9406
step
Congratulations, you have _earned_ the Working More Orders Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Garrison Achievements\\Working Some Orders",[[
description Complete 125 Work Orders at your garrison.
condition end achieved(9405)
step
#include "H_Garrison_MediumBuilding"
_Complete_ #125# work orders around your Garrison |achieve 9405
step
Congratulations, you have _earned_ the Working Some Orders Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\A Gift of Earth and Fire",[[
description Defeat Magmolatus while Calamity and Ruination are still alive in Bloodmaul Slag Mines on Heroic difficulty.
condition end achieved(8993)
step
_Enter_ the _Bloodmaul Slag Mines_ dungeon on Heroic |goto Bloodmaul Slag Mines/1 51.5,83.3 < 100 |c |noway |or
|confirm |or
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	51.5,83.3	49.0,77.0	49.9,68.7
path	52.6,62.0	52.6,62.0	56.3,59.8
_Follow_ the path |goto Bloodmaul Slag Mines/1 57.1,60.0 < 20 |noway |c
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	55.7,59.7	53.3,56.9	55.0,46.4
path	53.1,42.1	48.2,41.7	43.7,54.0
path	35.9,55.8	29.1,55.9
_Follow_ the path |goto Bloodmaul Slag Mines/1 29.1,55.9 < 20 |noway |c
step
When you engage Magmolatus he'll _spawn two elemental adds_ |tip One fire and one earth
In order to get the achievement _you must kill the boss with the two adds alive_
Popular strategy suggests the use of _two tanks_ |tip Having one dps dual spec tank helps
_Concentrate DPS_ on the boss and the small adds that spawn while the _off tank keeps the elementals_ far enough away to avoid cleave effects and AOE spells
Be sure to _avoid the flame circles and spikes_ on the ground as you DPS Magmolatus down
kill Magmolatus##74475
|achieve 8993
step
Congratulations, you have _earned_ the A Gift of Earth and Fire Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Auchindoun",[[
description Defeat Teron'gor in Auchindoun.
condition end achieved(9039)
step
_Enter_ the _Auchindoun_ dungeon |goto Auchindoun/1 49.7,90.2 |c |noway |or
|confirm |or
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	49.7,90.2	49.8,68.8	44.4,65.9
path	37.8,61.6	32.2,54.5	27.4,40.2
path	27.4,40.2	30.6,51.3	35.0,58.9
path	44.2,66.0	49.7,66.6	55.0,66.1
path	65.0,59.5	70.0,48.5	70.7,38.2
path	67.8,38.6	63.7,32.4
_Activate_ the Soul Transporter |goto 58.7,18.9 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 57.0,21.5
_Next_ |goto Auchindoun/1 40.8,18.9 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 42.4,21.4
_Next_ |goto Auchindoun/1 41.1,45.4 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 42.4,43.5
_Next_ |goto Auchindoun/1 49.7,41.6 |c |noway
step
kill Teron'gor##86220 |goto Auchindoun/1 49.6,33.5
|achieve 9039
step
Congratulations, you have _earned_ the Auchindoun Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Bloodmaul Slag Mines",[[
description Defeat Gug'rokk in the Bloodmaul Slag Mines.
condition end achieved(9037)
step
_Enter_ the _Bloodmaul Slag Mines_ dungeon |goto Bloodmaul Slag Mines/1 51.5,83.3 < 100 |c |noway |or
|confirm |or
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	51.5,83.3	49.0,77.0	49.9,68.7
path	52.6,62.0	52.6,62.0	53.3,56.9
path	55.0,46.4	53.1,42.1	49.1,33.6
path	49.1,33.7	49.4,24.5	58.8,23.3
_Follow_ the path |goto Bloodmaul Slag Mines/1 58.8,23.3 < 10 |noway |c
step
kill Gug'rokk##86224
|achieve 9037
step
Congratulations, you have _earned_ the Bloodmaul Slag Mines Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Bridge Over Troubled Fire",[[
description Kill 20 Ragewing Whelps in 10 seconds while fighting Ragewing the Untamed in Upper Blackrock Spire on Heroic difficulty.
condition end achieved(9056)
step
_Enter_ the Upper Blackrock Spire dungeon on heroic |goto Upper Blackrock Spire 2/1 37.3,29.1 < 100 |c |noway |or
|confirm |or
step
map Upper Blackrock Spire 2/1
path follow loose;loop off;ants straight
path	37.2,30.0	36.6,18.3	33.5,15.8
path	32.9,13.2	30.6,13.3	Upper Blackrock Spire 2/2 30.4,19.6
_Clear the rooms_ to break the seals
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.4,19.6 < 5|c |noway
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	30.3,27.0	30.6,36.4	32.0,37.8
_Follow_ the path |goto Upper Blackrock Spire 2/2 32.0,37.8
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	36.2,37.6	30.3,39.5
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.3,39.5 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	28.6,41.1	28.4,34.1	36.4,34.0
path	36.4,27.8	42.2,28.3	45.8,28.0
_Follow_ the path |goto Upper Blackrock Spire 2/3 45.8,28.0 < 8 |c |noway |or
_Enter_ the next floor |confirm |or
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	48.5,27.3	48.7,35.8	54.7,35.8
path	54.7,45.7
_Follow_ the path |goto Upper Blackrock Spire 2/3 54.7,45.7 < 20 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	61.8,45.6	58.1,47.0	50.6,45.7
_Follow_ the path |goto Upper Blackrock Spire 2/3 50.6,45.7 |c |noway
step
When Ragewing takes flight the first time _do not kill_ the spawned adds |tip Kite and CC them
When Ragewing takes flight the second time another wave will appear that _need to be gathered_ on top of the first group
After all the drakes are gathered on top of each other _AOE them all down quickly_ |tip Try not to push Ragewing to his final phase before the second wave
kill Ragewing##76585 |goto Upper Blackrock Spire 2/3 46.7,45.6
|achieve 9056
step
Congratulations, you have _earned_ the Bridge Over Troubled Fire Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Come With Me If You Want to Live",[[
description Defeat Gug'rokk alongside Croman the Barbarian after finding his sword in Bloodmaul Slag Mines on Heroic difficulty.
condition end achieved(9005)
step
_Enter_ the _Bloodmaul Slag Mines_ dungeon on Heroic |goto Bloodmaul Slag Mines/1 51.5,83.3 < 100 |c |noway |or
|confirm |or
step
_Clear all the trash_ on the way to Magmolatus but _don't_ attack him yet |tip You don't have to clear all the adds but it helps plan for messy mistakes
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	51.5,83.3	43.7,54.0	35.9,55.8
path	29.1,55.9
_Follow_ the path |goto Bloodmaul Slag Mines/1 29.1,55.9 < 20 |noway |c
step
After that _clear the adds_ to Slave Watcher Crushto and _kill_ him |tip After the fight talk to Croman
Croman seems to follow the person who freed him so _make sure it's someone_ who will not be likely to die as he despawns if they do
Croman _can be healed_ as well so make sure your healer is aware to watch his health
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	29.1,55.9	35.9,55.8	43.7,54.0
path	48.2,41.7	53.1,42.1	55.0,46.4
path	53.3,56.9	55.7,59.7
_Follow_ the path |goto Bloodmaul Slag Mines/1 57.1,60.0 < 20 |noway |c
|modelnpc Croman##75242
step
_Kill_ Magmolatus and Croman will grab up his sword
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	55.7,59.7	53.3,56.9	55.0,46.4
path	53.1,42.1	48.2,41.7	43.7,54.0
path	35.9,55.8	29.1,55.9
_Follow_ the path |goto Bloodmaul Slag Mines/1 29.1,55.9 < 20 |noway |c
step
_Kill_ Roltall and then Gog'rokk
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	29.1,55.9	34.9,56.0	41.9,55.5
path	43.7,52.2	45.4,45.4	49.1,40.2
path	49.1,33.6	49.1,33.7	49.4,24.5
path	58.8,23.3
_Follow_ the path |goto Bloodmaul Slag Mines/1 58.8,23.3 < 10 |noway |c
step
Croman _will have some small RP_ and then you gain the achievment
|achieve 9005
step
Congratulations, you have _earned_ the Come With Me If You Want to Live Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Demon's Souls",[[
description Defeat Azzakel in Auchindoun on Heroic difficulty without killing any other demons during the encounter.
condition end achieved(9551)
step
_Enter_ the _Auchindoun_ dungeon on Heroic |goto Auchindoun/1 49.7,90.2 |c |noway |or
|confirm |or
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	49.7,90.2	49.8,68.8	44.4,65.9
path	37.8,61.6	32.2,54.5	27.4,40.2
path	27.4,40.2	30.6,51.3	35.0,58.9
path	44.2,66.0	49.7,66.6	55.0,66.1
path	65.0,59.5	70.0,48.5	70.7,38.2
_Follow_ the path|goto Auchindoun/1 70.7,38.2 < 20 |c |noway
step
The entire group should _focus fire the boss_ 100% of the time when they can
The _tank should hold_ the Felguards |tip In the off chance your tank cannot handle the extra damage of the adds you can attempt with an off tank but it will put a heavy damper on your DPS
Make sure _no one burns any demon adds down_ during the encounter and you'll earn yourself this achievement
kill Azzakel##86219 |goto Auchindoun/1 49.6,33.5
|achieve 9551
step
Congratulations, you have _earned_ the Demon's Souls Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Dragonmaw? More Like Dragonfall",[[
description Kill 5 Emberscale Ironflight before defeating Warlord Zaela in Upper Blackrock Spire on Heroic difficulty.
condition end achieved(9057)
step
_Enter_ the Upper Blackrock Spire dungeon on heroic |goto Upper Blackrock Spire 2/1 37.3,29.1 < 100 |c |noway |or
|confirm |or
step
map Upper Blackrock Spire 2/1
path follow loose;loop off;ants straight
path	37.2,30.0	36.6,18.3	33.5,15.8
path	32.9,13.2	30.6,13.3	Upper Blackrock Spire 2/2 30.4,19.6
_Clear the rooms_ to break the seals
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.4,19.6 < 5|c |noway
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	30.3,27.0	30.6,36.4	32.0,37.8
_Follow_ the path |goto Upper Blackrock Spire 2/2 32.0,37.8
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	36.2,37.6	30.3,39.5
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.3,39.5 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	28.6,41.1	28.4,34.1	36.4,34.0
path	36.4,27.8	42.2,28.3	45.8,28.0
_Follow_ the path |goto Upper Blackrock Spire 2/3 45.8,28.0 < 8 |c |noway |or
_Enter_ the next floor |confirm |or
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	48.5,27.3	48.7,35.8	54.7,35.8
path	54.7,45.7
_Follow_ the path |goto Upper Blackrock Spire 2/3 54.7,45.7 < 20 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	61.8,45.6	58.1,47.0	50.6,45.7
_Follow_ the path |goto Upper Blackrock Spire 2/3 50.6,45.7 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	46.7,45.6	39.8,45.9	36.3,51.4
path	28.9,51.5	21.4,49.6	18.8,47.6
path	16.7,47.4
_Follow_ the path |goto Upper Blackrock Spire 2/3 16.7,47.4 < 8 |c |noway
step
_Team communication is crucial to earn this achievement!_
There are _eight cycles of drakes in this encounter_ that cycle through so if you don't kill one it will come back after 7 other cycles come through |tip They do heal during their flight time but not usually to full
_There is no enrage timer_ for the boss so it's possible to wait if needed
The boss spawns _three adds at 60%_ |tip The tank should focus on the boss while the DPS burn every second drake down
Focus on _every second drake in each cycle_ during the encounter to get them down to around 30% health so that when the come down a second time after the 7 drake cycle they can be killed
kill Warlord Zaela##77120 |goto Upper Blackrock Spire 2/3 14.4,47.7
|achieve 9057
step
Congratulations, you have _earned_ the Dragonmaw? More Like Dragonfall Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Expert Timing",[[
description Slay 4 Ogron Laborers that are not in combat using a single Iron Star in Iron Docks on Heroic Difficulty.
condition end achieved(9081)
step
_Enter_ the _Iron Docks_ dungeon on Heroic |goto Iron Docks/1 30.6,44.5 |c |noway |or
|confirm |or
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	33.6,40.7	37.8,35.5	42.0,34.4
path	46.4,34.2	49.2,47.6	39.6,48.6
path	37.9,55.5	31.2,61.7
_Follow_ the path |goto Iron Docks/1 31.2,61.7 |c |noway
step
The four Ogron Laborers you need are in the area _after the first boss_ |tip The 3 big Iron Stars are at the west wall
_Get inside_ the Southernmost Iron Star and _wait_ for all four Laborers to line up |tip Three of the mobs patrol but one stands still
The Laborers _cannot be taunted_ or CCed but they _can be distracted_ by a rogue to save time
Once all four of them line up _use the new vehicle action bar_ to rush through them and earn the achievement
|modelnpc Ogron Laborer##83578
|achieve 9081
step
Congratulations, you have _earned_ the Expert Timing Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Grimrail Depot",[[
description Defeat Skylord Tovra in Grimrail Depot.
condition end achieved(9043)
step
Enter the _Grimrail Depot_ dungeon |goto Grimrail Depot/1 32.4,31.9 < 20 |c |noway |or
|confirm |or
step
map Grimrail Depot/1
path follow loose;loop off;ants straight
path	30.9,51.7	43.9,56.8	path	56.6,42.8
Follow the path |goto Grimrail Depot/1 56.6,42.8 |c |noway
step
map Grimrail Depot/1
path follow loose;loop off;ants straight
path	69.5,19.6	75.4,25.0	Grimrail Depot/2 63.6,25.8
path	Grimrail Depot/2 71.8,13.7	Grimrail Depot/2 70.3,29.3
Follow the path |goto Grimrail Depot/3 85.3,51.8 |c |noway |or
Enter the Train Car |confirm |or
step
map Grimrail Depot/3
path follow loose;loop off;ants straight
path	85.3,51.8	67.6,52.1	38.6,51.8
path	9.7,51.7
Follow the path |goto Grimrail Depot/3 9.7,51.7 |c |noway
step
map Grimrail Depot/4
path follow loose;loop off;ants straight
path	70.3,51.5	54.0,51.6	30.9,51.6
Follow the path |goto Grimrail Depot/4 30.9,51.6 |c |noway
step
kill Skylord Tovra##86228 |goto Grimrail Depot/4 8.6,51.0
|achieve 9043
step
Congratulations, you have _earned_ the Grimrail Depot Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Heroic: Auchindoun",[[
description Defeat Teron'gor in Auchindoun on Heroic difficulty.
condition end achieved(9049)
step
_Enter_ the _Auchindoun_ dungeon on Heroic |goto Auchindoun/1 49.7,90.2 |c |noway |or
|confirm |or
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	49.7,90.2	49.8,68.8	44.4,65.9
path	37.8,61.6	32.2,54.5	27.4,40.2
path	27.4,40.2	30.6,51.3	35.0,58.9
path	44.2,66.0	49.7,66.6	55.0,66.1
path	65.0,59.5	70.0,48.5	70.7,38.2
path	67.8,38.6	63.7,32.4
_Activate_ the Soul Transporter |goto 58.7,18.9 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 57.0,21.5
_Next_ |goto Auchindoun/1 40.8,18.9 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 42.4,21.4
_Next_ |goto Auchindoun/1 41.1,45.4 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 42.4,43.5
_Next_ |goto Auchindoun/1 49.7,41.6 |c |noway
step
kill Teron'gor##86220 |goto Auchindoun/1 49.6,33.5
|achieve 9049
step
Congratulations, you have _earned_ the Heroic: Auchindoun Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Heroic: Bloodmaul Slag Mines",[[
description Defeat Gug'rokk in the Bloodmaul Slag Mines on Heroic difficulty.
condition end achieved(9046)
step
_Enter_ the _Bloodmaul Slag Mines_ dungeon on Heroic |goto Bloodmaul Slag Mines/1 51.5,83.3 < 100 |c |noway |or
|confirm |or
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	51.5,83.3	49.0,77.0	49.9,68.7
path	52.6,62.0	52.6,62.0	53.3,56.9
path	55.0,46.4	53.1,42.1	49.1,33.6
path	49.1,33.7	49.4,24.5	58.8,23.3
_Follow_ the path |goto Bloodmaul Slag Mines/1 58.8,23.3 < 10 |noway |c
step
kill Gug'rokk##86224
|achieve 9046
step
Congratulations, you have _earned_ the Heroic: Bloodmaul Slag Mines Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Heroic: Grimrail Depot",[[
description Defeat Skylord Tovra in Grimrail Depot on Heroic difficulty.
condition end achieved(9052)
step
Enter the _Grimrail Depot_ dungeon on Heroic |goto Grimrail Depot/1 32.4,31.9 < 20 |c |noway |or
|confirm |or
step
map Grimrail Depot/1
path follow loose;loop off;ants straight
path	30.9,51.7	43.9,56.8	path	56.6,42.8
Follow the path |goto Grimrail Depot/1 56.6,42.8 |c |noway
step
map Grimrail Depot/1
path follow loose;loop off;ants straight
path	69.5,19.6	75.4,25.0	Grimrail Depot/2 63.6,25.8
path	Grimrail Depot/2 71.8,13.7	Grimrail Depot/2 70.3,29.3
Follow the path |goto Grimrail Depot/3 85.3,51.8 |c |noway |or
Enter the Train Car |confirm |or
step
map Grimrail Depot/3
path follow loose;loop off;ants straight
path	85.3,51.8	67.6,52.1	38.6,51.8
path	9.7,51.7
Follow the path |goto Grimrail Depot/3 9.7,51.7 |c |noway
step
map Grimrail Depot/4
path follow loose;loop off;ants straight
path	70.3,51.5	54.0,51.6	30.9,51.6
Follow the path |goto Grimrail Depot/4 30.9,51.6 |c |noway
step
kill Skylord Tovra##86228 |goto Grimrail Depot/4 8.6,51.0
|achieve 9052
step
Congratulations, you have _earned_ the Heroic: Grimrail Depot Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Heroic: Iron Docks",[[
description Defeat Skulloc in the Iron Docks on Heroic difficulty.
condition end achieved(9047)
step
_Enter_ the _Iron Docks_ dungeon on Heroic |goto Iron Docks/1 30.6,44.5 |c |noway |or
|confirm |or
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	33.6,40.7	37.8,35.5	42.0,34.4
path	46.4,34.2	49.2,47.6	39.6,48.6
path	37.9,55.5	49.5,67.6	64.3,76.3
path	76.4,76.6	83.5,76.2	86.4,68.9
path	86.5,24.8	79.3,19.6	71.9,28.0
path	69.4,34.2
_Follow_ the path |goto Iron Docks/1 69.4,34.2 |c |noway
step
kill Skulloc##83612
|achieve 9047
step
Congratulations, you have _earned_ the Heroic: Iron Docks Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Heroic: Shadowmoon Burial Grounds",[[
description Defeat Ner'zhul in Shadowmoon Burial Grounds on Heroic difficulty.
condition end achieved(9054)
step
_Enter_ the Shadowmoon Burial Grounds dungeon on heroic |goto Shadowmoon Burial Grounds/1 12.0,68.4 < 20 |c |noway |or
|confirm |or
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	12.0,68.4	13.8,65.6	16.2,55.5
path	23.4,50.8	37.6,50.9	38.4,37.6
path	45.6,28.9	52.6,24.1	52.6,21.7
_Drop down_ at the end of the path |goto Shadowmoon Burial Grounds/1 46.9,51.0 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,21.7	52.6,34.8	42.3,36.1
path	42.5,50.8	47.9,50.9
_Follow_ the path |goto Shadowmoon Burial Grounds/1 47.9,50.9 < 8 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,51.0	65.3,50.9	72.7,51.7
path	77.9,55.9	78.2,62.4
_Follow_ the path |goto Shadowmoon Burial Grounds/1 78.2,62.4 < 8 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	79.0,72.9	84.4,72.5	87.6,60.4
_Follow_ the path |goto Shadowmoon Burial Grounds/1 87.6,60.4 |c |noway
step
map Shadowmoon Burial Grounds/2
path follow loose;loop off;ants straight
path	7.0,65.5	7.3,60.9	10.6,58.9
path	15.5,58.1	21.3,61.7	22.2,66.8
path	20.2,71.5	17.3,70.9	16.9,66.9
path	18.8,62.2	25.7,59.5
_Follow_ the path |goto Shadowmoon Burial Grounds/2 25.7,59.5 |c |noway
step
map Shadowmoon Burial Grounds/2
path follow loose;loop off;ants straight
path	39.1,50.9	49.4,57.6	56.9,62.3
path	64.8,67.1
_Follow_ the path |goto Shadowmoon Burial Grounds/3 38.5,36.9 < 20 |c |noway
step
kill Ner'zhul##76268 |goto Shadowmoon Burial Grounds/3 48.1,47.1
|achieve 9054
step
Congratulations, you have _earned_ the Heroic: Shadowmoon Burial Grounds Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Heroic: Skyreach",[[
description Defeat High Sage Viryx in Skyreach on Heroic difficulty.
condition end achieved(8844)
step
_Enter_ the _Skyreach_ dungeon on Heroic |goto Skyreach/1 60.6,25.1 < 20 |c |noway |or
|confirm |or
step
map Skyreach/1
path follow loose;loop off;ants straight
path	60.6,25.1	60.5,15.7	65.5,13.7
path	66.5,25.9	64.1,32.2	62.6,39.2
path	59.2,46.2	54.1,50.3	53.3,53.7
path	52.3,61.1	47.0,62.3	45.7,64.7
path	47.1,67.8	47.8,70.9	45.3,76.3
_Follow_ the path |goto Skyreach/1 45.3,76.3 |c |noway
step
map Skyreach/1
path follow loose;loop off;ants straight
path	41.4,77.1	39.5,72.0	39.9,64.2
path	37.0,63.6	35.5,68.1	42.4,69.3
_Follow_ the path |goto Skyreach/1 42.4,69.3 < 5 |c |noway
step
map Skyreach/2
path follow loose;loop off;ants straight
path	18.1,73.8	27.2,80.8	30.9,72.5
path	24.8,58.1	27.8,41.3	35.4,35.4
path	44.0,43.4
_Follow_ the path |goto Skyreach/2 44.0,43.4 < 5 |c |noway
step
kill High Sage Viryx##86241 |goto Skyreach/2 51.1,27.4
|achieve 8844
step
Congratulations, you have _earned_ the Heroic: Skyreach Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Heroic: The Everbloom",[[
description Defeat Yalnu in The Everbloom on Heroic difficulty.
condition end achieved(9053)
step
_Enter The Everbloom_ dungeon on Heroic |goto The Everbloom/1 72.4,55.7 < 20 |c |noway |or
|confirm |or
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	72.4,55.7	69.4,50.4	67.4,48.0
path	63.4,56.9	59.0,59.9	56.0,59.7
path	53.3,56.3	54.2,49.4	58.2,46.1
path	63.5,48.5	67.7,47.4	69.5,42.1
path	71.0,29.6	70.6,24.4	67.8,21.6
path	64.5,25.3	62.0,28.2	59.8,25.5
path	57.8,20.6	58.8,13.4	62.1,5.9
path	61.4,7.3	58.8,12.8	57.4,20.4
path	57.2,29.6	55.2,33.1	44.2,35.1
_Follow_ the path |goto The Everbloom/2 44.2,35.1 |c |noway
confirm
step
kill Yalnu##86248
|achieve 9053
step
Congratulations, you have _earned_ the Heroic: Everbloom Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Heroic: Upper Blackrock Spire",[[
description Defeat Warlord Zaela in Upper Blackrock Spire on Heroic difficulty.
condition end achieved(9055)
step
_Enter_ the Upper Blackrock Spire dungeon on heroic |goto Upper Blackrock Spire 2/1 37.3,29.1 < 100 |c |noway |or
|confirm |or
step
map Upper Blackrock Spire 2/1
path follow loose;loop off;ants straight
path	37.2,30.0	36.6,18.3	33.5,15.8
path	32.9,13.2	30.6,13.3	Upper Blackrock Spire 2/2 30.4,19.6
_Clear the rooms_ to break the seals
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.4,19.6 < 5|c |noway
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	30.3,27.0	30.6,36.4	32.0,37.8
_Follow_ the path |goto Upper Blackrock Spire 2/2 32.0,37.8
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	36.2,37.6	30.3,39.5
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.3,39.5 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	28.6,41.1	28.4,34.1	36.4,34.0
path	36.4,27.8	42.2,28.3	45.8,28.0
_Follow_ the path |goto Upper Blackrock Spire 2/3 45.8,28.0 < 8 |c |noway |or
_Enter_ the next floor |confirm |or
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	48.5,27.3	48.7,35.8	54.7,35.8
path	54.7,45.7
_Follow_ the path |goto Upper Blackrock Spire 2/3 54.7,45.7 < 20 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	61.8,45.6	58.1,47.0	50.6,45.7
_Follow_ the path |goto Upper Blackrock Spire 2/3 50.6,45.7 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	46.7,45.6	39.8,45.9	36.3,51.4
path	28.9,51.5	21.4,49.6	18.8,47.6
path	16.7,47.4
_Follow_ the path |goto Upper Blackrock Spire 2/3 16.7,47.4 < 8 |c |noway
step
kill Warlord Zaela##77120 |goto Upper Blackrock Spire 2/3 14.4,47.7
|achieve 9055
step
Congratulations, you have _earned_ the Heroic: Upper Blackrock Spire Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\I Saw Soils",[[
description Cause three Piles of Ash to form Solar Flares at the same time during the Rukhran encounter in Skyreach on Heroic difficulty.
condition end achieved(9035)
step
_Enter_ the _Skyreach_ dungeon on Heroic |goto Skyreach/1 60.6,25.1 < 20 |c |noway |or
|confirm |or
step
map Skyreach/1
path follow loose;loop off;ants straight
path	60.6,25.1	60.5,15.7	65.5,13.7
path	66.5,25.9	64.1,32.2	62.6,39.2
path	59.2,46.2	54.1,50.3	53.3,53.7
path	52.3,61.1	47.0,62.3	45.7,64.7
path	47.1,67.8	47.8,70.9	45.3,76.3
_Follow_ the path |goto Skyreach/1 45.3,76.3 |c |noway
step
This achievement was buggy at launch, but _seems to be working now_ |tip The stratgy below works with a well coordinated group
The _tank in the group should just focus on tanking the boss_ while the other four start _kiting the birds around the main pillar_ in the room |tip They can be slowed and kited
Try to _activate some ashes_ while doing this to save time
_Don't DPS the boss_ because at 75% he will cast Quills and ruin the strategy
When you have the _vast majority of birds kited_ and somewhat damaged _they can be AOE'd down_ |tip Using an AOE stun will keep them from exploding at 0 health until the stun wears off
You have now _created a nice group of ashes_ for the boss to cast Summon Solar Flare on them
_Wait patiently_ until the risen ash cause more to rise and then kill the boss
kill Rukhran##76379 |goto Skyreach/1 42.7,81.9
|achieve 9035
step
Congratulations, you have _earned_ the I Saw Soils Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Icky Ichors",[[
description Defeat Bonemaw after having fed him 25 Corpse Skitterlings in Shadowmoon Burial Grounds on Heroic difficulty.
condition end achieved(9025)
step
_Enter_ the Shadowmoon Burial Grounds dungeon on heroic |goto Shadowmoon Burial Grounds/1 12.0,68.4 < 20 |c |noway |or
|confirm |or
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	12.0,68.4	13.8,65.6	16.2,55.5
path	23.4,50.8	37.6,50.9	38.4,37.6
path	45.6,28.9	52.6,24.1	52.6,21.7
_Drop down_ at the end of the path |goto Shadowmoon Burial Grounds/1 46.9,51.0 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,21.7	52.6,34.8	42.3,36.1
path	42.5,50.8	47.9,50.9
_Follow_ the path |goto Shadowmoon Burial Grounds/1 47.9,50.9 < 8 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,51.0	65.3,50.9	72.7,51.7
path	77.9,55.9	78.2,62.4
_Follow_ the path |goto Shadowmoon Burial Grounds/1 78.2,62.4 < 8 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	79.0,72.9	84.4,72.5	87.6,60.4
_Follow_ the path |goto Shadowmoon Burial Grounds/1 87.6,60.4 |c |noway
step
map Shadowmoon Burial Grounds/2
path follow loose;loop off;ants straight
path	7.0,65.5	7.3,60.9	10.6,58.9
path	15.5,58.1	21.3,61.7	22.2,66.8
path	20.2,71.5	17.3,70.9	16.9,66.9
path	18.8,62.2	25.7,59.5
_Follow_ the path |goto Shadowmoon Burial Grounds/2 25.7,59.5 |c |noway
step
_Kill Nhallish_ and _move down_ until you see the first pack of spiders
Make sure _not to kill_ any of the spiders as you kite the packs down towards the boss |tip You can use a Monk's Keg Smash here to kite efficiently and another tank for the elite mobs
_Kite the spiders to Bonemaw_ and make sure you have a pool on the ground to avoid being sucked in
_Wait_ for all the spiders to get sucked into Bonemaw |tip Sometimes it bugs just wait until they finish and the achievement pops
kill Bonemaw##86236 |goto Shadowmoon Burial Grounds/2 39.8,51.4
|achieve 9025
step
Congratulations, you have _earned_ the Icky Ichors Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Iron Docks",[[
description Defeat Skulloc in the Iron Docks.
condition end achieved(9038)
step
_Enter_ the _Iron Docks_ dungeon |goto Iron Docks/1 30.6,44.5 |c |noway |or
|confirm |or
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	33.6,40.7	37.8,35.5	42.0,34.4
path	46.4,34.2	49.2,47.6	39.6,48.6
path	37.9,55.5	49.5,67.6	64.3,76.3
path	76.4,76.6	83.5,76.2	86.4,68.9
path	86.5,24.8	79.3,19.6	71.9,28.0
path	69.4,34.2
_Follow_ the path |goto Iron Docks/1 69.4,34.2 |c |noway
step
kill Skulloc##83612
|achieve 9038
step
Congratulations, you have _earned_ the Iron Docks Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Is Draenor on Fire?",[[
description Defeat Gug'rokk without killing any Unstable Slag in Bloodmaul Slag Mines on Heroic difficulty.
condition end achieved(9008)
step
_Enter_ the _Bloodmaul Slag Mines_ dungeon on Heroic |goto Bloodmaul Slag Mines/1 51.5,83.3 < 100 |c |noway |or
|confirm |or
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	51.5,83.3	49.0,77.0	49.9,68.7
path	52.6,62.0	52.6,62.0	53.3,56.9
path	55.0,46.4	53.1,42.1	49.1,33.6
path	49.1,33.7	49.4,24.5	58.8,23.3
_Follow_ the path |goto Bloodmaul Slag Mines/1 58.8,23.3 < 10 |noway |c
step
Have the tank _drag the boss_ towards the entrance |tip Be careful not to evade bug him
With decent DPS the _boss should be around 40% to 60% health_ before the first add spawns
_Slow the adds down with rooting effects_ like Ice Trap or Earthgrab Totem to slow its progress |tip If the DPS and heals are on point the add can be free to roam about the group
kill Gug'rokk##86224
|achieve 9008
step
Congratulations, you have _earned_ the Is Draenor on Fire? Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Magnets, How Do They Work?",[[
description Defeat Orebender Gor'ashan without allowing him to cast Thundering Cacophony 4 times in Upper Blackrock Spire on Heroic difficulty.
condition end achieved(9045)
step
_Enter_ the Upper Blackrock Spire dungeon on heroic |goto Upper Blackrock Spire 2/1 37.3,29.1 < 100 |c |noway |or
|confirm |or
step
map Upper Blackrock Spire 2/1
path follow loose;loop off;ants straight
path	37.2,30.0	36.6,18.3	33.5,15.8
path	32.9,13.2	30.6,13.3	Upper Blackrock Spire 2/2 30.4,19.6
_Clear the rooms_ to break the seals
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.4,19.6 < 5|c |noway
step
_Assign two conduits to each player_ covering all seven |tip One conduit gets double coverage using the tank and all three DPS
Have each player _stand in the corner of the platform nearest their conduits_
The _boss will activate the conduits_ at 75%, 50%, and 25% so get ready a few percent early
Make sure to _activate the conduits fast enough_ that he only gets one or no casts off each time
_This is not a DPS race!_ |tip It is wise to take time prior to the cast phase to have the heals top off all players
kill Orebender Gor'ashan##86249 |goto Upper Blackrock Spire 2/2 30.3,27.0
|achieve 9045
step
Congratulations, you have _earned_ the Magnets, How Do They Work? Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Magnify... Enhance",[[
description Defeat the Empowered Construct in Skyreach on Heroic difficulty.
condition end achieved(9034)
step
_Enter_ the _Skyreach_ dungeon on Heroic |goto Skyreach/1 60.6,25.1 < 20 |c |noway |or
|confirm |or
step
map Skyreach/1
path follow loose;loop off;ants straight
path	60.6,25.1	60.5,15.7	65.5,13.7
path	66.5,25.9	64.1,32.2	62.6,39.2
path	59.2,46.2	54.1,50.3	53.3,53.7
path	52.3,61.1	47.0,62.3	45.7,64.7
path	47.1,67.8	47.8,70.9	45.3,76.3
_Follow_ the path |goto Skyreach/1 45.3,76.3 |c |noway
step
map Skyreach/1
path follow loose;loop off;ants straight
path	41.4,77.1	39.5,72.0	39.9,64.2
path	37.0,63.6	35.5,68.1	42.4,69.3
_Follow_ the path |goto Skyreach/1 42.4,69.3 < 5 |c |noway
step
map Skyreach/2
path follow loose;loop off;ants straight
path	18.1,73.8	27.2,80.8	30.9,72.5
path	24.8,58.1	27.8,41.3	35.4,35.4
path	44.0,43.4
_Follow_ the path |goto Skyreach/2 44.0,43.4 < 5 |c |noway
step
Before pulling the last boss have one member of the party _drop down to a small ledge_ under the right side of the boss platform |tip The right side as you are facing the boss
That member should _stay near the Inactive Construct_ while the other four party members engage the boss |tip Since this player will be stuck it's a good idea to have a DPS do this part
While fighting the boss wait for the _player on the platform to be targeted by Lens Flare_ |tip Once targeted they need to be on the Construct so the Lens Flare can activate it
Once the Construct is active _it will possibly kill the player_ |tip They can be rezzed after the boss is dead
After the four party members above defeat Viryx _everyone needs to drop down to the same platform with the construct_ and defeat it |tip If your party wipes after activating the construct it will still be there for another attempt
kill High Sage Viryx##86241 |goto Skyreach/2 51.1,27.4
|achieve 9034
step
Congratulations, you have _earned_ the Magnify... Enhance Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Militaristic, Expansionist",[[
description Defeat Fleshrender Nok'gar in Iron Docks on Heroic difficulty, while Siegemaster Olugar, Pitwarden Gwarnok, and Champion Druna remain alive and in the fight.
condition end achieved(9083)
step
_Enter_ the _Iron Docks_ dungeon on Heroic |goto Iron Docks/1 30.6,44.5 |c |noway |or
|confirm |or
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	33.6,40.7	37.8,35.5	42.0,34.4
_Follow_ the path |goto Iron Docks/1 42.0,34.4 |c |noway
step
In order to copmlete this achievement _you must kill_ Fleshrender Nok'gar while Olugar, Gwarnok, and Druna _are alive and fighting_
In order to do this the easiest way _clear all the trash_ around the masters and _run out_
Get to Fleshrender Nok'gar and _beat him down_ to somewhere between 2-5%
Then have a player _pull all three masters_ into the fight and _down the boss_ without killing the masters |tip High speed moving classes {ex: Rogue Sprint) work great for this
kill Fleshrender Nok'gar##87451
|modelnpc Siegemaster Olugar##83026
|modelnpc Pitwarden Gwarnok##84520
|modelnpc Champion Druna##81603
|achieve 9083
step
Congratulations, you have _earned_ the Militaristic, Expansionist Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Monomania",[[
description Defeat High Sage Viryx without killing any of the Shield Constructs in Skyreach on Heroic difficulty.
condition end achieved(9036)
step
_Enter_ the _Skyreach_ dungeon on Heroic |goto Skyreach/1 60.6,25.1 < 20 |c |noway |or
|confirm |or
step
map Skyreach/1
path follow loose;loop off;ants straight
path	60.6,25.1	60.5,15.7	65.5,13.7
path	66.5,25.9	64.1,32.2	62.6,39.2
path	59.2,46.2	54.1,50.3	53.3,53.7
path	52.3,61.1	47.0,62.3	45.7,64.7
path	47.1,67.8	47.8,70.9	45.3,76.3
_Follow_ the path |goto Skyreach/1 45.3,76.3 |c |noway
step
map Skyreach/1
path follow loose;loop off;ants straight
path	41.4,77.1	39.5,72.0	39.9,64.2
path	37.0,63.6	35.5,68.1	42.4,69.3
_Follow_ the path |goto Skyreach/1 42.4,69.3 < 5 |c |noway
step
map Skyreach/2
path follow loose;loop off;ants straight
path	18.1,73.8	27.2,80.8	30.9,72.5
path	24.8,58.1	27.8,41.3	35.4,35.4
path	44.0,43.4
_Follow_ the path |goto Skyreach/2 44.0,43.4 < 5 |c |noway
step
This one is actually not terrible to earn _with the right amount_ of CC
Just make sure to _interrupt the shields_ and keep the Shield Constructs CC'd
kill High Sage Viryx##86241 |goto Skyreach/2 51.1,27.4
|modelnpc Skyreach Shield Construct##76292
|achieve 9036
step
Congratulations, you have _earned_ the Monomania Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\No Tag-backs!",[[
description Defeat Teron'gor in Auchindoun on Heroic difficulty while under the effects of Curtain of Flame.
condition end achieved(9552)
step
_Enter_ the _Auchindoun_ dungeon on Heroic |goto Auchindoun/1 49.7,90.2 |c |noway |or
|confirm |or
step
In order to complete this achievement _you must still have the debuff Curtain of Flame_ from the previous boss Azzakel so don't let it drop! |tip The debuff will spread between closeby players when it ticks damage
|confirm
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	49.7,90.2	49.8,68.8	44.4,65.9
path	37.8,61.6	32.2,54.5	27.4,40.2
path	27.4,40.2	30.6,51.3	35.0,58.9
path	44.2,66.0	49.7,66.6	55.0,66.1
path	65.0,59.5	70.0,48.5	70.7,38.2
path	67.8,38.6	63.7,32.4
_Activate_ the Soul Transporter |goto 58.7,18.9 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 57.0,21.5
_Next_ |goto Auchindoun/1 40.8,18.9 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 42.4,21.4
_Next_ |goto Auchindoun/1 41.1,45.4 |c |noway
step
click Soul Transporter
_Activate_ the Soul Transporter |goto Auchindoun 42.4,43.5
_Next_ |goto Auchindoun/1 49.7,41.6 |c |noway
step
In order to complete this achievement _you must still have the debuff Curtain of Flame_ from the previous boss Azzakel
The _debuff spreads to nearby players when it ticks damage_ so you need to _bounce it between two people_ until you reach Teron'gor
This achievement is _only earned by the people who actually have the debuff_ when Teron'gor is defeated |tip Make sure it spreads to anyone who needs it prior to the boss hitting 10 percent
kill Teron'gor##86220 |goto Auchindoun/1 49.6,33.5
|achieve 9552
step
Congratulations, you have _earned_ the No Tag-backs! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\No Ticket",[[
description Defeat Nitrogg Thundertower after abruptly removing 20 enemies from the Grimrail in Grimrail Depot on Heroic difficulty.
condition end achieved(9007)
step
Enter the _Grimrail Depot_ dungeon on Heroic |goto Grimrail Depot/1 32.4,31.9 < 20 |c |noway |or
|confirm |or
step
map Grimrail Depot/1
path follow loose;loop off;ants straight
path	30.9,51.7	43.9,56.8	path	56.6,42.8
Follow the path |goto Grimrail Depot/1 56.6,42.8 |c |noway
step
map Grimrail Depot/1
path follow loose;loop off;ants straight
path	69.5,19.6	75.4,25.0	Grimrail Depot/2 63.6,25.8
path	Grimrail Depot/2 71.8,13.7	Grimrail Depot/2 70.3,29.3
Follow the path |goto Grimrail Depot/3 85.3,51.8 |c |noway |or
Enter the Train Car |confirm |or
step
map Grimrail Depot/3
path follow loose;loop off;ants straight
path	85.3,51.8	67.6,52.1	38.6,51.8
path	9.7,51.7
Follow the path |goto Grimrail Depot/3 9.7,51.7 |c |noway
step
This achievement is done by _knocking 20 mobs off the side_ of the train during the encounter with Nitrogg Thundertower
Having a knockback in your group _is needed_ |tip Elemental Shaman's Thunderstorm, Druid specced into Typhoon, and Mage's Supernova all work well
This counts _both elite and non-elite mobs_ during the encounter |tip So send them all packin'!
kill Nitrogg Thundertower##86227 |goto Grimrail Depot/3 9.7,51.7 |c |noway
|achieve 9007
step
Congratulations, you have _earned_ the No Ticket Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Ready for Raiding IV",[[
description Defeat Ranjit without taking damage from any of the following abilities in Skyreach on Heroic difficulty: Spinning Blade, Windwall, Four Winds, Lens Flare.
condition end achieved(9033)
step
_Enter_ the _Skyreach_ dungeon on Heroic |goto Skyreach/1 60.6,25.1 < 20 |c |noway |or
|confirm |or
step
map Skyreach/1
path follow loose;loop off;ants straight
path	60.6,25.1	60.5,15.7	65.5,13.7
path	66.5,25.9	64.1,32.2
Follow the path |goto Skyreach/1 64.1,32.2 |c |noway
step
To earn this achievement you must _avoid four mechanics_ that deal damage on this boss fight |tip This achievement is personal so don't get frustrated if your group members faceplant on any given mechanic
_Spinning Blade_ Don't stand in it's path or you suffer physical damage
_Windwall_ Avoid the area it's cast in and move to avoid it's path
_Four Winds_ Avoid standing in the wind trails as they cause nature damage
_Lens Flare_ Calls a beam of light down on a party member and follows them |tip Move away and don't lead it through the group
kill Ranjit##86238 |goto Skyreach/1 63.3,38.5
|achieve 9033
step
Congratulations, you have _earned_ the Ready for Raiding IV Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Shadowmoon Burial Grounds",[[
description Defeat Ner'zhul in Shadowmoon Burial Grounds.
condition end achieved(9041)
step
_Enter_ the Shadowmoon Burial Grounds dungeon |goto Shadowmoon Burial Grounds/1 12.0,68.4 < 20 |c |noway |or
|confirm |or
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	12.0,68.4	13.8,65.6	16.2,55.5
path	23.4,50.8	37.6,50.9	38.4,37.6
path	45.6,28.9	52.6,24.1	52.6,21.7
_Drop down_ at the end of the path |goto Shadowmoon Burial Grounds/1 46.9,51.0 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,21.7	52.6,34.8	42.3,36.1
path	42.5,50.8	47.9,50.9
_Follow_ the path |goto Shadowmoon Burial Grounds/1 47.9,50.9 < 8 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,51.0	65.3,50.9	72.7,51.7
path	77.9,55.9	78.2,62.4
_Follow_ the path |goto Shadowmoon Burial Grounds/1 78.2,62.4 < 8 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	79.0,72.9	84.4,72.5	87.6,60.4
_Follow_ the path |goto Shadowmoon Burial Grounds/1 87.6,60.4 |c |noway
step
map Shadowmoon Burial Grounds/2
path follow loose;loop off;ants straight
path	7.0,65.5	7.3,60.9	10.6,58.9
path	15.5,58.1	21.3,61.7	22.2,66.8
path	20.2,71.5	17.3,70.9	16.9,66.9
path	18.8,62.2	25.7,59.5
_Follow_ the path |goto Shadowmoon Burial Grounds/2 25.7,59.5 |c |noway
step
map Shadowmoon Burial Grounds/2
path follow loose;loop off;ants straight
path	39.1,50.9	49.4,57.6	56.9,62.3
path	64.8,67.1
_Follow_ the path |goto Shadowmoon Burial Grounds/3 38.5,36.9 < 20 |c |noway
step
kill Ner'zhul##76268 |goto Shadowmoon Burial Grounds/3 48.1,47.1
|achieve 9041
step
Congratulations, you have _earned_ the Shadowmoon Burial Grounds Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Skyreach",[[
description Defeat High Sage Viryx in Skyreach.
condition end achieved(8843)
step
_Enter_ the _Skyreach_ dungeon |goto Skyreach/1 60.6,25.1 < 20 |c |noway |or
|confirm |or
step
map Skyreach/1
path follow loose;loop off;ants straight
path	60.6,25.1	60.5,15.7	65.5,13.7
path	66.5,25.9	64.1,32.2	62.6,39.2
path	59.2,46.2	54.1,50.3	53.3,53.7
path	52.3,61.1	47.0,62.3	45.7,64.7
path	47.1,67.8	47.8,70.9	45.3,76.3
_Follow_ the path |goto Skyreach/1 45.3,76.3 |c |noway
step
map Skyreach/1
path follow loose;loop off;ants straight
path	41.4,77.1	39.5,72.0	39.9,64.2
path	37.0,63.6	35.5,68.1	42.4,69.3
_Follow_ the path |goto Skyreach/1 42.4,69.3 < 5 |c |noway
step
map Skyreach/2
path follow loose;loop off;ants straight
path	18.1,73.8	27.2,80.8	30.9,72.5
path	24.8,58.1	27.8,41.3	35.4,35.4
path	44.0,43.4
_Follow_ the path |goto Skyreach/2 44.0,43.4 < 5 |c |noway
step
kill High Sage Viryx##86241 |goto Skyreach/2 51.1,27.4
|achieve 8843
step
Congratulations, you have _earned_ the Skyreach Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Souls of the Lost",[[
description Defeat Ner'zhul after slaying 2 Ritual of Bones skeletons within 5 seconds of each other in Shadowmoon Burial Grounds on Heroic difficulty.
condition end achieved(9026)
step
_Enter_ the Shadowmoon Burial Grounds dungeon on heroic |goto Shadowmoon Burial Grounds/1 12.0,68.4 < 20 |c |noway |or
|confirm |or
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	12.0,68.4	13.8,65.6	16.2,55.5
path	23.4,50.8	37.6,50.9	38.4,37.6
path	45.6,28.9	52.6,24.1	52.6,21.7
_Drop down_ at the end of the path |goto Shadowmoon Burial Grounds/1 46.9,51.0 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,21.7	52.6,34.8	42.3,36.1
path	42.5,50.8	47.9,50.9
_Follow_ the path |goto Shadowmoon Burial Grounds/1 47.9,50.9 < 8 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,51.0	65.3,50.9	72.7,51.7
path	77.9,55.9	78.2,62.4
_Follow_ the path |goto Shadowmoon Burial Grounds/1 78.2,62.4 < 8 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	79.0,72.9	84.4,72.5	87.6,60.4
_Follow_ the path |goto Shadowmoon Burial Grounds/1 87.6,60.4 |c |noway
step
map Shadowmoon Burial Grounds/2
path follow loose;loop off;ants straight
path	7.0,65.5	7.3,60.9	10.6,58.9
path	15.5,58.1	21.3,61.7	22.2,66.8
path	20.2,71.5	17.3,70.9	16.9,66.9
path	18.8,62.2	25.7,59.5
_Follow_ the path |goto Shadowmoon Burial Grounds/2 25.7,59.5 |c |noway
step
map Shadowmoon Burial Grounds/2
path follow loose;loop off;ants straight
path	39.1,50.9	49.4,57.6	56.9,62.3
path	64.8,67.1
_Follow_ the path |goto Shadowmoon Burial Grounds/3 38.5,36.9 < 20 |c |noway
step
When the Ritual of Bones cast spawns adds you must _kill two of them within 5 seconds_ of each other |tip Picking mobs closest to the center is best
This _must be done every phase_ that Ritual of Bones is cast or you will not get the achievement
kill Ner'zhul##76268 |goto Shadowmoon Burial Grounds/3 48.1,47.1
|achieve 9026
step
Congratulations, you have _earned_ the Souls of the Lost Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Take Cover!",[[
description Defeat Skulloc in Iron Docks on Heroic difficulty without any players getting hit by Cannon Barrage or Backdraft.
condition end achieved(9082)
step
_Enter_ the _Iron Docks_ dungeon on Heroic |goto Iron Docks/1 30.6,44.5 |c |noway |or
|confirm |or
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	33.6,40.7	37.8,35.5	42.0,34.4
path	46.4,34.2	49.2,47.6	39.6,48.6
path	37.9,55.5	49.5,67.6	64.3,76.3
path	76.4,76.6	83.5,76.2	86.4,68.9
path	86.5,24.8	79.3,19.6	71.9,28.0
path	69.4,34.2
_Follow_ the path |goto Iron Docks/1 69.4,34.2 |c |noway
step
This achievement is fairly straightforward and _requires a bit of mobility_ and good timing
Make sure to _take cover_ behind crates during Cannon Barrage _moving foreward_ between shots |tip Warlock gates will be very helpful here
_Avoid the rear_ of the ship during Cannon Barrage or Backdraft will kill you
_No one can get hit_ by either ability or the achievement will fail
kill Skulloc##83612
|achieve 9082
step
Congratulations, you have _earned_ the Take Cover! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\The Everbloom",[[
description Defeat Yalnu in The Everbloom.
condition end achieved(9044)
step
_Enter The Everbloom_ dungeon |goto The Everbloom/1 72.4,55.7 < 20 |c |noway |or
|confirm |or
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	72.4,55.7	69.4,50.4	67.4,48.0
path	63.4,56.9	59.0,59.9	56.0,59.7
path	53.3,56.3	54.2,49.4	58.2,46.1
path	63.5,48.5	67.7,47.4	69.5,42.1
path	71.0,29.6	70.6,24.4	67.8,21.6
path	64.5,25.3	62.0,28.2	59.8,25.5
path	57.8,20.6	58.8,13.4	62.1,5.9
path	61.4,7.3	58.8,12.8	57.4,20.4
path	57.2,29.6	55.2,33.1	44.2,35.1
_Follow_ the path |goto The Everbloom/2 44.2,35.1 |c |noway
confirm
step
kill Yalnu##86248
|achieve 9044
step
Congratulations, you have _earned_ the Everbloom Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\They Burn, Burn, Burn",[[
description Successfully jump over 5 of Archmage Sol's Firebloom explosion rings within 5 seconds in The Everbloom on Heroic difficulty.
condition end achieved(9493)
step
_Enter The Everbloom_ dungeon on Heroic |goto The Everbloom/1 72.4,55.7 < 20 |c |noway |or
|confirm |or
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	72.4,55.7	69.4,50.4	67.4,48.0
path	63.4,56.9	59.0,59.9	56.0,59.7
path	53.3,56.3	54.2,49.4	58.2,46.1
path	63.5,48.5	67.7,47.4	69.5,42.1
path	71.0,29.6	70.6,24.4	67.8,21.6
path	64.5,25.3	62.0,28.2	59.8,25.5
path	57.8,20.6	58.8,13.4	62.1,5.9
path	61.4,7.3	58.8,12.8	57.4,20.4
path	57.2,29.6
_Follow_ the path |goto The Everbloom/1 57.2,29.6 |c |noway
confirm
step
Fairly easy personal achievement here _if you time it right_ |tip Make sure the boss doesn't go under 35% or it'll change phases and make the achievement unobtainable
Sol will cast the fire flowers on everyone except for the tank so a little communication is needed to make sure _everyone lines up in a good order_
Once that's done just simply _jump over them_ |tip Remember you need 5 of them
kill Archmage Sol##86246
|achieve 9493
step
Congratulations, you have _earned_ the They Burn, Burn, Burn Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\This is Why We Can't Have Nice Things",[[
description Defeat Railmaster Rocketspark and Borka the Brute after destroying all of the Priceless Paraphernalia in Grimrail Depot on Heroic difficulty.
condition end achieved(9024)
step
Enter the _Grimrail Depot_ dungeon on Heroic |goto Grimrail Depot/1 32.4,31.9 < 20 |c |noway |or
|confirm |or
step
map Grimrail Depot/1
path follow loose;loop off;ants straight
path	30.9,51.7	43.9,56.8	path	56.6,42.8
Follow the path |goto Grimrail Depot/1 56.6,42.8 |c |noway
step
There are _four Priceless Paraphernalia_ boxes throughout the boss's room
To achieve this _you must have Borka Mad Dash_ in the direction towards the objects |tip They break one at a time and all four are required
kill Railmaster Rocketspark##77803 |goto Grimrail Depot/1 56.6,42.8
kill Borka the Brute##77816
|modelnpc Priceless Paraphernalia##81834
|achieve 9024
step
Congratulations, you have _earned_ the This is Why We Can't Have Nice Things Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Upper Blackrock Spire",[[
description Defeat Warlord Zaela in Upper Blackrock Spire.
condition end achieved(9042)
step
_Enter_ the Upper Blackrock Spire dungeon |goto Upper Blackrock Spire 2/1 37.3,29.1 < 100 |c |noway |or
|confirm |or
step
map Upper Blackrock Spire 2/1
path follow loose;loop off;ants straight
path	37.2,30.0	36.6,18.3	33.5,15.8
path	32.9,13.2	30.6,13.3	Upper Blackrock Spire 2/2 30.4,19.6
_Clear the rooms_ to break the seals
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.4,19.6 < 5|c |noway
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	30.3,27.0	30.6,36.4	32.0,37.8
_Follow_ the path |goto Upper Blackrock Spire 2/2 32.0,37.8
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	36.2,37.6	30.3,39.5
_Follow_ the path |goto Upper Blackrock Spire 2/2 30.3,39.5 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	28.6,41.1	28.4,34.1	36.4,34.0
path	36.4,27.8	42.2,28.3	45.8,28.0
_Follow_ the path |goto Upper Blackrock Spire 2/3 45.8,28.0 < 8 |c |noway |or
_Enter_ the next floor |confirm |or
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	48.5,27.3	48.7,35.8	54.7,35.8
path	54.7,45.7
_Follow_ the path |goto Upper Blackrock Spire 2/3 54.7,45.7 < 20 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	61.8,45.6	58.1,47.0	50.6,45.7
_Follow_ the path |goto Upper Blackrock Spire 2/3 50.6,45.7 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	46.7,45.6	39.8,45.9	36.3,51.4
path	28.9,51.5	21.4,49.6	18.8,47.6
path	16.7,47.4
_Follow_ the path |goto Upper Blackrock Spire 2/3 16.7,47.4 < 8 |c |noway
step
kill Warlord Zaela##77120 |goto Upper Blackrock Spire 2/3 14.4,47.7
|achieve 9042
step
Congratulations, you have _earned_ the Upper Blackrock Spire Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Water Management",[[
description Defeat Witherbark without allowing him to replenish any of his Aqueous Energy in The Everbloom on Heroic difficulty.
condition end achieved(9017)
step
_Enter The Everbloom_ dungeon on Heroic |goto The Everbloom/1 72.4,55.7 < 20 |c |noway |or
|confirm |or
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	72.4,55.7	69.4,50.4	67.4,48.0
path	63.4,56.9	59.0,59.9	56.0,59.7
_Follow_ the path |goto The Everbloom/1 56.0,59.7 |c |noway
|confirm
step
There are a _couple of different_ strategies for this achievement
The first strategy is pretty direct. If you have a player with a _spammable knockback_ they can be placed on duty to _knock the orbs of water away_ from the boss as DPS kill them
The second strategy is to _pull the boss away from the water_ as far as possible
_Place Unchecked Growth_ between the boss and the water
_Focus fire the boss_ and DPS any globes of water that break though
kill Witherbark##86242 |goto The Everbloom/1 52.5,56.9
|achieve 9017
step
Congratulations, you have _earned_ the Water Management Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\Weed Whacker",[[
description Defeat Yalnu without any Kirin Tor Battle-Mages dying in The Everbloom on Heroic difficulty.
condition end achieved(9223)
step
_Enter The Everbloom_ dungeon on Heroic |goto The Everbloom/1 72.4,55.7 < 20 |c |noway |or
|confirm |or
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	72.4,55.7	69.4,50.4	67.4,48.0
path	63.4,56.9	59.0,59.9	56.0,59.7
path	53.3,56.3	54.2,49.4	58.2,46.1
path	63.5,48.5	67.7,47.4	69.5,42.1
path	71.0,29.6	70.6,24.4	67.8,21.6
path	64.5,25.3	62.0,28.2	59.8,25.5
path	57.8,20.6	58.8,13.4	62.1,5.9
path	61.4,7.3	58.8,12.8	57.4,20.4
path	57.2,29.6	55.2,33.1	44.2,35.1
_Follow_ the path |goto The Everbloom/2 44.2,35.1 |c |noway
confirm
step
To maximize your efforts _always ensure that the tank is grabbing up_ the spawned mobs during the fight
Also _be sure to trample any blossoms_ that spawn to cut down on the adds
kill Yalnu##86248 |goto The Everbloom/2 45.0,72.0
|achieve 9223
step
Congratulations, you have _earned_ the Weed Whacker Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\What's Your Sign?",[[
description Defeat Sadana Bloodfury while only having the runes that correspond to her active lunar cycle lit in Shadowmoon Burial Grounds on Heroic difficulty.
condition end achieved(9018)
step
Enter the _Shadowmoon Burial Grounds_ dungeon on heroic |goto Shadowmoon Burial Grounds/1 12.0,68.4 < 20 |c |noway |or
|confirm |or
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	12.0,68.4	13.8,65.6	16.2,55.5
path	23.4,50.8	37.6,50.9	38.4,37.6
path	45.6,28.9	52.6,24.1	52.6,21.7
Drop down at the end of the path |goto Shadowmoon Burial Grounds/1 46.9,51.0 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,21.7	52.6,34.8	42.3,36.1
path	42.5,50.8	47.9,50.9
Follow the path |goto Shadowmoon Burial Grounds/1 47.9,50.9 < 8 |c |noway
step
_Fight_ as usual for the first Dark Eclipse |tip Bring her to low health and wait for the second Dark Eclipse
After the second Dark Eclipse goes off grab the buff by _standing on the inner ring's white moon runes_ on the ground |tip All of them will be the same type and spaced evenly apart
Then the eight white outer runes _turn back to purple_ |tip Run over the remaining 16 that didn't light up without touching the runes that were white
kill Sadana Bloodfury##86234 |goto Shadowmoon Burial Grounds/1 52.2,51.0
|achieve 9018
step
Congratulations, you have _earned_ the What's Your Sign? Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Dungeon Achievements\\...They All Fall Down",[[
description Defeat Soulbinder Nyami after defeating 12 fallen Auchenai protectors within 3 seconds in Auchindoun on Heroic difficulty.
condition end achieved(9023)
step
_Enter_ the _Auchindoun_ dungeon on Heroic |goto Auchindoun/1 49.7,90.2 |c |noway |or
|confirm |or
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	49.7,90.2	49.8,68.8	44.4,65.9
path	37.8,61.6	32.2,54.5	27.4,40.2
path	27.4,40.2	30.6,51.3	35.0,58.9
path	44.2,66.0
_Follow_ the path |goto Auchindoun/1 44.2,66.0 < 20 |c |noway
step
Make sure to _finish off_ the Arbiter's and Magus's adds |tip They have different health pools
_Wait_ for Nyami to spawn adds and kill everything except the Defenders
_Continue_ doing this until you have 12 Defenders collected |tip You can get a couple more to be safe
Once there is enough Defenders for the achievement _everyone should burst AOE_
kill Soulbinder Nyami##86218 |goto Auchindoun/1 49.7,66.6
|modelnpc Auchenai Defender##76632
|achieve 9023
step
Congratulations, you have _earned_ the ...They All Fall Down Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Profession Achievements\\Awake the Drakes",[[
description Collect the drake mounts.
condition end achieved(9713)
step
.' _Collect the following drake mounts_ listed below:
.' _Click here_ for Azure Drake |achieve 9713/1 |confirm |next "Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Azure Drake"
.' _Click here_ for Bronze Drake |achieve 9713/2 |confirm |next "Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Bronze Drake"
.' _Click here_ for Black Drake |achieve 9713/3 |confirm |next "Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Black Drake"
.' _Click here_ for Blazing Drake |achieve 9713/4 |confirm |next "Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Blazing Drake"
.' _Click here_ for Blue Drake |achieve 9713/5 |confirm |next "Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dungeon Mounts\\Blue Drake"
.' _Click here_ for Onyxian Drake |achieve 9713/6 |confirm |next "Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Onyxian Drake"
.' _Click here_ for Purple Netherwing Drake |achieve 9713/7 |confirm |next "Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Netherwing Drakes\\Quests & Dailies"
.' _Click here_ for Red Drake |achieve 9713/8 |confirm |next "Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Red Drake"
.' _Click here_ for Twilight Drake |achieve 9713/9 |confirm |next "Zygor's Horde Pets & Mounts Guide\\Mounts\\Flying Mounts\\Raid Mounts\\Twilight Drake"
step
.' Congratulations, you have earned the _Awake the Drakes_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Achievements Guides\\Draenor\\Collection Achievements\\Mountacular",[[
description Obtain 250 mounts.
condition end achieved(9599)
step
.' _Please refer to our individual mount guides_ to earn this achievement.
.' Obtain 250 mounts. |achieve 9599
step
.' Congratulations, you have earned the _Mountacular_ Achievement!
]])
