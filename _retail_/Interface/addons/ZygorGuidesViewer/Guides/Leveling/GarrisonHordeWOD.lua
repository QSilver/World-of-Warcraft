local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("GarrisonHWOD") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Garrison Guide\\Buildings Guide",[[
description This guide will walk you through the creation and introductory quests for each Garrison building.
step
label "buildingmenu"
_Choose a building type_ to start:
Small |confirm |next "small"
Medium |confirm |next "medium"
Large |confirm |next "large"
Default Garrison buildings |confirm |next "default"
step
label "small"
_Small Buildings_
Choose a building to begin:
Alchemy Lab |confirm |next "alchemy"
Enchanter's Study |confirm |next "enchant"
Engineering Works |confirm |next "engineering"
The Forge |confirm |next "forge"
Gem Boutique |confirm |next "gem"
Salvage Yard |confirm |next "salvage"
Scribe's Quarters |confirm |next "scribe"
Storehouse |confirm |next "storehouse"
Tailoring Emporium |confirm |next "tailoring"
The Tannery |confirm |next "tannery"
step
label "medium"
_Medium Buildings_
_A Level 2 Garrison is required for all medium buildings_
Choose a building to begin:
Barn |confirm |next "barn"
Frostwall Tavern |confirm |next "tavern"
Gladiator's Sanctum |confirm |next "gladiator"
Lumber Mill |confirm |next "mill"
Trading Post |confirm |next "tradingpost"
step
label "large"
_Large Buildings_
Choose a building to begin:
Barracks |confirm |next "barracks"
Goblin Workshop |confirm |next "workshop"
Spirit Lodge |confirm |next "lodge"
Stables |confirm |next "stables"
War Mill |confirm |next "warmill"
step
label "default"
_Default Buildings_
_A Level 2 Garrison is required for all default buildings_
_A Level 3 Garrison is required for the Menagerie_
Choose a building to begin:
Fishing Shack |confirm |next "fishing"
Frostwall Mines |confirm |next "mines"
Herb Garden |confirm |next "garden"
Menagerie |confirm |next "menagerie"
step
label "alchemy"
Redirecting to Alchemy Lab, Level 1 |next "alchemy1" |only if default
Redirecting to Alchemy Lab, Level 2 |next "alchemy3" |only if hasbuilding(119,2)
Redirecting to Alchemy Lab, Level 3 |next "alchemy_end" |only if hasbuilding(120,3)
step
label "alchemy1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create an _Alchemy Lab_ in the Small Empty Plot |condition hasbuilding(76,1)
stickystart "alchemyup2"
step
#include "H_Garrison_SmallBuilding"
click Finalize Garrison Plot##
Finalize the Alchemy Lab's construction
Reach level 96 |ding 96 |or
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
step "alchemyup2"
You can now upgrade your Alchemy Lab to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 96_ or have _completed the Talador Outpost questline_ to buy this blueprint
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Alchemy Lab, Level 2##111929
|only if not hasbuilding(119,2)
step
use Garrison Blueprint: Alchemy Lab, Level 2##111929
#include "H_Garrison_ArchitectTable"
Click on your Alchemy Lab and click _Upgrade_ |condition hasbuilding(119,2)
__
You can now upgrade your Alchemy Lab to _level 3_
Click here to proceed to _Alchemy Level 3_ |confirm always |next "alchemy3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "alchemy3"
In order to get the blueprint for all level 3 crafting profession buildings, you must complete the _Working More Orders_ achievement
This requires you to complete 250 Work Orders
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9406)
step
#include "H_Garrison_SmallBuilding"
talk Keyana Tone##79814
Complete a total of 250 Work Orders
|achieve 9406
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Alchemy Lab, Level 3##111930
|only if not hasbuilding(120,3)
step
use Garrison Blueprint: Alchemy Lab, Level 3##111930
#include "H_Garrison_ArchitectTable"
Click on your Alchemy Lab and click _Upgrade_ |condition hasbuilding(120,3)
step
Congratulations, you now have a level 3 Alchemy Lab!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "alchemy_end"
You already have a level 3 Alchemy Lab!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "enchant"
Redirecting to Enchanter's Study, Level 1 |next "enchant1" |only if default
Redirecting to Enchanter's Study, Level 2 |next "enchant3" |only if hasbuilding(125,2)
Redirecting to Enchanter's Study, Level 3 |next "enchant_end" |only if hasbuilding(126,3)
step
label "enchant1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create an _Enchanter's Study_ in the Small Empty Plot |condition hasbuilding(93,1)
stickystart "enchantup2"
step
#include "H_Garrison_SmallBuilding"
click Finalize Garrison Plot##
Finalize the Enchanter's Study's construction
Reach level 96 |ding 96 |or
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
step "enchantup2"
You can now upgrade your Enchanter's Study to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 96_ or have _completed the Talador Outpost questline to buy this blueprint_
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Enchanter's Study, Level 2##111972
|only if not hasbuilding(125,2)
step
use Garrison Blueprint: Enchanter's Study, Level 2##111972
#include "H_Garrison_ArchitectTable"
Click on your Enchanter's Study and click _Upgrade_ |condition hasbuilding(125,2)
__
You can now upgrade your Enchanter's Study to _level 3_
Click here to proceed to _Enchanter's Study Level 3_ |confirm always |next "enchant3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "enchant3"
In order to get the blueprint for all level 3 crafting profession buildings, you must complete the _Working More Orders_ achievement
This requires you to complete 250 Work Orders
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9406)
step
#include "H_Garrison_SmallBuilding"
talk Garra##79820
Complete a total of 250 Work Orders
|achieve 9406
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Enchanter's Study, Level 3##111973
|only if not hasbuilding(126,3)
step
use Garrison Blueprint: Enchanter's Study, Level 3##111973
#include "H_Garrison_ArchitectTable"
Click on your Enchanter's Study and click _Upgrade_ |condition hasbuilding(126,3)
step
Congratulations, you now have a level 3 Enchanter's Study!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "enchant_end"
You already have a level 3 Alchemy Lab!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "engineering"
Redirecting to Engineering Works, Level 1 |next "engineering1" |only if default
Redirecting to Engineering Works, Level 2 |next "engineering3" |only if hasbuilding(123,2)
Redirecting to Engineering Works, Level 3 |next "engineering_end" |only if hasbuilding(124,3)
step
label "engineering1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create an _Engineeering Works_ in the Small Empty Plot |condition hasbuilding(91,1)
stickystart "engineerup2"
step
#include "H_Garrison_SmallBuilding"
click Finalize Garrison Plot##
Finalize the Engineering Work's construction
Reach level 96 |ding 96 |or
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
step "engineerup2"
You can now upgrade your Engineering Works to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 96_ or have _completed the Talador Outpost questline to buy this blueprint_
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Engineering Works, Level 2##109256
|only if not hasbuilding(123,2)
step
use Garrison Blueprint: Engineering Works, Level 2##109256
#include "H_Garrison_ArchitectTable"
Click on your Engineering Works and click _Upgrade_ |condition hasbuilding(123,2)
__
You can now upgrade your Engineering Works to _level 3_
Click here to proceed to _Engineering Works Level 3_ |confirm always |next "engineering3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "engineering3"
In order to get the blueprint for all level 3 crafting profession buildings, you must complete the _Working More Orders_ achievement
This requires you to complete 250 Work Orders
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9406)
step
#include "H_Garrison_SmallBuilding"
talk Garbra Fizzwonk##86696
Complete a total of 250 Work Orders
|achieve 9406
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Engineering Works, Level 3##109257
|only if not hasbuilding(124,3)
step
use Garrison Blueprint: Engineering Works, Level 3##109257
#include "H_Garrison_ArchitectTable"
Click on your Engineering Works and click _Upgrade_ |condition hasbuilding (124,3)
step
Congratulations, you now have a level 3 Engineering Works!
Click here to return to the _Building Menu_ |next "buildingmenu" |confirm
step
label "engineering_end"
You already have a level 3 Engineering Works!
Click here to return to the _Building Menu_ |next "buildingmenu" |confirm
step
label "forge"
Redirect to The Forge, Level 1 |next "forge1" |only if default
Redirect to The Forge, Level 2 |next "forge3" |only if hasbuilding(117,2)
Redirect to The Forge, Level 3 |next "forge_end" |only if hasbuilding(118,3)
step
label "forge1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create _The Forge_ in the Small Empty Plot |condition hasbuilding(60,1)
stickystart "forgeup2"
step
#include "H_Garrison_SmallBuilding"
click Finalize Garrison Plot##
Finalize The Forge's construction
Reach level 96 |ding 96 |or
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
step "forgeup2"
You can now upgrade your Forge to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 96_ or have _completed the Talador Outpost questline to buy this blueprint_
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: The Forge, Level 2##111990
|only if not hasbuilding(117,2)
step
use Garrison Blueprint: The Forge, Level 2##111990
#include "H_Garrison_ArchitectTable"
Click on your Forge and click _Upgrade_ |condition hasbuilding(117,2)
__
You can now upgrade your Forge to _level 3_
Click here to proceed to _Forge Level 3_ |confirm always |next "forge3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "forge3"
In order to get the blueprint for all level 3 crafting profession buildings, you must complete the _Working More Orders_ achievement
This requires you to complete 250 Work Orders
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9406)
step
#include "H_Garrison_SmallBuilding"
talk Kinja##79817
Complete a total of 250 Work Orders
|achieve 9406
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: The Forge, Level 3##111991
|only if not hasbuilding(118,3)
step
use Garrison Blueprint: The Forge, Level 3##111991
#include "H_Garrison_ArchitectTable"
Click on your Forge and click _Upgrade_ |condition hasbuilding(118,3)
step
Congratulations, you now have a level 3 Forge!
Click here to return to the _Building Menu_ |next "buildingmenu" |confirm
step
label "forge_end"
You already have a Level 3 Forge!
Click here to return to the _Building Menu_ |next "buildingmenu" |confirm
step
label "gem"
Redirecting to Gem Boutique, Level 1 |next "gem1" |only if default
Redirecting to Gem Boutique, Level 2 |next "gem3" |only if hasbuilding(131,2)
Redirecting to Gem Boutique, Level 3 |next "gem_end" |only if hasbuilding(132,3)
step
label "gem1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create a _Gem Boutique_ in the Small Empty Plot |condition hasbuilding(96,1)
stickystart "gemup2"
step
#include "H_Garrison_SmallBuilding"
click Finalize Garrison Plot##
Finalize your Gem Botique's construction
Reach level 96 |ding 96 |or
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
step "gemup2"
You can now upgrade your Gem Boutique to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 96_ or have _completed the Talador Outpost questline to buy this blueprint_
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Gem Boutique, Level 2##111974
|only if not hasbuilding(131,2)
step
use Garrison Blueprint: Gem Boutique, Level 2##111974
#include "H_Garrison_ArchitectTable"
Click on your Gem Boutique and click _Upgrade_ |condition hasbuilding(131,2)
__
You can now upgrade your Gem Boutique to _level 3_
Click here to proceed to _Gem Boutique Level 3_ |confirm always |next "gem3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "gem3"
In order to get the blueprint for all level 3 crafting profession buildings, you must complete the _Working More Orders_ achievement
This requires you to complete 250 Work Orders
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9406)
step
#include "H_Garrison_SmallBuilding"
talk Elrondir Surrion##79830
Complete a total of 250 Work Orders
|achieve 9406
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Gem Boutique, Level 3##111975
|only if not hasbuilding(132,3)
step
use Garrison Blueprint: Gem Boutique, Level 3##111975
#include "H_Garrison_ArchitectTable"
Click on your Gem Boutique and click _Upgrade_ |condition hasbuilding(132,3)
step
Congratulations, you now have a level 3 Gem Boutique!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "gem_end"
You already have a level 3 Gem Boutique!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "salvage"
Redirecting to Salvage Yard, Level 1 |next "salvage1" |only if default
Redirecting to Salvage Yard, Level 2 |next "salvage3" |only if hasbuilding(140,2)
Redirecting to Salvage Yard, Level 3 |next "salvage_end" |only if hasbuilding(141,3)
step
label "salvage1"
#include "H_Garrison_MurlaLongeye"
accept Pinchwhistle Gearworks##36862 |next "pinch1" |or
accept Pinchwhistle Gearworks##35620 |next "pinch2" |or |tip You must be at least level 96 to accept this quest.
step
label "pinch1"
#include "H_Garrison_Flightmaster"
Tell him _"Take me to the Spires of Arak."_
Travel to Pinchwhislte Gearworks |q Pinchwhistle Gearworks##36862/1
step
talk Kimzee Pinchwhistle##81109
turnin Pinchwhistle Gearworks##36862 |goto Spires of Arak/0 61.48,72.91
|next "pinchend"
step
label "pinch2"
#include "H_Garrison_Flightmaster"
Tell him _"Take me to the Spires of Arak."_
Travel to Pinchwhislte Gearworks |q Pinchwhistle Gearworks##35620/1
step
talk Kimzee Pinchwhistle##81109
turnin Pinchwhistle Gearworks##35620 |goto Spires of Arak/0 61.48,72.91
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
#include "H_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create a _Salvage Yard_ in the Small Empty Plot |condition hasbuilding(52,1)
stickystart "salvageup2"
step
#include "H_Garrison_SmallBuilding"
click Finalize Garrison Plot##
Finalize your Salvage Yard's construction
Reach level 96 |ding 96 |or
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
step "salvageup2"
You can now upgrade your Salvage Yard to _level 2_
This increases of recovering Salvage from missions and may give you follower items from Salvage
_You must be at least level 96_ or have _completed the Talador Outpost questline to buy this blueprint_
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Salvage Yard, Level 2##111976
|only if not hasbuilding(140,2)
step
use Garrison Blueprint: Salvage Yard, Level 2##111976
#include "H_Garrison_ArchitectTable"
Click on your Salvage Yard and click _Upgrade_ |condition hasbuilding(140,2)
__
You can now upgrade your Salvage Yard to _level 3_
Click here to proceed to _Salvage Yard Level 3_ |confirm always |next "salvage3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "salvage3"
In order to get the blueprints for level 3, you must complete the _Salvaging Pays Off_ Achievement
This requires you to open 100 pieces of salvage
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9468)
step
#include "H_Garrison_SmallBuilding"
use Salvaged Parts##114116 |tip You must be standing in your Salvage Yard.
|achieve 9468
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Salvage Yard, Level 3##111977
|only if not hasbuilding(141,3)
step
use Garrison Blueprint: Salvage Yard, Level 3##111977
#include "H_Garrison_ArchitectTable"
Click on your Salvage Yard and click _Upgrade_ |condition hasbuilding(141,3)
step
Congratulations, you now have a Level 3 Salvage Yard!
Click here to reutrn to the _Building Menu_ |confirm |next "buildingmenu"
step
label "salvage_end"
You already have a level 3 Salvage Yard!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "scribe"
Redirecting to Scribe's Quarters, Level 1 |next "scribe1" |only if default
Redirecting to Scribe's Quarters, Level 2 |next "scribe3" |only if hasbuilding(129,2)
Redirecting to Scribe's Quarters, Level 3 |next "scribe_end" |only if hasbuilding(130,3)
step
label "scribe1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create a _Scribe's Quarters_ in the Small Empty Plot |condition hasbuilding(95,1)
stickystart "scribeup2"
step
#include "H_Garrison_SmallBuilding"
click Finalize Garrison Plot##
Finalize the Scribe's Quarter's construction
Reach level 96 |ding 96 |or
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
step "scribeup2"
You can now upgrade your Scribe's Quarters to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 96_ or have _completed the Talador Outpost questline to buy this blueprint_
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Scribe's Quarters, Level 2##111978
|only if not hasbuilding(129,2)
step
use Garrison Blueprint: Scribe's Quarters, Level 2##111978
#include "H_Garrison_ArchitectTable"
Click on your Scribe's Quarters and click _Upgrade_ |condition hasbuilding(129,2)
__
You can now upgrade your Scribe's Quarters to _level 3_
Click here to proceed to _Scribe's Quarters Level 3_ |confirm always |next "scribe3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "scribe3"
In order to get the blueprint for all level 3 crafting profession buildings, you must complete the _Working More Orders_ achievement
This requires you to complete 250 Work Orders
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9406)
step
#include "H_Garrison_SmallBuilding"
talk Y'rogg##79829
Complete a total of 250 Work Orders
|achieve 9406
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Scribe's Quarters, Level 3##111979
|only if not hasbuilding(130,3)
step
use Garrison Blueprint: Scribe's Quarters, Level 3##111979
#include "H_Garrison_ArchitectTable"
Click on your Scribe's Quarters and click _Upgrade_ |condition hasbuilding(130,3)
step
Congratulations, you now have a level 3 Scribe's Quarters!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "scribe_end"
You already have a level 3 Scribe's Quarters!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "storehouse"
Redirecting to Storehouse, Level 1 |next "storehouse1" |only if default
Redirecting to Storehouse, Level 2 |next "storehouse3" |only if hasbuilding(142,2)
Redirecting to Storehouse, Level 3 |next "storehouse_end" |only if hasbuilding(143,3)
step
label "storehouse1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create a _Storehouse_ in the Small Empty Plot |condition hasbuilding(51,1)
step
#include "H_Garrison_SmallBuilding"
talk Yorn Longhoof##79862
accept Lost in Transition##37060
step
click Crate of Surplus Materials##118417 |tip These are found all around your Garrison.
Crate of Surplus Materials |q Lost in Transition##37060/1 |goto Frostwall/0 51.8,46.7
step
#include "H_Garrison_SmallBuilding"
talk Yorn Longhoof##79862
turnin Lost in Transition##37060
stickystart "storehouseup2"
step
#include "H_Garrison_SmallBuilding"
click Finalize Garrison Plot##
Finalize the Storehouse's construction
Reach level 96 |ding 96 |or
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
step "storehouseup2"
You can now upgrade your Storehouse to _level 2_
This will enable access to your Guild Bank
_You must be at least level 96_ or have _completed the Talador Outpost questline to buy this blueprint_
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Storehouse, Level 2##111982
|only if not hasbuilding(142,2)
step
use Garrison Blueprint: Storehouse, Level 2##111982
#include "H_Garrison_ArchitectTable"
Click on your Storehouse and click _Upgrade_ |condition hasbuilding(142,2)
__
You can now upgrade your Storehouse to _level 3_
You can now also access your Guild Bank at any time by talking to Ranea Longhoof
Click here to access your _Guild Bank_ |goto Frostwall/0 54.2,37.4
Click here to proceed to _Storehouse Level 3_ |confirm always |next "storehouse3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "storehouse3"
#include "H_Garrison_SmallBuilding"
talk Yorn Longhoof##79862
accept Lost in Transition##37060
|only if not completedq(37060)
step
click Crate of Surplus Materials##118417 |tip These are found all around your Garrison.
Crate of Surplus Materials |q Lost in Transition##37060/1 |goto Frostwall/0 51.8,46.7
|only if not completedq(37060)
step
#include "H_Garrison_SmallBuilding"
talk Yorn Longhoof##79862
turnin Lost in Transition##37060
|only if not completedq(37060)
step
In order to get the blueprint for level 3, you must complete the _Got My Mind On My Draenor Money_ achievement
This requires you to loot 10,000 Gold from enemies in Draenor
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9487)
step
Kill and loot, or pickpocket humanoids in Draenor
|achieve 9487
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Storehouse, Level 3##111983
|only if not hasbuilding(143,3)
step
use Garrison Blueprint: Storehouse, Level 3##111983
#include "H_Garrison_ArchitectTable"
Click on your Storehouse and click _Upgrade_ |condition hasbuilding(143,3)
step
Congratulations, you now have a level 3 Storehouse!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "storehouse_end"
You already have a level 3 Storehouse!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "tailoring"
Redirecting to Tailoring Emporium, Level 1 |next "tailoring1" |only if default
Redirecting to Tailoring Emporium, Level 2 |next "tailoring3" |only if hasbuilding(127,2)
Redirecting to Tailoring Emporium, Level 3 |next "tailoring_end" |only if hasbuilding(128,3)
step
label "tailoring1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create _Tailoring Emporium_ in the Small Empty Plot |condition hasbuilding(94,1)
stickystart "tailoringup2"
step
#include "H_Garrison_SmallBuilding"
click Finalize Garrison Plot##
Finalize the Tailoring Emporium's construction
Reach level 96 |ding 96 |or
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
step "tailoringup2"
You can now upgrade your Tailoring Emporium to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 96_ or have _completed the Talador Outpost questline to buy this blueprint_
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Tailoring Emporium, Level 2##111992
|only if not hasbuilding(127,2)
step
use Garrison Blueprint: Tailoring Emporium, Level 2##111992
#include "H_Garrison_ArchitectTable"
Click on your Tailoring Emporium and click _Upgrade_ |condition hasbuilding(127,2)
__
You can now upgrade your Tailoring Emporium to _level 3_
Click here to proceed to _Tailoring Emporium Level 3_ |confirm always |next "tailoring3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "tailoring3"
In order to get the blueprint for all level 3 crafting profession buildings, you must complete the _Working More Orders_ achievement
This requires you to complete 250 Work Orders
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9406)
step
#include "H_Garrison_SmallBuilding"
talk Turga##79863
Complete a total of 250 Work Orders
|achieve 9406
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Tailoring Emporium, Level 3##111993
|only if not hasbuilding(128,3)
step
use Garrison Blueprint: Tailoring Emporium, Level 3##111993
#include "H_Garrison_ArchitectTable"
Click on your Tailoring Emporium and click _Upgrade_ |condition hasbuilding(128,3)
step
Congratulations, you now have a level 3 Tailoring Emporium!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "tailoring_end"
You already have a level 3 Tailoring Emporium!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "tannery"
Redirecting to Tannery, Level 1 |next "tannery1" |only if default
Redirecting to Tannery, Level 2 |next "tannery3" |only if hasbuilding(121,2)
Redirecting to Tannery, Level 3 |next "tannery_end" |only if hasbuilding(122,3)
step
label "tannery1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Small_ tab at the top, and create _The Tannery_ in the Small Empty Plot |condition hasbuilding(90,1)
stickystart "tanneryup2"
step
#include "H_Garrison_SmallBuilding"
click Finalize Garrison Plot##
Finalize The Tannery's construction
Reach level 96 |ding 96 |or
_Or_
Complete the Talador Outpost questline |condition completedq(34569) or completedq(34632) |or
step "tanneryup2"
You can now upgrade your Tannery to _level 2_
This will increase the amount of Work Orders you can do at a single time
_You must be at least level 96_ or have _completed the Talador Outpost questline to buy this blueprint_
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: The Tannery, Level 2##111988
|only if not hasbuilding(121,2)
step
use Garrison Blueprint: The Tannery, Level 2##111988
#include "H_Garrison_ArchitectTable"
Click on your Tannery and click _Upgrade_ |condition hasbuilding(121,2)
__
You can now upgrade your Tannery to _level 3_
Click here to proceed to _Tannery Level 3_ |confirm always |next "tannery3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "tannery3"
In order to get the blueprint for all level 3 crafting profession buildings, you must complete the _Working More Orders_ achievement
This requires you to complete 250 Work Orders
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9406)
step
#include "H_Garrison_SmallBuilding"
talk Yanney##79833
Complete a total of 250 Work Orders
|achieve 9406
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: The Tannery, Level 3##111989
|only if not hasbuilding(122,3)
step
use Garrison Blueprint: The Tannery, Level 3##111989
#include "H_Garrison_ArchitectTable"
Click on your Tannery and click _Upgrade_ |condition hasbuilding(122,3)
step
Congratulations, you now have a level 3 Tannery!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "tannery_end"
You already have a level 3 Tannery!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "barn"
Redirecting to Barn, Level 1 |next "barn1" |only if default
Redirecting to Barn, Level 2 |next "barn3" |only if hasbuilding(25,2)
Redirecting to Barn, Level 3 |next "barn_end" |only if hasbuilding(133,3)
step
label "barn1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Medium_ tab at the top, and create the _Barn_ in a Medium Empty Plot |condition hasbuilding(24,1)
step
#include "H_Garrison_MediumBuilding"
click Finalize Garrison Plot##
Finalize The Barn's construction
You can now upgrade your Barn to _level 2_
This will allow you trap for rare meats used for food
_You must be at least level 98 or have completed the Spires of Arak questline to buy this blueprint_
__
Click here to proceed to _Barn Level 2_ |confirm |next "barn2"
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "barn2"
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Barn, Level 2##111968
|only if not hasbuilding(25,2)
step
use Garrison Blueprint: Barn, Level 2##111968
#include "H_Garrison_ArchitectTable"
Click on your Barn and click _Upgrade_ |condition hasbuilding(25,2)
__
You can now upgrade your Barn to _level 3_
Click here to proceed to _Barn Level 3_ |confirm always |next "barn3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "barn3"
In order to get the blueprint for level 3, you must complete the _Master Trapper_ achievement
This requires you to place 25 Barn work orders by trapping wild creatures
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9565)
step
#include "H_Garrison_MediumBuilding"
talk Farmer Lok'lub##85048
accept Breaking into the Trap Game##36345
step
Go to this area, use the Iron Trap and lure a wolf into it
use Iron Trap##113991
Beast Trapped |q Breaking into the Trap Game##36345/1 |goto Frostfire Ridge/0 54.3,64.5
step
#include "H_Garrison_MediumBuilding"
talk Farmer Lok'lub##85048
Tell him _"I would like to place a work order for fur."_
Click _Start Work Order_
Place A Work Order |q Breaking into the Trap Game##36345/2
step
#include "H_Garrison_MediumBuilding"
talk Farmer Lok'lub##85048
turnin Breaking into the Trap Game##36345
step
#include "H_Garrison_MediumBuilding"
talk Farmer Lok'lub##85048
accept Feeding An Army##36344
step
Go to this area, use the Improved Iron Trap and lure a boar or riverbeast into it
use Improved Iron Trap##115009
Beast Trapped |q Feeding An Army##36344/1 |goto Gorgrond 41,48
step
#include "H_Garrison_MediumBuilding"
talk Farmer Lok'lub##85048
turnin Feeding An Army##36344
step
#include "H_Garrison_MediumBuilding"
talk Farmer Lok'lub##85048
Use your traps to continue placing work orders
|achieve 9565
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Barn, Level 3##111969
|only if not hasbuilding(133,3)
step
use Garrison Blueprint: Barn, Level 3##111969
#include "H_Garrison_ArchitectTable"
Click on your Barn and click _Upgrade_ |condition hasbuilding(133,3)
step
Congratulations, you now have a level 3 Barn!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "barn_end"
You already have a level 3 Barn!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "tavern"
Redirect to Tavern, Level 1 |next "tavern1" |only if default
Redirect to Tavern, Level 2 |next "tavern3" |only if hasbuilding(35,2)
Redirect to Tavern, Level 3 |next "tavern_end" |only if hasbuilding(36,3)
step
label "tavern1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Medium_ tab at the top, and create the _Frostwall Tavern_ in a Medium Empty Plot |condition hasbuilding(34,1)
step
#include "H_Garrison_MediumBuilding"
click Finalize Garrison Plot
Finalize the Frostwall Tavern's construction
You can now upgrade your Frostwall Tavern to _level 2_
This will allow you to recruit random followers each week and to choose specific traits and abilities to focus on
_You must be at least level 98 or have completed the Spires of Arak questline to buy this blueprint_
__
Click here to proceed to _Frostwall Tavern Level 2_ |confirm |next "tavern2"
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "tavern2"
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Frostwall Tavern, Level 2##116431
|only if not hasbuilding(35,2)
step
use Garrison Blueprint: Frostwall Tavern, Level 2##116431
#include "H_Garrison_ArchitectTable"
Click on your Frostwall Tavern and click _Upgrade_ |condition hasbuilding(35,2)
__
You can now upgrade your Frostwall Tavern to _level 3_
Click here to proceed to _Frostwall Tavern Level 3_ |confirm always |next "tavern3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "tavern3"
In order to get the blueprints for level 3, you must complete the _Stay Awhile and Listen_ achievement
This requires you to complete all of the inn quests
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9703)
step
#include "H_Garrison_MediumBuilding"
Accept the quests from the two NPCs that spawned today:
|confirm
step
label "queuemenu"
Press _I_ and queue for the following Dungeons:
You don't have any dungeon quests! |only if default
_Everbloom_ |only if havequest(37150)
_Grimrail Depot_ |only if havequest(37151)
_Shadowmoon Burial Grounds_ |only if havequest(37149)
_Upper Blackrock Spire_ |only if havequest(37148)
_Auchindoun HEROIC_ |only if havequest(37154) or havequest(37156)
_Bloodmaul Slag Mines HEROIC_ |only if havequest(37152) or havequest(37153)
_Everbloom HEROIC_ |only if havequest(37165) or havequest(37166)
_Grimrail Depot HEROIC_ |only if havequest(37167) or havequest(37160)
_Iron Docks HEROIC_ |only if havequest(37157) or havequest(37155)
_Shadowmoon Burial Grounds HEROIC_ |only if havequest(37163) or havequest(37164)
_Skyreach HEROIC_ |only if havequest(37158) or havequest(37159)
_Upper Blackrock Spire HEROIC_ |only if havequest(37161)or havequest(37162)
Click here to queue for a dungeon |confirm
Or
Click here to continue to the _Stay Awhile and Listen_ achievement |confirm |next "achieve"
step
Select the dungeon you got into:
You don't have any dungeon quests! |only if default
_Everbloom_ |only if havequest(37150) |next "everbloom" |confirm
_Grimrail Depot_ |only if havequest(37151) |next "grimrail" |confirm
_Shadowmoon Burial Grounds_ |only if havequest(37149) |next "shadowmoon" |confirm
_Upper Blackrock Spire_ |only if havequest(37148) |next "upperbrs" |confirm
_Auchindoun HEROIC_ |only if havequest(37154) or havequest(37156) |next "auchheroic" |confirm
_Bloodmaul Slag Mines HEROIC_ |only if havequest(37152) or havequest(37153) |next "slagminesheroic" |confirm
_Everbloom HEROIC_ |only if havequest(37165) or havequest(37166) |next "everbloomheroic" |confirm
_Grimrail Depot HEROIC_ |only if havequest(37167) or havequest(37160) |next "depotheroic" |confirm
_Iron Docks HEROIC_ |only if havequest(37157) or havequest(37155) |next "irondocksheroic" |confirm
_Shadowmoon Burial Grounds HEROIC_ |only if havequest(37163) or havequest(37164) |next "sbgheroic" |confirm
_Skyreach HEROIC_ |only if havequest(37158) or havequest(37159) |next "skyreachheroic" |confirm
_Upper Blackrock Spire HEROIC_ |only if havequest(37161) or havequest(37162) |next "ubrsheroic" |confirm
step
label "everbloom"
Fight through the dungeon
click Rustling Peachick Nest##237483
Tiny Peachick Hatchling |q For the Birds##37150/1 |goto The Everbloom/1 55.5,22.2
step
Complete the dungeon
kill Yalnu##83846 |q For the Birds##37150/2
step
#include "H_Garrison_MediumBuilding"
talk Mylune##88025
turnin For the Birds##37150 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "grimrail"
Fight through the dungeon
click Iron Autocannon
Iron Autocannon |q Cold Steel##37151/1 |goto Grimrail Depot/4 67.4,47.5
step
Complete the dungeon
kill 1 Skylord Tovra##80005 |q Cold Steel##37151/2 |goto Grimrail Depot/4 15.3,51.7
step
#include "H_Garrison_MediumBuilding"
talk John J. Keeshan##88026
turnin Cold Steel##37151 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
label "shadowmoon"
Fight through the dungeon
Jump down the hole |goto Shadowmoon Burial Grounds/1 52.5,77.6 < 10
click Void-Gate Key
Void-Gate Key |q The Void-Gate##37149/1 |goto Shadowmoon Burial Grounds/1 38.0,50.8
step
Complete the dungeon
kill Ner'zhul##76407 |q The Void-Gate##37149/2
step
#include "H_Garrison_MediumBuilding"
talk Impsy##88027
turnin The Void-Gate##37149 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "upperbrs"
Fight through the dungeon
click Bottled Flamefly##11285
Spire Flamefly |q Oralius' Adventure##37148/1 |goto Upper Blackrock Spire 2/1 36.0,16.7
step
Complete the dungeon
kill Warlord Zaela##77120 |q Oralius' Adventure##37148/2
step
#include "H_Garrison_MediumBuilding"
talk Oralius##88024
turnin Oralius' Adventure##37148 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "auchheroic"
click Soulsever Blade##
Soulsever Blade |q The Soulcutter##37156/1 |goto Auchindoun/1 53.5,63.1
step
Fight through the dungeon
click Soulweave Vessel##
Soulweave Vessel |q The Cure For Death##37154/1 |goto Auchindoun/1 24.1,32.5
step
Complete the dungeon
kill Teron'gor##77734 |q The Soulcutter##37156/2
step
Complete the dungeon
kill Teron'gor##77734 |q The Cure For Death##37154/2
step
#include "H_Garrison_MediumBuilding"
talk Lilian Voss##87996
turnin The Soulcutter##37156 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
#include "H_Garrison_MediumBuilding"
talk Leonid Barthalomew the Revered##87997
turnin The Cure For Death##37154 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "slagminesheroic"
kill 1 Bloodmaul Enforcer##84978+
kill 1 Bloodmaul Slaver##75191+
Giant Ogre Head |q Cro's Revenge##37152/1 |goto Bloodmaul Slag Mines 45,55
step
Fight through the dungeon
click Olaf's Shield
Olaf's Shield |q Time-Lost Vikings##37153/1 |goto Bloodmaul Slag Mines/1 45.6,56.5
step
Complete the dungeon
kill Gug'rokk##74790 |q Cro's Revenge##37152/2
step
Complete the dungeon
kill Gug'rokk##74790 |q Time-Lost Vikings##37153/2
step
#include "H_Garrison_MediumBuilding"
talk Cro Threadstrong##87991
turnin Cro's Revenge##37152 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
#include "H_Garrison_MediumBuilding"
talk Olaf##87992
turnin Time-Lost Vikings##37153 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "everbloomheroic"
Fight through the dungeon
click Overgrown Artifact##
Overgrown Artifact |q Titanic Evolution##37166/1 |goto The Everbloom/1 60.9,66.5
step
click Strangely-Glowing Frond##6807
Strangely-Glowing Frond |q Cenarion Concerns##37165/1 |goto The Everbloom/1 64.3,20.4
step
Complete the dungeon
kill Yalnu##83846 |q Titanic Evolution##37166/2
step
Complete the dungeon
kill Yalnu##83846 |q Cenarion Concerns##37165/2
step
#include "H_Garrison_MediumBuilding"
talk Lorewalker Cho##88005
turnin Titanic Evolution##37166 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
#include "H_Garrison_MediumBuilding"
talk Zen'kiki##88004
turnin Cenarion Concerns##37165 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "depotheroic"
Fight through the dungeon
click Huge Crate of Weapons
Huge Crate of Weapons |q And No Maces!##37167/1 |goto Grimrail Depot/1 54.7,38.9
step
Fight through the dungeon
click Iron Limbcleaver
Iron Limbcleaver |q Cleaving Time##37160/1 |goto Grimrail Depot/3 53.8,52.5
step
Complete the dungeon
kill Skylord Tovra##80005 |q And No Maces!##37167/2 |goto Grimrail Depot/4 15.3,51.7
step
Complete the dungeon
kill Skylord Tovra##80005 |q Cleaving Time##37160/2 |goto Grimrail Depot/4 15.3,51.7
step
#include "H_Garrison_MediumBuilding"
talk Lonika Stillblade##88006
turnin And No Maces!##37167 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
#include "H_Garrison_MediumBuilding"
talk Gamon##88007
turnin Cleaving Time##37160 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "irondocksheroic"
Fight through the dungeon
click Strange Brass Compass##6846
Strange Brass Compass |q The Brass Compass##37155/1 |goto Iron Docks/1 47.2,26.3
step
Fight through the dungeon
click Horribly Acidic Solution##
Horribly Acidic Solution |q Feeling A Bit Morose##37157/1 |goto Iron Docks/1 50.2,52.2
step
Complete the dungeon
kill Skulloc##83612 |q The Brass Compass##37155/2
step
Complete the dungeon
kill Skulloc##83612 |q Feeling A Bit Morose##37157/2
step
#include "H_Garrison_MediumBuilding"
talk Fleet Master Seahorn##87995
turnin The Brass Compass##37155 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
#include "H_Garrison_MediumBuilding"
talk Moroes##87994
turnin Feeling A Bit Morose##37157 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "sbgheroic"
Fight through the dungeon
click Dark Parchment
Dark Parchment |q Shadowy Secrets##37163/1 |goto Shadowmoon Burial Grounds/1 30.0,42.9
step
Fight through the dungeon
click Silver-Lined Arrow##11524
Silver-Lined Arrow |q The Huntresses##37164/1 |goto Shadowmoon Burial Grounds/1 83.6,80.6
step
Complete the dungeon
kill Ner'zhul##76407 |q Shadowy Secrets##37163/2
step
Complete the dungeon
kill Ner'zhul##76407 |q The Huntresses##37164/2
step
#include "H_Garrison_MediumBuilding"
talk Highlord Darion Mograine##88002
turnin Shadowy Secrets##37163 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
#include "H_Garrison_MediumBuilding"
talk Cowled Ranger##88003
turnin The Huntresses##37164 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "skyreachheroic"
Fight through the dungeon
click Pristine Plumage##13726
Pristine Plumage |q Aviana's Request##37159/1 |goto Skyreach/1 63.8,24.9
step
Fight through the dungeon
click Sun Crystal
Sun Crystal |q Gloriously Incandescent##37158/1 |goto Skyreach/1 52.9,48.6
step
Complete the dungeon
kill High Sage Viryx##76266 |q Aviana's Request##37159/2 |goto Skyreach/2 48.8,33.3
step
Complete the dungeon
kill High Sage Viryx##76266 |q Gloriously Incandescent##37158/2 |goto Skyreach/2 48.8,33.3
step
#include "H_Garrison_MediumBuilding"
talk Skylord Omnuron##87999
turnin Aviana's Request##37159 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
#include "H_Garrison_MediumBuilding"
talk Sunwalker Dezco##87998
turnin Gloriously Incandescent##37158 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "ubrsheroic"
Fight through the dungeon
click Finkle's Improved Skinner
Finkle's Immproved Skinner |q Family Traditions##37161/1 |goto Upper Blackrock Spire 2/2 30.3,38.3
step
Fight through the dungeon
click Shed Proto-Dragon Claw##7922
Shed Proto-Dragon Claw |q Damsels and Dragons##37162/1 |goto Upper Blackrock Spire 2/3 48.5,19.52
step
Complete the dungeon
kill Warlord Zaela##77120 |q Family Traditions##37161/2
step
Complete the dungeon
kill Warlord Zaela##77120 |q Damsels and Dragons##37162/2
step
#include "H_Garrison_MediumBuilding"
talk Finkle Einhorn##88000
turnin Family Traditions##37161 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
#include "H_Garrison_MediumBuilding"
talk Maximillian of Northshire##88001
turnin Damsels and Dragons##37162 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "achieve"
Complete all Frostwall Inn dungeon quests
|achieve 9703
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Frostwall Tavern, Level 3##116432
|only if not hasbuilding(36,3)
step
use Garrison Blueprint: Frostwall Tavern, Level 3##116432
#include "H_Garrison_ArchitectTable"
Click on your Frostwall Tavern and click _Upgrade_ |condition hasbuilding(36,3)
step
Congratulations, you now have a level 3 Frostwall Tavern!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "tavern_end"
You already have a level 3 Frostwall Tavern!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "gladiator"
Redirecting to Gladiator's Sanctum, Level 1 |next "gladiator1" |only if default
Redirecting to Gladiator's Sanctum, Level 2 |next "gladiator3" |only if hasbuilding(160,2)
Redirecting to Gladiator's Sanctum, Level 3 |next "gladiator_end" |only if hasbuilding(161,3)
step
label "gladiator1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Medium_ tab at the top, and create the _Gladiator's Sanctum_ in a Medium Empty Plot |condition hasbuilding(159,1)
step
#include "H_Garrison_MediumBuilding"
click Finalize Garrison Plot##
Finalize the Gladiator's Sanctum's construction
You can now upgrade your Gladiator's Sanctum to _level 2_
This grants access to the Nemesis quest series and safe fall and underwater breathing in Draenor
_You must be at least level 98 or have completed the Spires of Arak questline to buy this blueprint_
__
Click here to proceed with _Gladiator's Sanctum Level 2_ |confirm |next "gladiator2"
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "gladiator2"
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Gladiator's Sanctum, Level 2##111980
|only if not hasbuilding(160,2)
step
use Garrison Blueprint: Gladiator's Sanctum, Level 2##111980
#include "H_Garrison_ArchitectTable"
Click on your Gladiator's Sanctum and click _Upgrade_ |condition hasbuilding(160,2)
__
You can now upgrade your Gladiator's Sanctum to _level 3_
Click here to proceed with _Gladiator's Sanctum Level 3_ |confirm always |next "gladiator3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "gladiator3"
In order to get the blueprints for level 3, you must complete _The Bone Collector_ achievement
This requires you to collect 4000 broken bones from other players in Player vs Player combat in Draenor
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9495)
step
#include "H_Garrison_MediumBuilding"
talk Raza'kul##86629
accept Warlord of Draenor##36874
step
Fly to Ashran |goto Frostwall/0 45.8,50.8 < 7
Follow the road south |goto Warspear/0 46.8,60.9 < 10
Click _Yes_ to join the battle of Ashran
Click the box that appears in the top-right part of your screen
accept Welcome to Ashran##36196 |goto Ashran/0 43.27,24.19
step
talk General Ushet Wolfbarger##84473
turnin Welcome to Ashran##36196 |goto Ashran/0 45.09,27.96
accept Reporting For Duty##36197 |goto Ashran/0 45.09,27.96
step
talk Angry Zurge##83869
Speak to Zurge |q Reporting For Duty##36197/2 |goto Ashran/0 45.7,29.0
step
talk Belloc Brightblade##88448
Speak to Belloc Brlightbalde |q Reporting For Duty##36197/1 |goto Ashran/0 45.9,29.1
step
talk Mare Wildrunner##84660
Speak to Mare Wildrunner |q Reporting For Duty##36197/3 |goto Ashran/0 47.0,26.8
step
talk General Ushet Wolfbarger##84473
turnin Reporting For Duty##36197 |goto Ashran/0 45.09,27.96
step
Kill enemy players in Ashran and acquire 10 Broken Bones
collect 10 Broken Bones##118043 |n
Broken Bones |q Warlord of Draenor##36874/1
step
#include "H_Garrison_MediumBuilding"
click Altar of Bones##59809
Place a work order for a Conqueror's Tribute |q Warlord of Draenor##36874/2
step
#include "H_Garrison_MediumBuilding"
talk Raza'kul##86629
turnin Warlord of Draenor##36874
step
Kill enemy players in PvP and collect 4000 Broken Bones
|achieve 9495
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Gladiator's Sanctum, Level 3##111981
|only if not hasbuilding(161,3)
step
use Garrison Blueprint: Gladiator's Sanctum, Level 3##111981
#include "H_Garrison_ArchitectTable"
Click on your Gladiator's Sanctum and click _Upgrade_ |condition hasbuilding(161,3)
step
Congratulations, you now have a level 3 Gladiator's Sanctum!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "gladiator_end"
You already have a level 3 Gladiator's Sanctum!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "mill"
Redirecting to Lumber Mill, Level 1 |next "mill1" |only if default
Redirecting to Lumber Mill, Level 2 |next "mill3" |only if hasbuilding(41,2)
Redirecting to Lumber Mill, Level 3 |next "mill_end" |only if hasbuilding(138,3)
step
label "mill1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Medium_ tab at the top, and create the _Lumber Mill_ in a Medium Empty Plot |condition hasbuilding(40,1)
step
#include "H_Garrison_MediumBuilding"
click Finalize Garrison Plot##
Finalize the Lumber Mill's construction
You can now upgrade your Lumber Mill to _level 2_
This will allow you to mark medium trees for extra Timber
_You must be at least level 98 or have completed the Spires of Arak questline to buy this blueprint_
__
Click here to proceed to _Lumber Mill Level 2_ |confirm |next "mill2"
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "mill2"
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Lumber Mill, Level 2##109254
|only if not hasbuilding(41,2)
step
use Garrison Blueprint: Lumber Mill, Level 2##109254
#include "H_Garrison_ArchitectTable"
Click on your Lumber Mill and click _Upgrade_ |condition hasbuilding(41,2)
__
You can now upgrade your Lumber Mill to _level 3_
Click here to proceed to _Lumber Mill Level 3_ |confirm always |next "mill3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "mill3"
In order to get the blueprints for level 3, you must complete the _Upgrading the Mill_ achievement
This requires you to place 75 work orders at the lumber mill and complete 2 quest lines
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9429)
step
#include "H_Garrison_MediumBuilding"
talk Lumber Lord Oktron##84247
accept Easing into Lumberjacking##36137
step
_Climb_ up the snowy hill |goto Frostfire Ridge/0 47.2,53.8 < 20
Follow the path into _Stonefang Outpost_ |goto Frostfire Ridge/0 46.4,52.3 < 20
_Head down_ the path |goto Frostfire Ridge/0 45.6,53.3 < 20
click Small Timber##
Timber Harvested |q Easing into Lumberjacking##36137/1 |goto Frostfire Ridge/0 44.3,53.8
step
#include "H_Garrison_MediumBuilding"
talk Lumber Lord Oktron##84247
turnin Easing into Lumberjacking##36137
accept Turning Timber into Profit##36138
step
click Small Timber## |tip These can be found all around this area.
Timber Harvested |q Turning Timber into Profit##36138/1 |goto Gorgrond/0 47.8,77.2
step
use Garrison Hearthstone##110560
Return to your Garrison |goto Frostwall/0 41.1,53.2 < 100 |c |noway
step
#include "H_Garrison_MediumBuilding"
talk Lumber Lord Oktron##84247
Tell him _"I would like to submit a work order"_
Click _Start Work Order_
Work Order Started |q Turning Timber into Profit##36138/2
step
talk Lumber Lord Oktron##84247
turnin Turning Timber into Profit##36138 |goto Frostwall/0 53.1,36.6
step
#include "H_Garrison_MediumBuilding"
talk Lumber Lord Oktron##84247
Tell him _"I would like to submit a work order"_
Place 75 total work orders
|achieve 9429/1
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Lumber Mill, Level 3##109255
|only if not hasbuilding(138,3)
step
use Garrison Blueprint: Lumber Mill, Level 3##109255
#include "H_Garrison_ArchitectTable"
Click on your Lumber Mill and click _Upgrade_ |condition hasbuilding(138,3)
step
Congratulations, you now have a level 3 Lumber Mill!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "mill_end"
You already have a level 3 Lumber Mill!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "tradingpost"
Redirecting to Trading Post, Level 1 |next "tradingpost1" |only if default
Redirecting to Trading Post, Level 2 |next "tradingpost3" |only if hasbuilding(144,2)
Redirecting to Trading Post, Level 3 |next "tradingpost_end" |only if hasbuilding(145,3)
step
label "tradingpost1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Medium_ tab at the top, and create the _Trading Post_ in a Medium Empty Plot |condition hasbuilding(111,1)
step
#include "H_Garrison_MediumBuilding"
click Finalize Garrison Plot##
Finalize the Trading Post's construction
You can now upgrade your Trading Post to _level 2_
This will allow you to build an Auctioneer and unlocks access to the Sha'tari Defense or Laughing Skull factions
_You must be at least level 98 or have completed the Spires of Arak questline to buy this blueprint_
__
Click here to proceed to _Trading Post, Level 2_ |confirm |next "tradingpost2"
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "tradingpost2"
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Trading Post, Level 2##111986
|only if not hasbuilding(144,2)
step
use Garrison Blueprint: Trading Post, Level 2##111986
#include "H_Garrison_ArchitectTable"
Click on your Trading Post and click _Upgrade_ |condition hasbuilding(144,2)
__
You can now upgrade your Trading Post to _level 3_
Click here to proceed to _Trading Post Level 3_ |confirm always |next "tradingpost3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "tradingpost3"
In order to get the blueprint for level 3, you must complete the _Savage Friends_ achievement
This requires you to ear Exalted with 3 Draenor reputations
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9477)
step
#include "H_Garrison_MediumBuilding"
talk Fayla Fairfeather##87120
accept Tricks of the Trade##37062
step
use Mug of Rousing Coffee##118418
Trader Roused |q Tricks of the Trade##37062/1 |goto Frostwall 45.3,14.4
step
#include "H_Garrison_MediumBuilding"
talk Fayla Fairfeather##87120
turnin Tricks of the Trade##37062
step
Earn Exalted reputation with 3 Draenor factions
|achieve 9477
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Trading Post, Level 3##111987
|only if not hasbuilding(145,3)
step
use Garrison Blueprint: Trading Post, Level 3##111987
#include "H_Garrison_ArchitectTable"
Click on your Trading Post and click _Upgrade_ |condition hasbuilding(145,3)
step
Congratulations, you now have a level 3 Trading Post!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "tradingpost_end"
You already have a level 3 Trading Post!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "barracks"
Redirecting to Barracks, Level 1 |next "barracks1" |only if default
Redirecting to Barracks, Level 2 |next "barracks3" |only if hasbuilding(27,2)
Redirecting to Barracks, Level 3 |next "barracks_end" |only if hasbuilding(28,3)
step
label "barracks1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Large_ tab at the top, and create the _Barracks_ in a Large Empty Plot |condition hasbuilding(26,1)
step
#include "H_Garrison_LargeBuilding"
click Finalize Garrison Plot##
Finalize the Barracks' construction
You can now upgrade your Barracks to _level 2_
This will allow a follower with the Bodyguard trait to fight with you in Draenor
_You must be at least level 100 or have completed the Nagrand questline to buy this blueprint_
__
Click here to proceed to _Barracks Level 2_ |confirm |next "barracks2"
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "barracks2"
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Barracks, Level 2##111970
|only if not hasbuilding(27,2)
step
use Garrison Blueprint: Barracks, Level 2##111970
#include "H_Garrison_ArchitectTable"
Click on your Barracks and click _Upgrade_ |condition hasbuilding(27,2)
__
You can now upgrade your Barracks to _level 3_
Click here to proceed to _Barracks Level 3_ |confirm always |next "barracks3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "barracks3"
In order to get the blueprint for level 3, you must complete the _Patrolling Draenor_ achievement
This requires you to complete 50 Garrison Patrol Missions
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9523)
step
#include "H_Garrison_CommandTable"
Use the Command Table to send your followers and complete Patrol Missions
|achieve 9523
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Barracks, Level 3##111971
|only if not hasbuilding(28,3)
step
use Garrison Blueprint: Barracks, Level 3##111971
#include "H_Garrison_ArchitectTable"
Click on your Barracks and click _Upgrade_ |condition hasbuilding(28,3)
step
Congratulations, you now have a level 3 Barracks!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "barracks_end"
You already have a level 3 Barracks!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "workshop"
Redirecting to Goblin Workshop, Level 1 |next "workshop1" |only if default
Redirecting to Goblin Workshop, Level 2 |next "workshop3" |only if hasbuilding(163,2)
Redirecting to Goblin Workshop, Level 3 |next "workshop_end" |only if hasbuilding(164,3)
step
label "workshop1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Large_ tab at the top, and create the _Goblin Workshop_ in a Large Empty Plot |condition hasbuilding(162,1)
step
#include "H_Garrison_LargeBuilding"
click Finalize Garrison Plot##
Finalize the Goblin Workshop's construction
You can now upgrade your Goblin Workshop to _level 2_
This will allow access to five new devices
_You must be at least level 100 or have completed the Nagrand questline to buy this blueprint_
__
Click here to proceed to _Goblin Workshop Level 2_ |confirm |next "workshop2"
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "workshop2"
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Goblin Workshop, Level 2##116200
|only if not hasbuilding(163,2)
step
use Garrison Blueprint: Goblin Workshop, Level 2##116200
#include "H_Garrison_ArchitectTable"
Click on your Goblin Workshop and click _Upgrade_ |condition hasbuilding(163,2)
__
You can now upgrade your Goblin Workshop to _level 3_
Click here to proceed with _Goblin Workshop Level 3_ |confirm always |next "workshop3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "workshop3"
In order to get the blueprints for level 3, you must complete the _Terrific Technology_ achievement
This requires you to use all of the available inventions from the workshop
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm
step
#include "H_Garrison_LargeBuilding"
talk Vee##85369
accept Unconventional Inventions##37044
step
Click one of the workshop inventions on your workshop bench
Acquire a Workshop Invention |q Unconventional Inventions##37044/1
step
#include "H_Garrison_LargeBuilding"
talk Vee##85369
turnin Unconventional Inventions##37044
step
#include "H_Garrison_LargeBuilding"
Click one of the workshop inventions on your workshop bench
Get and use inventions
|achieve 9527/1
|achieve 9527/2
|achieve 9527/3
|achieve 9527/4
|achieve 9527/5
|achieve 9527/6
|achieve 9527/7
|achieve 9527/8
|achieve 9527/9
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Goblin Workshop, Level 3##116201
|only if not hasbuilding(164,3)
step
use Garrison Blueprint: Goblin Workshop, Level 3##116201
#include "H_Garrison_ArchitectTable"
Click on your Goblin Workshop and click _Upgrade_ |condition hasbuilding(164,3)
step
Congratulations, you now have a level 3 Goblin Workshop!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "workshop_end"
You already have a level 3 Goblin Workshop!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "lodge"
Redirecting to Spirit Lodge, Level 1 |next "lodge1" |only if default
Redirecting to Spirit Lodge, Level 2 |next "lodge3" |only if hasbuilding(38,2)
Redirecting to Spirit Lodge, Level 3 |next "lodge_end" |only if hasbuilding(39,3)
step
label "lodge1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Large_ tab at the top, and create the _Spirit Lodge_ in a Large Empty Plot |condition hasbuilding(37,1)
step
#include "H_Garrison_LargeBuilding"
click Finalize Garrison Plot##
Finalize the Spirit Lodge's construction
You can now upgrade your Spirit Lodge to _level 2_
This will allow access to a second Orge Waygate
_You must be at least level 100 or have completed the Nagrand questline to buy this blueprint_
__
Click here to proceed to _Spirit Lodge Level 2_ |confirm |next "lodge2"
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "lodge2"
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Spirit Lodge, Level 2##116196
|only if not hasbuilding(38,2)
step
use Garrison Blueprint: Spirit Lodge, Level 2##116196
#include "H_Garrison_ArchitectTable"
Click on your Spirit Lodge and click _Upgrade_ |condition hasbuilding(38,2)
__
You can now upgrade your Spirit Lodge to _level 3_
Click here to proceed to _Spirit Lodge Level 3_ |confirm always |next "lodge3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "lodge3"
In order to get the blueprints for level 3, you must complete the _Finding Your Waystones_ achievement
This requires you to loot 500 Ogre Waystones
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9497)
step
#include "H_Garrison_LargeBuilding"
talk Gez'la##79836
accept Ogre Waygates##36848
step
kill 1 Sootstained Enforcer##80948+
kill 1 Sootstained Mauler##80949+
kill 1 Bladespire Chef##73555+
kill 1 Sootstained Slaver##72752+
kill 1 Sootstained Taskmaster##76706+
collect Ogre Waystone##117491 |n
Ogre Waystone |q Ogre Waygates##36848/1 |goto Frostfire Ridge/0 29.6,41.9
step
You can now use these Ogre Waystones to activate a permanent portal in your Garrison that takes you to a specific zone
Any one of the following portals can be created:
The Cracking Plains, Frostfire Ridge |confirm |next "frostfire"
Tuurem, Talador |confirm |next "talador"
Ancestral Grounds, Nagrand |confirm |next "nagrand"
Veil Zekk, Spires of Arak |confirm |next "spires"
step
label "frostfire"
click Deactivated Ogre Waygate##
Activate an Orgre Waygate |q Ogre Waygates##36848/2 |goto Frostfire Ridge/0 59.6,47.5
|next "turnin"
step
label "talador"
click Deactivated Ogre Waygate##
Activate an Orgre Waygate |q Ogre Waygates##36848/2 |goto Talador/0 55.1,48.2
|next "turnin"
step
label "nagrand"
click Deactivated Ogre Waygate##
Activate an Orgre Waygate |q Ogre Waygates##36848/2 |goto Nagrand D/0 32.2,46.2
|next "turnin"
step
label "spires"
click Deactivated Ogre Waygate##
Activate an Orgre Waygate |q Ogre Waygates##36848/2 |goto Spires of Arak/0 54.6,51.6
|next "turnin"
step
label "turnin"
Click the _Ogre Waygate_ in front of you
Return to your Garrison |goto Frostwall/0 53.8,54.2 < 150 |c |noway
step
#include "H_Garrison_LargeBuilding"
talk Gez'la##79836
turnin Ogre Waygates##36848 |tip You can repeat this process to create a second Ogre Waygate.
step
Go to this spot and kill Sootstained mobs
collect Ogre Waystone##117491 |n |goto Frostfire Ridge/0 29.6,41.9
|achieve 9497
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Spirit Lodge, Level 3##116197
|only if not hasbuilding(39,3)
step
use Garrison Blueprint: Spirit Lodge, Level 3##116197
#include "H_Garrison_ArchitectTable"
Click on your Spirit Lodge and click _Upgrade_ |condition hasbuilding(39,3)
step
Congratulations, you now have a level 3 Spirit Lodge!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "lodge_end"
You already have a level 3 Spirit Lodge!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "stables"
Redirecting to Stables, Level 1 |next "stables1" |only if default
Redirecting to Stables, Level 2 |next "stables3" |only if hasbuilding(66,2)
Redirecting to Stables, Level 3 |next "stables_end" |only if hasbuilding(67,3)
step
label "stables1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Large_ tab at the top, and create the _Stables_ in a Large Empty Plot |condition hasbuilding(65,1)
step
#include "H_Garrison_LargeBuilding"
click Finalize Garrison Plot##
Finalize the Stables' construction
You can now upgrade your Stables to _level 2_
This will make you immune to daze while riding mounts in Draenor
_You must be at least level 100 or have completed the Nagrand questline to buy this blueprint_
__
Click here to proceed to _Stables Level 2_ |confirm |next "stables2"
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "stables2"
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Stables, Level 2##112002
|only if not hasbuilding(66,2)
step
use Garrison Blueprint: Stables, Level 2##112002
#include "H_Garrison_ArchitectTable"
Click on your Stables and click _Upgrade_ |condition hasbuilding(66,2)
__
You can now upgrade your Stables to _level 3_
Click here to proceed to _Stables Level 3_ |confirm always |next "stables3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "stables3"
In order to get the blueprints for level 3, you must complete the _Master of Mounts_ achivement
This requires you to fully train all six mounts
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not completedq(36950)
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
accept The Black Claw##37123
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
Talk to Sage Paluna |q The Black Claw##37123/1
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
turnin The Black Claw##37123
step
#include "H_Garrison_LargeBuilding"
click Black Claw of Sethe##237169 |tip It is a small black, sparkling claw sitting on the ground in your Stables.
.collect 1 Black Claw of Sethe##118469 |tip You need this with you as you train your new mounts.
|only if not achieved(9705)
step
#include "H_Garrison_LargeBuilding"
talk Tormak the Scarred##86979
accept Capturing a Clefthoof##36912
step
clicknpc Young Icehoof##86847
use Clefthoof Lasso##118287 |tip The clefthoof will run from you, chase it. If it gets too far away from you the rope will break.
Clefhoof Tamed |q Capturing a Clefthoof##36912/1 |goto Frostfire Ridge 54.6,19.9
step
#include "H_Garrison_LargeBuilding"
talk Tormak the Scarred##86979
turnin Capturing a Clefthoof##36912
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
accept Taming a Talbuk##36917
step
clicknpc Young Silverpelt##86801
use Talbuk Lasso##118284 |tip The talbuk will run from you, chase it. If it gets too far away from you the rope will break.
Silverpelt Tamed |q Taming a Talbuk##36917/1 |goto Shadowmoon Valley D/0 50.9,30.1
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
turnin Taming a Talbuk##36917
step
#include "H_Garrison_LargeBuilding"
talk Tormak the Scarred##86979
accept Besting a Boar##36944
step
clicknpc Young Rocktusk##86850
use Boar Lasso##118288 |tip The boar will run from you, chase it. If it gets too far away from you the rope will break.
Tame a Young Rocktusk |q Besting a Boar##36944/1 |goto Gorgrond/0 43.1,37.2
step
#include "H_Garrison_LargeBuilding"
talk Tormak the Scarred##86979
turnin Besting a Boar##36944
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
accept Requisition a Riverbeast##36945
step
clicknpc Young Riverwallow##86848
use Riverbeast Lasso##118285 |tip The beast will run from you, chase it. If it gets too far away from you the rope will break.
Tame a Young Riverwallow |q Requisition a Riverbeast##36945/1 |goto Talador/0 64.4,56.3
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
turnin Requisition a Riverbeast##36945
step
#include "H_Garrison_LargeBuilding"
talk Tormak the Scarred##86979
accept Entangling an Elekk##36946
step
clicknpc Young Meadowstomper##86852
use Elekk Lasso##118286 |tip The elekk will run from you, chase it. If it gets too far away from you the rope will break.
Tame a Young Meadowstomper |q Entangling an Elekk##36946/1 |goto Nagrand D/0 85.1,40.7
step
#include "H_Garrison_LargeBuilding"
talk Tormak the Scarred##86979
turnin Entangling an Elekk##36946
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
accept Wrangling a Wolf##36950
step
clicknpc Young Snarler##86851
use Wolf Lasso##118283 |tip The wolf will run from you, chase it. If it gets too far away from you the rope will break.
Tame a Young Snarler |q Wrangling a Wolf##36950/1 |goto Nagrand D/0 57.2,60.3
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
turnin Wrangling a Wolf##36950
step
Accept all available training dailies:
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
accept Riverbeast Training: Gezz'ran##37071
accept Talbuk Training: Rakkiri##37094
accept Wolf Training: Cruel Ogres##37105
accept Boar Training: Riplash##37032
accept Clefthoof Training: Rakkiri##37049
accept Elekk Training: Cruel Ogres##37063
step
use Icehoof-In-Training Whistle##118348
kill Rakkiri##87085
Rakkiri Killed |q Clefthoof Training: Rakkiri##37049/1 |goto Frostfire Ridge 72.9,69.9
step
use Silverpelt-In-Training Whistle##118352 |goto Frostfire Ridge 72.9,69.9
kill Rakkiri##87085
Rakkiri Killed |q Talbuk Training: Rakkiri##37094/1
step
use Rocktusk-In-Training Whistle##118351
kill Riplash##87084
Riplash Killed |q Boar Training: Riplash##37032/1 |goto Gorgrond 50.2,38.0
step
use Riverwallow-In-Training Whistle##118350
kill Gezz'ran##87086
Gezz'ran Killed |q Riverbeast Training: Gezz'ran##37071/1 |goto Talador 31.6,54.7
step
use Meadowstomper-In-Training Whistle##118349
kill Gorian Beast-Lasher##87095
Gorian Beast-Lasher Killed |q Elekk Training: Cruel Ogres##37063/1 |goto Nagrand D/0 79.1,71.7
step
use Snarler-In-Training Whistle##118353
kill Gorian Beast-Lasher##87095
Gorian Beast-Lasher Killed |q Wolf Training: Cruel Ogres##37105/1 |goto Nagrand D/0 79.1,71.7
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
turnin Riverbeast Training: Gezz'ran##37071
turnin Talbuk Training: Rakkiri##37094
turnin Wolf Training: Cruel Ogres##37105
turnin Boar Training: Riplash##37032
turnin Clefthoof Training: Rakkiri##37049
turnin Elekk Training: Cruel Ogres##37063
step
Accept all available training dailies:
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
accept Boar Training: Gezz'ran##37033
accept Clefthoof Training: Great-Tusk##37048
accept Elekk Training: Darkwing Roc##37064
accept Riverbeast Training: Bulbapore##37072
accept Talbuk Training: Great-Tusk##37093
accept Wolf Training: Darkwing Roc##37106
step
_Go up_ the path |goto Nagrand D/0 67.3,16.1 < 10
_Cross the bridge_ |goto 66.6,17.6 < 10
use Meadowstomper-In-Training Whistle##118349
kill 1 Darkwing Roc##87088
Darkwing Roc Killed |q Elekk Training: Darkwing Roc##37064/1 |goto Nagrand D/0 68.5,20.5
step
use Snarler-In-Training Whistle##118353
kill 1 Darkwing Roc##87088
Darkwing Roc Killed |q Wolf Training: Darkwing Roc##37106/1 |goto Nagrand D/0 68.5,20.5
step
use Rocktusk-In-Training Whistle##118351
kill 1 Gezz'ran##87086
Gezz'ran Killed |q Boar Training: Gezz'ran##37033/1 |goto Talador/0 31.4,54.4
step
use Icehoof-In-Training Whistle##118348
kill 1 Great-Tusk##87083
Great-Tusk Killed |q Clefthoof Training: Great-Tusk##37048/1 |goto Shadowmoon Valley D/0 62.9,39.1
step
use Silverpelt-In-Training Whistle##118352
kill 1 Great-Tusk##87083
Great-Tusk Killed |q Talbuk Training: Great-Tusk##37093/1 |goto Shadowmoon Valley D/0 62.9,39.1
step
use Riverwallow-In-Training Whistle##118350
kill 1 Bulbapore##87087
Bulbapore Killed |q Riverbeast Training: Bulbapore##37072/1 |goto Spires of Arak/0 66.7,75.7
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
turnin Boar Training: Gezz'ran##37033
turnin Clefthoof Training: Great-Tusk##37048
turnin Elekk Training: Darkwing Roc##37064
turnin Riverbeast Training: Bulbapore##37072
turnin Talbuk Training: Great-Tusk##37093
turnin Wolf Training: Darkwing Roc##37106
step
Accept all available training dailies:
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
accept Boar Training: Bulbapore##37034
accept Clefthoof Training: Riplash##37050
accept Elekk Training: Moth of Wrath##37065
accept Riverbeast Training: Cruel Ogres##37073
accept Talbuk Training: Riplash##37095
accept Wolf Training: Moth of Wrath##37107
step
use Icehoof-In-Training Whistle##118348
kill 1 Riplash##87084
Riplash killed |q Clefthoof Training: Riplash##37050/1 |goto Gorgrond/0 50.5,38.0
step
use Silverpelt-In-Training Whistle##118352
kill 1 Riplash##87084
Riplash killed |q Talbuk Training: Riplash##37095/1 |goto Gorgrond/0 50.5,38.0
step
use Rocktusk-In-Training Whistle##118351
kill 1 Bulbapore##87087
Bulbapore Killed |q Boar Training: Bulbapore##37034/1 |goto Spires of Arak/0 66.7,75.7
step
use Riverwallow-In-Training Whistle##118350
kill Gorian Beast-Lasher##87095
Gorian Beast-Lasher Killed |q Riverbeast Training: Cruel Ogres##37073/1 |goto Nagrand D/0 79.1,71.7
step
use Meadowstomper-In-Training Whistle##118349
kill 1 Moth of Wrath##87089
Moth of Wrath killed |q Elekk Training: Moth of Wrath##37065/1 |goto Nagrand D 43.6,69.6
step
use Snarler-In-Training Whistle##118353
kill 1 Moth of Wrath##87089
Moth of Wrath killed |q Wolf Training: Moth of Wrath##37107/1 |goto Nagrand D 43.6,69.6
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
turnin Boar Training: Bulbapore##37034
turnin Clefthoof Training: Riplash##37050
turnin Elekk Training: Moth of Wrath##37065
turnin Riverbeast Training: Cruel Ogres##37073
turnin Talbuk Training: Riplash##37095
turnin Wolf Training: Moth of Wrath##37107
step
Accept all available training dailies:
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
accept Riverbeast Training: Darkwing Roc##37074
accept Talbuk Training: Gezz'ran##37096
accept Wolf Training: Thundercall##37108
accept Boar Training: Cruel Ogres##37035
accept Clefthoof Training: Gezz'ran##37051
accept Elekk Training: Thundercall##37066
step
_Go up_ the path |goto Nagrand D/0 67.3,16.1 < 10
_Cross the bridge_ |goto 66.6,17.6 < 10
use Riverwallow-In-Training Whistle##118350
kill 1 Darkwing Roc##87088
Darkwing Roc Killed |q Riverbeast Training: Darkwing Roc##37074/1 |goto Nagrand D/0 68.5,20.5
step
_Proceed up_ the path |goto Nagrand D/0 83.5,33.1 < 10
_Continue_ up |goto 85.0,34.8 < 10
_Take the left_ path |goto 86.4,37.0 < 10
_Go down_ the path |goto Nagrand D/0 88.6,35.0 < 10
Head _along the side of the mountain_ |goto 89.0,30.3 < 10
use Meadowstomper-In-Training Whistle##118349
kill 1 Thundercall##87102
Thundercall Killed |q Elekk Training: Thundercall##37066/1 |goto Nagrand D 90.6,23.6
step
use Snarler-In-Training Whistle##118353
kill 1 Thundercall##87102
Thundercall Killed |q Wolf Training: Thundercall##37108/1 |goto Nagrand D 90.6,23.6
step
use Rocktusk-In-Training Whistle##118351
kill 1 Gorian Beast-Lasher##87095
Gorian Beast-Lasher Killed |q Boar Training: Cruel Ogres##37035/1 |goto Nagrand D/0 79.1,71.7
step
use Icehoof-In-Training Whistle##118348
kill 1 Gezz'ran##87086
Gezz'ran Killed |q Clefthoof Training: Gezz'ran##37051/1 |goto Talador/0 31.4,54.4
step
use Silverpelt-In-Training Whistle##118352
kill 1 Gezz'ran##87086
Gezz'ran Killed |q Talbuk Training: Gezz'ran##37096/1 |goto Talador/0 31.4,54.4
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
turnin Riverbeast Training: Darkwing Roc##37074
turnin Talbuk Training: Gezz'ran##37096
turnin Wolf Training: Thundercall##37108
turnin Boar Training: Cruel Ogres##37035
turnin Clefthoof Training: Gezz'ran##37051
turnin Elekk Training: Thundercall##37066
step
Accept all available training dailies:
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
accept Boar Training: Darkwing Roc##37036
accept Clefthoof Training: Bulbapore##37052
accept Elekk Training: Ironbore##37067
accept Riverbeast Training: Moth of Wrath##37075
accept Talbuk Training: Bulbapore##37097
accept Wolf Training: Ironbore##37109
step
_Go up_ the path |goto Nagrand D/0 67.3,16.1 < 10
_Cross the bridge_ |goto 66.6,17.6 < 10
use Rocktusk-In-Training Whistle##118351
kill 1 Darkwing Roc##87088
Darkwing Roc Killed |q Boar Training: Darkwing Roc##37036/1 |goto Nagrand D/0 68.5,20.5
step
use Meadowstomper-In-Training Whistle##118349
kill 1 Ironbore##87090
Ironbore Killed |q Elekk Training: Ironbore##37067/1 |goto Nagrand D/0 53.2,77.6
step
use Snarler-In-Training Whistle##118353
kill 1 Ironbore##87090
Ironbore Killed |q Wolf Training: Ironbore##37109/1 |goto Nagrand D/0 53.2,77.6
step
use Riverwallow-In-Training Whistle##118350
kill 1 Moth of Wrath##87089
Moth of Wrath Killed |q Riverbeast Training: Moth of Wrath##37075/1 |goto Nagrand D/0 43.6,69.6
step
use Icehoof-In-Training Whistle##118348
kill 1 Bulbapore##87087
Bulbapore Killed |q Clefthoof Training: Bulbapore##37052/1 |goto Spires of Arak/0 66.7,75.7
step
use Silverpelt-In-Training Whistle##118352
kill 1 Bulbapore##87087
Bulbapore Killed |q Talbuk Training: Bulbapore##37097/1 |goto Spires of Arak/0 66.7,75.7
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
turnin Boar Training: Darkwing Roc##37036
turnin Clefthoof Training: Bulbapore##37052
turnin Elekk Training: Ironbore##37067
turnin Riverbeast Training: Moth of Wrath##37075
turnin Talbuk Training: Bulbapore##37097
turnin Wolf Training: Ironbore##37109
step
Accept all available training dailies:
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
accept Boar Training: Moth of Wrath##37037
accept Clefthoof Training: Cruel Ogres##37053
accept Elekk Training: Orc Hunters##37068
accept Riverbeast Training: Thundercall##37076
accept Talbuk Training: Cruel Ogres##37098
accept Wolf Training: Orc Hunters##37110
step
use Meadowstomper-In-Training Whistle##118349
kill 1 Karak the Great Hunter##87105 |q Elekk Training: Orc Hunters##37067/1 |goto Nagrand D/0 69.6,34.6
step
use Snarler-In-Training Whistle##118353
kill 1 Karak the Great Hunter##87105 |q Wolf Training: Orc Hunters##37110/1 |goto Nagrand D/0 69.6,34.6
step
_Proceed up_ the path |goto Nagrand D/0 83.5,33.1 < 10
_Continue_ up |goto 85.0,34.8 < 10
_Take the left_ path |goto 86.4,37.0 < 10
_Go down_ the path |goto Nagrand D/0 88.6,35.0 < 10
Head _along the side of the mountain_ |goto 89.0,30.3 < 10
use Riverwallow-In-Training Whistle##118350
kill 1 Thundercall##87102 |q Riverbeast Training: Thundercall##37076/1 |goto Nagrand D 90.6,23.6
step
use Icehoof-In-Training Whistle##118348
kill 1 Gorian Beast-Lasher##87095
Gorian Beast-Lasher Killed |q Clefthoof Training: Cruel Ogres##37053/1 |goto Nagrand D/0 79.1,71.7
step
use Silverpelt-In-Training Whistle##118352
kill 1 Gorian Beast-Lasher##87095
Gorian Beast-Lasher Killed |q Talbuk Training: Cruel Ogres##37098/1 |goto Nagrand D/0 79.1,71.7
step
use Rocktusk-In-Training Whistle##118351
kill 1 Moth of Wrath##87089
Moth of Wrath Killed |q Boar Training: Moth of Wrath##37037/1 |goto Nagrand D/0 43.6,69.6
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
turnin Boar Training: Moth of Wrath##37037
turnin Clefthoof Training: Cruel Ogres##37053
turnin Elekk Training: Orc Hunters##37068
turnin Riverbeast Training: Thundercall##37076
turnin Talbuk Training: Cruel Ogres##37098
turnin Wolf Training: Orc Hunters##37110
step
Accept all available training dailies:
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
accept Boar Training: Thundercall##37038
accept Clefthoof Training: Darkwing Roc##37054
accept Elekk Training: The Garn##37069
accept Riverbeast Training: Ironbore##37077
accept Talbuk Training: Darkwing Roc##37099
accept Wolf Training: The Garn##37111
step
_Go up_ the path |goto Nagrand D/0 67.3,16.1 < 10
_Cross the bridge_ |goto 66.6,17.6 < 10
use Icehoof-In-Training Whistle##118348
kill 1 Darkwing Roc##87088
Darkwing Roc Killed |q Clefthoof Training: Darkwing Roc##37054/1 |goto Nagrand D/0 68.5,20.5
step
use Silverpelt-In-Training Whistle##118352
kill 1 Darkwing Roc##87088
Darkwing Roc Killed |q Talbuk Training: Darkwing Roc##37099/1 |goto Nagrand D/0 68.5,20.5
step
_Proceed up_ the path |goto Nagrand D/0 83.5,33.1 < 10
_Continue_ up |goto 85.0,34.8 < 10
_Take the left_ path |goto 86.4,37.0 < 10
_Go down_ the path |goto Nagrand D/0 88.6,35.0 < 10
Head _along the side of the mountain_ |goto 89.0,30.3 < 10
use Rocktusk-In-Training Whistle##118351
kill 1 Thundercall##87102
Thundercall Killed |q Boar Training: Thundercall##37038/1 |goto Nagrand D 90.6,23.6
step
use Meadowstomper-In-Training Whistle##118349
kill 1 Maimclaw##87174
Maimclaw Killed |q Elekk Training: The Garn##37069/1 |goto Nagrand D/0 63.8,80.8
step
use Snarler-In-Training Whistle##118353
kill 1 Maimclaw##87174
Maimclaw Killed |q Wolf Training: The Garn##37111/1 |goto Nagrand D/0 63.8,80.8
step
use Riverwallow-In-Training Whistle##118350
kill 1 Ironbore##87090
Ironbore Killed |q Riverbeast Training: Ironbore##37077/1 |goto Nagrand D/0 53.2,77.6
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
turnin Boar Training: Thundercall##37038
turnin Clefthoof Training: Darkwing Roc##37054
turnin Elekk Training: The Garn##37069
turnin Riverbeast Training: Ironbore##37077
turnin Talbuk Training: Darkwing Roc##37099
turnin Wolf Training: The Garn##37111
step
Accept all available training dailies:
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
accept Riverbeast Training: Orc Hunters##37078
accept Talbuk Training: Moth of Wrath##37100
accept Boar Training: Ironbore##37039
accept Clefthoof Training: Moth of Wrath##37055
step
use Riverwallow-In-Training Whistle##118350
kill 1 Karak the Great Hunter##87105
Karak the Great Hunter Killed |q Riverbeast Training: Orc Hunters##37078/1 |goto Nagrand D/0 69.6,34.6
step
use Rocktusk-In-Training Whistle##118351
kill 1 Ironbore##87090
Ironbore Killed |q Boar Training: Ironbore##37039/1 |goto Nagrand D/0 53.2,77.6
step
use Icehoof-In-Training Whistle##118348
kill 1 Moth of Wrath##87089
Moth of Wrath Killed |q Clefthoof Training: Moth of Wrath##37055/1 |goto Nagrand D/0 43.6,69.6
step
use Silverpelt-In-Training Whistle##118352
kill 1 Moth of Wrath##87089
Moth of Wrath Killed |q Talbuk Training: Moth of Wrath##37100/1 |goto Nagrand D/0 43.6,69.6
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
turnin Riverbeast Training: Orc Hunters##37078
turnin Talbuk Training: Moth of Wrath##37100
turnin Boar Training: Ironbore##37039
turnin Clefthoof Training: Moth of Wrath##37055
step
Accept all available training dailies:
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
accept Riverbeast Training: The Garn##37079
accept Talbuk Training: Thundercall##37101
accept Boar Training: Orc Hunters##37040
accept Clefthoof Training: Thundercall##37056
step
use Rocktusk-In-Training Whistle##118351
kill 1 Karak the Great Hunter##87105
Karak the Great Hunter Killed |q Boar Training: Orc Hunters##37040/1 |goto Nagrand D/0 69.6,34.6
step
_Proceed up_ the path |goto Nagrand D/0 83.5,33.1 < 10
_Continue_ up |goto 85.0,34.8 < 10
_Take the left_ path |goto 86.4,37.0 < 10
_Go down_ the path |goto Nagrand D/0 88.6,35.0 < 10
Head _along the side of the mountain_ |goto 89.0,30.3 < 10
use Icehoof-In-Training Whistle##118348
kill 1 Thundercall##87102
Thundercall Killed |q Clefthoof Training: Thundercall##37056/1 |goto Nagrand D 90.6,23.6
step
use Silverpelt-In-Training Whistle##118352
kill 1 Thundercall##87102
Thundercall Killed |q Talbuk Training: Thundercall##37101/1 |goto Nagrand D 90.6,23.6
step
use Riverwallow-In-Training Whistle##118350
kill 1 Maimclaw##87174
Maimclaw Killed |q Riverbeast Training: The Garn##37079/1 |goto Nagrand D/0 63.8,80.8
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
turnin Riverbeast Training: The Garn##37079
turnin Talbuk Training: Thundercall##37101
turnin Boar Training: Orc Hunters##37040
turnin Clefthoof Training: Thundercall##37056
step
Accept all available training dailies:
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
accept Boar Training: The Garn##37041
accept Clefthoof Training: Ironbore##37057
accept Talbuk Training: Ironbore##37102
step
use Icehoof-In-Training Whistle##118348
kill 1 Ironbore##87090
Ironbore Killed |q Clefthoof Training: Ironbore##37057/1 |goto Nagrand D/0 53.2,77.6
step
use Silverpelt-In-Training Whistle##118352
kill 1 Ironbore##87090
Ironbore Killed |q Talbuk Training: Ironbore##37102/1 |goto Nagrand D/0 53.2,77.6
step
use Rocktusk-In-Training Whistle##118351
kill 1 Maimclaw##87174
Maimclaw Killed |q Boar Training: The Garn##37041/1 |goto Nagrand D/0 63.8,80.8
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
turnin Boar Training: The Garn##37041
turnin Clefthoof Training: Ironbore##37057
turnin Talbuk Training: Ironbore##37102
step
Accept all available training dailies:
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
accept Talbuk Training: Orc Hunters##37103
accept Clefthoof Training: Orc Hunters##37058
step
use Icehoof-In-Training Whistle##118348
kill 1 Karak the Great Hunter##87105
Karak the Great Hunter Killed |q Clefthoof Training: Orc Hunters##37058/1 |goto Nagrand D/0 69.6,34.6
step
use Silverpelt-In-Training Whistle##118352
kill 1 Karak the Great Hunter##87105
Karak the Great Hunter Killed |q Talbuk Training: Orc Hunters##37103/1 |goto Nagrand D/0 69.6,34.6
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
turnin Talbuk Training: Orc Hunters##37103
turnin Clefthoof Training: Orc Hunters##37058
step
Accept all available training dailies:
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
accept Talbuk Training: The Garn##37104
accept Clefthoof Training: The Garn##37059
step
use Icehoof-In-Training Whistle##118348
kill 1 Maimclaw##87174
Maimclaw Killed |q Clefthoof Training: The Garn##37059/1 |goto Nagrand D/0 63.8,80.8
step
use Silverpelt-In-Training Whistle##118352
kill 1 Maimclaw##87174
Maimclaw Killed |q Talbuk Training: The Garn##37104/1 |goto Nagrand D/0 63.8,80.8
step
#include "H_Garrison_LargeBuilding"
talk Sage Paluna##87242
talk Tormak the Scarred##86979
turnin Talbuk Training: The Garn##37104
turnin Clefthoof Training: The Garn##37059
step
Fully train all 6 mounts in your Stables:
|achieve 9526/1
|achieve 9526/2
|achieve 9526/3
|achieve 9526/4
|achieve 9526/5
|achieve 9526/6
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Stables, Level 3##112003
|only if not hasbuilding(67,3)
step
use Garrison Blueprint: Stables, Level 3##112003
#include "H_Garrison_ArchitectTable"
Click on your Stables and click _Upgrade_ |condition hasbuilding(67,3)
step
Congratulations, you now have a level 3 Stables!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "stables_end"
You already have a level 3 Stables!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "warmill"
Redirecting to War Mill, Level 1 |next "warmill1" |only if default
Redirecting to War Mill, Level 2 |next "warmill3" |only if hasbuilding(9,2)
Redirecting to War Mill, Level 3 |next "warmill_end" |only if hasbuilding(10,3)
step
label "warmill1"
The fastest way to learn Level 1 Garrison Building Blueprints is to expand your Garrison to Level 2
This automatically teaches you all Level 1 Blueprints except for the Salvage Yard
__
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
step
#include "H_Garrison_ArchitectTable"
Select the _Large_ tab at the top, and create the _War Mill_ in a Large Empty Plot |condition hasbuilding(8,1)
step
#include "H_Garrison_LargeBuilding"
click Finalize Garrison Plot##
Finalize the War Mill's construction
You can now upgrade your War Mill to _level 2_
This unlocks new transmogrification items and allows access to work orders for follower weapons and armor
_You must be at least level 100 or have completed the Nagrand questline to buy this blueprint_
__
Click here to proceed to _War Mill Level 2_ |confirm |next "warmill2"
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "warmill2"
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: War Mill, Level 2##116185
|only if not hasbuilding(9,2)
step
use Garrison Blueprint: War Mill, Level 2##116185
#include "H_Garrison_ArchitectTable"
Click on your War Mill and click _Upgrade_ |condition hasbuilding(9,2)
__
You can now upgrade your War Mill to _level 3_
Click here to proceed to _War Mill Level 3_ |confirm always |next "warmill3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "warmill3"
In order to get the blueprint for level 3, you must complete the _Filling The Ranks_ achievement
This requires you to raise 20 Garrison followers to level 100
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9129)
step
#include "H_Garrison_LargeBuilding"
talk Grun'lek##79815
accept Scraps of Iron##37043
step
kill 1 Iron Engineer##77100+
Iron Horde Scraps |q Scraps of Iron##37043/1 |goto Frostfire Ridge/0 84.6,69.3
step
#include "H_Garrison_LargeBuilding"
talk Grun'lek##79815
turnin Scraps of Iron##37043
step
#include "H_Garrison_CommandTable"
Send your followers on Patrol Missions to grant them xp
|achieve 9129
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: War Mill, Level 3##116186
|only if not hasbuilding(10,3)
step
use Garrison Blueprint: War Mill, Level 3##116186
#include "H_Garrison_ArchitectTable"
Click on your War Mill and click _Upgrade_ |condition hasbuilding(10,3)
step
Congratulations, you now have a level 3 War Mill!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "warmill_end"
You already have a level 3 War Mill!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "fishing"
Redirecting to Fishing, Level 1 |next "fishing1" |only if default
Redirecting to Fishing, Level 2 |next "fishing3" |only if hasbuilding(134,2)
Redirecting to Fishing, Level 3 |next "fishing_end" |only if hasbuilding(135,3)
step
label "fishing1"
talk Mak'jin##79892
accept Looking For Help##34758 |goto Frostwall/0 38.10,72.53 |tip You must be at least level 94 to accept this quest.
step
talk Mokugg Lagerpounder##79896
Find a local fisherman and inquire for help |q Looking For Help##34758/1 |goto Frostfire Ridge/0 55.7,75.2
step
talk Mokugg Lagerpounder##79896
turnin Looking For Help##34758 |goto Frostfire Ridge/0 55.70,75.24
accept Icespine Stingers##36141 |goto Frostfire Ridge/0 55.70,75.24
step
_Follow the hill_ back up |goto Frostfire Ridge/0 55.7,74.0 < 10
kill 1 Icespine Stinger##80782+
Collect Icespine Stinger |q Icespine Stingers##36141/1 |goto Frostfire Ridge/0 54.72,70.43
step
talk Mokugg Lagerpounder##79896
turnin Icespine Stingers##36141 |goto Frostfire Ridge/0 55.71,75.28
accept Proving Your Worth##36131 |goto Frostfire Ridge/0 55.71,75.28
step
use Icespine Stinger Bait##114628
Fish with the Icespine Stinger Bait |cast Fishing##131474 |goto Frostfire Ridge/0 56.0,75.1
Catch 5 Zangar Eels |q Proving Your Worth##36131/1 |goto Frostfire Ridge/0 56.0,75.1
step
talk Mokugg Lagerpounder##79896
turnin Proving Your Worth##36131 |goto Frostfire Ridge/0 55.71,75.26
accept Anglin' In Our Garrison##36132 |goto Frostfire Ridge/0 55.71,75.26
step
talk Mak'jin##79892
turnin Anglin' In Our Garrison##36132 |goto Frostwall/0 38.16,72.42
step
You can now upgrade your Fishing Shack to _level 2_
This allows medium-level fish to be caught in your Garrison
__
Click here to proceed to _Fishing Shack Level 2_ |confirm |next "fishing2"
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "fishing2"
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Fishing Shack, Level 2##111927
|only if not hasbuilding(134,2)
step
use Garrison Blueprint: Fishing Shack, Level 2##111927
#include "H_Garrison_ArchitectTable"
Click on your Fishing Shack and click _Upgrade_ |condition hasbuilding(134,2)
__
You can now upgrade your Fishing Shack to _level 3_
This allows Enormous fish to be caught in your Garrison
Click here to proceed to _Fishing Shack Level 3_ |confirm always |next "fishing3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "fishing3"
In order to get the blueprint for level 3, you must complete the _Draenor Angler_ achievement
This requires you to catch 100 of each type of Enormous Fish
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9462)
step
label "fishmenu"
A higher fishing skill has a greater chance of landing an Enormous fish. Roughly 50% chance at Fishing level 700 and 100% at level 950
_Click on_ one of the following achievements to complete them:
|achieve 9461 |next "seascorpion" |confirm
|achieve 9460 |next "jawless" |confirm
|achieve 9459 |next "fatsleeper" |confirm
|achieve 9458 |next "lakesturgeon" |confirm
|achieve 9457 |next "whiptail" |confirm
|achieve 9456 |next "abyssalgulper" |confirm
|achieve 9455 |next "fireammonite" |confirm
Click here if all of these are completed |next "achieve" |confirm
step
label "seascorpion"
Fish in the water here |cast Fishing##131474 |goto Frostfire Ridge/0 55.4,75.5
collect Enormous Sea Scorpion##111672 |n
|achieve 9461
Click here to return to the fishing menu |next "fishmenu" |confirm
step
label "jawless"
Fish in the water here |cast Fishing##131474 |goto Gorgrond 40.4,76.5
collect Enormous Jawless Skulker##111676 |n
|achieve 9460
Click here to return to the fishing menu |next "fishmenu" |confirm
step
label "fatsleeper"
Fish in the water here |cast Fishing##131474 |goto Nagrand D 72.5,26.5
collect Enormous Fat Sleeper##111675 |n
|achieve 9459
Click here to return to the fishing menu |next "fishmenu" |confirm
step
label "lakesturgeon"
Fish in the water here |cast Fishing##131474 |goto Shadowmoon Valley D 48.5,34.1
collect Enormous Blind Lake Sturgeon##111674 |n
|achieve 9458
Click here to return to the fishing menu |next "fishmenu" |confirm
step
label "whiptail"
Fish in the water here |cast Fishing##131474 |goto Talador 63.0,34.6
collect Enormous Blackwater Whiptail##111670 |n
|achieve 9457
Click here to return to the fishing menu |next "fishmenu" |confirm
step
label "abyssalgulper"
Fish in the water here |cast Fishing##131474 |goto Spires of Arak 47.5,20.9
collect Enormous Abyssal Gulper Eel##111671 |n
|achieve 9456
Click here to return to the fishing menu |next "fishmenu" |confirm
step
label "fireammonite"
Fish in the lava here |cast Fishing##131474 |goto Frostfire Ridge/0 50.6,59.0
collect Enormous Fire Ammonite##111673 |n
|achieve 9455
Click here to return to the fishing menu |next "fishmenu" |confirm
step
label "achieve"
|achieve 9462/1
|achieve 9462/2
|achieve 9462/3
|achieve 9462/4
|achieve 9462/5
|achieve 9462/6
|achieve 9462/7
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Fishing Shack, Level 3##111928
|only if not hasbuilding(135,4)
step
use Garrison Blueprint: Fishing Shack, Level 3##111928
#include "H_Garrison_ArchitectTable"
Click on your Fishing Shack and click _Upgrade_ |condition hasbuilding(135,3)
step
Congratulations, you now have a level 3 Fishing Shack!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "fishing_end"
You already have a level 3 Fishing Shack!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "mines"
Redirecting to Frostwall Mines, Level 1 |next "mines1" |only if default
Redriecting to Frostwall Mines, Level 2 |next "mines3" |only if hasbuilding(62,2)
Redirecting to Frostwall Mines, Level 3 |next "mines_end" |only if hasbuilding(63,3)
step
label "mines1"
talk Gorsol##81688
accept Things Are Not Goren Our Way##35154 |goto 62.03,73.74 |tip You must be at least level 92 to accept this quest.
step
Enter the mine |goto Frostwall/0 62.7,72.3 < 10
kill 1 Frostwall Goren##81362+
kill 1 Frostwall Goren Hatchling##81398+
Frostwall Goren slain |q Things Are Not Goren Our Way##35154/2 |goto Frostwall/26 60.4,48.3
kill 1 Stonetooth##81396
Stonetooth slain |q Things Are Not Goren Our Way##35154/1 |goto 57.5,83.8
step
talk Gorsol##81688
turnin Things Are Not Goren Our Way##35154 |goto 62.03,73.74
step
You can now upgrade your Frostwall Mine to _level 2_
This allows a follower to work the mine, opens a new mineshaft, and increases the amount of work orders that can be plaeced at one time
__
Click here to proceed to _Frostwall Mines Level 2_ |confirm |next "mines2"
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "mines2"
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Frostwall Mines, Level 2##116248
|only if not hasbuilding(62,2)
step
use Garrison Blueprint: Frostwall Mines, Level 2##116248
#include "H_Garrison_ArchitectTable"
Click on your Frostwall Mine and click _Upgrade_ |condition hasbuilding(62,2)
__
You can now upgrade your Frostwall Mines to _level 3_
This expands your Mine even further and allows Garrison guards to patrol the mine, keeping it clear of monsters
Click here to proceed to _Frostwall Mines Level 3_ |confirm always |next "mines3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "mines3"
In order to get the blueprints for level 3, you must complete the _Draenic Stone Collector_ achievement
This requires you to collect 500 Draenic Stones
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9453)
step
Mine ore from your mine every day to also collect Draenic Stones |goto Frostwall/26 60.4,48.3
|achieve 9453
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Frostwall Mines, Level 3##116249
|only if not hasbuilding(63,3)
step
use Garrison Blueprint: Frostwall Mines, Level 3##116249
#include "H_Garrison_ArchitectTable"
Click on your Frostwall Mine and click _Upgrade_ |condition hasbuilding(63,3)
step
Congratulations, you now have a level 3 Frostwall Mine!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "mines_end"
You already have a level 3 Frostwall Mine!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "garden"
Redirecting to Herb Garden, Level 1 |next "garden1" |only if default
Redirecting to Herb Garden, Level 2 |next "garden3" |only if hasbuilding(136,2)
Redirecting to Herb Garden, Level 3 |next "garden_end" |only if hasbuilding(137,3)
step
label "garden1"
talk Tarnon##81981
accept Clearing the Garden##34193 |goto Frostwall/0 43.67,82.75
step
kill 1 Frostwall Nibbler##81967
Frostwall Nibbler Slain |q Clearing the Garden##34193/1 |goto 47.92,85.59 |tip You must be at least level 96 to accept this quest.
step
talk Tarnon##81981
turnin Clearing the Garden##34193 |goto 43.57,82.97
step
You can now upgrade your Herb Garden to _level 2_
This allows a follower to work the Garden, expands the garden and increases the amount of work orders that can be placed at one time
__
Click here to proceed to _Herb Garden Level 2_ |confirm |next "garden2"
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "garden2"
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Herb Garden, Level 2##109577
|only if not hasbuilding(136,2)
step
use Garrison Blueprint: Herb Garden, Level 2##109577
#include "H_Garrison_ArchitectTable"
Click on your Herb Garden and click _Upgrade_ |condition hasbuilding(136,2)
__
You can now upgrade your Herb Garden to _level 3_
This lets you grow a unique Draenor fruit tree that provides food buffs
Click here to proceed to _Herb Garden Level 3_ |confirm always |next "garden3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "garden3"
In order to get the blueprints for level 3, you must complete the _Draenic Seed Collector_ achievement
This requires you to collect 500 Draenic Seeds
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9454)
step
Gather herbs from the garden every day to also collect Draenic Seeds |goto Frostwall/0 47.92,85.59
|achieve 9454
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Herb Garden, Level 3##111997
|only if not hasbuilding(137,3)
step
use Garrison Blueprint: Herb Garden, Level 3##111997
#include "H_Garrison_ArchitectTable"
Click on your Herb Garden and click _Upgrade_ |condition hasbuilding(137,3)
step
Congratulations, you now have a level 3 Herb Garden!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "garden_end"
You already have a level 3 Herb Garden!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "menagerie"
Redirecting to Menagerie, Level 1 |next "menagerie1" |only if default
Redirecting to Menagerie, Level 2 |next "menagerie3" |only if hasbuilding(167,2)
Redirecting to Menagerie, Level 3 |next "menagerie_end" |only if hasbuilding(168,3)
step
label "menagerie1"
talk Serr'ah##79858
accept Pets Versus Pests##36469 |goto 31.54,42.14 |tip You must be at least level 98 to accept this quest.
step
Enter your Garrison's cave |goto Frostwall/0 45.1,64.9 < 10
clicknpc Gorefu##89130
Defeat Gorefu in a pet battle
Gorefu defeated |q Pets Versus Pests##36469/2 |goto 36.9,75.4
step
clicknpc Carrotus Maximus##89129
Defeat Carrotus Maximus in a pet battle
Carrotus Maximus defeated |q Pets Versus Pests##36469/1 |goto Frostwall/0 49.9,84.3
step
clicknpc Gnawface##89131
Defeat Gnawface in a pet battle
Gnawface defeated |q Pets Versus Pests##36469/3 |goto Frostwall/0 62.1,27.7
step
talk Serr'ah##79858
turnin Pets Versus Pests##36469 |goto 31.54,42.14
step
You can now upgrade your Menagerie to _level 2_
This reduces the cooldown on Revive Battle Pets, increases the number of pets in your Garrison and increases your trap chance
__
Click here to proceed to _Menagerie Level 2_ |confirm |next "menagerie2"
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "menagerie2"
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Menagerie, Level 2##111998
|only if not hasbuilding(167,2)
step
use Garrison Blueprint: Menagerie, Level 2##111998
#include "H_Garrison_ArchitectTable"
Click on your Menagerie and click _Upgrade_ |condition hasbuilding(167,2)
__
You can now upgrade your Menagerie to _level 3_
Unlocks a pet daily with unique pet rewards
Click here to proceed to _Menagerie Level 3_ |confirm always |next "menagerie3"
Click here to return to the _Building Menu_ |confirm always |next "buildingmenu"
step
label "menagerie3"
In order to get the blueprint for level 3, you must complete the _Draenic Pet Battler_ achievement
This requires you to win 500 pet battles in Draenor
_Note_ that unlocking a level 3 building _on any character_ unlocks that building for the _entire account_
|confirm |only if not achieved(9463)
step
Travel around Draenor completing Pet Battles
|achieve 9463
step
#include "H_Garrison_BlueprintVendor"
buy 1 Garrison Blueprint: Menagerie, Level 3##111999
|only if not hasbuilding(168,3)
step
use Garrison Blueprint: Menagerie, Level 3##111999
#include "H_Garrison_ArchitectTable"
Click on your Menagerie and click _Upgrade_ |condition hasbuilding(168,3)
step
Congratulations, you now have a level 3 Menagerie!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
step
label "menagerie_end"
You already have a level 3 Menagerie!
Click here to return to the _Building Menu_ |confirm |next "buildingmenu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Garrison Guide\\Garrison Campaign Guide",[[
description This guide will walk you through the Garrison Campaign questlines.
#include "H_Garrison_Campaign"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Garrison Guide\\Garrison Leveling Guide",[[
description This guide will walk you through leveling up your Garrison.
step
Redirecting to Garrison, level 1 |next "level1" |only if default
Redirecting to Garrison, level 2 |next "level2" |only if garrisonlvl(1)
Redirecting to Garrison, level 3 |next "level3" |only if garrisonlvl(2)
Redirecting to Garrison End |next "leveled" |only if garrisonlvl(3)
step
label "level1"
You still need to build a Garrison!
Click here to continue to _Garrison Level 2_ |confirm |next "level2"
step
label "level2"
To unlock access to a level 2 Garrison you must have completed the first 5 Frostfire Ridge questlines
|achieve 8671/1
|achieve 8671/2
|achieve 8671/3
|achieve 8671/4
|achieve 8671/5
Follow the Frostfire Ridge Leveling guide for a walkthrough for this achievement
|only if not completedq(36567)
step
talk Gazlowe##78466
accept Bigger is Better##36567 |goto Frostwall/0 52.5,53.4
step
#include "H_Garrison_ArchitectTable"
Upgrade your garrison to Tier 2  |q Bigger is Better##36567/1
step
_Enter_ your Town Hall |goto Frostwall/0 43.4,50.4 < 10
talk Gazlowe##78466
turnin Bigger is Better##36567 |goto 42.1,55.5
step
Congratulations, you have expanded your Garrison to level 2!
Click here to continue to _Garrison Level 3_ |confirm |next "level3"
step
label "level3"
You will be able to upgrade your Garrison to level 3 after reaching level 100
It costs 5000 gold and 2000 Garrison Resources
|confirm |only if not completedq(36614)
step
talk Gazlowe##78466
accept My Very Own Fortress##36614 |goto 42.1,55.5
step
Gather 2000 Garrison Resources |q My Very Own Fortress##36614/1
step
#include "H_Garrison_ArchitectTable"
Select your _Great Hall_ and click _Upgrade_
Upgrade Your Garrison to Tier 3 |q My Very Own Fortress##36614/2
step
talk Gazlowe##78466
turnin My Very Own Fortress##36614 |goto Frostwall/0 37.9,50.7
|next "end"
step
label "leveled"
You already have a level 3 Garrison!
|confirm
step
label "end"
Congratulations, you have expanded your Garrison to Level 3!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Garrison Guide\\Garrison Quests Guide",[[
description This guide will walk you through the Garrison quests.
step
These quests are unlocked as you complete questlines in Frostfire Ridge
|confirm
|only if not completedq(37434)
step
#include "H_Garrison_Rokhan"
accept We Be Needin' Supplies##34736
step
click Command Board##10014
accept Wanted: Grondo's Bounty##33918 |goto 49.19,41.53
step
kill 1 Grondo##76848
Grondo Slain |q Wanted: Grondo's Bounty##33918/1 |goto Frostfire Ridge/0 54.0,43.0
step
talk Shadow Hunter Rala##78208
turnin We Be Needin' Supplies##34736 |goto Frostfire Ridge/0 52.7,40.5
step
talk Ja'kana##78699
fpath Darkspear's Edge |goto Frostfire Ridge/0 51.7,41.1
step
#include "H_Garrison_Rokhan"
turnin Wanted: Grondo's Bounty##33918
step
talk Cordana Felsong##79252
accept Vouchsafe Our Arrival##34209 |goto Frostwall/0 49.31,36.66 |tip You must be at least level 94 to accept this quest.
step
talk Cordana Felsong##72814
turnin Vouchsafe Our Arrival##34209 |goto Frostfire Ridge/0 31.46,16.21
accept Safe Passage##34216 |goto Frostfire Ridge/0 31.46,16.21
step
Follow Cordana Felsong as she talks
Hear Cordana Felsong's tale |q Safe Passage##34216/1 |goto Frostfire Ridge/0 31.9,11.9
|modelnpc 79252
step
talk Farseer Urquan##72837
turnin Safe Passage##34216 |goto Frostfire Ridge/0 31.75,11.79
accept What Must Be Done##34227 |goto Frostfire Ridge/0 31.75,11.79
step
kill 1 Mother of Wolves##73205
Collect Mother of Wolves' Remains |q What Must Be Done##34227/1 |goto Frostfire Ridge/0 28.1,15.1
step
click Grave Mound##5333
Mother of Wolves buried |q What Must Be Done##34227/2 |goto Frostfire Ridge/0 30.1,8.7
step
talk Archmage Khadgar##72874
turnin What Must Be Done##34227 |goto 31.74,11.85
step
#include "H_Garrison_WarmasterZog"
accept Proving Grounds##37434 |tip You must be at least level 100 to accept this quest.
step
#include "H_Garrison_WarmasterZog"
Click _"Enter the Proving Grounds"_
Speak with Warmaster Zog to enter Proving Grounds |q Proving Grounds##37434/1
step
Click _Accept_ when the queue appears
talk Trial Master Rotun##61636
Select a _Bronze_ trial based on your spec (_Damage_, _Tank_, or _Healer_) |goto Proving Grounds/1 50.3,81.9
|confirm |only if not completedq(37434)
step
Follow the on-screen instructions and complete the Proving Grounds trial
Complete a Bronze Trial |q Proving Grounds##37434/2 |goto Proving Grounds/1 46.0,52.1
step
Right click on the green eye icon on your mini map and select _Leave Instanace Group_
Return to your Garrison |goto Frostwall/0 41.1,53.2 < 100 |c |noway |only if not completedq(37434)
step
#include "H_Garrison_WarmasterZog"
turnin Proving Grounds##37434
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Garrison Guide\\Legendary Ring Guide",[[
description This guide will walk you through the Legendary Ring questline.
step
talk Khadgar's Servant##83858 |tip He walks up and down this path.
accept Call of the Archmage##35988 |goto Frostwall/0 47.1,47.2 |tip You must be at least level 98 to accept this quest.
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
#include "H_Garrison_Warplans"
_Rare Garrison missions_:
#include "H_Garrison_CommandTable"
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\FOLLOWERS STARTER GUIDE",[[
description This guide will provide a tutorial for Garrison Followers.
step
label "start"
Choose a section to start:
_Assigning Followers to Garrison Buildings_ |confirm |next "assign"
_Follower Abilities, Traits, and the Frostwall Tavern_ |confirm |next "ability"
_Leveling Followers_ |confirm |next "leveling"
step
label "assign"
Assigning a Follower to a Garrison building yields more resources
Each Follower has traits and a profession that allows them to be assigned to a building
#include "H_Garrison_ArchitectTable"
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
Click here to continue to _Frostwall Tavern_ info |confirm
Click here to return to the _Main Menu_ |confirm |next "start"
step
_Frostwall Tavern Info_
After reaching Level 2 with the Frostwall Tavern, you can search for specific Follower abilities and then recruit Followers that have that ability
You can recruit a new Follower this way once every week
Click here to return to the _Main Menu_ |confirm |next "start"
step
label "leveling"
The best way to level up your Followers is through Garrison Missions
Mission bonuses are listed on the right side of each mission. Look for mission that grant _Bonus XP_
Send your Followers on missions to level them up
#include "H_Garrison_CommandTable"
Click here to return to the _Main Menu_ |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower 'Doc' Schweitzer",[[
description This guide will walk you through obtaining "Doc" Schweitzer as a Garrison Follower.
keywords discipline priest herbalism
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit "Doc" Schweitzer |condition hasfollower(342)
step
Congratulations, you now have "Doc" Schweitzer as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Abu'gar",[[
description This guide will walk you through obtaining Abu'gar as a Garrison Follower.
keywords blood death knight wild aggression
step
click Abu'Gar's Favorite Lure##233642
collect 1 Abu'Gar's Favorite Lure##114245
Locate Abu'gar's Favorite Lure |goto Nagrand D/0 38.36,49.33
|only if not completedq(36711)
step
click Abu'Gar's Finest Reel##233506
collect 1 Abu'Gar's Finest Reel##114243
Locate Abu'gar's Favorite Lure |goto Nagrand D/0 85.43,38.74
|only if not completedq(36711)
step
Follow this path |goto Nagrand D/0 69.7,63.8 < 20
Continue along the path |goto Nagrand D/0 66.4,62.9 < 20
click Abu'Gar's Vitality##233157
collect 1 Abu'Gar's Vitality##114242
Locate Abu'gar's Favorite Lure |goto Nagrand D/0 65.82,61.14 |tip You will have to drop down to the ledge.
|only if not completedq(36711)
step
talk Abu'gar##82746
accept Abu'Gar##36711 |instant |goto 67.18,56.01
Recruit Abu'gar |condition hasfollower(209)
step
Congratulations, you now have Abu'gar as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Aeda Brightdawn",[[
description This guide will walk you through obtaining Aeda Brightdawn as a Garrison Follower.
keywords demonology warlock timed battle bodyguard
step
talk Aeda Brightdawn##85768
accept Gatekeepers of Auchindoun##34776 |goto Talador 58.09,53.00 |tip You must be at least level 94 to get this quest.
step
kill Vindicator Dalu##79970
Vindicator Dalu defeated |q Gatekeepers of Auchindoun##34776/1 |goto Talador 57.4,52.6
kill Soulbinder Halaari##79977
Soulbinder Halaari defeated |q Gatekeepers of Auchindoun##34776/2 |goto Talador 57.4,52.6
step
talk Aeda Brightdawn##79978
turnin Gatekeepers of Auchindoun##34776 |goto 58.10,53.01
accept The True Path##36518 |instant |goto Talador 58.12,52.98
Recruit Aeda Brightdawn |condition hasfollower(207)
step
Congratulations, you now have Aeda Brightdawn as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Ahm",[[
description This guide will walk you through obtaining Ahm as a Garrison Follower.
keywords arms warrior danger zones enchanting
step
talk Ahm##77031
accept Dying Wish##33973 |goto Talador 56.8,26.0 |tip You must be at least level 94 to accept this quest.
step
kill Blademaster Bralok##76981
Ahm's Heirloom |q Dying Wish##33973/1 |goto Talador 57.0,24.6
step
talk Ahm##77031
turnin Dying Wish##33973 |goto Talador 56.8,26.0
step
talk Ahm##77031
accept Solidarity In Death##36522 |instant |goto Frostwall 50.8,15.8
Recruit Ahm |condition hasfollower(208)
step
Congratulations, you now have Ahm as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Aila Dourblade",[[
description This guide will walk you through obtaining Auriel Brightsong as a Garrison Follower.
keywords subtlety rogue
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Aila Dourblade |condition hasfollower(376)
step
Congratulations, you now have Aila Dourblade as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Aknor Steelbringer",[[
description This guide will walk you through obtaining Aknor Steelbringer as a Garrison Follower.
keywords arms warrior minion swarms
step
In order to recruit this Follower you must defeat _Flamebender Ka'graz_ in the Blackrock Foundry raid without killing Aknor on Normal or higher difficulty
|achieve 8929
Recruit Aknor Steelbringer |condition hasfollower(225)
step
Congratulations, you now have Aknor Steelbringer as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Alexi Barov",[[
description This guide will walk you through obtaining Alexi Barov as a Garrison Follower.
keywords assassination rogue danger zones
step
In order to recruit this Follower you must have a Lumber Mill and be able to harvest small timber with _Apprentice Logging_
Harvest the Fallen Tree |goto Talador 73.7,64.0
_Wait_ for Alexi Barov to appear
talk Alexi Barov##85414
accept The Rise and Fall of Barov Industries: Alexi Barov##36427 |instant
Recruit Alexi Barov |condition hasfollower(195)
step
Congratulations, you now have Alexi Barov as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Arienne Black",[[
description This guide will walk you through obtaining Arienne Black as a Garrison Follower.
keywords discipline priest
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Arienne Black |condition hasfollower(345)
step
Congratulations, you now have Arienne Black as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Auriel Brightsong",[[
description This guide will walk you through obtaining Auriel Brightsong as a Garrison Follower.
keywords holy paladin
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Auriel Brightsong |condition hasfollower(327)
step
Congratulations, you now have Auriel Brightsong as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Awarri Blazecall",[[
description This guide will walk you through obtaining Awarri Blazecall as a Garrison Follower.
keywords fire mage
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Awarri Blazecall |condition hasfollower(296)
step
Congratulations, you now have Awarri Blazecall as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Benjamin Gibb",[[
description This guide will walk you through obtaining Benjamin Gibb as a Garrison Follower.
keywords unholy death knight minion swarms inscription
step
talk Benjamin Gibb##86597
accept Three Feet Under##36864 |instant |goto Spires of Arak 35.8,52.2 |tip You must be at least level 96 to accept this quest.
Recruit Benjamin Gibb |condition hasfollower(204)
step
Congratulations, you now have Benjamin Gibb as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Bim'ini",[[
description This guide will walk you through obtaining Bim'ini as a Garrison Follower.
keywords fury warrior
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Bim'ini |condition hasfollower(420)
step
Congratulations, you now have Bim'ini as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Blook",[[
description This guide will walk you through obtaining Blook as a Garrison Follower.
keywords fury warrior timed battle combat experience
step
In order to recruit this Follower you must find him in Gorgrond
Follow the steep, winding path up to _Blook's Overlook_ |goto Gorgrond 42.5,91.0 < 10
talk Blook##78031
Tell him "What?"
Defeat Blook in combat and then talk to him again
accept I Am Blook##34279 |instant |goto Gorgrond 41.2,91.4
Recruit Blook |condition hasfollower(189)
step
Congratulations, you now have Blook as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Bruto",[[
description This guide will walk you through obtaining Bruto as a Garrison Follower.
keywords windwalker monk wild aggression
step
Routing to Sparring Arena |next "correct" |only if completedq(34697)
Routing to Lumber Mill |next "wrongbuilding" |only if default
step
label "correct"
_Enter_ the cave |goto Gorgrond/0 38.6,67.4 < 10
talk Bruto##77014
accept The Axe of Kor'gall##34703 |goto Gorgrond/0 36.8,67.8
step
kill Kor'gall##77020
Serathil |q The Axe of Kor'gall##34703/1 |goto Gorgrond/0 36.4,69.8
step
talk Gladiator Akaani##79322
turnin The Axe of Kor'gall##34703 |goto Gorgrond/0 42.8,63.0
Recruit Bruto |condition hasfollower(176)
step
label "wrongbuilding"
Congratulations, you now have Bruto as a Garrison Follower! |only if completedq(34703)
You chose to build the Lumber Mill and cannot gain this Follower |only if default
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Cacklebone",[[
description This guide will walk you through obtaining Cacklebone as a Garrison Follower.
keywords restoration shaman group damage
step
Routing to Trading Post |next "tp" |only if hasbuilding(144) or hasbuilding(145)
Routing to End |next "end" |only if default
step
label "tp"
Become Revered with the Laughing Skill Orcs |condition rep('Laughing Skull Orcs')>=Revered
step
You can now recruit Cacklebone by purchasing his contract for _5000 gold_
#include "H_Garrison_MediumBuilding"
talk Kil'rip##86698 |tip He is found in your Trading Post.
buy 1 Contract: Cacklebone##119166 |n
use Contract: Cacklebone##119166
Recruit Cacklebone |condition hasfollower(458)
step
label "end"
Congratulations, you now have Cacklebone as a Garrison Follower! |only if hasfollower(458)
You must have at least a level 2 Trading Post to recruit this Follower! |only if default
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Cadi Grasshoof",[[
description This guide will walk you through obtaining Cadi Grasshoof as a Garrison Follower.
keywords restoration druid
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Cadi Grasshoof |condition hasfollower(262)
step
Congratulations, you now have Cadi Grasshoof as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Candice Morey",[[
description This guide will walk you through obtaining Candice Morey as a Garrison Follower.
keywords frost mage
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Candice Morey |condition hasfollower(300)
step
Congratulations, you now have Candice Morey as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Cheri",[[
description This guide will walk you through obtaining Cheri as a Garrison Follower.
keywords demonology warlock
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Cheri |condition hasfollower(403)
step
Congratulations, you now have Cheri as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Choluna",[[
description This guide will walk you through obtaining Choluna as a Garrison Follower.
keywords feral druid wild aggression
step
In order to recruit this Follower you must complete the quest _The Sleepers_ as part of the Garrison Campaign
This quest appears randomly, selected from any of the Garrison Campaign quests available
talk Khadgar's Servant##83858 |tip He walks up and down this path.
Accept Garrison Campaign: The Sleepers |goto Frostwall/0 47.1,47.2
Complete the Sleepers quest
Recruit Choluna |condition hasfollower(217)
step
Congratulations, you now have Choluna as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Clever Ashyo",[[
description This guide will walk you through obtaining Clever Ashyo as a Garrison Follower.
keywords mistweaver monk
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Clever Ashyo |condition hasfollower(434)
step
Congratulations, you now have Clever Ashyo as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Coggeye Aimbot",[[
description This guide will walk you through obtaining Coggeye Aimbot as a Garrison Follower.
keywords marksmanship hunter
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Coggeye Aimbot |condition hasfollower(280)
step
Congratulations, you now have Coggeye Aimbot as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Croman",[[
description This guide will walk you through obtaining Croman as a Garrison Follower.
keywords retribution paladin massive strike
step
Croman is unlocked by completing the achievement _Come With Me If You Want To Live_ in the heroic Bloodmaul Slag Mines
talk Croman##81032 |goto Bloodmaul Slag Mines/1 61.9,65.2 < 10
kill Gug'rok##74790 |goto Bloodmaul Slag Mines/1 67.3,22.9
Complete _Come With Me If You Want To Live_ |achieve 9005
Recruit Croman |condition hasfollower(177)
step
Congratulations, you now have Croman as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Cyril Fogus",[[
description This guide will walk you through obtaining Cyril Fogus as a Garrison Follower.
keywords blood death knight
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Cyril Fogus |condition hasfollower(229)
step
Congratulations, you now have Cyril Fogus as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Dagg",[[
description This guide will walk you through obtaining Dagg as a Garrison Follower.
keywords subtlety rogue deadly minions
step
Free Dagg from his cage |goto Frostfire Ridge/0 65.8,60.8 < 1
|only if not completedq(34733)
step
Free Dagg from his cage |goto Frostfire Ridge/0 39.5,28.1 < 1
|only if not completedq(34733)
step
talk Dagg##79492
accept Services of Dagg##34733 |instant |goto Frostwall/0 48.2,17.5
Recruit Dagg |condition hasfollower(32)
step
Congratulations, you now have Dagg as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Dark Ranger Velonara",[[
description This guide will walk you through obtaining Dark Ranger Velonara as a Garrison Follower.
keywords marksmanship hunter powerful spell skinning
step
Routing to Brewery |next "correct" |only if default
Routing to Smuggling Run |next "wrongbuilding" |only if completedq(35697)
step
label "correct"
talk Taskmaster Gornek##81920
turnin Orders, Commander?##35277 |goto Spires of Arak/0 40.19,43.50
accept Befriending the Locals##37326 |goto 40.18,43.49
step
talk Dusk-Seer Irizzar##83463
turnin Befriending the Locals##37326 |goto Spires of Arak/0 43.90,48.92
step
talk Dusk-Seer Irizzar##83463
accept Not Here, Not Now##37328 or accept 37330 |goto 43.8,48.8
step
talk Taskmaster Gornek##81920
turnin Not Here, Not Now##37328 or turnin 37330 |goto 40.2,43.4
step
talk Dark Ranger Velonara##83529
accept Attempted Murder##35907 |goto Spires of Arak/0 40.08,43.28
step
talk Hutou Featherwind##82612
Tell him _"Take me to Shadow's Vigil."_ |q Attempted Murder##35907/1 |goto Spires of Arak/0 39.52,43.36
step
talk Dark Ranger Velonara##83608
turnin Attempted Murder##35907 |goto Spires of Arak/0 52.10,23.56
step
talk Dark Ranger Velonara##83529
accept Standing United##37276 |instant |goto Spires of Arak/0 40.0,43.2
Recruit Dark Ranger Velonara |condition hasfollower(453)
step
label "wrongbuilding"
Congratulations, you now have Dark Ranger Velonara as a Garrison Follower! |only if default
You chose to build the Smuggling Run, and cannot recruit this Follower |only if completedq(35697)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Dawn Mercurus",[[
description This guide will walk you through obtaining Dawn Mercurus as a Garrison Follower.
keywords fire mage
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Dawn Mercurus |condition hasfollower(295)
step
Congratulations, you now have Dawn Mercurus as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Dawnseeker Rukaryx",[[
description This guide will walk you through obtaining Dawnseeker Rukaryx as a Garrison Follower.
keywords balance druid minion swarms
step
This Follower can be purchased from the Apexis Crystal vendor in Warpsear
It costs _5000 gold and 5000 Apexis Crystals_
talk Dawn-Seeker Alkset##86382 |goto Warspear 65.2,64.6
buy 1 Contract: Dawnseeker Rukaryx##119248 |n
use Contract: Dawnseeker Rukaryx##119248
Recruit Dawnseeker Rukaryx |condition hasfollower(462)
step
Congratulations, you now have Dawnseeker Rukaryx as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Deneezo Hailstrike",[[
description This guide will walk you through obtaining Deneezo Hailstrike as a Garrison Follower.
keywords frost death knight
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Deneezo Hailstrike |condition hasfollower(238)
step
Congratulations, you now have Deneezo Hailstrike as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Eula Clay",[[
description This guide will walk you through obtaining Eula Clay as a Garrison Follower.
keywords protection warrior
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Eula Clay |condition hasfollower(428)
step
Congratulations, you now have Eula Clay as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Faala",[[
description This guide will walk you through obtaining Faala as a Garrison Follower.
keywords protection paladin
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Faala |condition hasfollower(333)
step
Congratulations, you now have Faala as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Fazerra",[[
description This guide will walk you through obtaining Fazerra as a Garrison Follower.
keywords enhancement shaman
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Fazerra |condition hasfollower(383)
step
Congratulations, you now have Fazerra as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Fo Sho Knucklebump",[[
description This guide will walk you through obtaining Fo Sho Knucklebump as a Garrison Follower.
keywords brewmaster monk
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Fo Sho Knucklebump |condition hasfollower(436)
step
Congratulations, you now have Fo Sho Knucklebump as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Glaiveweaver Xuan",[[
description This guide will walk you through obtaining Glaiveweaver Xuan as a Garrison Follower.
keywords protection warrior
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Glaiveweaver Xuan |condition hasfollower(429)
step
Congratulations, you now have Glaiveweaver Xuan as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Goldmane the Skinner",[[
description This guide will walk you through obtaining Goldmane the Skinner as a Garrison Follower.
keywords assassination rogue danger zones skinning
step
ding 99 |tip You must be level 99 to recruit this Follower
step
In order to recruit this Follower you must release him from his cage in Nagrand
kill Bolkar the Cruel##80080 |tip He is at the very top of this tower.
collect Goldmane's Cage Key |n
click Goldmane the Skinner##80083
talk Goldmanethe Skinner##80083 |tip He will appear after looting the key and opening the cage.
accept Feline Friends Forever##35596 |instant |goto Nagrand D 40.4,76.2
Recruit Goldmane the Skinner |condition hasfollower(170)
step
Congratulations, you now have Goldmane the Skinner as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Gravewalker Gie",[[
description This guide will walk you through obtaining Gravewalker Gie as a Garrison Follower.
keywords unholy death knight
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Gravewalker Gie |condition hasfollower(239)
step
Congratulations, you now have Gravewalker Gie as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Greatmother Geyah",[[
description This guide will walk you through obtaining Greatmother Geyah as a Garrison Follower.
keywords restoration shaman magic debuff
step
Routing to Geyah |next "geyah" |only if not completedq(37563)
Routing to End |next "end" |only if completedq(37563)
step
label "geyah"
In order to recruit this Follower you must choose her during the _The Frostwolves Stand Ready_ quest
This quest appears at the end of the Frostfire Ridge questline
talk Makar Stonebinder##76730
turnin The Frostwolves Stand Ready##37563 |goto Frostfire Ridge 76.2,55.0
Recruit Greatmother Geyah |condition hasfollower(186)
step
label "end"
Congratulations, you now have Greatmother Geyah as a Garrison Follower! |only if hasfollower(186)
You chose Lokra instead, and cannot gain this Follower |only if hasfollower(185)
You chose Kaiel instead, and cannot gain this Follower |only if hasfollower(329)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Gronnstalker Rokash",[[
description This guide will walk you through obtaining Gronnstalker Rokash as a Garrison Follower.
keywords marksmanship hunter deadly minions
step
In order to recruit this Follower you must complete the _Only the Winner_ quest in Frostfire Ridge
talk Gronnstalker Rokash##79229
accept Only the Winner##32981 |goto Frostfire Ridge/0 59.4,31.8
step
Run up the big ramp |goto Frostfire Ridge/0 60.9,26.6 < 7
kill Sky-Singer Strag##74598
Sky-Singer Strag's Totem |q Only the Winner##32981/1 |goto Frostfire Ridge/0 62.6,27.6
step
talk Gronnstalker Rokash##79229
turnin Only the Winner##32981 |goto Frostfire Ridge/0 59.4,31.8
accept Defection of Gronnstalker Rokash##35341 |instant |goto Frostfire Ridge/0 59.4,31.8
Recruit Gronnstalker Rokash |condition hasfollower(183)
step
Congratulations, you now have Gronnstalker Rokash as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Hannya",[[
description This guide will walk you through obtaining Hannya as a Garrison Follower.
keywords restribution paladin
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Hannya |condition hasfollower(340)
step
Congratulations, you now have Hannya as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Haomi",[[
description This guide will walk you through obtaining Haomi as a Garrison Follower.
keywords windwalker monk deadly minions
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Haomi |condition hasfollower(119)
step
Congratulations, you now have Haomi as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Image of Archmage Vargoth",[[
description This guide will walk you through obtaining the Image of Archmage Vargoth as a Garrison Follower.
keywords arcane mage powerful spell
step
Enter here |goto Frostfire Ridge/0 67.3,33.4
click Mysterious Boots##229333
accept Mysterious Boots##34464 |tip You must be level 100 to accept this quest.
Find Vargoth's Mysterious Boots |goto Frostfire Ridge/0 68.0,18.9
|only if not completedq(34464)
step
click Mysterious Ring##229330
accept Mysterious Ring##34463 |tip You must be level 100 to accept this quest.
Find Vargoth's Mysterious Ring |goto Gorgrond/0 39.7,39.9
|only if not completedq(34463)
step
click Mysterious Hat##
accept Mysterious Hat##34465 |tip You must be level 100 to accept this quest.
Find Vargoth's Mysterious Hat |goto Talador/0 45.3,37.1
|only if not completedq(34465)
step
click Mysterious Staff##
accept Mysterious Staff##34466 |tip You must be level 100 to accept this quest.
Find Vargoth's Mysterious Staff |goto Nagrand D/0 46.4,16.0
|only if not completedq(34466)
step
talk Zooti Fizzlefury##86949
turnin Mysterious Boots##34464 |goto Talador/0 85.0,31.1
turnin Mysterious Ring##34463 |goto Talador/0 85.0,31.1
turnin Mysterious Hat##34465 |goto Talador/0 85.0,31.1
turnin Mysterious Staff##34466 |goto Talador/0 85.0,31.1
step
talk Zooti Fizzlefury##86949
accept Temporal Juxtaposition##34472 |goto 85.0,31.1
step
talk Image of Archmage Vargoth##77853
turnin Temporal Juxtaposition##34472 |goto 84.54,31.68 |tip Wait for the scene to complete.
accept The Staff of Archmage Vargoth##36027 |goto 84.54,31.68
Recruit Image of Archmage Vargoth |condition hasfollower(190)
step
Congratulations, you now have the Image of Archmage Vargoth as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Iye",[[
description This guide will walk you through obtaining Iye as a Garrison Follower.
keywords restoration druid
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Iye |condition hasfollower(266)
step
Congratulations, you now have Iye as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Ja'kala",[[
description This guide will walk you through obtaining Ja'kala as a Garrison Follower.
keywords restoration druid
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Ja'kala |condition hasfollower(267)
step
Congratulations, you now have Ja'kala as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Ka'la",[[
description This guide will walk you through obtaining Ka'la as a Garrison Follower.
keywords subtlety rogue massive strike leatherworking
step
In order to recruit this Follower you must complete the _Gronnlings Abound_ Garrison Mission
#include "H_Garrison_CommandTable"
Recruit Ka'la |condition hasfollower(153)
step
Congratulations, you now have Ka'la as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Kaiel",[[
description This guide will walk you through obtaining Kaiel as a Garrison Follower.
keywords protection paladin
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Kaiel |condition hasfollower(329)
step
Congratulations, you now have Kaiel as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Kal'gor the Honorable",[[
description This guide will walk you through obtaining Kal'gor the Honorable as a Garrison Follower.
keywords elemental shaman minion swarms
step
Routing to Kal'gor |next "kalgor" |only if not completedq(37563)
Routing to End |next "end" |only if completedq(37563)
step
label "kalgor"
In order to recruit this Follower you must choose him during the _The Frostwolves Stand Ready_ quest
This quest appears at the end of the Frostfire Ridge questline
talk Makar Stonebinder##76730
turnin The Frostwolves Stand Ready##37563 |goto Frostfire Ridge 76.2,55.0
Recruit Kal'gor the Honorable |condition hasfollower(184)
step
label "end"
Congratulations, you now have Kal'gor the Honorable as a Garrison Follower! |only if hasfollower(184)
You chose Greatmother Geyah instead, and cannot gain this Follower |only if hasfollower(186)
You chose Lokra instead, and cannot gain this Follower |only if hasfollower(185)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Kaluaka",[[
description This guide will walk you through obtaining Kaluaka as a Garrison Follower.
keywords balance druid
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Kaluaka |condition hasfollower(247)
step
Congratulations, you now have Kaluaka as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Kana'tin",[[
description This guide will walk you through obtaining Kana'tin as a Garrison Follower.
keywords windwalker monk
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Kana'tin |condition hasfollower(452)
step
Congratulations, you now have Kana'tin as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Karg Bloodfury",[[
description This guide will walk you through obtaining Karg Bloodfury as a Garrison Follower.
keywords arms warrior powerful spell
step
This Follower is purchased after reaching Revered reputation with the Frostwolf Orcs
Become Revered with the Frostwolf Orcs |condition rep('Frostwolf Orcs')>=Revered
step
talk Beska Redtusk##86036
buy 1 Contract: Karg Bloodfury##119161 |n |goto Warspear 53.6,62.0 |tip It costs 5000 gold.
use Contract: Karg Bloodfury##119161
Recruit Karg Bloodfury |condition hasfollower(459)
step
Congratulations, you now have Karg Bloodfury as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Karga Quickshot",[[
description This guide will walk you through obtaining Karga Quickshot as a Garrison Follower.
keywords beast master hunter
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Karga Quickshot |condition hasfollower(273)
step
Congratulations, you now have Karga Quickshot as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Karn Steelhoof",[[
description This guide will walk you through obtaining Karn Steelhoof as a Garrison Follower.
keywords protection warrior
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Karn Steelhoof |condition hasfollower(430)
step
Congratulations, you now have Karn Steelhoof as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Kaz the Shrieker",[[
description This guide will walk you through obtaining Kaz the Shrieker as a Garrison Follower.
keywords elemental shaman deadly minions
step
Routing to Lumber Mill |next "correct" |only if default
Routing to Sparring Arena |next "wrongbuilding" |only if completedq(34697)
step
label "correct"
In order to recruit this Follower you must complete the Lumber Mill building questline in Gorgrond
Recruit Kaz the Shrieker |condition hasfollower(159)
step
label "wrongbuilding"
You chose to build the Sparring Arena, and cannot gain this Follower |only if completedq(34697)
Congratulations, you now have Kaz the Shrieker as a Garrison Follower! |only if default
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Kil'weh",[[
description This guide will walk you through obtaining Kil'weh as a Garrison Follower.
keywords demonology warlock
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Kil'weh |condition hasfollower(402)
step
Congratulations, you now have Kil'weh as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Kimzee Pinchwhistle",[[
description This guide will walk you through obtaining Kimzee Pinchwhistle as a Garrison Follower.
keywords combat rogue danger zones engineering
step
In order to recruit this Follower you must complete the _Flame On_ quest in the Spires of Arak
This quest is found at the end of the Clutchpop Gearworks questline
talk Krixel Pinchwhistle##81443
accept Flame On##35298 |goto Spires of Arak 58.5,92.2
step
click Firebomb Plunger##9277
Use the Firebomb Plunger |q Flame On##35298/1 |goto 58.51,92.22
step
clicknpc Repaired Flying Machine##81567
Ride on Kimzee's Flying Machine |q Flame On##35298/2 |goto 58.84,92.84
step
talk Kimzee Pinchwhistle##82468
turnin Flame On##35298 |goto 61.60,72.84
accept Kimzee Pinchwhistle##36062 |instant |goto 61.60,72.84
Recruit Kimzee Pinchwhistle |condition hasfollower(192)
step
Congratulations, you now have Kimzee Pinchwhistle as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Lantresor of the Blade",[[
description This guide will walk you through obtaining Lantresor of the Blade as a Garrison Follower.
keywords arms warrior danger zones mining
step
In order to recruit this Follower you must progress through the Hallvalor questline in Nagrand
talk Lantresor of the Blade##80161
accept Meet Me in the Cavern##34866 |goto Nagrand D/0 85.42,54.59
step
_Enter_ the cave  |goto Nagrand D/0 88.0,55.5 < 20
talk Lantresor of the Blade##80319
turnin Meet Me in the Cavern##34866 |goto Nagrand D/10 44.9,19.8
accept Challenge of the Masters##34868 |goto Nagrand D/10 44.9,19.8
step
click Burning Blade Sword |tip The sword in the center of the steel circle.
Pull the blade |q Challenge of the Masters##34868/1 |goto 53.01,68.47
step
kill Packleader Dran'ruk##80326, Sesk##80325, Gorn##80324, Warlord Dharl of the Thrice-Bloodied Bla##80327
Survive the Challenge |q Challenge of the Masters##34868/2 |goto 52.53,67.97
step
click Garrison Blueprints##183
get Garrison Blueprints##112020 |q Challenge of the Masters##34868/3 |goto 52.88,68.41
step
talk Foreman Thazz'ril##80140
turnin Challenge of the Masters##34868 |goto Nagrand D/0 82.8,44.2
Recruit Lantresor of the Blade |condition hasfollower(157)
step
Congratulations, you now have Lantresor of the Blade as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Leeroy Jenkins",[[
description This guide will walk you through obtaining Leeroy Jenkins as a Garrison Follower.
keywords retribution paladin minion swarms
step
In order to recruit this Follower you must complete the Leeeeeeeeeeeeeroy...? achievement in Upper Blackrock Spire
You must revive Leeroy after killing _Kyrak_, then quickly continue through the dungeon, killing everything before Leeroy runs ahead and dies
You must clear all the way up to, and including, The Furnace
|achieve 9058
Recruit Leeroy Jenkins |condition hasfollower(178)
step
Congratulations, you now have Leeroy Jenkins as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Leorajh",[[
description This guide will walk you through obtaining Leorajh as a Garrison Follower.
keywords restoration shaman group damage bodyguard
step
Follow this path up |goto Spires of Arak/0 54.9,68.4 < 5 |tip Sticking to the outside edge sometimes makes climbing the path easier.
Reach Dreadtalon Peak |goto 56.0,66.2 < 10
Continue up the path |goto 55.5,65.4 < 10
Enter the cave |goto 55.0,65.3 < 10
talk Leorajh##86887
accept Leorajh, the Enlightened##37168 |instant |goto Spires of Arak 54.2,63.0
Recruit Leorajh |condition hasfollower(219)
step
Congratulations, you now have Leorajh as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Lin Tenderpaw",[[
description This guide will walk you through obtaining Lin Tenderpaw as a Garrison Follower.
keywords brewmaster monk
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Lin Tenderpaw |condition hasfollower(437)
step
Congratulations, you now have Lin Tenderpaw as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Lokra",[[
description This guide will walk you through obtaining Lokra as a Garrison Follower.
keywords enhancement shaman danger zones
step
Routing to Lokra |next "lokra" |only if not completedq(37563)
Routing to End |next "end" |only if completedq(37563)
step
label "lokra"
In order to recruit this Follower you must choose her during the _The Frostwolves Stand Ready_ quest
This quest appears at the end of the Frostfire Ridge questline
talk Makar Stonebinder##76730
turnin The Frostwolves Stand Ready##37563 |goto Frostfire Ridge 76.2,55.0
Recruit Lokra |condition hasfollower(185)
step
label "end"
Congratulations, you now have Lokra as a Garrison Follower! |only if hasfollower(185)
You chose Greatmother Geyah instead, and cannot gain this Follower |only if hasfollower(186)
You chose Kaiel instead, and cannot gain this Follower |only if hasfollower(329)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Lonan",[[
description This guide will walk you through obtaining Lonan as a Garrison Follower.
keywords enhancement shaman
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Lonan |condition hasfollower(388)
step
Congratulations, you now have Lonan as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Lucy Keller",[[
description This guide will walk you through obtaining Lucy Keller as a Garrison Follower.
keywords windwalker monk
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Lucy Keller |condition hasfollower(450)
step
Congratulations, you now have Lucy Keller as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Magister Krelas",[[
description This guide will walk you through obtaining Magister Krelas as a Garrison Follower.
keywords fire mage powerful spell
step
Routing to Arcane Sanctum |next "correct" |only if completedq(34632)
Routing to Arsenal |next "wrongbuilding" |only if default
step
label "correct"
Krelas will join your Garrison at the end of the Arcane Sanctum's questline
turnin Due Cause to Celebrate##34712 |goto Talador 71.2,29.8
Recruit Magister Krelas |condition hasfollower(154)
step
label "wrongbuilding"
Congratulations, you now have Magister Krelas as a Garrison Follower! |only if completedq(34632)
You chose to build the Arsenal, and cannot gain this Follower |only if default
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Maska",[[
description This guide will walk you through obtaining Maska as a Garrison Follower.
keywords arms warrior
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Maska |condition hasfollower(418)
step
Congratulations, you now have Maska as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Matoclaw",[[
description This guide will walk you through obtaining Matoclaw as a Garrison Follower.
keywords balance druid
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Matoclaw |condition hasfollower(249)
step
Congratulations, you now have Matoclaw as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Mau'iti",[[
description This guide will walk you through obtaining Mau'iti as a Garrison Follower.
keywords destruction warlock
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Mau'iti |condition hasfollower(411)
step
Congratulations, you now have Mau'iti as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Meatball",[[
description This guide will walk you through obtaining Meatball as a Garrison Follower.
keywords fury warrior timed battle
step
In order to recruit this Follower you must reach rank 5 with the Brawler's Guild
|confirm |only if not completedq(36702)
step
When Goredome begins casting Lumbering Charge, move out of the red circle
Defeat Goredome |condition ZGV:GetReputation(1690).friendRep>=250 |goto Brawl'gar Arena/1 52.8,55.0
step
Avoid Sanoriak's _Firewall_ ability. There is always a safe opening to run through
_Interrupt Flame Buffet_ always
Sanoriak will also cast _Fireball_ and _Pyroblast_. This damage is manageable
Defeat Sanoriak |condition ZGV:GetReputation(1690).friendRep>=500 |goto Brawl'gar Arena/1 52.8,55.0
step
Smash has a _2 minute enrage_ timer
Kill the goblins that Smash carries first
When Smash casts _Shield Waller_, attack him from behind
Melee classes will need cooldowns to mitigate his damage
Smash is succeptable to crowd control abilities. Use this to your advantage
Defeat Smash Hoofstomp |condition ZGV:GetReputation(1690).friendRep>=750 |goto Brawl'gar Arena/1 52.8,55.0
step
_Kill Akama's Feral Spirit wolves_
Akama will gain stacks of _Shadow Strikes_, increasing his damage. Save cooldowns for the last half of the fight
Akama will also cast _Chain Lightning_ and _Thunderstorm_. These abilities are of little concern
Defeat Akama |condition ZGV:GetReputation(1690).friendRep>=1000 |goto Brawl'gar Arena/1 52.8,55.0
step
Dippy has a melee ability called _Peck_. If you are in melee range when the cast is finished, it will kill you
When Dippy takes damage, he is knocked back
You should prioritize _fast attacks_
Melee classes will need to maximize damage during stuns to beat the 2 minute enrage timer
Defeat Dippy |condition ZGV:GetReputation(1690).friendRep>=1250 |goto Brawl'gar Arena/1 52.8,55.0
step
Kirrawk will summon a tornado through Twisting Winds. Lead the tornado and make it hit him
_Interrupt Storm Cloud_ whenever possible
Defeat Kirrawk |condition ZGV:GetReputation(1690).friendRep>=1500 |goto Brawl'gar Arena/1 52.8,55.0
step
Kukala's only source of damage is from high physical damage melee attacks
Melee classes need to utilize defensive cooldowns to survive Kukala's physical damage
Ranged classes need to _snare and kite_ Kukala, being mindful of his _Dash_ speed increase ability
Defeat King Kukala |condition ZGV:GetReputation(1690).friendRep>=1750 |goto Brawl'gar Arena/1 52.8,55.0
step
DPS Fran and Riddoh _evenly_
Move to avoid Fran's _Throw Dynamite_ ability
Riddoh will trap you in a net while Fran places bombs around you. _Move immediately_ to avoid damage
Defeat Fran & Riddoh |condition ZGV:GetReputation(1690).friendRep>=2000 |goto Brawl'gar Arena/1 52.8,55.0
step
As the fight goes on, Blat will make copies of himself. These copies move slow and die when Blat dies
Avoid the copies of Blat and kill him before the copies overwhelm you
Defeat Blat |condition ZGV:GetReputation(1690).friendRep>=2250 |goto Brawl'gar Arena/1 52.8,55.0
step
_Avoid Fire Line_, a line of fire that spawns in front of Vian
_Avoid Fireballs_ spawned by Volatile Flames. More will appear as the fight progresses
_Do not interrupt Lava Burst_. Vian's melee attack does more damage than this ability
Defeat Vian the Voltile |condition ZGV:GetReputation(1690).friendRep>=2500 |goto Brawl'gar Arena/1 52.8,55.0
step
_Keep running_ around Ixx to avoid _Devastating Thrust_
Ixx deals high physical damage. Utilize defensive cooldowns to mitigate this damage
Defeat Ixx |condition ZGV:GetReputation(1690).friendRep>=2750 |goto Brawl'gar Arena/1 52.8,55.0
step
Mazhareen gains increased damage as her health lowers
_Save defensive cooldowns_ for the last half of the fight
Defeat Mazhareen |condition ZGV:GetReputation(1690).friendRep>=3000 |goto Brawl'gar Arena/1 52.8,55.0
step
_Kill Explosive Chickens_
Keep moving to _avoid Electric P.E.C.K._
_Ignore_ the Well Fed Chickens
Defeat Tyson Sanders |condition ZGV:GetReputation(1690).friendRep>=3250 |goto Brawl'gar Arena/1 52.8,55.0
step
Nibbleh is a VERY difficult fight
Melee will need to constantly backpedal and kite him in a circle around the room
Nibbleh will leave green pools on the ground. Each time he contacts a pool, he will gain increased damage and take less damage.
Kite Nibbleh and DPS him quickly before his stacks get to high
Defeat Nibbleh |condition ZGV:GetReputation(1690).friendRep>=3500 |goto Brawl'gar Arena/1 52.8,55.0
step
Every time Dominika takes damage, she creates a copy of herself with 1 hit point
These copies, like her, cast _Arcane Barrage_
Periodically, _kill the copies_ she spawns and resume DPS
_Interrupt her_ whenever possible
Defeat Dominika the Illusionist |condition ZGV:GetReputation(1690).friendRep>=3750 |goto Brawl'gar Arena/1 52.8,55.0
step
Meatball has a _60 second enrage_ timer
Whenever damaged, Meatball _drops purple orbs_ which will increase your damage and heal you
Stacking these orbs is the only way to defeat him before the enrage timer
Spend the first _30-45 seconds_
Defeat Meatball |condition ZGV:GetReputation(1690).friendRep>=4000 |goto Brawl'gar Arena/1 52.8,55.0
step
talk Meatball##86152
accept Meatball##36702 |instant |goto Brawl'gar Arena 56.4,75.2
Recruit Meatball |condition hasfollower(203)
step
Congratulations, you now have Meatball as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Millhouse Manastorm",[[
description This guide will walk you through obtaining Millhouse Manastorm as a Garrison Follower.
keywords arcane mage deadly minions
step
Routing to Tavern |only if hasbuilding(34) or hasbuilding(35) or hasbuilding(36)
Routing to End |next "end" |only if default
stickystart "Manastorm"
step
#include "H_Garrison_MediumBuilding"
talk Millhouse Manastorm##88009 |tip He sometimes appears in your Frostwall Tavern.
accept For the Children!##37179 |tip You must be level 100 to accept this quest.
step
Open the Looking for Group panel and queue for the Heroic version of the Upper Blackrock Spire dungeon
click Miniature Iron Star##237476
Miniature Iron Star |q For the Children!##37179/1 |goto Upper Blackrock Spire 2/3 33.9,54.7
step
#include "H_Garrison_MediumBuilding"
talk Millhouse Manastorm##88009
turnin For the Children!##37179
step "Manastorm"
You will have a limited amount of time to retrieve the Miniature Iron Star and return to Millhouse Manastorm before he despawns
If he does despawn, you will have to wait until the next time he randomly spawns in your Frostwall Tavern
Recruit Millhouse Manastorm |condition hasfollower(455)
step
label "end"
Congratulations, you now have Millhouse Manastorm as a Garrison Follower! |only if completedq(37179)
You must have a Frostwall Tavern to recruit this Follower! |only if default
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Morketh Bladehowl",[[
description This guide will walk you through obtaining Morketh Bladehowl as a Garrison Follower.
keywords fury warrior massive strike
step
Routing to Arsenal |next "correct" |only if default
Routing to Arcane Sanctum |next "wrongbuilding" |only if completedq(34632)
step
label "correct"
Morketh joins your Garrison at the end of the Gordal Fortress questline
talk Morketh Bladehowl##80342
accept The Only Way to Travel##34971 |goto Talador 64.4,81.6
step
talk Morketh Bladehowl##80342
turnin The Only Way to Travel##34971 |goto Talador 71.2,29.8
Recruit Morketh Bladehowl |condition hasfollower(155)
step
label "wrongbuilding"
Congratulations, you now have Morketh Bladehowl as a Garrison Follower! |only if default
You chose to build the Arcane Sanctum, and cannot gain this Follower |only if completedq(34632)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Motina",[[
description This guide will walk you through obtaining Motina as a Garrison Follower.
keywords arms warrior
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Motina |condition hasfollower(417)
step
Congratulations, you now have Motina as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Muaha Stonehide",[[
description This guide will walk you through obtaining Muaha Stonehide as a Garrison Follower.
keywords guardian druid
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Muaha Stonehide |condition hasfollower(257)
step
Congratulations, you now have Muaha Stonehide as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Mulverick",[[
description This guide will walk you through obtaining Mulverick as a Garrison Follower.
keywords survival hunter powerful spell alchemy
step
In order to recruit this Follower you must complete the questline in Bladespire Fortress in Frostfire Ridge
talk Mulverick##72890
accept Mulverick's Plight##33483 |goto Frostfire Ridge 30.8,41.5
step
_Enter_ the tunnel |goto Frostfire Ridge 29.7,41.6 < 20 |n
kill Sootstained Taskmaster##76706
Collect Mulverick's Axe  |q Mulverick's Plight##33483/1 |goto Frostfire Ridge/4 58.4,56.1
step
_Go down_ the path |goto Frostfire Ridge/4 49.1,58.0 < 20
_Continue_ through the path |goto 37.2,30.3 < 20
kill Slavemaster Turgall##72873
Turgall's Key  |q Mulverick's Plight##33483/2 |goto Frostfire Ridge/4 49.8,34.2
step
_Jump down_ the ledge |goto Frostfire Ridge/4 53.4,38.7 < 20
_Follow_ the path out of the cave |goto Frostfire Ridge/4 66.0,75.5 < 20
Mulverick's Cage unlocked  |q Mulverick's Plight##33483/3 |goto Frostfire Ridge 30.8,41.5
step
talk Mulverick##79047
turnin Mulverick's Plight##33483 |goto Frostfire Ridge 30.8,41.5
accept Mulverick's Offer of Service##34732 |instant |goto Frostfire Ridge 30.8,41.5
Recruit Mulverick |condition hasfollower(182)
step
Congratulations, you now have Mulverick as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Nat Pagle",[[
description This guide will walk you through obtaining Nat Pagle as a Garrison Follower.
keywords survival hunter deadly minions swamp fishing shack
step
You must have a _level 3 Fishing Shack_ in order to recruit Nat Pagle!
You can use the Garrison's Building Guide to expand your Fishing Shack to level 3
|confirm
|only if not hasbuilding(135,3)
step
talk Rak'jin##79971
accept Luring Nat##36612 |goto Frostwall/0 37.6,70.2
step
Fish in the lava here |cast Fishing##131474
Make sure you are in _Frostwall Approach_ NOT your Garrison
collect 1 Molten Catfish##116754 |n
Molten Catfish |q Luring Nat##36612/1 |goto Frostfire Ridge/0 51.3,59.3
step
talk Rak'jin##79971
turnin Luring Nat##36612 |goto Frostwall/0 37.6,70.2
accept Finding Nat Pagle##36608 |goto Frostwall/0 37.6,70.2
step
talk Nat Pagle##63721
turnin Finding Nat Pagle##36608 |goto Krasarang Wilds 68.4,43.4
accept The Great Angler Returns##36609 |goto Krasarang Wilds 68.4,43.4
|only if not completedq(36609)
step
talk Rak'jin##79971
turnin The Great Angler Returns##36609 |goto Frostwall/0 37.6,70.2
step
talk Nat Pagle##85984
accept A True Draenor Angler##36611 |goto Frostwall/0 37.6,70.2
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
turnin A True Draenor Angler##36611 |goto Frostwall/0 37.6,70.2
accept An Angler on Our Team##36616 |instant |goto Frostwall/0 37.6,70.2
Recruit Nat Pagle |condition hasfollower(202)
step
Congratulations, you now have Nat Pagle as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Nuan Skydream",[[
description This guide will walk you through obtaining Nuan Skydream as a Garrison Follower.
keywords windwalker monk
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Nuan Skydream |condition hasfollower(451)
step
Congratulations, you now have Nuan Skydream as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Olin Umberhide",[[
description This guide will walk you through obtaining Olin Umberhide as a Garrison Follower.
keywords protection warrior wild aggression jewelcrafting
step
#include "H_Garrison_WarmasterZog"
accept Winds of Change##34462
step
_Enter_ the cave |goto Frostfire Ridge 56.6,62.5 < 20 |n
clicknpc Olin Umberhide##80577
Rescue Olin Umberhide |q Winds of Change##34462/1 |goto Frostfire Ridge 57.3,62.9
step
#include "H_Garrison_WarmasterZog"
turnin Winds of Change##34462
Recruit Olin Umberhide |condition hasfollower(34)
step
Congratulations, you now have Olin Umberhide as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Penny Clobberbottom",[[
description This guide will walk you through obtaining Penny Clobberbottom as a Garrison Follower.
keywords survival hunter massive strike
step
Routing to Lumber Mill |next "correct" |only if default
Routing to Sparring Arena |next "wrongbuilding" |only if completedq(34697)
step
label "correct"
Penny joins your Garrison after completing the Lumber Mill questline in Gorgrond
talk Frenna##82569
accept Chapter I: Plant Food##35508 |goto Gorgrond 57.0,71.8
step
click Pollen Pod##232491
Pollen Pod destroyed |q Chapter I: Plant Food##35508/1 |goto Gorgrond 59.3,67.0
step
talk Penny Clobberbottom##82574
turnin Chapter I: Plant Food##35508 |goto Gorgrond 55.8,71.4
step
talk Frenna##82569
accept Chapter II: The Harvest##35527 |goto Gorgrond 57.0,71.8
step
kill Ontogen the Harvester##82372
Ontogen the Harvester slain |q Chapter II: The Harvest##35527/1 |goto Gorgrond 59.8,71.0
step
talk Penny Clobberbottom##82574
turnin Chapter II: The Harvest##35527 |goto Gorgrond 55.8,71.4
step
talk Frenna##82569
accept Chapter III: Ritual of the Charred##35524 |goto Gorgrond 57.0,71.8
step
kill Emberbark Ancient##82284+, Greenbough Ancient##82360+, Tanglebark Ancient##86899+, Smoldering Ancient##82365+
Ancient slain |q Chapter III: Ritual of the Charred##35524/1 |goto Gorgrond 59.0,68.2
step
talk Penny Clobberbottom##82574
turnin Chapter III: Ritual of the Charred##35524 |goto Gorgrond 55.8,71.4
step
talk Penny Clobberbottom##85077
accept Penny For Your Thoughts##36812 |instant |goto Gorgrond 46.4,69.6
Recruit Penny Clobberbottom |condition hasfollower(211)
step
label "wrongbuilding"
Congratulations, you now have Penny Clobberbottom as a Garrison Follower! |only if default
You chose to build the Sparring Arena, and cannot recruit this Follower |only if completedq(34697)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Phaedra Heartbinder",[[
description This guide will walk you through obtaining Phaedra Heartbinder as a Garrison Follower.
keywords holy priest
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Phaedra Heartbinder |condition hasfollower(347)
step
Congratulations, you now have Phaedra Heartbinder as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Phylarch the Evergreen",[[
description This guide will walk you through obtaining Phylarch the Evergreen as a Garrison Follower.
keywords restoration druid deadly minions swamp lumber mill
step
Routing to Lumber Mill |only if hasbuilding(138)
Routing to End |next "end" |only if default
step
To recruit Phylarch the Evergreen, you must have a level 3 Lumber Mill to log Large Timbers
After logging 3 Large Timbers, Phylarch the Evergreen will join your garrison
The easiest place to find them is all around Nagrand
click Large Timber##234007 |goto Nagrand D/0 53.5,31.8
Recruit Phylarch the Evergreen |condition hasfollower(194)
step
label "end"
Congratulations, you now have Phylarch the Evergreen as a Garrison Follower! |only if hasbuilding(138)
You must have a _level 3 Lumber Mill_ to recruit this Follower! |only if default
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Pikake",[[
description This guide will walk you through obtaining Pikake as a Garrison Follower.
keywords discipline priest
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Pikake |condition hasfollower(344)
step
Congratulations, you now have Pikake as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Pleasure-Bot 8000",[[
description This guide will walk you through obtaining Pleasure-Bot 8000 as a Garrison Follower.
keywords fury warrior timed battle tailoring
step
talk Ziz Fizziks##79870
accept Clear!##34751 |goto Talador 64.2,47.8
step
kill Lakebottom Zapper##79636+
Zapper Sac |q Clear!##34751/1 |goto Talador 63.6,44.8 |tip These are found underwater around this small island.
step
talk Ziz Fizziks##79870
turnin Clear!##34751 |goto Talador 64.2,47.8
step
talk Pleasure-Bot 8000##79853
accept New Owner##35238 |instant |goto Talador 64.2,47.8
Recruit Pleasure-Bot 8000 |condition hasfollower(171)
step
Congratulations, you now have Pleasure-Bot 8000 as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Professor Felblast",[[
description This guide will walk you through obtaining Professor Felblast as a Garrison Follower.
keywords destruction warlock timed battle
step
Reach revered with the _Steamwheedle Preservation Society_ |condition rep('Steamwheedle Preservation Society')>= Revered
step
talk Mimi Wizzlebub##88493
buy Contract: Professor Felblast##119165 |n |goto Warspear 53.8,60.8
use Contract: Professor Felblast##119165
Recruit Professor Felblast |condition hasfollower(460)
step
Congratulations, you now have Professor Felblast as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Rizei Stormhoof",[[
description This guide will walk you through obtaining Rizei Stormhoof as a Garrison Follower.
keywords enhancement shaman danger zones
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Rizei Stormhoof |condition hasfollower(110)
step
Congratulations, you now have Rizei Stormhoof as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Robin Fredericksen",[[
description This guide will walk you through obtaining Robin Fredericksen as a Garrison Follower.
keywords discipline priest
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Robin Fredericksen |condition hasfollower(341)
step
Congratulations, you now have Robin Fredericksen as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Ruthia the Unchaste",[[
description This guide will walk you through obtaining Ruthia the Unchaste as a Garrison Follower.
keywords holy priest
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Ruthia the Unchaste |condition hasfollower(348)
step
Congratulations, you now have Ruthia the Unchaste as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Sahale",[[
description This guide will walk you through obtaining Sahale as a Garrison Follower.
keywords holy paladin
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Sahale |condition hasfollower(328)
step
Congratulations, you now have Sahale as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Seleria Dawncaller",[[
description This guide will walk you through obtaining Seleria Dawncaller as a Garrison Follower.
keywords holy paladin group damage
step
This Follower is gained by recruiting her through the Frostwall Tavern
You can find her by searching for a counter to Group Damage
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Seleria Dawncaller |condition hasfollower(107)
step
Congratulations, you now have Seleria Dawncaller as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Shadow Hunter Rala",[[
description This guide will walk you through obtaining Shadow Hunter Rala as a Garrison Follower.
keywords marksmanship hunter timed battle herbalism
step
In order to recruit this Follower you must complete a short questline in Frostfire Ridge
talk Shadow Hunter Mala##78209
accept Frosted Fury##34346 |goto Frostfire Ridge/0 52.5,40.4
step
talk Shadow Hunter Rala##78208
accept Lurkers##34344 |goto 52.6,40.4
accept Poulticide##34345 |goto 52.6,40.4
stickystart "new1"
stickystart "new2"
step
click Frostblossom |tip Blue plants around the area.
Collect 10 Frostbloom Leaves |q Poulticide##34345/1 |goto Frostfire Ridge/0 53.9,39.1
Click here to find more around this area |goto 54.7,39.4
step "new1"
kill Ice Fury##78214+
collect 3 Frostshard##110228 |q Frosted Fury##34346/1 |goto Frostfire Ridge/0 57.8,38.5
step "new2"
kill Snow Lurker##78213+, Ice Lurker##78448+
collect 8 Dose of Lurker Venom##110226 |q Lurkers##34344/1 |goto Frostfire Ridge/0 58.9,35.4
step
talk Shadow Hunter Mala##78209
turnin Frosted Fury##34346 |goto Frostfire Ridge/0 52.5,40.4
step
talk Shadow Hunter Rala##78208
turnin Lurkers##34344 |goto 52.6,40.4
turnin Poulticide##34345 |goto 52.6,40.4
accept The Real Prey##34348 |instant |goto 52.6,40.4
Recruit Shadow Hunter Rala |condition hasfollower(180)
step
Congratulations, you now have Shadow Hunter Rala as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Skalliz Skullslice",[[
description This guide will walk you through obtaining Skalliz Skullslice as a Garrison Follower.
keywords combat rogue
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Skalliz Skullslice |condition hasfollower(370)
step
Congratulations, you now have Skalliz Skullslice as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Soulare of Andorhal",[[
description This guide will walk you through obtaining Soulare of Andorhal as a Garrison Follower.
keywords protection paladin wild aggression
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
You can find him if you search for a counter to Wild Aggression
Recruit Soulare of Andorhal |condition hasfollower(172)
step
Congratulations, you now have Soulare of Andorhal as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Soulbinder Tuulani",[[
description This guide will walk you through obtaining Soulbinder Tuulani as a Garrison Follower.
keywords shadow priest group damage
step
talk Lady Liadrin##75121
accept Holding the Line##34418 |goto Talador/0 55.50,67.65
step
talk Mehlar Dawnblade##78577
accept Powering the Defenses##35249 |goto 55.56,67.04
step
talk Soulbinder Tuulani##77737
turnin Powering the Defenses##35249 |goto Talador/13 68.38,19.35
accept We Must Construct Additional Pylons##34351 |goto 68.38,19.35
step
talk Yuuri##76790
accept Nightmare in the Tomb##33530 |goto 52.24,38.94
stickystart "ST10"
step
click Arkonite Pylon## |tip It looks like a large floating slab of stone.
get Arkonite Pylon##110271 |q We Must Construct Additional Pylons##34351/2 |goto 31.83,48.35
step
_Go down_ the stairs |goto Talador/13 54.7,42.3 < 20
Investigate the Ritual |q Nightmare in the Tomb##33530/1 |goto 58.96,55.01
step
kill Tagar Spinebreaker##76745 |q Nightmare in the Tomb##33530/2 |goto Talador/13 64.1,68.6
step "ST10"
click Arkonite Crystal## |tip They look like big purple crystals all over the ground around this area.
get 6 Arkonite Crystal##110253 |q We Must Construct Additional Pylons##34351/1 |goto 37.82,46.57 |tip They are found all around the Tomb of Lights
stickystart "ST11"
stickystart "ST12"
step
kill 1 O'mogg Blackheart##76876 |q The Heart of Auchindoun##33920/1 |goto Talador/0 56.5,62.8
step
click Karab'uun## |tip It's a big pink crystal suspended in chains.
Recover Karab'uun |q The Heart of Auchindoun##33920/2 |goto 56.68,62.49
step "ST11"
click Burning Resonator## |tip They look like green glowing crystals floating above spiked altars.
Destroy the Burning Resonators |q Disrupting the Flow##33917/1 |goto Talador/0 55.1,62.3
step "ST12"
kill 15 Legion Assailant##78455, Abyssal Invader##78458, Burning Hunter##78457, Shadow Council Pyromancer##78202 |q Holding the Line##34418/1 |goto Talador/0 56.1,65.2
step
talk Vindicator Nobundo##78482
turnin Disrupting the Flow##33917 |goto 56.66,65.87
step
talk Soulbinder Nyami##78519
turnin The Heart of Auchindoun##33920 |goto 56.50,67.13
step
talk Lady Liadrin##75121
turnin Nightmare in the Tomb##33530 |goto 55.48,67.67
turnin Holding the Line##34418 |goto 55.48,67.67
step
talk Soulbinder Tuulani##78520
turnin We Must Construct Additional Pylons##34351 |goto 55.11,67.40
step
talk Lady Liadrin##75121
accept Sunsworn Camp##34451 |goto 55.49,67.66
step
_Follow_ the path |goto 59.5,68.9 < 20
talk Lady Liadrin##75246
turnin Sunsworn Camp##34451 |goto 61.00,72.54
step
talk Soulbinder Nyami##75256
accept Into the Hollow##33970 |goto 60.93,72.46
step
talk Soulbinder Tuulani##78028
accept Antivenin##33971 |goto 60.90,72.53
step
talk Mehlar Dawnblade##75249
accept Vile Defilers##33972 |goto 60.52,72.39
stickystart "ST13"
stickystart "ST14"
step
_Cross_ the bridge |goto 59.3,77.6 < 20
_Follow the path_ back |goto Talador/0 60.4,82.1 < 20
_Enter_ the cave |goto 61.3,84.2
kill Xanatos the Defiler##75294 |q Into the Hollow##33970/1 |goto Talador/0 65.6,86.8
step
Recover the Sha'tari |q Into the Hollow##33970/2 |goto 65.75,86.87 |tip The floating pink crystal with a shield around it
step "ST13"
click Defiling Crystal## |tip It looks like a floating gold colored crystal.
kill Insidious Defiler##76969 |tip There will be an Insidious Defiler next to the crystals you need to destroy
Destroy the Defiling Crystal |q Vile Defilers##33972/1 |goto 64.03,85.56
step "ST14"
kill Deathweb Crawler##75273, Deathweb Egg Tender##76947
get 9 Deathweb Fang##109744 |q Antivenin##33971/1 |goto 59.37,79.02
step
_Cross_ the bridge |goto Talador/0 59.3,77.3 < 20
talk Mehlar Dawnblade##75249
turnin Vile Defilers##33972 |goto 60.52,72.40
step
talk Soulbinder Tuulani##78028
turnin Antivenin##33971 |goto 60.91,72.54
step
talk Soulbinder Nyami##75256
turnin Into the Hollow##33970 |goto 60.92,72.45
step
talk Lady Liadrin##75246
accept Scheduled Pickup##34242 |goto 61.00,72.54
step
talk Soulbinder Tuulani##77869
turnin Scheduled Pickup##34242 |goto 50.42,87.52
accept Restalaan, Captain of the Guard##34508 |goto 50.42,87.52
step
_Continue up_ the stairs |goto 47.1,90.0 < 20
_Enter_ the building |goto 45.1,90.5 < 20
talk Restalaan##77082
turnin Restalaan, Captain of the Guard##34508 |goto 44.85,90.49
accept The Final Piece##33976 |goto 44.83,90.46
step
kill Vorpil Ribcleaver##77051 |q The Final Piece##33976/1 |goto Talador/0 44.5,90.9
step
click Auch'naaru## |tip It looks like a big floating pink crystal with a shield around it.
get Auch'naaru##109197 |q The Final Piece##33976/2 |goto 44.69,90.73
step
talk Restalaan##77082
turnin The Final Piece##33976 |goto 44.84,90.49
accept Changing the Tide##34326 |goto 44.85,90.50
step
_Follow_ the path down |goto 44.7,87.5 < 20
_Go up_ the hill |goto 42.5,80.0 < 20
talk Restalaan##77799
turnin Changing the Tide##34326 |goto 43.43,75.93
accept Desperate Measures##34092 |goto 43.43,75.95
step
kill Mok'war the Terrible##77350
get Ango'rosh Spellbook##109163 |q Desperate Measures##34092/1 |goto 39.43,83.52
step
kill Dur'gol the Ruthless##77349
get Grimoire of Binding##109162 |q Desperate Measures##34092/2 |goto 42.69,84.87
step
clicknpc Altar of Ango'rosh##77393
Perform the ritual |q Desperate Measures##34092/3 |goto 41.25,82.46 |tip Be sure not to move as the ritual channels
step
talk Restalaan##77799
turnin Desperate Measures##34092 |goto 43.44,75.93
step
talk Exarch Maladaar##75392
accept Into the Heart of Madness##34157 |goto Talador/0 42.93,76.10
step
talk Soulbinder Nyami##77582
turnin Into the Heart of Madness##34157 |goto Talador/0 31.21,73.60
accept Destination: Unknown##34564 |goto 31.21,73.60 |tip You must be at least level 95 to accept this quest.
step
clicknpc Demonic Gateway##77571
Use the Demonic Gateway |q Destination: Unknown##34564/1 |goto Talador/0 30.94,73.19
step
kill Mongrethod##77579 |q Destination: Unknown##34564/2
step
Go to the North side of the room
clicknpc Demonic Gateway##77571 |q Destination: Unknown##34564/3
step
talk Soulbinder Tuulani##79434
turnin Destination: Unknown##34564 |goto Talador/0 46.32,74.09
accept Together We Are Strong##36512 |instant |goto 46.32,74.09
Recruit Tuulani |condition hasfollower(205)
step
Congratulations, you now have Soulbinder Tuulani as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Spirit of Bony Xuk",[[
description This guide will walk you through obtaining Spirit of Bony Xuk as a Garrison Follower.
keywords subtlety rogue deadly minions
step
Routing to Sparring Arena |next "correct" |only if completedq(34697)
Routing to Lumber Mill |next "wrongbuilding" |only if default
step
label "correct"
Bony Xuk joins your Garrison after completing the Sparring Arena's questline
talk Rexxar##84131
accept Chains of Iron##35136 |goto Gorgrond 43.8,48.8
step
kill Captain Brak##81254
Captain Brak slain |q Chains of Iron##35136/1 |goto Gorgrond 49.2,44.8
click Heart of the Magnaron##231775
Heart of the Magnaron |q Chains of Iron##35136/2 |goto Gorgrond 49.2,44.8
step
talk Durotan##74594
turnin Chains of Iron##35136 |goto Gorgrond 46.0,70.2
Recruit Spirit of Bony Xuk |condition hasfollower(212)
step
label "wrongbuilding"
Congratulations, you now have Spirit of Bony Xuk as a Garrison Follower! |only if completedq(35136)
You chose to build the Lumber Mill, and cannot recruit this Follower |only if default
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Su-Lai Snowpetal",[[
description This guide will walk you through obtaining Su-Lai Snowpetal as a Garrison Follower.
keywords mistweaver monk
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Su-Lai Snowpetal |condition hasfollower(120)
step
Congratulations, you now have Su-Lai Snowpetal as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Taela Shatterborne",[[
description This guide will walk you through obtaining Taela Shatterborne as a Garrison Follower.
keywords frost mage
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Taela Shatterborne |condition hasfollower(304)
step
Congratulations, you now have Taela Shatterborne as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Tak'moa",[[
description This guide will walk you through obtaining Tak'moa as a Garrison Follower.
keywords holy priest
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
You can find him if you search for a counter to Wild Aggression
Recruit Tak'moa |condition hasfollower(351)
step
Congratulations, you now have Tak'moa as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Talon Guard Kurekk",[[
description This guide will walk you through obtaining Talon Guard Kurekk as a Garrison Follower.
keywords arms warrior minion swarms
step
In order to recruit Talon Guard Kurekk, you must:
Become Exalted with the Arakkora Outcasts |condition rep('Arakkoa Outcasts')>=Exalted
And
Complete the Terokk's Legacy questline |achieve 9072
step
Leave and reenter the Spires of Arak
accept Call of the Talon King##37177
step
talk Shade of Terokk##84122
turnin Call of the Talon King##37177 |goto Spires of Arak 46.6,46.6
Recruit Talon Guard Kurekk |condition hasfollower(224)
step
Congratulations, you now have Talon Guard Kurekk as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Talonpriest Ishaal",[[
description This guide will walk you through obtaining Talonpriest Ishaal as a Garrison Follower.
keywords shadow priest magic debuff bodyguard
step
In order to recruit Talonpriest Ishaal, you must complete the achievement _Between Arak and a Hard Place_
This requires you to complete all of the major story questlines in Spires of Arak
Complete the Between Arak and a Hard Place achievement |achieve 8926
Recruit Talonpriest Ishaal |condition hasfollower(218)
step
Congratulations, you now have Talonpriest Ishaal as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Tama Skyhoof",[[
description This guide will walk you through obtaining Tama Skyhoof as a Garrison Follower.
keywords balance druid
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Tama Skyhoof |condition hasfollower(250)
step
Congratulations, you now have Tama Skyhoof as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Toega",[[
description This guide will walk you through obtaining Toega as a Garrison Follower.
keywords mistweaver monk
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Toega |condition hasfollower(446)
step
Congratulations, you now have Toega as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Tormmok",[[
description This guide will walk you through obtaining Tormmok as a Garrison Follower.
keywords arms warrior wild aggression bodyguard
step
Aid Tormok by killing any mobs around him that attack in waves
talk Tormmok##83820 |tip Click through the dialogue options and then the quest will appear.
accept A Centurion Without a Cause##36037 |instant |goto Gorgrond 45.0,86.9 |tip You must be at least level 92 to accept this quest.
Recruit Tormmok |condition hasfollower(193)
step
Congratulations, you now have Tormmok as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Torwa Rimeheart",[[
description This guide will walk you through obtaining Torwa Rimeheart as a Garrison Follower.
keywords frost death knight
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Torwa Rimeheart |condition hasfollower(237)
step
Congratulations, you now have Torwa Rimeheart as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Ulna Thresher",[[
description This guide will walk you through obtaining Ulna Thresher as a Garrison Follower.
keywords holy priest magic debuff
step
In order to recruit this Follower you must complete the _Stonefury Rescue_ Garrison Mission
#include "H_Garrison_CommandTable"
Recruit Ulna Thresher |condition hasfollower(463)
step
Congratulations, you now have Ulna Thresher as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Unkala Stormgrinder",[[
description This guide will walk you through obtaining Unkala Stormgrinder as a Garrison Follower.
keywords elemental shaman
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Unkala Stormgrinder |condition hasfollower(382)
step
Congratulations, you now have Unkala Stormgrinder as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Utona Wolfeye",[[
description This guide will walk you through obtaining Utona Wolfeye as a Garrison Follower.
keywords restoration shaman
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Utona Wolfeye |condition hasfollower(393)
step
Congratulations, you now have Utona Wolfeye as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Vella A'nar",[[
description This guide will walk you through obtaining Vella A'nar as a Garrison Follower.
keywords fire mage deadly minions
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Vella A'nar |condition hasfollower(90)
step
Congratulations, you now have Vella A'nar as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Vivianne",[[
description This guide will walk you through obtaining Vivianne as a Garrison Follower.
keywords fire mage minion swarms bodyguard
step
In order to recruit this Follower you must completed a short questline in Frostfire Ridge and Ashran
#include "H_Garrison_Gazlowe"
accept Ashran Appearance##36706
step
#include "H_Garrison_Flightmaster"
Tell him, _"Take me to Ashran"_ |goto Warspear/0 43.9,34.5 < 20 |c
|only if not completedq(36706)
step
talk Stomphoof##86315
turnin Ashran Appearance##36706 |goto Warspear/0 45.5,34.6
accept Warspear Welcome##36707 |goto Warspear/0 45.5,34.6
step
talk Lieutenant Kragil##86312
turnin Warspear Welcome##36707 |goto Warspear/0 44.38,45.21
accept Inspiring Ashran##36708 |goto 44.38,45.21
step
talk Narnin Dawnglow##86307
Speak with Narnin Dawnglow |q Inspiring Ashran##36708/1 |goto Warspear/0 44.9,43.3
step
talk Zarjhin##86318
Speak with Zarjhin |q Inspiring Ashran##36708/2 |goto Warspear/0 58.8,51.7
step
talk Beska Redtusk##86036
Speak with Beska Redtusk |q Inspiring Ashran##36708/3 |goto Warspear/0 53.9,62.4
step
talk Lieutenant Kragil##86312
turnin Inspiring Ashran##36708 |goto Warspear/0 44.38,45.21
accept Burning Beauty##36709 |goto Warspear/0 44.38,45.21
step
talk Vivianne##81765
turnin Burning Beauty##36709 |goto Warspear/0 61.98,23.13
accept The Dark Lady's Gift##35243 |instant |goto Warspear/0 61.98,23.13
Recruit Vivianne |condition hasfollower(216)
step
Congratulations, you now have Vivianne as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Vol'motu",[[
description This guide will walk you through obtaining Vol'motu as a Garrison Follower.
keywords mistweaver monk
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Vol'motu |condition hasfollower(444)
step
Congratulations, you now have Vol'motu as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Walsh Atkins",[[
description This guide will walk you through obtaining Walsh Atkins as a Garrison Follower.
keywords protection warrior
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Walsh Atkins |condition hasfollower(425)
step
Congratulations, you now have Walsh Atkins as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Weaponsmith Na'Shra",[[
description This guide will walk you through obtaining Weaponsmith Na'Shra as a Garrison Follower.
keywords arms warrior timed battle blacksmithing
step
Aid Weaponsmith Na'Shra by killing any mobs around him that attack in waves
talk Initiate Na'Shra##74977
accept Smeltcraft##33838 |goto Frostfire Ridge/0 65.0,39.5
step
Head north through the small pass |goto Frostfire Ridge/0 64.6,38.4 < 10
Enter the cave |goto 65.8,37.0 < 10
click Fomic Ore Deposit##155079
Fomic Ore |q Smeltcraft##33838/1 |goto 66.8,37.4
step
talk Initiate Na'Shra##74977
turnin Smeltcraft##33838 |goto Frostfire Ridge/0 65.0,39.5
step
talk Weaponsmith Na'Shra##76452
accept Blood Oath of Na'Shra##34729 |instant |goto Frostfire Ridge/0 64.7,39.8
Recruit Weaponsmith Na'Shra |condition hasfollower(179)
step
Congratulations, you now have Weaponsmith Na'Shra as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Xen Barleystrike",[[
description This guide will walk you through obtaining Xen Barleystrike as a Garrison Follower.
keywords brewmaster monk
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Xen Barleystrike |condition hasfollower(440)
step
Congratulations, you now have Xen Barleystrike as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Yu'un Tigersbite",[[
description This guide will walk you through obtaining Yu'un Tigersbite as a Garrison Follower.
keywords brewmaster monk
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Yu'un Tigersbite |condition hasfollower(439)
step
Congratulations, you now have Yu'un Tigersbite as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Zen'taki",[[
description This guide will walk you through obtaining Zen'taki as a Garrison Follower.
keywords feral druid
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Zen'taki |condition hasfollower(254)
step
Congratulations, you now have Zen'taki as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Zen'tenbi",[[
description This guide will walk you through obtaining Zen'tenbi as a Garrison Follower.
keywords guardian druid
step
This Follower is gained by recruiting her through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Zen'tenbi |condition hasfollower(259)
step
Congratulations, you now have Zen'tenbi as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Zen'tiki",[[
description This guide will walk you through obtaining Zen'tiki as a Garrison Follower.
keywords feral druid
step
This Follower is gained by recruiting him through the Frostwall Tavern
#include "H_Garrison_MediumBuilding"
talk Akanja##87305 |tip You must have at least a level 2 Frostwall Tavern to recruit new Followers.
Recruit Zen'tiki |condition hasfollower(256)
step
Congratulations, you now have Zen'tiki as a Garrison Follower!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Garrison Guide\\Followers\\Follower Ziri'ak",[[
description This guide will walk you through obtaining Ziri'ak as a Garrison Follower.
keywords arms warrior powerful spell
step
Routing to Smuggling Run |next "correct" |only if completedq(35699)
Routing to End |next "wrongbuilding" |only if default
step
label "correct"
This Follower is a random drop from your _Smuggling Run!_ Garrison ability when in the Spires of Arak
Use your Garrison ability |cast Smuggling Run!##170108 |tip You can use this every 10 minutes.
talk Linny "The Skinny" Leadpockets##84243
buy 1 Contract: Ziri'ak##119267 |n
use Contract: Ziri'ak##119267
Recruit Ziri'ak |condition hasfollower(168)
step
label "wrongbuilding"
Congratulations, you now have Ziri'ak as a Garrison Follower! |only if completedq(35699)
You chose to build the Brewery, and cannot recruit this Follower |only if default
]])
