local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DailiesHWOD") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Warlords of Draenor\\Frostwall Inn Dungeon Dailies",[[
description This guide will take you through the Frostwall Inn dungeon dailies.
step
#include "H_Garrison_MediumBuilding"
Accept the quests from the two NPCs that spawned today:
|confirm
step
label "queuemenu"
Press _I_ and queue for the following Dungeons:
You don't have any dungeon quests! |only if default
_Everbloom_ |only if havequest(37227)
_Grimrail Depot_ |only if havequest(37209)
_Shadowmoon Burial Grounds_ |only if havequest(37245)
_Upper Blackrock Spire_ |only if havequest(37244)
_Auchindoun HEROIC_ |only if havequest(37233) or havequest(37232)
_Bloodmaul Slag Mines HEROIC_ |only if havequest(37228) or havequest(37229) or havequest(37142)
_Everbloom HEROIC_ |only if havequest(37240) or havequest(37241)
_Grimrail Depot HEROIC_ |only if havequest(37242) or havequest(37243)
_Iron Docks HEROIC_ |only if havequest(37230) or havequest(37231)
_Shadowmoon Burial Grounds HEROIC_ |only if havequest(37238) or havequest(37239)
_Skyreach HEROIC_ |only if havequest(37234) or havequest(37235)
_Upper Blackrock Spire HEROIC_ |only if havequest(37236)or havequest(37237)
Click here to queue for a dungeon |confirm
step
Select the dungeon you got into:
You don't have any dungeon quests! |only if default
_Everbloom_ |only if havequest(37227) |next "everbloom" |confirm
_Grimrail Depot_ |only if havequest(37209) |next "grimrail" |confirm
_Shadowmoon Burial Grounds_ |only if havequest(37245) |next "shadowmoon" |confirm
_Upper Blackrock Spire_ |only if havequest(37244) |next "upperbrs" |confirm
_Auchindoun HEROIC_ |only if havequest(37233) or havequest(37232) |next "auchheroic" |confirm
_Bloodmaul Slag Mines HEROIC_ |only if havequest(37228) or havequest(37229) or havequest(37142) |next "slagminesheroic" |confirm
_Everbloom HEROIC_ |only if havequest(37240) or havequest(37241) |next "everbloomheroic" |confirm
_Grimrail Depot HEROIC_ |only if havequest(37242) or havequest(37243) |next "depotheroic" |confirm
_Iron Docks HEROIC_ |only if havequest(37230) or havequest(37231) |next "irondocksheroic" |confirm
_Shadowmoon Burial Grounds HEROIC_ |only if havequest(37238) or havequest(37239) |next "sbgheroic" |confirm
_Skyreach HEROIC_ |only if havequest(37234) or havequest(37235) |next "skyreachheroic" |confirm
_Upper Blackrock Spire HEROIC_ |only if havequest(37236) or havequest(37237) |next "ubrsheroic" |confirm
step
label "everbloom"
Fight through the dungeon
click Rustling Peachick Nest##237483
Tiny Peachick Hatchling |q Put a Bird on It##37227/1 |goto The Everbloom/1 55.5,22.2
step
Complete the dungeon
kill Yalnu##83846 |q Put a Bird on It##37227/2
step
#include "H_Garrison_MediumBuilding"
talk Mylune##88025
turnin Put a Bird on It##37227 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "grimrail"
Fight through the dungeon
click Iron Autocannon##237484
Iron Autocannon |q Cold Steel Part II##37209/1 |goto Grimrail Depot/4 67.4,47.5
step
Complete the dungeon
kill 1 Skylord Tovra##80005 |q Cold Steel Part II##37209/2 |goto Grimrail Depot/4 15.3,51.7
step
#include "H_Garrison_MediumBuilding"
talk John J. Keeshan##88026
turnin Cold Steel Part II##37209 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
label "shadowmoon"
Fight through the dungeon
Jump down the hole |goto Shadowmoon Burial Grounds/1 52.5,77.6 < 10
click Void-Gate Key##237482
Void-Gate Key |q Whispers in the Darkness##37245/1 |goto Shadowmoon Burial Grounds/1 38.0,50.8
step
Complete the dungeon
kill Ner'zhul##76407 |q Whispers in the Darkness##37245/2
step
#include "H_Garrison_MediumBuilding"
talk Impsy##88027
turnin Whispers in the Darkness##37245 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "upperbrs"
Fight through the dungeon
click Bottled Flamefly##237481
Spire Flamefly |q Flamefly Trap##37244/1 |goto Upper Blackrock Spire 2/1 36.0,16.7
step
Complete the dungeon
kill Warlord Zaela##77120 |q Flamefly Trap##37244/2
step
#include "H_Garrison_MediumBuilding"
talk Oralius##88024
turnin Flamefly Trap##37244 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "auchheroic"
click Soulsever Blade##237464
Soulsever Blade |q Soulcarver Voss##37232/1 |goto Auchindoun/1 53.5,63.1
step
Fight through the dungeon
click Soulweave Vessel##237465
Soulweave Vessel |q Vessel of Virtue##37233/1 |goto Auchindoun/1 24.1,32.5
step
Complete the dungeon
kill Teron'gor##77734 |q Soulcarver Voss##37232/2
step
Complete the dungeon
kill Teron'gor##77734 |q Vessel of Virtue##37233/2
step
#include "H_Garrison_MediumBuilding"
talk Lilian Voss##87996
turnin Soulcarver Voss##37232 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
#include "H_Garrison_MediumBuilding"
talk Leonid Barthalomew the Revered##87997
turnin Vessel of Virtue##37233 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "slagminesheroic"
kill 1 Bloodmaul Enforcer##84978+
kill 1 Bloodmaul Slaver##75191+
Giant Ogre Head |q A Fruitful Proposition##37228/1 |goto Bloodmaul Slag Mines 45,55
step
Fight through the dungeon
click Olaf's Shield##237461
Olaf's Shield |q Like A Dwarf In A Mine##37229/1 |goto Bloodmaul Slag Mines/1 45.6,56.5
step
Fight through the dungeon
click Ogre Family Tree##237477
Ogre Family Tree |q Ogre Ancestry##37142/1 |goto Bloodmaul Slag Mines/1 52.0,58.7
step
Complete the dungeon
kill Gug'rokk##74790 |q A Fruitful Proposition##37228/2
step
Complete the dungeon
kill Gug'rokk##74790 |q Like A Dwarf In A Mine##37229/2
step
Complete the dungeon
kill Gug'rokk##74790 |q Ogre Ancestry##37142/2
step
#include "H_Garrison_MediumBuilding"
talk Cro Threadstrong##87991
turnin A Fruitful Proposition##37228 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
#include "H_Garrison_MediumBuilding"
talk Olaf##87992
turnin Like A Dwarf In A Mine##37229 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
#include "H_Garrison_MediumBuilding"
talk talk 88013
turnin Ogre Ancestry##37142 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "everbloomheroic"
Fight through the dungeon
click Strangely-Glowing Frond##237472
Strangely-Glowing Frond |q The Leaf-Reader##37240/1 |goto The Everbloom/1 64.3,20.4
step
click Overgrown Artifact##237473
Overgrown Artifact |q Lessons of the Past##37241/1 |goto The Everbloom/1 60.9,66.5
step
Complete the dungeon
kill Yalnu##83846 |q The Leaf-Reader##37240/2
step
Complete the dungeon
kill Yalnu##83846 |q Lessons of the Past##37241/2
step
#include "H_Garrison_MediumBuilding"
talk Zen'kiki##88004
turnin The Leaf-Reader##37240 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
#include "H_Garrison_MediumBuilding"
talk Lorewalker Cho##88005
turnin Lessons of the Past##37241 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "depotheroic"
Fight through the dungeon
click Huge Crate of Weapons##237474
Huge Crate of Weapons |q Learning Is Painful##37242/1 |goto Grimrail Depot/1 54.7,38.9
step
Fight through the dungeon
click Iron Limbcleaver##237475
Iron Limbcleaver |q An Axe to Grind##37243/1 |goto Grimrail Depot/3 53.8,52.5
step
Complete the dungeon
kill Skylord Tovra##80005 |q Learning Is Painful##37242/2 |goto Grimrail Depot/4 15.3,51.7
step
Complete the dungeon
kill Skylord Tovra##80005 |q An Axe to Grind##37243/2 |goto Grimrail Depot/4 15.3,51.7
step
#include "H_Garrison_MediumBuilding"
talk Lonika Stillblade##88006
turnin Learning Is Painful##37242 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
#include "H_Garrison_MediumBuilding"
talk Gamon##88007
turnin An Axe to Grind##37243 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "irondocksheroic"
Fight through the dungeon
click Strange Brass Compass##237463
Strange Brass Compass |q The Search Continues##37231/1 |goto Iron Docks/1 47.2,26.3
step
Fight through the dungeon
click Horribly Acidic Solution##237462
Horribly Acidic Solution |q Bloody Expensive##37230/1 |goto Iron Docks/1 50.2,52.2
step
Complete the dungeon
kill Skulloc##83612 |q The Search Continues##37231/2
step
Complete the dungeon
kill Skulloc##83612 |q Bloody Expensive##37230/2
step
#include "H_Garrison_MediumBuilding"
talk Fleet Master Seahorn##87995
turnin The Search Continues##37231 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
#include "H_Garrison_MediumBuilding"
talk Moroes##87994
turnin Bloody Expensive##37230 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "sbgheroic"
Fight through the dungeon
click Dark Parchment##237470
Dark Parchment |q Secrets of Soulbinding##37238/1 |goto Shadowmoon Burial Grounds/1 30.0,42.9
step
Fight through the dungeon
click Silver-Lined Arrow##237471
Silver-Lined Arrow |q Fate of the Fallen##37239/1 |goto Shadowmoon Burial Grounds/1 83.6,80.6
step
Complete the dungeon
kill Ner'zhul##76407 |q Secrets of Soulbinding##37238/2
step
Complete the dungeon
kill Ner'zhul##76407 |q Fate of the Fallen##37239/2
step
#include "H_Garrison_MediumBuilding"
talk Highlord Darion Mograine##88002
turnin Secrets of Soulbinding##37238 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
#include "H_Garrison_MediumBuilding"
talk Cowled Ranger##88003
turnin Fate of the Fallen##37239 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "skyreachheroic"
Fight through the dungeon
click Pristine Plumage##237467
Pristine Plumage |q A Plea to the Sky##37235/1 |goto Skyreach/1 63.8,24.9
step
Fight through the dungeon
click Sun Crystal##237466
Sun Crystal |q The Dark Within##37234/1 |goto Skyreach/1 52.9,48.6
step
Complete the dungeon
kill High Sage Viryx##76266 |q A Plea to the Sky##37235/2 |goto Skyreach/2 48.8,33.3
step
Complete the dungeon
kill High Sage Viryx##76266 |q The Dark Within##37234/2 |goto Skyreach/2 48.8,33.3
step
#include "H_Garrison_MediumBuilding"
talk Skylord Omnuron##87999
turnin A Plea to the Sky##37235 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
#include "H_Garrison_MediumBuilding"
talk Sunwalker Dezco##87998
turnin The Dark Within##37234 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
step
label "ubrsheroic"
Fight through the dungeon
click Finkle's Improved Skinner##237468
Finkle's Immproved Skinner |q Like Father, Like Son##37236/1 |goto Upper Blackrock Spire 2/2 30.3,38.3
step
Fight through the dungeon
click Shed Proto-Dragon Claw##237469
Shed Proto-Dragon Claw |q A Hero's Quest is Never Complete##37237/1 |goto Upper Blackrock Spire 2/3 48.5,19.52
step
Complete the dungeon
kill Warlord Zaela##77120 |q Like Father, Like Son##37236/2
step
Complete the dungeon
kill Warlord Zaela##77120 |q A Hero's Quest is Never Complete##37237/2
step
#include "H_Garrison_MediumBuilding"
talk Finkle Einhorn##88000
turnin Like Father, Like Son##37236 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
step
#include "H_Garrison_MediumBuilding"
talk Maximillian of Northshire##88001
turnin A Hero's Quest is Never Complete##37237 |tip Turn in NPCs can sometimes be found behind the tavern or downstairs.
|next "queuemenu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Warlords of Draenor\\Garrison Dailies",[[
description This guide will take you through the Garrison's War Planning Map dailies.
step
label "menu"
#include "H_Garrison_Warplans"
Accept the PvE, non-group quest |tip It is usually the left option.
accept Assault on Darktide Roost##36692 |or |next "darktideroost"
accept Assault on Socrethar's Rise##36691 |or |next "socretharsrise"
accept Assault on the Iron Siegeworks##36696 |or |next "ironsiegeworks"
accept Assault on Lost Veil Anzu##36690 |or |next "lostveil"
accept Assault on Pillars of Fate##36689 |or |next "pillarsoffate"
accept Assault on Shattrath Harbor##36667 |or |next "shattharbor"
accept Assault on Skettis##36688 |or |next "skettis"
accept Assault on Stonefury Cliffs##36669 |or |next "stonefurycliffs"
accept Assault on Magnarok##36697 |or |next "magnarok"
accept Assault on the Broken Precipice##36694 |or |next "brokenprecipice"
accept Assault on the Everbloom Wilds##36695 |or |next "everbloomwilds"
accept Assault on Mok'gol Watchpost##36693 |or |next "mokgolwatchpost"
|confirm
step
label "darktideroost"
Perform the following objectives to complete the Assault on Darktide Roost:
kill Darkwing Adolescent##85357+, Darkwing Matron##75280+, Darktide Rylakinator-3000##78190+, Darktide Engineer##78999+, Darktide Guardian##78168+, Injured Darkwing Glider##78183+, Darktide Pilferer##78148+
click Rylak Egg##234587
Assault Darktide Roost |q Assault on Darktide Roost##36692/1 |goto Shadowmoon Valley D 59.1,86.0 |tip You can see the progress bar in your quest tracker.
step
#include "H_Garrison_ShadowHunterUkambe"
turnin Assault on Darktide Roost##36692
|next "end"
step
label "socretharsrise"
Perform the following objectives to complete the Assault on Socrethar's Rise:
kill Sargerei Acolyte##85168+, Sargerei Darkblade##84945+, Sargerei Initiate##81541+, Sargerei Binder##81542+
click Demonic Portal##233102
Assault Socrethar's Rise |q Assault on Socrethar's Rise##36691/1 |goto Shadowmoon Valley D/0 46.9,75.1 |tip You can see the progress bar in your quest tracker.
step
#include "H_Garrison_ShadowHunterUkambe"
turnin Assault on Socrethar's Rise##36691
|next "end"
step
label "ironsiegeworks"
Perform the following objectives to complete the Assault on the Iron Siegeworks:
kill Grom'kar Deadeye##85973+, Grom'kar Enforcer##77940+, Grom'kar Pulverizer##78210+, Grom'kar Warforger##77945+, Grom'kar Footsoldier##85997+
click Keg of Impaler Ale##6477
click Secret Warplans##6477
Assault the Iron Siegeworks |q Assault on the Iron Siegeworks##36696/1 |goto Frostfire Ridge/0 88.0,50.8 |tip You can see the progress bar in your quest tracker.
step
#include "H_Garrison_ShadowHunterUkambe"
turnin Assault on the Iron Siegeworks##36696
|next "end"
step
label "lostveil"
Perform the following objectives to complete the Assault on Lost Veil Anzu
kill Befuddled Relic-Seeker##86205+, Highmaul Skullcrusher##89127+
Assault Lost Veil Anzu |q Assault on Lost Veil Anzu##36690 |goto Spires of Arak 73.3,45.4 |tip You can see the progress bar in your quest tracker.
step
#include "H_Garrison_ShadowHunterUkambe"
turnin Assault on Lost Veil Anzu##36690
|next "end"
step
label "pillarsoffate"
Fly to _Akeeta's Hovel_ |goto Spires of Arak/0 65.7,17.5 < 10
_Follow the road southeast_ to reach the Pillars of Fate
Perform the following objectives to complete the Assault on the Pillars of Fate
kill Shadowmoon Warrior##85068+, Shadowmoon Defiler##85075+, Shadowmoon Voidtwister##85073+, Void Alpha##85082+, Shadowmoon Peon##85204+
click Profaned Tombstone##85859
Assault the Pillars of Fate |q Assault on Pillars of Fate##36689/1 |goto Spires of Arak/0 72.5,29.5 |tip You can see the progress bar in your quest tracker.
step
#include "H_Garrison_ShadowHunterUkambe"
turnin Assault on Pillars of Fate##36689
|next "end"
step
label "shattharbor"
Perform the following objectives to complete the Assault on Shattrath Harbor
kill Gorebound Insurgent##87337+, Shadowbourne Felcaster##84871+, Sargerei Summoner##84094+, Sargerei Soul-Twister##83004+
Assault the Shattrath Harbor |q Assault on Shattrath Harbor##36667/1 |goto Talador 45.0,27.0 |tip You can see the progress bar in your quest tracker.
step
#include "H_Garrison_ShadowHunterUkambe"
turnin Assault on Shattrath Harbor##36667
|next "end"
step
label "skettis"
Fly to _Akeeta's Hovel_ |goto Spires of Arak/0 65.7,17.5 < 10
_Follow the road north_ to reach Skettis
Perform the following objectives to complete the Assault on Skettis
kill Skyreach Labormaster##85542+, Flighted Storm-Spinner##89085+, Skyreach Dreadtalon##84303+, Stalwart Warden##83988+, Skyreach Tempest-Keeper##84467+
click Arakkoa Outcast##85813
Assault Skettis |q Assault on Skettis##36688/1 |goto Spires of Arak/0 58.9,11.3 |tip You can see the progress bar in your quest tracker.
step
#include "H_Garrison_ShadowHunterUkambe"
turnin Assault on Skettis##36688
|next "end"
step
label "stonefurycliffs"
Perform the following objectives to complete the Assault on Stonefury Cliffs
kill Bloodmaul Brute##77991+, Bloodmaul Magma Shaper##77992+, Bloodmaul Geomancer##78578+, Bloodmaul Bonecrusher##77995+, Lesser Iceling##88445+
click Draenei Slave##77980
Assault Stonefury Cliffs |q Assault on Stonefury Cliffs##36669/1 |goto Frostfire Ridge 44.8,20.5 |tip You can see the progress bar in your quest tracker.
step
#include "H_Garrison_ShadowHunterUkambe"
turnin Assault on Stonefury Cliffs##36669
|next "end"
step
label "magnarok"
Perform the following objectives to complete the Assault on Magnarok
kill Frostfire Cragstomper##87333+, Vicious Acidmaw##76905+, Burning Slagmaw##72348+, Slagmaw Nibbler##87360+
Click Acidmaw Eggs##87383
click Captive Blazing Fury##87572
Assault Magnarok |q Assault on Magnarok##36697/1 |goto Frostfire Ridge/0 70.0,30.3 |tip You can see the progress bar in your quest tracker.
step
#include "H_Garrison_ShadowHunterUkambe"
turnin Assault on Magnarok##36697
|next "end"
step
label "brokenprecipice"
Follow the path up |goto Nagrand D/0 42.2,27.4 < 10
Perform the following objectives to complete the Assault on the Broken Precipice:
kill Arcanist Earthsmasher##83577+, Broken Drudge##83831+, Slave-Grinder##88187+, Sledgebasher##83575+
click Unearthed Reliquary##6478
Exploit the conflict at the Broken Precipice |q Assault on the Broken Precipice##36694/1 |goto Nagrand D/0 37.4,23.3 |tip You can see the progress bar in your quest tracker.
step
#include "H_Garrison_ShadowHunterUkambe"
turnin Assault on the Broken Precipice##36694
|next "end"
step
label "everbloomwilds"
Perform the following objectives to complete the Assault on Everbloom Wilds:
kill Everbloom Waterspeaker##88261+, Wild Mandragora##86260+, Everbloom Wasp##86264+, Brine Lasher##86267+, Everbloom Shaper##89019+
click Blighted Axebeak##88592
Assault the Botani forces in the Everbloom Wilds |q Assault on the Everbloom Wilds##36695/1 |goto Gorgrond 61.8,37.7 |tip You can see the progress bar in your quest tracker.
step
#include "H_Garrison_ShadowHunterUkambe"
turnin Assault on the Everbloom Wilds##36695
|next "end"
step
label "mokgolwatchpost"
Perform the following objectives to complete the Assault on Mok'gol Watchpost:
kill Mok'gol Brutalizer##72571+, Mok'gol Grunt##86657+, Nagrand Savager##86656+, Mok'gol Wolfsong##86659+
Click Warsong Totem##87264
Click Stolen Good##86947
Assault the Warsong force |q Assault on Mok'gol Watchpost##36693/1 |goto Nagrand D/0 43,37 |tip You can see the progress bar in your quest tracker.
step
#include "H_Garrison_ShadowHunterUkambe"
turnin Assault on Mok'gol Watchpost##36693
|next "end"
step
label "end"
You have reached the end of this guide
Click here to return to the beginning |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Warlords of Draenor\\Fishing Dailies",[[
description This guide will take you through the Fishing dailies.
step
label "menu"
talk Mak'jin##79892
accept Fat Sleeper##35072 |or |goto Frostwall/0 38.6,72.5
accept Fire Ammonite##35066 |or |goto Frostwall/0 38.6,72.5
accept Blind Lake Sturgeon##35073 |or |goto Frostwall/0 38.6,72.5
accept Abyssal Gulper Eel##35075 |or |goto Frostwall/0 38.6,72.5
accept Blackwater Whiptail##35074 |or |goto Frostwall/0 38.6,72.5
accept Jawless Skulker##35071 |or |goto Frostwall/0 38.6,72.5
step
Fish in the water here |cast Fishing##131474 |goto Nagrand D 72.5,26.5
Use Fat Sleeper bait if you have any |use Fat Sleeper Bait##110289
collect Small Fat Sleeper##111651 |n
use Small Fat Sleeper##111651 |tip These must be used in stacks of 20.
collect Fat Sleeper##111668 |n
use Fat Sleeper##111668 |tip These must be used in stacks of 10.
collect Enormous Fat Sleeper##111675 |n
use Enormous Fat Sleeper##111675 |tip These must be used in stacks of 5.
Fat Sleeper Egg |q Fat Sleeper##35072/1
|only if havequest(35072)
step
talk Mak'jin##79892
turnin Fat Sleeper##35072 |goto Frostwall/0 38.5,72.2
|next "end"
|only if havequest(35072)
step
Fish in the lava here |cast Fishing##131474 |goto Frostfire Ridge/0 51.6,59.0
Use Fire Ammonite bait if you have any |use Fire Ammonite Bait##110291
collect Small Fire Ammonite##111656 |n
use Small Fire Ammonite##111656 |tip These must be used in stacks of 20.
collect Fire Ammonite##111666 |n
use Fire Ammonite##111666 |tip These must be used in stacks of 10.
collect Enormous Fire Ammonite##111673 |n
use Enormous Fire Ammonite##111673 |tip These must be used in stacks of 5.
Fire Ammonite Egg |q Fire Ammonite##35066/1
|only if havequest(35066)
step
talk Mak'jin##79892
turnin Fire Ammonite##35066 |goto Frostwall/0 38.5,72.2
|next "end"
|only if havequest(35066)
step
Fish in the water here |cast Fishing##131474 |goto Shadowmoon Valley D 48.5,34.1
Use Blind Lake Sturgeon Bait if you have any |use Blind Lake Sturgeon Bait##110290
collect Small Blind Lake Sturgeon##111652 |n
use Small Blind Lake Sturgeon##111652 |tip These must be used in stacks of 20.
collect Blind Lake Sturgeon##111667 |n
use Blind Lake Sturgeon##111667 |tip These must be used in stacks of 10.
collect Enormous Blind Lake Sturgeon##111674 |n
use Enormous Blind Lake Sturgeon##111674 |tip These must be used in stacks of 5.
Blind Lake Sturgeon Egg |q Blind Lake Sturgeon##35073/1
|only if havequest(35073)
step
talk Mak'jin##79892
turnin Blind Lake Sturgeon##35073 |goto Frostwall/0 38.5,72.2
|next "end"
|only if havequest(35073)
step
Fish in the water here  |cast Fishing##131474 |goto Spires of Arak 52.5,8.7
Use any Abyssal Gulper Eel Bait if you have any |use Abyssal Gulper Eel Bait####110293
collect Small Abyssal Gulper Eel##111659 |n
use Small Abyssal Gulper Eel##111659 |tip These can only be used in stacks of 20.
collect Abyssal Gulper Eel##111664 |n
use Abyssal Gulper Eel##111664 |tip These can only be used in stacks of 10.
collect Enormous Abyssal Gulper Eel##111671 |n
use Enormous Abyssal Gulper Eel##111671 |tip These can only be used in stacks of 5.
Abyssal Gulper Eel Egg |q Abyssal Gulper Eel##35075/1
|only if havequest(35075)
step
talk Mak'jin##79892
turnin Abyssal Gulper Eel##35075 |goto Frostwall/0 38.5,72.2
|next "end"
|only if havequest(35075)
step
Fish in the water here |cast Fishing##131474 |goto Talador 63.0,34.6
Use any Blackwater Whiptail Bait if you have any |use Blackwater Whiptail Bait##110294
collect Small Blackwater Whiptail##111662 |n
use Small Blackwater Whiptail##111662 |tip These can only be used in stacks of 20.
collect Blackwater Whiptail##111663 |n
use Blackwater Whiptail##111663 |tip These can only be used in stacks of 10.
collect Enormous Blackwater Whiptail##111670 |n
use Enormous Blackwater Whiptail##111670 |tip These can only be used in stacks of 5.
Blackwater Whiptail Egg |q Blackwater Whiptail##35074/1
|only if havequest(35074)
step
talk Mak'jin##79892
turnin Blackwater Whiptail##35074 |goto Frostwall/0 38.5,72.2
|next "end"
|only if havequest(35074)
step
Fish in the water here |goto Gorgrond 43.5,81.0 |cast Fishing##131474
Use any Jawless Skulker Bait you may have while fishing |use Jawless Skulker Bait##110274
collect Small Jawless Skulker##111650 |n
use Small Jawless Skulker##111650 |tip These can only be used in stacks of 20.
collect Jawless Skulker##111669 |n
use Jawless Skulker##111669 |tip These can only be used in stacks of 10.
collect Enormous Jawless Skulker##111676 |n
use Enormous Jawless Skulker##111676 |tip These can only be used in stacks of 5.
Jawless Skulker Egg |q Jawless Skulker##35071/1
|only if havequest(35071)
step
talk Mak'jin##79892
turnin Jawless Skulker##35071 |goto Frostwall/0 38.5,72.2
|next "end"
|only if havequest(35071)
step
label "end"
You have reached the end of the guide
Click here to return to the beginning |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Warlords of Draenor\\Battle Pets Dailies",[[
description This guide will take you through the Battle Pets dailies.
step
stickystart "shortcut"
label "start"
The Battle Pet dailies are _account wide_ and can only be completed on your account by _one character per day_
_Click_ to battle Cymre Brightblade |confirm |next "cymre"
_Click_ to battle Ashlei |confirm |next "ashle"
_Click_ to battle Vesharr |confirm |next "vesha"
_Click_ to battle Gargra |confirm |next "gargr"
_Click_ to battle Taralune |confirm |next "teral"
_Click_ to battle Tarr the Terrible |confirm |next "tarrt"
The Garrison Battle Pet dailies can be completed once per day _by each character_ you have that _has the Menagerie unlocked_
_Click_ to complete your Garrison daily |confirm |next "garris"
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
label "garris"
talk Serr'ah##85418
accept Scrappin'##36662 |or |only if hasbuilding(42) |goto Frostwall 33.0,40.2 |tip Defeat the challenger in pet combat!
accept Mastering the Menagerie##37645 |or |only if hasbuilding(168) |goto Frostwall 33.0,40.2 |tip Defeat the challenger in pet combat!
step
talk Serr'ah##85418
turnin Scrappin'##36662 |only if havequest(36483) |goto Frostwall 33.0,40.2
turnin Mastering the Menagerie##37645 |only if havequest(37645) |goto Frostwall 33.0,40.2
|next "start"
step "shortcut"
_Click here_ to return to the start at any time |next "start"
]])
