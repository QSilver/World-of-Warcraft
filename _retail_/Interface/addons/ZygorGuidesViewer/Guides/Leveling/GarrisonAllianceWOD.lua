local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("GarrisonAWOD") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Garrison Leveling Guide",[[
description This guide will walk you through leveling your Garrison up.
step
label "Level"
Proceeding to garrison leveling guide level 1 |next "Level1" |only if default
Proceeding to garrison leveling guide level 2 |next "Level1" |only if garrisonlvl(2) and not completedq(34586)
Proceeding to garrison leveling guide level 2 |next "Level2" |only if garrisonlvl(1) and completedq(34586)
Proceeding to garrison leveling guide level 2 |next "Level2" |only if garrisonlvl(3) and not completedq(36592)
Proceeding to garrison leveling guide level 3 |next "Level3" |only if garrisonlvl(2) and completedq(36592)
Proceedint to garrison max |next "GarrisonMax" |only if garrisonlvl(3) and completedq(36615)
step
label "Level1"
To create your garrison, you must first quest through Tanaan Jungle and complete the quest "Step Three: Prophet!"
Complete Tanaan Jungle |condition completedq(34575)
step
talk Prophet Velen##79206
accept Finding a Foothold##34582 |goto Shadowmoon Valley D/0 26.98,8.09
step
_Go up_ the path |goto Shadowmoon Valley D 27.4,13.5 < 10
Accompany Prophet Velen to Lunarfall Ruins |q Finding a Foothold##34582/1 |goto Shadowmoon Valley D 28.9,16.3
step
talk Vindicator Maraad##79470
turnin Finding a Foothold##34582 |goto 28.80,16.22
accept For the Alliance!##34583 |goto 28.80,16.22
step
click Alliance Banner## |tip It's a large wooden T-shape banner illuminated in a yellowish tone with an Alliance logo in the center.
Plant the Alliance Banner |q For the Alliance!##34583/1 |goto 29.04,16.15
step
talk Baros Alexston##79243
turnin For the Alliance!##34583 |goto 29.05,16.22 |tip You will not be able to turn this quest in until he walks around and says his dalogue for a few moments.
accept Looking for Lumber##34584 |goto 29.05,16.22
accept Ravenous Ravens##34616 |goto 29.05,16.22
step
click Tree Marking## |tip They look like wooden poles with white flags on them planted in the ground around this area.
Mark #8# trees for lumberjacks |q Looking for Lumber##34584/1 |goto 29.87,18.87
kill 6 Lunarfall Raven##82037+ |q Ravenous Ravens##34616/1 |goto 29.78,18.86
step
talk Baros Alexston##79243
turnin Looking for Lumber##34584 |goto 29.04,16.21
turnin Ravenous Ravens##34616 |goto 29.04,16.21
step
talk Yrel##79567
accept Quakefist##34585 |goto 28.92,16.39
step
_Go down_ into the tree stump |goto Shadowmoon Valley D 30.0,21.0 < 10
kill Quakefist##81360 |q Quakefist##34585/1 |goto 30.14,21.80
step
_Leave_ the tree stump |goto Shadowmoon Valley D 29.9,20.9 < 10
talk Yrel##79567
turnin Quakefist##34585 |goto 28.91,16.38
step
talk Baros Alexston##79243
accept Establish Your Garrison##34586 |goto 29.05,16.20
step
talk Baros Alexston##79243
Tell him _"We have everything we need. It's time to build the garrison."_
Speak with Baros to build your garrison |q Establish Your Garrison##34586/1 |goto 29.05,16.22
step
_Enter_ the doorway |goto Lunarfall 40.8,45.4 < 10
#include "A_Garrison_BAlexston"
turnin Establish Your Garrison##34586 |goto 41.31,49.25
step
label "Level2"
Proceeding to garrison level 2
stickystart "Resource"
step
#include "A_Garrison_BAlexston"
accept Keeping it Together##35176 |goto 41.31,49.25
accept Ship Salvage##35166 |goto 41.31,49.25
step
#include "A_Garrison_Brightstone"
Tell her _"Time to get back to work."_
Speak with Assistant Brightstone about her work ethic |q Keeping it Together##35176/1 |goto 44.81,53.43
step
click Garrison Cache## |tip The cache is a wooden crate bearing an Alliance logo sitting next to a small pile of logs.
Check the Garrison Cache |q Keeping it Together##35176/3 |goto 49.19,43.59
step
_Enter_ the doorway |goto Lunarfall 40.9,45.5 < 10
#include "A_Garrison_Shelly"
Tell her _"Gather Shelly's report."_
Gather Shelly's Report |q Keeping it Together##35176/2 |goto 32.53,34.43
step
_Enter_ the doorway |goto Lunarfall 40.8,45.4 < 10
#include "A_Garrison_BAlexston"
turnin Keeping it Together##35176 |goto 41.31,49.22
step
#include "A_Garrison_Maraad"
accept Pale Moonlight##35174 |goto 44.06,53.40
stickystart "paledevourers"
step
_Enter_ the doorway |goto Lunarfall 40.9,45.5 < 10
_Follow_ the road towards the beach |goto Lunarfall 21.4,38.4 < 20
kill Gnaw Bloodseeker##81670 |q Pale Moonlight##35174/1 |goto Shadowmoon Valley D 25.7,5.7
step "paledevourers"
kill Pale Devourer##79205+
Slay 8 Pale Devourers |q Pale Moonlight##35174/2 |goto Shadowmoon Valley D 26.55,8.76
click Drudgeboat Salvage## |tip They look like half-buried wooden barrels on the ground around this area.
get 15 Drudgeboat Salvage |q Ship Salvage##35166/1 |goto Shadowmoon Valley D 28.19,6.80
You can find more around [Shadowmoon Valley D 27.1,6.4]
step
Take the _road back_ to your Garrison |goto Shadowmoon Valley D 27.2,14.5 < 20
_Enter_ the doorway |goto Lunarfall 40.8,45.4 < 20
#include "A_Garrison_BAlexston"
turnin Ship Salvage##35166 |goto Lunarfall 41.20,49.29
step
#include "A_Garrison_Maraad"
turnin Pale Moonlight##35174 |goto 44.09,53.44
step
#include "A_Garrison_BAlexston"
accept Build Your Barracks##34587 |goto 41.20,49.39
step
click Garrison Blueprint: Barracks##525 |tip It looks like a white unrolled scroll laying flat on the ground.
Find the Blueprints |q Build Your Barracks##34587/1 |goto 45.42,40.59
step
use Garrison Blueprint: Barracks, Level 1##111956
Learn the Blueprints |q Build Your Barracks##34587/2 |goto 45.56,41.08
step
#include "A_Garrison_ArchitectTable"
Use the Architect Table |q Build Your Barracks##34587/3 |goto 41.22,48.96
While using the table, _drag the Barracks_ to the _"Large Empty Plot"_
step
click Finalize Garrison Plot## |tip It looks like a huge floating white scroll.
Finalize your Plot |q Build Your Barracks##34587/4 |goto 44.62,44.11
step
#include "A_Garrison_Maraad"
turnin Build Your Barracks##34587 |goto 44.12,53.25
accept Qiana Moonshadow##34646 |goto 44.12,53.25
step
_Follow_ the road out of the Garrison |goto Lunarfall 61.0,85.0 < 30
talk Qiana Moonshadow##79446
Speak with Qiana Moonshadow |q Qiana Moonshadow##34646/1 |goto Shadowmoon Valley D 29.94,29.21
step
_Run back_ towards your garrison |goto Lunarfall 62.4,89.4 < 20
_Enter_ the doorway |goto Lunarfall 49.6,63.9 < 10
_Enter_ the small house |goto Lunarfall 42.2,53.1 < 10
#include "A_Garrison_QMoonshadow"
turnin Qiana Moonshadow##34646 |goto 40.48,53.99
step
#include "A_Garrison_LtThorn"
accept Delegating on Draenor##34692 |goto Lunarfall 40.29,53.76
step
#include "A_Garrison_CommandTable"
Click the _Killing the Corrupted_ mission
Assign _Qiana Moonshadow_ to the mission and start it
Use the Command Table |q Delegating on Draenor##34692/1 |goto 40.47,53.53
step
#include "A_Garrison_LtThorn"
turnin Delegating on Draenor##34692 |goto 40.23,53.58
step
#include "A_Garrison_Yrel"
accept A Hero's Welcome##33075 |goto 47.11,51.05
step
Find Samaara at Embaari Village |q A Hero's Welcome##33075/1 |goto Shadowmoon Valley D 45.67,38.84
step
talk Samaara##75005
turnin A Hero's Welcome##33075 |goto 46.04,38.92
accept Dark Enemies##33765 |goto 46.04,38.92
step
talk Efee##80196
accept Think of the Children!##33070 |goto 46.64,37.74
step
talk Vindicator Tenuum##74343
accept Closing the Door##33905 |goto 46.65,37.29
stickystart "voidmancers"
step
from Shadowmoon Portalmaster##80181+
Close 3 Void Portals |q Closing the Door##33905/1 |goto 47.53,34.45
You can find another portal here [Shadowmoon Valley D 48.4,33.4]
You can find another portal here [Shadowmoon Valley D 48.9,31.8]
step
talk Hakaam##62769
Save Hakaam |q Think of the Children!##33070/1 |goto 48.98,30.89
step
_Follow_ the path around the cliff |goto Shadowmoon Valley D 49.4,32.0 < 20
_Run into_ the small village |goto Shadowmoon Valley D 51.2,31.7 < 20
talk Ariaana##71502
accept In Need of a Hero##33813 |goto 52.04,32.68
step
click Draenei Bucket## |tip They look like small buckets of water on the ground around a fountain.
Get a Draenei Bucket |goto Shadowmoon Valley D 51.8,32.5 < 10
use Draenei Bucket##111908 |tip Use the bucket on the blue fires.
Douse the Bookshelf fire |q In Need of a Hero##33813/1 |goto 52.04,32.83
Douse the Floor fire |q In Need of a Hero##33813/2 |goto 52.04,32.83
Douse the Table fire |q In Need of a Hero##33813/3 |goto 52.04,32.83
Get more Draenei Buckets at [Shadowmoon Valley D 51.8,32.5]
step
talk Ariaana##71502
turnin In Need of a Hero##33813 |goto 52.04,32.68
Save Ariaana |q Think of the Children!##33070/3 |goto 52.04,32.68
step
talk Rastaak##64224
Save Rastaak |q Think of the Children!##33070/2 |goto 51.94,35.99
step "voidmancers"
kill Shadowmoon Voidmancer##80162+
Slay 8 Shadowmoon Voidmancers |q Dark Enemies##33765/1 |goto 52.48,34.20
step
_Swim_ across and go up the hill |goto Shadowmoon Valley D 47.6,35.8 < 20
_Continue_ running up the hill and to the left |goto 47.5,39.7 < 20
talk Prophet Velen##74043
turnin Dark Enemies##33765 |goto 49.12,38.51
turnin Think of the Children!##33070 |goto 49.12,38.51
turnin Closing the Door##33905 |goto 49.12,38.51
accept Shadows Awaken##34019 |goto 49.12,38.51
step
Confront Ner'zhul |q Shadows Awaken##34019/1
kill Karnoth##75043 |q Shadows Awaken##34019/2 |goto 49.43,36.87 |tip He will drop an item for each crafting profession you have that will start a quest for that profession.  Gathering and Secondary professions do not get a quest item.  You will do the quest(s) for your item(s) later in the guide.
step
talk Prophet Velen##74043
turnin Shadows Awaken##34019 |goto 49.30,37.40
accept Into Twilight##33072 |goto 49.30,37.40
step
talk Prophet Velen##79043
turnin Into Twilight##33072 |goto Shadowmoon Valley D 40.54,54.92
accept The Clarity Elixir##33076 |goto Shadowmoon Valley D 40.53,54.89
step
talk Rangari Veka##73425
accept Going Undercover##33080 |goto 40.58,54.84
step
talk Sylene##73106
Tell her _"I need a Shadowmoon orc illusion."_
Obtain an orc disguise from Sylene |q Going Undercover##33080/1 |goto 40.65,54.61
step
click Pristine Star Lily## |tip It's a large white flower inside a tree.
get 1 Pristine Star Lily |q The Clarity Elixir##33076/3 |goto 47.33,52.09
step
kill Echidnian Hydra##79020+
get 3 Engorged Heart |q The Clarity Elixir##33076/2 |goto 45.26,50.96
kill Frenzied Swamplighter##75471+
get 6 Swamplighter Dust |q The Clarity Elixir##33076/1 |goto 45.26,50.96
step
_Follow_ the trail up through the cliffs |goto Shadowmoon Valley D 39.3,53.7 < 20
_Follow_ the path to the right |goto Shadowmoon Valley D 38.0,55.3 < 20
_Continue_ over the bridge |goto 37.2,52.4 < 20
talk Prophet Velen##79043
turnin The Clarity Elixir##33076 |goto 35.27,49.12
accept The Fate of Karabor##33059 |goto 35.27,49.12
step
use Clarity Elixir##111591
Drink the Clarity Elixir |q The Fate of Karabor##33059/1 |goto 35.28,49.12
step
Enter the Scenario |goto Shadowmoon Valley D 79.0,46.6 < 20 |c |q 33059
step
Follow Prophet Velen |scenariogoal 24541 |goto Shadowmoon Valley D 79.9,46.6
scenariostage 1
step
kill Krull##77767 |scenariogoal 24539 |goto Shadowmoon Valley D 80.0,46.6
scenariostage 2
step
Witness Commander Vorka's Arrival |scenariogoal 24542
scenariostage 3
step
talk Prophet Velen##79522
Tell him _"Prophet, we're being overrun!"_
Speak to Velen on the Karabor Stairs |scenariogoal 24543 |goto Shadowmoon Valley D 79.2,46.6
scenariostage 4
step
Watch the dialogue
Witness the fate of Karabor |q The Fate of Karabor##33059/2 |goto Shadowmoon Valley D 79.2,46.6
step
_Follow_ the path back down |goto Shadowmoon Valley D 37.5,54.5 < 20
talk Prophet Velen##79043
turnin The Fate of Karabor##33059 |goto Shadowmoon Valley D 40.52,54.91
step
_Enter_ Shaz'gul through the wooden gates |goto Shadowmoon Valley D 38.6,60.5 < 20
Use Sylene's Amulet of Illusion in your bags |use Sylene's Amulet of Illusion##107076 |tip Use this if you lose your disguise.  Also, Void Wolves can see through your disguise, so be careful around them.
Gain the _Shadowmoon Orc Disguise_ |havebuff Interface\Icons\achievement_character_orc_male |q 33080 |tip You will only complete this goal if you're a male character. |or
Gain the _Shadowmoon Orc Disguise_ |havebuff Interface\Icons\Achievement_Character_Orc_Female |q 33080 |tip You will only complete this goal if you're a female character. |or
clicknpc Explosives##74811 |tip It looks like a yellow bomb with bumps all over it, sitting on the ground.
Plant Explosives at the Supply Hut |q Going Undercover##33080/2 |goto Shadowmoon Valley D 37.17,59.25
step
_Enter_ the building |goto Shadowmoon Valley D 36.7,61.3 < 10
Use Sylene's Amulet of Illusion in your bags |use Sylene's Amulet of Illusion##107076 |tip Use this if you lose your disguise.  Also, Void Wolves can see through your disguise, so be careful around them.
Gain the _Shadowmoon Orc Disguise_ |havebuff Interface\Icons\achievement_character_orc_male |q 33080 |tip You will only complete this goal if you're a male character. |or
Gain the _Shadowmoon Orc Disguise_ |havebuff Interface\Icons\Achievement_Character_Orc_Female |q 33080 |tip You will only complete this goal if you're a female character. |or
clicknpc Explosives##74811 |tip It looks like a yellow bomb with bumps all over it, sitting on the ground.
Plant Explosives at the Main Lodge |q Going Undercover##33080/3 |goto Shadowmoon Valley D 36.37,61.44
step
Use Sylene's Amulet of Illusion in your bags |use Sylene's Amulet of Illusion##107076 |tip Use this if you lose your disguise.  Also, Void Wolves can see through your disguise, so be careful around them.
Gain the _Shadowmoon Orc Disguise_ |havebuff Interface\Icons\achievement_character_orc_male |q 33080 |tip You will only complete this goal if you're a male character. |or
Gain the _Shadowmoon Orc Disguise_ |havebuff Interface\Icons\Achievement_Character_Orc_Female |q 33080 |tip You will only complete this goal if you're a female character. |or
_Head_ through the gates to the Chieftains' seat |goto Shadowmoon Valley D 37.8,62.6 < 20
clicknpc Explosives##74811 |tip It looks like a yellow bomb with bumps all over it, sitting on the ground behind a huge stone.
Plant Explosives at the Chieftain's Seat |q Going Undercover##33080/4 |goto Shadowmoon Valley D 39.1,62.9
step
Use Sylene's Amulet of Illusion in your bags |use Sylene's Amulet of Illusion##107076 |tip Use this if you lose your disguise.  Also, Void Wolves can see through your disguise, so be careful around them.
Gain the _Shadowmoon Orc Disguise_ |havebuff Interface\Icons\achievement_character_orc_male |q 33080 |tip You will only complete this goal if you're a male character. |or
Gain the _Shadowmoon Orc Disguise_ |havebuff Interface\Icons\Achievement_Character_Orc_Female |q 33080 |tip You will only complete this goal if you're a female character. |or
clicknpc Explosives##74811 |tip It looks like a yellow bomb with bumps all over it, sitting on the ground.
Plant Explosives at the Training Pit |q Going Undercover##33080/5 |goto Shadowmoon Valley D 36.5,65.5
step
talk Yrel##74877
turnin Going Undercover##33080 |goto 34.22,63.24
accept Escape From Shaz'gul##33081 |goto 34.22,63.24
step
talk Yrel##74877
Choose any of the dialogue options
Inspire Yrel |q Escape From Shaz'gul##33081/1 |goto 34.22,63.24
Watch the dialogue and wait for Yrel to start running
Follow and protect her as she runs
Escape Shaz'gul with Yrel |q Escape From Shaz'gul##33081/2
step
talk Yrel##74877
turnin Escape From Shaz'gul##33081 |goto 40.60,54.97
step
talk Scout Valdez##81152
accept Fast Expansion##33814 |goto 40.65,54.88
step
#include "A_Garrison_BAlexston"
turnin Fast Expansion##33814
accept Bigger is Better##36592
step "Resource"
In order to upgrade your garrison to level 2, you must save up 200 garrison resources. Be sure not to spend any.
earn 200 Garrison Resources##824
step
#include "A_Garrison_ArchitectTable"
Click on your Town Hall and click _Upgrade_ |condition garrisonlvl(2)
step
#include "A_Garrison_BAlexston"
turnin Bigger is Better##36592
step
label "Level3"
In order to upgrade your garrison to level 3, you must be level 100.
Reach level 100 |ding 100 |next "Start2"
step
label "Start2"
#include "A_Garrison_BAlexston"
accept My Very Own Castle##36615
step
You must collect 2,000 Garrison Resources to upgrade your garrison to level 3
Gather 2,000 Garrison Resources |q My Very Own Castle##36615/1
step
#include "A_Garrison_ArchitectTable"
Click on your Town Hall and click _Upgrade_ |condition garrisonlvl(3)
step
#include "A_Garrison_BAlexston"
turnin My Very Own Castle##36615
step
label "GarrisonMax"
Your garrison is level 3!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Garrison Building Guide",[[
description This guide will walk you through the creation and introductory quests for each Garrison building.
step
label "BuildMenu"
Select a building type to begin:
Small Buildings |next "SmallBuilding" |confirm
Medium Buildings |next "MedBuilding" |confirm
Large Buildings |next "LargeBuilding" |confirm
Default Buildings |next "DefaultBuilding" |confirm
step
label "SmallBuilding"
Select a building to begin:
Alchemy Lab |next "Alchemy" |confirm
Enchanter's Study |next "EnchStudy" |confirm
Engineering Works |next "EngWorks" |confirm
The Forge |next "TheForge" |confirm
Gem Boutique |next "GemBoutique" |confirm
Salvage Yard |next "SalvYard" |confirm
Scribe's Quarters |next "ScribeQuarter" |confirm
The Storehouse |next "Storehouse" |confirm
Tailoring Emporium |next "TailoringEmp" |confirm
The Tannery |next "Tannery" |confirm
step
label "MedBuilding"
Select a building to begin: |only if not garrisonlvl(1)
The Barn |next "Barn" |confirm |only if not garrisonlvl(1)
Lunarfall Inn |next "LunarInn" |confirm |only if not garrisonlvl(1)
Gladiator's Sanctum |next "GladSanc" |confirm |only if not garrisonlvl(1)
Lumber Mill |next "LumberMill" |confirm |only if not garrisonlvl(1)
Trading Post |next "TradePost" |confirm |only if not garrisonlvl(1)
You must have at least a level 2 garrison to proceed |only if garrisonlvl(1)
Click here to proceed to the garrison leveling guide |next "Level" |confirm |only if garrisonlvl(1)
Click here to return to the building menu |next "BuildMenu" |confirm |only if garrisonlvl(1)
step
label "LargeBuilding"
Select a building to begin:
Barracks |next "Barracks" |confirm
Gnomish Gearworks |next "Gearworks" |confirm
Mage Tower |next "MageTower" |confirm
Stables |next "Stables" |confirm
Dwarven Bunker |next "DwBunker" |confirm
step
label "DefaultBuilding"
Select a building to begin: |only if not garrisonlvl(1)
Fishing Shack |next "FishShack" |confirm |only if not garrisonlvl(1)
Lunarfall Excavation |next "Excavation" |confirm |only if not garrisonlvl(1)
Herb Garden |next "HerbGarden" |confirm |only if not garrisonlvl(1)
Menagerie |next "Menagerie" |confirm |only if not garrisonlvl(1)
You must have at least a level 2 garrison to proceed |only if garrisonlvl(1)
Click here to proceed to the garrison leveling guide |next "Level" |confirm |only if garrisonlvl(1)
Click here to return to the building menu |next "BuildMenu" |confirm |only if garrisonlvl(1)
step
label "Alchemy"
Redirecting to Alchemy Lab, Level 1 |next "Alchemy1" |only if default
Redirecting to Alchemy Lab, Level 2 |next "Alchemy2" |only if hasbuilding(76) and completedq(36641)
Redirecting to Alchemy Lab, Level 3 |next "Alchemy3" |only if hasbuilding(119) and completedq(36641)
Redirecting to Alchemy Lab end |next "Alchemy_End" |only if hasbuilding(120)
step
label "Alchemy1"
#include "A_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create an _Alchemy Lab_ in the an empty small plot |condition hasbuilding(76,1)
step
Finalize the Alchemy Lab construction
#include "A_Garrison_SmallBuilding"
talk Mary Kearie##77363
accept Your First Alchemy Work Order##36641
step
Getting started:
#include "auctioneer_stormshield"
Buy 5 Frostweed from the Auction House
_Or_
If you have Herbalism, _go here_ and gather 5 Frostweed |goto Shadowmoon Valley D/0 30.0,30.0
collect 5 Frostweed##109124
|only if not completedq(36641)
step
#include "A_Garrison_SmallBuilding"
talk Peter Kearie##77791
Tell him _"I would like to place a work order"_
Click _Start Work Order_
Alchemy Work Order Started |q Your First Alchemy Work Order##36641/1
step
#include "A_Garrison_SmallBuilding"
click Alchemy Work Order
Alchemy Work Order Collected |q Your First Alchemy Work Order##36641/2
step
#include "A_Garrison_SmallBuilding"
talk Peter Kearie##77791
turnin Your First Alchemy Work Order##36641
stickystart "AlchUp"
step
label "Alchemy2"
Reach level 96 |ding 96 |or
_Or_
Complete the Talador outpost questline |condition completedq(34981) or completedq(34711) |or
|next "AlchB2"
step "AlchUp"
You can now upgrade your Alchemy Lab to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 96_ or have _completed the Talador Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "AlchB2"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Alchemy Lab, Level 2##111929
|only if hasbuilding(76,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Alchemy Lab, Level 2##111929
Click on your Alchemy Lab and click _Upgrade_ |condition hasbuilding(119,2)
stickystart "AlchLvl3"
step
label "Alchemy3"
#include "A_Garrison_SmallBuilding"
Speak with your assistant and complete 250 Work Orders |achieve 9406
step "AlchLvl3"
In order to get the blueprint for all level 3 crafting profession buildings, you must complete the _Working More Orders_ achievement
This requires you to complete 250 Work Orders
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Alchemy Lab, Level 3##111930
|only if not hasbuilding(120,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Alchemy Lab, Level 3##111930
Click on your Alchemy Lab and click _Upgrade_ |condition hasbuilding(120,3)
step
label "Alchemy_End"
You already have a level 3 Alchemy Lab!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "EnchStudy"
Redirecting to Enchanter's Study, Level 1 |next "EnchStudy1" |only if default
Redirecting to Enchanter's Study, Level 2 |next "EnchStudy2" |only if hasbuilding(93) and completedq(36645)
Redirecting to Enchanter's Study, Level 3 |next "EnchStudy3" |only if hasbuilding(125) and completedq(36645)
Redirecting to Enchanter's Study end |next "EnchStudy_End" |only if hasbuilding(126)
step
label "EnchStudy1"
#include "A_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create an _Enchanter's Study_ in the an empty small plot |condition hasbuilding(93,1)
step
Finalize the Enchanter's Study construction
#include "A_Garrison_SmallBuilding"
talk Ayada the White##77354
accept Your First Enchanting Work Order##36645
step
Getting started:
#include "auctioneer_stormshield"
Buy 5 Draenic Dust from the Auction House
_Or_
If you have Enchanting, _go here_ and kill orcs. Disenchant the greens into 5 Draenic Dust |goto Shadowmoon Valley D/0 21.5,29.7
collect 5 Draenic Dust##109693
|only if not completedq(36645)
step
#include "A_Garrison_SmallBuilding"
talk Garm##77781
Tell him _"I would like to place a work order"_
Click _Start Work Order_
Enchanting Work Order Started |q Your First Enchanting Work Order##36645/1
step
#include "A_Garrison_SmallBuilding"
click Enchanting Work Order
Enchanting Work Order Collected |q Your First Enchanting Work Order##36645/2
step
#include "A_Garrison_SmallBuilding"
talk Garm##77781
turnin Your First Enchanting Work Order##36645
stickystart "EnchUp"
step
label "EnchStudy2"
Reach level 96 |ding 96 |or
_Or_
Complete the Talador outpost questline |condition completedq(34981) or completedq(34711) |or
|next "EnchB2"
step "EnchUp"
You can now upgrade your Enchanter's Study to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 96_ or have _completed the Talador Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "EnchB2"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Enchanter's Study, Level 2##111972
|only if hasbuilding(93,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Enchanter's Study, Level 2##111972
Click on your Enchanter's Study and click _Upgrade_ |condition hasbuilding(125,2)
stickystart "EnchLvl3"
step
label "EnchStudy3"
#include "A_Garrison_SmallBuilding"
Speak with your assistant and complete 250 Work Orders |achieve 9406 |next "EnchB3"
step "EnchLvl3"
In order to get the blueprint for all level 3 crafting profession buildings, you must complete the _Working More Orders_ achievement
This requires you to complete 250 Work Orders
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "EnchB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Enchanter's Study, Level 3##111973
|only if not hasbuilding(126,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Enchanter's Study, Level 3##111973
Click on your Enchanter's Study and click _Upgrade_ |condition hasbuilding(126,3)
step
label "EnchStudy_End"
You already have a level 3 Enchanter's Study!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "EngWorks"
Redirecting to Engineering Works, Level 1 |next "EngWorks1" |only if default
Redirecting to Engineering Works, Level 2 |next "EngWorks2" |only if hasbuilding(91) and completedq(36646)
Redirecting to Engineering Works, Level 3 |next "EngWorks3" |only if hasbuilding(123) and completedq(36646)
Redirecting to Engineering Works end |next "EngStudy_End" |only if hasbuilding(124)
step
label "EngWorks1"
#include "A_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create an _Engineering Works_ in the an empty small plot |condition hasbuilding(91,1)
step
Finalize the Engineering Works construction
#include "A_Garrison_SmallBuilding"
talk Zaren Hoffle##77365
accept Your First Engineering Work Order##36646
step
Getting started:
#include "auctioneer_stormshield"
Buy 2 Blackrock Ore and 2 True Iron Ore from the Auction House
_Or_
If you have Mining, _go here_ and gather 2 Blackrock Ore and 2 True Iron Ore |goto Shadowmoon Valley D/0 30.0,30.0
collect 2 True Iron Ore##109119
collect 2 Blackrock Ore##109118
|only if not completedq(36641)
step
#include "A_Garrison_SmallBuilding"
talk Helayn Whent##77831
Tell her _"I would like to place a work order"_
Click _Start Work Order_
Engineering Work Order Started |q Your First Engineering Work Order##36646/1
step
#include "A_Garrison_SmallBuilding"
click Engineering Work Order
Engineering Work Order Collected |q Your First Engineering Work Order##36646/2
step
#include "A_Garrison_SmallBuilding"
talk Helayn Whent##77831
turnin Your First Engineering Work Order##36646
stickystart "EngUp"
step
label "EngWorks2"
Reach level 96 |ding 96 |or
_Or_
Complete the Talador outpost questline |condition completedq(34981) or completedq(34711) |or
|next "EngB2"
step "EngUp"
You can now upgrade your Engineering Works to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 96_ or have _completed the Talador Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "EngB2"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Engineering Works, Level 2##109256
|only if hasbuilding(91,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Engineering Works, Level 2##109256
Click on your Engineering Works and click _Upgrade_ |condition hasbuilding(123,2)
stickystart "EngLvl3"
step
label "EngWorks3"
#include "A_Garrison_SmallBuilding"
Speak with your assistant and complete 250 Work Orders |achieve 9406 |next "EngB3"
step "EngLvl3"
In order to get the blueprint for all level 3 crafting profession buildings, you must complete the _Working More Orders_ achievement
This requires you to complete 250 Work Orders
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "EngB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Engineering Works, Level 3##109257
|only if not hasbuilding(124,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Engineering Works, Level 3##109257
Click on your Engineering Works and click _Upgrade_ |condition hasbuilding(124,3)
step
label "EngWorks_End"
You already have a level 3 Engineering Works!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "TheForge"
Redirecting to The Forge, Level 1 |next "TheForge1" |only if default
Redirecting to The Forge, Level 2 |next "TheForge2" |only if hasbuilding(60) and completedq(35168)
Redirecting to The Forge, Level 3 |next "TheForge3" |only if hasbuilding(117) and completedq(35168)
Redirecting to The Forge end |next "TheForge_End" |only if hasbuilding(118)
step
label "TheForge1"
#include "A_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create _The Forge_ in the an empty small plot |condition hasbuilding(60,1)
step
Finalize The Forge construction
#include "A_Garrison_SmallBuilding"
talk Auria Irondreamer##77359
accept Your First Blacksmithing Work Order##35168
step
Getting started:
#include "auctioneer_stormshield"
Buy 5 True Iron Ore from the Auction House
_Or_
If you have Mining, _go here_ and gather 5 True Iron Ore |goto Shadowmoon Valley D/0 30.0,30.0
collect 5 True Iron Ore##109119
|only if not completedq(35168)
step
#include "A_Garrison_SmallBuilding"
talk Yulia Samras##77792
Tell her _"I would like to place a work order"_
Click _Start Work Order_
Blacksmithing Work Order started |q Your First Blacksmithing Work Order##35168/1
step
#include "A_Garrison_SmallBuilding"
click Blacksmithing Work Order
Blacksmithing Work Order Collected |q Your First Blacksmithing Work Order##35168/2
step
#include "A_Garrison_SmallBuilding"
talk Yulia Samras##77792
turnin Your First Blacksmithing Work Order##35168
stickystart "ForgeUp"
step
label "TheForge2"
Reach level 96 |ding 96 |or
_Or_
Complete the Talador outpost questline |condition completedq(34981) or completedq(34711) |or
|next "ForgeB2"
step "ForgeUp"
You can now upgrade your Forge to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 96_ or have _completed the Talador Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "ForgeB2"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: The Forge, Level 2##111990
|only if hasbuilding(60,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: The Forge, Level 2##111990
Click on your Forge and click _Upgrade_ |condition hasbuilding(117,2)
stickystart "ForgeLvl3"
step
label "TheForge3"
#include "A_Garrison_SmallBuilding"
Speak with your assistant and complete 250 Work Orders |achieve 9406 |next "ForgeB3"
step "ForgeLvl3"
In order to get the blueprint for all level 3 crafting profession buildings, you must complete the _Working More Orders_ achievement
This requires you to complete 250 Work Orders
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "ForgeB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: The Forge, Level 3##111991
|only if not hasbuilding(118,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: The Forge, Level 3##111991
Click on your Forge and click _Upgrade_ |condition hasbuilding(118,3)
step
label "TheForge_End"
You already have a level 3 Forge!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "GemBoutique"
Redirecting to Gem Boutique, Level 1 |next "GemBoutique1" |only if default
Redirecting to Gem Boutique, Level 2 |next "GemBoutique2" |only if hasbuilding(96) and completedq(36644)
Redirecting to Gem Boutique, Level 3 |next "GemBoutique3" |only if hasbuilding(131) and completedq(36644)
Redirecting to Gem Boutique end |next "GemBoutique_End" |only if hasbuilding(132)
step
label "GemBoutique1"
#include "A_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create the _Gem Boutique_ in the an empty small plot |condition hasbuilding(96,1)
step
Finalize the Gem Boutique construction
#include "A_Garrison_SmallBuilding"
talk Costan Highwall##77356
accept Your First Jewelcrafting Work Order##36644
step
Getting started:
#include "auctioneer_stormshield"
Buy 5 Blackrock Ore from the Auction House
_Or_
If you have Mining, _go here_ and gather 5 Blackrock Ore |goto Shadowmoon Valley D/0 30.0,30.0
collect 5 Blackrock Ore##109118
|only if not completedq(36644)
step
#include "A_Garrison_SmallBuilding"
talk Kaya Solasen##77775
Tell her _"I would like to place a Work Order"_
Click _Start Work Order_
Jewelcrafting Work Order started |q Your First Jewelcrafting Work Order##36644/1
step
#include "A_Garrison_SmallBuilding"
Click Jewelcrafting Work Order
Jewelcrafting Work Order collected |q Your First Jewelcrafting Work Order##36644/2
step
#include "A_Garrison_SmallBuilding"
talk Kaya Solasen##77775
turnin Your First Jewelcrafting Work Order##36644
stickystart "GemUp"
step
label "GemBoutique2"
Reach level 96 |ding 96 |or
_Or_
Complete the Talador outpost questline |condition completedq(34981) or completedq(34711) |or
|next "GemB2"
step "GemUp"
You can now upgrade your Gem Boutique to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 96_ or have _completed the Talador Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "GemB2"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Gem Boutique, Level 2##111974
|only if hasbuilding(96,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Gem Boutique, Level 2##111974
Click on your Gem Boutique and click _Upgrade_ |condition hasbuilding(131,2)
stickystart "GemLvl3"
step
label "GemBoutique3"
#include "A_Garrison_SmallBuilding"
Speak with your assistant and complete 250 Work Orders |achieve 9406 |next "GemB3"
step "GemLvl3"
In order to get the blueprint for all level 3 crafting profession buildings, you must be level 100 and complete the _Working More Orders_ achievement
This requires you to complete 250 Work Orders
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "GemB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Gem Boutique, Level 3##111975
|only if not hasbuilding(132,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Gem Boutique, Level 3##111975
Click on your Forge and click _Upgrade_ |condition hasbuilding(132,3)
step
label "GemBoutique_End"
You already have a level 3 Gem Boutique!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "SalvYard"
Redirecting to Salvage Yard, Level 1 |next "SalvYard1" |only if default
Redirecting to Salvage Yard, Level 2 |next "SalvYard2" |only if hasbuilding(52)
Redirecting to Salvage Yard, Level 3 |next "SalvYard3" |only if hasbuilding(140)
Redirecting to Salvage Yard end |next "SalvYard_End" |only if hasbuilding(141)
step
label "SalvYard1"
#include "A_Garrison_Tilnia"
accept Pinchwhistle Gearworks##36861 |or |next "pinch1"
accept Pinchwhistle Gearworks##35619 |or |next "pinch2" |tip You must be at least level 96 to accept this quest.
step
label "pinch1"
#include "A_Garrison_DLongdrink"
Tell him _"Take me to the Spires of Arak."_
Travel to Pinchwhislte Gearworks |q Pinchwhistle Gearworks##36861/1
step
talk Kimzee Pinchwhistle##81109
turnin Pinchwhistle Gearworks##36861 |goto Spires of Arak/0 61.48,72.91
|next "pinchend"
step
label "pinch2"
#include "A_Garrison_DLongdrink"
Tell him _"Take me to the Spires of Arak."_
Travel to Pinchwhislte Gearworks |q Pinchwhistle Gearworks##35619/1
step
talk Kimzee Pinchwhistle##81109
turnin Pinchwhistle Gearworks##35619 |goto Spires of Arak/0 61.48,72.91
|next "pinchend"
step
label "pinchend"
talk Kimzee Pinchwhistle##81109
accept Defungination##35077 |goto Spires of Arak/0 61.48,72.91
step
talk Engineer Gazwitz##81128
accept Spore-be-Gone##35079 |goto Spires of Arak 61.4,72.8
step
talk Exterminator Lemmy##85062
accept Unwanted Pests##36179 |goto Spires of Arak 62.4,73.8
step
All around this area:
use QR58 Flame Blaster##112683
Spore Pustules Burned |q Defungination##35077/1 |goto Spires of Arak 63.0,76.6
click Spore-be-Gone Turret##81135
Turret Activated |q Spore-be-Gone##35079/1 |goto Spires of Arak 63.0,76.6
kill Spore Drifter##81138+, Fungal Hulk##82243+
Spore Creatures Slain |q Unwanted Pests##36179/1 |goto Spires of Arak 63.0,76.6
step
talk Engineer Gazwitz##81128
turnin Spore-be-Gone##35079 |goto Spires of Arak 61.4,72.8
turnin Unwanted Pests##36179 |goto Spires of Arak 61.4,72.8
step
talk Kimzee Pinchwhistle##81109
turnin Defungination##35077 |goto Spires of Arak/0 61.48,72.91
accept The Mother Lode##35080 |goto Spires of Arak/0 61.48,72.91
step
talk Kimzee Pinchwhistle##81109
turnin The Mother Lode##35080 |goto Spires of Arak 59.0,79.2
accept Getting the Crew Back Together##35082 |goto Spires of Arak 59.0,79.2
step
click Injured Crewman##89209
Injured Crewman revived |q Getting the Crew Back Together##35082/1 |goto Spires of Arak 60.8,82.6
step
talk Engineer Gazwitz##81784
accept Clearing Out Before Cleaning Up##35081 |goto Spires of Arak 59.0,79.2
step
kill Crimsonwing Wasp##81168+
Crimsonwing Wasps slain |q Clearing Out Before Cleaning Up##35081/1 |goto Spires of Arak 60.8,84.6
step
talk Engineer Gazwitz##81784
turnin Clearing Out Before Cleaning Up##35081 |goto Spires of Arak 59.0,79.2
accept Follow that Hotrod!##35285 |goto Spires of Arak 59.0,79.2
step
talk Kimzee Pinchwhistle##81972
turnin Follow that Hotrod!##35285 |goto Spires of Arak 58.4,92.2
accept The Right Parts for the Job##35090 |goto Spires of Arak 58.4,92.2
accept Skimming Off The Top##35089 |goto Spires of Arak 58.4,92.2
step
Use the Buster Rocket near Broken Shredders |use G-14 Buster Rocket##112698
click Serviceable Gear##231811
Serviceable Gear |q The Right Parts for the Job##35090/1 |goto Spires of Arak 59.4,89.9
kill Volatile Sludge##81524+
Volatile Oil |q Skimming Off The Top##35089/1 |goto Spires of Arak 58.4,88.4
step
talk Kimzee Pinchwhistle##81972
turnin The Right Parts for the Job##35090 |goto Spires of Arak 58.8,92.8
turnin Skimming Off The Top##35089 |goto Spires of Arak 58.8,92.8
accept Sporicide##35091 |goto Spires of Arak 58.8,92.8
step
talk Krixel Pinchwhistle##81443
accept Field Trial##36384 |goto Spires of Arak 58.4,92.2
step
click Infected Lumberjack##81183
Use the Serum on an Infected Goblin |use Vial of Untested Serum##115475
Serum Tested |q Field Trial##36384/1 |goto Spires of Arak 58.8,88.2
step
talk Krixel Pinchwhistle##81443
turnin Field Trial##36384 |goto Spires of Arak 58.4,92.2
step
kill Spore Shambler##82265+
Spore Shambler slain |q Sporicide##35091/1 |goto Spires of Arak 54.8,89.2
step
talk Kimzee Pinchwhistle##81972
turnin Sporicide##35091 |goto Spires of Arak 58.8,92.8
step
talk Krixel Pinchwhistle##81443
accept Preventing the Worst##35211 |goto Spires of Arak 58.4,92.2
accept Curing With Force##36428 |goto Spires of Arak 58.4,92.2
step
kill Infected Goblin##85421+, Infected Bruiser##81184 |tip Weaken them, do not kill them completely.
Use the Serum once the Goblins are weakened |use Vial of Refined Serum##115533
Infected Goblins Cured |q Curing With Force##36428/1 |goto Spires of Arak 56.5,91.5
click Firebomb##81632 |tip These are often found inside the buildings in this area.
Firebomb Placed |q Preventing the Worst##35211/1 |goto Spires of Arak 56.5,91.5
step
talk Krixel Pinchwhistle##81443
turnin Preventing the Worst##35211 |goto Spires of Arak 58.4,92.2
turnin Curing With Force##36428 |goto Spires of Arak 58.4,92.2
accept Flame On##35298 |goto Spires of Arak 58.4,92.2
step
click Firebomb Plunger##231910
Plunger Activated |q Flame On##35298/1 |goto Spires of Arak 58.4,92.2
click Repaired Flying Machine##81567
Ride on Kimzee's Flying Machine |q Flame On##35298/2 |goto Spires of Arak 58.8,92.8
step
talk Kimzee Pinchwhistle##82468
turnin Flame On##35298 |goto Spires of Arak 61.6,72.8
step
use Garrison Blueprint: Salvage Yard, Level 1##111957
#include "A_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create a _Salvage Yard_ in the an empty small plot |condition hasbuilding(52,1)
stickystart "SalvUp"
step
label "SalvYard2"
Finalize the Salvage Yard construction
Reach level 96 |ding 96 |or
_Or_
Complete the Talador outpost questline |condition completedq(34981) or completedq(34711) |or
|next "SalvB2"
step "SalvUp"
You can now upgrade your Salvage Yard to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 96_ or have _completed the Talador Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "SalvB2"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Salvage Yard, Level 2##111976
|only if hasbuilding(52,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Salvage Yard, Level 2##111976
Click on your Salvage Yard and click _Upgrade_ |condition hasbuilding(140,2)
stickystart "SalvB3"
step
label "SalvYard3"
#includes "A_Garrison_CommandTable"
Open 100 pieces of salvage |achieve 9468
next "Salv_B3"
step "SalvB3"
In order to get the blueprint for the level 3 Salvage Yard building, you must be level 100 and complete the _Salvaging Pays Off_ achievement
This requires you to open 100 pieces of salvage from garrison missions
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "Salv_B3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Salvage Yard, Level 3##111977
|only if not hasbuilding(141,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Salvage Yard, Level 3##111977
Click on your Salvage Yard and click _Upgrade_ |condition hasbuilding(141,3)
step
label "SalvYard_End"
You already have a level 3 Salvage Yard!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "ScribeQuarter"
Redirecting to Scribe's Quarters, Level 1 |next "ScribeQuarter1" |only if default
Redirecting to Scribe's Quarters, Level 2 |next "ScribeQuarter2" |only if hasbuilding(95) and completedq(36647)
Redirecting to Scribe's Quarters, Level 3 |next "ScribeQuarter3" |only if hasbuilding(129) and completedq(36647)
Redirecting to Scribe's Quarters end |next "ScribeQuarter_End" |only if hasbuilding(130)
step
label "ScribeQuarter1"
#include "A_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create the _Scribe's Quarters_ in the an empty small plot |condition hasbuilding(95,1)
step
Finalize the Scribe's Quarters construction
#include "A_Garrison_SmallBuilding"
talk Eric Broadoak##77372
accept Your First Inscription Work Order##36647
step
Getting started:
#include "auctioneer_stormshield"
Buy 2 Cerulean Pigments from the Auction House
_Or_
If you have Herbalism, _go here_ and collect herbs to mill them into 2 Cerulean Pigments |goto Shadowmoon Valley D/0 30.0,30.0
collect 2 Cerulean Pigment##114931
|only if not completedq(36647)
step
#include "A_Garrison_SmallBuilding"
talk Kurt Broadoak##77777
Tell him _"I would like to place a work order"_
Click _Start Work Order_
Inscription Work Order started |q Your First Inscription Work Order##36647/1
step
#include "A_Garrison_SmallBuilding"
click Inscription Work Order
Inscription Work Order collected |q Your First Inscription Work Order##36647/2
step
#include "A_Garrison_SmallBuilding"
talk Kurt Broadoak##77777
turnin Your First Inscription Work Order##36647
stickystart "ScribeUp"
step
label "ScribeQuarter2"
Reach level 96 |ding 96 |or
_Or_
Complete the Talador outpost questline |condition completedq(34981) or completedq(34711) |or
|next "ScribeB2"
step "ScribeUp"
You can now upgrade your Scribe's Quarters to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 96_ or have _completed the Talador Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "ScribeB2"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Scribe's Quarters, Level 2##111978
|only if hasbuilding(95,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Scribe's Quarters, Level 2##111978
Click on your Scribe's Quarters and click _Upgrade_ |condition hasbuilding(129,2)
stickystart "ScribeLvl3"
step
label "ScribeQuarter3"
#include "A_Garrison_SmallBuilding"
Speak with your assistant and complete 250 Work Orders |achieve 9406 |next "ScribeB3"
step "ScribeLvl3"
In order to get the blueprint for all level 3 crafting profession buildings, you must be level 100 and complete the _Working More Orders_ achievement
This requires you to complete 250 Work Orders
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "ScribeB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Scribe's Quarters, Level 3##111979
|only if not hasbuilding(130,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Scribe's Quarters, Level 3##111979
Click on your Scribe's Quarters and click _Upgrade_ |condition hasbuilding(130,3)
step
label "ScribeQuarter_End"
You already have a level 3 Scribe's Quarters!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "Storehouse"
Redirecting to Storehouse, Level 1 |next "Storehouse1" |only if default
Redirecting to Storehouse, Level 2 |next "Storehouse2" |only if hasbuilding(51)
Redirecting to Storehouse, Level 3 |next "Storehouse3" |only if hasbuilding(142)
Redirecting to Storehouse end |next "Storehouse_End" |only if hasbuilding(143)
step
label "Storehouse1"
#include "A_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create a _Storehouse_ in the an empty small plot |condition hasbuilding(51,1)
step
Finalize the Storehouse construction
talk Kyra Goldhands##84857
accept Lost in Transition##37087 |goto Lunarfall/0 49.3,62.5
step
click Crate of Surplus Material##6478 |tip These are found all over your garrison.
collect Crate of Surplus Materials##118417 |n
Gather 5 Crates of Surplus Materials |q Lost in Transition##37087/1 |goto 47.55,66.17
step
talk Kyra Goldhands##84857
turnin Lost in Transition##37087 |goto Lunarfall/0 49.3,62.5
stickystart "StoreUp"
step
label "Storehouse2"
Reach level 96 |ding 96 |or
_Or_
Complete the Talador outpost questline |condition completedq(34981) or completedq(34711) |or
|next "StoreB2"
step "StoreUp"
You can now upgrade your Storehouse to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 96_ or have _completed the Talador Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "StoreB2"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Storehouse, Level 2##111982
|only if hasbuilding(51,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Storehouse, Level 2##111982
Click on your Storehouse and click _Upgrade_ |condition hasbuilding(142,2)
stickystart "StoreLvl3"
step
label "Storehouse3"
Loot 10,000 gold in Draenor |achieve 9487 |next "StoreB3"
step "StoreLvl3"
In order to get the blueprint for the Storehouse level 3 building, you must be level 100 and complete the _Got My Mind on My Draenor Money_ achievement
This requires you to loot 10,000 gold in Draenor
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "StoreB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Storehouse, Level 3##111983
|only if not hasbuilding(143,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Storehouse, Level 3##111983
Click on your Storehouse and click _Upgrade_ |condition hasbuilding(143,3)
step
label "Storehouse_End"
You already have a level 3 Storehouse!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "TailoringEmp"
Redirecting to Tailoring Emporium, Level 1 |next "TailoringEmp1" |only if default
Redirecting to Tailoring Emporium, Level 2 |next "TailoringEmp2" |only if hasbuilding(94) and completedq(36643)
Redirecting to Tailoring Emporium, Level 3 |next "TailoringEmp3" |only if hasbuilding(127) and completedq(36643)
Redirecting to Tailoring Emporium end |next "TailoringEmp_End" |only if hasbuilding(128)
step
label "TailoringEmp1"
#include "A_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create a _Tailoring Emporium_ in the an empty small plot |condition hasbuilding(94,1)
step
Finalize the Tailoring Emporium construction
#include "A_Garrison_SmallBuilding"
talk Christopher Macdonald##77382
accept Your First Tailoring Work Order##36643
step
Getting started:
#include "auctioneer_stormshield"
Buy 5 Sumptuous Fur from the Auction House
_Or_
_Go here_ and kill beasts for 5 Sumptuous Fur |goto Shadowmoon Valley D/0 35.8,29.1
collect 5 Sumptuous Fur##111557
|only if not completedq(36643)
step
#include "A_Garrison_SmallBuilding"
talk Kaylie Macdonald##77778
Tell her _"I would like to place a work order"_ |goto Lunarfall 50.6,57.8
Click _Start Work Order_
Tailoring Work Order started |q Your First Tailoring Work Order##36643/1
step
#include "A_Garrison_SmallBuilding"
click Tailoring Work Order
Tailoring Work Order collected |q Your First Tailoring Work Order##36643/2
step
#include "A_Garrison_SmallBuilding"
talk Kaylie Macdonald##77778
turnin Your First Tailoring Work Order##36643
stickystart "TailUp"
step
label "TailoringEmp2"
Reach level 96 |ding 96 |or
_Or_
Complete the Talador outpost questline |condition completedq(34981) or completedq(34711) |or
|next "TailB2"
step "TailUp"
You can now upgrade your Tailoring Emporium to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 96_ or have _completed the Talador Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "TailB2"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Tailoring Emporium, Level 2##111992
|only if hasbuilding(94,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Tailoring Emporium, Level 2##111992
Click on your Tailoring Emporium and click _Upgrade_ |condition hasbuilding(127,2)
stickystart "TailLvl3"
step
label "TailoringEmp3"
#include "A_Garrison_SmallBuilding"
Speak with your assistant and complete 250 Work Orders |achieve 9406 |next "TailB3"
step "TailLvl3"
In order to get the blueprint for all level 3 crafting profession buildings, you must be level 100 and complete the _Working More Orders_ achievement
This requires you to complete 250 Work Orders
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "TailB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Tailoring Emporium, Level 3##111993
|only if not hasbuilding(128,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Tailoring Emporium, Level 3##111993
Click on your Tailoring Emporium and click _Upgrade_ |condition hasbuilding(128,3)
step
label "TailoringEmp_End"
You already have a level 3 Tailoring Emporium!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "Tannery"
Redirecting to The Tannery, Level 1 |next "Tannery1" |only if default
Redirecting to The Tannery, Level 2 |next "Tannery2" |only if hasbuilding(90) and completedq(36642)
Redirecting to The Tannery, Level 3 |next "Tannery3" |only if hasbuilding(121) and completedq(36642)
Redirecting to The Tannery end |next "Tannery_End" |only if hasbuilding(122)
step
label "Tannery1"
#include "A_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create _The Tannery_ in the an empty small plot |condition hasbuilding(90,1)
step
Finalize The Tannery construction
#include "A_Garrison_SmallBuilding"
talk Anders Longstitch##77383
accept Your First Leatherworking Work Order##36642
step
Getting started:
#include "auctioneer_stormshield"
Buy 5 Raw Beast Hide from the Auction House
_Or_
If you have Skinning, _go here_ and kill and skin beasts for 5 Raw Beast Hide |goto Shadowmoon Valley D/0 35.8,29.1
collect 5 Raw Beast Hide##110609
|only if not completedq(36642)
step
#include "A_Garrison_SmallBuilding"
talk Marianne Levine##78207
Tell her _"I would like to place a Work Order"_
Click _Start Work Order_
Leatherworking Work Order Started |q Your First Leatherworking Work Order##36642/1
step
#include "A_Garrison_SmallBuilding"
Click Leatherworking Work Order
Leatherworking Work Order Collected |q Your First Leatherworking Work Order##36642/2
step
#include "A_Garrison_SmallBuilding"
talk Marianne Levine##78207
turnin Your First Leatherworking Work Order##36642
stickystart "TanUp"
step
label "Tannery2"
Reach level 96 |ding 96 |or
_Or_
Complete the Talador outpost questline |condition completedq(34981) or completedq(34711) |or
|next "TanB2"
step "TanUp"
You can now upgrade your Tannery to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 96_ or have _completed the Talador Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "TanB2"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: The Tannery, Level 2##111988
|only if hasbuilding(90,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: The Tannery, Level 2##111988
Click on your Tannery and click _Upgrade_ |condition hasbuilding(121,2)
stickystart "TanLvl3"
step
label "Tannery3"
#include "A_Garrison_SmallBuilding"
Speak with your assistant and complete 250 Work Orders |achieve 9406 |next "TanB3"
step "TanLvl3"
In order to get the blueprint for all level 3 crafting profession buildings, you must be level 100 and complete the _Working More Orders_ achievement
This requires you to complete 250 Work Orders
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "TanB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: The Tannery, Level 3##111989
|only if not hasbuilding(122,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: The Tannery, Level 3##111989
Click on your Tannery and click _Upgrade_ |condition hasbuilding(122,3)
step
label "Tannery_End"
You already have a level 3 Tannery!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "Barn"
Redirecting to Barn, Level 1 |next "Barn1" |only if default
Redirecting to Barn, Level 2 |next "Barn2" |only if hasbuilding(24)
Redirecting to Barn, Level 3 |next "Barn3" |only if hasbuilding(25)
Redirecting to Barn end |next "Barn_End" |only if hasbuilding(133)
step
label "Barn1"
#include "A_Garrison_ArchitectTable"
Select the _Medium_ tab at the top, and create the _Barn_ in an empty Medium Plot |condition hasbuilding(24,1)
step
Finalize the Barn construction
#include "A_Garrison_MediumBuilding"
talk Homer Stonefield##84524
accept Breaking into the Trap Game##36271
step
modelnpc Silverpelt Charger##78276
_Go to_ this area, use the Iron Trap and _lure a Silverpelt Charger_ into it
use Iron Trap##113991
Beast Trapped |q Breaking into the Trap Game##36271/1 |goto Shadowmoon Valley D/0 56.05,34.99
step
#include "A_Garrison_MediumBuilding"
talk Homer Stonefield##84524
Tell him _"I would like to place a work order for fur."_
Click _Start Work Order_
Place a Work Order |q Breaking into the Trap Game##36271/2
step
#include "A_Garrison_MediumBuilding"
talk Homer Stonefield##84524
turnin Breaking into the Trap Game##36271
step
label "Barn2"
Proceeding to Barn, Level 2
stickystart "BarnUp"
step
Reach level 98 |ding 98 |or
_Or_
Complete the Spires of Arak Outpost questline |condition completedq(36165) or completedq(35835) |or
|next "BarnB2"
step "BarnUp"
You can now upgrade your Barn to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 98_ or have _completed the Spires of Arak Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "BarnB2"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Barn, Level 2##111968
|only if hasbuilding(24,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Barn, Level 2##111968
Click on your Barn and click _Upgrade_ |condition hasbuilding(25,2)
step
label "Barn3"
Proceeding to Barn, Level 3
stickystart "BarnLvl3"
step
#include "A_Garrison_MediumBuilding"
talk Homer Stonefield##84524
Complete a total of 150 Work Orders |achieve 9565
|next "BarnB3"
step "BarnLvl3"
In order to get the blueprint for the Barn Level 3, you must be level 100 and complete the _Master Trapper_ achievement
This requires you to complete 150 Work Orders at the Barn
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "BarnB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Barn, Level 3##111969
|only if not hasbuilding(133,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Barn, Level 3##111969
Click on your Barn and click _Upgrade_ |condition hasbuilding(133,3)
step
label "Barn_End"
You already have a level 3 Barn!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "LunarInn"
Redirecting to Lunarfall Inn, Level 1 |next "LunarInn1" |only if default
Redirecting to Lunarfall Inn, Level 2 |next "LunarInn2" |only if hasbuilding(34)
Redirecting to Lunarfall Inn, Level 3 |next "LunarInn3" |only if hasbuilding(35)
Redirecting to Lunarfall Inn End |next "LunarInn_End" |only if hasbuilding(36)
step
label "LunarInn1"
#include "A_Garrison_ArchitectTable"
Select the _Medium_ tab at the top, and create the _Lunarfall Inn_ in an empty Medium Plot |condition hasbuilding(34,1)
step
label "LunarInn2"
Proceeding to Lunarfall Inn, Level 2
stickystart "LunarLvl2"
step
Finalize the Lunarfall Inn construction
Reach level 98 |ding 98 |or
_Or_
Complete the Spires of Arak Outpost questline |condition completedq(36165) or completedq(35835) |or
|next "LunarB2"
step "LunarLvl2"
You can now upgrade your Lunarfall Inn to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 98_ or have _completed the Spires of Arak Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "LunarB2"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Lunarfall Inn, Level 2##107694
|only if hasbuilding(34,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Lunarfall Inn, Level 2##107694
Click on your Lunarfall Inn and click _Upgrade_ |condition hasbuilding(35,2)
step
label "LunarInn3"
Proceeding to Lunarfall Inn, Level 3
stickystart "LunarLvl3"
#include "A_Inn_Quests"
step
#include "A_Garrison_MediumBuilding"
Complete all of the Lunarfall Inn quests |achieve 9703
|next "LunarB3"
step "LunarLvl3"
In order to get the blueprint for the Lunarfall Inn Level 3, you must be level 100 and complete the _Stay Awhile and Listen_ achievement
This requires you to complete all of the Lunarfall Inn quests
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "LunarB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Lunarfall Inn, Level 3##109065
|only if not hasbuilding(36,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Lunarfall Inn, Level 3##109065
Click on your Lunarfall Inn and click _Upgrade_ |condition hasbuilding(36,3)
step
label "LunarInn_End"
You already have a level 3 Lunarfall Inn!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "GladSanc"
Redirecting to Gladiator's Sanctum, Level 1 |next "GladSanc1" |only if default
Redirecting to Gladiator's Sanctum, Level 2 |next "GladSanc2" |only if hasbuilding(159)
Redirecting to Gladiator's Sanctum, Level 3 |next "GladSanc3" |only if hasbuilding(160)
Redirecting to Gladiator's Sanctum end |next "GladSanc_End" |only if hasbuilding(161)
step
label "GladSanc1"
#include "A_Garrison_ArchitectTable"
Select the _Medium_ tab at the top, and create the _Gladiator's Sanctum_ in an empty Medium Plot |condition hasbuilding(159,1)
step
Finalize the Gladiator's Sanctum construction
#include "A_Garrison_MediumBuilding"
talk Kuros##86677
accept Warlord of Draenor##36876
step
Fly to Stormshield, Ashran and accept the queue for the PvP battle
Kill enemy players and acquire 50 Broken Bones
Broken Bones |q Warlord of Draenor##36876/1
step
#include "A_Garrison_MediumBuilding"
talk Kuros##86677
turnin Warlord of Draenor##36876
step
label "GladSanc2"
Proceeding to Gladiator's Sanctum, Level 2
stickystart "GladLvl2"
step
Reach level 98 |ding 98 |or
_Or_
Complete the Spires of Arak Outpost questline |condition completedq(36165) or completedq(35835) |or
|next "GladB2"
step "GladLvl2"
You can now upgrade your Gladiator's Sanctum to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 98_ or have _completed the Spires of Arak Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step "GladB2"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Gladiator's Sanctum, Level 2##111980
|only if hasbuilding(159,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Gladiator's Sanctum, Level 2##111980
Click on your Gladiator's Sanctum and click _Upgrade_ |condition hasbuilding(160,2)
step
label "GladSanc3"
Proceeding to Gladiator's Sanctum, Level 3
stickystart "GladLvl3"
step
#include "A_Garrison_MediumBuilding"
Collect 4,000 Broken Bones |achieve 9495
|next "GladB3"
step "GladLvl3"
In order to get the blueprint for the Gladiator's Sanctum Level 3, you must be level 100 and complete _The Bone Collector_ achievement
This requires you to loot 4,000 Broken Bones in PvP combat
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "GladB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Gladiator's Sanctum, Level 3##111981
|only if not hasbuilding(161,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Gladiator's Sanctum, Level 3##111981
Click on your Gladiator's Sanctum and click _Upgrade_ |condition hasbuilding(161,3)
step
label "GladSanc_End"
You already have a level 3 Gladiator's Sanctum!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "LumberMill"
Redirecting to Lumber Mill, Level 1 |next "LumberMill1" |only if default
Redirecting to Lumber Mill, Level 2 |next "LumberMill2" |only if hasbuilding(40)
Redirecting to Lumber Mill, Level 3 |next "LumberMill3" |only if hasbuilding(41)
Redirecting to Lumber Mill end |next "LumberMill3" |only if hasbuilding(138) and not completedq(36195)
Redirecting to Lumber Mill end |next "LumberMill_End" |only if hasbuilding(138) and completedq(36195)
step
label "LumberMill1"
#include "A_Garrison_ArchitectTable"
Select the _Medium_ tab at the top, and create the _Lumber Mill_ in an empty Medium Plot |condition hasbuilding(40,1)
step
Finalize the Lumber Mill construction
#include "A_Garrison_MediumBuilding"
talk Justin Timberlord##84248
accept Easing into Lumberjacking##36189
step
click Small Timber##168641
Timber Harvested |q Easing into Lumberjacking##36189/1 |goto Shadowmoon Valley D/0 31.3,24.8
step
#include "A_Garrison_MediumBuilding"
talk Justin Timberlord##84248
turnin Easing into Lumberjacking##36189
accept Turning Timber into Profit##36192
step
click Small Timber##167895 |tip These can be found all around this area.
Timber Harvested |q Turning Timber into Profit##36192/1 |goto Shadowmoon Valley D 40.6,23.3
step
#include "A_Garrison_MediumBuilding"
talk Justin Timberlord##84248
Tell him _"I would like to submit a work order"_
Click _Start Work Order_
Work Order started |q Turning Timber into Profit##36192/2
step
#include "A_Garrison_MediumBuilding"
talk Justin Timberlord##84248
turnin Turning Timber into Profit##36192
step
label "LumberMill2"
Proceeding to Lumber Mill, Level 2
stickystart "LumbLvl2"
step
Reach level 98 |ding 98 |or
_Or_
Complete the Spires of Arak Outpost questline |condition completedq(36165) or completedq(35835) |or
|next "LumbB2"
step "LumbLvl2"
You can now upgrade your Lumber Mill to _level 2_
This will increase the amount of Work Orders you can do at a single time
You must be at least _level 98_ or have _completed the Spires of Arak Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "LumbB2"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Lumber Mill, Level 2##109254
|only if hasbuilding(40,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Lumber Mill, Level 2##109254
Click on your Lumber Mill and click _Upgrade_ |condition hasbuilding(41,2)
step
label "LumberMill3"
Proceeding to Lumber Mill, Level 3
stickystart "LumbLvl3"
step
clicknpc Petrified Ancient##85199
kill Petrified Ancient##85199
map Gorgrond/0
path follow loose; loop; ants curved
path	73.6,39.4	70.6,25.6	61.8,32.2
path	57.6,43.2	50.4,42.2	41.6,37.6
path	49.0,50.0	41.4,76.4	43.6,92.6
path	53.0,65.4
Follow the path, stopping at each point and searching for the Petrified Ancient |tip It will show up as a timber node on the minimap.
collect Barkskin Tome##115467
only if not havequest(36385) |or
only if not completedq(36385) |or
step
use Barkskin Tome##115467
accept Legacy of the Ancients##36385
step
map Gorgrond/0
path follow loose; loop; ants curved
path	69.0,42.4	73.6,41.2	71.0,30.8
path	65.4,24.0	59.6,19.8	61.0,25.0
path	57.4,34.4	54.4,45.6	63.0,35.0
_Log Timber_ from within the outlined area until Loruk spawns
kill Loruk the Ancient##85272
Collect the Twig of Loruk |q Legacy of the Ancients##36385/3
step
map Spires of Arak/0
path follow loose; loop; ants curved
path	46.7,20.6	39.3,22.0	33.6,28.2
path	34.3,38.1	40.3,42.9	54.9,43.9
path	60.0,37.6	59.4,27.0	51.7,21.7
_Log Timber_ from within the outlined area until Hanuk spawns
kill Hanuk the Ancient##85273
Collect the Roots of Hanuk |q Legacy of the Ancients##36385/4
step
map Nagrand D/0
path follow loose; loop; ants curved
path	79.7,49.9	71.1,41.2	60.5,48.3
path	61.6,60.4	70.0,58.7	78.0,57.3
_Log Timber_ from within the outlined area until Autuk spawns
kill Autuk the Ancient##85274
Collect the Trunk of Autuk |q Legacy of the Ancients##36385/2
step
map Shadowmoon Valley D/0
path follow loose; loop; ants curved
path	54.2,41.8	43.2,48.6	44.2,76.2
path	52.4,79.6	54.8,67.2
_Log Timber_ from within the outlined area until Kuruk spawns
kill Kuruk the Ancient##85271
Collect the Heart of Kuruk |q Legacy of the Ancients##36385/1
step
#include "A_Garrison_MediumBuilding"
talk Justin Timberlord##84248
turnin Legacy of the Ancients##36385
step
To continue, you must recruit Weldon Barov as a follower
Recruit Weldon Barov |condition hasfollower(195)
_
To proceed to the follower guide for Weldon Barov, click here |next "Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Weldon Barov" |confirm
step
#include "A_Garrison_MediumBuilding"
talk Weldon Barov##85413
accept Reduction in Force##36448
step
map Shadowmoon Valley D/0
path follow loose; loop; ants curved
path	35.8,26.1	37.1,18.6	43.7,17.8
path	43.4,25.0	39.1,30.8
_Log Timber_ from within the outlined area until Alexi Barov spawns
kill Alexi Barov##85446
Collect the head of Alexi Barov |q Reduction in Force##36448/1
step
#include "A_Garrison_MediumBuilding"
talk Weldon Barov##85413
turnin Reduction in Force##36448
step
#include "A_Garrison_MediumBuilding"
talk Homer Stonefield##84524
Complete a total of 75 Work Orders |achieve 9429
|next "LumbB3"
step "LumbLvl3"
In order to get the blueprint for the Lumber Mill Level 3, you must be level 100 and complete the _Upgrading the Mill_ achievement
This requires you to complete 75 Work Orders at the Lumber Mill
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "LumbB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Lumber Mill, Level 3##109255
|only if not hasbuilding(138,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Lumber Mill, Level 3##109255
Click on your Lumber Mill and click _Upgrade_ |condition hasbuilding(138,3)
step
#include "A_Garrison_MediumBuilding"
talk Justin Timberlord##84248
accept Tree-i-cide##36195
step
clicknpc Large Timber##168641
Harvest a large timber sample |q Tree-i-cide##36195/1 |goto Shadowmoon Valley D/0 33.90,25.45
step
#include "A_Garrison_MediumBuilding"
talk Justin Timberlord##84248
turnin Tree-i-cide##36195
step
label "LumberMill_End"
You already have a level 3 Lumber Mill!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "TradePost"
Redirecting to Trading Post, Level 1 |next "TradePost1" |only if default
Redirecting to Trading Post, Level 1 |next "TradePost1" |only if hasbuilding(111) and not completedq(37088)
Redirecting to Trading Post, Level 2 |next "TradePost2" |only if hasbuilding(111) and completedq(37088)
Redirecting to Trading Post, Level 2 |next "TradePost2" |only if hasbuilding(144)
Redirecting to Trading Post, Level 3 |next "TradePost3" |only if hasbuilding(145) and not completedq(36948)
Redirecting to end |next "TradePost_End" |only if hasbuilding(145) and completedq(36948)
step
label "TradePost1"
#include "A_Garrison_ArchitectTable"
Select the _Medium_ tab at the top, and create the _Trading Post_ in an empty Medium Plot |condition hasbuilding(111,1)
step
Finalize the Trading Post construction
talk Trader Joseph##87217
accept Tricks of the Trade##37088 |goto Lunarfall/0 45.3,50.8
step
click Krixel Pinchwhistle##87291
use Mug of Rousing Coffee##118418
Rouse the trader |q Tricks of the Trade##37088/1 |goto 57.84,71.76
step
talk Trader Joseph##87217
turnin Tricks of the Trade##37088 |goto Lunarfall/0 45.3,50.8
step
label "TradePost2"
Proceeding to Trading Post, Level 2
stickystart "TradeLvl2"
step
Reach level 98 |ding 98 |or
_Or_
Complete the Spires of Arak Outpost questline |condition completedq(36165) or completedq(35835) |or
|next "TradeB2"
step "TradeLvl2"
You can now upgrade your Trading Post to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 98_ or have _completed the Spires of Arak Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "TradeB2"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Trading Post, Level 2##111986
|only if hasbuilding(111,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Trading Post, Level 2##111986
Click on your Trading Post and click _Upgrade_ |condition hasbuilding(144,2)
step
label "TradePost3"
Proceeding to Trading Post, Level 3
stickystart "TradeLvl3"
step
#include "A_Garrison_MediumBuilding"
Earn exalted reputation with 3 Draenor factions |achieve 9478
|next "TradeB3"
step "TradeLvl3"
In order to get the blueprint for the Trading Post Level 3, you must be level 100 and complete the _Savage Friends_ achievement
This requires you to earn exalted reputation with 3 Draenor factions
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "TradeB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Trading Post, Level 3##111987
|only if not hasbuilding(145,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Trading Post, Level 3##111987
Click on your Trading Post and click _Upgrade_ |condition hasbuilding(145,3)
step
label "MainMenu"
Proceeding to Modules |next "PartsMenu" |only if not completedq(36948)
Proceeding to Storehouse end |next "TradePost_End" |only if completedq(36948)
step
label "PartsMenu"
To build the Auctioneer in your Trading Post, you must assemble the following parts: |tip Click a module to see the parts list
You have assembled the Arcane Crystal Module |condition itemcount(118375) >= 1 |only if itemcount(118375) >= 1 |and
Arcane Crystal Module |next "ArcaneMod" |confirm |only if itemcount(118375) <= 1
You have assembled the Auction Control Module |condition itemcount(118376) >= 1 |only if itemcount(118376) >= 1 |and
Auction Control Module |next "AuctionMod" |confirm |only if itemcount(118376) <= 1
You have assembled the Universal Language Module |condition itemcount(118377) >= 1 |only if itemcount(118377) >= 1 |and
Universal Language Module |next "UniversalMod" |confirm |only if itemcount(118377) <= 1
You have assembled the Super Cooling Module |condition itemcount(118378) >= 1 |only if itemcount(118378) >= 1 |and
Super Cooling Module |next "SuperMod" |confirm |only if itemcount(118378) <= 1
You have assembled the Cyclical Power Module |condition itemcount(118379) >= 1 |only if itemcount(118379) >= 1 |and
Cyclical Power Module |next "CyclicalMod" |confirm |only if itemcount(118379) <= 1
|next "Assemble"
step
label "ArcaneMod"
These parts drop from _The Butcher_, _Brackenspore_, and _Kargath Bladefist_ in the _Highmaul_ raid instance
You can also buy these parts from the auction house
collect 1 Arcane Crystal Casing##118344
collect 1 Arcane Crystal Conduit##118345
collect 1 Arcane Crystal Amplifier##118346
collect 1 Arcane Crystal Focusing Lens##118347
_
Click here to return to the main parts menu |next "MainMenu" |confirm
step
use Arcane Crystal Casing##118344
Assemble the Arcane Crystal Module |condition itemcount(118375) >= 1
|next "MainMenu"
step
label "AuctionMod"
This part drops from _all dungeon bosses_ and dungeon reward containers
You can also buy this part from the auction house
collect 1 Auction Memory Socket##118197
collect 1 Auction Connecting Valve##118331
collect 1 Auction A.D.D.O.N.S Installer##118332
_
Click here to return to the main parts menu |next "MainMenu" |confirm
step
use Auction Memory Socket##118197
Assemble the Auction Control Module |condition itemcount(118376) >= 1
|next "MainMenu"
step
label "UniversalMod"
To assemble the Universal Language Module, you must collect the following parts:
This part has a small chance to drop from any mob in _Ashran_
You can also buy this part from the auction house
collect 1 Universal Language Compensator##118333
collect 1 Universal Language Filter##118334
collect 1 Universal Language Repository##118335
_
Click here to return to the main parts menu |next "MainMenu" |confirm
step
use Universal Language Compensator##118333
Assemble the Universal Language Module |condition itemcount(118377) >= 1
|next "MainMenu"
step
label "SuperMod"
To assemble the Super Cooling Module, you must collect the following parts:
This part has a small chance to drop from any mob in _Shadowmoon Valley_, _Talador_, and _Nagrand_
You can also buy this part from the auction house
collect 1 Super Cooling Regulator##118336
collect 1 Super Cooling Tubing##118337
collect 1 Super Cooling Coolant##118338
collect 1 Super Cooling Pump##118339
_
Click here to return to the main parts menu |next "MainMenu" |confirm
step
use Super Cooling Regulator##118336
Assemble the Super Cooling Module |condition itemcount(118378) >= 1
|next "MainMenu"
step
label "CyclicalMod"
To assemble the Cyclical Power Module, you must collect the following parts:
This part has a small chance to drop from any mob in _Frostfire Ridge_, _Gorgrond_, and _Spires of Arak_
You can also buy this part from the auction house
collect 1 Cyclical Power Converter##118340
collect 1 Cyclical Power Housing##118341
collect 1 Cyclical Power Framing##118342
collect 1 Cyclical Power Sequencer##118343
_
Click here to return to the main parts menu |next "MainMenu" |confirm
step
use Cyclical Power Converter##118340
Assemble the Cyclical Power Module |condition itemcount(118379) >= 1
|next "MainMenu"
step
label "Assemble"
talk Ancient Trading Mechanism##87206
Accept Auctioning for Parts##36948 |goto Lunarfall/0 45.3,48.6
step
label "TradePost_End"
You already have a level 3 Trading Post!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "Barracks"
Redirecting to Barracks, Level 1 |next "Barracks1" |only if default
Redirecting to Barracks, Level 2 |next "Barracks2" |only if hasbuilding(26)
Redirecting to Barracks, Level 3 |next "Barracks3" |only if hasbuilding(27)
Redirecting to end |next "Barracks_End" |only if hasbuilding(28)
step
label "Barracks1"
#include "A_Garrison_ArchitectTable"
Select the _Large_ tab at the top, and create the _Barracks_ in an empty Large Plot |condition hasbuilding(26,1)
step
label "Barracks2"
Proceeding to Barracks level 2
stickystart "BarLvl2"
step
Reach level 100 |ding 100 |or
Or
Complete "A Choice to Make" |condition completedq(34769) |or
step
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Barracks, Level 2##111970
|only if hasbuilding(26,1)
|next "BB2"
step "BarLvl2"
Finalize the Barracks construction
You can now upgrade your Barracks to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 100_ or have _completed the quest "A Choice to Make" in Nagrand_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "BB2"
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Barracks, Level 2##111970
Click on your Barracks and click _Upgrade_ |condition hasbuilding(27,2)
step
label "Barracks3"
Proceeding to Barracks level 3
stickystart "BarLvl3"
step
#include "A_Garrison_MediumBuilding"
Complete 50 garrison patrol missions |achieve 9523
next "BarB3"
step "BarLvl3"
In order to get the blueprint for the Barracks Level 3, you must be level 100 and complete the _Patrolling Draenor_ achievement
This requires you to complete 50 garrison patrol missions
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "BarB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Barracks, Level 3##111971
|only if not hasbuilding(28,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Barracks, Level 3##111971
Click on your Barracks and click _Upgrade_ |condition hasbuilding(28,3)
step
label "Barracks_End"
You already have a level 3 Barracks!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "Gearworks"
Redirecting to Gnomish Gearworks, Level 1 |next "Gearworks1" |only if default
Redirecting to Gnomish Gearworks, Level 2 |next "Gearworks2" |only if hasbuilding(162)
Redirecting to Gnomish Gearworks, Level 3 |next "Gearworks3" |only if hasbuilding(163)
Redirecting to end |next "Gearworks_End" |only if hasbuilding(164)
step
label "Gearworks1"
#include "A_Garrison_ArchitectTable"
Select the _Large_ tab at the top, and create the _Gnomish Gearworks_ in an empty Large Plot |condition hasbuilding(162,1)
step
label "Gearworks2"
Proceeding to Gearworks level 2
stickystart "GWLvl2"
step
Reach level 100 |ding 100 |or
Or
Complete "A Choice to Make" |condition completedq(34769) |or
step
Finalize the Gnomish Gearworks construction
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Gnomish Gearworks, Level 2##111984
|only if hasbuilding(162,1)
step "GWLvl2"
You can now upgrade your Gnomish Gearworks to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 100_ or have _completed the Nagrand Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Gnomish Gearworks, Level 2##111984
Click on your Gnomish Gearworks and click _Upgrade_ |condition hasbuilding(163,2)
step
label "Gearworks3"
Proceeding to Gearworks level 3
step
#include "A_Garrison_LargeBuilding"
talk Zee##84286
accept Unconventional Inventions##37091
step
#include "A_Garrison_LargeBuilding"
Click one of the workshop inventions on the bench here
Acquire a Workshop Invention |q Unconventional Inventions##37091/1
step
#include "A_Garrison_LargeBuilding"
talk Zee##84286
turnin Unconventional Inventions##37091
stickystart "GWLvl3"
step
#include "A_Garrison_LargeBuilding"
Use all of the Engineering Works inventions |achieve 9527
|next "GWB3"
step "GWLvl3"
In order to get the blueprint for the Gnomish Gearworks Level 3, you must be level 100 and complete the _Terrific Technology_ achievement
This requires you to use all of the inventions available at the Gnomish Gearworks workshop
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "GWB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Gnomish Gearworks, Level 3##111985
|only if not hasbuilding(164,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Gnomish Gearworks, Level 3##111985
Click on your Gnomish Gearworks and click _Upgrade_ |condition hasbuilding(164,3)
step
label "Gearworks_End"
You already have a level 3 Gnomish Gearworks!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "MageTower"
Redirecting to Mage Tower, Level 1 |next "MageTower1" |only if default
Redirecting to Mage Tower, Level 2 |next "MageTower2" |only if hasbuilding(37)
Redirecting to Mage Tower, Level 3 |next "MageTower3" |only if hasbuilding(38)
Redirecting to end |next "MageTower_End" |only if hasbuilding(39)
step
label "MageTower1"
#include "A_Garrison_ArchitectTable"
Select the _Large_ tab at the top, and create the _Mage Tower_ in an empty Large Plot |condition hasbuilding(37,1)
step
label "MageTower2"
Proceeding to Mage Tower level 2
stickystart "MTLvl2"
step
Reach level 100 |ding 100 |or
Or
Complete "A Choice to Make" |condition completedq(34769) |or
step
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Mage Tower, Level 2##109062
|only if hasbuilding(37,1)
|next "MTB2"
step "MTLvl2"
Finalize the Mage Tower construction
You can now upgrade your Mage Tower to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 100_ or have _completed the Nagrand Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "MTB2"
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Mage Tower, Level 2##109062
Click on your Mage Tower and click _Upgrade_ |condition hasbuilding(38,2)
step
label "MageTower3"
Proceeding to Mage Tower level 3
step
#include "A_Garrison_LargeBuilding"
talk Archmage Kern##77367
accept Ogre Waygates##36848
step
kill 1 Stonemaul Guard##75819+, Stonemaul Slaver##75835+
collect 25 Ogre Waystone##117491 |n
Ogre Waystone |q Ogre Waygates##36848/1 |goto Gorgrond 40.1,66.1
step
You can now use these Ogre Waystones to activate a permanent portal in your Garrison that takes you to a specific zone
Any one of the following portals can be created:
The Cracking Plains, Frostfire Ridge |next "frostfire" |confirm
Tuurem, Talador |next "talador" |confirm
Ancestral Grounds, Nagrand |next "nagrand" |confirm
Veil Zekk, Spires of Arak |next "spires" |confirm
Stonemaul Arena, Gorgrond |next "gorgrond" |confirm
step
label "frostfire"
click Deactivated Ogre Waygate
Activate an Orgre Waygate |q Ogre Waygates##36848/2 |goto Frostfire Ridge/0 59.6,47.5
|next "turnin"
step
label "talador"
click Deactivated Ogre Waygate
Activate an Orgre Waygate |q Ogre Waygates##36848/2 |goto Talador/0 55.1,48.2
|next "turnin"
step
label "nagrand"
click Deactivated Ogre Waygate
Activate an Orgre Waygate |q Ogre Waygates##36848/2 |goto Nagrand D/0 32.2,46.2
|next "turnin"
step
label "spires"
click Deactivated Ogre Waygate
Activate an Orgre Waygate |q Ogre Waygates##36848/2 |goto Spires of Arak/0 54.6,51.6
|next "turnin"
step
label "gorgrond"
click Deactivated Ogre Waygate
Activate an Ogre Waygate |q Ogre Waygates##36848/2 |goto Gorgrond 58.0,34.4
|next "turnin"
step
label "turnin"
Click the _Ogre Waypoint_ in front of you
Return to your Garrison |goto Lunarfall 29.9,33.9 < 300 |c |noway
step
#include "A_Garrison_LargeBuilding"
talk Archmage Kern##77367
turnin Ogre Waygates##36848
stickystart "MTLvl3"
step
Collect 500 Ogre Waystones |achieve 9497
|next "MTB3"
step "MTLvl3"
In order to get the blueprint for the Mage Tower Level 3, you must be level 100 and complete the _Finding Your Waystones_ achievement
This requires you to Collect 500 Ogre Waystones
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "MTB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Mage Tower, Level 3##109063
|only if not hasbuilding(39,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Mage Tower, Level 3##109063
Click on your Mage Tower and click _Upgrade_ |condition hasbuilding(39,3)
step
label "MageTower_End"
You already have a level 3 Mage Tower!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "Stables"
Redirecting to Stables, Level 1 |next "Stables1" |only if default
Redirecting to Stables, Level 2 |next "Stables2" |only if hasbuilding(65)
Redirecting to Stables, Level 3 |next "Stables3" |only if hasbuilding(66)
Redirecting to end |next "Stables_End" |only if hasbuilding(67)
step
label "Stables1"
#include "A_Garrison_ArchitectTable"
Select the _Large_ tab at the top, and create the _Stables_ in an empty Large Plot |condition hasbuilding(65,1)
step
label "Stables2"
Proceeding to Stables level 2
stickystart "StabLvl2"
step
Reach level 100 |ding 100 |or
Or
Complete "A Choice to Make" |condition completedq(34769) |or
stickystart "St2"
step
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Stables, Level 2##112002
|only if hasbuilding(65,1)
|next "StN3"
step "StabLvl2"
Finalize the Stables construction
You can now upgrade your Stables to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 100_ or have _completed the Nagrand Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "StN3"
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Stables, Level 2##112002
Click on your Stables and click _Upgrade_ |condition hasbuilding(66,2)
step
label "Stables3"
#include "A_Garrison_LargeBuilding"
talk Fanny Firebeard##86974
accept Taming a Talbuk##36911
step
#include "A_Garrison_LargeBuilding"
click Young Silverpelt##86801
use Talbuk Lasso##118179
Tame a Silverpelt Talbuk |q Taming a Talbuk##36911/1 |tip You will need to be mounted and follow the talbuk as it flees.
step
#include "A_Garrison_LargeBuilding"
talk Fanny Firebeard##86974
turnin Taming a Talbuk##36911
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
accept Capturing a Clefthoof##36916
step
click Young Icehoof##86847
use Clefthoof Lasso##118181
Tame a Young Icehoof |q Capturing a Clefthoof##36916/1 |goto Frostfire Ridge/0 53.5,20.0 |tip You will need to be mounted and follow the Young Icehoof as it flees.
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
turnin Taming a Clefthoof##36916
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
accept Besting a Boar##36913
step
click Young Rocktusk##86850
use Boar Lasso##118185
Tame a Young Rocktusk |q Besting a Boar##36913/1 |goto Gorgrond/0 43.1,37.2 |tip You will need to be mounted and follow the Young Rocktusk as it flees.
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
turnin Besting a Boar##36913
step
#include "A_Garrison_LargeBuilding"
talk Fanny Firebeard##86974
accept Requisition a Riverbeast##36918
step
click Young Riverwallow##86848
use Riverbeast Lasso##118183
Tame a Young Riverwallow |q Requisition a Riverbeast##36918/1 |goto Talador/0 64.4,56.3 |tip You will need to be mounted and follow the Young Riverwallow as it flees.
step
#include "A_Garrison_LargeBuilding"
talk Fanny Firebeard##86974
turnin Requisition a Riverbeast##36918
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
accept Entangling an Elekk##36915
step
click Young Meadowstomper##86852
use Elekk Lasso##118184
Tame a Young Meadowstomper |q Entangling an Elekk##36915/1 |goto Nagrand D/0 85.1,40.7 |tip You will need to be mounted and follow the Young Meadowstomper as it flees.
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
turnin Entangling an Elekk##36915
step
#include "A_Garrison_LargeBuilding"
talk Fanny Firebeard##86974
accept Wrangling a Wolf##36914
step
click Young Snarler##86851
use Wolf Lasso##118182
Tame a Young Snarler |q Wrangling a Wolf##36914/1 |goto Nagrand D/0 57.2,60.3 |tip You will need to be mounted and follow the Young Snarler as it flees.
step
#include "A_Garrison_LargeBuilding"
talk Fanny Firebeard##86974
turnin Wrangling a Wolf##36914
stickystart "StabLvl3"
step
Accept all available training dailies:
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
accept Riverbeast Training: Gezz'ran##37005
accept Talbuk Training: Rakkiri##36972
accept Wolf Training: Cruel Ogres##37022
accept Boar Training: Riplash##36995
accept Clefthoof Training: Rakkiri##36984
accept Elekk Training: Cruel Ogres##37015
step
use Icehoof-In-Training Whistle##118348
kill Rakkiri##87085
Rakkiri Killed |q Clefthoof Training: Rakkiri##36984/1 |goto Frostfire Ridge 72.9,69.9
step
use Silverpelt-In-Training Whistle##118352 |goto Frostfire Ridge 72.9,69.9
kill Rakkiri##87085
Rakkiri Killed |q Talbuk Training: Rakkiri##36972/1
step
use Rocktusk-In-Training Whistle##118351
kill Riplash##87084
Riplash Killed |q Boar Training: Riplash##36995/1 |goto Gorgrond 50.2,38.0
step
use Riverwallow-In-Training Whistle##118350
kill Gezz'ran##87086
Gezz'ran Killed |q Riverbeast Training: Gezz'ran##37005/1 |goto Talador 31.6,54.7
step
use Meadowstomper-In-Training Whistle##118349
kill Gorian Beast-Lasher##87095
Gorian Beast-Lasher Killed |q Elekk Training: Cruel Ogres##37015/1 |goto Nagrand D/0 79.1,71.7
step
use Snarler-In-Training Whistle##118353
kill Gorian Beast-Lasher##87095
Gorian Beast-Lasher Killed |q Wolf Training: Cruel Ogres##37022/1 |goto Nagrand D/0 79.1,71.7
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
turnin Riverbeast Training: Gezz'ran##37005
turnin Talbuk Training: Rakkiri##36972
turnin Wolf Training: Cruel Ogres##37022
turnin Boar Training: Riplash##36995
turnin Clefthoof Training: Rakkiri##36984
turnin Elekk Training: Cruel Ogres##37015
step
Accept all available training dailies:
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
accept Boar Training: Gezz'ran##36996
accept Clefthoof Training: Great-Tusk##36983
accept Elekk Training: Darkwing Roc##37016
accept Riverbeast Training: Bulbapore##37006
accept Talbuk Training: Great-Tusk##36971
accept Wolf Training: Darkwing Roc##37023
step
_Go up_ the path |goto Nagrand D/0 67.3,16.1 < 10
_Cross the bridge_ |goto 66.6,17.6 < 10
use Meadowstomper-In-Training Whistle##118349
kill 1 Darkwing Roc##87088
Darkwing Roc Killed |q Elekk Training: Darkwing Roc##37016/1 |goto Nagrand D/0 68.5,20.5
step
use Snarler-In-Training Whistle##118353
kill 1 Darkwing Roc##87088
Darkwing Roc Killed |q Wolf Training: Darkwing Roc##37023/1 |goto Nagrand D/0 68.5,20.5
step
use Rocktusk-In-Training Whistle##118351
kill 1 Gezz'ran##87086
Gezz'ran Killed |q Boar Training: Gezz'ran##36996/1 |goto Talador/0 31.4,54.4
step
use Icehoof-In-Training Whistle##118348
kill 1 Great-Tusk##87083
Great-Tusk Killed |q Clefthoof Training: Great-Tusk##36983/1 |goto Shadowmoon Valley D/0 62.9,39.1
step
use Silverpelt-In-Training Whistle##118352
kill 1 Great-Tusk##87083
Great-Tusk Killed |q Talbuk Training: Great-Tusk##36971/1 |goto Shadowmoon Valley D/0 62.9,39.1
step
use Riverwallow-In-Training Whistle##118350
kill 1 Bulbapore##87087
Bulbapore Killed |q Riverbeast Training: Bulbapore##37006/1 |goto Spires of Arak/0 66.7,75.7
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
turnin Boar Training: Gezz'ran##36996
turnin Clefthoof Training: Great-Tusk##36983
turnin Elekk Training: Darkwing Roc##37016
turnin Riverbeast Training: Bulbapore##37006
turnin Talbuk Training: Great-Tusk##36971
turnin Wolf Training: Darkwing Roc##37023
step
Accept all available training dailies:
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
accept Boar Training: Bulbapore##36997
accept Clefthoof Training: Riplash##36985
accept Elekk Training: Moth of Wrath##37017
accept Riverbeast Training: Cruel Ogres##37007
accept Talbuk Training: Riplash##36973
accept Wolf Training: Moth of Wrath##37024
step
use Icehoof-In-Training Whistle##118348
kill 1 Riplash##87084
Riplash killed |q Clefthoof Training: Riplash##36985/1 |goto Gorgrond/0 50.5,38.0
step
use Silverpelt-In-Training Whistle##118352
kill 1 Riplash##87084
Riplash killed |q Talbuk Training: Riplash##36973/1 |goto Gorgrond/0 50.5,38.0
step
use Rocktusk-In-Training Whistle##118351
kill 1 Bulbapore##87087
Bulbapore Killed |q Boar Training: Bulbapore##36997/1 |goto Spires of Arak/0 66.7,75.7
step
use Riverwallow-In-Training Whistle##118350
kill Gorian Beast-Lasher##87095
Gorian Beast-Lasher Killed |q Riverbeast Training: Cruel Ogres##37007/1 |goto Nagrand D/0 79.1,71.7
step
use Meadowstomper-In-Training Whistle##118349
kill 1 Moth of Wrath##87089
Moth of Wrath killed |q Elekk Training: Moth of Wrath##37017/1 |goto Nagrand D 43.6,69.6
step
use Snarler-In-Training Whistle##118353
kill 1 Moth of Wrath##87089
Moth of Wrath killed |q Wolf Training: Moth of Wrath##37024/1 |goto Nagrand D 43.6,69.6
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
turnin Boar Training: Bulbapore##36997
turnin Clefthoof Training: Riplash##36985
turnin Elekk Training: Moth of Wrath##37017
turnin Riverbeast Training: Cruel Ogres##37007
turnin Talbuk Training: Riplash##36973
turnin Wolf Training: Moth of Wrath##37024
step
Accept all available training dailies:
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
accept Riverbeast Training: Darkwing Roc##37008
accept Talbuk Training: Gezz'ran##36974
accept Wolf Training: Thundercall##37025
accept Boar Training: Cruel Ogres##36998
accept Clefthoof Training: Gezz'ran##36986
accept Elekk Training: Thundercall##37018
step
_Go up_ the path |goto Nagrand D/0 67.3,16.1 < 10
_Cross the bridge_ |goto 66.6,17.6 < 10
use Riverwallow-In-Training Whistle##118350
kill 1 Darkwing Roc##87088
Darkwing Roc Killed |q Riverbeast Training: Darkwing Roc##37008/1 |goto Nagrand D/0 68.5,20.5
step
_Proceed up_ the path |goto Nagrand D/0 83.5,33.1 < 10
_Continue_ up |goto 85.0,34.8 < 10
_Take the left_ path |goto 86.4,37.0 < 10
_Go down_ the path |goto Nagrand D/0 88.6,35.0 < 10
Head _along the side of the mountain_ |goto 89.0,30.3 < 10
use Meadowstomper-In-Training Whistle##118349
kill 1 Thundercall##87102
Thundercall Killed |q Elekk Training: Thundercall##37018/1 |goto Nagrand D 90.6,23.6
step
use Snarler-In-Training Whistle##118353
kill 1 Thundercall##87102
Thundercall Killed |q Wolf Training: Thundercall##37025/1 |goto Nagrand D 90.6,23.6
step
use Rocktusk-In-Training Whistle##118351
kill 1 Gorian Beast-Lasher##87095
Gorian Beast-Lasher Killed |q Boar Training: Cruel Ogres##36998/1 |goto Nagrand D/0 79.1,71.7
step
use Icehoof-In-Training Whistle##118348
kill 1 Gezz'ran##87086
Gezz'ran Killed |q Clefthoof Training: Gezz'ran##36986/1 |goto Talador/0 31.4,54.4
step
use Silverpelt-In-Training Whistle##118352
kill 1 Gezz'ran##87086
Gezz'ran Killed |q Talbuk Training: Gezz'ran##36974/1 |goto Talador/0 31.4,54.4
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
turnin Riverbeast Training: Darkwing Roc##37008
turnin Talbuk Training: Gezz'ran##36974
turnin Wolf Training: Thundercall##37025
turnin Boar Training: Cruel Ogres##36998
turnin Clefthoof Training: Gezz'ran##36986
turnin Elekk Training: Thundercall##37018
step
Accept all available training dailies:
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
accept Boar Training: Darkwing Roc##36999
accept Clefthoof Training: Bulbapore##36987
accept Elekk Training: Ironbore##37019
accept Riverbeast Training: Moth of Wrath##37009
accept Talbuk Training: Bulbapore##36975
accept Wolf Training: Ironbore##37026
step
_Go up_ the path |goto Nagrand D/0 67.3,16.1 < 10
_Cross the bridge_ |goto 66.6,17.6 < 10
use Rocktusk-In-Training Whistle##118351
kill 1 Darkwing Roc##87088
Darkwing Roc Killed |q Boar Training: Darkwing Roc##36999/1 |goto Nagrand D/0 68.5,20.5
step
use Meadowstomper-In-Training Whistle##118349
kill 1 Ironbore##87090
Ironbore Killed |q Elekk Training: Ironbore##37019/1 |goto Nagrand D/0 53.2,77.6
step
use Snarler-In-Training Whistle##118353
kill 1 Ironbore##87090
Ironbore Killed |q Wolf Training: Ironbore##37026/1 |goto Nagrand D/0 53.2,77.6
step
use Riverwallow-In-Training Whistle##118350
kill 1 Moth of Wrath##87089
Moth of Wrath Killed |q Riverbeast Training: Moth of Wrath##37009/1 |goto Nagrand D/0 43.6,69.6
step
use Icehoof-In-Training Whistle##118348
kill 1 Bulbapore##87087
Bulbapore Killed |q Clefthoof Training: Bulbapore##36987/1 |goto Spires of Arak/0 66.7,75.7
step
use Silverpelt-In-Training Whistle##118352
kill 1 Bulbapore##87087
Bulbapore Killed |q Talbuk Training: Bulbapore##36975/1 |goto Spires of Arak/0 66.7,75.7
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
turnin Boar Training: Darkwing Roc##36999
turnin Clefthoof Training: Bulbapore##36987
turnin Elekk Training: Ironbore##37019
turnin Riverbeast Training: Moth of Wrath##37009
turnin Talbuk Training: Bulbapore##36975
turnin Wolf Training: Ironbore##37026
step
Accept all available training dailies:
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
accept Boar Training: Moth of Wrath##37000
accept Clefthoof Training: Cruel Ogres##36988
accept Elekk Training: Orc Hunters##37020
accept Riverbeast Training: Thundercall##37010
accept Talbuk Training: Cruel Ogres##36976
accept Wolf Training: Orc Hunters##37027
step
use Meadowstomper-In-Training Whistle##118349
kill 1 Karak the Great Hunter##87105 |q Elekk Training: Orc Hunters##37020/1 |goto Nagrand D/0 69.6,34.6
step
use Snarler-In-Training Whistle##118353
kill 1 Karak the Great Hunter##87105 |q Wolf Training: Orc Hunters##37027/1 |goto Nagrand D/0 69.6,34.6
step
_Proceed up_ the path |goto Nagrand D/0 83.5,33.1 < 10
_Continue_ up |goto 85.0,34.8 < 10
_Take the left_ path |goto 86.4,37.0 < 10
_Go down_ the path |goto Nagrand D/0 88.6,35.0 < 10
Head _along the side of the mountain_ |goto 89.0,30.3 < 10
use Riverwallow-In-Training Whistle##118350
kill 1 Thundercall##87102 |q Riverbeast Training: Thundercall##37010/1 |goto Nagrand D 90.6,23.6
step
use Icehoof-In-Training Whistle##118348
kill 1 Gorian Beast-Lasher##87095
Gorian Beast-Lasher Killed |q Clefthoof Training: Cruel Ogres##36988/1 |goto Nagrand D/0 79.1,71.7
step
use Silverpelt-In-Training Whistle##118352
kill 1 Gorian Beast-Lasher##87095
Gorian Beast-Lasher Killed |q Talbuk Training: Cruel Ogres##36976/1 |goto Nagrand D/0 79.1,71.7
step
use Rocktusk-In-Training Whistle##118351
kill 1 Moth of Wrath##87089
Moth of Wrath Killed |q Boar Training: Moth of Wrath##37000/1 |goto Nagrand D/0 43.6,69.6
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
turnin Boar Training: Moth of Wrath##37000
turnin Clefthoof Training: Cruel Ogres##36988
turnin Elekk Training: Orc Hunters##37068
turnin Riverbeast Training: Thundercall##37010
turnin Talbuk Training: Cruel Ogres##36976
turnin Wolf Training: Orc Hunters##37027
step
Accept all available training dailies:
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
accept Boar Training: Thundercall##37001
accept Clefthoof Training: Darkwing Roc##36989
accept Elekk Training: The Garn##37021
accept Riverbeast Training: Ironbore##37011
accept Talbuk Training: Darkwing Roc##36977
accept Wolf Training: The Garn##37028
step
_Go up_ the path |goto Nagrand D/0 67.3,16.1 < 10
_Cross the bridge_ |goto 66.6,17.6 < 10
use Icehoof-In-Training Whistle##118348
kill 1 Darkwing Roc##87088
Darkwing Roc Killed |q Clefthoof Training: Darkwing Roc##36989/1 |goto Nagrand D/0 68.5,20.5
step
use Silverpelt-In-Training Whistle##118352
kill 1 Darkwing Roc##87088
Darkwing Roc Killed |q Talbuk Training: Darkwing Roc##36977/1 |goto Nagrand D/0 68.5,20.5
step
_Proceed up_ the path |goto Nagrand D/0 83.5,33.1 < 10
_Continue_ up |goto 85.0,34.8 < 10
_Take the left_ path |goto 86.4,37.0 < 10
_Go down_ the path |goto Nagrand D/0 88.6,35.0 < 10
Head _along the side of the mountain_ |goto 89.0,30.3 < 10
use Rocktusk-In-Training Whistle##118351
kill 1 Thundercall##87102
Thundercall Killed |q Boar Training: Thundercall##37001/1 |goto Nagrand D 90.6,23.6
step
use Meadowstomper-In-Training Whistle##118349
kill 1 Maimclaw##87174
Maimclaw Killed |q Elekk Training: The Garn##37021/1 |goto Nagrand D/0 63.8,80.8
step
use Snarler-In-Training Whistle##118353
kill 1 Maimclaw##87174
Maimclaw Killed |q Wolf Training: The Garn##37028/1 |goto Nagrand D/0 63.8,80.8
step
use Riverwallow-In-Training Whistle##118350
kill 1 Ironbore##87090
Ironbore Killed |q Riverbeast Training: Ironbore##37011/1 |goto Nagrand D/0 53.2,77.6
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
turnin Boar Training: Thundercall##37001
turnin Clefthoof Training: Darkwing Roc##36989
turnin Elekk Training: The Garn##37021
turnin Riverbeast Training: Ironbore##37011
turnin Talbuk Training: Darkwing Roc##36977
turnin Wolf Training: The Garn##37028
step
Accept all available training dailies:
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
accept Riverbeast Training: Orc Hunters##37012
accept Talbuk Training: Moth of Wrath##36978
accept Boar Training: Ironbore##37002
accept Clefthoof Training: Moth of Wrath##36990
step
use Riverwallow-In-Training Whistle##118350
kill 1 Karak the Great Hunter##87105
Karak the Great Hunter Killed |q Riverbeast Training: Orc Hunters##37012/1 |goto Nagrand D/0 69.6,34.6
step
use Rocktusk-In-Training Whistle##118351
kill 1 Ironbore##87090
Ironbore Killed |q Boar Training: Ironbore##37002/1 |goto Nagrand D/0 53.2,77.6
step
use Icehoof-In-Training Whistle##118348
kill 1 Moth of Wrath##87089
Moth of Wrath Killed |q Clefthoof Training: Moth of Wrath##36990/1 |goto Nagrand D/0 43.6,69.6
step
use Silverpelt-In-Training Whistle##118352
kill 1 Moth of Wrath##87089
Moth of Wrath Killed |q Talbuk Training: Moth of Wrath##36978/1 |goto Nagrand D/0 43.6,69.6
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
turnin Riverbeast Training: Orc Hunters##37012
turnin Talbuk Training: Moth of Wrath##36978
turnin Boar Training: Ironbore##37002
turnin Clefthoof Training: Moth of Wrath##36990
step
Accept all available training dailies:
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
accept Riverbeast Training: The Garn##37013
accept Talbuk Training: Thundercall##36979
accept Boar Training: Orc Hunters##37003
accept Clefthoof Training: Thundercall##36991
step
use Rocktusk-In-Training Whistle##118351
kill 1 Karak the Great Hunter##87105
Karak the Great Hunter Killed |q Boar Training: Orc Hunters##37003/1 |goto Nagrand D/0 69.6,34.6
step
_Proceed up_ the path |goto Nagrand D/0 83.5,33.1 < 10
_Continue_ up |goto 85.0,34.8 < 10
_Take the left_ path |goto 86.4,37.0 < 10
_Go down_ the path |goto Nagrand D/0 88.6,35.0 < 10
Head _along the side of the mountain_ |goto 89.0,30.3 < 10
use Icehoof-In-Training Whistle##118348
kill 1 Thundercall##87102
Thundercall Killed |q Clefthoof Training: Thundercall##36991/1 |goto Nagrand D 90.6,23.6
step
use Silverpelt-In-Training Whistle##118352
kill 1 Thundercall##87102
Thundercall Killed |q Talbuk Training: Thundercall##36979/1 |goto Nagrand D 90.6,23.6
step
use Riverwallow-In-Training Whistle##118350
kill 1 Maimclaw##87174
Maimclaw Killed |q Riverbeast Training: The Garn##37013/1 |goto Nagrand D/0 63.8,80.8
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
turnin Riverbeast Training: The Garn##37013
turnin Talbuk Training: Thundercall##36979
turnin Boar Training: Orc Hunters##37003
turnin Clefthoof Training: Thundercall##36991
step
Accept all available training dailies:
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
accept Boar Training: The Garn##37004
accept Clefthoof Training: Ironbore##36992
accept Talbuk Training: Ironbore##36980
step
use Icehoof-In-Training Whistle##118348
kill 1 Ironbore##87090
Ironbore Killed |q Clefthoof Training: Ironbore##36992/1 |goto Nagrand D/0 53.2,77.6
step
use Silverpelt-In-Training Whistle##118352
kill 1 Ironbore##87090
Ironbore Killed |q Talbuk Training: Ironbore##36980/1 |goto Nagrand D/0 53.2,77.6
step
use Rocktusk-In-Training Whistle##118351
kill 1 Maimclaw##87174
Maimclaw Killed |q Boar Training: The Garn##37004/1 |goto Nagrand D/0 63.8,80.8
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
turnin Boar Training: The Garn##37004
turnin Clefthoof Training: Ironbore##36992
turnin Talbuk Training: Ironbore##36980
step
Accept all available training dailies:
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
accept Talbuk Training: Orc Hunters##36981
accept Clefthoof Training: Orc Hunters##36993
step
use Icehoof-In-Training Whistle##118348
kill 1 Karak the Great Hunter##87105
Karak the Great Hunter Killed |q Clefthoof Training: Orc Hunters##36993/1 |goto Nagrand D/0 69.6,34.6
step
use Silverpelt-In-Training Whistle##118352
kill 1 Karak the Great Hunter##87105
Karak the Great Hunter Killed |q Talbuk Training: Orc Hunters##36981/1 |goto Nagrand D/0 69.6,34.6
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
turnin Talbuk Training: Orc Hunters##36981
turnin Clefthoof Training: Orc Hunters##36993
step
Accept all available training dailies:
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
accept Talbuk Training: The Garn##36982
accept Clefthoof Training: The Garn##36994
step
use Icehoof-In-Training Whistle##118348
kill 1 Maimclaw##87174
Maimclaw Killed |q Clefthoof Training: The Garn##36994/1 |goto Nagrand D/0 63.8,80.8
step
use Silverpelt-In-Training Whistle##118352
kill 1 Maimclaw##87174
Maimclaw Killed |q Talbuk Training: The Garn##36982/1 |goto Nagrand D/0 63.8,80.8
step
#include "A_Garrison_LargeBuilding"
talk Keegan Firebeard##86973
talk Fanny Firebeard##86974
turnin Talbuk Training: The Garn##36982
turnin Clefthoof Training: The Garn##36994
step
#include "A_Garrison_LargeBuilding"
Fully train all six mounts at your Stables |achieve 9526
|next "StabB3"
step "StabLvl3"
In order to get the blueprint for the Stables Level 3, you must be level 100 and complete the _Master of Mounts_ achievement
This requires you to fully train all six mounts at your Stables
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "StabB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Stables, Level 3##112003
|only if not hasbuilding(67,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Stables, Level 3##112003
Click on your Stables and click _Upgrade_ |condition hasbuilding(67,3)
step
label "Stables_End"
You already have a level 3 Stables!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "DwBunker"
Redirecting to Dwarven Bunker, Level 1 |next "DwBunker1" |only if default
Redirecting to Dwarven Bunker, Level 2 |next "DwBunker2" |only if hasbuilding(8)
Redirecting to Dwarven Bunker, Level 3 |next "DwBunker3" |only if hasbuilding(9)
Redirecting to end |next "DwBunker_End" |only if hasbuilding(10)
step
label "DwBunker1"
#include "A_Garrison_ArchitectTable"
Select the _Large_ tab at the top, and create the _Dwarven Bunker_ in an empty Large Plot |condition hasbuilding(8,1)
step
label "DwBunker2"
Proceeding to Dwarven Bunker level 2
stickystart "DwBLvl2"
step
Reach level 100 |ding 100 |or
Or
Complete "A Choice to Make" |condition completedq(34769) |or
step
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Dwarven Bunker, Level 2##111966
|only if hasbuilding(8,1)
|next "DwBB2"
step "DwBLvl2"
Finalize the Dwarven Bunker construction
You can now upgrade your Dwarven Bunker to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 100_ or have _completed the Nagrand Outpost questline_ to buy this blueprint
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "DwBB2"
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Dwarven Bunker, Level 2##111966
Click on your Dwarven Bunker and click _Upgrade_ |condition hasbuilding(9,2)
step
label "DwBunker3"
Proceeding to Dwarven Bunker level 3
stickystart "DwBLvl3"
step
#include "A_Garrison_LargeBuilding"
Raise 20 garrison followers to level 100 |achieve 9129
|next "DwBB3"
step "DwBLvl3"
In order to get the blueprint for the Dwarven Bunker Level 3, you must be level 100 and complete the _Filling the Ranks_ achievement
This requires you to raise 20 garrison followers to level 100
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
step
label "DwBB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Dwarven Bunker, Level 3##111967
|only if not hasbuilding(10,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Dwarven Bunker, Level 3##111967
Click on your Dwarven Bunker and click _Upgrade_ |condition hasbuilding(10,3)
step
label "DwBunker_End"
You already have a level 3 Dwarven Bunker!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "FishShack"
Redirecting to Fishing Shack, Level 1 |next "FishShack1" |only if default
Redirecting to Fishing Shack, Level 2 |next "FishShack2" |only if hasbuilding(64)
Redirecting to Fishing Shack, Level 3 |next "FishShack3" |only if hasbuilding(134)
Redirecting to Fishing Shack end |next "FishShack_End" |only if hasbuilding(135)
step
label "FishShack1"
In order to build the Fishing Shack, you must first reach level 94 and possess a level 2 garrison
Reach level 94 |ding 94
And
Upgrade your garrison to level 2 |condition garrisonlvl(2) or garrisonlvl(3)
step
talk Ron Ashton##77733
accept Looking For Help##34194 |goto Lunarfall/0 54.4,14.3
step
talk Madari##84372
Speak with Madari and request his assistance |q Looking For Help##34194/1 |goto Shadowmoon Valley D 27.0,7.3
turnin Looking For Help##34194 |goto Shadowmoon Valley D 26.96,7.29
step
talk Madari##84372
accept Moonshell Claws##36199 |goto Shadowmoon Valley D 26.96,7.29
step
kill Moonshell Crawler##84341+
collect 4 Moonshell Claw##114873+ |n
Gather 4 Moonshell Claws |q Moonshell Claws##36199/1 |goto Shadowmoon Valley D 29.54,10.92
step
talk Madari##84372
turnin Moonshell Claws##36199 |goto Shadowmoon Valley D 26.96,7.28
accept Proving Your Worth##36201 |goto Shadowmoon Valley D 26.96,7.28
step
Equip your Strong Fishing Pole |use Strong Fishing Pole##6365
Attach the Moonshell Claw Bait to your fishing pole |use Moonshell Claw Bait##114874
Stand on the edge of the beach
collect 5 Shadow Sturgeon##114876 |n
Fish up 5 Shadow Sturgeon |q Proving Your Worth##36201/1 |goto Shadowmoon Valley D 27.54,7.24 |cast Fishing##131474
step
talk Madari##84372
turnin Proving Your Worth##36201 |goto Shadowmoon Valley D 26.96,7.28
accept Anglin' In Our Garrison##36202 |goto Shadowmoon Valley D 26.96,7.28
step
talk Ron Ashton##77733
turnin Anglin' In Our Garrison##36202 |goto Lunarfall/0 54.4,14.3
step
label "FishShack2"
You can now upgrade your Fishing Shack to _level 2_
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Fishing Shack, Level 2##111927
|only if hasbuilding(64,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Fishing Shack, Level 2##111927
Click on your Fishing Shack and click _Upgrade_ |condition hasbuilding(134,2)
step
label "FishShack3"
Proceeding to Fishing Shack level 3
stickystart "Fish3"
step
#include "A_Garrison_LargeBuilding"
Catch 100 of each _Enormous fish_ |achieve 9462
And
Reach Level 100 |ding 100
|next "FishB3"
step "Fish3"
In order to get the blueprint for the Fishing Shack Level 3, you must be level 100 and complete the _Draenor Angler_ achievement
This requires you to catch 100 of each the following _Enormous_ fish: Sea Scorpion, Jawless Skulker, Fat Sleeper, Blind Lake Sturgeon, Blackwater Whiptail, Abyssal Gulper Eel, and Fire Ammonite
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
|only if not achieved(9462)
step
label "FishB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Fishing Shack, Level 3##111928
|only if not hasbuilding(135)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Fishing Shack, Level 3##111928
Click on your Fishing Shack and click _Upgrade_ |condition hasbuilding(135)
step
label "FishShack_End"
You already have a level 3 Fishing Shack!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "Excavation"
Redirecting to Lunarfall Excavation, Level 1 |next "Excavation1" |only if default
Redirecting to Lunarfall Excavation, Level 2 |next "Excavation2" |only if hasbuilding(61)
Redirecting to Lunarfall Excavation, Level 3 |next "Excavation3" |only if hasbuilding(62)
Redirecting to Lunarfall Excavation end |next "Excavation_End" |only if hasbuilding(63)
step
label "Excavation1"
In order to build the Lunarfall Excavation, you must first reach level 92 and possess a level 2 garrison
Reach level 92 |ding 92
And
Upgrade your garrison to level 2 |condition garrisonlvl(2) or garrisonlvl(3)
step
talk Timothy Leens##77730
accept Things Are Not Goren Our Way##34192 |goto Lunarfall/0 65.2,41.9
step
kill 8 Lunarfall Goren##83628+, Lunarfall Goren Hatchling##83629+
Kill Goren in the Lunarfall Excavation |q Things Are Not Goren Our Way##34192/1 |goto Lunarfall/23 78.5,59.4
step
kill 1 Stonetooth##81396
Deal with Stonetooth in the Lunarfall Excavation |q Things Are Not Goren Our Way##34192/2 |goto Lunarfall/23 58.9,80.0
step
talk Timothy Leens##77730
turnin Things Are Not Goren Our Way##34192 |goto Lunarfall/0 65.2,41.9
step
label "Excavation2"
Proceeding to Excavation level 2
step
You can now upgrade your Lunarfall Excavation to _level 2_
_You must be at least level 96_ or have _completed the Talador Outpost questline_ to buy this blueprint
Reach level 96 |ding 96 |or
Or
Complete the Talador outpost questline |condition completedq(34981) or completedq(34711) |or
step
label "ExcavB2"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Lunarfall Excavation, Level 2##109576
|only if hasbuilding(61,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Lunarfall Excavation, Level 2##109576
Click on your Lunarfall Excavation and click _Upgrade_ |condition hasbuilding(62,2)
step
label "Excavation3"
Proceeding to Excavation level 3
stickystart "Excav3"
step
#include "A_Garrison_LargeBuilding"
Loot 500 Draenic Stone from True Iron and Blackrock deposits |achieve 9453
And
Reach Level 100 |ding 100
|next "ExcavL3"
step "Excav3"
In order to get the blueprint for the Lunarfall Excavation Level 3, you must be level 100 and complete the _Draenic Stone Collector_ achievement
This requires you to loot 500 Draenic Stone from True Iron and Blackrock deposits
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
|only if not achieved(9453)
step
label "ExcavL3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Lunarfall Excavation, Level 3##111996
|only if not hasbuilding(63)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Lunarfall Excavation, Level 3##111996
Click on your Lunarfall Excavation and click _Upgrade_ |condition hasbuilding(63,3)
step
label "Excavation_End"
You already have a level 3 Lunarfall Excavation!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "HerbGarden"
Redirecting to Herb Garden, Level 1 |next "HerbGarden1" |only if default
Redirecting to Herb Garden, Level 2 |next "HerbGarden2" |only if hasbuilding(29)
Redirecting to Herb Garden, Level 3 |next "HerbGarden3" |only if hasbuilding(136)
Redirecting to Herb Garden end |next "HerbGarden_End" |only if hasbuilding(137)
step
label "HerbGarden1"
In order to build the Herb Garden, you must first reach level 96 and possess a level 2 garrison
Reach level 96 |ding 96
And
Upgrade your garrison to level 2 |condition garrisonlvl(2) or garrisonlvl(3)
step
talk Naron Bloomthistle##85344
accept Clearing the Garden##36404 |goto Lunarfall 58.85,53.49
step
kill 8 Lunarfall Raccoon##85341
Clear the Lunarfall garden of raccoons |q Clearing the Garden##36404/1 |goto Lunarfall 57.80,59.10
step
talk Naron Bloomthistle##85344
turnin Clearing the Garden##36404 |goto 58.90,53.46
step
label "HerbGarden2"
You can now upgrade your Herb Garden to _level 2_
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Herb Garden, Level 2##109577
|only if hasbuilding(29,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Herb Garden, Level 2##109577
Click on your Herb Garden and click _Upgrade_ |condition hasbuilding(136,2)
step
label "HerbGarden3"
Proceeding to Herb Garden level 3
stickystart "Herb3"
step
#include "A_Garrison_LargeBuilding"
Loot 500 Draenic Seeds from herbs in Draenor |achieve 9454
And
Reach Level 100 |ding 100
|next "HerbB3"
step "Herb3"
In order to get the blueprint for the Herb Garden Level 3, you must be level 100 and complete the _Draenic Seed Collector_ achievement
This requires you to loot 500 Draenic Seeds herbs in Draenor
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
|only if not achieved(9454)
step
label "HerbB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Herb Garden, Level 3##111997
|only if not hasbuilding(137,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Herb Garden, Level 3##111997
Click on your Herb Garden and click _Upgrade_ |condition hasbuilding(137,3)
step
label "HerbGarden_End"
You already have a level 3 Herb Garden!
Click here to return to the building menu |next "BuildMenu" |confirm
step
label "Menagerie"
Redirecting to Menagerie, Level 1 |next "Menagerie1" |only if default
Redirecting to Menagerie, Level 2 |next "Menagerie2" |only if hasbuilding(42)
Redirecting to Menagerie, Level 3 |next "Menagerie3" |only if hasbuilding(167)
Redirecting to Menagerie end |next "Menagerie_End" |only if hasbuilding(168)
step
label "Menagerie1"
In order to build the Menagerie, you must first reach level 96 and possess a level 3 garrison
Reach level 96 |ding 96
And
Upgrade your garrison to level 3 |condition garrisonlvl(3)
step
talk Lio the Lioness##85418
accept Pets Versus Pests##36423 |goto 28.55,39.05
step
click Carrotus Maximus##85420
Defeat Carrotus Maximus in a pet battle |q Pets Versus Pests##36423/1 |goto 57.71,60.13
step
click Gnawface##85419
Defeat Gnawface in a pet battle |q Pets Versus Pests##36423/3 |goto 60.13,77.82
step
click Gorefu##85463
Defeat Gorefu in a pet battle |q Pets Versus Pests##36423/2 |goto 57.75,21.80
step
click Lio the Lioness##85418
turnin Pets Versus Pests##36423 |goto 28.70,38.96
step
label "Menagerie2"
You can now upgrade your Menagerie to _level 2_
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Menagerie, Level 2##111998
|only if hasbuilding(42,1)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Menagerie, Level 2##111998
Click on your Menagerie and click _Upgrade_ |condition hasbuilding(167,2)
step
label "Menagerie3"
Proceeding to Menagerie level 3
stickystart "Menag3"
step
#include "A_Garrison_LargeBuilding"
Win 500 pet battles in Draenor |achieve 9463
And
Reach level 100 |ding 100
|next "MenagB3"
step "Menag3"
In order to get the blueprint for the Menagerie Level 3, you must be level 100 and complete the _Draenic Pet Battler_ achievement
This requires you to win 500 pet battles in Draenor
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
_
Click here if you would like to return to the _Building Menu_ |confirm |next "BuildMenu"
|only if not achieved(9463)
step
label "MenagB3"
#include "A_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Menagerie, Level 3##111999
|only if not hasbuilding(168,3)
step
#include "A_Garrison_ArchitectTable"
use Garrison Blueprint: Menagerie, Level 3##111999
Click on your Menagerie and click _Upgrade_ |condition hasbuilding(168,3)
step
label "Menagerie_End"
You already have a level 3 Menagerie!
Click here to return to the building menu |next "BuildMenu" |confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Garrison Quest Guide",[[
description This guide will walk you through the Garrison quests.
step
label "Quest"
Proceeding to garrison quest guide level 1 |next "Quest1" |only if garrisonlvl(1)
Proceeding to garrison quest guide level 2 |next "Quest1" |only if garrisonlvl(2)
Proceeding to garrison quest guide level 3 |next "Quest1" |only if garrisonlvl(3)
step
label "Quest1"
#include "A_Garrison_BAlexston"
accept Keeping it Together##35176
step
#include "A_Garrison_Shelly"
Gather Shelly's report |q Keeping it Together##35176/2
step
#include "A_Garrison_Cache"
Loot the garrison cache |q Keeping it Together##35176/3
step
#include "A_Garrison_Brightstone"
Tell him _"Time to get back to work."_ |q Keeping it Together##35176/1
step
#include "A_Garrison_BAlexston"
turnin Keeping it Together##35176
accept Ship Salvage##35166
step
#include "A_Garrison_Maraad"
accept Pale Moonlight##35174
stickystart "PaleDevour"
step
kill 1 Gnaw Bloodseeker##81670
Kill Gnaw Bloodseeker |q Pale Moonlight##35174/1 |goto Shadowmoon Valley D/0 25.72,5.65
step
click Drudgeboat Salvage##6478
Collect 15 crates of Drudgeboat Salvage. |q Ship Salvage##35166/1 |goto 27.02,6.54
step "PaleDevour"
kill 8 Pale Devourer##79205
Kill Pale Devourers |q Pale Moonlight##35174/2 |goto 26.81,6.80
step
#include "A_Garrison_Maraad"
turnin Pale Moonlight##35174
accept Qiana Moonshadow##34646
step
#include "A_Garrison_BAlexston"
turnin Ship Salvage##35166
step
talk Qiana Moonshadow##79446
Speak with Qiana Moonshadow |q Qiana Moonshadow##34646/1 |goto Shadowmoon Valley D/0 29.93,29.20
step
talk Qiana Moonshadow##81948
turnin Qiana Moonshadow##34646 |goto Lunarfall/0 40.52,54.00
step
#include "A_Garrison_LtThorn"
accept Delegating on Draenor##34692
step
#include "A_Garrison_CommandTable"
Click through the brief tutorial:
Assign your follower to attack:
Use the Command Table |q Delegating on Draenor##34692/1
step
#include "A_Garrison_LtThorn"
turnin Delegating on Draenor##34692
step
#include "A_Garrison_Maraad"
accept Migrant Workers##34778
step
#include "A_Garrison_Zipfizzle"
Tell him _"Very good, Zipfizzle. Move out."_ |q Migrant Workers##34778/1
step
#include "A_Garrison_Yrel"
accept A Hero's Welcome##33075
step
Find Samaara at Embaari Village |q A Hero's Welcome##33075/1 |goto Shadowmoon Valley D/0 46.04,38.92
step
talk Samaara##75005
turnin A Hero's Welcome##33075 |goto 46.04,38.92
accept Dark Enemies##33765
step
kill 8 Shadowmoon Voidmancer##80162
Kill the Shadowmoon Voidmancers |q Dark Enemies##33765/1 |goto 46.89,34.25
step
_Follow_ the path |goto Shadowmoon Valley D 47.3,39.2
talk Prophet Velen##74043
turnin Dark Enemies##33765 |goto 49.12,38.51
step
_Cross_ the bridge here |goto Shadowmoon Valley D 52.1,39.9
talk Foreman Zipfizzle##81912
turnin Migrant Workers##34778 |goto 55.99,32.61
accept Circle the Wagon##34779 |goto 55.99,32.61
step
Locate the missing wagon |q Circle the Wagon##34779/1 |goto 51.30,28.49
step
Defend the camp |q Circle the Wagon##34779/2 |goto 51.30,28.49
step
Escort the laborers back to camp |q Circle the Wagon##34779/3 |goto 55.97,32.85 |tip Follow Vindicator Maraad
step
talk Exarch Akama##80078
turnin Circle the Wagon##34779 |goto 55.97,32.85
step
#include "A_Garrison_LtThorn"
accept Ashran Appearance##36624
step
talk Dungar Longdrink##81103
Tell Dungar to "_Take me to Stormshield in Ashran_" |q Ashran Appearance##36624/1 |goto Lunarfall 47.99,49.81
step
talk Private Tristan##86065
turnin Ashran Appearance##36624 |goto Stormshield 31.99,49.94
accept Host Howell##36626
step
talk Lieutenant Howell##86069
turnin Host Howell##36626
accept Inspiring Ashran##36629 |goto 35.52,75.81
step
talk Jaesia Rosecheer##85956
Speak with Jaesia Rosecheer |q Inspiring Ashran##36629/1 |goto 35.72,77.91
step
talk Vindicator Nuurem##85932
Speak with Vindicator Nuurem |q Inspiring Ashran##36629/3 |goto 46.57,76.70
step
talk Knewbie McGreen##86148
Speak with a new recruit |q Inspiring Ashran##36629/2 |goto 62.65,41.71
step
talk Lieutenant Howell##86069
turnin Inspiring Ashran##36629
accept A Surly Dwarf##36630 |goto 35.52,75.83
step
talk Delvar Ironfist##86084
turnin A Surly Dwarf##36630 |goto 48.0,30.6
accept Delvar Ironfist##36633
step
To pick up the Gloomshade Game Hunter and Lost Lumberjacks quests, you must complete Escape from Shaz'gul |only if not completedq(33081)
Click here to proceed to our Shadowmoon Leveling Guide |confirm |next "Zygor's Alliance Leveling Guides\\Warlords of Draenor 90-100\\Shadowmoon (90-92)" |only if not completedq(33081)
You need to complete the quest _Escape from Shaz'gul_ to proceed |condition completedq(33081) |next "Gloom"
step
label "Gloom"
#include "A_Garrison_ListofIngredients"
accept Gloomshade Game Hunter##33461
step
#include "A_Garrison_KenLoggin"
accept Lost Lumberjacks##34820
step
talk Lost Packmule##79966 |tip The Packmule patrols a short area around the road.
turnin Lost Lumberjacks##34820 |goto Shadowmoon Valley D/0 39.82,30.07
accept Gloomshade Grove##33263
stickystart "Gloomshade"
step
Meet with phlox |goto 39.27,25.64 < 20 |c |q 33263
talk Phlox##74667
Speak with Phlox |q Gloomshade Grove##33263/2 |goto 39.27,25.64
step
click Alliance Sword
Investigate the Pond |q Gloomshade Grove##33263/3 |goto 39.54,22.65
step
talk Phlox##74681
Speak with Phlox |q Gloomshade Grove##33263/4 |goto 39.56,22.78
step
click Alliance Shield##
Investigate the Alliance Shield in the field |q Gloomshade Grove##33263/5 |goto 39.84,19.92
step
talk Phlox##74686
Speak with Phlox |q Gloomshade Grove##33263/6 |goto 39.86,19.98
step
click Dead Packmule##74193
Investigate the Dead Packmule on the beach |q Gloomshade Grove##33263/7 |goto 41.83,18.00
step
talk Phlox##74687
Speak with Phlox |q Gloomshade Grove##33263/8 |goto 41.93,18.01
step
Go to this point in Gloomshade Grotto |q Gloomshade Grove##33263/9 |goto Shadowmoon Valley D/0 47.0,15.1
step
kill Phlox##74244
Kill Phlox and his minions |q Gloomshade Grove##33263/10 |goto 47.1,14.8
step
talk Jarrod Hamby##73877
turnin Gloomshade Grove##33263 |goto 47.09,14.41
accept Game of Thorns##33271 |goto 47.09,14.41
step
talk Ryan Metcalf##74547
accept Prune the Podlings##34806 |goto 47.04,14.35
step
kill Podling Spitter##74147++, Podling Squirt##74148++, Podling Nibbler##74146++, Podling Tender##74149++
Kill Podling creatures |q Prune the Podlings##34806/1 |goto 46.25,15.41
Click the quest completion box in the upper right-hand corner.
turnin Prune the Podlings##34806
step
Follow the path to the Podling King |goto 36.8,21.9
kill 1 King Deathbloom##73888
Kill the Podling King |q Game of Thorns##33271/1 |goto 35.7,19.8
step
talk Shelly Hamby##76748
turnin Game of Thorns##33271 |goto 36.39,19.28
accept Shelly Hamby##35625 |goto 36.39,19.28
step "Gloomshade"
kill 1 Gloomshade Gulper##74176++, Gloomshade Howler##74169++, Gloomshade Fungi##74175++
Gather 3 Gulper Legs from Gloomshade Gulpers |q Gloomshade Game Hunter##33461/3 |goto Shadowmoon Valley D/0 39.5,23.3
Gather 5 Shadowstalker Ribs from Gloomshade Howlers |q Gloomshade Game Hunter##33461/1 |goto 39.61,25.92
Gather 5 Gloomshade Spores from Gloomshade Fungi |q Gloomshade Game Hunter##33461/2 |goto 41.86,17.84
step
#include "A_Garrison_AZerep"
turnin Gloomshade Game Hunter##33461
step
#include "A_Garrison_BBoard"
accept The Southern Wilds##35459
step
talk Prelate Reenu##76200
turnin The Southern Wilds##35459 |goto Shadowmoon Valley D/0 56.96,57.49
step
Reach level 94 |ding 94
step
#include "A_Garrison_CFelsong"
accept Meet Us at Starfall Outpost##33359
step
#include "A_Garrison_BBoard"
accept Bounty: Twisted Ancient##33111
accept The Critical Path##34676
step
kill 1 Twisted Ancient##72785
collect 1 Twisted Lumber##112334 |n
Harvest the corrupted lumber from a Twisted Ancient |q Bounty: Twisted Ancient##33111/1 |goto Shadowmoon Valley D/0 26.24,18.04
step
talk Archmage Khadgar##77184
turnin Meet Us at Starfall Outpost##33359 |goto Shadowmoon Valley D 29.21,25.74
accept Catching His Eye##33062 |goto 29.21,25.66
step
Enter the cave _here_ |goto Shadowmoon Valley D 22.9,16.9
kill 1 All-Seeing Eye##72783
Capture the All-Seeing Eye |q Catching His Eye##33062/1 |goto 21.88,16.08
step
_Follow_ the road to Starfall Outpost |goto Shadowmoon Valley D 27.6,22.3
talk Archmage Khadgar##77184
turnin Catching His Eye##33062 |goto 29.20,25.74
accept Shrouding Stones##33115 |goto 29.20,25.72
step
_Follow_ the road |goto Shadowmoon Valley D 27.5,20.8
click Shrouding Stone
Destroy the Nothern Shrouding Stone |q Shrouding Stones##33115/2 |goto 25.99,15.87
step
_Follow_ the road |goto Shadowmoon Valley D 25.2,21.5
click Shrouding Stone |n
Destroy the Central Shrouding Stone |q Shrouding Stones##33115/1 |goto 23.08,24.47
step
click Shrouding Stone
Destroy the Southern Shrouding Stone |q Shrouding Stones##33115/3 |goto 23.81,28.72
step
_Cross_ the road |goto Shadowmoon Valley D 25.5,26.3
talk Archmage Khadgar##77184
turnin Shrouding Stones##33115 |goto 29.21,25.73
accept Ominous Portents##33112 |goto 29.21,25.73
step
talk All-Seeing Eye##72871
Select "_Begin the Compulsion of the All-Seeing Eye_"
Use the _Vial of Moon Water_ ability three times until the All-Seeing Eye is weakened, then use the _Scripture of Elune_. |q Ominous Portents##33112/1 |goto 28.70,25.23 |tip You will need to repeat this process a few times.
step
talk Archmage Khadgar##77184
turnin Ominous Portents##33112 |goto 29.20,25.74
accept Soul Shards of Summoning##33066 |goto 29.20,25.74
step
talk Cordana Felsong##72637
accept Cleaning Up Gul'var##33269 |goto 29.26,25.71
stickystart "ShadowWarrior"
step
kill 1 Corruptor Kurgoth##72647
collect Kurgoth's Shard##106986 |n
Acquire Kurgoth's Shard |q Soul Shards of Summoning##33066/3 |goto 18.26,24.12
step
kill 1 Fel Mistress Hagra##72677
collect Hagra's Shard |n
Acquire Hagra's Shard |q Soul Shards of Summoning##33066/1 |goto 20.89,27.25
step
kill 1 Grogal the Harvester##72674
collect Grogal's Shard |n
Acquire Grogal's Shard |q Soul Shards of Summoning##33066/2 |goto 20.84,31.52
step "ShadowWarrior"
kill 20 Shadow Warrior##77518+, Gul'var Peon##77522+, Lesser Warlock##77517+
Kill the Gul'var orcs |q Cleaning Up Gul'var##33269/1 |goto 21.22,29.44
step
talk Image of Archmage Khadgar##77417
turnin Soul Shards of Summoning##33066 |goto 19.07,28.56
accept Heart On Fire##33168 |goto 19.07,28.56
step
kill 1 Krosnis##77488
collect 1 Fiery Heart##109205 |n
Retrieve the Fiery Heart from Krosnis |q Heart On Fire##33168/1 |goto 17.74,27.48
step
talk Image of Archmage Khadgar##77417
turnin Heart On Fire##33168 |goto 19.08,28.56
accept Forging the Soul Trap##33114 |goto 19.08,28.56
step
use Gul'var Soul Shards##109224
Stand in front of the forge and use the Soul Shards |q Forging the Soul Trap##33114/1 |goto 19.13,28.64
step
talk Image of Archmage Khadgar##77417
turnin Forging the Soul Trap##33114 |goto 19.07,28.56
accept To Catch a Shadow##33116 |goto 19.07,28.56
step
click Gul'dan##73857
use Gul'dan's Soul Trap##109246
Use the Soul Trap on Gul'dan |q To Catch a Shadow##33116/1 |goto 18.02,30.40
step
kill 1 Razuun##72793
Kill Razuun |q To Catch a Shadow##33116/2 |goto 18.05,30.02
step
talk Archmage Khadgar##77184
turnin To Catch a Shadow##33116 |goto 29.20,25.74
step
talk Cordana Felsong##72637
turnin Cleaning Up Gul'var##33269 |goto 29.26,25.71
step
#include "A_Garrison_BAlexston"
turnin Bounty: Twisted Ancient##33111
step
#include "A_Garrison_Crowler"
accept Shadowmoon Invasion!##37289
Speak with Sergeant Crowler and choose _"Prepare to battle the Shadowmoon Clan"_ |q Shadowmoon Invasion!##37289/1
step
Follow Sergeant Crowler |scenariogoal 25172 |goto Lunarfall/0 45.6,52.0
scenariostage 1
|only if not completedq(37289)
step
kill Shadowmoon Voidaxe##88604
kill 1 Shadowmoon Ritualist##88605
Repel the Shadowmoon Invaders |scenariogoal 27281 |goto Lunarfall/0 45.6,52.0
scenariostage 2
|only if not completedq(37289)
step
kill Shadowmoon Voidaxe##88604
kill 1 Shadowmoon Ritualist##88605
kill 1 Horde Opportunist##87025
kill 1 Darkwing Scavenger##89224
Defend against the Shadowmoon Invaders for _5:00_ |scenariogoal 26775 |goto Lunarfall/0 45.6,52.0 |tip Kill the Horde Opportunist quckly when it spawns.
scenariostage 3
|only if not completedq(37289)
step
Clean up the remaining Shadowmoon Forces |scenariogoal 27227 |goto Lunarfall/0 45.6,52.0 |tip You can revive fallen garrison soldiers by clicking on them before the red drop over them goes empty.
scenariostage 4
|only if not completedq(37289)
step
Return to the center of your garrison |scenariogoal 24584 |goto Lunarfall/0 45.6,52.0
scenariostage 5
|only if not completedq(37289)
step
kill Primordial Horror##88597
Defeat the Void Spawn |scenariogoal 24735 |goto Lunarfall/0 45.6,52.0
scenariostage 6
|only if not completedq(37289)
step
#include "A_Garrison_Crowler"
turnin Shadowmoon Invasion!##37289
step
#include "A_Garrison_DLongdrink"
Tell Dungar "_Take me to my base in Talador_" |q The Critical Path##34676/1
step
talk Foreman Eksos##79133
turnin The Critical Path##34676 |goto Talador/0 69.88,20.81
accept At Your Command##34558
step
click Drafting Table
Use the Drafting table |q At Your Command##34558/1
Build a _Wrynn Artillery Tower_ or _Arcane Sanctum_ |q At Your Command##34558/2 |goto Talador/0 69.8,20.7
step
talk Foreman Eksos##79133
turnin At Your Command##34558 |goto 69.88,20.81
step
Reach level 96 |ding 96
step
talk Baros Alexston##77209
accept Resources in Ashran##37288 |goto Lunarfall/0 31.66,31.16
step
talk Kinkade Jakobs##85849
turnin Resources in Ashran##37288 |goto 29.67,52.90
step
Reach level 97 |ding 97
step
#include "A_Garrison_BBoard"
accept Arakkoa Exodus##36951
step
#include "A_Garrison_DLongdrink"
Ask him _"Please fly me to Spires of Arak"_ |goto Spires of Arak/0 37.3,14.9 |c |noway
|only if not completedq(36951)
step
talk Azik##79539
turnin Arakkoa Exodus##36951 |goto 37.89,18.03
step
Reach level 98 |ding 98
step
#include "A_Garrison_BBoard"
accept Taking the Fight to Nagrand##34674
step
#include "A_Garrison_DLongdrink"
Tell him _"I need a flight to the border of Nagrand"_ |goto Nagrand D/0 91.0,72.1 |c |noway
|only if not completedq(34674)
step
talk Lieutenant Balfor##79263
turnin Taking the Fight to Nagrand##34674 |goto 86.38,66.19
step
Reach level 100 |ding 100
step
#include "A_Garrison_LtThorn"
accept Proving Grounds##37433
step
#include "A_Garrison_LtThorn"
Speak with Lieutenant Thorn and select "_Enter the Proving Grounds_" |q Proving Grounds##37433/1 |goto 40.24,53.58
step
click Soulwell
talk Trial Master Rotun##61636
Select a trial based on your spec (_Damage_ _Tank_ or _Healer_) |scenariogoal 23900 |goto Proving Grounds 50.28,82.32 |tip You will have to defeat 5 waves of enemies.
step
Defeat the 5 waves of enemies. Each wave will get progressively more difficult to kill. |q Proving Grounds##37433/2
step
Click the scenario button on your minimap and choose _"Leave Instance Group"_
Exit the Proving Grounds scenario |goto Lunarfall/0 31.4,32.6 < 200 |c |noway
|only if not completedq(37433)
step
#include "A_Garrison_LtThorn"
turnin Proving Grounds##37433
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Legendary Ring Guide",[[
description This guide will walk you through the Legendary Ring questline.
step
talk Khadgar's Servant##83858 |tip He walks up and down this path.
accept Call of the Archmage##35988 |goto Lunarfall 37.06,38.33 |tip You must be at least level 98 to accept this quest.
step
_Fly_ to Zangarra |goto Talador 80.4,25.3 < 10
Take the _portal_ |goto Talador 80.6,26.1 < 10
talk Archmage Khadgar##83823
turnin Call of the Archmage##35988 |goto Talador 85.18,31.72
accept Spires of the Betrayer##36157 |goto Talador 85.18,31.72
step
Press _I_ and queue for _Skyreach_
Fight through the dungeon, following the path to this point |goto Skyreach/2 29.4,76.3 < 10
Enter the final room |goto Skyreach/2 45.3,41.1 < 10
kill 1 Adept of the Dawn##79467
Pure Solium Band |q Spires of the Betrayer##36157/1 |goto Skyreach/2 52.9,25.2
step
Right click the green eye icon on your mini map and leave the dungeon
talk Archmage Khadgar##83823
turnin Spires of the Betrayer##36157 |goto Talador 85.18,31.72
accept Khadgar's Task##35989 |goto 85.15,31.70
step
talk Archmage Khadgar##83823
Ask him, _"What's the plan, Khadgar?"_
Spoke with Khadgar |q Khadgar's Task##35989/1 |goto Talador/0 85.2,31.7
step
talk Archmage Khadgar##83823
turnin Khadgar's Task##35989 |goto Talador/0 85.2,31.7
accept Core of Flame##35990 |goto Talador/0 85.16,31.69
accept Core of Iron##35991 |goto Talador/0 85.16,31.69
accept Core of Life##35992 |goto Talador/0 85.16,31.69
accept Draenor's Secret Power##36158 |goto Talador/0 85.16,31.69
step
Press _I_ and queue for _The Everbloom HEROIC_
Go through the portal |goto The Everbloom/1 44.4,35.1 < 10
kill 1 Yalnu##83846
Core of Life |q Core of Life##35992/1 |goto The Everbloom/2 44.6,70.0
step
Press _I_ and queue for _Grimrail Depot HEROIC_
Fight through to the end of the dungeon
click Engine Access##
Core of Iron |q Core of Iron##35991/1 |goto Gorgrond/0 54.9,31.9
step
Press _I_ to queue for _Bloodmaul Slag Mine HEROIC_
Fight through the dungeon
kill 1 Gug'rokk##74790
Core of Flame |q Core of Flame##35990/1 |goto Bloodmaul Slag Mines/1 67.9,22.8
step
talk Archmage Khadgar##83823
turnin Core of Life##35992 |goto Talador/0 85.16,31.69
turnin Core of Iron##35991 |goto Talador/0 85.16,31.69
turnin Core of Flame##35990 |goto Talador/0 85.16,31.69
accept Tackling Teron'gor##35993 |goto Talador/0 85.16,31.69
step
Press _I_ and queue for _Auchindoun HEROIC_
Fight through the dungeon
kill 1 Teron'gor##86220
click Corrupted Blood of Teron'gor##
Corrupted Blood of Teron'gor |q Tackling Teron'gor##35993/1 |goto Auchindoun 48.4,30.3
step
talk Archmage Khadgar##83823
turnin Tackling Teron'gor##35993 |goto Talador/0 85.16,31.69
step
You need to collect 4985 Apexis Crystals for Draenor's Secret Power
These can be gathered from:
_Killing Iron Siege Works mobs_ in Frostfire Ridge:
|goto Frostfire Ridge/0 86,53
_Garrison dailies_:
#include "A_Garrison_Warplans"
_Rare Garrison missions_:
#include "A_Garrison_CommandTable"
collect 4985 Apexis Crystals |q Draenor's Secret Power##36158/1
step
talk Archmage Khadgar##83823
turnin Draenor's Secret Power##36158 |goto Talador/0 85.16,31.69
accept Eyes of the Archmage##35994 |goto Talador/0 85.16,31.69
step
talk Archmage Khadgar##83823
Tell him _"I'm ready. Start casting!"_
Khadgar's Spell Complete |q Eyes of the Archmage##35994/1 |goto Talador/0 85.16,31.69
step
talk Archmage Khadgar##83823
turnin Eyes of the Archmage##35994 |goto Talador/0 85.16,31.69
accept Fugitive Dragon##36000 |goto Talador/0 85.16,31.69
step
talk Archmage Khadgar##84702
turnin Fugitive Dragon##36000 |goto Nagrand D/0 77.14,36.83
accept The Dragon's Tale##36206 |goto Nagrand D/0 77.14,36.83
step
First Clue Found |q The Dragon's Tale##36206/1 |goto Nagrand D/0 78.5,35.5
Second Clue Found |q The Dragon's Tale##36206/2 |goto Nagrand D/0 81.1,35.5
Follow the path across the stone bridge |goto Nagrand D/0 82.1,37.1 < 10
Third Clue Found |q The Dragon's Tale##36206/3 |goto Nagrand D/0 83.3,36.5
|only if not completedq(36206)
step
Go up the narrow path |goto Nagrand D/0 85.0,34.7 < 10
Fourth Clue Found |q The Dragon's Tale##36206/4 |goto Nagrand D/0 86.7,38.2
Fifth Clue Found |q The Dragon's Tale##36206/5 |goto Nagrand D/0 89.9,35.6
Locate Kairozdormu |q The Dragon's Tale##36206/6 |goto Nagrand D/0 92.3,31.7
|only if not completedq(36206)
step
talk Archmage Khadgar##84702
turnin The Dragon's Tale##36206 |goto Nagrand D/0 92.34,31.49
accept Tarnished Bronze##35995 |goto 92.33,31.51
step
talk Archmage Khadgar##84702 |goto Nagrand D/0 92.34,31.49
Select your role: DPS, healer, or tank
|confirm |only if not completedq(35995)
step
kill 1 Spirit of Kairozdormu##84744
Run behind one of the rocks when he casts _Ripples in Time_
Spirit of Kairozdormu Slain |q Tarnished Bronze##35995/1 |goto Nagrand D/0 92.4,31.7
step
talk Archmage Khadgar##84702
turnin Tarnished Bronze##35995 |goto Nagrand D/0 92.35,31.47
accept Power Unleashed##36004 |goto 92.35,31.47
step
click Khadgar's Portal##10794  |goto Nagrand D/0 92.3,31.5 < 7 |c
Return to Khadgar's Tower |q Power Unleashed##36004/1 |goto Talador/0 85.2,31.7
step
talk Archmage Khadgar##83823
Tell him _"I am ready, Archmage"_
Khadgar's Spell Complete |q Power Unleashed##36004/2 |goto Talador/0 85.2,31.7
step
talk Archmage Khadgar##83823
turnin Power Unleashed##36004 |goto Talador/0 85.2,31.7
step
talk Archmage Khadgar##83823
accept Empire's Fall##35997 |goto Talador/0 85.16,31.69
accept Legacy of the Sorcerer Kings##35998 |goto 85.16,31.69
step
To continue, you must progress in the _Highmaul_ raid
kill Imperator Mar'gok##87818
Felbreaker's Tome |q Empire's Fall##35997/1
Sigil of the Sorcerer King |q Empire's Fall##35997/2
step
Collect Abrogator Stones
These can be looted from the _Highmaul_ raid, Rare Garrison Missions, and sometimes in Work Orders
Abrogator Stone |q Legacy of the Sorcerer Kings##35998/1
step
talk Archmage Khadgar##83823
turnin Empire's Fall##35997 |goto Talador/0 85.16,31.69
turnin Legacy of the Sorcerer Kings##35998 |goto 85.16,31.69
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\FOLLOWER STARTER GUIDE",[[
description This guide will provide a tutorial for Garrison Followers.
step
label "start"
Choose a section to start:
_Assigning Followers to Garrison Buildings_ |confirm |next "assign"
_Follower Abilities, Traits, and the Lunarfall Inn_ |confirm |next "ability"
_Leveling Followers_ |confirm |next "leveling"
step
label "assign"
Assigning a follower to a Garrison building yields more resources
Each follower has traits and a profession that allow them to be assigned to a building
#include "A_Garrison_ArchitectTable"
Click on your buildings and click the _"+"_ sign to assign an available Follower to that building
Click here to return to the _Main Menu_ |confirm |next "start"
step
label "ability"
_Follower Abilities_
Abilities allow Followers to counter enemies during Garrison Missions. Doing so greatly increases the chance of successfully completing the mission
These abilities are based on class but can be randomly assigned upon gaining that Follower
Click here to continue to _Follower Traits_ |confirm
Click here to return to the _Main Menu_ |confirm |next "start"
step
_Follower Traits_
Traits are special bonuses to your Followers or Garrison missions
Some of these include increased mission success chance if paired with a certain environment or a specific race
Others include reduced mission time, increased experience gain, or increased Garrison resources
Click here to continue to _Lunarfall Inn_ info |confirm
Click here to return to the _Main Menu_ |confirm |next "start"
step
_Lunarfall Inn Info_
After reaching Level 2 with the Lunarfall Inn, you can search for specific Follower abilities and then recruit Followers that have that ability
You can recruit a new Follower this way once every week
Click here to return to the _Main Menu_ |confirm |next "start"
step
label "leveling"
The best way to level up your Followers is through Garrison Missions
Mission bonuses are listed on the right side of each mission. Look for mission that grant _Bonus XP_
Send your followers on missions to level them up
#include "A_Garrison_CommandTable"
Click here to return to the _Main Menu_ |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Abu'gar",[[
description This guilde will walk you through obtaining Abu'gar as a Garrison Follower.
keywords abu'gar blood death knight dark command wild aggression
step
Proceeding to Abu'Gar guide |next "Abugar" |only if default
Proceeding to completed |next "Completed" |only if hasfollower(209)
stickystart "Abu"
step
label "Abugar"
click Abu'Gar's Favorite Lure##233642
collect 1 Abu'Gar's Favorite Lure##114245
Locate part of Abu'gar's Favorite Lure |goto Nagrand D/0 38.36,49.33
step
click Abu'Gar's Finest Reel##233506
collect 1 Abu'Gar's Finest Reel##114243
Locate part of Abu'gar's Favorite Lure |goto Nagrand D/0 85.43,38.74
step
Follow this path |goto Nagrand D/0 69.7,63.8 < 20
Continue along the path |goto Nagrand D/0 66.4,62.9 < 20
click Abu'Gar's Vitality##233157
collect 1 Abu'Gar's Vitality##114242
Locate part of Abu'gar's Favorite Lure |goto Nagrand D/0 65.82,61.14 |tip You will have to drop down to the ledge.
step "Abu"
Abu'gar is a Blood Death Knight follower.
To enlist Abu'gar, you must return his Favorite Lure, Vitality, and Finest Reel
step
talk Abu'gar##82746
accept Abu'Gar##36711 |goto 67.18,56.01
step
label "Completed"
You have recruited _Abu'Gar_
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Admiral Taylor",[[
description This guilde will walk you through obtaining Admiral Taylor as a Garrison Follower.
keywords admiral taylor arms warrior recklessness timed battle inscription
step
Proceeding to guide |next "Guide" |only if default
Proceeding to Admiral Taylor completed |next "FComplete" |only if hasfollower(204)
step
label "Guide"
Proceeding to choose outpost |next "Outpost" |only if default
Proceeding to Admiral Taylor guide |next "Admiral" |only if completedq(35286)
step
label "Outpost"
In order to recruit _Admiral Taylor_ you must quest through Spires of Arak and build the _Brewery_ or _Smuggler's Den_
Building the _Brewery_ excludes you from recruiting _Xiri'ak_
Building the _Smuggler's Den_ excludes you from recruiting _Hulda Shadowblade_
Build an Outpost in Spires of Arak |condition havequest(35286) or completedq(35286)
|next "Admiral"
step
label "Admiral"
talk Jasper Fel##81949
accept Old Friends##35293 |goto Spires of Arak/0 39.8,60.7
step
talk Jasper Fel##81949
turnin Old Friends##35293 |goto Spires of Arak/0 39.2,49.0
accept I See Dead People##35329 |goto Spires of Arak/0 39.2,49.0
step
kill Spectral Laborer##82055+, Restless Foreman##82083
collect 1 Bryan Finn's Schematic##113095 |n
Retrieve Finn's Schematic from ghostly laborers |q I See Dead People##35329/1 |goto Spires of Arak/0 37.5,49.3
step
talk Bryan Finn##82100
Select _"Show the schematic to Bryan"_ |q I See Dead People##35329/2 |goto 39.0,48.8
step
talk Bryan Finn##82100
turnin I See Dead People##35329 |goto 39.0,48.8
accept A Parting Favor##35339 |goto 39.0,48.8
step
kill Complicit Guard##82235+, Coerced Villager##82240+, Haunted Hound##82040+, Ghastly Nightwatch##82038+, Ghastly Guard##82028+, Lingering Rifleman##82029+, Tormented Villager##82027+
collect 6 Spectral Essence##113106+ |n
Gather Spectral Essences from ghostly villagers |q A Parting Favor##35339/1 |goto 37.86,51.60
step
talk Alice Finn##82110 |tip She is located upstairs inside the inn.
Select _"Show the spectral essences to Alice"_ |q A Parting Favor##35339/2 |goto 37.6,51.0
step
talk Alice Finn##82110
turnin A Parting Favor##35339 |goto 37.6,51.0
accept A Piece of the Puzzle##35353 |goto 37.6,51.0
step
kill Watch Commander Branson##82136
Go to the basement of the inn and kill Commander Branson |q A Piece of the Puzzle##35353/1 |goto 37.6,51.0
step
talk Alice Finn##82124
turnin A Piece of the Puzzle##35353 |goto 37.6,51.0
accept Second in Command##35380 |goto 37.54,50.76
step
_Run up_ the stairs |goto Spires of Arak 37.4,50.8 < 10
_Leave_ the building |goto Spires of Arak 37.7,51.3 < 10
_Enter_ the building |goto Spires of Arak 37.4,53.5 < 10
talk Sir Harris##82194
turnin Second in Command##35380 |goto 37.70,53.81
accept Punishable by Death##35407 |goto 37.70,53.81
step
talk Lady Claudia##82212
accept Prime the Cannons##35408 |goto 37.66,53.87
stickystart "killtraitors"
stickystart "armorycannonballs"
step
_Leave_ the building |goto Spires of Arak 37.4,53.5 < 10
click Armory Cannon##12908 |tip It looks like a gray cannon sitting in a building doorway.
get Armory Cannon##113127 |q Prime the Cannons##35408/2 |goto 36.43,53.53
step "armorycannonballs"
click Cannonball##13420 |tip They looks like dark gray balls laying on the ground around this area.
get 10 Armory Cannonball##113122 |q Prime the Cannons##35408/1 |goto 36.95,53.25
step "killtraitors"
from Complicit Guard##82235+, Renegade Cannoneer##82232+
kill 8 Traitors |q Punishable by Death##35407/1 |goto 36.93,53.20
step
_Enter_ the building |goto Spires of Arak 37.4,53.5 < 10
talk Sir Harris##82194
turnin Punishable by Death##35407 |goto 37.68,53.78
step
talk Lady Claudia##82212
turnin Prime the Cannons##35408 |goto 37.64,53.85
accept Admiral Taylor##35482 |goto 37.64,53.85
step
_Leave_ the building |goto Spires of Arak 37.4,53.5 < 10
_Go through_ the doorway |goto Spires of Arak 37.0,55.2 < 10
Find Admiral Taylor |q Admiral Taylor##35482/1 |goto 36.82,56.90
Watch the dialogue
kill Soulscythe##82314 |q Admiral Taylor##35482/2 |goto 36.82,56.90
kill Ephial##82320 |q Admiral Taylor##35482/3 |goto 36.81,57.42
step
talk Admiral Taylor##82375
turnin Admiral Taylor##35482 |goto 36.82,56.94
step
talk Jasper Fel##82403
accept Honoring a Hero##35549 |goto 36.85,56.74
step
talk Lieutenant Willem##81929
turnin Honoring a Hero##35549 |goto 39.90,60.86
step
talk Admiral Taylor##85080
accept For Old Times' Sake##36353 |goto 39.98,60.66
step
label "FComplete"
You have recruited Admiral Taylor
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Ahm",[[
description This guilde will walk you through obtaining Ahm as a Garrison Follower.
keywords ahm arms warrior heroic leap danger zones enchanting
step
To recruit Soulbinder Tuulani, you must first reach level 95
Reach level 95 |ding 95
step
You must also build the _Wrynn Artillery Tower_ or _Arcane Sanctum_ in Talador
Build your Talador Outpost |condition completedq(34563) or completedq(34631)
step
talk Ahm##77031
accept Dying Wish##33973 |goto Talador/0 56.90,25.96
step
kill 1 Blademaster Bralok##76981
collect Ahm's Heirloom##108825 |n
Retrieve Ahm's Heirloom |q Dying Wish##33973/1 |goto Talador/0 57.1,24.4
step
talk Ahm##77031
turnin Dying Wish##33973 |goto Talador/0 56.90,25.96
step
talk Ahm##85777
accept Solidarity In Death##36522 |goto Lunarfall/0 53.3,69.1
step
You have recruited Ahm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Aknor Steelbringer",[[
description This guilde will walk you through obtaining Aknor Steelbringer as a Garrison Follower.
keywords aknor steelbringer arms warrior cleave minion swarms
step
_Aknor Steelbringer_ is recruited by completing the achievement _The Steel Has Been Brought_
This requires you to defeat _Flamebender Ka'graz_ in the _Blackrock Foundry_ raid on _Normal_ difficulty or higher
During the encounter, you must keep _Aknor Steelbringer_ alive
Complete _The Steel Has Been Brought_ |achieve 8929
step
You have recruited Aknor Steelbringer.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Apprentice Artificer Andren",[[
description This guilde will walk you through obtaining Apprentice Artificer Andren as a Garrison Follower.
keywords apprentice artificer andren arms warrior heroic leap danger zones engineering
step
Proceeding to Apprentice Artificer Andren guide |next "Andren" |only if not completedq(34788)
Proceeding to completed |next "Completed" |only if completedq(34788)
stickystart "disclaimer"
step
label "Andren"
In order to recruit Apprentice Artificer Andren, you must quest through Shadowmoon Valley and complete the following quests:
Fun with Fungus |condition completedq(34784)
Shut'er Down |condition completedq(35070)
Engorged Goren |condition completedq(34786)
step
talk Exarch Akama##80078
accept Exarch Maladaar##34787 |goto Shadowmoon Valley D/0 56.51,23.59
step
_Follow_ the winding pathway |goto Shadowmoon Valley D 59.0,24.9 < 20
talk Exarch Maladaar##80073
turnin Exarch Maladaar##34787 |goto 59.52,30.37
accept Trust No One##35552 |goto 59.52,30.37
step
_Go up_ the stairs and follow the trail |goto Shadowmoon Valley D 60.0,26.6 < 20
Discover the Infiltrator's Hideout  |q Trust No One##35552/1 |goto 61.32,25.19
step
kill 1 Sister of Secrets##82881
click Shadow Council Tome of Curses##
turnin Trust No One##35552 |goto 60.94,24.44
accept Warning the Exarchs##34791 |goto 60.94,24.44
step
talk Exarch Maladaar##80073
turnin Warning the Exarchs##34791 |goto 62.44,26.28
accept Speaker for the Dead##34789 |goto 62.44,26.28
step
talk Exarch Maladaar##80073 |tip He's standing behind the building.
Begin the Ritual  |q Speaker for the Dead##34789/1 |goto 66.44,26.16
Defend Hataaru's Spirit  |q Speaker for the Dead##34789/2 |goto 66.44,26.16
step
talk Exarch Maladaar##80073 |tip He's standing behind the building.
turnin Speaker for the Dead##34789 |goto 66.44,26.17
accept The Traitor's True Name##34792 |goto 66.44,26.17
step
click Maladaar's Focusing Lens##
_Cross_ the bridge and _go up_ the hill |goto Shadowmoon Valley D 62.9,21.8 < 20
Plant the Focusing Lens  |q The Traitor's True Name##34792/1 |goto 60.58,20.56
step
kill 1 Exarch Othaar##80076
kill 1 Socrethar##82625
Reveal the Traitor  |q The Traitor's True Name##34792/2 |goto 60.48,20.70
Deal with the Traitor  |q The Traitor's True Name##34792/3 |goto 60.48,20.70
step
talk Exarch Maladaar##80073
turnin The Traitor's True Name##34792 |goto 62.58,26.22
step
talk Exarch Naielle##80079
accept Friend of the Exarchs##34788 |goto 62.48,26.22
step
You can choose one of these NPC's for a follower:
talk Apprentice Artificer Andren##82489
talk Rangari Chel##82491
talk Vindicator Onaala##82492
Choose a Follower  |q Friend of the Exarchs##34788/1 |goto 62.41,26.22
step "disclaimer"
This questline allows you to choose one of three followers:
Apprentice Artificer Andren
Rangari Chel
Vindicator Onaala
You cannot earn the other followers after you have chosen one.
step
talk Exarch Naielle##80079
turnin Friend of the Exarchs##34788 |goto 62.48,26.22
step
label "Completed"
You have recruited _Apprentice Artificer Andren_ |only if hasfollower(184)
You have already chosen _Rangari Chel_, you cannot recruit _Apprentice Artificer Andren_ |only if hasfollower(185)
You have already chosen _Vindicator Onaala, you cannot recruit _Apprentice Artificer Andren_ |only if hasfollower(186)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Artificer Romuul",[[
description This guilde will walk you through obtaining Artificer Romuul as a Garrison Follower.
keywords artificer romuul holy paladin rebuke powerful spell jewelcrafting
stickystart "Rom"
step
label "Rommul"
talk Romuul##74741 |goto Shadowmoon Valley D/0 42.8,40.4
Talk to Romuul and tell him _"Of course."_
kill 1 Windfang Matriarch##75434
kill 1 Windfang Runner##75431+
kill 1 Windfang Matriarch##75434+
Defeat the waves of wolves that attack
accept Artificer Romuul##35614
step "Rom"
This is a mini-event that is a random spawn. Keep checking back frequently.
step
You have recruited Artificer Romuul
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Blook",[[
description This guilde will walk you through obtaining Blook as a Garrison Follower.
keywords blook fury warrior recklessness timed battle combat experience
step
Follow this path up |goto Gorgrond/0 42.6,90.9 < 20
talk Blook##78030
Ask him _"What?"_
Defeat Blook in combat.
accept I Am Blook##34279 |goto 41.33,91.45
step
You have recruited Blook
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Bruma Swiftstone",[[
description This guilde will walk you through obtaining Bruma Swiftstone as a Garrison Follower.
keywords bruma swiftstone subtlety rogue fan of knives minion swarms alchemy
step
label "Bruma"
In order to recruit Bruma Swiftstone, you must complete the garrison mission _Killing the Corrupted_ |tip Qiana Moonshadow is designed for this mission.
#include "A_Garrison_CommandTable"
Continue completing garrison missions until _Killing the Corrupted_ is completed
collect Contract: Bruma Swiftstone##114826 |n
use Contract: Bruma Swiftstone##114826 |n
Recruit Bruma Swiftstone |condition hasfollower(153)
step
You have recruited Bruma Swiftstone
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Cleric Maluuf",[[
description This guilde will walk you through obtaining Cleric Maluuf as a Garrison Follower.
keywords cleric maluuf holy priest prayer of healing group damage
step
label "Maluuf"
To recruit Cleric Maluuf you must reach revered with Council of Exarchs
Reach revered reputation with the _Council of Exarchs_ |condition rep("Council of Exarch")>= Revered
_
If you have purchased our reputation guide, click here to proceed to the Council of Exarchs guide |next "Zygor's Alliance Reputations Guides\\Warlords of Draenor\\Council of Exarchs" |confirm
step
talk Vindicator Nuurem##85932
buy 1 Contract: Cleric Maluuf##119162 |n
use Contract: Cleric Maluuf##119162 |n
Recruit _Cleric Maluuf_ |condition hasfollower(459)
step
You have recruited Cleric Maluuf
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Croman",[[
description This guilde will walk you through obtaining Croman as a Garrison Follower.
keywords croman retribution paladin divine shield massive strike
step
label "Croman"
Croman is unlocked by completing the achievement _Come With Me If You Want To Live_ in the _Heroic Bloodmaul Slag Mines_
To do this, you must kill _Slave Watcher Crushto_ and free _Croman_. You must then clear the rest of the instance while keeping Croman alive
Complete _Come With Me If You Want To Live_ |achieve 9005
step
You have recruited Croman
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Dagg",[[
description This guilde will walk you through obtaining Dagg as a Garrison Follower.
keywords dagg subtlety rogue sap deadly minions
step
Proceeding to Dagg guide |next "Dagg" |only if default
Proceeding to completed |next "Completed" |only if hasfollower(32)
step
label "Dagg"
click Thunderlord Cage |goto Frostfire Ridge/0 65.8,60.8 < 1
Free Dagg from his cage
|confirm
step
click Thunderlord Cage |goto Frostfire Ridge/0 39.5,28.1 < 1
Free Dagg from his cage
|confirm
step
talk Dagg##79492
accept Services of Dagg##34733 |goto Lunarfall/0 62.08,74.90
step
label "Completed"
You have recruited Dagg
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Daleera Moonfang",[[
description This guilde will walk you through obtaining Daleera Moonfang as a Garrison Follower.
keywords daleera moonfang holy priest dispel magic debuff
step
label "Daleera"
In order to recruit Daleera Moonfang, you must complete the _Rangari Rescue_ garrison mission
#include "A_Garrison_CommandTable"
Continue completing garrison missions until _Rangari Rescue_ is completed
collect Contract: Daleera Moonfang##112848 |n
use Contract: Daleera Moonfang##112848 |n
Recruit Daleera Moonfang |condition hasfollower(463)
step
You have recruited Daleera Moonfang
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Dawnseeker Rukaryx",[[
description This guilde will walk you through obtaining Dawnseeker Rukaryx as a Garrison Follower.
keywords dawnseeker rukaryx balance druid hurricane minion swarms
step
This follower's contract is purchased in Stormshield, Ashran for _5,000 gold_ and _5,000 Apexis Crystals_
talk Dawn-Seeker Krek##86391
collect 1 Contract: Dawnseeker Rukaryx##119248 |n |goto Stormshield/0 50.2,61.1
use Contract: Dawnseeker Rukaryx##119248
Recruit Dawnseeker Rukaryx |condition hasfollower(462)
step
You have recruited Dawnseeker Rukaryx
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Defender Illona",[[
description This guilde will walk you through obtaining Defender Illona as a Garrison Follower.
keywords defender illona protection paladin reckoning wild aggression bodyguard
step
label "Illona"
talk Defender Illona##79979
accept Gatekeepers of Auchindoun##34777 |goto Talador/0 57.43,51.11
step
talk Soulbinder Halaari##79977
Tell him: _"So be it._"
kill 1 Soulbinder Halaari##79977 |q Gatekeepers of Auchindoun##34777/2 |goto 57.33,52.65 |tip This is a tough fight, you may need a friend to help you.
step
talk Vindicator Dalu##79970
Tell him: "_Very well. Let us fight._"
kill 1 Vindicator Dalu##79970 |q Gatekeepers of Auchindoun##34777/1 |goto 57.39,52.77 |tip This is a tough fight, you may need a friend to help you.
step
talk Defender Illona##79979
turnin Gatekeepers of Auchindoun##34777 |goto 57.43,51.11
accept The True Path##36519 |goto 57.42,51.12
turnin The True Path##36519 |goto 57.42,51.12
step
You have recruited Defender Illona
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Delvar Ironfist",[[
description This guilde will walk you through obtaining Delvar Ironfist as a Garrison Follower.
keywords delvar ironfist unholy death knight bone shield bodyguard massive strike
step
Proceeding to Delvar Ironfist guide |next "Delvar" |only if default
Proceeding to completed |next "Completed"|only if hasfollower(216)
step
label "Delvar"
To recruit Delvar Ironfist, you must first complete the quest Delegating on Draenor
Complete Delegating on Draenor |condition completedq(34692)
step
#include "A_Garrison_LtThorn"
accept Ashran Appearance##36624
step
talk Dungar Longdrink##81103
Tell Dungar to "_Take me to Stormshield in Ashran_" |q Ashran Appearance##36624/1 |goto Lunarfall 47.99,49.81
step
talk Private Tristan##86065
turnin Ashran Appearance##36624 |goto Stormshield 31.99,49.94
accept Host Howell##36626
step
talk Lieutenant Howell##86069
turnin Host Howell##36626
accept Inspiring Ashran##36629 |goto 35.52,75.81
step
talk Jaesia Rosecheer##85956
Speak with Jaesia Rosecheer |q Inspiring Ashran##36629/1 |goto 35.72,77.91
step
talk Vindicator Nuurem##85932
Speak with Vindicator Nuurem |q Inspiring Ashran##36629/3 |goto 46.57,76.70
step
talk Knewbie McGreen##86148
Speak with a new recruit |q Inspiring Ashran##36629/2 |goto 62.65,41.71
step
talk Lieutenant Howell##86069
turnin Inspiring Ashran##36629
accept A Surly Dwarf##36630 |goto 35.52,75.83
step
talk Delvar Ironfist##86084
turnin A Surly Dwarf##36630 |goto Stormshield 48.0,30.6
accept Delvar Ironfist##36633 |goto Stormshield 48.0,30.6
step
label "Completed"
You have recruited _Delvar Ironfist_
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Fiona",[[
description This guilde will walk you through obtaining Fiona as a Garrison Follower.
keywords fiona holy priest prayer of healing group damage
step
label "Fiona"
talk Fiona##76204
accept Fiona's Solution##33787
accept Swamplighter Queen##33808 |goto Shadowmoon Valley D/0 53.60,57.28
stickystart "Fio"
step
kill 1 Swamplighter Queen##77314
Swamplighter Queen's tail obtained |q Swamplighter Queen##33808/1 |goto 51.62,55.13
step "Fio"
kill 1 Swamplighter Drone##82371+, Swamplighter Worker##82370+
kill 1 Twilight Riverbeast##83455
kill 1 Riot Blossom##82427
click Moonlit Herb##3365
collect 3 Moonlit Herb##108409 |n
Gather Riverbeast Heart |q Fiona's Solution##33787/1
Gather Swamplighter Venom |q Fiona's Solution##33787/2
Gather Riotvine |q Fiona's Solution##33787/3
Gather Moonlit Herbs |q Fiona's Solution##33787/4 |goto 51.41,57.58
step
talk Fiona##76204
turnin Fiona's Solution##33787
turnin Swamplighter Queen##33808
accept Cooking With Unstable Herbs##33788 |goto 53.60,57.28
step
talk Fiona##76204
Tell her _"I'm ready, Fiona."_ |q Cooking With Unstable Herbs##33788/1
Assist Fiona in brewing the curative elixir |q Cooking With Unstable Herbs##33788/2 |goto Shadowmoon Valley D/0 53.6,57.3 |tip You will need to add the ingredients she specifies until complete.
step
clicknpc Gidwin Goldbraids##80862
Use the curative elixir on Gidwin |q Cooking With Unstable Herbs##33788/3 |goto 53.63,57.26
step
talk Fiona##76204
turnin Cooking With Unstable Herbs##33788 |goto 53.60,57.28
step
talk Rangari Arepheon##80727
accept Blademoon Bloom##35014 |goto 53.70,57.28
step
talk Rangari Arepheon##80781
turnin Blademoon Bloom##35014
accept Gestating Genesaur##35015 |goto 55.66,71.98
step
kill 1 Blooming Genesaur##80662
Defeat the Genesaur |q Gestating Genesaur##35015/1 |goto 56.06,73.11
step
talk Rangari Arepheon##80781
turnin Gestating Genesaur##35015 |goto 55.66,71.98
step
talk Fiona##76204
accept Fiona##35617 |goto 53.60,57.28
step
You have recruited Fiona
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Glirin",[[
description This guilde will walk you through obtaining Glirin as a Garrison Follower.
keywords glirin survival hunter feign death wild aggression
step
Proceeding to build check |next "BuildCheck" |only if default
Proceeding to Glirin completed |next "FComplete" |only if hasfollower(211)
Proceeding to Pitfighter Vaandaam completed |next "FComplete" |only if hasfollower(176)
step
label "BuildCheck"
Proceeding to Outpost |next "Outpost" |only if default
Proceeding to Glirin guide |next "Glirin" |only if completedq(35212)
Proceeding to Sparring Arena built |next "SparCompleted" |only if completedq(35685)
step
label "Outpost"
In order to recruit _Glirin_ you must quest through Gorgrond and build the _Highpass Logging Camp_
Building the _Highpass Logging Camp_ excludes you from recruiting _Pitfighter Vaandaam_
Build the Highpass Logging Camp |condition havequest(35212) or completedq(35212)
_
Or, click here to proceed to the _Pitfighter Vaandaam_ guide |next "Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Pitfighter Vaandaam" |confirm
|next "Glirin"
step
label "Glirin"
To recruit Glirin, you must complete the following Gorgrond quests:
Complete "Tangleheart" |condition completedq(35708)
Complete "Growing Wood" |condition completedq(35652)
Complete "Lost Lumberjack" |condition completedq(36368)
Complete "Chapter I: Plant Food" |condition completedq(35654)
Complete "Chapter II: The Harvest" |condition completedq(35651)
Complete "Chapter III: Ritual of the Charred" |condition completedq(35650)
step
talk Glirin##85119
accept Lumber, I Hardly Knew 'Er##36828 |goto Gorgrond 53.0,59.8
|next "FComplete"
step
label "SparCompleted"
You have built the _Highpass Sparring Arena_ in Gorgrond, you cannot recruit _Glirin_
If you would like to proceed to the _Pitfighter Vaandaam_ guide, click here |next "Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Pitfighter Vaandaam" |confirm
step
label "FComplete"
You have recruited _Glirin_ |only if hasfollower(211)
You have already recruited _Pitfighter Vaandaam_. You cannot recruit _Glirin_ |only if hasfollower(176)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Goldmane the Skinner",[[
description This guilde will walk you through obtaining Goldmane the Skinner as a Garrison Follower.
keywords goldmane the skinner assassination rogue sprint danger zones skinning
step
Proceeding to Goldmane the Skinner guide |next "Goldmane" |only if default
Proceeding to completed |next "Completed" |only if hasfollower(170)
step
label "Goldmane"
To recruit Goldmane the Skinner, you must first achieve level 99
Reach level 99 |ding 99
step
kill Bolkar the Cruel##80080
collect Goldmane's Cage Key##111863
Retrieve Goldmane's cage key from Bolkar the Cruel |goto Nagrand D/0 40.40,76.20 |tip He is at the top of the tower.
step
clicknpc Goldmane the Skinner##80083
Release Goldmane from his cage
talk Goldmane the Skinner##80083 |goto Nagrand D/0 40.4,76.2
accept Feline Friends Forever##35596
step
label "Completed"
You have recruited Goldmane the Skinner
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Hulda Shadowblade",[[
description This guilde will walk you through obtaining Hulda Shadowblade as a Garrison Follower.
keywords hulda shadowblade assassination rogue kick powerful spell skinning
step
Proceeding to guide |next "Guide" |only if default
Proceeding to Hulda Shadowblade completed |next "FComplete" |only if hasfollower(453)
Proceeding to Ziri'ak completed |next "FComplete" |only if hasfollower(168)
step
label "Guide"
Proceeding to choose outpost |next "Outpost" |only if default
Proceeding to Hulda Shadowblade guide |next "Hulda" |only if completedq(37327)
Proceeding to Smuggler's Den completed |next "SmugCompleted" |only if completedq(35699)
step
label "Outpost"
In order to recruit _Hulda Shadowblade_ you must quest through Spires of Arak, build the _Brewery_, and complete the quest "Befriending the Locals"
Building the _Brewery_ excludes you from recruiting _Xiri'ak_
Build the Brewery |condition havequest(37327) or completedq(37327)
_
Or, click here to proceed to the _Ziri'ak_ guide |next "Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Ziri'ak" |confirm
|next "Hulda"
step
label "Hulda"
talk Dusk-Seer Irizzar##83463
turnin Befriending the Locals##37327 |goto Spires of Arak/0 43.89,48.89
accept A Lack of Wasps##37296 |goto 43.89,48.89
step
kill 8 Widow Wasp##84865 |q A Lack of Wasps##37296/1 |goto 43.58,47.01
You can find more around [44.6,49.5]
step
talk Dusk-Seer Irizzar##83463
turnin A Lack of Wasps##37296 |goto 43.91,48.90
step
talk Dusk-Seer Irizzar##83463
accept Not Here, Not Now##37331 or accept 37329 |goto 43.8,48.8
step
talk Lieutenant Willem##81929
turnin Not Here, Not Now##37331 or turnin 37329 |goto 39.8,60.8
step
talk Hulda Shadowblade##83549
accept Attempted Murder##35915 |goto 39.66,60.84
step
_Run behind_ the building |goto Spires of Arak 39.4,60.9 < 10
talk Firn Swiftbreeze##83567
Tell him _"Take me to Shadow's Vigil."_
Secure a Flight to Shadow's Vigil |q Attempted Murder##35915/1 |goto Spires of Arak/0 39.1,61.8
step
talk Hulda Shadowblade##83609
turnin Attempted Murder##35915 |goto 52.10,23.54
accept Assassin's Mark##35926 |goto 52.10,23.54
step
clicknpc Vigilant Outcast##83633 |tip They look like dead arrakoa on the ground around this area.
get Assassin's Mark##113577 |q Assassin's Mark##35926/1 |goto Spires of Arak 53.5,23.2
step
_Run down_ the path |goto Spires of Arak 53.5,25.2 < 20
talk Hulda Shadowblade##83773
turnin Assassin's Mark##35926 |goto 53.57,27.48
accept The Power of Poison##35959 |goto 53.57,27.48
accept Extrinsic Motivation##36023 |goto 53.57,27.48
stickystart "motivation"
step
Use the _Vial of Wracking Poison_ |use Vial of Wracking Poison##113587
Kill enemies around this area |tip As you attack, you will question them to gain information.
Learn the name and location of G.V. |q The Power of Poison##35959/1 |goto 54.10,28.58
step "motivation"
kill 4 Shattered Hand Sightless##83749 |q Extrinsic Motivation##36023/1 |goto 54.10,28.58
kill 3 Shattered Hand Harvester##83706 |q Extrinsic Motivation##36023/2 |goto 54.10,28.58
kill 1 Shattered Hand Blood-Singer##83760 |q Extrinsic Motivation##36023/3 |goto 54.10,28.58
step
_Follow_ the path up |goto Spires of Arak 54.2,28.6 < 10
talk Hulda Shadowblade##83773
turnin The Power of Poison##35959 |goto 53.54,27.49
turnin Extrinsic Motivation##36023 |goto 53.54,27.49
accept Gardul Venomshiv##36029 |goto 53.54,27.49
step
_Follow_ the road |goto Spires of Arak 53.9,29.9 < 20
kill Gardul Venomshiv##83834 |q Gardul Venomshiv##36029/1 |goto 56.24,33.98
step
_Run up_ the path |goto Spires of Arak 56.3,34.0 < 10
talk Hulda Shadowblade##83900
turnin Gardul Venomshiv##36029 |goto 57.13,34.50
accept We Have Him Now##36048 |goto 57.13,34.50
stickystart "poisonbarrels"
step
_Run up_ the path |goto Spires of Arak 58.7,36.1 < 10
from Gardul Venomshiv##83923
get Venomshiv's Secret Formula##113635 |q We Have Him Now##36048/1 |goto 58.16,33.35
step "poisonbarrels"
from Shattered Hand Brewer##83940+
click Poison Barrel## |tip They look like wooden barrels with a green ring around the middle of them on the ground around this area.
get 6 Poison Barrel##113630 |q We Have Him Now##36048/2 |goto 58.42,34.51
step
talk Hulda Shadowblade##83904
turnin We Have Him Now##36048 |goto 57.14,34.49
accept No Time to Waste##36165 |goto 57.14,34.49
step
talk Kolrigg Stoktron##84261
_Administer the antidote to Kolrigg._
Administer the Spiresalve |q No Time to Waste##36165/1 |goto 39.67,60.84
step
talk Kolrigg Stoktron##84261
turnin No Time to Waste##36165 |goto 39.67,60.84
step
talk Hulda Shadowblade##88195 |tip It takes a moment for her to walk out.
accept Standing United##37281 |goto 39.73,60.88
turnin Standing United##37281 |goto 39.73,60.88
|next "FComplete"
step
label "SmugCompleted"
You have built the _Smuggler's Den_ in Spires of Arak, you cannot recruit _Hulda Shadowblade_
If you would like to proceed to the _Ziri'ak_ guide, click here |next "Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Ziri'ak" |confirm
step
label "FComplete"
You have recruited _Hulda Shadowblade_ |only if hasfollower(453)
You have already recruited _Ziri'ak_. You cannot recruit _Hulda Shadowblade_ |only if hasfollower(168)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Image of Archmage Vargoth",[[
description This guilde will walk you through obtaining Image of Archmage Vargoth as a Garrison Follower.
keywords image of archmage vargoth mage counterspell powerful spell
stickystart "Varg"
step
label "Vargoth"
To recruit Image of Archmage Vargoth, you must first reach level 100
Reach level 100 |ding 100
step
Enter here |goto Frostfire Ridge/0 67.3,33.4
click Mysterious Boots##229333
accept Mysterious Boots##34464
Find Vargoth's Mysterious Boots |goto Frostfire Ridge/0 68.0,18.9
step
click Mysterious Ring##229330
accept Mysterious Ring##34463
Find Vargoth's Mysterious Ring |goto Gorgrond/0 39.7,39.9
step
click Mysterious Hat##
accept Mysterious Hat##34465
Find Vargoth's Mysterious Hat |goto Talador/0 45.3,37.1
step
click Mysterious Staff##
accept Mysterious Staff##34466
Find Vargoth's Mysterious Staff |goto Nagrand D/0 46.4,16.0
step "Varg"
You must find and return Vargoth's Mysterious Hat, Ring, Boots, and Staff.
step
click Khadgar's Portal |goto Talador/0 80.6,26.1
Take the portal to Khadgar's Tower |goto Talador/0 83.6,31.0 |c |noway
|only if not completedq(36027)
step
talk Zooti Fizzlefury##86949 |goto Talador/0 85.0,31.1
turnin Mysterious Boots##34464
turnin Mysterious Ring##34463
turnin Mysterious Hat##34465
turnin Mysterious Staff##34466
step
talk Zooti Fizzlefury##86949
accept Temporal Juxtaposition##34472 |goto 85.0,31.1
step
talk Image of Archmage Vargoth##77853
turnin Temporal Juxtaposition##34472 |goto 84.54,31.68 |tip Wait for the scene to complete.
accept The Staff of Archmage Vargoth##36027
step
You have recruited Image of Archmage Vargoth
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Kimzee Pinchwhistle",[[
description This guilde will walk you through obtaining Kimzee Pinchwhistle as a Garrison Follower.
keywords kimzee pinchwhistle combat rogue sprint danger zones engineering
step
label "Kimzee"
To recruit Kimzee Pinchwhistle, you must first reach level 96
Reach level 96 |ding 96
step
talk Kimzee Pinchwhistle##81109
accept Defungination##35077 |goto Spires of Arak/0 61.47,72.93
step
talk Engineer Gazwitz##81128
accept Spore-be-Gone##35079 |goto 61.45,72.95
step
talk Exterminator Lemmy##85062
accept Unwanted Pests##36179 |goto 62.56,73.90
stickystart "Kim"
step
use QR58 Flame Blaster##112683
Burn 20 Spore Pustules |q Defungination##35077/1 |goto 63.4,74.6
step
clicknpc Spore-be-Gone Turret##81135
Activate the turrets |q Spore-be-Gone##35079/1 |goto 63.54,75.03
step "Kim"
kill 1 Spore Drifter##81138+, Fungal Hulk##82243+
Slay 10 spore creatures |q Unwanted Pests##36179/1 |goto 63.45,75.15
step
talk Kimzee Pinchwhistle##81109
turnin Defungination##35077 |goto Spires of Arak/0 61.47,72.93
step
talk Engineer Gazwitz##81128
turnin Spore-be-Gone##35079 |goto 61.45,72.95
turnin Unwanted Pests##36179
step
talk Kimzee Pinchwhistle##81109
accept The Mother Lode##35080 |goto 61.47,72.93
step
Meet up with Kimzee Pinchwhistle |q The Mother Lode##35080/1 |goto 59.12,79.17
talk Kimzee Pinchwhistle##81109
turnin The Mother Lode##35080
accept Getting the Crew Back Together##35082
step
talk Engineer Gazwitz##81784
accept Clearing Out Before Cleaning Up##35081 |goto 59.09,79.22
stickystart "Clearing"
step
clicknpc Injured Crewman##82317
Revive Injured Crew members |q Getting the Crew Back Together##35082/1 |goto 59.9,81.1
step "Clearing"
kill 1 Crimsonwing Wasp##81168+
Slay Crimsonwing Wasps |q Getting the Crew Back Together##35082/1 |goto 59.9,81.1
step
talk Kimzee Pinchwhistle##81109 |goto 59.12,79.17
turnin Getting the Crew Back Together##35082
step
talk Engineer Gazwitz##81784
turnin Clearing Out Before Cleaning Up##35081 |goto 59.09,79.22
accept Follow that Hotrod!##35285
step
talk Kimzee Pinchwhistle##81972
turnin Follow that Hotrod!##35285 |goto 58.48,92.32
accept The Right Parts for the Job##35090
accept Skimming Off The Top##35089
step
talk Krixel Pinchwhistle##81443
accept Field Trial##36384 |goto 58.49,92.20
step
clicknpc Infected Bruiser##81184
use Vial of Untested Serum##115475
Test the Serum |q Field Trial##36384/1 |goto 57.90,90.96
step
kill 1 Volatile Sludge##81524+
collect Volatile Oil##112906 |n
Gather 4 Volatile Oil from Volatile Sludges |q Skimming Off The Top##35089/1 |goto 57.90,89.91
step
clicknpc Broken Shredder##81370
use G-14 Buster Rocket##112698
click Serviceable Gear##7000
collect Serviceable Gear##112634 |n
Use the Buster Rocket on Broken Shredders to gather parts. |q The Right Parts for the Job##35090/1 |goto 58.32,89.64
step
talk Krixel Pinchwhistle##81443
turnin Field Trial##36384 |goto 58.49,92.20
step
talk Kimzee Pinchwhistle##81978
turnin The Right Parts for the Job##35090
turnin Skimming Off The Top##35089
accept Sporicide##35091 |goto 58.82,92.83
step
talk Krixel Pinchwhistle##81443
accept Preventing the Worst##35211
accept Curing With Force##36428 |goto 58.48,92.20
stickystart "Firebomb"
step
clicknpc Infected Bruiser##81184
use Vial of Refined Serum##115533
Cure Infected Goblins with the Refined Serum |q Curing With Force##36428/1 |goto 56.61,91.05
step "Firebomb"
click Firebomb
Place the Firebombs around this area |q Preventing the Worst##35211/1 |goto 56.74,91.19 |tip There is one bomb in each building
step
kill 1 Spore Shambler##82265
Slay Spore Shamblers |q Sporicide##35091/1 |goto 56.78,93.63
step
talk Krixel Pinchwhistle##81443
turnin Preventing the Worst##35211 |goto 58.48,92.20
turnin Curing With Force##36428 |goto 58.48,92.20
step
talk Kimzee Pinchwhistle##81978
turnin Sporicide##35091 |goto 58.82,92.83
step
talk Krixel Pinchwhistle##81443
accept Flame On##35298 |goto 58.48,92.21
step
click Firebomb Plunger##9277
Activate the Firebomb Plunger |q Flame On##35298/1 |goto 58.50,92.24
step
clicknpc Repaired Flying Machine##81567
Ride on Kimzee's Flying Machine |q Flame On##35298/2 |goto 58.86,92.83
step
talk Kimzee Pinchwhistle##82468
turnin Flame On##35298 |goto 61.60,72.84
accept Kimzee Pinchwhistle##36062 |goto 61.60,72.84
step
You have recruited Kimzee Pinchwhistle
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Lantresor of the Blade",[[
description This guilde will walk you through obtaining Lantresor of the Blade as a Garrison Follower.
keywords lantresor of the blade arms warrior heroic leap danger zones mining
step
talk Vindicator Mo'mor##80624
accept They Call Him Lantresor of the Blade##34951 |goto Nagrand D/0 63.48,61.86
step
talk Lantresor of the Blade##80161
turnin They Call Him Lantresor of the Blade##34951
accept The Blade Itself##34954 |goto 85.42,54.61
accept Not Without My Honor##34955 |goto 85.42,54.61
stickystart "Locker"
step
kill 1 Instructor Luhk##80236
collect Lantresor's Blade##111938 |n
Retrieve Lantresor's Blade from Luhk |q The Blade Itself##34954/1 |goto Nagrand D/0 87.2,53.8
step "Locker"
collect Blademaster's Banner##111947 |n
Loot _Burning Blade Footlockers_ all round the area.
Retrieve the Blademaster's Banner from lockers inside the buildings |q Not Without My Honor##34955/1 |goto 85.48,54.79
step
talk Lantresor of the Blade##80161
turnin The Blade Itself##34954 |goto 85.42,54.61
turnin Not Without My Honor##34955 |goto 85.42,54.61
accept Meet Me in the Cavern##34956 |goto 85.42,54.60
step
turnin Meet Me in the Cavern##34956 |goto Nagrand D/10 85.42,54.60
accept Challenge of the Masters##34957 |goto Nagrand D/10 44.79,19.84
step
click Burning Blade Sword |goto Nagrand D/10 53.3,68.7
Pull the blade from the ground |q Challenge of the Masters##34957/1 |goto 53.27,68.71
step
kill 1 Packleader Dran'ruk##80326
kill 1 Gorn##80324
kill 1 Sesk##80325
kill 1 Warlord Dharl of the Thrice-Bloodied Bla##80327
Complete the Challenge of the Masters |q Challenge of the Masters##34957/2 |goto 53.27,68.71
step
talk Rangari D'kaan##79576
turnin Challenge of the Masters##34957 |goto Nagrand D/0 63.5,61.9
step
talk Lantresor of the Blade##81790
accept The Honor of a Blademaster##34747 |goto 64.24,59.55
step
You have recruited Lantresor of the Blade
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Leeroy Jenkins",[[
description This guilde will walk you through obtaining Leeroy Jenkins as a Garrison Follower.
keywords leeroy jenkins retribution paladin divine storm minion swarms
step
label "Leeroy"
In order to recruit Leeroy Jenkins, you must complete the achievement _Leeeeeeeeeeeeeroy...?_ in heroic Upper Blackrock Spire
To do so, you must resurrect Leeroy's corpse in the Rookery after killing Kyrak, then clear all trash and bosses up to the _Beast_ in 15 minutes
Complete the achievement Leeeeeeeeeeeeeroy...? |achieve 9058
step
You have recruited Leeroy Jenkins
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Leorajh",[[
description This guilde will walk you through obtaining Leorajh as a Garrison Follower.
keywords leorajh restoration shaman chain heal group damage bodyguard
step
label "Leorajh"
To recruit Leorajh, you must first reach level 96
Reach level 96 |ding 96
step
Climb the mountain _here_ |goto Spires of Arak/0 55.0,68.2 |tip You can make it up, you will have to be very careful and follow the ridge.
Follow the path _up_ |goto Spires of Arak/0 55.4,67.1
Continue _up_ the path |goto Spires of Arak/0 55.8,65.6
_Enter_ the cave |goto Spires of Arak/0 55.0,65.0 |tip You will need to kill Sun Charged Guardians.
Follow the cave _left_ |goto Spires of Arak/0 55.4,63.5
talk Leorajh##87561
accept Leorajh, the Enlightened##37168 |goto 54.21,62.97
step
You have recruited Leorajh
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Magister Serena",[[
description This guilde will walk you through obtaining Magister Serena as a Garrison Follower.
keywords magister serena frost mage counterspell powerful spell
step
Proceeding to guide |next "Guide" |only if default
Proceeding to Magister Serena completed |next "FComplete" |only if hasfollower(154)
Proceeding to Miall completed |next "FComplete" |only if hasfollower(155)
step
label "Guide"
Proceeding to choose outpost |next "Outpost" |only if default
Proceeding to Magister Serena guide |next "Serena" |only if completedq(34631)
Proceeding to Artillery Tower completed |next "ArtCompleted" |only if completedq(34563)
step
label "Outpost"
In order to recruit _Magister Serena_ you must quest through Talador and build the _Arcane Sanctum_
Building the _Arcane Sanctum_ excludes you from recruiting _Miall_
Build the Arcane Sanctum |condition havequest(34631) or completedq(34631)
_
Or, click here to proceed to the _Miall_ guide |next "Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Miall" |confirm
|next "Serena"
step
label "Serena"
Follow the path up |goto Talador/0 61.8,68.3
talk Magister Serena##80608
accept While We're in the Neighborhood##34909 |goto Talador/0 69.94,69.46
accept Vicious Viziers##34910 |goto 69.94,69.46
accept Orbs of Power##34911 |goto 69.94,69.46
stickystart "astralwards"
stickystart "gordunnibeads"
step
_Go up_ the stairs |goto Talador 68.5,79.0
kill 1 Vizier Vorgorsh##80294 |q Vicious Viziers##34910/1 |goto 68.53,82.94 |tip He's inside the stone building.
step
kill 1 Vizier Zulmork##80292 |q Vicious Viziers##34910/2 |goto 67.1,77.0 |tip He's inside the stone building.
step
kill 1 Vizier Cromaug##80295 |q Vicious Viziers##34910/3 |goto 66.30,80.94 |tip He's inside the stone building.
step "astralwards"
click Astral Ward## |tip They are all around this area, usually next to Astral Protectors.
Destroy Astral Wards |q Orbs of Power##34911/1 |goto 66.53,80.22
You can find more here |goto Talador 69.4,79.7
step "gordunnibeads"
kill Gordunni Cleaver##79234+, Gordunni Basher##79231+
get 10 Gordunni Runebeads##112088 |q While We're in the Neighborhood##34909/1 |goto 65.99,79.47
step
talk Magister Serena##80617 |tip If you are in Gordal Fortress, she will be next to you.
turnin While We're in the Neighborhood##34909 |goto 66.48,78.92
turnin Vicious Viziers##34910 |goto 66.63,78.87
turnin Orbs of Power##34911 |goto 66.63,78.87
accept The Final Step##34912 |goto 66.63,78.87
step
use Scroll of Mass Teleportation##112543
kill 1 Witch Lord Morkurk##80335 |q The Final Step##34912/1 |goto 64.07,81.79
step
click Arcane Nexus##
get Arcane Nexus##112196 |q The Final Step##34912/2 |goto Talador 64.2,81.8
step
talk Magister Serena##80617 |tip If you are in Gordal Fortress, she will be next to you.
turnin The Final Step##34912 |goto 64.28,81.85
accept Due Cause to Celebrate##34711 |goto 64.28,81.85
Wait for Magister Serena to teleport you |goto Talador 69.7,20.8 < 100 |c |q 34711
step
talk Magister Serena##80672
turnin Due Cause to Celebrate##34711 |goto 69.73,20.79
accept Joining the Ranks##34993 |goto 69.73,20.79
|next "FComplete"
step
label "ArtCompleted"
You have built the _Wrynn Artillery Tower_ in Talador, you cannot recruit _Magister Serena_
If you would like to proceed to the _Miall_ guide, click here |next "Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Miall" |confirm
step
label "FComplete"
You have recruited _Magister Serena_ |only if hasfollower(154)
You have already recruited _Miall_. You cannot recruit _Magister Serena_ |only if hasfollower(155)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Meatball",[[
description This guilde will walk you through obtaining Meatball as a Garrison Follower.
keywords meatball fury warrior recklessness timed battle
stickystart "Brawl"
step
When Goredome begins casting Lumbering Charge, move out of the red circle
Defeat Goredome |condition ZGV:GetReputation(1691).friendRep>=250
step
Avoid Sanoriak's _Firewall_ ability. There is always a safe opening to run through
_Interrupt Flame Buffet_ always
Sanoriak will also cast _Fireball_ and _Pyroblast_. This damage is manageable
Defeat Sanoriak |condition ZGV:GetReputation(1691).friendRep>=500
step
Smash has a _2 minute enrage_ timer
Kill the goblins that Smash carries first
When Smash casts _Shield Waller_, attack him from behind
Melee classes will need cooldowns to mitigate his damage
Smash is succeptable to crowd control abilities. Use this to your advantage
Defeat Smash Hoofstomp |condition ZGV:GetReputation(1691).friendRep>=750
step
_Kill Akama's Feral Spirit wolves_
Akama will gain stacks of _Shadow Strikes_, increasing his damage. Save cooldowns for the last half of the fight
Akama will also cast _Chain Lightning_ and _Thunderstorm_. These abilities are of little concern
Defeat Akama |condition ZGV:GetReputation(1691).friendRep>=1000
step
Dippy has a melee ability called _Peck_. If you are in melee range when the cast is finished, it will kill you
When Dippy takes damage, he is knocked back
You should prioritize _fast attacks_
Melee classes will need to maximize damage during stuns to beat the 2 minute enrage timer
Defeat Dippy |condition ZGV:GetReputation(1691).friendRep>=1250
step
Kirrawk will summon a tornado through Twisting Winds. Lead the tornado and make it hit him
_Interrupt Storm Cloud_ whenever possible
Defeat Kirrawk |condition ZGV:GetReputation(1691).friendRep>=1500
step
Kukala's only source of damage is from high physical damage melee attacks
Melee classes need to utilize defensive cooldowns to survive Kukala's physical damage
Ranged classes need to _snare and kite_ Kukala, being mindful of his _Dash_ speed increase ability
Defeat King Kukala |condition ZGV:GetReputation(1691).friendRep>=1750
step
DPS Fran and Riddoh _evenly_
Move to avoid Fran's _Throw Dynamite_ ability
Riddoh will trap you in a net while Fran places bombs around you. _Move immediately_ to avoid damage
Defeat Fran & Riddoh |condition ZGV:GetReputation(1691).friendRep>=2000
step
As the fight goes on, Blat will make copies of himself. These copies move slow and die when Blat dies
Avoid the copies of Blat and kill him before the copies overwhelm you
Defeat Blat |condition ZGV:GetReputation(1691).friendRep>=2250
step
_Avoid Fire Line_, a line of fire that spawns in front of Vian
_Avoid Fireballs_ spawned by Volatile Flames. More will appear as the fight progresses
_Do not interrupt Lava Burst_. Vian's melee attack does more damage than this ability
Defeat Vian the Voltile |condition ZGV:GetReputation(1691).friendRep>=2500
step
_Keep running_ around Ixx to avoid _Devastating Thrust_
Ixx deals high physical damage. Utilize defensive cooldowns to mitigate this damage
Defeat Ixx |condition ZGV:GetReputation(1691).friendRep>=2750
step
Mazhareen gains increased damage as her health lowers
_Save defensive cooldowns_ for the last half of the fight
Defeat Mazhareen |condition ZGV:GetReputation(1691).friendRep>=3000
step
_Kill Explosive Chickens_
Keep moving to _avoid Electric P.E.C.K._
_Ignore_ the Well Fed Chickens
Defeat Tyson Sanders |condition ZGV:GetReputation(1691).friendRep>=3250
step
Nibbleh is a VERY difficult fight
Melee will need to constantly backpedal and kite him in a circle around the room
Nibbleh will leave green pools on the ground. Each time he contacts a pool, he will gain increased damage and take less damage.
Kite Nibbleh and DPS him quickly before his stacks get to high
Defeat Nibbleh |condition ZGV:GetReputation(1691).friendRep>=3500
step
Every time Dominika takes damage, she creates a copy of herself with 1 hit point
These copies, like her, cast _Arcane Barrage_
Periodically, _kill the copies_ she spawns and resume DPS
_Interrupt her_ whenever possible
Defeat Dominika the Illusionist |condition ZGV:GetReputation(1691).friendRep>=3750
step
Meatball has a _60 second enrage_ timer
Whenever damage, Meatball _drops purple orbs_ which will increase your damage and heal you
Stacking these orbs is the only way to defeat him before the enrage timer
Spend the first _30-45 seconds_
Defeat Meatball |condition ZGV:GetReputation(1691).friendRep>=4000
step "Brawl"
To recruit _Meatball_, you must reach _rank 5_ in the Brawler's Guild and defeat him.
step
talk Meatball##86272
accept Meatball##36702 |goto Deeprun Tram/2 62.18,25.66
step
You have recruited Meatball
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Miall",[[
description This guilde will walk you through obtaining Vindicator Miall as a Garrison Follower.
keywords miall fury warrior shield wall massive strike
step
Proceeding to guide |next "Guide" |only if default
Proceeding to Miall completed |next "FComplete" |only if hasfollower(155)
Proceeding to Magister Serena completed |next "FComplete" |only if hasfollower(154)
step
label "Guide"
Proceeding to choose outpost |next "Outpost" |only if default
Proceeding to Miall guide |next "Miall" |only if completedq(34563)
Proceeding to Arcane Sanctum completed |next "ArcCompleted" |only if completedq(34631)
step
label "Outpost"
In order to recruit _Miall_ you must quest through Talador and build the _Wrynn Artillery Tower_
Building the _Wrynn Artillery_ excludes you from recruiting _Magister Serena_
Build the Wrynn Artillery Tower |condition havequest(34563) or completedq(34563)
_
Or, click here to proceed to the _Miall_ guide |next "Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Miall" |confirm
|next "Miall"
step
label "Miall"
talk Foreman Eksos##79133
turnin At Your Command##34558 |goto Talador 69.87,20.81
accept The Quarry Quandary##34563 |goto Talador 69.87,20.81
step
Go through_ the doorway |goto Talador 69.0,20.8 < 10
Find Master Smith Ared |q The Quarry Quandary##34563/1 |goto 69.24,19.34
|modelnpc Master Smith Ared##79160
step
talk Apprentice Miall##79159
turnin The Quarry Quandary##34563 |goto 69.24,19.34
accept In Ared's Memory##35045 |goto 69.24,19.34
step
_Go through_ the doorway |goto Talador 69.0,20.8 < 20
talk Olivia Abbington##81358
home Fort Wrynn |goto Talador 69.7,21.8
step
_Enter_ the big metal building |goto Talador 69.8,20.6 < 10
Meet with Miall at the Armory |q In Ared's Memory##35045/1 |goto 70.14,20.10
|modelnpc Miall##79329
step
talk Miall##79329
turnin In Ared's Memory##35045 |goto Talador 70.2,20.1
accept Out of Jovite##34571 |goto Talador 70.2,20.1
accept Iridium Recovery##34573 |goto Talador 70.2,20.1
accept Gas Guzzlers##34624 |goto Talador 70.2,20.1
stickystart "joviteAT"
stickystart "gorengasAT"
step
_Leave_ the big metal building |goto Talador 69.8,20.6 < 10
_Enter_ the mine |goto 75.31,22.37 < 20
from Iridium Geode##80072
get 8 Igneous Elemental Chunk##107472 |q Iridium Recovery##34573/1 |goto 75.70,21.09
step "joviteAT"
click Jovite Ore##10861 |tip They look like bright green ore nodes all along the cave walls.
get 12 Jovite Ore##111906 |q Out of Jovite##34571/1 |goto 75.70,21.09
step "gorengasAT"
from Glowgullet Devourer##79190+, Glowgullet Shardshedder##80013+
Use the _Goren Gas Extractor_ on their corpses |use Goren Gas Extractor##111910
Gather 6 Goren Gas Samples |q Gas Guzzlers##34624/1 |goto 75.70,21.09
|modelnpc Glowgullet Devourer##79190
|modelnpc Glowgullet Shardshedder##80013
step
_Enter_ the big metal building |goto Talador 69.8,20.6 < 10
talk Miall##79329
turnin Out of Jovite##34571 |goto Talador 70.2,20.1
turnin Iridium Recovery##34573 |goto Talador 70.2,20.1
turnin Gas Guzzlers##34624 |goto Talador 70.2,20.1
accept Going to the Gordunni##34578 |goto Talador 70.2,20.1
step
_Follow_ the stone path |goto Talador 59.3,68.3 < 20
talk Miall##80628
turnin Going to the Gordunni##34578 |goto 62.56,67.83
accept Dropping Bombs##34976 |goto 62.56,67.83
step
clicknpc Gordunni Boulderthrower##80428 |tip It looks like a big stone and wooden contraption.
Destroy the Base Catapult |q Dropping Bombs##34976/1|goto 63.61,68.98
step
_Run up_ the path |goto Talador 63.9,69.8 < 10
clicknpc Gordunni Boulderthrower##80428 |tip It looks like a big stone and wooden contraption.
Destroy the Central Catapult |q Dropping Bombs##34976/2 |goto Talador 65.5,68.8
step
clicknpc Gordunni Boulderthrower##80428 |tip It looks like a big stone and wooden contraption.
Destroy th Summit Catapult |q Dropping Bombs##34976/3 |goto Talador 66.8,67.9
step
_Run up_ the path |goto Talador 67.5,68.6 < 10
click Miall's Grappling Hook##7548 |tip It looks like a small rope coiled around a tiny wooden post on the ground.
Use the Grappling Hook |q Dropping Bombs##34976/4 |goto 69.00,69.06
step
talk Miall##80628 |tip She's on the ground, next to the stone pillar.
turnin Dropping Bombs##34976 |goto 69.63,69.82
accept Supply Recovery##34977 |goto 69.63,69.82
accept Punching Through##34979 |goto 69.63,69.82
accept Prized Repossessions##34978 |goto 69.63,69.82
stickystart "ironhorde"
stickystart "guardianmace"
step
_Cross_ the bridge |goto Talador 69.5,73.7 < 20
_Go up_ the stairs |goto Talador 68.5,79.0 < 10
kill Vizier Vorgorsh##80294 |q Punching Through##34979/1 |goto 68.53,82.94 |tip He's inside the stone building.
step
_Run up_ the stairs |goto Talador 67.8,79.5 < 10
kill Vizier Zulmork##80292 |q Punching Through##34979/2 |goto 67.1,77.0 |tip He's inside the stone building.
step
kill Vizier Cromaug##80295 |q Punching Through##34979/3 |goto 66.30,80.94 |tip He's inside the stone building.
step "ironhorde"
clicknpc Iron Horde Shipment##80957 |tip They look like wooden and metal chests on the ground all around this area.
Obtain 6 Iron Horde Shipment |q Supply Recovery##34977/1 |goto 69.13,77.64
step "guardianmace"
from Gordunni Cleaver##79234+, Gordunni Basher##79231+, Gordunni Warcrier##81764+
get 6 Shattrath Guardian Mace##112504 |q Prized Repossessions##34978/1 |goto 65.99,79.47
step
Next to you: |tip If you are in Gordal Fortress, she will be next to you.
talk Miall##80630
turnin Supply Recovery##34977
turnin Punching Through##34979
turnin Prized Repossessions##34978
accept The Lord of the Gordunni##34980
step
_Go up_ the stairs |goto Talador 65.5,80.1 < 10
kill Witch Lord Morkurk##80335 |q The Lord of the Gordunni##34980/1 |goto 64.07,81.79
Use the _Emergency Rocket Pack_ |use Emergency Rocket Pack##112307 |tip Use this when he is almost done casting Astral Annihilation.
step
talk Miall##80630
turnin The Lord of the Gordunni##34980 |goto 64.51,81.77
accept The Only Way to Travel##34981 |goto 64.51,81.77
Wait for Miall to fly you |goto Talador 69.7,20.8 < 100 |noway |c |q 34981 |only if havequest(34981)
step
talk Miall##80968
turnin The Only Way to Travel##34981 |goto 69.78,20.75
accept Armor Up##34982 |goto 69.78,20.75
turnin Armor Up##34982 |goto 69.78,20.75
|next "FComplete"
step
label "ArtCompleted"
You have built the _Arcane Sanctum_ in Talador, you cannot recruit _Miall_
If you would like to proceed to the _Magister Serena_ guide, click here |next "Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Magister Serena" |confirm
step
label "FComplete"
You have recruited _Miall_ |only if hasfollower(155)
You have already recruited _Magister Serena_. You cannot recruit _Miall_ |only if hasfollower(154)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Millhouse Manastorm",[[
description This guilde will walk you through obtaining Millhouse Manastorm as a Garrison Follower.
keywords millhouse manastorm arcane mage polymorph deadly minions
step
label "ManaSt"
talk Millhouse Manastorm##88009 |tip He is located upstair is your Lunarfall Inn. If he has not spawned, you can switch the location of your medium garrison buildings to force him to spawn.
accept For the Children!##37179 |goto Lunarfall/0 44.3,48.7
Open the Looking for Group panel and queue for the _Heroic_ version of the _Upper Blackrock Spire_ dungeon |goto Upper Blackrock Spire 2/1 37.3,29.1 < 100 |c |noway
|only if not completedq(37179)
step
collect 1 Miniature Iron Star##118645 |n
Retrieve the Miniature Iron Star for Millhouse Manastorm |q For the Children!##37179/1 |goto Upper Blackrock Spire 2/3 34.5,54.5
step
talk Millhouse Manastorm##88009 |tip He is located upstair is your Lunarfall Inn. If he has not spawned, you can switch the location of your medium garrison buildings to force him to spawn.
turnin For the Children!##37179 |goto Lunarfall/0 44.3,48.7
step
You have recruited Millhouse Manastorm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Nat Pagle",[[
description This guilde will walk you through obtaining Nat Pagle as a Garrison Follower.
keywords nat pagle marksmanship hunter freezing trap deadly minions angler swamp
step
Proceeding to build check |next "BuildCheck" |only if default
Proceeding to Nat Pagle guide |next "Completed" |only if hasfollower(202)
step
label "BuildCheck"
Proceeding to build |next "Build" |only if default
Proceeding to Nat Pagle guide |next "Nat" |only if hasbuilding(135,3)
step
label "Build"
In order to recruit _Nat Pagle_ you must have a level 3 _Fishing Shack_
Build level 3 Fishing Shack |condition hasbuilding(135,3) |next "Nat"
_
Or, click here to proceed to the garrison building guide |next "Zygor's Alliance Leveling Guides\\Garrisons\\Garrison Building Guide" |confirm
step
label "Nat"
talk Segumi##85708
accept Luring Nat##36870 |goto Lunarfall/0 54.80,15.00
step
collect 1 Arcane Trout##118041
Catch an Arcane Trout |q Luring Nat##36870/1 |goto Shadowmoon Valley D/0 48.50,34.20
step
talk Segumi##85708
turnin Luring Nat##36870
accept Finding Nat Pagle##36608 |goto Lunarfall/0 54.80,15.00
step
talk Nat Pagle##63721
turnin Finding Nat Pagle##36608
accept The Great Angler Returns##36609
Travel to the Angler's Wharf in Krasarang Wilds and deliver the Arcane Trout to Nat Pagle |goto Krasarang Wilds/0 68.40,43.40
step
talk Segumi##85708
turnin The Great Angler Returns##36609 |goto Lunarfall/0 54.80,15.00
step
talk Nat Pagle##85984
accept A True Draenor Angler##36611 |goto Lunarfall/0 53.80,13.80
step
use Nat's Hookshot##116755
collect 1 Fire Ammonite Lunker##116748
Fish up a Fire Ammonite Lunker in Frostfire Ridge |q A True Draenor Angler##36611/1 |goto Frostfire Ridge/0 42.10,46.50
step
use Nat's Hookshot##116755
collect 1 Blackwater Whiptail Lunker##116749
Fish up a Blackwater Whiptail Lunker in Talador |q A True Draenor Angler##36611/2 |goto Talador/0 68.90,58.20
step
use Nat's Hookshot##116755
collect 1 Blind Lake Sturgeon Lunker##116750
Fish up a Blind Lake Sturgeon Lunker in Shadowmoon Valley |q A True Draenor Angler##36611/3 |goto Shadowmoon Valley D/0 47.90,35.10
step
use Nat's Hookshot##116755
collect 1 Abyssal Gulper Lunker##116751
Fish up a Abyssal Gulper Lunker in Spires of Arak |q A True Draenor Angler##36611/4 |goto Spires of Arak/0 51.30,32.80
step
use Nat's Hookshot##116755
collect 1 Jawless Skulker Lunker##116752
Fish up a Jawless Skulker Lunker in Gorgrond |q A True Draenor Angler##36611/5 |goto Gorgrond/0 52.10,61.20
step
use Nat's Hookshot##116755
collect 1 Fat Sleeper Lunker##116753
Fish up a Fat Sleeper Lunker in Nagrand |q A True Draenor Angler##36611/6 |goto Nagrand D/0 62.80,61.00
step
talk Nat Pagle##85984
turnin A True Draenor Angler##36611
accept An Angler on Our Team##36616 |goto Lunarfall/0 53.80,13.80
step
label "Completed"
You have recruited Nat Pagle
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Phylarch the Evergreen",[[
description This guilde will walk you through obtaining Phylarch the Evergreen as a Garrison Follower.
keywords phylarch evergreen restoration druid entangling roots evergreen deadly minions swamp
step
Proceeding to Phylarch the Evergreen guide |next "BuildCheck" |only if default
Proceeding to completed |next "Completed" |only if hasfollower(194)
step
label "BuildCheck"
Proceeding to build |next "Build" |only if default
Proceeding to Phylarch the Evergreen guide |next "Phylarch" |only if hasbuilding(138,3)
step
label "Build"
To recruit Phylarch the Evergreen you must have a level 3 _Lumber Mill_.
Build a level 3 Lumber Mill |condition hasbuilding(138,3) |next "Phylarch"
To proceed to the garrison building guide, click here |next "Zygor's Alliance Leveling Guides\\Garrisons\\Garrison Building Guide" |confirm
step
label "Phylarch"
#include "A_Garrison_MediumBuilding"
talk Justin Timberlord##84248
accept Tree-i-cide##36195
step
clicknpc Large Timber##168641
Harvest a large timber sample |q Tree-i-cide##36195/1 |goto Shadowmoon Valley D/0 33.90,25.45
step
#include "A_Garrison_MediumBuilding"
talk Justin Timberlord##84248
turnin Tree-i-cide##36195
step
To recruit Phylarch the Evergreen, you will need to log large timber. Nagrand is a good spot for this
After fighting him 3 times, Phylarch the Evergreen will join your garrison.
click Large Timber##234007
accept Phylarch the Evergreen##36296
step
label "Completed"
You have recruited Phylarch the Evergreen
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Pitfighter Vaandaam",[[
description This guilde will walk you through obtaining Pitfighter Vaandaam as a Garrison Follower.
keywords pitfighter vaandaam windwalker monk provoke wild aggression
step
Proceeding to guide |next "Guide" |only if default
Proceeding to Pitfighter Vaandaam completed |next "FComplete" |only if hasfollower(176)
Proceeding to Glirin completed |next "FComplete" |only if hasfollower(211)
step
label "Guide"
Proceeding to choose outpost |next "Outpost" |only if default
Proceeding to Pitfighter Vaandaam guide |next "Bloodsport" |only if completedq(35686)
Proceeding to Highpass Lumber Yard completed |next "LumCompleted" |only if completedq(35212)
step
label "Outpost"
In order to recruit _Pitfighter Vaandaam_ you must quest through Gorgrond and build the _Highpass Sparring Arena_
Building the _Highpass Sparring Arena_ excludes you from recruiting _Glirin_
Build the Highpass Sparring Arena |condition havequest(35676) or completedq(35676)
_
Or, click here to proceed to the _Glirin_ guide |next "Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Glirin" |confirm
|next "Bloodsport"
step
label "Bloodsport"
To recruit Pitfighter Vaandaam, you must complete the quest _The Axe of Kor'gall_
Complete the quest _The Axe of Kor'gall_ |condition completedq(34703)
|next "FComplete"
step
label "LumCompleted"
You have built the _Highpass Lumber Yard_ in Talador, you cannot recruit _Pitfighter Vaandaam_
If you would like to proceed to the _Glirin_ guide, click here |next "Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Glirin" |confirm
step
label "FComplete"
You have recruited _Pitfighter Vaandaam_ |only if hasfollower(176)
You have already recruited _Glirin_. You cannot recruit _Pitfighter Vaandaam_ |only if hasfollower(211)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Pleasure-Bot 8000",[[
description This guilde will walk you through obtaining Pleasure-Bot 8000 as a Garrison Follower.
keywords pleasure-bot 8000 fury warrior recklessness timed battle tailoring
step
talk Torben Zapblast##79901
accept Clear!##34761 |goto Talador/0 62.9,50.4
step
kill 1 Lakebottom Zapper##79636
Gather Zapper Sacs from Lakebottom eels |q Clear!##34761/1 |goto 61.62,49.86
step
talk Torben Zapblast##79901
turnin Clear!##34761 |goto Talador/0 62.9,50.4
step
talk Pleasure-Bot 8000##79853
accept New Owner##35239 |goto 62.89,50.44 |tip You will need to wait for 30-60 seconds for Pleasure-Bot to activate.
step
You have recruited Pleasure-Bot 8000
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Professor Felblast",[[
description This guilde will walk you through obtaining Professor Felblast as a Garrison Follower.
keywords professor felblast destruction warlock metamorphosis timed battle
step
label "Felblast"
To purchase the contract for _Professor Felblast_, you must be revered with the _Steamwheedle Preservation Society_
Reach revered with the _Steamwheedle Preservation Society_ |condition rep("Steamwheedle Preservation Society")>= Revered
step
talk Gazrix Gearlock##88482 |goto Stormshield/0 42.9,77.8
buy Contract: Professor Felblast##119165 |n
use Contract: Professor Felblast##119165 |n
Recruit Professor Fellblast |condition hasfollower(460)
step
You have recruited Professor Fellblast!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Qiana Moonshadow",[[
description This guilde will walk you through obtaining Qiana Moonshadow as a Garrison Follower.
keywords qiana moonshadow guardian druid growl wild aggression
step
To recruit Qiana Moonshadow, you must first quest through Shadowmoon Valley and complete the quest _"Build Your Barracks"_
Complete Build Your Barracks |condition completedq(34587)
step
label "Qiana"
#include "A_Garrison_Maraad"
accept Qiana Moonshadow##34646
step
talk Qiana Moonshadow##79446
Speak with Qiana Moonshadow |q Qiana Moonshadow##34646/1 |goto Shadowmoon Valley D/0 29.93,29.20
step
talk Qiana Moonshadow##81948
turnin Qiana Moonshadow##34646 |goto Lunarfall/0 40.52,54.00
step
label "Completed"
You have recruited Qiana Moonshadow
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Rangari Chel",[[
description This guilde will walk you through obtaining Rangari Chel as a Garrison Follower.
keywords rangari chel marksmanship hunter multi-shot minion swarms
step
Proceeding to Rangari Chel guide |next "Chel" |only if not completedq(34788)
Proceeding to completed |next "FComplete" |only if completedq(34788)
stickystart "disclaimer"
step
label "Chel"
In order to recruit Rangari Chel, you must quest through Shadowmoon Valley and complete the following quests:
Fun with Fungus |condition completedq(34784)
Shut'er Down |condition completedq(35070)
Engorged Goren |condition completedq(34786)
step
talk Exarch Akama##80078
accept Exarch Maladaar##34787 |goto Shadowmoon Valley D/0 56.51,23.59
step
_Follow_ the winding pathway |goto Shadowmoon Valley D 59.0,24.9 < 20
talk Exarch Maladaar##80073
turnin Exarch Maladaar##34787 |goto 59.52,30.37
accept Trust No One##35552 |goto 59.52,30.37
step
_Go up_ the stairs and follow the trail |goto Shadowmoon Valley D 60.0,26.6 < 20
Discover the Infiltrator's Hideout  |q Trust No One##35552/1 |goto 61.32,25.19
step
kill 1 Sister of Secrets##82881
click Shadow Council Tome of Curses##
turnin Trust No One##35552 |goto 60.94,24.44
accept Warning the Exarchs##34791 |goto 60.94,24.44
step
talk Exarch Maladaar##80073
turnin Warning the Exarchs##34791 |goto 62.44,26.28
accept Speaker for the Dead##34789 |goto 62.44,26.28
step
talk Exarch Maladaar##80073 |tip He's standing behind the building.
Begin the Ritual  |q Speaker for the Dead##34789/1 |goto 66.44,26.16
Defend Hataaru's Spirit  |q Speaker for the Dead##34789/2 |goto 66.44,26.16
step
talk Exarch Maladaar##80073 |tip He's standing behind the building.
turnin Speaker for the Dead##34789 |goto 66.44,26.17
accept The Traitor's True Name##34792 |goto 66.44,26.17
step
click Maladaar's Focusing Lens##
_Cross_ the bridge and _go up_ the hill |goto Shadowmoon Valley D 62.9,21.8 < 20
Plant the Focusing Lens  |q The Traitor's True Name##34792/1 |goto 60.58,20.56
step
kill 1 Exarch Othaar##80076
kill 1 Socrethar##82625
Reveal the Traitor  |q The Traitor's True Name##34792/2 |goto 60.48,20.70
Deal with the Traitor  |q The Traitor's True Name##34792/3 |goto 60.48,20.70
step
talk Exarch Maladaar##80073
turnin The Traitor's True Name##34792 |goto 62.58,26.22
step
talk Exarch Naielle##80079
accept Friend of the Exarchs##34788 |goto 62.48,26.22
step
You can choose one of these NPC's for a follower:
talk Apprentice Artificer Andren##82489
talk Rangari Chel##82491
talk Vindicator Onaala##82492
Choose a Follower |q Friend of the Exarchs##34788/1 |goto 62.41,26.22
step "disclaimer"
This questline allows you to choose one of three followers:
Apprentice Artificer Andren
Rangari Chel
Vindicator Onaala
You cannot earn the other followers after you have chosen one.
step
talk Exarch Naielle##80079
turnin Friend of the Exarchs##34788 |goto 62.48,26.22
step
label "FComplete"
You have recruited _Rangari Chel_ |only if hasfollower(185)
You have already chosen _Apprentice Artificer Andren_, you cannot recruit _Rangari Chel_ |only if hasfollower(184)
You have already chosen _Vindicator Onaala, you cannot recruit _Rangari Chel_ |only if hasfollower(186)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Rangari Erdanii",[[
description This guilde will walk you through obtaining Rangari Erdanii as a Garrison Follower.
keywords rangari erdanii subtlety rogue sap deadly minions
step
Proceeding to guide |next "Guide" |only if default
Proceeding to Rangari Kaalya completed |next "FComplete" |only if hasfollower(159)
Proceeding to Rangari Erdanii completed |next "FComplete" |only if hasfollower(212)
step
label "Guide"
Proceeding to choose outpost |next "Outpost" |only if default
Proceeding to Rangari Erdanii guide |next "Erdanii" |only if completedq(35686)
Proceeding to Highpass Logging Camp completed |next "LumCompleted" |only if completedq(35212)
step
label "Outpost"
In order to recruit _Rangari Erdanii_ you must quest through Gorgrond and build the _Highpass Sparring Arena_
Building the _Highpass Sparring Arena_ excludes you from recruiting _Rangari Kaalya_
Build the Highpass Sparring Arena |condition havequest(35686) or completedq(35686)
_
Or, click here to proceed to the _Rangari Kaalya_ guide |next "Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Rangari Kaalya" |confirm
|next "Erdanii"
step
label "Erdanii"
talk Thaelin Darkanvil##81588
accept A Heavy Helping Hand##35225 |goto Gorgrond/0 46.07,76.86
step
_Run_ along the stone road |goto Gorgrond 47.4,81.4 < 20
_Go up_ the hill into Bastion Rise |goto 47.9,90.9 < 20
_Enter_ Bastion Rise |goto 47.9,93.7 < 10
Find Dark Iron Dwarf survivors |q A Heavy Helping Hand##35225 |goto 47.55,94.10
talk Dark Iron Dwarf##81991
turnin A Heavy Helping Hand##35225 |goto 47.55,94.10
accept Will of the Genesaur##35234 |goto 47.55,94.10
step
_Follow_ the tunnel down and to the left |goto Gorgrond/16 56.5,85.8 < 5
click Will of the Genesaur##
get 1 Will of the Genesaur##11299 |q Will of the Genesaur##35234/1 |goto Gorgrond/17 58.21,24.27
step
_Follow_ the tunnel down and to the left |goto Gorgrond/16 56.5,85.8 < 5
talk Hansel Heavyhands##81751
turnin Will of the Genesaur##35234 |goto Gorgrond/17 50.14,22.55
accept Iyu##35235 |goto 50.18,22.67
step
_Go back up_ the tunnel |goto Gorgrond/17 68.4,78.5 < 5
kill 1 Iyu##78819 |q Iyu##35235/1 Gorgrond |goto Gorgrond 47.42,92.31
step
talk Yrel##75878
turnin Iyu##35235 |goto Gorgrond 47.7,93.3
step
label "LumCompleted"
You have built the _Highpass Logging Camp_ in Gorgrond, you cannot recruit _Rangari Erdanii_
If you would like to proceed to the _Rangari Kaalya_ guide, click here |next "Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Rangari Kaalya" |confirm
step
label "FComplete"
You have recruited _Rangari Erdanii_ |only if hasfollower(212)
You have already recruited _Rangari Kaalya_. You cannot recruit _Rangari Erdanii_ |only if hasfollower(159)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Rangari Kaalya",[[
description This guilde will walk you through obtaining Rangari Kaalya as a Garrison Follower.
keywords rangari kaalya survival hunter counter shot powerful spell
step
Proceeding to guide |next "Guide" |only if default
Proceeding to Rangari Kaalya completed |next "FComplete" |only if hasfollower(159)
Proceeding to Rangari Erdanii completed |next "FComplete" |only if hasfollower(212)
step
label "Guide"
Proceeding to choose outpost |next "Outpost" |only if default
Proceeding to Rangari Kaalya guide |next "Kaalya" |only if completedq(35212)
Proceeding to Highpass Sparring Arena completed |next "SparCompleted" |only if completedq(35686)
step
label "Outpost"
In order to recruit _Rangari Kaalya_ you must quest through Gorgrond and build the _Highpass Logging Camp_
Building the _Highpass Logging Camp_ excludes you from recruiting _Rangari Erdanii_
Build the Highpass Logging Camp |condition havequest(35212) or completedq(35212)
_
Or, click here to proceed to the _Rangari Erdanii_ guide |next "Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Rangari Erdanii" |confirm
|next "Kaalya"
step
label "Kaalya"
To recruit _Rangari Kaalya_, you must quest through Gorgrond and complete the quests up to _"The Life Spring"_
Complete "The Life Spring" |condition completedq(35209)
step
talk Thaelin Darkanvil##81588
accept A Heavy Helping Hand##35225 |goto Gorgrond/0 46.07,76.86
step
_Run_ along the stone road |goto Gorgrond 47.4,81.4 < 20
_Go up_ the hill into Bastion Rise |goto 47.9,90.9 < 20
_Enter_ Bastion Rise |goto 47.9,93.7 < 10
Find Dark Iron Dwarf survivors |q A Heavy Helping Hand##35225/1 |goto 47.55,94.10
step
talk Dark Iron Dwarf##81991
turnin A Heavy Helping Hand##35225 |goto 47.55,94.10
accept Will of the Genesaur##35234 |goto 47.55,94.10
accept Down the Goren Hole##35229 |goto 47.55,94.10
accept Just In Case##35233 |goto 47.55,94.10
stickystart "acidmouth"
stickystart "doomshot"
step
_Follow_ the path down |goto Gorgrond/16 56.3,83.6 < 10
click Will of the Genesaur## |tip It's a large silver box with a yellow dome on top.
get Will of the Genesaur##11299 |q Will of the Genesaur##35234/1 |goto Gorgrond/17 58.21,24.27
step "doomshot"
click Doomshot## |tip They are bullet shaped containers on the ground around this area.
get 5 Doomshot##112990 |q Just In Case##35233/1 |goto Gorgrond/17 56.1,51.6
step "acidmouth"
kill 5 Acidmouth Breacher##81690 |q Down the Goren Hole##35229/1 |goto Gorgrond/17 56.1,51.6
step
talk Hansel Heavyhands##75710
turnin Down the Goren Hole##35229 |goto Gorgrond/17 50.0,22.2
turnin Will of the Genesaur##35234 |goto Gorgrond/17 50.0,22.2
turnin Just In Case##35233 |goto Gorgrond/17 50.0,22.2
accept Iyu##35235 |goto 50.18,22.67
step
_Go back up_ the tunnel |goto Gorgrond/17 68.4,78.5 < 5
kill 1 Iyu##78819 |q Iyu##35235/1 Gorgrond |goto Gorgrond 47.42,92.31
step
talk Yrel##75878
turnin Iyu##35235 |goto Gorgrond 47.7,93.3
step
talk Rangari Kaalya##81772
accept Service of Rangari Kaalya##35262 |goto 47.78,93.27
|next "FComplete"
step
label "SparCompleted"
You have built the _Highpass Sparring Arena_ in Gorgrond, you cannot recruit _Rangari Kaalya_
If you would like to proceed to the _Rangari Erdanii_ guide, click here |next "Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Rangari Erdanii" |confirm
step
label "FComplete"
You have recruited _Rangari Kaalya_ |only if hasfollower(159)
You have already recruited _Rangari Erdanii_. You cannot recruit _Rangari Kaalya_ |only if hasfollower(212)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Rulkan",[[
description This guilde will walk you through obtaining Rulkan as a Garrison Follower.
keywords rulkan enhancement shaman hex deadly minions blacksmithing
step
label "Rulkan"
In order to recruit Rulkan, you must first quest through Shadowmoon Valley and complete the quest "Escape from Shaz'gul"
Complete "Escape from Shaz'gul" |condition completedq(33081)
talk Prophet Velen##79043
accept Chasing Shadows##33586 |goto Shadowmoon Valley D/0 40.6,55.0
step
talk Rulkan##75884
turnin Chasing Shadows##33586 |goto Shadowmoon Valley D/0 45.7,26.3
accept Ancestor's Memory##33082
step
_Enter_ the cave below Exile's Rise |goto Shadowmoon Valley D/0 46.3,27.2
click Broken Totem |goto Shadowmoon Valley D/0 45.7,25.4
Find the Ancestor's Totem |q Ancestor's Memory##33082/1
step
Watch the dialogue
talk Rulkan##75884
turnin Ancestor's Memory##33082 |goto Shadowmoon Valley D/0 45.8,25.6
accept Rulkan##35631
step
You have recruited Rulkan
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Shelly Hamby",[[
description This guilde will walk you through obtaining Shelly Hamby as a Garrison Follower.
keywords shelly hamby subtlety rogue sprint danger zones leatherworking
step
To pick up the Lost Lumberjacks quest, you must quest through Shadowmoon Valley and complete the _Escape from Shaz'gul_ quest
Complete the Escape from Shaz'gul quest |condition completedq(33081) |next "Shelly"
_
If you have purchased our leveling guides, click here to proceed to our Shadowmoon Valley leveling guide |next "Zygor's Alliance Leveling Guides\\Warlords of Draenor 90-100\\Shadowmoon (90-92)" |confirm
step
ding 92
step
label "Shelly"
#include "A_Garrison_KenLoggin"
accept Lost Lumberjacks##34820
step
talk Lost Packmule##79966 |tip The Packmule patrols a short area around the road.
turnin Lost Lumberjacks##34820 |goto Shadowmoon Valley D/0 39.82,30.07
accept Gloomshade Grove##33263
stickystart "Gloomshade"
step
Meet with phlox |goto 39.27,25.64 < 20 |c |q 33263
talk Phlox##74667
Speak with Phlox |q Gloomshade Grove##33263/2 |goto 39.27,25.64
step
click Alliance Sword
Investigate the Pond |q Gloomshade Grove##33263/3 |goto 39.54,22.65
step
talk Phlox##74681
Speak with Phlox |q Gloomshade Grove##33263/4 |goto 39.56,22.78
step
click Alliance Shield##
Investigate the Alliance Shield in the field |q Gloomshade Grove##33263/5 |goto 39.84,19.92
step
talk Phlox##74686
Speak with Phlox |q Gloomshade Grove##33263/6 |goto 39.86,19.98
step
click Dead Packmule##74193
Investigate the Dead Packmule on the beach |q Gloomshade Grove##33263/7 |goto 41.83,18.00
step
talk Phlox##74687
Speak with Phlox |q Gloomshade Grove##33263/8 |goto 41.93,18.01
step
Go to this point in Gloomshade Grotto |q Gloomshade Grove##33263/9 |goto Shadowmoon Valley D/0 47.0,15.1
step
kill Phlox##74244
Kill Phlox and his minions |q Gloomshade Grove##33263/10 |goto 47.1,14.8
step
talk Jarrod Hamby##73877
turnin Gloomshade Grove##33263 |goto 47.09,14.41
accept Game of Thorns##33271 |goto 47.09,14.41
step
Follow the path to the Podling King |goto 36.8,21.9
kill 1 King Deathbloom##73888
Kill the Podling King |q Game of Thorns##33271/1 |goto 35.7,19.8
step
talk Shelly Hamby##76748
turnin Game of Thorns##33271 |goto 36.39,19.28
accept Shelly Hamby##35625 |goto 36.39,19.28
step
You have recruited Shelly Hamby
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Soulbinder Tuulani",[[
description This guilde will walk you through obtaining Soulbinder Tuulani as a Garrison Follower.
keywords soulbinder tuulani shadow priest prayer of healing group damage
step
label "Tuulani"
To recruit Soulbinder Tuulani, you must first reach level 95
Reach level 95 |ding 95
step
You must also build the _Wrynn Artillery Tower_ or _Arcane Sanctum_ in Talador
Build your Talador Outpost |condition completedq(34563) or completedq(34631)
step
talk Vindicator Icia##79618
accept Speaker for the Dead##34701 |goto Talador/0 69.65,21.61
step
talk Exarch Maladaar##75119
turnin Speaker for the Dead##34701 |goto 55.65,67.73 |only if havequest(34701)
accept Holding the Line##34407 |goto 55.66,67.74
step
talk Vindicator Kaluud##81789
accept Powering the Defenses##34458 |goto 55.64,67.77
step
talk Soulbinder Nyami##78519
accept The Heart of Auchindoun##33920 |goto 56.51,67.14
stickystart "killinvadersAT"
step
talk Vindicator Nobundo##78482
accept Disrupting the Flow##33917 |goto 56.75,65.95
step
kill O'mogg Blackheart##76876 |q The Heart of Auchindoun##33920/1 |goto 56.49,62.84
step
click Karab'uun## |tip It's a big pink crystal suspended in chains.
get Karab'uun##108733 |q The Heart of Auchindoun##33920/2 |goto 56.68,62.50
step
click Burning Resonator## |tip They look like green glowing crystals floating above spiked altars.
Destroy 4 Burning Resonators |q Disrupting the Flow##33917/1 |goto 56.29,63.28
step "killinvadersAT"
from Abyssal Invader##78433+, Burning Hunter##78457+, Legion Assailant##76883+
kill 15 Demons |q Holding the Line##34407/1 |goto 56.34,64.08
step
talk Vindicator Nobundo##78482
turnin Disrupting the Flow##33917 |goto 56.70,65.96
step
talk Soulbinder Nyami##78519
turnin The Heart of Auchindoun##33920 |goto 56.51,67.14
step
talk Exarch Maladaar##75119
turnin Holding the Line##34407 |goto 55.65,67.71
step
_Enter_ the tomb and _follow_ the path |goto Talador/13 46.9,21.5 < 10
_Go through_ the doorway |goto Talador/13 54.5,29.7 < 10
talk Soulbinder Tuulani##77737
turnin Powering the Defenses##34458 |goto Talador/13 68.38,19.36
accept We Must Construct Additional Pylons##34351 |goto Talador/13 62.14,63.70
step
_Go through_ the doorway |goto Talador/13 54.5,29.7 < 10
talk Yuuri##76790
accept Nightmare in the Tomb##33530 |goto Talador/13 52.17,38.65
stickystart "arkoniteAT"
step
Investigate the Ritual |q Nightmare in the Tomb##33530/1 |goto Talador/13 59.0,54.4
step
kill Tagar Spinebreaker##76745 |q Nightmare in the Tomb##33530/2 |goto Talador/13 63.71,68.14
step
_Run up_ the ramp |goto Talador/13 57.2,49.3 < 10
_Go through_ the doorway |goto Talador/13 47.3,35.7 < 10
click Arkonite Pylon## |tip It looks like a large floating slab of stone.
get Arkonite Pylon##110271 |q We Must Construct Additional Pylons##34351/2 |goto 32.02,48.82
step "arkoniteAT"
click Arkonite Crystal## |tip They look like big purple crystals all over the ground around this area.
get 6 Arkonite Crystal##110253 |q We Must Construct Additional Pylons##34351/1 |goto Talador/13 53.8,34.6
step
_Go through_ the doorway |goto Talador/13 48.6,25.5 < 10
_Run up_ the stairs |goto Talador/13 43.0,22.2 < 10
talk Exarch Maladaar##75119
turnin Nightmare in the Tomb##33530 |goto Talador/0 55.7,67.7
step
talk Soulbinder Tuulani##78520
turnin We Must Construct Additional Pylons##34351 |goto 55.13,67.41
step
talk Exarch Maladaar##75119
accept Light's Rest##34452 |goto 55.66,67.70
step
talk Exarch Maladaar##75250
turnin Light's Rest##34452 |goto 57.23,77.03
step
talk Soulbinder Nyami##75256
accept Into the Hollow##33958 |goto 57.19,76.94
step
talk Soulbinder Tuulani##78028
accept Antivenin##33967 |goto 57.23,76.91
step
talk Vindicator Namuun##78102
accept Vile Defilers##33969 |goto 57.55,76.70
stickystart "deathwebfangAT"
step
_Enter_ the cave |goto Talador/0 61.1,84.0 < 20
_Follow_ the path in the cave |goto Talador/0 62.4,83.9 < 10
kill Xanatos the Defiler##75294 |q Into the Hollow##33958/1 |goto 65.44,86.64
stickystop "deathwebfangAT"
step
click Sha'tari## |tip It looks like a pink crystal with a shield around it floating next to the eggs.
get Sha'tari##110683 |q Into the Hollow##33958/2 |goto 65.79,86.87
step
click Defiling Crystal## |tip It looks like a floating gold colored crystal.
Destroy 1 Defiling Crystal |q Vile Defilers##33969/1 |count 1 |goto Talador 64.8,86.9
step
click Defiling Crystal## |tip It looks like a floating gold colored crystal.
Destroy 2 Defiling Crystals |q Vile Defilers##33969/1 |count 2 |goto 65.3,85.4
step
click Defiling Crystal## |tip It looks like a floating gold colored crystal.
Destroy 3 Defiling Crystals |q Vile Defilers##33969/1 |count 3 |goto 64.0,85.6
stickystart "deathwebfangAT"
step
_Enter_ the hallway |goto Talador/0 63.3,84.4 < 10
_Follow_ the path |goto Talador/0 62.3,84.0 < 10
_Leave_ the cave |goto Talador/0 61.1,84.0 < 10
click Defiling Crystal## |tip It looks like a floating gold colored crystal.
Destroy 4 Defiling Crystals |q Vile Defilers##33969/1 |count 4 |goto Talador 58.7,82.7
step
click Defiling Crystal## |tip It looks like a floating gold colored crystal.
Destroy 5 Defiling Crystals |q Vile Defilers##33969/1 |count 5 |goto Talador 61.6,81.7
step "deathwebfangAT"
from Deathweb Egg Tender##76947+, Deathweb Hatchling##75258+
get 9 Deathweb Fang##109744 |q Antivenin##33967/1 |goto 60.18,81.1
step
talk Vindicator Namuun##78102
turnin Vile Defilers##33969 |goto 57.55,76.70
step
talk Soulbinder Tuulani##78028
turnin Antivenin##33967 |goto 57.23,76.91
step
talk Soulbinder Nyami##75256
turnin Into the Hollow##33958 |goto 57.18,76.92
step
talk Exarch Maladaar##75250
accept Scheduled Pickup##34240 |goto 57.23,77.04
step
talk Soulbinder Tuulani##77869
turnin Scheduled Pickup##34240 |goto 50.42,87.50
accept Restalaan, Captain of the Guard##34508 |goto 50.42,87.50
step
_Leave_ the building |goto Talador 47.8,89.5 < 10
_Run up_ the stairs |goto Talador 47.4,90.0 < 10
_Enter_ the building |goto Talador 45.3,90.4 < 10
talk Restalaan##77082
turnin Restalaan, Captain of the Guard##34508 |goto 44.85,90.50
accept The Final Piece##33976 |goto 44.85,90.50
step
kill Vorpil Ribcleaver##77051 |q The Final Piece##33976/1 |goto 44.45,90.89
click Auch'naaru## |tip It looks like a big floating pink crystal with a shield around it.
get Auch'naaru##109197 |q The Final Piece##33976/2 |goto 44.45,90.89
step
talk Restalaan##77082
turnin The Final Piece##33976 |goto 44.86,90.52
accept Changing the Tide##34326 |goto 44.86,90.52
step
talk Restalaan##77799
turnin Changing the Tide##34326 |goto 43.43,75.95
accept Desperate Measures##34092 |goto 43.43,75.95
step
_Enter_ the ogre area here |goto Talador 41.4,80.3 < 20
_Go up_ the stairs |goto Talador 40.2,83.3 < 10
from Mok'war the Terrible##77350
get Ango'rosh Spellbook##109163 |q Desperate Measures##34092/1 |goto Talador 39.5,83.7
step
_Follow_ the path |goto Talador 40.1,83.3 < 10
from Dur'gol the Ruthless##77349
get Grimoire of Binding##109162 |q Desperate Measures##34092/2 |goto Talador 42.7,84.9
step
_Follow_ the path |goto Talador 41.8,84.2 < 10
clicknpc Altar of Ango'rosh##77393 |tip It looks like a big torch with skulls on it, standing in a pile of rocks.
'Perform the Ritual |q Desperate Measures##34092/3 |goto 41.18,82.44 |tip Make sure you DO NOT move until the objective completes after you start ritual.
step
talk Restalaan##77799
turnin Desperate Measures##34092 |goto 43.43,75.94
step
talk Exarch Maladaar##75392
accept Into the Heart of Madness##34157 |goto Talador/0 42.93,76.11
step
talk Soulbinder Nyami##77582
turnin Into the Heart of Madness##34157 |goto 31.22,73.61
accept Destination: Unknown##34154 |goto 31.22,73.61
step
clicknpc Demonic Gateway##77571 |tip It looks like a big green portal.
Take the Portal |q Destination: Unknown##34154/1 |goto 30.92,73.15
step
While you are inside the Portal:
kill Mongrethod##77579 |q Destination: Unknown##34154/2 |tip You will have a lot of help killing him.
step
While you are inside the Portal:
clicknpc Demonic Gateway##77571 |tip It looks like a swirling portal with a demon skull above it.
Take the Portal |q Destination: Unknown##34154/3
step
talk Soulbinder Tuulani##79434
turnin Destination: Unknown##34154 |goto 46.32,74.08
accept Together We Are Strong##36512 |goto 46.32,74.08
step
You have recruited Soulbinder Tuulani
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Talon Guard Kurekk",[[
description This guilde will walk you through obtaining Talon Guard Kurekk as a Garrison Follower.
keywords talon guard kurekk arms warrior cleave minion swarms
step
To recruit _Talon Guard Kurekk_, you must complete the _Terokk's Legacy storyline and reach _Exalted_ reputation with the _Arakkoa Outcasts_
Doing this will earn you the achievement _Mantle of the Talon King_
Earn the achievement _Mantle of the Talon King_ |condition achieved(9072) |next "Completed"
_
If you have purchased our achievement guide, click here to proceed to this achievemnt |next "Zygor's Alliance Achievements Guides\\Draenor\\Reputation Achievements\\Mantle of the Talon King" |confirm
step
label "Completed"
You have recruited Talon Guard Kurekk
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Talonpriest Ishaal",[[
description This guilde will walk you through obtaining Talonpriest Ishaal as a Garrison Follower.
keywords talonpriest ishaal shadow priest dispel magic debuff bodyguard
step
label "Ishaal"
In order to recruit _Talonpriest Ishaal_, you must complete the achievement _Between Arak and a Hard Place_
This requires you to complete all of the major story questlines in Spires of Arak
Complete the Between Arak and a Hard Place achievement |achieve 8926
step
You have recruited Talonpriest Ishaal
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Thisalee Crow",[[
description This guilde will walk you through obtaining Thisalee Crow as a Garrison Follower.
keywords thisalee crow feral druid growl wild aggression
step
Recruiting Thisalee Crow requires you to earn the achievement _The Garrison Campaign_
Complete the achievement _The Garrison Campaign_ |next "Completed" |achieve 9491
_
If you have purchased our achievment guide, click here |next "Zygor's Alliance Achievements Guides\\Draenor\\Quest Achievements\\The Garrison Campaign" |confirm
step
label "Completed"
You have recruited Thisalee Crow
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Tormmok",[[
description This guilde will walk you through obtaining Tormmok as a Garrison Follower.
keywords tormmok arms warrior taunt wild aggression bodyguard
step
To recruit Tormmok, you must first reach level 92
Reach level 92 |ding 92
step
talk High Centurion Tormmok##83820 |tip You will need to defeat 3 waves of enemies before you can talk to him.
Tell him _"No one should become fertilizer for these monsters. How did you come to be here?"_
Tell him _"I doubt he took that well..."_
accept A Centurion Without a Cause##36037 |goto Gorgrond/0 44.93,86.88
step
You have recruited Tormmok
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Vindicator Heluun",[[
description This guilde will walk you through obtaining Vindicator Heluun as a Garrison Follower.
keywords vindicator heluun holy paladin holy radiance group damage
step
Procceding to build |next "Build" |only if default
Proceeding to Vindicator Heluun guide |next "Heluun" |only if hasbuilding(144,2)
Proceeding to Vindicator Heluun guide |next "Heluun" |only if hasbuilding(145,3)
step
label "Build"
You must have a level 2 Trading Post in order to recruit Vindicator Heluun
Construct a level 2 Trading Post in your garrison |condition hasbuilding(144,2) or hasbuilding(145,3) |next "Heluun"
_
Or, click here to proceed to the garrison building guide |next "Zygor's Alliance Leveling Guides\\Garrisons\\Garrison Building Guide" |confirm
step
label "Heluun"
In order to recruit Vindicator Heluun, you must reach revered with the Sha'tari Defense
Reach revered reputation with the _Sha'tari Defense_ |condition rep("Sha'tari Defense")>= Revered
step
talk Maaria##85427
buy 1 Contract: Vindicator Heluun##119167 |tip This contract costs 5,000 gold.
use Contract: Vindicator Heluun##119167
Recruit Vindicator Heluun |condition hasfollower(458) |goto Lunarfall/0 47.7,49.1
step
You have recruited Vindicator Heluun
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Vindicator Onaala",[[
description This guilde will walk you through obtaining Vindicator Onaala as a Garrison Follower.
keywords vindicator onaala holy paladin cleanse magic debuff
stickystart "Ona"
step
Proceeding to Vindicator Onaala guide |next "Onaala" |only if not completedq(34788)
Proceeding to completed |next "Completed" |only if completedq(34788)
step
label "Onaala"
In order to recruit Vindicator Onaala, you must quest through Shadowmoon Valley and complete the following quests:
Fun with Fungus |condition completedq(34784)
Shut'er Down |condition completedq(35070)
Engorged Goren |condition completedq(34786)
step
talk Exarch Akama##80078
accept Exarch Maladaar##34787 |goto Shadowmoon Valley D/0 56.51,23.59
step
_Follow_ the winding pathway |goto Shadowmoon Valley D 59.0,24.9 < 20
talk Exarch Maladaar##80073
turnin Exarch Maladaar##34787 |goto 59.52,30.37
accept Trust No One##35552 |goto 59.52,30.37
step
_Go up_ the stairs and follow the trail |goto Shadowmoon Valley D 60.0,26.6 < 20
Discover the Infiltrator's Hideout  |q Trust No One##35552/1 |goto 61.32,25.19
step
kill 1 Sister of Secrets##82881
click Shadow Council Tome of Curses##
turnin Trust No One##35552 |goto 60.94,24.44
accept Warning the Exarchs##34791 |goto 60.94,24.44
step
talk Exarch Maladaar##80073
turnin Warning the Exarchs##34791 |goto 62.44,26.28
accept Speaker for the Dead##34789 |goto 62.44,26.28
step
talk Exarch Maladaar##80073 |tip He's standing behind the building.
Begin the Ritual  |q Speaker for the Dead##34789/1 |goto 66.44,26.16
Defend Hataaru's Spirit  |q Speaker for the Dead##34789/2 |goto 66.44,26.16
step
talk Exarch Maladaar##80073 |tip He's standing behind the building.
turnin Speaker for the Dead##34789 |goto 66.44,26.17
accept The Traitor's True Name##34792 |goto 66.44,26.17
step
click Maladaar's Focusing Lens##
_Cross_ the bridge and _go up_ the hill |goto Shadowmoon Valley D 62.9,21.8 < 20
Plant the Focusing Lens  |q The Traitor's True Name##34792/1 |goto 60.58,20.56
step
kill 1 Exarch Othaar##80076
kill 1 Socrethar##82625
Reveal the Traitor  |q The Traitor's True Name##34792/2 |goto 60.48,20.70
Deal with the Traitor  |q The Traitor's True Name##34792/3 |goto 60.48,20.70
step
talk Exarch Maladaar##80073
turnin The Traitor's True Name##34792 |goto 62.58,26.22
step "Ona"
This questline allows you to choose one of three followers:
Apprentice Artificer Andren
Rangari Chel
Vindicator Onaala
You cannot earn the other followers after you have chosen one.
step
talk Exarch Naielle##80079
accept Friend of the Exarchs##34788 |goto 62.48,26.22
step
You can choose one of these NPC's for a follower:
talk Apprentice Artificer Andren##82489
talk Rangari Chel##82491
talk Vindicator Onaala##82492
Choose a Follower  |q Friend of the Exarchs##34788/1 |goto 62.41,26.22
step
talk Exarch Naielle##80079
turnin Friend of the Exarchs##34788 |goto 62.48,26.22
step
label "Completed"
You have recruited _Vindicator Onaala_ |only if hasfollower(186)
You have already recruited _Apprentice Artificer Andren_, you cannot recruit _Vindicator Onaala_ |only if hasfollower(184)
You have already recruited _Rangari Chel_, you cannot recruit _Vindicator Onaala_ |only if hasfollower(185)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Weldon Barov",[[
description This guilde will walk you through obtaining Weldon Barov as a Garrison Follower.
keywords weldon barov assassination rogue sprint danger zones
step
label "Weldon"
click Fallen Tree##167895 |tip This is on a 10 minute spawn timer. Be patient and wait here.
talk Weldon Barov##85378
accept The Rise and Fall of Barov Industries: Weldon Barov##36429 |goto Talador/0 73.7,64.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Ziri'ak",[[
description This guilde will walk you through obtaining Ziri'ak as a Garrison Follower.
keywords Ziri'ak arms warrior pummel powerful spell
step
Proceeding to guide |next "Guide" |only if default
Proceeding to Hulda Shadowblade completed |next "FComplete" |only if hasfollower(453)
Proceeding to Ziri'ak completed |next "FComplete" |only if hasfollower(168)
step
label "Guide"
Proceeding to choose outpost |next "Outpost" |only if default
Proceeding to Ziri'ak guide |next "Ziri" |only if completedq(35699)
Proceeding to Brewery completed |next "BrewCompleted" |only if completedq(37327)
step
label "Outpost"
In order to recruit _Ziri'ak_ you must quest through Spires of Arak, build the _Smuggler's Den_, and complete the quest "Peace Offering"
Building the _Smuggler's Den_ excludes you from recruiting Hulda Shadowblade
Build the Smuggler's Den |condition havequest(35699) or completedq(35699)
_
Or, click here to proceed to the _Ziri'ak_ guide |next "Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Ziri'ak" |confirm
|next "Ziri"
step
label "Ziri"
Cast _Smuggling Run!_ |cast Smuggling Run!##170097
talk Honest Jim##82459
buy Inactive Apexis Guardian##116915 |n
use Inactive Apexis Guardian##116915
Recruit Ziri'ak into your garrison |condition hasfollower(168)
_
To obtain _Ziri'ak_, you must use your _Smuggling Run!_ ability in your Spires of Arak outpost.
This summons _Honest Jim_, who _sometimes_ sells an Inactive Apexis Guardian for 400 gold.
Keep checking back until this item is available.
|next "FComplete"
step
label "BrewCompleted"
You have built the _Brewery_ in Spires of Arak, you cannot recruit _Ziri'ak_
If you would like to proceed to the _Hulda Shadowblade_ guide, click here |next "Zygor's Alliance Leveling Guides\\Garrisons\\Followers\\Follower Hulda Shadowblade" |confirm
step
label "FComplete"
You have recruited _Ziri'ak_ |only if hasfollower(168)
You have already recruited _Hulda Shadowblade_. You cannot recruit _Ziri'ak_ |only if hasfollower(453)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Garrison Campaign",[[
#include "A_Garrison_Campaign"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrisons\\Inn Quest Guide",[[
#include "A_Inn_Quests"
]])
