local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHWOD") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Warlords of Draenor 90-100\\Tanaan Jungle (90-90)",[[
next Zygor's Horde Leveling Guides\\Warlords of Draenor 90-100\\Frostfire Ridge (90-92)
image TanaanJungle
condition suggested !exclusive
startlevel 90
step
accept The Dark Portal##34398 |goto Orgrimmar 49.9,77.3
step
talk Archmage Khadgar##78558
'Tell him _"FOR AZEROTH!"_
'Speak with Archmage Khadgar |q The Dark Portal##34398/1 |goto Blasted Lands 55.0,50.3
step
talk Archmage Khadgar##78558
turnin The Dark Portal##34398 | goto Assault on the Dark Portal 54.8,48.3
accept Azeroth's Last Stand##35933 |goto Assault on the Dark Portal 54.7,48.3
step
from Iron Horde Grunt##78883+, Shadowmoon Ritualist##81711+
get Iron Horde Missive##113579 |q Azeroth's Last Stand##35933/1 |goto 52.50,48.14
step
'Click the _Quest Complete_ box in the top right corner of your screen:
turnin Azeroth's Last Stand##35933
accept Onslaught's End##34392
step
'_Enter_ the doorway |goto Assault on the Dark Portal 52.2,41.9 < 10
click Mark of the Shadowmoon## |tip It looks like a huge stone with a blue glowing symbol on it, sitting in a metal base.
'Disable the Northern Fel Spire |q Onslaught's End##34392/1 |goto 51.03,41.99
step
'_Leave_ the doorway |goto Assault on the Dark Portal 52.2,41.9 < 10
'_Enter_ the doorway |goto Assault on the Dark Portal 52.2,54.6 < 10
click Mark of the Bleeding Hollow## |tip It looks like a huge stone with a orange glowing symbol on it, sitting in a metal base.
'Disable the Southern Fel Spire |q Onslaught's End##34392/2 |goto 51.12,54.58
step
'_Leave_ the doorway |goto Assault on the Dark Portal 52.2,54.6 < 10
'_Go up_ the stairs |goto Assault on the Dark Portal 52.9,48.3 < 20
talk Archmage Khadgar##78558 |tip He's at the top of the stone stairs.
turnin Onslaught's End##34392 |goto 54.72,48.27
accept The Portal's Power##34393 |goto 54.72,48.27
step
'Enter the Soul Engine beneath the Dark Portal |q The Portal's Power##34393/1 |goto 54.91,46.76 |tip It's a doorway on the side of the large stairs. If you're at the top of the stairs, jump down.
step
click Mark of the Burning Blade## |tip It's a large stone with a giant sword stuck in it.
'Destroy the Mark of the Burning Blade |q The Portal's Power##34393/2 |goto 56.01,46.32
step
click Mark of the Shattered Hand## |tip It's a large stone with a red rune painted on the front of it.
'Destroy the Mark of the Shattered Hand |q The Portal's Power##34393/3 |goto 57.26,48.18
step
click Mark of the Blackrock## |tip It's a large stone with a rune painted on the front of it.
'Destroy the Mark of the Blackrock |q The Portal's Power##34393/4 |goto Assault on the Dark Portal 56.0,50.1
step
clicknpc Stasis Rune##70406 |tip It looks like a purple and yellow swirling symbol on the ground at the top of the stairs.
'Destroy the Stasis Rune |q The Portal's Power##34393/5 |goto 55.94,48.23
step
'_Leave_ the Soul Engine area |goto Assault on the Dark Portal 54.9,50.8 < 10
'_Go up_ the stairs |goto Assault on the Dark Portal 55.5,51.4 < 10
'_Run up_ the stairs |goto Assault on the Dark Portal 56.9,50.8 < 10
talk Archmage Khadgar##78558
turnin The Portal's Power##34393 |goto 54.72,48.27
accept The Cost of War##34420 |goto 54.72,48.27
step
'_Go down_ the stairs |goto Assault on the Dark Portal 58.9,49.8 < 10
'_Enter_ this doorway |goto Assault on the Dark Portal 61.2,54.5 < 10
talk Archmage Khadgar##78558 |tip He's inside the small house.
turnin The Cost of War##34420 |goto 60.28,56.31
accept Blaze of Glory##34422 |goto 60.28,56.31
step
talk Ashka##81761
accept Vengeance for the Fallen##35241 |goto 62.1,53.1
step
talk Korag##78573
accept Bled Dry##34421 |goto 62.3,53.1
stickystart "bleedingholloworcs"
step
click Bleeding Hollow Cage##1787
'Open the Eastern Cage |q Bled Dry##34421/1 |goto 65.70,54.17
step
' Use the Lucifrium Bead quest item near huts around this area |use Lucifrium Bead##113191
'Burn 3 Bleeding Hollow Huts |q Blaze of Glory##34422/1 |count 3 |goto 66.61,55.67
step
'_Run up_ the hills |goto Assault on the Dark Portal 64.8,55.2 < 10
click Bleeding Hollow Cage##1787
'Open the Southern Cage |q Bled Dry##34421/2 |goto 61.01,62.74
step
' Use the Lucifrium Bead quest item near huts around this area |use Lucifrium Bead##113191
'Burn 6 Bleeding Hollow Huts |q Blaze of Glory##34422/1 |count 6 |goto 61.01,62.74
step
' Use the Lucifrium Bead quest item near huts around this area |use Lucifrium Bead##113191
'Burn 8 Bleeding Hollow Huts |q Blaze of Glory##34422/1 |goto Assault on the Dark Portal 63.8,50.2
step "bleedingholloworcs"
from Bleeding Hollow Hatchet##78510+, Bleeding Hollow Savage##78507+
kill 6 Bleeding Hollow orcs |q Vengeance for the Fallen##35241/1 |goto 61.47,61.66
step
'_Follow_ the road |goto Assault on the Dark Portal 65.0,59.5 < 20
talk Archmage Khadgar##78559
turnin Blaze of Glory##34422 |goto 71.5,62.3
turnin Bled Dry##34421 |goto 71.5,62.3
step
talk Thrall##78553
turnin Vengeance for the Fallen##35241 |goto 72.0,62.1
step
talk Archmage Khadgar##78559
accept Altar Altercation##34423 |goto 71.5,62.3
step
talk Ariok##78556
'Tell him _"Khadgar has asked us to go distract the Eye of Kilrogg."_
'Speak with Ariok |q Altar Altercation##34423/1 |goto 71.98,62.16
step
'_Go down_ the path |goto 73.9,58.9 < 20
'Escort Ariok to the Bleeding Altar |q Altar Altercation##34423/2 | goto 75.9,55.7
step
clicknpc Blood Ritual Orb##83670 |tip It looks like a big floating red ball.
'Destroy the Blood Ritual Orb |q Altar Altercation##34423/3 |count 1 |goto Assault on the Dark Portal 76.7,53.9
step
clicknpc Blood Ritual Orb##83670 |tip It looks like a big floating red ball.
'Destroy the Blood Ritual Orb |q Altar Altercation##34423/3 |count 2 |goto Assault on the Dark Portal 78.2,53.5
step
'_Follow the path_ around the temple |goto Assault on the Dark Portal 76.4,50.4 < 20
'_Go up_ the stairs |goto Assault on the Dark Portal 78.4,49.9 < 10
clicknpc Blood Ritual Orb##83670 |tip It looks like a big floating red ball.
'Destroy the Blood Ritual Orb |q Altar Altercation##34423/3 |goto 78.8,53.3
step
'_Go down_ the stairs |goto 78.6,51.7 < 10
'_Follow_ the path |goto 76.2,51.1 < 10
'_Cross_ the bridge |goto 72.3,46.3 < 20
'Find Khadgar on the Tar'thog Bridge |q Altar Altercation##34423/4 |goto 71.9,41.0
step
talk Archmage Khadgar##78558
turnin Altar Altercation##34423 |goto 72.0,40.6
accept The Kargathar Proving Grounds##34425 |goto 71.93,40.37
step
'Follow Khadgar |q The Kargathar Proving Grounds##34425/1 |goto 73.0,38.1
step
talk Archmage Khadgar##78560
turnin The Kargathar Proving Grounds##34425 |goto 73.0,38.1
accept A Potential Ally##34427 |goto 73.0,38.1
step
'Use the _Frostflurry Focus_ quest item next to the fire |use Frostflurry Focus##110799
'Free Farseer Drek'Thar |q A Potential Ally##34427/1 |goto 69.0,33.8
step
talk Farseer Drek'Thar##78996
turnin A Potential Ally##34427 |goto 73.1,38.9 |tip You may have to wait for him to run back to camp.
step
talk Archmage Khadgar##78560
accept Kill Your Hundred##34429 |goto 73.1,38.1
step
'Enter the Arena |q Kill Your Hundred##34429/1 |goto 73.4,28.0
step
from Shattered Hand Brawler##16593+
'Kill #100# Combatants |q Kill Your Hundred##34429/2 |goto 73.5,28.1
step
'_Run out_ of the arena |goto Assault on the Dark Portal 73.6,23.4 < 10
'Escape Kargath's Arena |q Kill Your Hundred##34429/3 |goto 65.9,20.6
step
talk Archmage Khadgar##78561
turnin Kill Your Hundred##34429 |goto Assault on the Dark Portal/1 81.3,50.2
step
talk Thrall##78553
accept The Shadowmoon Clan##34739 | goto Assault on the Dark Portal/1 81.5,44.8
step
talk Luuka##79661
accept Masters of Shadow##34737 |goto Assault on the Dark Portal/1 82.8,44.4
stickystart "st1"
step
'_Enter_ the doorway |goto Assault on the Dark Portal/1 79.8,40.9 < 10
'_Go around_ the corner |goto 76.0,45.2 < 10
'_Go up_ the flight of stairs |goto Assault on the Dark Portal/1 63.0,51.5 < 10
'Go up the _2nd flight of stairs_ |goto Assault on the Dark Portal/1 54.3,60.9 < 10
kill Ungra##79583 |q Masters of Shadow##34737/1 |goto Assault on the Dark Portal/1 43.7,77.8
step "shadowmoonclan"
from Shadowmoon Voidaxe##79589+, Shadowmoon Ritualist##79590+
'Kill #10# Shadowmoon Clan |q The Shadowmoon Clan##34739/1 |goto 59.19,48.59
step
'_Enter_ the hallway |goto Assault on the Dark Portal/1 46.4,35.4 < 10
kill Taskmaster Gurran##79585 |q Masters of Shadow##34737/2 |goto 52.23,24.73
step
'_Jump down_ the hole in the floor |goto Assault on the Dark Portal/1 54.4,22.9 < 5
'Find Ankova the Fallen |q Masters of Shadow##34737/3 |goto 45.24,15.94
step
talk Yrel##78994
accept Yrel##34740 |goto 45.11,15.82
step
'_Follow_ the path |goto 52.8,16.9 < 10
'_Go around_ the corner |goto 60.3,30.7 < 10
'Escort Yrel to Safety |q Yrel##34740/1 |goto Assault on the Dark Portal/1 57.9,38.7
step
'_Go up_ the stairs |goto 54.9,40.7 < 10
talk Lady Liadrin##79675
turnin Masters of Shadow##34737 |goto 50.2,49.2
step
talk Yrel##78994
turnin Yrel##34740 |goto 50.8,48.9
step
talk Olin Umberhide##79315
turnin The Shadowmoon Clan##34739 |goto 51.5,47.5
step
talk Lady Liadrin##79675
accept Keli'dan the Breaker##34741 |goto 50.2,49.2
step
kill Keli'dan the Breaker##79702 |q Keli'dan the Breaker##34741/1 |goto Assault on the Dark Portal/1 34.9,50.4
step
talk Archmage Khadgar##78562
turnin Keli'dan the Breaker##34741 |goto Assault on the Dark Portal/0 49.5,14.4
step
talk Thrall##78553
accept Prepare for Battle##35005 |goto 50.1,13.3
step
click Iron Horde Weapon Rack## |tip Weapon racks are large wooden racks with weapons on them.
click Iron Horde Weapon## |tip These can be gathered around the area or looting from corpses of the fallen.
from Blackrock Forgeworker##81367+, Blackrock Slaghauler##81357+
get 30 Blackrock Weapon##112337 |q Prepare for Battle##35005/1 |goto 42.92,15.94
step
talk Thrall##78553
turnin Prepare for Battle##35005 |goto 50.1,13.3
step
talk Cordana Felsong##78430
accept The Battle of the Forge##34439 |goto 49.5,14.2
step
from Ogron Warcrusher##80775, Blackrock Grunt##80786
'Slay #15# Blackrock Orcs |q The Battle of the Forge##34439/1 |goto Assault on the Dark Portal 44.3,17.8
'Slay #3# Ogron Warcrushers |q The Battle of the Forge##34439/2 |goto Assault on the Dark Portal 44.3,17.8
step
talk Farseer Drek'Thar##78996
turnin The Battle of the Forge##34439 |goto 43.0,26.4
accept Ga'nar of the Frostwolf##34442 |goto 43.0,26.4
step
talk Hansel Heavyhands##78569
accept The Gunpowder Plot##34987 |goto 44.1,29.6
step
talk Thaelin Darkanvil##78568
accept The Shadow of the Worldbreaker##34958 |goto 44.1,29.7
step
from Blackrock Laborer##81063, Blackrock Machinist##80468
get Worldbreaker Schematics |q The Shadow of the Worldbreaker##34958/1 |goto Assault on the Dark Portal 43.0,35.7
step
'_Enter_ the building |goto Assault on the Dark Portal 45.6,31.7 < 10
click Blackrock Powder Keg## |tip It looks like a brown wooden barrel with a metal lid on it.
get Blackrock Powder Keg##112323 |q The Gunpowder Plot##34987/1 |goto 46.9,32.1
step
'_Leave_ the building |goto Assault on the Dark Portal 45.6,31.7 < 10
click Makeshift Plunger## |tip It looks like a small box with a wooden handle on it on the ground.
'Depress the Makeshift Plunger |q The Gunpowder Plot##34987/2 |goto 44.1,29.6
step
talk Hansel Heavyhands##78569
turnin The Gunpowder Plot##34987 |goto 44.1,29.7
step
talk Thaelin Darkanvil##78568
turnin The Shadow of the Worldbreaker##34958 |goto 44.1,29.6
step
talk Ga'nar##79917
turnin Ga'nar of the Frostwolf##34442 |goto 41.9,41.7
accept Polishing the Iron Throne##34925 |goto 41.9,41.7
step
'_Enter_ the building and go down the stairs |goto 44.1,38.0 < 10
kill Overseer Gotrigg##80574
get Ga'nar's Shackle Key##112243 |q Polishing the Iron Throne##34925/1 |goto 45.6,39.8
step
'_Go up_ the stairs to leave the building |goto 45.1,38.4 < 10
talk Ga'nar##79917
turnin Polishing the Iron Throne##34925 |goto 41.9,41.7
accept The Prodigal Frostwolf##34437 |goto 41.9,41.7
step
talk Farseer Drek'Thar##78996
turnin The Prodigal Frostwolf##34437 |goto 43.0,26.4
step
talk Archmage Khadgar##78563
accept Taking a Trip to the Top of the Tank##35747 |goto 43.1,28.7
step
talk Thaelin Darkanvil##78568
'Tell him _"Yes. I need you to help me operate that enormous tank."_
'Speak with Thaelin |q 35747/1 |goto 44.0,29.7
step
'_Follow_ the path up | goto 38.4,37.4 < 20
kill Gogluk##86039 |q 35747/2 |goto 37.8,48.5
step
'_Go up_ the large chain |goto Assault on the Dark Portal 37.9,47.4 < 10
'Climb the rear chains of the Iron Worldbreaker |q Taking a Trip to the Top of the Tank##35747/3 |goto 40.04,48.25
step
talk Thaelin Darkanvil##80521
turnin Taking a Trip to the Top of the Tank##35747 |goto 40.1,48.4
accept A Taste of Iron##34445 |goto 40.1,48.4
step
click Worldbreaker Side Turret## |tip It's a large cannons on wheels.
'Enter the Worldbreaker Side Turret |q A Taste of Iron##34445/1 |goto 40.2,49.1
step
'Use the abilities on your action bar to:
'Slay #200# Iron Horde |q A Taste of Iron##34445/2
step
click Main Cannon Trigger## |tip It looks like a wooden cylinder with a metal top on the ground.
'Press the Main Cannon Trigger |q 34445/3 |goto 40.3,48.3
step
talk Thaelin Darkanvil##80521
turnin A Taste of Iron##34445 |goto 40.1,48.4
accept The Home Stretch##34446 |goto 40.1,48.4
step
'_Go down_ the chain |goto 37.3,48.4 < 30
'_Follow_ the path towards the docks |goto Assault on the Dark Portal 39.5,55.1 < 20
'Get to the docks |q The Home Stretch##34446/1 |goto 44.4,80.5
step
talk Archmage Khadgar##78563
turnin The Home Stretch##34446 |goto 44.4,80.7
accept The Home of the Frostwolves##33868
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Warlords of Draenor 90-100\\Frostfire Ridge (90-92)",[[
next Zygor's Horde Leveling Guides\\Warlords of Draenor 90-100\\Gorgrond (92-94)
image FrostfireRidge
condition suggested !exclusive
startlevel 90.5
step
'Be sure to save up at least _200 Garrison Resources_ as you progress through the zone.
|confirm |future |q 36567
step
talk Farseer Drek'Thar##76411
turnin The Home of the Frostwolves##33868 |goto Frostfire Ridge 40.8,67.1
accept A Song of Frost and Fire##33815 |goto 40.8,67.1
step
'_Run up_ the path |goto Frostfire Ridge 41.6,66.8 < 20
'Get Introduced to Durotan |q A Song of Frost and Fire##33815/1 |goto 41.8,69.7
step
talk Durotan##78272
turnin A Song of Frost and Fire##33815 |goto 41.8,69.7
accept Of Wolves and Warriors##34402 |goto 41.8,69.7
step
'_Follow Durotan_ up the path |goto 42.9,69.0 < 20
'_Continue_ along the path _through_ the stone doorway |goto Frostfire Ridge 44.7,68.9 < 20
talk Thrall##70859
turnin Of Wolves and Warriors##34402 |goto 48.7,65.3
accept For the Horde!##34364 |goto 48.7,65.3
step
click Horde Banner## |tip It looks like a large wooden T-shape banner illuminated in a yellowish tone with a Horde logo in the center.
'Plant the Horde Banner |q For the Horde!##34364/1 |goto 48.7,64.9
step
talk Gazlowe##78466
turnin For the Horde!##34364 |goto Frostfire Ridge 48.7,64.9
accept Back to Work##34375 |goto Frostfire Ridge 48.7,64.9
accept A Gronnling Problem##34592 |goto Frostfire Ridge 48.7,64.9
step
click Tree Marking## |tip They look like wooden poles with white flags on them planted in the ground around this area.
'Mark #6# Trees for Peons |q Back to Work##34375/1 |goto Frostfire Ridge 48.3,65.8
kill 8 Frostfire Gronnling##79529 |q A Gronnling Problem##34592/1 |goto Frostfire Ridge 48.3,65.8
step
talk Gazlowe##78466
turnin Back to Work##34375 |goto 48.7,64.9
turnin A Gronnling Problem##34592 |goto 48.7,64.9
accept The Den of Skog##34765 |goto 48.8,64.9
step
'_Follow_ the path towards the cave |goto 48.8,66.8 < 20
kill Skog##79903 |q The Den of Skog##34765/1 |goto 48.5,70.1
step
talk Gazlowe##78466
turnin The Den of Skog##34765 |goto 48.8,64.9
accept Establish Your Garrison##34378 |goto 48.8,64.9
step
'Use the Master Surveyor to watch your Garrison be constructed |q Establish Your Garrison##34378/1 |goto 46.9,66.4
step
'_Go through_ the doorway |goto Frostwall 44.0,48.7 < 10
talk Bron Skyhorn##79407
fpath Frostwall Garrison |goto Frostwall/0 45.8,50.9
step
talk Gazlowe##78466
turnin Establish Your Garrison##34378 |goto Frostwall/0 52.4,53.2
accept What We Got##34824 |goto Frostwall/0 52.4,53.2
accept What We Need##34822 |goto Frostwall/0 52.4,53.2
step
talk Rokhan##78487
accept The Ogron Live?##34823 |goto Frostwall 51.3,51.4
step
click Garrison Cache## |tip It looks like a wooden crate bearing a Horde logo sitting next to a small pile of logs.
'Investigate your Garrison Cache |q What We Got##34824/2 |goto Frostwall 55.1,52.8
step
'_Go through_ the doorway |goto Frostwall 51.7,32.0 < 10
talk Senior Peon II##86775
'Tell him _"Gazlowe needs you."_
'Speak with Senior Peon II |q What We Got##34824/3 |goto Frostwall 49.4,16.4
step
'_Follow_ the path |goto Frostwall 41.6,31.4 < 20
talk Skaggit##80225
'Tell him _"Get the peons back to work."_
'Instruct Skaggit to release the peons |q What We Got##34824/1 |goto Frostwall 41.1,50.9
step
'_Go through_ the doorway |goto Frostwall 44.0,48.7 < 10
talk Gazlowe##78466
turnin What We Got##34824 |goto Frostwall 52.4,53.4
step
'_Go through_ the doorway |goto Frostwall 51.7,32.0 < 10
'_Follow_ the path down |goto Frostfire Ridge 49.2,59.6 < 20
from Pack Boar##80174+
click Drudgeboat Salvage## |tip The wooden boxes scattered throughout the area.
get 10 Drudgeboat Salvage##111907 |q What We Need##34822/1 |goto Frostfire Ridge 42.7,62.2
step
'_Enter_ the cave |goto Frostfire Ridge 40.2,60.1 < 20
'_Go down_ the path |goto Frostfire Ridge 40.4,58.8 < 10
kill Groog##80167 |q The Ogron Live?##34823/1 |goto 41.9,59.0
step
talk Rokhan##78487
turnin The Ogron Live?##34823 |goto Frostwall 51.3,51.3
step
talk Gazlowe##78466
turnin What We Need##34822 |goto Frostwall 52.5,53.3
accept Build Your Barracks##34461 |goto Frostwall 52.5,53.3
step
click Garrison Blueprint: Barracks##525 |tip It looks like a big white unrolled scroll sitting on a table.
'Find Gazlowe's missing blueprints |q Build Your Barracks##34461/1 |goto Frostwall 59.8,50.0
step
use Garrison Blueprint: Barracks, Level 1##111956
'Learn the Garrison Blueprints: Barracks 1 |q Build Your Barracks##34461/2
step
clicknpc Architect Table##86017 |tip It looks like a wooden table with a slanted top, with blueprints laying on it.
'Use the Architect's Table to begin constructing your barracks |q Build Your Barracks##34461/3 |goto Frostwall 52.2,53.3
'While using the table, _drag the Barracks_ to the _"Large Empty Plot"_
step
'Follow Gazlowe to the Construction Site |q Build Your Barracks##34461/4 |goto 57.8,48.0
step
click Finalize Garrison Plot## |tip The floating scroll in the pillar of light.
'Finalize your plot |q Build Your Barracks##34461/5 |goto Frostwall 58.2,48.4
step
talk Gazlowe##78466
turnin Build Your Barracks##34461 |goto Frostwall 57.4,48.4
accept We Need An Army##34861 |goto Frostwall 57.4,48.4
'If you didn't let the cutscene play all the way through, he will be at [Frostwall 52.5,53.4]
step
talk Warmaster Zog##79740 |tip He's inside the building.
turnin We Need An Army##34861 |goto Frostwall 53.9,55.0
accept Winds of Change##34462 |goto Frostwall 53.9,55.0
step
'_Go through_ the gate |goto Frostwall 51.8,31.4 < 20
'_Follow_ the path |goto Frostfire Ridge 53.2,64.1 < 20
click Icevine## |tip White bushes with a few leaves. They have a sparkle around them.
accept The Land Provides##34960 |goto Frostfire Ridge/0 54.2,67.5
step
click Icevine## |tip White bushes with a few leaves. They have a sparkle around them.
get 30 Frozen Plant Matter##112266 |q The Land Provides##34960/1 |goto Frostfire Ridge/0 54.5,70.6
step
'_Follow_ the path |goto Frostfire Ridge 54.1,64.8 < 20
'_Run up_ the path |goto Frostfire Ridge 56.1,62.4 < 10
'_Enter_ the cave |goto Frostfire Ridge 56.6,62.5 < 10
clicknpc Olin Umberhide##80577
'Rescue Olin Umberhide |q Winds of Change##34462/1 |goto Frostfire Ridge 57.3,62.9
step
'_Leave_ the cave |goto Frostfire Ridge 56.7,62.6 < 10
'_Go up_ the hill |goto Frostfire Ridge 53.2,63.4 < 20
'_Follow_ the ramp up |goto 49.9,60.5 < 20
'_Enter_ the Garrison Gate |goto Frostwall 51.7,32.3 < 20
talk Warmaster Zog##79740
turnin Winds of Change##34462 |goto Frostwall 53.9,54.9
accept Mission Probable##34775 |goto Frostwall 53.9,54.9
step
click Command Table##80432 |tip It looks like a round table with a map laying on it, and a dagger stabbed through the map into the table.
'Click the _Gronnlings Abound_ mission
'Assign _Olin Umberhide_ to the mission and start it
'Use the Command Table to send Olin Umberhide on a mission |q Mission Probable##34775/1 |goto Frostwall 53.7,54.4
step
talk Warmaster Zog##79740
turnin Mission Probable##34775 |goto 53.9,54.9
step
talk Gazlowe##78466
turnin The Land Provides##34960 |goto Frostwall 52.4,53.4
step
talk Farseer Drek'Thar##76411
accept Den of Wolves##34379 |goto Frostwall 49.7,49.7
step
clicknpc Frostwolf Rylak##78320 |tip It looks like a winged creature with 2 heads.  |goto Frostwall 46.9,49.8
'Ride the Frostwolf Rylak to Wor'gol |q Den of Wolves##34379/1
step
talk Durotan##70860
turnin Den of Wolves##34379 |goto Frostfire Ridge 20.7,58.0
accept Rally the Frostwolves##34380 |goto Frostfire Ridge 20.7,58.0
step
talk Farseer Drek'Thar##80456 |tip You may have to wait for him to run here.
accept Honor Has Its Rewards##33816 |goto Frostfire Ridge 21.0,57.9
step
'_Follow_ the path |goto Frostfire Ridge 20.5,56.9 < 25
'_Continue following_ the path |goto Frostfire Ridge 19.4,57.6 < 25
click Frostwolf Shamanstone## |tip The Shamanstone is a huge jagged stone behind the campfire.
'Choose _Spirit of the wolf._ |tip The quest will complete without clicking the stone, but make sure you do this, since you'll get a passive buff that increases your run speed.
'Receive the Blessing from the Shamanstone |q Honor Has Its Rewards##33816/1 |goto Frostfire Ridge 17.5,56.7
step
talk Farseer Drek'Thar##76616
'He can disappear for some reason, so if he's not here, he will be at [Frostfire Ridge 21.0,57.9]
turnin Honor Has Its Rewards##33816 |goto 17.68,56.70
step
'_Go up_ the hill |goto Frostfire Ridge 19.7,60.2 < 20
talk Draka##78971
'Ask Draka to sound the war horn |q Rally the Frostwolves##34380/1 |goto Frostfire Ridge 19.4,60.1
step
talk Durotan##76557
turnin Rally the Frostwolves##34380 |goto Frostfire Ridge 20.9,57.9
accept Gormaul Watch##33784 |goto Frostfire Ridge 20.9,57.9
step
'_Run up_ the hill |goto Frostfire Ridge 21.6,58.0 < 20
'_Go through_ the gate |goto 23.5,56.2 < 20
'_Follow_ the hill up |goto Frostfire Ridge 23.9,52.3 < 20
'_Follow_ the path |goto Frostfire Ridge 24.1,48.3 < 20
'_Follow_ the narrow path up |goto 22.6,46.0 < 20
'Meet Durotan at Gormaul Tower |q Gormaul Tower##33784/1 |goto Frostfire Ridge 21.3,44.1
step
talk Durotan##76240 |tip If he's not here, you can find him nearby, fighting ogres. Help him fight to clear the area of enemies.
turnin Gormaul Watch##33784 |goto Frostfire Ridge 21.3,44.1
accept These Colors Don't Run##33526 |goto Frostfire Ridge 21.3,44.1
step
'_Enter_ the fort |goto Frostfire Ridge 20.9,41.8 < 20
'_Follow_ the path |goto Frostfire Ridge/1 5.5,64.2 < 20
from Bladespire Mauler##73373+, Bladespire Brute##73371+
'Use your _Frostwolf Banner_ on their corpses |use Frostwolf Banner##107279
'Plant #8# Frostwolf Banners |q These Colors Don't Run##33526/1 |goto Frostfire Ridge/1 26.0,52.1
step
'_Go through_ the doorway |goto Frostfire Ridge/1 31.9,48.1 < 20
talk Durotan##74273
turnin These Colors Don't Run##33526 |goto Frostfire Ridge/1 43.5,23.2
accept Deeds Left Undone##33546 |goto Frostfire Ridge/1 43.5,23.2
step
click Barrel of Frostwolf Oil##334 |tip They look like wooden barrels on the ground around this area.
get 5 Frostwolf Oil##107361 |q Deeds Left Undone##33546/1 |goto 40.6,53.4 < 20
step
'_Follow_ the path |goto Frostfire Ridge/1 41.9,47.8 < 20
'_Enter_ the doorway |goto Frostfire Ridge/1 53.1,49.4 < 10
talk Gol'kosh the Axe##75167
'Take the Oil to Gol'kosh |q Deeds Left Undone##33546/2 |goto Frostfire Ridge/1 56.0,43.8
step
'_Go through_ the door |goto Frostfire Ridge/1 52.8,49.4 < 10
'_Leave_ the building |goto Frostfire Ridge/1 38.0,44.1 < 20
'_Follow_ the path |goto Frostfire Ridge/1 29.3,61.4 < 20
talk Durotan##75177
turnin Deeds Left Undone##33546 |goto Frostfire Ridge/1 34.3,73.0
accept Great Balls of Fire!##33408 |goto Frostfire Ridge/1 34.3,73.0
step
'_Go up_ the ramp, avoiding the Lava Boulders |goto Frostfire Ridge/1 34.2,76.6 < 15
'Ascend the Ramp |q Great Balls of Fire!##33408/1 |goto Frostfire Ridge/1 50.8,88.0
step
'_Enter_ the building |goto Frostfire Ridge/2 67.4,79.9 < 10
talk Thrall##75186
turnin Great Balls of Fire!##33408 | goto Frostfire Ridge/2 70.6,78.6
accept The Butcher of Bladespire##33410 |goto Frostfire Ridge/2 70.7,78.6
step
'_Leave_ the building |goto Frostfire Ridge/2 67.4,79.9 < 10
kill Dorogg the Ruthless##74254 |q The Butcher of Bladespire##33410/1 |goto Frostfire Ridge/2 54.1,73.0 |tip He will drop an item for each crafting profession you have that will start a quest for that profession.  Gathering and Secondary professions do not get a quest item.  You will do the quest(s) for your item(s) later in the guide.
step
'_Enter_ the building |goto Frostfire Ridge/2 67.4,79.9 < 10
talk Thrall##75186
turnin The Butcher of Bladespire##33410 |goto Frostfire Ridge/2 70.6,78.6
accept Armed and Dangerous##33344 |goto Frostfire Ridge/2 70.5,78.6
accept To the Slaughter##33622 |goto Frostfire Ridge/2 70.5,78.6
step
'_Leave_ the building |goto Frostfire Ridge/2 67.4,79.9 < 10
'_Enter_ the building |goto Frostfire Ridge/2 63.5,65.0 < 20
'_Go through_ the door |goto Frostfire Ridge/2 59.4,45.4 < 20
talk Frostwolf Slave##76543 |tip They look like brown orcs all around on the inside of this building.
'Arm #8# Frostwolf Slaves |q Armed and Dangerous##33344/1 |goto Frostfire Ridge/2 51.7,39.0
from Bladespire Mauler##73470+, Bladespire Brute##73469+, Bladespire Chef##73555+, Bladespire Boarbuster##75057+
kill 10 Bladespire Ogres |q To the Slaughter##33622/1
step
talk Durotan##75177
turnin To the Slaughter##33622 |goto Frostfire Ridge/2 50.3,32.7
turnin Armed and Dangerous##33344 |goto Frostfire Ridge/2 50.3,32.7
accept Last Steps##33527 |goto Frostfire Ridge/2 50.3,32.7
step
click Ladder##9094 |tip It looks like a wooden ladder laying on a huge metal chain.
'Climb the chain |q Last Steps##33527/1 |goto 49.6,31.4
step
kill Gorr'thog##74105 |q Last Steps##33527/2 |goto Frostfire Ridge/3 51.3,69.0
step
talk Durotan##75188
turnin Last Steps##33527 |goto Frostfire Ridge/3 66.4,56.5
accept Moving In##33657 |goto Frostfire Ridge/3 66.4,56.5
step
clicknpc Frost Wolf Howler##78894
'Ride the Frost Wolf |q Moving In##33657/1 |goto Frostfire Ridge/3 66.6,55.6
step
talk Durotan##70860
turnin Moving In##33657 |goto Frostfire Ridge/1 43.2,41.3
step
'_Exit_ the building |goto Frostfire Ridge/1 35.7,45.7
talk Snowrunner Rolga##81678
accept Mopping Up##33412 |goto 28.2,45.7
step
talk Guse##78222
accept Slavery and Strife##33119 |goto Frostfire Ridge/1 20.1,52.8
step
'Open all of the profession windows below for all of the professions you have: |tip You must do this in order for the following steps to work correctly.
'Open your Alchemy window |cast Alchemy##2259 |only if skill("Alchemy")>=1
'Open your Engineering window |cast Engineering##4036 |only if skill("Engineering")>=1
'Open your Jewelcrafting window |cast Jewelcrafting##25229 |only if skill("Jewelcrafting")>=1
'Open your Blacksmithing window |cast Blacksmithing##2018 |only if skill("Blacksmithing")>=1
'Open your Enchanting window |cast Enchanting##7411 |only if skill("Enchanting")>=1
'Open your Tailoring window |cast Tailoring##3908 |only if skill("Tailoring")>=1
'Open your Leatherworking window |cast Leatherworking##2108 |only if skill("Leatherworking")>=1
'Open your Inscription window |cast Inscription##45357 |only if skill("Inscription")>=1
'Click to go to the next guide step |confirm
|only if not completedq(37669)
step
use Intricate Crimson Pendant##115287 |tip This item was dropped by Dorogg the Ruthless while doing the quest "The Butcher of Bladespire".
accept The Intricate Pendant##36314
|only if skill("Jewelcrafting") >= 1
step
talk "Appraiser" Sazsel Stickyfingers##84967
turnin The Intricate Pendant##36314 |goto Frostwall 57.2,53.8
accept Locating the Lapidarist##36352 |goto Frostwall 57.2,53.8
|only if skill("Jewelcrafting") >= 1
step
'_Enter_ the building |goto Frostfire Ridge 20.1,56.6 < 10
'Locate the Pendant Owner |q Locating the Lapidarist##36352/1 |goto Frostfire Ridge 20.1,56.5
|only if skill("Jewelcrafting") >= 1
step
talk Gem Grinder Orolak##85106
turnin Locating the Lapidarist##36352 |goto Frostfire Ridge 20.1,56.4
accept No Pressure, No Diamonds##36378 |goto Frostfire Ridge 20.1,56.4
|only if skill("Jewelcrafting") >= 1
stickystart "roughlavadiamonds"
step
'_Run down_ the ramp |goto Frostfire Ridge/1 20.9,44.0 < 20
'_Continue following_ the ramp down |goto Frostfire Ridge/1 26.4,16.6 < 20
'_Follow_ the path |goto Frostfire Ridge/1 16.8,33.5 < 20
'_Go around_ the ridges into the lava |goto Frostfire Ridge/0 17.8,33.3 < 10
'_Follow_ the lava path |goto Frostfire Ridge/0 17.7,32.4 < 10
kill Massive Lava Slime##85185 |q No Pressure, No Diamonds##36378/1 |goto Frostfire Ridge/0 20.5,32.6 |tip Kill Lava Slimes around this area. If you (not your pet, if you have one) get the killing blow, you will get a buff that will protect you from taking damage from the lava.
'Collect the Marvelous Lava Diamond |q No Pressure, No Diamonds##36378/3 |goto Frostfire Ridge/0 20.5,32.6
|only if skill("Jewelcrafting") >= 1
step "roughlavadiamonds"
from Lava Slime##79630+
'Collect #3# Rough Lava Diamonds |q No Pressure, No Diamonds##36378/2 |goto Frostfire Ridge/0 17.8,32.4
|only if skill("Jewelcrafting") >= 1
step
'_Enter_ the building |goto Frostfire Ridge 20.1,56.6 < 10
talk Gem Grinder Orolak##85106
turnin No Pressure, No Diamonds##36378 |goto Frostfire Ridge 20.1,56.4
accept Diamonds Are Forever##36380 |goto Frostfire Ridge 20.1,56.4
|only if skill("Jewelcrafting") >= 1
step
'Wait for Orolak to assemble the pendant |q Diamonds Are Forever##36380/1 |goto Frostfire Ridge 20.1,56.4
|only if skill("Jewelcrafting") >= 1
step
talk Gem Grinder Orolak##85106
turnin Diamonds Are Forever##36380 |goto Frostfire Ridge 20.1,56.4
|only if skill("Jewelcrafting") >= 1
step
use Burned-Out Hand Cannon##116438 |tip This item was dropped by Dorogg the Ruthless while doing the quest "The Butcher of Bladespire".
accept Heavy Arms##36589
|only if skill("Engineering") >= 1
step
talk Blixthraz Blastcharge##85882
turnin Heavy Arms##36589 |goto Frostwall/0 60.1,38.7
accept "Spare" Parts##36594
|only if skill("Engineering") >= 1
stickystart "siegecannon"
step
'_Go through_ the doorway |goto Frostwall/0 51.8,31.8 < 20
'_Go over_ the rocks |goto Frostwall/0 58.7,34.3 < 20
'_Jump down _ here |goto Frostwall/0 77.9,50.9 < 20
'_Run up_ the snow path |goto Frostfire Ridge/0 55.5,65.5 < 10
from Iron Cannoneer##85822+
click Iron Horde Ammunition Crate##6478 |tip They look like wooden boxes filled with black balls on the ground around this area.
'Collect #20# Black Iron Shells |q "Spare" Parts##36594/1 |goto Frostfire Ridge/0 57.4,71.6
step "siegecannon"
'Use Blixthraz's Tools next to Siege Cannons |use Blixthraz's Tools##116645 |tip They look like huge metal cannon machines around this area.
click Iron Cannon Scraps##3365 |tip They look like metal parts that appear on the ground when you blow up a Siege Cannon.
'Collect #50# Siege Cannon Parts |q "Spare" Parts##36594/2 |goto Frostfire Ridge/0 57.4,71.6
|only if skill("Engineering") >= 1
step
'_Run down_ the snow path |goto Frostfire Ridge/0 56.0,66.7 < 10
'_Follow_ the path up |goto Frostfire Ridge/0 53.5,64.3 < 20
'_Follow_ the path |goto Frostfire Ridge/0 49.7,60.3 < 20
'_Go through_ the doorway |goto Frostwall/0 51.8,31.8 < 20
talk Blixthraz Blastcharge##85882
turnin "Spare" Parts##36594 |goto Frostwall 60.0,38.9
accept Big Frostfire Gun##36627 |goto Frostwall 60.0,38.9
|only if skill("Engineering") >= 1
step
'_Go through_ the doorway |goto Frostwall/0 43.9,48.6 < 20
'_Follow_ the path |goto Frostwall/0 41.3,54.0 < 20
'_Run on_ the brown dirt path |goto Frostwall/0 62.7,89.1 < 20
'_Jump across_ onto the flat rocks |goto Frostwall/0 76.1,88.2 < 20 |tip Make sure you are mounted.  If you don't make it, there's a small path that you'll fall on that you can just run back up.
'Use Blixthraz's Frightening Grudgesolver on Gentle Clefthoofs |use Blixthraz's Frightening Grudgesolver##116759
'Subdue #5# Clefthoofs |q Big Frostfire Gun##36627/1 |goto Frostfire Ridge/0 52.4,72.4
|only if skill("Engineering") >= 1
step
talk Blixthraz Blastcharge##85882
turnin Big Frostfire Gun##36627 |goto Frostwall 60.0,38.9
|only if skill("Engineering") >= 1
step
use Mysterious Flask##112566 |tip This item was dropped by Dorogg the Ruthless while doing the quest "The Butcher of Bladespire".
accept The Mysterious Flask##35058
|only if skill("Alchemy") >= 1
step
talk Refugee Lo'nash##81166
turnin The Mysterious Flask##35058 |goto Frostwall 45.2,51.0
accept The Alchemist##35103 |goto Frostwall 45.2,51.0
|only if skill("Alchemy") >= 1
step
'_Follow_ the path around the chasm |goto Frostfire Ridge 37.1,50.9 < 20
talk Kadar##81209
turnin The Alchemist##35103 |goto Frostfire Ridge 38.0,47.4
accept The Apprentice##35104 |goto Frostfire Ridge 38.0,47.4
|only if skill("Alchemy") >= 1
step
'_Enter_ the building |goto Frostfire Ridge 37.9,47.6 < 5
click Rubble## |tip It looks like a pile of wood with a body under it inside this small building.
'Remove the rubble |q The Apprentice##35104/1 |goto Frostfire Ridge 37.9,47.4
|only if skill("Alchemy") >= 1
step
talk Ang'kra##81210
turnin The Apprentice##35104 |goto Frostfire Ridge 37.9,47.4
accept Avenge and Reclaim##35106 |goto Frostfire Ridge 37.9,47.4
|only if skill("Alchemy") >= 1
step
'_Leave_ the building |goto Frostfire Ridge 37.9,47.6 < 5
'_Follow_ the trail of lava |goto Frostfire Ridge 40.5,43.3 < 20
kill Or'Nak##81243 |q Avenge and Reclaim##35106/1 |goto Frostfire Ridge 41.6,40.4
get Book of Alchemical Secrets##112655 |q Avenge and Reclaim##35106/2 |goto Frostfire Ridge 41.6,40.4
|only if skill("Alchemy") >= 1
step
'_Enter_ the building |goto Frostfire Ridge 37.9,47.6 < 5
talk Ang'kra##81210
turnin Avenge and Reclaim##35106 |goto Frostfire Ridge 37.9,47.4
|only if skill("Alchemy") >= 1
step
use Fractured Forge Hammer##114965 |tip This item was dropped by Dorogg the Ruthless while doing the quest "The Butcher of Bladespire".
accept The Fractured Hammer##36205
|only if skill("Blacksmithing") >= 1
step
talk Axe-Shaper Kugra##78989
turnin The Fractured Hammer##36205 |goto Frostfire Ridge/0 41.2,52.9
accept Waruk the Frostforger##36207 |goto Frostfire Ridge/0 41.2,52.9
|only if skill("Blacksmithing") >= 1
step
'_Follow_ the path back |goto Frostfire Ridge/0 42.2,48.9 < 20
'_Continue following_ the path |goto Frostfire Ridge 44.5,47.5 < 20
'Locate Waruk's Gravesite |q Waruk the Frostforger##36207/1 |goto Frostfire Ridge/0 46.1,48.6
|only if skill("Blacksmithing") >= 1
step
talk Waruk the Frostforger##84494
turnin Waruk the Frostforger##36207 |goto Frostfire Ridge/0 46.1,48.8
accept The Restless Spirit##36230 |goto Frostfire Ridge/0 46.1,48.8
|only if skill("Blacksmithing") >= 1
step
'_Enter_ the huge bone-covered area |goto Frostfire Ridge 58.8,26.6 < 20
kill Kurgthuk the Merciless##84506 |q The Restless Spirit##36230/1 |goto Frostfire Ridge/0 60.5,27.2 |tip He walks around this area, so you may need to search for him. Be careful, this area can be a little tough at this level.
'Acquire Kurgthuk's Task Masters |q The Restless Spirit##36230/2 |goto Frostfire Ridge/0 60.5,27.2
|only if skill("Blacksmithing") >= 1
step
from Thunderlord Windreader##78765+, Thunderlord Grappler##72270+, Thunderlord Crag-Leaper##72240+
'Use _Waruk's Fractured Hammer_ near their corpses |use Waruk's Fractured Hammer##114969
'Acquire #50# Salvaged Draenic Metal |q The Restless Spirit##36230/3
|only if skill("Blacksmithing") >= 1
step
'_Follow_ the path |goto Frostfire Ridge 54.9,40.4 < 20
'_Run around_ the canyon |goto Frostfire Ridge 49.3,47.6 < 20
talk Waruk the Frostforger##84494
turnin The Restless Spirit##36230 |goto Frostfire Ridge/0 46.1,48.7
accept Mending A Broken Heart##36238 |goto Frostfire Ridge/0 46.1,48.7
|only if skill("Blacksmithing") >= 1
step
'_Follow_ the path back |goto Frostfire Ridge/0 43.7,48.1 < 20
'_Continue following_ the path |goto Frostfire Ridge 41.3,50.4 < 20
talk Axe-Shaper Kugra##78989
turnin Mending A Broken Heart##36238 |goto 41.2,52.9
|only if skill("Blacksmithing") >= 1
step
use Illegible Sootstained Notes##115593 |tip This item was dropped by Dorogg the Ruthless while doing the quest "The Butcher of Bladespire".
accept Unintelligible Intelligence##36435
|only if skill("Inscription") >= 1
step
'_Enter_ the building |goto Frostfire Ridge 21.0,56.8 < 10
'Search Wor'gol for help translating the note |q Unintelligible Intelligence##36435/1 |goto Frostfire Ridge 20.9,56.3
|only if skill("Inscription") >= 1
step
talk Raleigh Puule##85439
turnin Unintelligible Intelligence##36435 |goto Frostfire Ridge 21.1,56.1
accept Bypassing Security##36457 |goto Frostfire Ridge 21.1,56.1
|only if skill("Inscription") >= 1
step
'_Run up_ the snowy path |goto Frostfire Ridge 21.5,57.0 < 10
'_Follow_ the path to the left |goto Frostfire Ridge 22.0,56.9 < 10
talk Pul Windcarver##76782
'Fly to _Frostwall Garrison, Frostfire Ridge_ |goto Frostfire Ridge 21.6,56.1 < 5
'Arrive at your Garrison |goto Frostwall 45.7,50.3 < 20 |q Bypassing Security##36457 |future |tip DO NOT HEARTH TO YOUR GARRISON. You will need to use your hearthstone soon.
|only if skill("Inscription") >= 1
step
'_Go through_ the doorway |goto Frostwall/0 51.8,31.8 < 20
'_Go over_ the rocks |goto Frostwall/0 58.7,34.3 < 20
'_Jump down _ here |goto Frostwall/0 77.9,50.9 < 20
'_Run up_ the snow path |goto Frostfire Ridge/0 55.5,65.5 < 10
'_Follow_ the path |goto Frostfire Ridge 57.4,71.4 < 10
'_Continue following_ the path |goto Frostfire Ridge 58.6,73.7 < 20
'_Go through_ the doorway |goto Frostfire Ridge 60.2,73.5 < 10
'Use your _Prestige Card: The Turn_ in the Grom'gar area |use Prestige Card: The Turn##116063 |tip You will become disguised.
'Locate the Master Scribe |q Bypassing Security##36457/1 |goto Frostfire Ridge 61.3,71.2
|only if skill("Inscription") >= 1
step
talk Nicholaus Page##85440 |tip He's in a cage.
turnin Bypassing Security##36457 |goto Frostfire Ridge 61.3,71.2
accept Stealing the Declaration##36475 |goto Frostfire Ridge 61.3,71.2
|only if skill("Inscription") >= 1
step
'_Follow_ the path |goto Frostfire Ridge 62.6,73.4 < 20
click Uratok's Strongbox## |tip It looks like a wooden and metal chest sitting on a table in this round-ish hut building.
'Collect the Misappropriate Draenic Texts |q Stealing the Declaration##36475/1 |goto Frostfire Ridge 63.1,75.8
'Collect the Blackened Iron Key |q Stealing the Declaration##36475/2 |goto Frostfire Ridge 63.1,75.8
|only if skill("Inscription") >= 1
step
'Use your _Prestige Card: The Turn_ in the Grom'gar area |use Prestige Card: The Turn##116063 |tip You will become disguised.
'_Follow_ the path |goto Frostfire Ridge 62.6,73.4 < 20
talk Nicholaus Page##85440 |tip He's in a cage.
turnin Stealing the Declaration##36475 |goto Frostfire Ridge 61.3,71.2
|only if skill("Inscription") >= 1
step
use Tattered Frostwolf Shroud##116173 |tip This item was dropped by Dorogg the Ruthless while doing the quest "The Butcher of Bladespire".
accept A Warrior's Shroud##36505
|only if skill("Leatherworking") >= 1
step
'_Run up_ the path |goto Frostfire Ridge 20.4,58.9 < 10
'_Continue up_ the path to the left |goto Frostfire Ridge 19.4,59.1 < 10
'_Run behind_ the building |goto Frostfire Ridge 20.5,61.0 < 10
talk Gaoda Hidecleaver##85751
turnin A Warrior's Shroud##36505 |goto Frostfire Ridge 20.7,60.2
accept Cut 'Em Out!##36516 |goto Frostfire Ridge 20.7,60.2
|only if skill("Leatherworking") >= 1
step
'_Run up_ the path |goto Frostfire Ridge 21.7,58.0 < 20
'_Go through_ the gate |goto Frostfire Ridge 23.3,56.3 < 20
'_Cross_ the snowy field |goto Frostfire Ridge 23.9,50.7 < 20
'_Jump down_ here |goto Frostfire Ridge 24.3,48.2 < 10
from Wooly Clefthoof##72162+
'Use your _Bloodstained Skinning Knife_ on their corpses |use Bloodstained Skinning Knife##116246
get 4 Pristine Clefthoof Hide##116195 |q Cut 'Em Out!##36516/1 |goto Frostfire Ridge 25.8,43.4
|only if skill("Leatherworking") >= 1
step
click Sootweed##235888 |tip They look like scraggly plants on the ground around this area.
get 15 Sootweed Pitch##116351 |q Cut 'Em Out!##36516/2 |goto Frostfire Ridge 26.0,41.9
|only if skill("Leatherworking") >= 1
step
'_Run up_ the path |goto Frostfire Ridge 20.4,58.9 < 10
'_Continue up_ the path to the left |goto Frostfire Ridge 19.4,59.1 < 10
'_Run behind_ the building |goto Frostfire Ridge 20.5,61.0 < 10
talk Gaoda Hidecleaver##85751
turnin Cut 'Em Out!##36516 |goto Frostfire Ridge 20.7,60.2
|only if skill("Leatherworking") >= 1
step
use Frostwolf Tailoring Kit##114973 |tip This item was dropped by Dorogg the Ruthless while doing the quest "The Butcher of Bladespire".
accept Trega's Tailoring Kit##36301
|only if skill("Tailoring") >= 1
step
'_Run up_ the path |goto Frostfire Ridge 20.4,58.9 < 10
'_Continue up_ the path to the left |goto Frostfire Ridge 19.4,59.1 < 10
talk Trega##84689 |tip She's inside the small round building.
turnin Trega's Tailoring Kit##36301 |goto Frostfire Ridge 20.5,60.6
accept From Their Cold Dead Hands##36417 |goto Frostfire Ridge 20.5,60.6
|only if skill("Tailoring") >= 1
step
'_Run down_ the path |goto Frostfire Ridge 19.8,60.4 < 20
'_Jump down_ and _follow_ the path |goto Frostfire Ridge 19.9,59.5 < 20
'_Run up_ the path |goto Frostfire Ridge 21.7,58.0 < 20
'_Go through_ the gate |goto Frostfire Ridge 23.3,56.3 < 20
'_Cross_ the snowy field |goto Frostfire Ridge 23.9,50.7 < 20
'_Jump down_ here |goto Frostfire Ridge 24.3,48.2 < 10
from Sootstained Enforcer##72833+, Sootstained Slaver##72752+, Sootstained Mauler##77767+, Bladespire Chef##73555+
get 10 Damaged Hexweave##115590 |q From Their Cold Dead Hands##36417/1 |goto Frostfire Ridge 26.0,41.8
|only if skill("Tailoring") >= 1
step
'_Run up_ the path |goto Frostfire Ridge 20.4,58.9 < 10
'_Continue up_ the path to the left |goto Frostfire Ridge 19.4,59.1 < 10
talk Trega##84689 |tip She's inside the small round building.
turnin From Their Cold Dead Hands##36417 |goto Frostfire Ridge 20.5,60.6
accept Dyed in the Fur##36419 |goto Frostfire Ridge 20.5,60.6
|only if skill("Tailoring") >= 1
step
click Flytrap Ichor## |tip It looks like a bucket with a green substance in it sitting on the ground inside this small round building.
'Create the Hexweave Swatch |q Dyed in the Fur##36419/1 |goto Frostfire Ridge 20.5,60.7
talk Trega##84689 |tip She's inside the small round building.
turnin Dyed in the Fur##36419 |goto Frostfire Ridge 20.5,60.6
|only if skill("Tailoring") >= 1
step
use Enchanted Highmaul Bracer##115008 |tip This item was dropped by Dorogg the Ruthless while doing the quest "The Butcher of Bladespire".
accept Enchanted Highmaul Bracer##36255
|only if skill("Enchanting") >= 1
step
talk Yu'rina the Mystic##83482
turnin Enchanted Highmaul Bracer##36255 |goto Frostwall 47.2,38.2
accept The Arakkoan Enchanter##36256 |goto Frostwall 47.2,38.2
|only if skill("Enchanting") >= 1
step
'_Go through_ the doorway |goto Frostwall 51.7,32.2 < 10
'_Follow_ the path |goto Frostfire Ridge 50.0,56.7 < 20
talk Arcanist Delath##84739
turnin The Arakkoan Enchanter##36256 |goto Frostfire Ridge 54.4,51.7
accept Failed Apprentice##36257 |goto Frostfire Ridge 54.4,51.7
|only if skill("Enchanting") >= 1
step
talk Torag Stonefury##84834
'Free Torag Stonefury |q Failed Apprentice##36257/1 |goto Frostfire Ridge 55.9,48.6
|only if skill("Enchanting") >= 1
step
talk Torag Stonefury##84747
turnin Failed Apprentice##36257 |goto Frostfire Ridge 55.9,48.6
accept Oru'kai's Scepter##36260 |goto Frostfire Ridge 55.9,48.6
|only if skill("Enchanting") >= 1
step
use Oru'kai's Ember Ring##115011
get Oru'kai's Scepter |q Oru'kai's Scepter##36260/1 |goto Frostfire Ridge 55.6,49.2
|only if skill("Enchanting") >= 1
step
talk Arcanist Delath##84739
turnin Oru'kai's Scepter##36260 |goto Frostfire Ridge 54.4,51.7
|only if skill("Enchanting") >= 1
step
talk Gazlowe##78466
accept Building for Professions##37669 |goto Frostwall/0 52.5,53.4
|only if skill("Jewelcrafting") >= 1 or skill("Engineering") >= 1 or skill("Alchemy") >= 1 or skill("Leatherworking") >= 1 or skill("Inscription") >= 1 or skill("Tailoring") >= 1 or skill("Blacksmithing") >= 1 or skill("Enchanting") >= 1
step
Use _Garrison Blueprint: Gem Boutique, Level 1_ in your inventory |use Garrison Blueprint: Gem Boutique, Level 1##111814 |only if skill("Jewelcrafting") >= 1
Use _Garrison Blueprint: Engineering Works, Level 1_ in your inventory |use Garrison Blueprint: Engineering Works, Level 1##109258 |only if skill("Engineering") >= 1
Use _Garrison Blueprint: Alchemy Lab, Level 1_ in your inventory |use Garrison Blueprint: Alchemy Lab, Level 1##111812 |only if skill("Alchemy") >= 1
Use _Garrison Blueprint: The Tannery, Level 1_ in your inventory |use Garrison Blueprint: The Tannery, Level 1##111818 |only if skill("Leatherworking") >= 1
Use _Garrison Blueprint: Scribe's Quarters, Level 1_ in your inventory |use Garrison Blueprint: Scribe's Quarters, Level 1##111815 |only if skill("Inscription") >= 1
Use _Garrison Blueprint: Tailoring Emporium, Level 1_ in your inventory |use Garrison Blueprint: Tailoring Emporium, Level 1##111816 |only if skill("Tailoring") >= 1
Use _Garrison Blueprint: The Forge, Level 1_ in your inventory |use Garrison Blueprint: The Forge, Level 1##111813 |only if skill("Blacksmithing") >= 1
Use _Garrison Blueprint: Enchanter's Study, Level 1_ in your inventory |use Garrison Blueprint: Enchanter's Study, Level 1##111817 |only if skill("Enchanting") >= 1
Click to go to the next guide step |confirm
|only if (skill("Jewelcrafting") >= 1 or skill("Engineering") >= 1 or skill("Alchemy") >= 1 or skill("Leatherworking") >= 1 or skill("Inscription") >= 1 or skill("Tailoring") >= 1 or skill("Blacksmithing") >= 1 or skill("Enchanting") >= 1) and not completedq(36100)
step
click Architect Table## |tip It looks like a wooden table with a slanted tabletop with a blueprint laying on it.
'While using the table, _click the Small tab_ and _drag the profession building of your choice_ to the highlighted small empty plot
'Build a Profession Building |q Building for Professions##36100/1 |q Building for Professions##37669/1 |goto Frostwall 52.3,53.6
|only if skill("Jewelcrafting") >= 1 or skill("Engineering") >= 1 or skill("Alchemy") >= 1 or skill("Leatherworking") >= 1 or skill("Inscription") >= 1 or skill("Tailoring") >= 1 or skill("Blacksmithing") >= 1 or skill("Enchanting") >= 1
step
talk Gazlowe##78466
turnin Building for Professions##37669 |goto Frostwall/0 52.5,53.4
|only if skill("Jewelcrafting") >= 1 or skill("Engineering") >= 1 or skill("Alchemy") >= 1 or skill("Leatherworking") >= 1 or skill("Inscription") >= 1 or skill("Tailoring") >= 1 or skill("Blacksmithing") >= 1 or skill("Enchanting") >= 1
step
'_Enter_ the building |goto Frostfire Ridge/1 35.7,45.7
talk Durotan##70860
accept Save Wolf Home##33468 |goto Frostfire Ridge/1 43.2,41.3
step
talk Gol'kosh the Axe##76662
accept Slaying Slavers##33898 |goto Frostfire Ridge 24.1,39.3
stickystart "sootstainedogre"
step
click Ball and Chain##181
'Free 5 Frostwolf Slaves |q Slavery and Strife##33119/1 |goto 26.8,41.3
step "sootstainedogre"
kill Sootstained Mauler##73490, Sootstained Enforcer##72833, Sootstained Slaver##72752,
'Sootstained Ogres slain |q Slaying Slavers##33898/1 |goto 25.4,39.8
step
'_Go up_ the hill |goto Frostfire Ridge 28.1,42.5 < 20
'Find Mulverick |q Slavery and Strife##33119/2 |goto 30.8,41.5
step
talk Mulverick##72890
turnin Slavery and Strife##33119 |goto Frostfire Ridge 30.8,41.5
accept Mulverick's Plight##33483 |goto Frostfire Ridge 30.8,41.5
step
'_Enter_ the tunnel |goto Frostfire Ridge 29.7,41.6 < 20
kill Sootstained Taskmaster##76706
'Collect Mulverick's Axe |q Mulverick's Plight##33483/1 |goto Frostfire Ridge/4 58.4,56.1
step
'_Go down_ the path |goto Frostfire Ridge/4 49.1,58.0 < 20
'_Continue_ through the path |goto 37.2,30.3 < 20
kill Slavemaster Turgall##72873
'Turgall's Key |q Mulverick's Plight##33483/2 |goto Frostfire Ridge/4 49.8,34.2
step
'_Jump down_ the ledge |goto Frostfire Ridge/4 53.4,38.7 < 20
'_Follow_ the path out of the cave |goto Frostfire Ridge/4 66.0,75.5 < 20
'Unlock Mulverick's Cage |q Mulverick's Plight##33483/3 |goto Frostfire Ridge 30.8,41.5
step
talk Mulverick##79047
turnin Mulverick's Plight##33483 |goto Frostfire Ridge 30.8,41.5
accept The Slavemaster's Demise##33484 |goto Frostfire Ridge 30.8,41.5
accept Mulverick's Offer of Service##34732 |goto Frostfire Ridge 30.8,41.5
step
'_Follow_ the path |goto Frostfire Ridge 29.2,42.3
'_Go down_ the path |goto 27.0,41.6
talk Gol'kosh the Axe##76662
turnin Slaying Slavers##33898 |goto 24.1,39.3
step
'_Follow_ the road |goto 23.5,36.6 < 20
'_Continue_ along the path |goto 23.3,31.9 < 20
'_Enter_ the building |goto 24.5,29.2 < 20
talk Igrim the Resolute##74635
turnin Mopping Up##33412 |goto 24.3,28.3
accept The Warlord's Guard##33450 |goto 24.3,28.3
accept The Cure##33454 |goto 24.3,28.3
step
'_Leave_ the building |goto 24.5,29.2 < 20
kill Bladespire Geomancer##74697
collect 5 Winterwasp Antidote##106958 |n
clicknpc Frostwolf Gladiator##74672
'Cure Frostwolf Gladiators |q The Cure##33454/1 |goto 26.3,26.8 |tip They are all over this area |use Winterwasp Antidote##106958
step
kill Thunk##74704
get Head of Thunk##106943 |q The Warlord's Guard##33450/1 |goto 26.9,25.1
step
kill 1 Splorg##74706
get Head of Splorg##106942 |q The Warlord's Guard##33450/3 |goto 28.6,26.1
step
'_Enter_ the cave |goto 27.9,24.7 < 20
kill 1 Gullok##74707
get Head of Gullok##106944 |q The Warlord's Guard##33450/2 |goto 28.3,23.9
step
'_Enter_ the building |goto Frostfire Ridge 24.5,29.2
talk Igrim the Resolute##74635
turnin The Warlord's Guard##33450 |goto 24.4,28.8
turnin The Cure##33454 |goto 24.4,28.8
accept The Fall of the Warlord##33467 |goto 24.4,28.8
step
'_Go down_ the stairs |goto Frostfire Ridge 24.3,27.2
click Ogre Spike## |goto Frostfire Ridge/0 23.3,26.1 < 5 |tip The middle of three wooden vertical spikes.
kill Warlord Bult##73763 |q The Fall of the Warlord##33467/1 |goto 23.0,26.6
step
'_Go up_ the ramp |goto Frostfire Ridge/0 24.0,27.1 < 20
'_Follow_ the path up |goto Frostfire Ridge/1 20.9,31.2 < 20
talk Snowrunner Rolga##81678
turnin The Fall of the Warlord##33467 |goto Frostfire Ridge/1 28.4,45.6
step
talk Guse##78222
turnin The Slavemaster's Demise##33484 |goto Frostfire Ridge/1 20.1,52.8
step
'_Cross_ the bridge |goto Frostfire Ridge/1 0.2,69.7
'_Go down_ the icy ramp |goto Frostfire Ridge/0 21.3,44.4 < 20
accept Bonus Objective: Forbidden Glacier##34505 |goto Frostfire Ridge/0 26.1,52.3
clicknpc Frost Wolf Howler##78894
clicknpc Frostwolf Grunt##78870
'Thaw 12 Frostwolves |q Bonus Objective: Forbidden Glacier##34505/2 |goto Frostfire Ridge 26.1,51.5
kill 10 Malevolent Breath##78791 |q Bonus Objective: Forbidden Glacier##34505/1
step
'_Go_ to Wor'gol |q Save Wolf Home##33468/1 |goto Frostfire Ridge 21.6,56.1 < 20
step
kill Giantslayer Zhakta##74702 |q Save Wolf Home##33468/4 |goto Frostfire Ridge 22.2,57.3 |tip She will appear along this road
step
'_Follow_ the path back |goto Frostfire Ridge 20.4,59.0 < 15
kill Gronnstalker Korhol##74700 |q Save Wolf Home##33468/2 |goto 19.1,58.2
step
stickystart "free"
talk Wor'gol Defender##74507
accept Free Our Brothers and Sisters##33807 |goto Frostfire Ridge/0 19.1,58.3
step
'_Go up_ the hill |goto Frostfire Ridge 19.7,60.0 < 15
kill 1 Beastmaster Trokar##74708 |q Save Wolf Home##33468/3 |goto 19.8,61.4
step
from Thunderlord Ranger##76289, Thunderlord Invader##74329, Thunderlord Handler##74514, Thunderlord Seer##78073
'Kill 15 Thunderlords |q Save Wolf Home##33468/5 |goto Frostfire Ridge 20.0,59.0
step "free"
clicknpc Wor'gol Villager##84781
clicknpc Frost Wolf##74544
'Free Villages and Frostwolves |q Free Our Brothers and Sisters##33807/1 |goto Frostfire Ridge 20.0,59.0
step
talk Draka##74651
turnin Save Wolf Home##33468 |goto Frostfire Ridge 20.8,57.9
turnin Free Our Brothers and Sisters##33807 |goto Frostfire Ridge 20.8,57.9
step
talk Draka##74651
accept The Farseer##33469 |goto Frostfire Ridge/0 20.8,57.9
step
'_Go down_ the tunnel |goto Frostfire Ridge 18.3,56.0 < 20
kill Warleader Gargrak##74653 |q The Farseer##33469/1 |goto 16.8,57.6
step
talk Farseer Drek'Thar##74272
turnin The Farseer##33469 |goto Frostfire Ridge 16.8,57.8
accept Pool of Visions##33470 |goto Frostfire Ridge 16.8,57.8
step
talk Farseer Drek'Thar##74272
'Tell him _I am ready for the ritual, farseer._
'Ritual of Vision |q Pool of Visions##33470/1 |goto Frostfire Ridge 16.8,57.8
step
talk Farseer Drek'Thar##74272
turnin Pool of Visions##33470 |goto Frostfire Ridge 16.8,57.8
accept Back to Bladespire Citadel##33473 |goto Frostfire Ridge 16.8,57.8
step
'_Exit_ the cave |goto Frostfire Ridge/0 18.3,56.1 < 20
talk Pul Windcarver##76782
'Fly back to Bladespire Fortress |q Back to Bladespire Citadel##33473/1 |goto Frostfire Ridge 21.6,56.1
step
'_Enter_ the building |goto Frostfire Ridge/1 32.9,46.9 < 20
talk Durotan##70860
turnin Back to Bladespire Citadel##33473 |goto Frostfire Ridge/1 43.1,41.3
accept Ga'nar's Vengeance##32783 |goto Frostfire Ridge/1 43.1,41.3
accept Securing the South##32989 |goto Frostfire Ridge/1 43.1,41.3
step
home Bladespire Fortress |goto Frostfire Ridge/1 43.0,44.6
step
'_Leave_ the building |goto Frostfire Ridge/1 35.5,45.6 < 20
'_Go down_ the winding path |goto Frostfire Ridge/1 20.8,36.8 < 20
'_Continue_ along the road |goto Frostfire Ridge/0 25.7,29.5 < 20
talk Ga'nar##70909
turnin Ga'nar's Vengeance##32783 |goto 30.9,25.8
accept Let the Hunt Begin!##32791 |goto 30.9,25.8
step
talk Ga'nar##70878
'Tell him _I am ready!_ |q Let the Hunt Begin!##32791/1 |goto 30.9,25.8
step
'Confront Grotan |q Let the Hunt Begin!##32791/2 |goto Frostfire Ridge/0 34.4,26.4
'Kal'gor's reinforcements arrived |q Let the Hunt Begin!##32791/3 |goto Frostfire Ridge/0 36.2,25.9
'Ligra's reinforcements arrived |q Let the Hunt Begin!##32791/4 |goto Frostfire Ridge/0 35.7,26.1
step
talk Ga'nar##74000
turnin Let the Hunt Begin!##32791 |goto Frostfire Ridge/0 36.0,25.8
accept Leave Nothing Behind!##32792 |goto Frostfire Ridge/0 36.0,25.8
step
talk Ligra the Unyielding##74222
accept They Rely on Numbers##32929 |goto Frostfire Ridge/0 35.9,25.7
stickystart "thunderorcs"
step
kill Kur'ak the Binder##71669 |q Leave Nothing Behind!##32792/2 |goto Frostfire Ridge/0 37.9,28.9
step
click Thunderlord Ballista## |tip They are large four wheeled carts with spears loaded.
'Thunderlord Ballistae destroyed |q Leave Nothing Behind!##32792/1 |goto Frostfire Ridge/0 38.7,30.4
step
'_Go up_ the hill |goto Frostfire Ridge/0 39.5,29.4 < 20
'_Go through_ the passage |goto 41.8,32.2 < 20
click Thunderlord Supplies## |tip The barrels and supplies are stacked against the wall.
'Thunderlord Supplies destroyed |q Leave Nothing Behind!##32792/3 |goto 42.3,34.3
step "thunderorcs"
kill Thunderlord Spearhand##71647+, Thunderlord Beastmaster##74205+, Kur'ak the Binder##71669+
'Kill 25 Thunderlord Orcs |q They Rely on Numbers##32929/1 |goto Frostfire Ridge/0 39.1,29.2
step
'_Go up_ the path |goto 42.3,30.4
'_Continue_ up the hill |goto 43.8,31.3
talk Kal'gor the Honorable##74223
turnin They Rely on Numbers##32929 |goto 46.4,32.0
accept Articles of the Fallen##32804 |goto 46.4,32.0
step
talk Ga'nar##70910
turnin Leave Nothing Behind!##32792 |goto Frostfire Ridge/0 46.4,32.1
accept Wrath of Gronn##32794 |goto Frostfire Ridge/0 46.4,32.1
step
click Frostwolf Collar## |tip They're bags on the ground throughout the area.
click Frostwolf Axe## |tip They're red and silver axes found throughout the area.
'Fallen Frostwolf Artifact |q Articles of the Fallen##32804/1 |goto 47.6,33.8
step
'_Enter_ the cave | goto Frostfire Ridge/0 47.9,31.6 < 20
kill Thunderlord Beastwrangler##74160+
'Captive Gronn released |q Wrath of Gronn##32794/1 |goto Frostfire Ridge/7 33.2,17.6
step
talk Kal'gor the Honorable##74223
turnin Articles of the Fallen##32804 |goto Frostfire Ridge/0 46.4,32.0
step
'_Enter_ the cave | goto Frostfire Ridge/0 47.9,31.6 < 20
'_Go down_ the ramp |goto Frostfire Ridge/7 36.5,23.8 < 20
'_Continue down_ the ramp |goto Frostfire Ridge/8 41.3,52.3 < 20
talk Ga'nar##70941
turnin Wrath of Gronn##32794 |goto 50.6,54.4
accept The Eldest##32795 |goto 50.6,54.4
step
talk Ga'nar##70941
'Tell him _<Assist Ga'nar in battle.>_ |goto Frostfire Ridge/8 50.6,54.4
'Confront Hatock |q The Eldest##32795/1 |goto Frostfire Ridge/8 51.7,63.8
step
kill Grulloc##70863 |q The Eldest##32795/2 |goto Frostfire Ridge/8 48.9,66.8
'Hatock the Gronnmaster slain |q The Eldest##32795/3 |tip He will die once Grulloc is beaten
step
talk Ga'nar##70941
turnin The Eldest##32795 |goto Frostfire Ridge/8 50.3,50.6
accept To the Garrison##32796 |goto Frostfire Ridge/8 50.3,50.6
step
'_Leave_ the building |goto Frostfire Ridge/1 31.8,47.5 < 20
'_Go up_ the ramp |goto 36.2,79.2 < 20
'_Enter_ the building |goto Frostfire Ridge/2 62.9,67.2 < 20
'_Go down the ramp_ |goto 68.5,42.9 < 20
'_Follow_ the hill down |goto Frostfire Ridge/0 32.7,35.1 < 20
'_Head down_ the path past the lava |goto 35.4,38.6 < 20
'_Go through_ the snow field |goto 36.6,49.1
talk Lokra##72274
turnin Securing the South##32989 |goto 38.5,52.4
accept They Who Held Fast##32990 |goto 38.5,52.4
step
talk Skyhunter Donmor'gan##76879
fpath Stonefang Outpost |goto Frostfire Ridge/0 40.1,51.9
step
talk Frostwolf Warrior##72449
'Look for Karg Bloodfury |q They Who Held Fast##32990/1 |goto Frostfire Ridge/0 41.4,52.8
step
talk Wounded Frostwolf Shaman##74358
accept Of Fire and Thunder##33013 |goto Frostfire Ridge/0 41.6,52.9
step
talk Matron Suma##72383
'Speak with Matron Suma |q They Who Held Fast##32990/2 |goto Frostfire Ridge/0 41.6,52.9
step
talk Rota Surehide##72381
'Speak with Rota Surehide |q They Who Held Fast##32990/3 |goto Frostfire Ridge/0 39.9,52.8
step
talk Dungar Frostmane##72380
'Speak with Dungar Frostmane |q They Who Held Fast##32990/4 |goto Frostfire Ridge/0 39.2,52.4
step
talk Lokra##72274
turnin They Who Held Fast##32990 |goto Frostfire Ridge/0 38.5,52.4
accept Into the Boneslag##32991 |goto Frostfire Ridge/0 38.5,52.4
step
'Follow the path |goto Frostfire Ridge/0 37.8,50.5
clicknpc Roknor##72400
'Roknor found |q Into the Boneslag##32991/1 |goto 40.4,49.0
step
talk Makar Stonebinder##72399
'Makar Stonebinder found |q Into the Boneslag##32991/2 |goto Frostfire Ridge/0 41.1,44.7
step
click Siege Munitions## |tip A pile of large yellow munitions next to the lava.
'Inspect Siege Munitions |q Of Fire and Thunder##33013/1 |goto Frostfire Ridge/0 43.1,44.4
step
talk Gana Surehide##72494
'_Break the chains._
'Gana Surehide found |q Into the Boneslag##32991/3 |goto Frostfire Ridge/0 44.3,43.0
step
click Heavy Plating##10749
'Inspect Heavy Plating |q Of Fire and Thunder##33013/2 |goto Frostfire Ridge/0 44.7,43.4
step
'Click the _Quest Complete_ box in the top right corner of your screen:
turnin Of Fire and Thunder##33013
step
talk Lokra##72274
turnin Into the Boneslag##32991 |goto Frostfire Ridge/0 47.6,45.6
accept Moving Target##32992 |goto Frostfire Ridge/0 47.6,45.6
step
'_Go up_ the hill |goto Frostfire Ridge/0 48.6,46.4 < 20
'_Cross_ the snowfield |goto 50.6,49.9 < 20
'Find Lokra in Icewind Drifts |q Moving Target##32992/1 |goto 54.8,56.4
|modelnpc Lokra##72940
step
talk Lokra##72274
turnin Moving Target##32992 |goto Frostfire Ridge/0 55.5,56.6
accept The Strength of Our Bonds##32993 |goto Frostfire Ridge/0 55.5,56.6
step
'_Follow_ the path |goto Frostfire Ridge/0 57.7,58.0 < 20
'Karg Bloodfury located |q The Strength of Our Bonds##32993/1 |goto Frostfire Ridge/0 63.2,59.9
|modelnpc Karg Bloodfury##72373
step
talk Karg Bloodfury##72373
turnin The Strength of Our Bonds##32993 |goto Frostfire Ridge/0 63.2,60.0
step
'Standing next to you:
talk Karg Bloodfury##73097
accept Where's My Wolf?!##33826
accept Karg Unchained##33785
step
kill Beastmaster Torash##72864 |q Where's My Wolf?!##33826/1 |goto Frostfire Ridge/0 65.8,61.3
step
clicknpc Nerok##72500
'Break Nerok's chains |q Where's My Wolf?!##33826/2 |goto Frostfire Ridge/0 61.0,65.0
step
'Standing next to you:
talk Karg Bloodfury##73097
turnin Where's My Wolf?!##33826
accept Enfilade##32994
step
'Standing next to you:
talk Lokra##72940
accept The Master Siegesmith##33828
step
'Follow the road |goto Frostfire Ridge/0 62.0,69.5
kill Blackrock Siegesmith##73360, Thunderlord Apprentice##72328
.collect 5 Blackrock Blasting Powder##104039 |n |goto Frostfire Ridge/0 61.3,72.3
clicknpc Iron Horde Cannon##74936
'Iron Horde Cannons destroyed |q Enfilade##32994/1 |goto Frostfire Ridge/0 61.3,72.3
step
kill  Master Siegesmith Uratok##76594 |q The Master Siegesmith##33828/1 |goto Frostfire Ridge/0 62.5,75.0
step
talk Karg Bloodfury##73097
kill Thunderlord Apprentice##72328, Blackrock Siegesmith##73360
'Slay #25# Thunderlord Orcs |q Karg Unchained##33785/1 |goto Frostfire Ridge/0 61.5,72.5
step
'Standing next to you:
talk Karg Bloodfury##73097
turnin Karg Unchained##33785
turnin Enfilade##32994
step
'Standing next to you:
talk Lokra##72940
turnin The Master Siegesmith##33828
accept Return to the Pack##33493
step
talk Durotan##74163 |goto Frostwall/0 51.9,49.8 < 20
turnin To the Garrison##32796 |goto Frostwall/0 50.2,37.9
turnin Return to the Pack##33493 |goto 50.2,37.9
step
talk Gazlowe##78466
turnin The Land Provides##34960 |goto 52.5,53.4
accept Bigger is Better##36567 |goto 52.5,53.4
step
clicknpc Architect Table##86017
'Upgrade your garrison to Tier 2 |q Bigger is Better##36567/1 |goto Frostwall/0 52.3,53.5
step
talk Durotan##74163
accept The Thunderlord Clan Approaches...##37291 |goto 50.2,37.9
step
talk Sergeant Grimjaw##88228
'Prepare to battle the Iron Horde |q The Thunderlord Clan Approaches...##37291/1 |goto Frostwall/0 43.6,47.7
step
'Start the Scenario |goto 50.6,39.3 < 20 |c |q 37291
'Follow the Sergeant |scenariogoal 1/25172 |goto 50.6,39.3
scenariostage 1
step
kill Thunderlord Spearhand##88263+, Thunderlord Beastmaster##88265+, Thunderlord Beastmaster##88265+
'Defeat the Iron Horde Scouting Party |scenariostage 2 |goto Frostwall/0 52.7,26.9
scenariostage 2
step
kill Thunderlord Spearhand##88263+, Thunderlord Beastmaster##88265+, Thunderlord Beastmaster##88265+, Thunderlord Giantslayer##88272+ |tip Check all around your Garrison
'Endure the Iron Horde assault |scenariogoal 3/ 26775
scenariostage 3
step
'Kill the remaining forces |scenariostage 4 |goto Frostwall/0 49.5,38.7 |tip Kill any remaining Iron Horde and revive any Frostwolf Grunts you can |scenariogoal 4/24584
step
'Return to the town center |scenariostage 5 |goto Frostwall/0 50.6,35.5
step
kill 1 Aggar Thunder-Reaver##79609 |scenariogoal 5/24735 |goto Frostwall/0 52.7,27.0
'Repel the Invasion |q The Thunderlord Clan Approaches...##37291/2
scenariostage 6
step
talk Sergeant Grimjaw##88228
turnin The Thunderlord Clan Approaches...##37291 |goto Frostwall/0 43.7,47.8
step
talk Gazlowe##78466
turnin Bigger is Better##36567 |goto Frostwall/0 42.1,55.5
step
talk Durotan##74163
accept The Iron Wolf##33010 |goto Frostwall/0 50.2,37.9
step
'_Leave_ your Garrison |goto Frostwall/0 54.5,19.4 < 20
'_Cross_ the field |goto Frostfire Ridge/0 50.1,56.2 < 20
'_Follow the path_ into Grom'gar |goto 58.0,58.2 < 20
'_Continue_ along the path |goto 60.9,61.5 < 20
'_Enter_ The Hunter's Hall |goto Frostfire Ridge/6 24.8,58.5 < 20
kill The Iron Wolf##74225, Chilltongue##76477 |q The Iron Wolf##33010/1 |goto Frostfire Ridge/6 61.6,58.4
step
talk Thrall##76720
turnin The Iron Wolf##33010 |goto Frostfire Ridge/6 53.2,56.2
accept To Thunder Pass##34123 |goto Frostfire Ridge/6 53.5,56.0
step
'_Cross_ the field |goto Frostfire Ridge/0 62.8,59.4 < 20
'_Follow_ the path up |goto 69.0,57.0 < 20
talk Ja'kana##78699
fpath Darkspear's Edge |goto Frostfire Ridge 51.7,41.1
step
talk Lokra##76487
turnin To Thunder Pass##34123 |goto 73.4,58.8
accept The Battle of Thunder Pass##34124 |goto 73.4,58.8
step
talk Windhunter##87707
fpath Wolf's Stand |goto Frostfire Ridge/0 73.6,60.0
step
Run _along the rocky ridge_ |goto Frostfire Ridge 42.1,49.0 < 20
Run through the _snow covered area_ |goto 48.3,48.0 < 30
talk Shadow Hunter Mala##78209
accept Frosted Fury##34346 |goto Frostfire Ridge/0 52.5,40.4
step
talk Shadow Hunter Rala##78208
accept Lurkers##34344 |goto 52.6,40.4
accept Poulticide##34345 |goto 52.6,40.4
stickystart "new1"
stickystart "new2"
step
click Frostblossom## |tip Blue plants around the area.
Collect 10 Frostbloom Leaves |q Poulticide##34345/1 |goto Frostfire Ridge/0 53.9,39.1 |tip They look like shriveled up thorny vines
You can find more around this area |goto 54.7,39.4
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
accept The Real Prey##34348 |goto 52.6,40.4
step
'Make your way across The Cracking Plains
'Go to the Iceblister Den |goto Frostfire Ridge/0 54.0,29.3 |q The Real Prey##34348/1
step
use Vial of "Ogron Be-Gone"##110270
kill Grosh the Mighty##78230 |q The Real Prey##34348/2 |goto Frostfire Ridge/0 52.0,29.3
|tip He's an elite, so you will need to use Vial of "Ogron Be-Gone" on him to weaken him.
step
'_Leave_ the cave |goto Frostfire Ridge/0 53.7,29.4 < 20
'_Follow_ the path up |goto Frostfire Ridge/0 53.1,24.5 < 20
talk Brenna Skymoor##76787
fpath Bloodmaul Slag Mines |goto 51.4,21.4
step
talk Shadow Hunter Rala##78208
turnin The Real Prey##34348 |goto Frostfire Ridge/0 52.6,40.4
accept Oath of Shadow Hunter Rala##34731 |goto 52.6,40.4
step
'_Cross_ the Cracking Plains |goto Frostfire Ridge/0 55.2,43.6 < 30
talk Outrider Urukag##72976
accept A Proper Parting##33125 |goto Frostfire Ridge/0 66.0,49.1
accept Gut Guttra##33132 |goto Frostfire Ridge/0 66.0,49.1
stickystart "new3"
step
'_Go up_ the hill |goto Frostfire Ridge/0 67.3,48.2 < 20
'_Enter_ the building |goto 68.0,46.0 < 20
kill Guttra Wolfchew##72967 |q Gut Guttra##33132/1 |goto 68.3,45.6
step "new3"
accept Bonus Objective: Grimfrost Hill##33145 |goto Frostfire Ridge/0 65.8,46.7
kill 8 Grimfrost Wolfslayer##72953, Grimfrost Drudge##72955 |q Bonus Objective: Grimfrost Hill##33145/1
clicknpc Orphaned Frost Wolf##72991
'Free 3 Captured Frostwolves |goto Frostfire Ridge/0 66.7,46.5 |q Bonus Objective: Grimfrost Hill##33145/2
step
clicknpc Outrider Balul##73466
'Burn Outrider Balulu's corpse |q A Proper Parting##33125/3 |goto Frostfire Ridge/0 62.6,50.8
step
clicknpc Outrider Vorg##73482
'Burn Outrider Vorg's corpse |q A Proper Parting##33125/1 |goto Frostfire Ridge/0 62.0,50.3
step
clicknpc Outrider Lukar##73467
'Burn Outrider Lukar's corpse |q A Proper Parting##33125/2 |goto Frostfire Ridge/0 61.7,47.1
step
talk Outrider Urukag##72976
turnin A Proper Parting##33125 |goto Frostfire Ridge/0 66.0,49.1
turnin Gut Guttra##33132 |goto Frostfire Ridge/0 66.0,49.1
step
'Talk to Durotan |q The Battle of Thunder Pass##34124/1 |goto Frostfire Ridge/0 75.0,55.8 |modelnpc Durotan##76484
'Tell him "Let's move forward." |scenariogoal 1/24323 |goto Frostfire Ridge/0 75.0,55.8
step
'Survive the wave of enemies |scenariogoal 2/24324 |goto Frostfire Ridge/0 76.0,55.3
step
'Survive the wave of enemies |scenariogoal 2/24325 |goto Frostfire Ridge/0 75.9,55.1
step
kill Iron Clusterpult##76629
|scenariogoal 3/24315 |goto Frostfire Ridge/0 77.5,54.0
step
kill Blackrock Hammer-Sister##76633+, Iron Horde Grunt##76960+
'Survive the wave of enemies |scenariogoal 4/24326 |goto Frostfire Ridge/0 76.0,55.1
step
'Survive the wave of enemies |scenariogoal 4/24327 |goto Frostfire Ridge/0 76.0,55.1
step
kill Iron Horde Grunt##76960+, Blackrock Ironhusk##76639+, Blackrock Hammer-Sister##76633+
'Protect Drek'Thar |scenariogoal 5/24317 |goto Frostfire Ridge/0 77.4,55.7 |tip Fight your way up the ramp
step
kill Iron Horde Grunt##76960+, Vicious Longtusk##76624+, Thunderlord Trapper##76587+
'Survive the wave of enemies |scenariogoal 6/24329 |goto Frostfire Ridge/0 75.5,55.3 |tip Focus on the Vicious Longtusk
step
kill Iron Horde Grunt##76960+, Vicious Longtusk##76624+, Thunderlord Trapper##76587+
'Survive the wave of enemies |scenariogoal 6/24328 |goto Frostfire Ridge/0 75.5,55.3 |tip Focus on the Vicious Longtusk
step
kill Malgrim Stormhand##76630
'Slay Malgrim Stormhand |scenariogoal 7/24319 |goto Frostfire Ridge/0 77.6,54.0
step
kill Blackrock Hammer-Sister##76633+, Iron Horde Grunt##76960+, Blackrock Ironhusk##76639
'Survive the wave of enemies |scenariogoal 8/24330 |goto Frostfire Ridge/0 75.9,55.2
step
kill Blackrock Hammer-Sister##76633+, Iron Horde Grunt##76960+, Blackrock Ironhusk##76639
'Survive the wave of enemies |scenariogoal 8/24331 |goto Frostfire Ridge/0 75.9,55.2
step
kill Maggoc##20600 |scenariogoal 24302 |goto Frostfire Ridge/0 77.3,54.3
'1/1 Defend Frostfire Ridge from the Iron Horde |q The Battle of Thunder Pass##34124/2
step
talk Durotan##76484
turnin The Battle of Thunder Pass##34124 |goto Frostfire Ridge/0 76.1,55.2
accept The Secrets of Gorgrond##34867 |goto Frostfire Ridge/0 76.1,55.2
step
talk Makar Stonebinder##76730
accept The Frostwolves Stand Ready##37563 |goto 76.31,55.00
.'_
'Click here if he is not at the first location |goto Frostfire Ridge/0 78.3,55.1
step
talk Kal'gor the Honorable##76724
talk Greatmother Geyah##88655
talk Lokra##76487
'Choose a Follower |q The Frostwolves Stand Ready##37563/1 |goto Frostfire Ridge/0 76.4,54.9
step
talk Makar Stonebinder##76730
turnin The Frostwolves Stand Ready##37563 |goto 76.32,54.98
.'_
'Click here if he is not at the first location |goto Frostfire Ridge/0 78.3,55.1
step
'_Enter_ the cave |goto Frostfire Ridge/0 78.5,55.2 < 10
'_Exit_ the cave |goto 79.0,56.1 < 20
'Follow the _path up_ |goto Frostfire Ridge/0 82.3,60.1 < 20
fpath Thunder Pass |goto 83.6,60.9
step
'_Go through_ the thin rock walls |goto Frostfire Ridge/0 82.7,61.7 < 20
talk Scout Ruk'Gan##77210
accept Savage Vengeance##34066 |goto Frostfire Ridge/0 83.2,62.8
step
click Barbed Thunderlord Spear## |tip A long wooden spear sticking out of the ground.
accept Getting the Points##34069 |goto Frostfire Ridge/0 84.1,65.1
stickystart "thunderguard"
step
click Barbed Thunderlord Spear## |tip A long wooden spear sticking out of the ground.
collect 5 Barbed Thunderlord Spear##109056 |q Getting the Points##34069/1 |goto Frostfire Ridge/0 85.6,66.0
step "thunderguard"
kill 10 Iron Thunderguard##77147 |q Savage Vengeance##34066/1 |goto Frostfire Ridge/0 85.6,66.0
step
'_Go through_ the bones |goto 83.6,68.9 < 20
talk Scout Ruk'Gan##77210
turnin Savage Vengeance##34066 |goto 82.6,69.8
turnin Getting the Points##34069 |goto 82.6,69.8
accept A Collection of Coils##34264 |goto 82.6,69.8
step
kill Thunderlord Wrangler##77106+ |tip They are located all around this area
.collect 5 Coil of Sturdy Rope##109055 |q A Collection of Coils##34264/1 |goto Frostfire Ridge/0 83.4,65.6
step
'Go up the hill |goto Frostfire Ridge/0 83.1,68.7
talk Scout Ruk'Gan##77210
turnin A Collection of Coils##34264 |goto 82.6,69.7
accept Tar Get of Opportunity##34072 |goto 82.6,69.7
accept At the End of Your Rope##34070 |goto 82.6,69.7
step
clicknpc Thunderlord War Rylak##77122 |tip Look up in the sky
'Use the Barbed Harpoon in your inventory on Thunderlord War Rylaks |use Barbed Harpoon##109082
kill 5 Thunderlord Sky Rider##77111 |q At the End of Your Rope##34070/1 |goto Frostfire Ridge/0 83.9,67.8
step
kill Black Tar##81692
.collect 5 Glob of Sticky Tar##109080 |q Tar Get of Opportunity##34072/1 |goto Frostfire Ridge/0 86.3,70.3
step
'Follow the _path down_ |goto Frostfire Ridge/0 84.3,69.3
'_Go up_ the hill |goto 83.2,68.7
talk Scout Ruk'Gan##77210
turnin At the End of Your Rope##34070 |goto 82.6,69.8
turnin Tar Get of Opportunity##34072 |goto 82.6,69.8
accept Burn Them Down##34073 |goto 82.6,69.8
step
click Battle-Worn Frostwolf Banner## |tip A blue flagged banner with the Frostwolf logo.
accept The Mark of Defiance##34102 |goto Frostfire Ridge/0 82.6,69.8
stickystart "ST1"
step
'_Go into_ the passage |goto Frostfire Ridge/0 81.7,70.0
clicknpc North Incubator Cage##77539 |tip A wooden cage with iron wrappings.
'Destroy the North Incubator Cage |q Burn Them Down##34073/1 |goto Frostfire Ridge/0 81.8,71.7
step
'Go down the ramp |goto Frostfire Ridge/0 83.4,74.2
clicknpc South Incubator Cage##77703 |tip A wooden cage with iron wrappings.
'Burn the South Incubator Cage |q Burn Them Down##34073/3 |goto 83.4,75.1
step
clicknpc West Incubator Cage##77702 |tip A wooden cage with iron wrappings.
'West Incubator Cage Destroyed |q Burn Them Down##34073/2 |goto Frostfire Ridge/0 82.0,73.9
step "ST1"
kill Iron Thunderguard##77147, Thunderlord Sky-Slasher##77045, Thunderlord Hogbreaker##77046
'Impale Thunderlord Orc corpses with Battle-Worn Frostwolf Banner |q The Mark of Defiance##34102/1 |use Battle-Worn Frostwolf Banner##109196 |goto Frostfire Ridge/0 83.4,75.4
step
talk Scout Ruk'Gan##77210
turnin Burn Them Down##34073 |goto Frostfire Ridge/0 82.8,76.3
turnin The Mark of Defiance##34102 |goto 82.8,76.3
accept Vul'gaths End##34075 |goto 82.8,76.3
step
kill General Vul'gath##77104 |q Vul'gaths End##34075/1 |goto Frostfire Ridge/0 83.9,74.9
step
talk Scout Ruk'Gan##77210
turnin Vul'gaths End##34075 |goto Frostfire Ridge/0 82.8,76.3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Warlords of Draenor 90-100\\Gorgrond (92-94)",[[
next Zygor's Horde Leveling Guides\\Warlords of Draenor 90-100\\Talador (94-96)
image Gorgrond
condition suggested !exclusive
startlevel 92
step
talk Durotan##74594
turnin The Secrets of Gorgrond##34867 |goto Gorgrond/0 37.3,77.0
accept The Laughing Skull##33543 |goto Gorgrond/0 37.3,77.0
step
'Peacefully approach Deadgrin |q The Laughing Skull##33543/1 |goto Gorgrond/0 38.0,75.3
step
talk Ripfist##84176
turnin The Laughing Skull##33543 |goto Gorgrond/0 38.8,73.6
accept Goren, Goren, Gone!##33544 |goto Gorgrond/0 38.8,73.6
step
talk Kaz the Shrieker##76987
accept We Die Laughing!##33548 |goto Gorgrond/0 39.3,72.0
stickystart "acidtooth"
step
clicknpc Dead Laughing Skull##75164
get 7 Laughing Skull Mask##107338 |q We Die Laughing!##33548/1 |goto Gorgrond/0 38.9,72.3 |tip They laying on the ground around this town.
step "acidtooth"
kill 8 Acidtooth Devourer##79416 |q Goren, Goren, Gone!##33544/1 |goto Gorgrond/0 39.2,72.5 |tip They can be found all around Deadgrin
step
'Click the _Quest Complete_ box in the top right corner of your screen:
turnin Goren, Goren, Gone!##33544
step
talk Limbflayer##74611
accept Eye Candy##33563 |goto Gorgrond/0 40.5,71.9
step
kill Skothwa##79500
get Skothwa's Eye##114229 |q Eye Candy##33563/1 |goto Gorgrond/0 41.5,72.7
step
talk Kaz the Shrieker##74606
turnin We Die Laughing!##33548 |goto Gorgrond/0 41.4,74.1
step
talk Limbflayer##74611
turnin Eye Candy##33563 |goto 41.5,74.1
step
talk Durotan##74594
accept A Flare for the Dramatic##33593 |goto Gorgrond/0 41.5,74.1
step
'Use _Penny's Flare Gun_ |q A Flare for the Dramatic##33593/1 |use Penny's Flare Gun##115534 |goto Gorgrond/0 41.4,74.1 |tip It looks like a silver box with red wires.
step
talk Durotan##74594
turnin A Flare for the Dramatic##33593 |goto Gorgrond/0 41.5,74.1
accept Penny From Heaven##36434 |goto Gorgrond/0 41.5,74.1
step
'_Follow_ the path |goto Gorgrond/0 43.5,73.4
talk Penny Clobberbottom##85147
turnin Penny From Heaven##36434 |goto 45.7,70.6
accept Just Another Stick in the Wall##36460 |goto 45.7,70.6
step
click Penny's Plunger##9277
'Use Penny's Plunger |q Just Another Stick in the Wall##36460/1 |goto Gorgrond/0 45.7,70.6
step
talk Durotan##74594
turnin Just Another Stick in the Wall##36460 |goto Gorgrond/0 45.9,70.3
accept Your Base, Your Choice##35151 |goto Gorgrond/0 45.9,70.3
step
'Choose to build the Lowlands Lumber Yard |q Your Base, Your Choice##35151/1
'
'Or build Savage Fight Club |q Your Base, Your Choice##35151/1
|tip If you happen to close the window, talk to Durotan again and tell him "I am ready to make my choice."
step
talk Durotan##74594
turnin Your Base, Your Choice##35151 |goto Gorgrond/0 46.1,70.2
accept Rage and Wisdom##35880 |goto 46.08,70.19 |or |next "rage"
accept The Razorbloom##36474 |goto Gorgrond/0 46.1,70.2 |or |tip You will only be able to accept one of these quests. |next "wisdom"
step
label "rage"
fpath Beastwatch |goto Gorgrond/0 46.0,69.2
step
.home Beastwatch |future |q Power of the Genesaur##35416 |goto Gorgrond/0 46.0,69.7
step
talk Limbflayer##76688
accept A Rediscovered Legend##34697 |goto 46.3,69.7
step
talk Marrow##82732
accept Skulltakers in Crimson Fen##35667 |goto Gorgrond/0 46.3,70.0
step
'Travel along the _cobblestone path_ |goto Gorgrond/0 44.5,70.9 < 20
talk Bony Xuk##81202
turnin Rage and Wisdom##35880 |goto 43.55,65.03
accept A Harsh Reminder##35248 |goto 43.55,65.03
accept Seedbearers of Bad News##35035 |goto 43.55,65.03
step
talk Kash'drakor##79320
turnin A Rediscovered Legend##34697 |goto 42.77,63.08
accept Slave Hunters##34698 |goto 42.77,63.08
accept Nazgrel##34700 |goto 42.77,63.08
step
talk Beatface##79331
accept Krav'ogra##34702 |goto 42.71,63.08
step
talk Gladiator Akaani##79322
accept Getting Gladiators##34699 |goto 42.76,62.99
stickystart "rocketthrower"
step
clicknpc Ancient Seedbearer##82392
'Ancient Seedbearer burned |q Seedbearers of Bad News##35035/1 |goto Gorgrond/0 44.1,63.3
step "rocketthrower"
kill 8 Gronn Rockthrower##80689+, Goren Gouger##80690+ |q A Harsh Reminder##35248/1 |goto 43.64,63.76
step
talk Bony Xuk##81202
turnin A Harsh Reminder##35248 |goto 43.57,65.01
turnin Seedbearers of Bad News##35035 |goto 43.57,65.01
accept We Have Company##35025 |goto 43.57,65.01
step
talk Prowler Sasha##75008
accept Need More Teeth##34012 |goto 41.44,66.06
stickystart "ogreteeth"
step
'_Run up_ the wooden ramp to the top of the hut |goto Gorgrond/0 41.0,66.4 < 10
kill 1 Slave Hunter Krag##79623
get Pendant of Krag##111527 |q Slave Hunters##34698/2 |goto 41.14,66.21
step
click Shackle##181
'Free Bruto |q Getting Gladiators##34699/3 |goto 40.31,64.82
step
kill 1 Slave Hunter Brol##79621
get Pendant of Brol##108899 |q Slave Hunters##34698/1 |goto 40.45,66.72
step
click Challenge Gong##11042 |goto Gorgrond/0 40.4,67.6 |tip You will have to fight a few NPC's until Ok'mok shows up.
kill 1 Slavemaster Ok'mok##75864 |q Krav'ogra##34702/1	|goto 40.22,67.34
step
click Shackle##181
'Free Y'kish |q Getting Gladiators##34699/2 |goto 39.76,67.83
step
click Shackle##181 |tip It's inside the hut.
'Free Pitfighter Vaandaam |q Getting Gladiators##34699/1 |goto 39.15,67.23
step
'_Enter_ the hut |goto Gorgrond/0 39.0,68.2 < 10
kill 1 Slave Hunter Mol##79626
get Pendant of Mol##111528 |q Slave Hunters##34698/3 |goto 38.98,68.71
step
'_Enter_ the cave |goto Gorgrond/0 38.5,67.4 < 10
talk Bruto##77014
turnin Getting Gladiators##34699 |goto 36.87,67.92
accept The Axe of Kor'gall##34703 |goto 36.87,67.92
step
'_Go across_ the wooden |goto Gorgrond/0 36.6,68.1 < 10
kill 1 Kor'gall##77020
get Serathil##109023 |q The Axe of Kor'gall##34703/1 |goto 36.38,69.77
step
'_Jump_ off the ramp |goto Gorgrond/0 37.0,69.1 < 20
'_Enter_ the large room |goto 37.6,69.7 < 20
click Nazgrel's Cage## |tip It's a large cage made of stone and wood.
'Rescue Nazgrel |q Nazgrel##34700/1 |goto 36.85,70.56
step "ogreteeth"
'_Follow_ the pathway |goto Gorgrond/0 37.6,69.4 < 20
'_Exit_ the cave |goto 38.3,67.5 < 20
kill Stonemaul Slaver##75835+, Stonemaul Guard##75819+
get 30 Ogre Tooth##108898 |q Need More Teeth##34012/1 |goto 41.15,65.48
step
talk Prowler Sasha##75008
turnin Need More Teeth##34012 |goto 41.42,66.12
step
talk Beatface##79331
turnin Krav'ogra##34702 |goto 42.71,63.08
step
talk Gladiator Akaani##79322
turnin The Axe of Kor'gall##34703 |goto 42.76,62.98
step
talk Kash'drakor##79320
turnin Slave Hunters##34698 |goto 42.76,63.07
turnin Nazgrel##34700 |goto 42.76,63.07
accept The Sparring Arena##35152 |goto 42.76,63.07
step
talk Bruto##77014
accept The Interest of Bruto##35882 |goto 42.75,62.92
step
talk Limbflayer##76688
turnin The Sparring Arena##35152 |goto Gorgrond 46.3,69.7
step
talk Bruto##77014
accept The Interest of Bruto##35882 |goto 42.76,62.91
step
talk Marrow##82732
accept Reagents from Rakthoth##33694 |goto 46.28,69.98
step
'_Leave_ the camp |goto Gorgrond 45.3,70.7 < 20
_Go through_ the stone walls |goto 44.2,69.8 < 20
'_Continue_ along the stone path |goto 43.3,66.6 < 20
click Dying Beast##54173
'_Release the creature from its chains._
'Iron Horde camp investigated |q We Have Company##35025/1 |goto 44.26,61.61
step
talk Rexxar##82832
turnin We Have Company##35025 |goto 44.30,61.64
accept Cauterizing Wounds##35730 |goto 44.30,61.64
step
click Iron Horde Bonfire## |tip It looks like a fire with 3 big logs sticking out of it, in a metal base.
get Burning Log##113398 |q Cauterizing Wounds##35730/1 |goto 44.41,61.34
step
click Nisha##59274
'Cauterize Nisha's wounds |q Cauterizing Wounds##35730/2 |goto 44.27,61.58
step
talk Rexxar##82832
turnin Cauterizing Wounds##35730 |goto 44.28,61.64
accept On the Mend##35026 |goto 44.28,61.64
accept Basilisk Butcher##35870 |goto 44.28,61.64
stickystart "quenchingwater"
step
click Decaying Basilisk##38281+
kill Stoneshamble Basilisk##74962+
get 10 Basilisk Meat##113504 |q Basilisk Butcher##35870/1 |goto 44.43,59.41
step "quenchingwater"
kill Rippling Steamfury##83458+
get 100 Quenching Waters##113009 |q On the Mend##35026/1 |goto 45.23,60.80
step
'_Run up_ the dirt hill |goto Gorgrond 45.9,56.3 < 20
talk Nisha##81674
turnin On the Mend##35026 |goto 45.86,54.96
turnin Basilisk Butcher##35870 |goto 45.86,54.96
step
talk Rexxar##83569
accept Is This One of Yours?##35036 |goto 46.04,54.75
step
talk Rexxar##83569
'Tell him: "_This is one of my allies._"
'Vouch for Bony Xuk |q Is This One of Yours?##35036/1 |goto 46.04,54.75
step
talk Bony Xuk##84743
turnin Is This One of Yours?##35036 |goto 46.19,55.08
accept What the Bony Xuk?##35038 |goto 46.19,55.08
accept Xuk Me, Right?##35202 |goto 46.19,55.08
step
talk Rexxar##80856
accept Bad at Breaking##35037 |goto 46.04,54.75
accept Nisha's Vengeance##35934 |goto 46.04,54.75
step
talk Nisha##81674
fpath Breaker's Crown |goto Gorgrond/0 45.9,54.9
step
click Weaponization Orders## |tip It looks like a large book laying inside of a wagon.
accept The Gronn Strategy##35925 |goto 47.72,52.07
stickystart "grom'kar"
step
.kill 1 Gronnslaver Raz##83774 |q Bad at Breaking##35037/2 |goto 47.77,51.69
step
.kill 1 Mangled Boulderbreaker##85988 |q Bad at Breaking##35037/1 |goto 48.01,54.22
step "grom'kar"
.kill 10 Grom'kar Grunt##75091 |q Nisha's Vengeance##35934/1 |goto 47.56,54.73
stickystart "boneyardtunnel"
step
click Longtooth Gorger##54698
get 25 Goren Crystal##112911 |q What the Bony Xuk?##35038/1 |goto Gorgrond/0 44.5,51.
step "boneyardtunnel"
kill Boneyard Tunneler##81518+ |tip Look for the rumbling cirlces in the ground.
get 9 Goren Shell##112786 |q Xuk Me, Right?##35202/1 |goto 45.63,51.95
step
talk Bony Xuk##84743
turnin What the Bony Xuk?##35038 |goto 46.17,55.09
turnin Xuk Me, Right?##35202 |goto 46.17,55.09
step
talk Rexxar##80856
turnin Nisha's Vengeance##35934 |goto 46.04,54.75
turnin Bad at Breaking##35037 |goto 46.04,54.75
turnin The Gronn Strategy##35925 |goto 46.04,54.75
step
talk Bony Xuk##84743
accept Xuk It!##35041 |goto 46.20,55.07
step
click Goren Tunnel## |tip The tunnels are large circular mounds of dirt that are cracked open in the middle.
'See where the first tunnel leads |q Xuk It!##35041/1	|goto 46.89,55.39
step
click Bluff Rylak##52559
'Consume the Rylak |q Xuk It!##35041/2 |goto 45.80,50.39
step
click Goren Tunnel## |tip The tunnels are large circular mounds of dirt that are cracked open in the middle.
'See where the second tunnel leads |q Xuk It!##35041/3 |goto 45.79,50.37
'See where the third tunnel leads |q Xuk It!##35041/4
step
clicknpc Grom'kar Messenger##84503
'Search the Grom'kar Messenger's Body |q Xuk It!##35041/5 |goto 43.18,42.29
step
click Goren Tunnel## |tip The tunnels are large circular mounds of dirt that are cracked open in the middle.
'Take the tunnel back to Breaker's Crown |q Xuk It!##35041/6 |goto 42.99,42.48
step
talk Rexxar##80856
turnin Xuk It!##35041 |goto 46.04,54.75
accept Leave Every Soldier Behind##35129 |goto 46.04,54.75
accept Fair Warning##35128 |goto 46.04,54.75
step
talk Nisha##81674
'_Ride Nisha to Fissure of Fury_ |goto Gorgrond 45.9,55.0 < 5
'Fly to _Gronn Canyon_ |goto Gorgrond 43.9,48.8 < 50
talk Bony Xuk##84748
accept Zero Xuks Given##35247 |goto 43.90,48.83
step
talk Bony Xuk##84748
'Tell him: _You may commune with Gro the Uncreator._ |q Zero Xuks Given##35247/1 |goto 43.90,48.84
step
clicknpc Spirit of Bony Xuk##85980
turnin Zero Xuks Given##35247 |goto 44.10,48.81
accept Get the Xuk Outta Here!##36832 |goto 44.09,48.81
step
'_Follow the path_ down and around the cave |goto Gorgrond/18 42.4,65.1 < 20
'_Keep going down_ the curved path |goto 67.5,49.5 < 20
talk Corporal Thukmar##81213
'_Put the corporal out of his misery_
'Find Corporal Thukmar |q Leave Every Soldier Behind##35129/1 |goto Gorgrond/19 45.2,86.1
step
click Thukmar's Research##9901
'Recover Thukmar's Intel |q Leave Every Soldier Behind##35129/2 |goto 44.67,85.61
step
kill 1 Borogahn##81043 |q Fair Warning##35128/2 |goto Gorgrond/19 28.8,75.0
step
kill 8 Ogron Spinecrusher##81240 |q Fair Warning##35128/1 |oto Gorgrond/19 52.2,65.5
step
click Goren Tunnel## |tip It looks like a brown mound of dirt on the floor of the cave.
accept A Great Escape##35210 |goto 35.16,66.46
step
click Goren Tunnel## |tip It looks like a brown mound of dirt on the floor of the cave.
'Take the Tunnel to Rexxar |q A Great Escape##35210/1 |goto 35.16,66.46
step
talk Rexxar##84131
turnin Fair Warning##35128 |goto Gorgrond/0 43.9,48.8
turnin Leave Every Soldier Behind##35129 |goto Gorgrond/0 43.9,48.8
turnin A Great Escape##35210 |goto Gorgrond/0 43.9,48.8
accept Eye in the Sky##35139 |goto 43.94,48.83
step
talk Nisha##83933
'_Place your hand on Nisha's head._
'Scout with Nisha |q Eye in the Sky##35139/1 |goto 43.86,48.91
step
talk Rexxar##84131
turnin Eye in the Sky##35139 |goto 43.94,48.86
accept Chains of Iron##35136 |goto 43.94,48.86
step
'_Go up_ this part of the mountain |goto Gorgrond/0 42.0,49.0 < 20
accept Bonus Objective: Brimstone Springs##36603 |goto 40.74,52.53
kill 3 Grievous Depthworm##85942 |q Bonus Objective: Brimstone Springs##36603/3 |goto 40.74,52.54
kill 15 Sulfuric Ooze##85960 |q Bonus Objective: Brimstone Springs##36603/2 |goto 40.74,52.54
kill 8 Lesser Brimfury##85924 |q Bonus Objective: Brimstone Springs##36603/1 |goto 40.74,52.54
step
'_Follow the hill_ down the mountain |goto Gorgrond/0 41.9,49.0 < 20
'_Continue across_ the desert pathway |goto 43.9,48.5 < 20
accept Bonus Objective: Valley of Destruction##36480 |goto Gorgrond/0 47.3,47.8
'Break #15# Goren Eggs |q Bonus Objective: Valley of Destruction##36480/3 |goto Gorgrond/0 47.3,47.8 |tip You only need to walk over the eggs to break them.
kill 20 Goren Nibbler##81775 |q Bonus Objective: Valley of Destruction##36480/2	|goto Gorgrond/0 47.3,47.8
kill 5 Canyon Boulderbreaker##81246 |q Bonus Objective: Valley of Destruction##36480/1 |goto Gorgrond/0 45.6,46.0
step
goto Gorgrond/0 48.5,45.9
'Fight through the waves of enemies |tip Rexxar will be fighting along side you.
kill 1 Captain Brak##81254 |q Chains of Iron##35136/1 |goto 49.44,44.32
step
click Heart of the Magnaron## |tip It looks like a large ancient circle with a yellow core.
get Heart of the Magnaron##112680 |q Chains of Iron##35136/2 |goto 49.73,43.85
step
clicknpc Nisha##82118
Ride Nisha back to your outpost |invehicle |goto Gorgrond/0 49.6,44.5 | q 35136
step
'_Run up_ the dirt hill |goto Gorgrond/0 50.2,43.9 < 20
'_Go up and around_ the grassy area |goto 51.3,44.4 < 20
talk Rakthoth##81731
turnin Reagents from Rakthoth##33694 |goto 49.36,49.70
accept Plant Pruning##33689 |goto 49.35,49.70
accept Ambassador to the Ancient##33685 |goto 49.35,49.70
stickystart "ST8"
step
talk Birchus##81723 |q Ambassador to the Ancient##33685/1 |goto Gorgrond/0 50.3,47.5
step "ST8"
kill 12 Primal Growth##81769, Dionor Seedpriest##81721 |q Plant Pruning##33689/1 |goto Gorgrond/0 51.2,45.5
step
'_Enter_ the cave |goto Gorgrond/0 51.1,47.7 < 20
talk Rakthoth##85089
turnin Ambassador to the Ancient##33685 |goto 51.3,48.0
turnin Plant Pruning##33689 |goto 51.3,48.0
accept Beatface vs. Boulder##33662 |goto 51.27,47.95 |or
step
'_Leave the cave_ |goto Gorgrond/0 51.1,47.6 < 10
'_Run up_ the large hill and follow the path |goto Gorgrond/0 52.6,46.8 < 20
'Saberon camp breached |q Beatface vs. Boulder##33662/1 |goto 52.22,48.77
step
talk Rakthoth##82222
turnin Beatface vs. Boulder##33662 |goto 50.91,51.43
accept Steamscar "Reagents"##33661 |goto 50.91,51.43
step
click Saberon Stash## |tip Boxes with leather lids scattered around the area
accept The Sacking of the Saberon##33660 |goto Gorgrond/0 51.0,51.6
step
click Saberon Stash## |tip Boxes with leather lids scattered around the area
accept The Sacking of the Saberon##33660 |goto Gorgrond/0 51.0,51.6
step
.collect 8 Saberon Herb Bundle##115442 |q The Sacking of the Saberon##33660/1 |goto Gorgrond/0 50.7,53.2 |tip Check inside of the huts
kill Steamscar Warrior##81738
.collect 10 Saberon Heart##115443, Steamscar Primalist##81747 |q Steamscar "Reagents"##33661/1
step
'_Go up_ the hill |goto Gorgrond/0 52.2,50.5
talk Rakthoth##82225
turnin Steamscar "Reagents"##33661 |goto 52.9,51.8
turnin The Sacking of the Saberon##33660 |goto 52.9,51.8
accept Taking the Death Bloom##33695 |goto Gorgrond/0 52.9,51.8
step
'_Enter_ the cave |goto Gorgrond/0 53.7,51.8 < 20
kill Smokemaster Snarl##81749 |q Taking the Death Bloom##33695/1
.collect Dionor's Death Bloom##113187 |q Taking the Death Bloom##33695/1 |goto Gorgrond/0 54.3,52.6
step
'_Leave_ the cave |goto Gorgrond/0 53.8,51.8 < 20
'_Go down_ the hill |goto 52.5,51.0 < 20
'_Continue_ down the hill |goto Gorgrond/0 52.2,48.7 < 20
'_Jump down_ the ledge |goto 51.9,46.6
talk Birchus##82302
turnin Taking the Death Bloom##33695 |goto Gorgrond/0 50.3,47.5
accept Laying Dionor to Rest##33706 |goto Gorgrond/0 50.3,47.5
step
'Wait for the Ritual to Complete |q Laying Dionor to Rest##33706/1 |goto 50.29,47.52
step
talk Birchus##82302
turnin Laying Dionor to Rest##33706 |goto Gorgrond/0 50.3,47.5
step
talk Durotan##74594
turnin Chains of Iron##35136 |goto 46.10,70.17
accept Strike While the Iron is Hot##36573 |goto 46.10,70.17
step
accept Bonus Objective: The Razorbloom##36500 |goto 49.42,71.64
kill 1 Voice of Iyu##81634 |q Bonus Objective: The Razorbloom##36500/2 |goto 49.42,71.64
kill Infested Orc##81617+, Infested Behemoth##82841+
kill 12 Infested |q Bonus Objective: The Razorbloom##36500/1 |goto Gorgrond 48.3,71.4
'Squish 25 Toxic Slimemold |q Bonus Objective: The Razorbloom##36500/3 |goto Gorgrond 48.3,71.4 |tip They are small green slimes all over the area in groups.  Walk on them to squish them.
step
_Jump down_ and follow the path |goto Gorgrond 47.8,70.5 < 20
accept Bonus Objective: Mistcreep Mire##36563 |goto Gorgrond/0 50.3,69.4
kill 25 Hydra Egg##85786 |q Bonus Objective: Mistcreep Mire##36563/2 |goto Gorgrond/0 52.5,67.6
kill 5 Lernaea Vilescale##85693 |q Bonus Objective: Mistcreep Mire##36563/1 |goto Gorgrond/0 51.7,67.7
step
talk Grulkor##81218
turnin Skulltakers in Crimson Fen##35667 |goto 54.5,66.7
accept Basic Skulltaking##35016 |goto Gorgrond/0 54.5,66.7
step
talk Dying Skulltaker##81185
accept Skulltaker's Revenge##35017 |goto 54.83,65.27
stickystart "skulltaker"
step
clicknpc Dead Skulltaker##80807
get 5 Skulltaker Skull##112640 |q Basic Skulltaking##35016/1 |goto Gorgrond/0 56.4,63.0
step "skulltaker"
kill 7 Fungal Lurcher##80714 |q Skulltaker's Revenge##35017/1 |goto Gorgrond/0 56.1,61.8
.collect Glowing Red Pod##112378 |n
'Use the Glowing Red Pod |use Glowing Red Pod##112378
accept Mysterious Pod##35021
step
talk Grulkor##80757
turnin Basic Skulltaking##35016 |goto Gorgrond/0 57.2,62.0
turnin Skulltaker's Revenge##35017 |goto 57.2,62.0
turnin Mysterious Pod##35021 |goto 57.2,62.0
accept Clearing the Way##35027 |goto Gorgrond/0 57.2,62.0
accept The Secret of the Fungus##35029 |goto 57.2,62.0
stickystart "coveredshambler"
step
click Glowing Mushroom##9804
get 5 Glowing Mushroom##112672 |q The Secret of the Fungus##35029/1 |goto Gorgrond/0 57.7,60.7
step "coveredshambler"
kill 6 Fungus Covered Shambler##80721 |q Clearing the Way##35027/1 |goto Gorgrond/0 57.7,60.7
step
talk Grulkor##80757
turnin Clearing the Way##35027 |goto Gorgrond/0 57.2,62.0
turnin The Secret of the Fungus##35029 |goto 57.2,62.0
accept A Grim Harvest##35030 |goto Gorgrond/0 57.2,62.0
accept A Heartfelt Search##35031 |goto 57.2,62.0
step
kill Fungal Stomper##80739
collect 3 Enlarged Stomper Spore Pod##112394 |q A Grim Harvest##35030/1 |goto Gorgrond/0 58.6,63.2
step
click Drained Fungal Heart## |tip An oversized red and orange flower blossom
'Inspect the Strange Fungus Site|q A Heartfelt Search##35031/1 |goto 58.92,62.53
step
talk Grulkor##81241
turnin A Grim Harvest##35030 |goto Gorgrond/0 58.9,62.5
turnin A Heartfelt Search##35031 |goto 58.9,62.5
accept Heart of the Fen##35040 |goto Gorgrond/0 58.9,62.5
step
kill Grulkor##86157
'Stop Grulkor |q Heart of the Fen##35040/1 |goto Gorgrond/0 61.2,61.9
step
'_Run out_ of the area and follow this path |goto Gorgrond/0 59.5,58.3 < 20
'_Jump up_ the small hill to the next path |goto 59.5,53.4 < 20
accept Bonus Objective: Iyun Weald##36571 |goto 62.73,53.46 |tip Avoid Biolante as you do this quest.  It's an elite that patrols around this area.
click Thorny Leafling##85809 |tip They are small enemies on the ground around this area.
'Punt 20 Thorny Leafling |q Bonus Objective: Iyun Weald##36571/2 |goto Gorgrond/0 60.9,54.7
kill 6 Weald Stinger##85807+ |q Bonus Objective: Iyun Weald##36571/3 |goto Gorgrond/0 60.9,54.7
kill 12 Thorny Stabber##80744+ |q Bonus Objective: Iyun Weald##36571/1 |goto Gorgrond/0 60.9,54.7
step
talk Marrow##82732
turnin Heart of the Fen##35040 |goto 46.29,69.98
step
talk Durotan##74594
accept Strike While the Iron is Hot##36573 |goto 46.10,70.19
step
talk Grinslicer##81055 |goto Gorgrond/0 46.0,69.2
'Tell him _"I am needed urgently at the Iron Docks."_ |q A Chink in the Armor##36573/1 |goto 45.98,69.26
step
'Start the Scenario |goto Gorgrond/0 44.7,17.8 |c |only if not completedq(36573,2)
step
talk Draka##86401 |goto Gorgrond/0 44.7,17.8
'Tell her _"Let's go."_
'Confront Commander Gar |scenariogoal 1/25388
step
'Use the Artifact to eliminate your enemies |scenariogoal 2/25389 |goto Gorgrond/0 44.3,16.4 |tip The ability is located at the center of the screen
step
'Defeat the incoming enemies |scenariogoal 3/25390 |goto Gorgrond/0 44.4,16.4
step
'Defeat Groc |scenariogoal 4/25391 |goto Gorgrond/0 44.0,15.7
step
'Defeat Commander Gar |scenariogoal 5/25392 |goto Gorgrond/0 44.3,16.5
step
fpath Iron Docks |goto Gorgrond/0 43.0,20.2
step
talk Durotan##74594
turnin Strike While the Iron is Hot##36573 |goto 46.10,70.20
step
stickystart "bloomweavers"
step
'_Leave Beastwatch_ |goto Gorgrond/0 45.7,70.5 < 20
'_Ride along_ the stone road |goto 45.1,73.5 < 20
'_Enter_ Evermoon Springs through the vines |goto 44.7,79.2 < 20
accept Bonus Objective: Evermorn Springs##36504
kill Infested Ogron##82062 |q Bonus Objective: Evermorn Springs##36504/2 |goto Gorgrond 42.8,80.6
kill 10 Bloom Weaver##81575 |q Bonus Objective: Evermorn Springs##36504/1 |goto Gorgrond/0 42.8,81.7
step
'_Go up_ the grassy path |goto Gorgrond/0 42.3,82.2 < 20
'_Enter_ The Compost Heap |goto 40.7,83.8 < 20
kill 3 Dew Master##81553 |q Bonus Objective: Evermorn Springs##36504/3 |goto Gorgrond 39.6,81.7
step
'_Travel through_ the vines and up the path |goto Gorgrond/0 42.1,86.1 < 20
talk Chucklespine##84495
fpath Evermorn Springs |goto 41.3,87.2
stickystart "tailthrasheraxebreak"
step
'_Follow the path_ up and over |goto Gorgrond/0 42.3,88.2 < 20
'_Go down_ the hill to Tailthrasher Basin |goto 43.0,90.4 < 30
'_Enter_ the cave |goto Gorgrond 44.7,90.1 < 10
accept Bonus Objective: Tailthrasher Basin##36520
kill Skull Thrash## |q Bonus Objective: Tailthrasher Basin##36520/3 |goto Gorgrond 44.4,88.8
step "tailthrasheraxebreak"
accept Bonus Objective: Tailthrasher Basin##36520
from Tailthrasher Brute##85724+, Tailthrasher Stalker##85718+, Tailthrasher Ambusher##85703+, Tailthrasher Vinebender##85725+
kill 12 Tailthrasher Saberon |q Bonus Objective: Tailthrasher Basin##36520/1 |goto Gorgrond 44.9,90.9
click Rope Spike## |tip They look like bundles of wooden sticks standing upright around this area, with various colored tucan birds flying in circles above them.
'Free 6 Jungle Axebreaks |q Bonus Objective: Tailthrasher Basin##36520/2 |goto Gorgrond 44.9,90.9
step
.talk 84508
fpath Bastion Rise |goto Gorgrond/0 47.4,90.8
stickystart "podlingsjars"
step
'_Go along_ the path and leave Deeproot |goto Gorgrond/0 48.3,86.6 < 20
'_Follow the cobblestone road_ into the Ruins |goto 49.0,81.1 < 20
accept Bonus Objective: Ruins of the First Bastion##35881
kill Malkor##83452 |q Bonus Objective: Ruins of the First Bastion##35881/3 |goto Gorgrond 52.1,81.3
step "podlingsjars"
accept Bonus Objective: Ruins of the First Bastion##35881
from Frenzied Spitter##83450+, Frenzied Forager##83449+
kill 20 Frenzied Podlings |q Bonus Objective: Ruins of the First Bastion##35881/1 |goto Gorgrond 50.4,80.0
click Ancient Ogre Hoard Jar## |tip They look like brown and white containers that look like vases on the ground around this area.
'Loot 8 Ancient Jars |q Bonus Objective: Ruins of the First Bastion##35881/2 |goto Gorgrond 50.4,80.0
stickystart "bonuscaves"
step
'_Go over_ the hill and leave the ruins |goto Gorgrond/0 50.5,78.4 < 20
'_Climb the rocky hill_ |goto Gorgrond/0 51.7,77.3 < 20
'_Enter_ The Forgotten Caves |goto 51.3,77.9 < 10
accept Bonus Objective: The Forgotten Caves##34724
'_Take the left path_ in the cave |goto Gorgrond 52.0,78.7 < 10
'_Run or jump_ up the path next to the cave pillar |goto Gorgrond 53.4,79.5 < 10
kill Gorg the Host##76496 |q Bonus Objective: The Forgotten Caves##34724/3 |goto Gorgrond/0 53.7,79.5
step "bonuscaves"
accept Bonus Objective: The Forgotten Caves##34724
'All around in the cave:
kill 15 Spider Egg Sac##76548 |q Bonus Objective: The Forgotten Caves##34724/2 |goto Gorgrond/0 51.5,78.8 |tip They looks like big white wriggling cocoons.
from Pale Spiderwalker##76534+, Pale Flinger##76465+
kill 12 Pale |q Bonus Objective: The Forgotten Caves##34724/1 |goto Gorgrond/0 51.5,78.8
stickystart "tangle1"
step
'_Leave_ The Forgotten Caves |goto 51.3,77.9 < 10
'_Run over_ the bumpy terrain |goto Gorgrond/0 53.5,74.9 < 20
'_Go through_ the path of huge thorny vines |goto Gorgrond 56.1,71.5 < 20
accept Bonus Objective: Tangleheart##36564
kill Ontogen the Harvester##82372 |q Bonus Objective: Tangleheart##36564/3 |goto Gorgrond 59.9,71.1
step "tangle1"
accept Bonus Objective: Tangleheart##36564
click Pollen Pod## |tip They are yellow-orange spiky looking plant blulbs on the ground around this area.
'Destroy 10 Pollen Pods |q Bonus Objective: Tangleheart##36564/2 |goto Gorgrond/0 60.6,67.0
kill 15 Tangleheart Cultivator##82322 |q Bonus Objective: Tangleheart##36564/1 |goto Gorgrond/0 61.7,64.5 |tip They aren't heavily packed together, so just run around this whole area and kill them when you find them.
step
talk Durotan##74594
accept News from Talador##36494 |goto 46.10,70.18
step
talk Rokhan##78487
turnin News from Talador##36494 |goto Frostwall/0 45.9,42.7
accept It's a Matter of Strategy##34681 |goto Frostwall/0 45.9,42.7
step
talk Bron Skyhorn##79407 |goto Frostwall/0 45.8,50.9 < 5
'Tell him _"Take me to my base in Talador."_ |goto Talador/0 72.0,28.3 < 20
talk Foreman Grobash##79176
turnin It's a Matter of Strategy##34681 |goto Talador/0 71.1,29.8
|next "end"
step
label "wisdom"
fpath Beastwatch |goto Gorgrond/0 46.0,69.2
step
home Beastwatch |future |q Power of the Genesaur##35416 |goto Gorgrond/0 46.0,69.7
step
talk Penny Clobberbottom##85077
accept Tangleheart##35707 |goto Gorgrond 46.4,69.7
step
'_Follow_ the path down |goto Gorgrond/0 46.9,69.9
talk Draka##74593
turnin The Razorbloom##36474 |goto 46.6,71.5
accept The Infested##35400 |goto Gorgrond/0 46.6,71.5
step
talk Kaz the Shrieker##74606
accept Mossy Fate##35399 |goto Gorgrond/0 46.6,71.5
accept The Voice of Iyu##35402 |goto 46.6,71.5
stickystart "ST1"
step
clicknpc Meka the Face Chewer##82215
'Find Meka the Face Chewer |q Mossy Fate##35399/1 |goto Gorgrond/0 47.9,73.0
step
clicknpc Torg Earkeeper##82193
'Find Torg Earkeeper |q Mossy Fate##35399/3 |goto Gorgrond/0 47.3,73.4
step
clicknpc Chag the Noseless##82217
'Find Chag the Noseless |q Mossy Fate##35399/2 |goto Gorgrond/0 48.2,73.8
step
.' Follow the path down |goto Gorgrond 49.3,73.1 <10
.kill Voice of Iyu##81634 |q The Voice of Iyu##35402/1 |goto 49.5,71.7
step
click Enriched Seeds##11/24/2014 |tip It's a wooden bowl with seeds in it next to the building that Iyu is in.
accept Super Seeds##35406 |goto Gorgrond/0 49.5,70.9
step "ST1"
kill 6 Infested Orc##81617, Infested Behemoth##82841 |q The Infested##35400/1 |goto Gorgrond/0 47.4,72.6 |tip They are all around this area
step
talk Kaz the Shrieker##74606
turnin Mossy Fate##35399 |goto Gorgrond/0 46.6,71.5
turnin The Voice of Iyu##35402 |goto 46.6,71.5
turnin Super Seeds##35406 |goto 46.6,71.5
accept Pollen Power##35429 |goto 46.6,71.5
step
talk Draka##74593
turnin The Infested##35400 |goto 46.6,71.5
accept Bushwhacker##35432 |goto Gorgrond/0 46.6,71.5
step
talk Kaz the Shrieker##74606
accept Cutter##35430 |goto Gorgrond/0 46.6,71.5
step
'_Follow_ the path down |goto Gorgrond/0 46.0,73.3 < 20
kill Thicket Ravager##81561, Golden Pollinator##81557
get 20 Potent Pollen##112909 |q Pollen Power##35429/1 |goto Gorgrond/0 45.6,80.7
step
'_Follow_ the cobblestone road |goto Gorgrond 48.6,81.3 < 20
accept Bonus Objective: Ruins of the First Bastion##35881
kill Malkor##83452 |q Bonus Objective: Ruins of the First Bastion##35881/3 |goto Gorgrond 52.1,81.3
step "podlingsjars"
accept Bonus Objective: Ruins of the First Bastion##35881
from Frenzied Spitter##83450+, Frenzied Forager##83449+
kill 20 Frenzied Podlings |q Bonus Objective: Ruins of the First Bastion##35881/1 |goto Gorgrond 50.4,80.0
click Ancient Ogre Hoard Jar## |tip They look like brown and white containers that look like vases on the ground around this area.
'Loot 8 Ancient Jars |q Bonus Objective: Ruins of the First Bastion##35881/2 |goto Gorgrond 50.4,80.0
step
'_Cross through_ the two hills |goto Gorgrond 50.5,78.3 < 20
'_Follow_ the path up the hill |goto Gorgrond 51.0,77.0 < 20
'_Enter_ the cave |goto Gorgrond 51.4,77.6 < 10
accept Bonus Objective: The Forgotten Caves##34724 |goto 51.35,77.72
stickystart "bonuscaves"
step
accept Bonus Objective: The Forgotten Caves##34724
'_Take the left path_ in the cave |goto Gorgrond 52.0,78.7 < 10
'_Run or jump_ up the pathWWW next to the cave pillar |goto Gorgrond 53.4,79.5 < 10
kill Gorg the Host##76496 |q Bonus Objective: The Forgotten Caves##34724/3 |goto Gorgrond/0 53.7,79.5
step "bonuscaves"
accept Bonus Objective: The Forgotten Caves##34724
'All around in the cave:
kill 15 Spider Egg Sac##76548 |q Bonus Objective: The Forgotten Caves##34724/2 |goto Gorgrond/0 51.5,78.8 |tip They looks like big white wriggling cocoons.
from Pale Spiderwalker##76534+, Pale Flinger##76465+
kill 12 Pale |q Bonus Objective: The Forgotten Caves##34724/1 |goto Gorgrond/0 51.5,78.8
step
'_Leave_ Beastwatch |goto Gorgrond 45.7,70.5 < 20
'_Run along_ the stone path |goto 45.4,74.6 < 20
'_Follow_ the path into the opening |goto Gorgrond/0 44.0,79.6 < 20
'_Go up_ the hill |goto 43.5,82.7 < 20
talk Cutter##82254
turnin Cutter##35430 |goto 43.7,84.0
accept A Green Ogron?##36482 |goto 43.7,84.0
accept We Burn the Dead##35487 |goto Gorgrond/0 43.7,84.0
stickystart "ST2"
stickystart "bloomweaver"
step
kill 1 Infested Ogron##82062 |q A Green Ogron?##36482/1 |goto Gorgrond/0 42.8,80.6
step "ST2"
clicknpc Mulching Body##85563 |tip They are all around the area. Check inside of the huts as well
'Bodies burned |q We Burn the Dead##35487/1
step "bloomweaver"
kill 7 Bloom Weaver##81575 |q Bushwhacker##35432/1 |goto Gorgrond/0 43.0,78.9
step
'He will be next to you if you are near _Evermorn Springs_
talk Cutter##82254
turnin A Green Ogron?##36482 |goto Gorgrond/0 42.7,81.5
turnin We Burn the Dead##35487 |goto Gorgrond/0 42.7,81.5
accept Secrets of the Botani##35536 |goto Gorgrond/0 42.7,81.5
step
'_Go up_ the hill |goto Gorgrond/0 42.4,82.0 < 20
'_Pass through_ the opening |goto 41.1,83.7 < 20
talk Draka##82233
turnin Bushwhacker##35432 |goto Gorgrond/0 42.1,85.8
step
talk Kaz the Shrieker##82228
turnin Secrets of the Botani##35536 |goto 42.1,85.9
turnin Pollen Power##35429 |goto 42.1,85.9
accept The Life Spring##35434 |goto Gorgrond/0 42.1,85.9
step
talk Draka##82233
accept Cut Them Down##35433 |goto Gorgrond/0 42.1,85.8
step
fpath Evermorn Springs |goto Gorgrond/0 41.3,87.2
stickystart "dewmaster"
step
'_Follow_ the path through the field |goto Gorgrond/0 41.2,84.4 < 20
'_Enter_ the watery area |goto Gorgrond/0 39.9,82.1 < 20
kill Utrophis##75094
get Waters of Utrophis##112905 |q The Life Spring##35434/1 |goto Gorgrond/0 40.6,81.8
step "dewmaster"
kill 3 Dew Master##81553+ |q Cut Them Down##35433/1 |goto 39.9,82.0
step
'_Go down_ the path |goto Gorgrond/0 40.2,83.3 < 20
talk Kaz the Shrieker##82228
turnin The Life Spring##35434 |goto 42.1,85.9
step
talk Draka##82233
turnin Cut Them Down##35433 |goto 42.1,85.8
step
talk Kaz the Shrieker##82228
accept Thieving Dwarves##36488 |goto Gorgrond/0 42.1,85.9
stickystart "ST3"
step
'_Go up_ the hill |goto Gorgrond/0 41.9,87.1 < 20
'_Go through_ the narrow path |goto 42.8,88.8 < 20
accept Bonus Objective: Tailthrasher Basin##36520 |goto Gorgrond/0 43.8,91.0
clicknpc Rope Spike##85810
'Jungle Axebeak Freed |q Bonus Objective: Tailthrasher Basin##36520/2 |goto Gorgrond 45.2,90.6
step
'_Enter_ the cave |goto Gorgrond/0 44.7,90.1
kill Skull Thrash##85733 |q Bonus Objective: Tailthrasher Basin##36520/3 |goto 44.6,89.0
step "ST3"
kill 12 Tailthrasher Stalker##85718, Tailthrasher Ambusher##85703 |q Bonus Objective: Tailthrasher Basin##36520/1 |goto Gorgrond/0 43.8,92.4
step
talk Cutter##85601
turnin Thieving Dwarves##36488 |goto Gorgrond/0 46.5,93.6
accept Will of the Genesaur##35509 |goto 46.48,93.57
accept Down the Goren Hole##35507 |goto 46.48,93.57
stickystart "ST4"
step
'_Go through_ the passage |goto Gorgrond/0 47.8,93.6
click Doomshot## |tip A large metal casing in the shape of a bullet
accept Doomshot##35501 |goto Gorgrond/16 47.4,29.0
step
click Doomshot## |tip A large metal casing in the shape of a bullet
get 4 Doomshot##112990 |q Doomshot##35501/1 |goto Gorgrond/16 66.3,49.8
step
'_Go through_ the small passage |goto Gorgrond/17 55.8,49.5 < 10
click Will of Genesaur## |tip It's a box shape with two handles and a glowing glass dome on top.
get Will of the Genesaur##112993 |q Will of the Genesaur##35509/1 |goto 58.8,23.0
step "ST4"
kill 7 Acidmouth Breacher##81690 |q Down the Goren Hole##35507/1 |goto Gorgrond/17 62.2,61.9
step
click Weapon Loader## |tip A large wooden crate filled with munitions
turnin Doomshot##35501 |goto 45.0,25.8
step
talk Cutter##82334
turnin Will of the Genesaur##35509 |goto Gorgrond/17 50.0,22.2
turnin Down the Goren Hole##35507 |goto 50.0,22.2
accept Iyu##35510 |goto Gorgrond/17 50.0,22.1
step
kill Iyu##78819 |q Iyu##35510/1 |goto Gorgrond/0 47.5,92.5
step
talk Draka##82337
turnin Iyu##35510 |goto Gorgrond/0 47.7,93.3
accept Power of the Genesaur##35416 |goto 47.7,93.3
step
talk Kaz the Shrieker##82338
accept Kaz the Shrieker##35511 |instant |goto Gorgrond/0 47.8,93.3
step
talk Durotan##74594
turnin Power of the Genesaur##35416 |goto 46.1,70.2
step
talk Marrow##82732
accept Reagents from Rakthoth##33694 |goto Gorgrond/0 46.3,70.0
step
_Jump down_ and follow the path |goto Gorgrond 47.8,70.5 < 20
accept Bonus Objective: Mistcreep Mire##36563 |goto Gorgrond/0 50.3,69.4
kill 25 Hydra Egg##85786 |q Bonus Objective: Mistcreep Mire##36563/2 |goto Gorgrond/0 52.5,67.6
kill 5 Lernaea Vilescale##85693 |q Bonus Objective: Mistcreep Mire##36563/1 |goto Gorgrond/0 51.7,67.7
step
talk Grulkor##81218
turnin Skulltakers in Crimson Fen##35667 |goto 54.5,66.7
accept Basic Skulltaking##35016 |goto Gorgrond/0 54.5,66.7
stickystart "skulltaker"
step
talk Dying Skulltaker##81185
accept Skulltaker's Revenge##35017 |goto 54.83,65.27
step
clicknpc Dead Skulltaker##80807
get 5 Skulltaker Skull##112640 |q Basic Skulltaking##35016/1 |goto Gorgrond/0 56.4,63.0
step "skulltaker"
kill 7 Fungal Lurcher##80714 |q Skulltaker's Revenge##35017/1 |goto Gorgrond/0 56.1,61.8
collect Glowing Red Pod##112378 |n
'Use the Glowing Red Pod |use Glowing Red Pod##112378
accept Mysterious Pod##35021
step
talk Grulkor##80757
turnin Basic Skulltaking##35016 |goto Gorgrond/0 57.2,62.0
turnin Skulltaker's Revenge##35017 |goto 57.2,62.0
turnin Mysterious Pod##35021 |goto 57.2,62.0
accept Clearing the Way##35027 |goto Gorgrond/0 57.2,62.0
accept The Secret of the Fungus##35029 |goto 57.2,62.0
stickystart "fungusshambler"
step
click Glowing Mushroom##9804
get 5 Glowing Mushroom##112672 |q The Secret of the Fungus##35029/1 |goto Gorgrond/0 57.7,60.7
step "fungusshambler"
kill 6 Fungus Covered Shambler##80721 |q Clearing the Way##35027/1 |goto Gorgrond/0 57.7,60.7
step
talk Grulkor##80757
turnin Clearing the Way##35027 |goto Gorgrond/0 57.2,62.0
turnin The Secret of the Fungus##35029 |goto 57.2,62.0
accept A Grim Harvest##35030 |goto Gorgrond/0 57.2,62.0
accept A Heartfelt Search##35031 |goto 57.2,62.0
step
kill Fungal Stomper##80739
collect 3 Enlarged Stomper Spore Pod##112394 |q A Grim Harvest##35030/1 |goto Gorgrond/0 58.6,63.2
step
click Drained Fungal Heart## |tip An oversized red and orange flower blossom
'Inspect the Strange Fungus Site|q A Heartfelt Search##35031/1 |goto 58.92,62.53
step
talk Grulkor##81241
turnin A Grim Harvest##35030 |goto Gorgrond/0 58.9,62.5
turnin A Heartfelt Search##35031 |goto 58.9,62.5
accept Heart of the Fen##35040 |goto Gorgrond/0 58.9,62.5
step
kill Grulkor##86157
'Stop Grulkor |q Heart of the Fen##35040/1 |goto Gorgrond/0 61.2,61.9
step
'_Run out_ of the area and follow this path |goto Gorgrond/0 59.5,58.3 < 20
'_Jump up_ the small hill to the next path |goto 59.5,53.4 < 20
accept Bonus Objective: Iyun Weald##36571 |goto 62.73,53.46 |tip Avoid Biolante as you do this quest.  It's an elite that patrols around this area.
click Thorny Leafling##85809 |tip They are small enemies on the ground around this area.
'Punt 20 Thorny Leafling |q Bonus Objective: Iyun Weald##36571/2 |goto Gorgrond/0 60.9,54.7
kill 6 Weald Stinger##85807+ |q Bonus Objective: Iyun Weald##36571/3 |goto Gorgrond/0 60.9,54.7
kill 12 Thorny Stabber##80744+ |q Bonus Objective: Iyun Weald##36571/1 |goto Gorgrond/0 60.9,54.7
step
'_Run down_ the small hill |goto Gorgrond 59.3,53.6 < 20
'_Continue down_ the path |goto 59.6,57.2 < 20
'Make your way _through_ the Crimson Fen |goto Gorgrond 58.4,62.7 < 20
'_Continue_ along the path |goto 56.1,63.4 < 20
'_Climb up_ the hill |goto 54.3,67.7 < 20
'_Go up_ the hill |goto 55.5,71.1 < 20
talk Penny Clobberbottom##82574
turnin Tangleheart##35707 |goto 55.9,71.5
accept Growing Wood##35506 |goto Gorgrond/0 55.9,71.5
step
talk Thuldren##84811
accept Lost Lumberjack##35505 |goto Gorgrond/0 55.9,71.6
step
talk Frenna##82569
turnin Lost Lumberjack##35505 |goto Gorgrond/0 57.1,71.9
accept Chapter I: Plant Food##35508 |goto Gorgrond/0 57.1,71.9
accept Chapter II: The Harvest##35527 |goto 57.1,71.9
accept Chapter III: Ritual of the Charred##35524 |goto 57.1,71.9
stickystart "growthsap"
stickystart "pollenpod"
stickystart "ST5"
step
kill Ontogen the Harvester##82372 |q Chapter II: The Harvest##35527/1 |goto Gorgrond/0 59.9,71.1
step "growthsap"
kill Tangled Sapling##82437, Greenbough Ancient##82360, Tangleheart Cultivator##82322
get 100 Ancient Growth Sap##113136 |q Growing Wood##35506/1 |goto Gorgrond/0 60.2,67.5
step "pollenpod"
click Pollen Pod## |tip Red plants with yellow glowing centers
'Pollen Pod destroyed |q Chapter I: Plant Food##35508/1 |goto Gorgrond/0 60.2,67.5
step "ST5"
kill 4 Greenbough Ancient##82360 |q Chapter III: Ritual of the Charred##35524/1 |goto Gorgrond/0 60.2,67.5
step
talk Penny Clobberbottom##82574
turnin Growing Wood##35506 |goto 60.71,64.78
turnin Chapter I: Plant Food##35508 |goto 60.71,64.78
turnin Chapter II: The Harvest##35527 |goto 60.71,64.78
turnin Chapter III: Ritual of the Charred##35524 |goto 60.71,64.78
step
click Dark Iron Mole Machine##10497 |goto Gorgrond/0 60.7,64.8 < 1
'Ride the _Dark Iron Mole Machine_  |invehicle |c |q 35040
step
Arrive at Beastwatch |goto Gorgrond/0 46.4,69.8 < 50 |noway
step
talk Penny Clobberbottom##85077
accept Penny For Your Thoughts##36812 |goto 46.36,69.64
step
talk Marrow##82732
turnin Heart of the Fen##35040 |goto 46.29,69.99
stickystart "ST6"
step
_Leave_ Beastwatch |goto Gorgrond 45.6,70.7 < 20
Continue through the _rocky ruins_ |goto 44.0,69.7 < 20
_Follow_ the rocky path |goto Gorgrond 43.3,66.9 < 20
accept Bonus Objective: Stonemaul Arena##36566
'_Run up_ the wooden ramp |goto Gorgrond 41.0,66.2 < 10
kill Slave Hunter Krag##79623 |q Bonus Objective: Stonemaul Arena##36566/3 |goto Gorgrond/0 41.1,66.2
step
accept Bonus Objective: Stonemaul Arena##36566
kill Slave Hunter Brol##79621 |q Bonus Objective: Stonemaul Arena##36566/4 |goto Gorgrond/0 40.5,66.7
step
accept Bonus Objective: Stonemaul Arena##36566
'_Run up_ the rocks |goto Gorgrond 39.7,68.1 < 10
'_Enter_ the building |goto Gorgrond 39.0,68.2 < 10
kill Slave Hunter Mol##79626 |q Bonus Objective: Stonemaul Arena##36566/5 |goto Gorgrond/0 39.0,68.8
step "bonusstonemaul"
accept Bonus Objective: Stonemaul Arena##36566
click Keg of Grog## |tip They look like large wooden barrels laying on the ground around this area. They can be in buildings, so be sure to check those.
'Destroy 15 Grog Kegs |q Bonus Objective: Stonemaul Arena##36566/2 |goto Gorgrond/0 40.2,66.0
from Stonemaul Guard##75819+, Stonemaul Slaver##75835+
'Slay 20 Stonemaul Ogres |q Bonus Objective: Stonemaul Arena##36566/1 |goto Gorgrond/0 40.2,66.0
step
'_Exit_ the Stonemaul Arena |goto Gorgrond 41.8,65.4 < 20
'_Cross over_ the moutain path |goto Gorgrond 42.1,62.4 < 20
accept Bonus Objective: Brimstone Springs##36603 |goto 40.74,52.53
kill 3 Grievous Depthworm##85942 |q Bonus Objective: Brimstone Springs##36603/3 |goto 40.74,52.54
kill 15 Sulfuric Ooze##85960 |q Bonus Objective: Brimstone Springs##36603/2 |goto 40.74,52.54
kill 8 Lesser Brimfury##85924 |q Bonus Objective: Brimstone Springs##36603/1 |goto 40.74,52.54
step
'_Follow the path_ around the mountain |goto Gorgrond 41.4,55.8 < 20
accept Bonus Objective: Affliction Ridge##36473
click Ancient Seedbearer##85524
'Burn Ancient Seedbearers |q Bonus Objective: Affliction Ridge##36473/2 |goto Gorgrond/0 44.2,63.4
step "ST6"
kill 25 Mandragora Lifedrinker##80699, Beremus the Overgrowth##80700, Sor the Eradicator##80691, Creeping Vine##80697, Infested Vinewarden##80698, Botani Greensworn##80696, Goren Gouger##80690 |q Bonus Objective: Affliction Ridge##36473/1 |goto 44.1,63.6
step
'_Cross_ the basin |goto Gorgrond/0 44.4,61.6 < 40
'Continue _across_ the basin |goto 45.3,58.3 < 40
talk Nisha##86492
fpath Breaker's Crown |goto Gorgrond/0 45.9,54.9
stickystart "ST7"
step
accept Bonus Objective: South Gronn Canyon##36476
click Grom'kar Peon##85540
'Execite 8 Dying Grom'kar Peons |q Bonus Objective: South Gronn Canyon##36476/3 |goto Gorgrond/0 47.3,53.8
kill 10 Grom'kar Grunt##75091 |q Bonus Objective: South Gronn Canyon##36476/2 |goto Gorgrond/0 48.1,52.0
step "ST7"
accept Bonus Objective: South Gronn Canyon##36476
kill 15 Boneyard Gorger##81206, Boneyard Tunneler##81518, Drywind Bonepicker##81207 |q Bonus Objective: South Gronn Canyon##36476/1 |goto Gorgrond/0 45.7,52.0
step
'_Run around_ the rocky formations |goto Gorgrond 44.3,50.9 < 20
accept Bonus Objective: Valley of Destruction##36480 |goto Gorgrond/0 47.3,47.8
'Break #15# Goren Eggs |q Bonus Objective: Valley of Destruction##36480/3 |goto Gorgrond/0 47.3,47.8 |tip You only need to walk over the eggs to break them.
kill 20 Goren Nibbler##81775 |q Bonus Objective: Valley of Destruction##36480/2	|goto Gorgrond/0 47.3,47.8
kill 5 Canyon Boulderbreaker##81246 |q Bonus Objective: Valley of Destruction##36480/1 |goto Gorgrond/0 45.6,46.0
step
_Climb_ the hill and go along the path |goto Gorgrond 48.0,52.8 < 20
Keep following the path around |goto 48.6,50.5 < 30
talk Rakthoth##81731
turnin Reagents from Rakthoth##33694 |goto 49.4,49.7
accept Plant Pruning##33689 |goto 49.4,49.7
accept Ambassador to the Ancient##33685 |goto Gorgrond/0 49.4,49.7
stickystart "ST8"
step
talk Birchus##81723 |q Ambassador to the Ancient##33685/1 |goto Gorgrond/0 50.3,47.5
step "ST8"
kill 12 Primal Growth##81769, Dionor Seedpriest##81721 |q Plant Pruning##33689/1 |goto Gorgrond/0 51.2,45.5
step
'_Enter_ the cave |goto Gorgrond/0 51.1,47.7 < 20
talk Rakthoth##85089
turnin Ambassador to the Ancient##33685 |goto 51.3,48.0
turnin Plant Pruning##33689 |goto 51.3,48.0
accept Shredder vs. Saberon##33663 |goto 51.3,48.0
step
'_Run up_ the large hill and follow the path |goto Gorgrond 52.6,46.7 < 20
click Strong Vine Barricade## |tip The plant growth blocking your path
'Shred the vine barrier and enter the saberon camp |q Shredder vs. Saberon##33663/1 |goto 52.22,48.62
step
talk Rakthoth##82222
turnin Shredder vs. Saberon##33663 |goto Gorgrond/0 52.3,49.0
step
talk Rakthoth##82222
accept Steamscar "Reagents"##33661 |goto Gorgrond/0 52.3,49.0
step
click Saberon Stash## |tip Boxes with leather lids scattered around the area
accept The Sacking of the Saberon##33660 |goto 51.87,50.01
stickystart "saberonheart"
step
.collect 8 Saberon Herb Bundle##115442 |q The Sacking of the Saberon##33660/1 |goto Gorgrond/0 50.7,53.2 |tip Check inside of the huts
step "saberonheart"
kill Steamscar Warrior##81738
.collect 10 Saberon Heart##115443, Steamscar Primalist##81747 |q Steamscar "Reagents"##33661/1
step
'_Go up_ the hill |goto Gorgrond/0 52.2,50.5
talk Rakthoth##82225
turnin Steamscar "Reagents"##33661 |goto 52.9,51.8
turnin The Sacking of the Saberon##33660 |goto 52.9,51.8
accept Taking the Death Bloom##33695 |goto Gorgrond/0 52.9,51.8
step
'_Enter_ the cave |goto Gorgrond/0 53.7,51.8 < 20
kill Smokemaster Snarl##81749 |q Taking the Death Bloom##33695/1
.collect Dionor's Death Bloom##113187 |q Taking the Death Bloom##33695/1 |goto Gorgrond/0 54.3,52.6
step
'_Leave_ the cave |goto Gorgrond/0 53.8,51.8 < 20
'_Go down_ the hill |goto 52.5,51.0 < 20
'_Continue_ down the hill |goto Gorgrond/0 52.2,48.7 < 20
'_Jump down_ the ledge |goto 51.9,46.6
talk Birchus##82302
turnin Taking the Death Bloom##33695 |goto Gorgrond/0 50.3,47.5
accept Laying Dionor to Rest##33706 |goto Gorgrond/0 50.3,47.5
step
talk Birchus##82302
turnin Laying Dionor to Rest##33706 |goto Gorgrond/0 50.3,47.5
step
talk Durotan##74594
accept Strike While the Iron is Hot##36574 |goto Gorgrond 46.10,70.17
step
talk Grinslicer##81055
'Tell him: "_I am needed urgently at the Iron Docks."_
'Fly to the Iron Docks |q Strike While the Iron is Hot##36574/1 |goto 45.98,69.23
step
talk Draka##86401
'Tell him: "_Let's go."_ |goto Gorgrond 44.7,17.8 < 30 |confirm |q 36574
scenariogoal 1/25388 |goto Gorgrond/0 44.7,17.8 |q 36574 |tip Follow the group.
step
'Use the _Access Artifact_ ability:
scenariogoal 2/25389 |goto Gorgrond/0 44.4,16.7 |q 36574
step
'Use the _Access Artifact_ ability:
scenariogoal 3/25390 |goto Gorgrond/0 44.4,16.7 |q 36574
step
kill 1 Goc##85580
scenariogoal 4/25391 |goto Gorgrond/0 44.0,15.7 |q 36574
step
kill 1 Commander Gar##85571
scenariogoal 5/25392 |goto Gorgrond/0 44.3,16.5
step
talk Nisha##84700
fpath Iron Docks |goto Gorgrond/0 43.1,20.2
step
talk Nisha##84700 |goto Gorgrond/0 43.1,20.2
'Fly to _Beastwatch_, Gorgrond |goto Gorgrond/0 46.0,69.3 < 20
talk Durotan##74594
turnin Strike While the Iron is Hot##36574 |goto 46.10,70.18
step
talk Durotan##74594
accept News from Talador##36494 |goto Gorgrond/0 46.1,70.2
step
talk Rokhan##78487
turnin News from Talador##36494 |goto Frostwall/0 45.9,42.7
accept It's a Matter of Strategy##34681 |goto Frostwall/0 45.9,42.7
step
talk Bron Skyhorn##79407 |goto Frostwall/0 45.8,50.9 < 5
'Tell him _"Take me to my base in Talador."_ |goto Talador/0 72.0,28.3 < 20
talk Foreman Grobash##79176
turnin It's a Matter of Strategy##34681 |goto Talador/0 71.1,29.8
step
label "end"
Congratulations! You have completed the Gorgrond Leveling Guide!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Warlords of Draenor 90-100\\Talador (94-96)",[[
next Zygor's Horde Leveling Guides\\Warlords of Draenor 90-100\\Spires of Arak (96-98)
image Talador
condition suggested !exclusive
startlevel 94
step
talk Rokhan##78487
accept It's a Matter of Strategy##34681 |goto Frostwall/0 45.9,42.7
step
talk Bron Skyhorn##79407 |goto Frostwall/0 45.8,50.9 < 5
'Tell him _"Take me to my base in Talador."_ |goto Talador/0 72.0,28.3 < 20
talk Foreman Grobash##79176
turnin It's a Matter of Strategy##34681 |goto Talador/0 71.1,29.8
step
talk Rokhan##78487
accept It's a Matter of Strategy##34681 |goto Frostwall/0 45.8,43.6
step
talk Foreman Grobash##79176
accept At Your Command##34566 |goto Talador/0 71.1,29.8
step
'Routing to Tavern |next "vol'jin" |only if completedq(35102)
'Routing to Arcane |next "arcane" |only if completedq(34632)
step
clicknpc Drafting Table##79177
'Use the Drafting Table |q At Your Command##34566/1 |goto Talador/0 71.1,30.0
step
'Click here if you chose _"Vol'jin's Arsenal"_. |confirm always |goto Talador/0 71.1,29.9 |next "vol'jin"
'Or
'Click here if you chose _"Arcane Sanctum."_. |confirm always |goto Talador/0 71.1,29.9 |next "arcane"
step
label "arcane"
talk Foreman Grobash##79176
turnin At Your Command##34566 |goto Talador/0 71.1,29.8
accept An Audience With The Archmage##34632 |goto 71.07,29.75
step
.talk 81359
home Vol'jin's Pride |goto Talador/0 72.0,30.0
step
'_Go through_ the wooden gate |goto Talador/0 71.8,29.2 < 10
talk Archmage Khadgar##80142
turnin An Audience With The Archmage##34632 |goto 74.98,31.19
accept Making Acquaintances##34814 |goto 74.98,31.19
step
'Go _through the cliffs_ to the small camp |goto Talador/0 77.5,29.4 < 20
.talk 80932
fpath Zangarra |goto Talador/0 80.4,25.3
step
clicknpc Khadgar's Portal##45454
'Khadgar's portal taken |q Making Acquaintances##34814/1 |goto 80.57,26.10
step
talk Magister Krelas##79393
turnin Making Acquaintances##34814 |goto 84.20,30.30
accept Creating the Ink##34634 |goto 84.20,30.30
accept Forming the Scroll##34635 |goto 84.20,30.30
accept Gathering the Spark##34636 |goto 84.20,30.30
stickystart "pustule"
step
clicknpc Arcane Vortex## |tip They look like blue or purple balls of swirling energy.
'Harvest Energy |q Gathering the Spark##34636/1 |goto Talador/0 83.3,28.7 |count 1
step
clicknpc Slumbering Protector##79330
'Slumbering Protectors pruned |q Forming the Scroll##34635/1 |goto Talador/0 82.3,31.7 |count 1
step
clicknpc Arcane Vortex## |tip They look like blue or purple balls of swirling energy.
'Harvest Energy |q Gathering the Spark##34636/1 |goto Talador/0 81.8,29.2 |count 2
step
clicknpc Slumbering Protector##79330
'Slumbering Protectors pruned |q Forming the Scroll##34635/1 |goto Talador/0 80.7,29.1 |count 2
step
clicknpc Slumbering Protector##79330
'Slumbering Protectors pruned |q Forming the Scroll##34635/1 |goto Talador/0 81.7,26.8 |count 3
step
clicknpc Arcane Vortex## |tip They look like blue or purple balls of swirling energy.
'Harvest Energy |q Gathering the Spark##34636/1 |goto Talador/0 82.7,27.1 |count 3
step "pustule"
kill Encroaching Giant##79333+, Invasive Shambler##79335+
'Collect Pulsating Pustule |q Creating the Ink##34634/1 |goto 81.56,27.96
step
talk Magister Serena##80260 |tip If you are in Zangarra he will be standing next to you.
turnin Gathering the Spark##34636 |goto 83.24,28.66
turnin Forming the Scroll##34635 |goto 83.24,28.66
turnin Creating the Ink##34634 |goto 83.24,28.66
accept Next Steps##34874 |goto 83.24,28.66
step
'_Take the first path_ back up |goto Talador/0 80.9,28.6 < 20
'_Go up_ the path towards the portal |goto Talador 83.1,31.6 < 20
clicknpc Khadgar's Portal##45454
'Take the _portal across Zangarra_ |goto 83.6,30.9 < 5
talk Dominic Arlington##80932 |goto 80.4,25.4 < 5
'Take the flight path to _Vol'jin's Pride, Taladar_ |goto Talador/0 70.8,29.4 < 20
talk Magister Krelas##80965
turnin Next Steps##34874 |goto Talador/0 71.3,29.6
accept The Foot of the Fortress##34878 |goto Talador/0 71.3,29.6
step
talk Provisioner Naya##79921
accept Logistical Nightmare##34766 |goto 71.19,29.45
step
talk Shadow Hunter Kajassa##79627
accept One Step Ahead##34683 |goto 71.24,29.93
step
click Sack of Supplies##323
get 5 Sack of Supplies##111735 |q Logistical Nightmare##34766/1 |goto 68.56,30.34
click Garrison Records## |tip It's a pile of books and papers.
get 5 Garrison Records##111736 |q Logistical Nightmare##34766/2 |goto 68.56,30.34
step
talk Provisioner Naya##79921
turnin Logistical Nightmare##34766 |goto 71.19,29.44
accept Send Them Running##34803 |goto 71.19,29.44
step
kill 1 Vicegnaw##80053 |q Send Them Running##34803/1 |goto 70.59,27.62
step
talk Provisioner Naya##79921
turnin Send Them Running##34803 |goto 71.20,29.44
step
talk Mo'jimba##81057 |goto Talador/0 70.8,29.4 < 5
'Fly to _Frostwolf Overlook, Talador_ |goto Talador/0 61.5,10.6 < 20
step
talk Durotan##75806
turnin One Step Ahead##34683 |goto 61.50,10.95
accept Through the Looking Glass##33754 |goto 61.50,10.95
step
click Gazlowe's Eye 'n' Ear## |tip The brass and steel looking glass on a a rock.
'Look through Gazlowe's Eye 'n' Ear |q Through the Looking Glass##33754/1 |goto 61.55,11.04
step
talk Durotan##75806
turnin Through the Looking Glass##33754 |goto 61.51,10.96
accept Old Friends, New Enemies##35226 |goto 61.51,10.96
accept Too Many Irons in the Fire##33722 |goto 61.51,10.96
step
talk Draka##75808
accept In Short Supply##33735 |goto 62.01,10.99
step
talk Gazlowe##75873
accept Gazlowe's Solution##33721 |goto 62.06,10.41
step
'_Go down_ the path from town |goto Talador/0 61.8,9.7 < 20
'Meet Durotan at Orunai Village |q Old Friends, New Enemies##35226/1 |goto 54.30,7.01
step
'Orgrim confronted |q Old Friends, New Enemies##35226/2 |goto 53.05,7.04
step
kill 1 Lieutenant Dilka##81704 |q Old Friends, New Enemies##35226/3 |goto 53.07,7.03
step
stickystart "ironexplosive"
stickystart "killironhorde"
use Gazlowe's Solution##107899
'Thunderlord Cache destroyed |q Gazlowe's Solution##33721/1 |goto 56.67,9.65
step
use Gazlowe's Solution##107899
'Munitions Landing destroyed |q Gazlowe's Solution##33721/2 |goto Talador/0 56.2,12.7
step
use Gazlowe's Solution##107899
'Blackrock Forge destroyed |q Gazlowe's Solution##33721/3 |goto 57.90,15.39
step "ironexplosive"
click Iron Horde Explosives## |tip Wooden boxes with metal straps around them scattered around the beach.
get 6 Iron Horde Explosives##107855 |q In Short Supply##33735/1 |goto 56.50,12.41
step "killironhorde"
kill Warsong Overseer##75745+, Grom'kar Deadeye##77023+, Grom'kar Vanguard##77024+, Iron Shredder##75815+
'Kill 15 Iron Horde |q Too Many Irons in the Fire##33722/1 |goto Talador/0 56.2,12.7
step
click Iron Shredder Decommission Orders## |tip It's a brown book laying on a large stone.
accept Decommissioned Mission##33720 |goto 59.95,16.50
step
'_Enter_ the cave |goto Talador/0 61.7,14.4 < 20
kill 1 Engineer Draxen##76791 |q Decommissioned Mission##33720/1 |goto 63.05,14.31
step
clicknpc Decommissioned Iron Shredder##75809
'STeal the Decommissioned Iron Shredder |q Decommissioned Mission##33720/2 |goto 63.24,14.56
step
'_Exit_ the cave |goto 61.6,14.4 < 20
'_Enter_ the side of the mountain here |goto 59.8,20.2 < 20 |tip You should see iron horde break a hole in the wall.
'Decommissioned Iron Shredder Transported to Draka's Den |q Decommissioned Mission##33720/3 |goto 59.20,20.29
step
talk Gazlowe##75924
turnin Gazlowe's Solution##33721 |goto 58.95,20.71
turnin Decommissioned Mission##33720 |goto 58.95,20.71
accept Vol. X Pages ?##33724 |goto 58.95,20.71
step
talk Draka##75808
turnin In Short Supply##33735 |goto 58.93,20.15
accept Iron Them Out##33736 |goto 58.93,20.15
step
talk Durotan##75958
turnin Too Many Irons in the Fire##33722 |goto 58.92,20.21
turnin Old Friends, New Enemies##35226 |goto 58.92,20.20
accept Dreadpiston##34950 |goto 58.92,20.20
stickystart "ironshredderx"
step
'_Exit_ the cave | goto Talador/0 59.8,20.2 < 20
'_Go up_ the cobblestone path |goto Talador/0 60.0,23.2 < 20
click Iron Horde Siege Engine## |tip They look like very large cannons on wheels parked around this area.
'Destroy Siege Weapons |q Iron Them Out##33736/1 |count 1 |goto 59.56,29.35
step
click Iron Horde Siege Engine## |tip They look like very large cannons on wheels parked around this area.
'Destroy Siege Weapons |q Iron Them Out##33736/1 |count 2 |goto 58.26,29.27
step
click Iron Horde Siege Engine## |tip They look like very large cannons on wheels parked around this area.
'Destroy Siege Weapons |q Iron Them Out##33736/1 |count 3 |goto 57.20,31.18
step
click Iron Horde Siege Engine## |tip They look like very large cannons on wheels parked around this area.
'Destroy Siege Weapons |q Iron Them Out##33736/1 |count 4 |goto 56.42,29.06
step
click Iron Horde Siege Engine## |tip They look like very large cannons on wheels parked around this area.
'Destroy Siege Weapons |q Iron Them Out##33736/1 |count 5 |goto Talador/0 55.8,28.2
step
click Iron Horde Siege Engine## |tip They look like very large cannons on wheels parked around this area.
'Destroy Siege Weapons |q Iron Them Out##33736/1 |count 6 |goto Talador/0 55.8,26.9
step
kill 1 Dreadpiston##80576 |q Dreadpiston##34950/1 |goto 56.34,27.25
step
talk Ahm##77031
accept Dying Wish##33973 |goto 56.88,25.99
step
'Recover Ahm's Heirloom from Blademaster Bralok.
get Ahm's Heirloom##108825 |q Dying Wish##33973/1 |goto 56.98,24.39
step
talk Ahm##77031
turnin Dying Wish##33973 |goto 56.90,25.96
step "ironshredderx"
kill Grom'kar Siegesmith##85978+, Burning Blademaster##75794+, Fireblade Invoker##77047+
get 20 Iron Shredder Operation Manual Vol. X Pa##107843 |q Vol. X Pages ?##33724/1 |goto Talador/0 57.1,27.1
step
'_Cross_ the small bridge |goto Talador/0 56.7,33.9 < 20
talk Durotan##75959
turnin Dreadpiston##34950 |goto 55.60,40.92
step
talk Draka##75808
turnin Iron Them Out##33736 |goto 55.56,40.96
step
talk Gazlowe##75941
turnin Vol. X Pages ?##33724 |goto 55.68,41.15
accept An Eye for a Spy##33728 |goto 55.68,41.15
step
talk Tega Skyblade##81058
fpath Durotan's Grasp |goto Talador/0 55.4,40.8
step
click Gazlowe's Eye 'n' Ear## |tip The brass and steel looking glass on a a rock.
'Look through Gazlowe's Eye 'n' Ear |q An Eye for a Spy##33728/1 |goto 55.75,41.09
step
talk Gazlowe##75941
turnin An Eye for a Spy##33728 |goto 55.68,41.15
accept Born to Shred##33729 |goto 55.68,41.15
step
clicknpc Iron Shredder Prototype##75721
'Take control of the Iron Shredder |q Born to Shred##33729/1 |goto 55.41,41.11
step
'While Controlling the Shredder |invehicle |goto Talador/0 55.4,41.1 < 5 |q 33729
'_Cross_ the bridge |goto Talador/0 57.5,37.7 < 20
kill 100 Grom'kar Deadeye##75943, Grom'kar Vanguard##75948, Fireblade Invoker##77066 |q Born to Shred##33729/2	 |goto Talador/0 60.1,40.5 |tip They are all around this area
step
clicknpc Iron Shredder Prototype##75968
turnin Born to Shred##33729 |tip You are inside of it
accept Engineering Her Demise##33730
step
kill Ketya Shrediron##75986 |q Engineering Her Demise##33730/1 |goto 61.05,38.69
step
'_Cross_ the bridge |goto Talador/0 57.9,37.8
talk Durotan##75959
turnin Engineering Her Demise##33730 |goto 55.58,40.96
accept Khadgar's Plan##34962 |goto 55.58,40.95
step
talk Archmage Khadgar##75805
turnin Khadgar's Plan##34962 |goto 54.18,36.43
accept The Battle for Shattrath##33731 |goto 54.19,36.43
step
'Meet with Gazlowe |goto Talador/0 50.4,35.0 < 10 |c |q 33731
talk Gazlowe##77191
'Tell him _"Thanks. I'll meet them at the docks."_ |scenariogoal 1/25835 |goto Talador/0 50.5,35.0
step
clicknpc Iron Star##86671
'Enter the Iron Star |scenariogoal 2/25177
step
'_Go down_ the stairs |goto Talador/0 46.3,35.3 < 20
'_Continue_ down the stairs |goto 45.7,33.5 < 20
'Reach the Harbor |scenariogoal 3/25176 |goto 45.4,25.8
step
talk Archmage Khadgar##77195
'Speak with Archmage Khadgar |scenariogoal 3/25186 |goto Talador/0 45.4,24.6
step
kill Grom'kar Vanguard##83806, Burning Blademaster##83807, Fireblade Invoker##83811
'Protect Khadgar |scenariogoal 4/24351
step
'Confront Blackhand |scenariogoal 5/25178 |goto Talador/0 46.7,21.2
step
'Speak with Khadgar to teleport to the Battleship
'Tell him _"I am ready to teleport to the ship."_ |scenariogoal 5/24679 |goto Talador/0 46.7,20.8
|modelnpc Archmage Khadgar##77195
step
clicknpc Blackrock Bomb##79443
kill Machinist B'randt##80962
|scenariogoal 5/24352
step
talk Archmage Khadgar##77195
'Tell him _"Then let's hurry!"_ |scenariogoal 6/24680	|goto Talador/0 48.5,12.9
step
kill Blackhand##77256
'Survive Blackhand's onslaught |scenariogoal 6/24678 |goto Talador/0 46.6,19.1
step
'Repel the Iron Horde from Shattrath |q The Battle for Shattrath##33731/1
step
clicknpc Portal to Talador##45454
'_Enter_ the portal |goto Talador/0 46.6,20.9 < 5
talk Durotan##79604
turnin The Battle for Shattrath##33731 |goto 71.42,29.61
step
'_Go through_ the gate |goto Talador/0 71.7,29.3 < 10
'_Follow_ the path back |goto 74.0,33.3 < 20
talk Crystal-Shaper Barum##75896
accept Burning Sky##33740 |goto 73.07,38.76
accept Pieces of Us##33734 |goto 73.07,38.76
stickystart "ST5"
step
'_Cross_ the bridge |goto Talador/0 75.5,40.8	< 20
click Barum's Notes## |tip It looks like an open book laying on the ground.
accept Barum's Notes##33761 |goto 76.28,42.74
step
talk Raksi##75311
accept Pyrophobia##33578 |goto 77.74,43.96
step
kill Sun-Sage Kairyx##75302 |q Pyrophobia##33578/1 |goto 78.52,45.38
step
talk Raksi##75311
turnin Pyrophobia##33578 |goto 77.74,43.95
accept What the Draenei Found##33579 |goto 77.74,43.95
step
click Harmonic Crystal##9694
'Test the Harmonic Crystal |q Barum's Notes##33761/3 |goto 77.30,42.09
step
click Polished Crystal##9024
'Test the Polished Crystal |q Barum's Notes##33761/2 |goto 77.49,41.40
step
click Honed Crystal##7075
'Test Honed Crystal |q Barum's Notes##33761/1 |goto 77.82,41.95
step
click Annals of Aruuna##8070
get Annals of Aruuna##107859 |q Pieces of Us##33734/3 |goto Talador/0 75.5,44.1
step
click Melani's Doll##7514
get Melani's Doll##107856 |q Pieces of Us##33734/2 |goto 77.90,43.04
step
click Crystal-Shaper's Tools##318
get Crystal-Shaper's Tools##107851 |q Pieces of Us##33734/1 |goto Talador/0 77.5,41.2
step "ST5"
kill Adherent Wing-Guard##75283+, Adherent Squallbringer##75290+, Adherent Sun-Caller##85434+
'Kill Adherent Invaders |q Burning Sky##33740/1 |goto Talador/0 77.0,42.0
step
'Carefully _jump down_ the side of the cliff |goto Talador/0 75.4,44.9 < 20
accept Bonus Objective: Aruuna's Desolation##34639 |goto 76.11,47.14
kill Frenzied Ancient##79409 |q Bonus Objective: Aruuna's Desolation##34639/1 |goto Talador/0 76.1,48.6 |tip He walks around
clicknpc Panicked Young Prowler##79432
'Young Prowlers calmed |q Bonus Objective: Aruuna's Desolation##34639/2 |goto Talador/0 76.1,48.6
step
talk Crystal-Shaper Barum##75913
turnin Pieces of Us##33734 |goto 76.72,55.24
turnin Burning Sky##33740 |goto 76.72,55.24
turnin Barum's Notes##33761 |goto 76.72,55.24
step
'_Exit_ through the gates |goto Talador/0 71.8,29.1 < 10
'_Run through_ the grass and trees |goto Talador/0 74.9,33.3 < 20
'_Enter_ the cave |goto Talador/0 78.3,35.5 < 20
'_Follow_ the path down |goto Talador/0 80.4,34.9 < 20
'_Cross_ the bridge |goto 81.6,37.6 < 20
click Ancient Prism##7378
'Examine the Ancient Prism |q What the Draenei Found##33579/1 |goto 82.70,37.87
step
talk Raksi##75469
turnin What the Draenei Found##33579 |goto 82.64,37.78
step
talk Skytalon Inuz##81354
fpath Terokkar Refuge |goto 70.3,57.1
step
talk Shadow-Sage Iskar##75288
accept The Purge of Veil Shadar##33580 |goto 70.51,56.85
step
talk Kura the Blind##75324
accept Kura's Vengeance##33582 |goto 70.77,56.78
step
talk Darkscryer Raastok##75323
accept Forbidden Knowledge##33581 |goto 70.51,57.34
stickystart "ST8"
stickystart "ST9"
step
'Follow the path |goto Talador/0 72.6,58.7 < 20
'_Go up_ the stairs |goto Talador/0 74.9,61.7 < 20
'_Continue_ along the path |goto Talador/0 77.0,62.0 < 20
'_Enter_ the cave |goto 80.2,61.7 < 20
kill Wing-Guard Kuuan##75353 |q Kura's Vengeance##33582/1 |goto Talador/0 80.4,63.7
step "ST8"
'_Leave_ the cave |goto Talador/0 80.2,61.8
talk Outcast Darktalon##75337, Outcast Shadeweaver##75336
'Evacuat the Outcast |q The Purge of Veil Shadar##33580/1 |goto Talador/0 78.6,60.6 |tip They are all around this area
step "ST9"
click The Art of Darkness##3731
.collect 6 Shadow Tome##107391 |q Forbidden Knowledge##33581/1 |goto Talador/0 74.9,63.0
step
'_Follow_ the path |goto 72.6,58.6 < 20
talk Kura the Blind##75324
turnin Kura's Vengeance##33582 |goto 70.78,56.78
step
talk Shadow-Sage Iskar##75288
turnin The Purge of Veil Shadar##33580 |goto 70.64,57.41
step
talk Darkscryer Raastok##75323
turnin Forbidden Knowledge##33581 |goto 70.51,57.35
step
talk Seer Malune##76665
accept Dust of the Dead##33872 |goto 65.42,50.74
accept Cure of Aruunem##33873 |goto 65.42,50.74
step
kill Agitated Duskwing##76668
get 7 Handful of Duskwing Dust##108645 |q Dust of the Dead##33872/1 |goto Talador/0 66.1,51.0
click Aruunem Berry Bush## |tip They look like leafy bushes with small red berries on them
get 60 Aruunem Berries##108655 |q Cure of Aruunem##33873/1 |goto Talador/0 67.6,52.6
step
talk Seer Malune##76665
turnin Dust of the Dead##33872 |goto 65.42,50.73
turnin Cure of Aruunem##33873 |goto 65.42,50.73
accept Aruumel's Rest##33874 |goto 65.43,50.73
step
'Use the Elixir of Memeories |use Elixir of Memories##108749
kill Aruumel##76824 |q Aruumel's Rest##33874/1 |goto 68.72,55.21
step
talk Seer Malune##76665
turnin Aruumel's Rest##33874 |goto 65.43,50.73
step
'_Travel on_ the path towards the bridge |goto Talador/0 63.6,50.5 < 20
'_Cross_ the bridge |goto 61.7,52.3 < 20
talk Nadur##80028
accept A Pilgrimage Gone Awry##34801 |goto 61.36,54.39
stickystart "snapdragon"
stickystart "prowblodd"
step
kill Noxious Riverhopper##78673+, Palebelly Croaker##78671+
get 1 Riverhopper Eye##111846 |q A Pilgrimage Gone Awry##34801/3 |goto 62.18,54.14
step "snapdragon"
click Snapdragon## |tip They look like tall pink flowers.
get 6 Snapdragon Frond##111845 |q A Pilgrimage Gone Awry##34801/2 |goto 60.65,55.10
step "prowblodd"
kill Ridge Prowler##79703+
get 6 Prowler Blood##111847 |q A Pilgrimage Gone Awry##34801/1 |goto Talador/0 60.4,57.0
step
talk Nadur##80028
turnin A Pilgrimage Gone Awry##34801 |goto 61.36,54.39
step
'_Follow_ the road |goto Talador/0 62.1,55.2 < 20
'_Continue_ along the road |goto 63.5,59.9 < 20
'_Climb the stairs_ and continue on the road |goto 62.6,65.3 < 20
talk Magister Krelas##80396
turnin The Foot of the Fortress##34878 |goto 62.26,68.30 |tip You may not have this quest to turn in.
accept Dropping In##34879 |goto 62.26,68.30
step
clicknpc Gordunni Boulderthrower##80428
'Destroy the 1st Catapult |q Dropping In##34879/1 |count 1 |goto 63.59,69.00
step
clicknpc Gordunni Boulderthrower##80428
'Destroy the 2nd Catapult |q Dropping In##34879/1 |count 2 |goto Talador/0 65.5,68.8
step
clicknpc Gordunni Boulderthrower##80428
'Destroy the 3rd Catapult |q Dropping In##34879/1 |count 3 |goto Talador/0 66.8,67.9
step
'Meet Krelas at the gate |q Dropping In##34879/2 |goto 68.83,69.32
step
click Krelas' Portal##
'Take the Portal |q Dropping In##34879/3 |goto 68.63,69.70
step
talk Magister Krelas##80390
turnin Dropping In##34879 |goto 68.31,70.31
accept While We're in the Neighborhood##34887 |goto 68.31,70.31
accept Vicious Viziers##34888 |goto 68.31,70.31
accept Orbs of Power##34889 |goto 68.31,70.31
stickystart "runebeads"
step
'_Cross_ the bridge |goto Talador/0 69.5,73.9 < 20
click Astral Ward##12777
'Destroy Astral Wards |q Orbs of Power##34889/1 |count 1 |goto 68.18,76.33
step
click Astral Ward##12777
'Destroy Astral Wards |q Orbs of Power##34889/1 |count 2 |goto Talador/0 69.4,79.7
step
'_Run up_ the stone steps |goto Talador/0 68.3,79.5 < 20
click Astral Ward##12777
'Destroy Astral Wards |q Orbs of Power##34889/1 |count 3 |goto 69.0,82.0
step
kill 1 Vizier Vorgorsh##80294 |q Vicious Viziers##34888/1 |goto 68.55,82.87
step
'_Go up_ the 2nd set of stone steps |goto Talador/0 67.7,79.4 < 20
click Astral Ward##12777
'Destroy Astral Wards |q Orbs of Power##34889/1 |count 4 |goto Talador/0 67.5,78.0
step
kill 1 Vizier Zulmork##80292 |q Vicious Viziers##34888/2 |goto 67.13,77.03
step
click Astral Ward##12777
'Destroy Astral Wards |q Orbs of Power##34889/1 |count 5 |goto Talador/0 66.0,78.1
step
kill 1 Vizier Cromaug##80295 |q Vicious Viziers##34888/3 |goto 66.18,81.12
step "runebeads"
kill Gordunni Warcrier##81764+, Gordunni Basher##79231+, Gordunni Cleaver##79234+
get 8 Gordunni Runebeads##112088 |q While We're in the Neighborhood##34887/1 |goto 67.94,80.09
step
talk Magister Krelas##80389 |tip If you are in Gordal Fortress, he will be standing next to you.
turnin While We're in the Neighborhood##34887 |goto 67.96,80.00
turnin Vicious Viziers##34888 |goto 67.96,80.00
turnin Orbs of Power##34889 |goto 67.96,80.00
accept The Final Step##34890 |goto 67.92,80.03
step
'_Go up_ the stone steps |goto Talador/0 65.4,80.2 < 20
'Use your Scroll of Mass Teleportation|use Scroll of Mass Teleportation##112542
kill 1 Witch Lord Morkurk##80335 |q The Final Step##34890/1 |goto 64.28,81.78
step
click Arcane Nexus## |tip It looks like a glowing stone floating in the center of the golden aura on the ground.
get Arcane Nexus##112196 |q The Final Step##34890/2 |goto 64.24,81.80
step
talk Magister Krelas##80389
turnin The Final Step##34890 |goto 64.27,81.86
accept Due Cause to Celebrate##34712 |goto 64.27,81.86
step
talk Magister Krelas##80553
turnin Due Cause to Celebrate##34712 |goto 71.17,29.88
accept Joining the Ranks##34949 |goto 71.17,29.88
step
talk Knight-Lord Dranarus##79612
accept The Lady of Light##34696 |goto 71.84,29.75
step
'_Cross_ the river |goto Talador/0 64.4,57.0 < 20
'_Go up_ the stairs |goto Talador/0 62.5,65.3 < 20
'_Continue_ up the stairs |goto Talador/0 60.6,67.4 < 20
'_Follow_ the path |goto 57.5,67.2 < 20
talk Soulbinder Nyami##78519
accept The Heart of Auchindoun##33920 |goto 56.51,67.13
step
talk Vindicator Nobundo##78482
accept Disrupting the Flow##33917 |goto 56.72,65.78 |tip He moves around the area
step
talk Lady Liadrin##75121
turnin The Lady of Light##34696 |goto 55.49,67.67
accept Holding the Line##34418 |goto 55.50,67.65
step
talk Mehlar Dawnblade##78577
accept Powering the Defenses##35249 |goto 55.56,67.04
step
talk Ranger Belonis##79696
accept Every Bit Counts##34710 |goto 55.38,66.78
step
fpath Exarch's Refuge |goto Talador/0 54.5,67.8
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
'_Go down_ the stairs |goto Talador/13 54.7,42.3 < 20
'Investigate the Ritual |q Nightmare in the Tomb##33530/1 |goto 58.96,55.01
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
'Recover Karab'uun |q The Heart of Auchindoun##33920/2 |goto 56.68,62.49
step "ST11"
click Burning Resonator## |tip They look like green glowing crystals floating above spiked altars.
'Destroy the Burning Resonators |q Disrupting the Flow##33917/1 |goto Talador/0 55.1,62.3
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
'_Follow_ the path |goto 59.5,68.9 < 20
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
'_Cross_ the bridge |goto 59.3,77.6 < 20
'_Follow the path_ back |goto Talador/0 60.4,82.1 < 20
'_Enter_ the cave |goto 61.3,84.2
kill Xanatos the Defiler##75294 |q Into the Hollow##33970/1 |goto Talador/0 65.6,86.8
step
'Recover the Sha'tari |q Into the Hollow##33970/2 |goto 65.75,86.87 |tip The floating pink crystal with a shield around it
step "ST13"
click Defiling Crystal## |tip It looks like a floating gold colored crystal.
kill Insidious Defiler##76969 |tip There will be an Insidious Defiler next to the crystals you need to destroy
'Destroy the Defiling Crystal |q Vile Defilers##33972/1 |goto 64.03,85.56
step "ST14"
kill Deathweb Crawler##75273, Deathweb Egg Tender##76947
get 9 Deathweb Fang##109744 |q Antivenin##33971/1 |goto 59.37,79.02
step
'_Cross_ the bridge |goto Talador/0 59.3,77.3 < 20
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
'_Follow_ the path back |goto Talador/0 58.4,78.7 < 20
'_Continue_ along the path |goto 55.8,83.2 < 20
accept Bonus Objective: Zorkra's Fall##34660 |goto 54.78,85.62
clicknpc Zorka's Void Gate##79520
'Seal Zorka's Void Gates |q Bonus Objective: Zorkra's Fall##34660/1 |goto Talador/0 54.1,87.1
kill 10 Shattered Hand Grunt##79544 |q Bonus Objective: Zorkra's Fall##34660/2 |goto Talador/0 54.7,87.6
step
talk Soulbinder Tuulani##77869
turnin Scheduled Pickup##34242 |goto 50.42,87.52
accept Restalaan, Captain of the Guard##34508 |goto 50.42,87.52
step
talk Defender Artaal##78083
accept Never Forget##34013 |goto 50.52,87.53
step
talk Vindicator Kaluud##78082
accept Payback##34234 |goto 50.40,87.32
step
click Hastily Written Note## |tip It looks like a scroll laying on the ground next to the fountain.
accept Invasion of the Soul Eaters##33988 |goto 49.22,88.04
stickystart "ST15"
step
click Forge##209
get Auchenai Torch##108886 |q Invasion of the Soul Eaters##33988/1 |goto 49.32,87.89
step
click Telmor Registry## |tip It looks like an open book laying on some white sacks, next to a pile of boxes.
get Telmor Registry##108896 |q Never Forget##34013/1 |goto 49.28,87.86
step
clicknpc Body Pile##77003 |q Invasion of the Soul Eaters##33988/2 |count 1 |goto 49.60,89.03
step
clicknpc Body Pile##77003 |q Invasion of the Soul Eaters##33988/2 |count 2 |goto 48.77,89.89
step
clicknpc Body Pile##77003 |q Invasion of the Soul Eaters##33988/2 |count 3 |goto 48.50,88.71
step
clicknpc Body Pile##77003 |q Invasion of the Soul Eaters##33988/2 |goto 47.83,90.28
step
'Click the _Quest Complete_ box in the top right corner of your screen:
turnin Invasion of the Soul Eaters##33988 |goto 47.83,90.28
step
click Auchenai Prayerbook##8520
get Auchenai Prayerbook##109622 |q Never Forget##34013/2 |goto 49.32,90.78
step
click Leafshadow## |tip It looks like a large greyish green pointed stone inside the building.
get Leafshadow##108897 |q Never Forget##34013/3 |goto 47.52,88.92
step "ST15"
kill 12 Wrathguard Destroyer##75382, Demon Conjurer##77901, Depraved Hunter##77026, Zealous Fanatic##77434, Shadowborne Reverend##77426, Fervid Adherent##77022, Depraved Hunter##77026 |q Payback##34234/1 |goto 49.37,88.04
step
talk Vindicator Kaluud##78082
turnin Payback##34234 |goto 50.38,87.32
step
talk Defender Artaal##78083
turnin Never Forget##34013 |goto 50.52,87.55
step
'_Continue up_ the stairs |goto 47.1,90.0 < 20
'_Enter_ the building |goto 45.1,90.5 < 20
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
'_Follow_ the path down |goto 44.7,87.5 < 20
'_Go up_ the hill |goto 42.5,80.0 < 20
talk Restalaan##77799
turnin Changing the Tide##34326 |goto 43.43,75.93
accept Desperate Measures##34092 |goto 43.43,75.95
step
talk Lady Liadrin##75389
accept Ogre Diplomacy##34122 |goto 42.96,76.23
step
fpath Retribution Point |goto Talador/0 42.1,76.8
stickystart "ST16"
step
'_Follow_ the path back |goto Talador/0 40.8,82.0 < 20
kill Mok'war the Terrible##77350
get Ango'rosh Spellbook##109163 |q Desperate Measures##34092/1 |goto 39.43,83.52
step
kill Dur'gol the Ruthless##77349
get Grimoire of Binding##109162 |q Desperate Measures##34092/2 |goto 42.69,84.87
step
clicknpc Altar of Ango'rosh##77393
'Perform the ritual |q Desperate Measures##34092/3 |goto 41.25,82.46 |tip Be sure not to move as the ritual channels
step "ST16"
kill 10 Ango'rosh Crusher##77352, Ango'rosh Spellweaver##77362, Ango'rosh Hunter##77402 |q Ogre Diplomacy##34122/1 |goto Talador/0 41.7,83.7
step
talk Restalaan##77799
turnin Desperate Measures##34092 |goto 43.44,75.93
step
talk Lady Liadrin##75389
turnin Ogre Diplomacy##34122 |goto 42.96,76.23
accept Retribution for the Light##34144 |goto 42.96,76.23
step
talk Exarch Maladaar##75392
accept Into the Heart of Madness##34157 |goto 42.93,76.10
step
click Shadow Council Communicator##7011
accept Hiding in the Shadows##34163 |goto 36.67,71.33
stickystart "ST17"
step
'_Go up_ the hill |goto Talador/0 34.3,69.6
'_Follow_ the path into Gul'rok |goto Talador/0 34.2,72.8
talk Kor'thos Dawnfury##77629
accept Book Burning##34164 |goto 34.00,73.97
step
kill Shadowborne Dementor##79187,Shadowborne Dementor##77548 |goto Talador/0 34.2,75.3
collect 3 Shadow Council Spellbook##109259 |q Book Burning##34164 |goto Talador/0 34.2,75.3
step
click Roaring Fire## |tip It looks like a huge green-yellow bonfire.
'Burn the Shadow Council Spellbooks |q Book Burning##34164/1 |goto 34.25,74.23
step
talk Kor'thos Dawnfury##77629
turnin Book Burning##34164 |goto 34.00,73.98
step
'Climb the tower |goto Talador/0 34.4,70.3
click Shadow Orb## |tip It's a purple swirling orb floating above metal column.
'Disable the Northern Shadow Orb |q Hiding in the Shadows##34163/3 |goto 34.46,70.37
step
'_Pass through_ Gul'rok|goto Talador/0 34.8,74.5
'_Climb_ the tower |goto 37.7,77.4
'Disable the Eastern Shadow Orb |q Hiding in the Shadows##34163/1 |goto 37.79,77.33
step
'_Climb_ the hill |goto Talador/0 36.4,80.3
'Disable the Southern Shadow Orb |q Hiding in the Shadows##34163/2 |goto 35.64,79.84
step
'Click the _Quest Complete_ box in the top right corner of your screen:
turnin Hiding in the Shadows##34163
step "ST17"
kill 15 Gorebound Demonguard##77541, Felwrought Annihilator##77528, Gorebound Demonguard##77541, Shadowborne Dementor##77548 |q Retribution for the Light##34144/1
step
'_Follow_ the path up |goto Talador/0 32.8,74.5
'_Enter_ the cave |goto 31.9,74.6
talk Soulbinder Nyami##77582
turnin Into the Heart of Madness##34157 |goto 31.21,73.60
accept Destination: Unknown##34564 |goto 31.21,73.60
step
clicknpc Demonic Gateway##77571
'Use the Demonic Gateway |q Destination: Unknown##34564/1 |goto 30.94,73.19
step
kill Mongrethod##77579 |q Destination: Unknown##34564/2
step
'Go to the North side of the room
clicknpc Demonic Gateway##77571 |q Destination: Unknown##34564/3
step
talk Lady Liadrin##77580
turnin Retribution for the Light##34144 |goto 45.68,74.47
step
talk Soulbinder Tuulani##79434
turnin Destination: Unknown##34564 |goto 46.32,74.09
accept Together We Are Strong##36512 |goto 46.32,74.09
step
talk Lady Liadrin##77580
accept Come Together##34706 |goto 45.70,74.46
step
'_Go up_ the stairs |goto Talador/0 44.5,74.5 < 20
'_Follow_ the path |goto 42.6,71.5 < 20
accept Bonus Objective: Court of Souls##34667 |goto 42.94,62.13
kill Warlock Soulstealer##79482
'Free Draenei Spirits|q Bonus Objective: Court of Souls##34667/1 |goto 43.35,62.67
kill 10 Doombringer##79503 |q Bonus Objective: Court of Souls##34667/2 |goto 43.26,62.57
clicknpc Auchenai Ballista##79523 |goto Talador/0 43.8,59.3
'Enter the Auchenai Ballista |invehicle |q Bonus Objective: Court of Souls##34667
kill Shadowgaze Batrider##79514
'Shoot down Shadowgaze Batriders |q Bonus Objective: Court of Souls##34667/3 |goto 43.20,62.70
step
talk Ageilaa##78534
turnin Every Bit Counts##34710 |goto 49.89,56.16
accept Trouble In The Mine##34399 |goto 49.89,56.16
accept Frenzied Manafeeders##34400 |goto 49.89,56.16
step
kill Frenzied Manafeeder##78390
'Watch out for the _"The Frenzied Manafeeder has entered a weakened state."_ to appear
'Use the Dissipation Crytal |use Dissipation Crystal##110468
'Sooth the Frenzied Manafeeders |q Frenzied Manafeeders##34400/1 |goto Talador/0 50.5,54.7
step
talk Ageilaa##78534
turnin Frenzied Manafeeders##34400 |goto 49.89,56.16
step
'_Enter_ the mine |goto 51.2,51.6 < 20
talk Vindicator Doruu##78538
turnin Trouble In The Mine##34399 |goto 51.61,50.47
step
talk Manduil Skycaller##78515
accept Arcane Essence##34401 |goto 51.64,50.51
accept Crystals of Unusual Power##34404 |goto 51.64,50.51
step
kill Arcane Wraith##78326, Crystal Rager##78452
get 6 Arcane Essence##110390 |q Arcane Essence##34401/1
click Jorune Crystal## |tip The pink crystals in mine carts.
get 10 Unrefined Power Crystals##110391 |q Crystals of Unusual Power##34404/1 |goto Talador/0 52.2,49.7
step
'_Go up_ the ramp |goto Talador/0 52.6,50.5 < 20
talk Manduil Skycaller##78515
turnin Arcane Essence##34401 |goto 51.64,50.51
turnin Crystals of Unusual Power##34404 |goto 51.64,50.51
accept An'dure The Giant##34414 |goto 51.64,50.51
step
kill An'dure the Awakened##78372
get Crystal Giant Heart##110418 |q An'dure The Giant##34414/1 |goto Talador/0 54.1,50.0
step
'_Go up_ the ramp |goto Talador/0 52.6,50.5 < 20
talk Manduil Skycaller##78515
turnin An'dure The Giant##34414 |goto 51.64,50.51
accept Kaelynara Sunchaser##34447 |goto 51.64,50.51
step
talk Manduil Skycaller##78515
'Tell him "_I am ready to confront Kaelynara._"
'Speak With Manduil Skycaller |q Kaelynara Sunchaser##34447/1 |goto 51.65,50.51
step
'Wait to be teleported:
kill Kaelynara Sunchaser##78501 |q Kaelynara Sunchaser##34447/2 |goto 52.08,47.54
collect Tear-stained Letter##110667 |q 34447
step
talk Manduil Skycaller##78515 |goto Talador 52.1,47.7
'Tell him "_I am ready to return to the Jorune Mine._" |goto Talador 51.6,50.5 < 20 |noway |c |q 34447
talk Vindicator Doruu##78538
turnin Kaelynara Sunchaser##34447 |goto 51.62,50.48
step
talk Knight-Lord Dranarus##79612
turnin Come Together##34706 |goto 71.84,29.74
|next "end"
step
label "vol'jin"
talk Foreman Grobash##79176
turnin At Your Command##34566 |goto 71.06,29.74
accept The Quarry Quandary##34569 |goto 71.11,29.70
step
talk Morketh Bladehowl##79210
turnin The Quarry Quandary##34569 |goto 71.88,29.45
accept Unleashed Steel##35102 |goto 71.88,29.45
step
'Follow Morketh to the Armory |q Unleashed Steel##35102/1 |goto 70.94,30.40
step
talk Morketh Bladehowl##79356 |tip He will run into the building after you enter.
turnin Unleashed Steel##35102 |goto 70.89,30.49
accept Iridium Recovery##34576 |goto 70.90,30.45
accept Out of Jovite##34577 |goto 70.90,30.45
accept Gas Guzzlers##34579 |goto 70.90,30.45
step
'_Go through_ the gate |goto Talador/0 71.8,29.2 < 20
'_Cross_ the bridge |goto 73.2,26.7 < 20
'_Enter_ the mine |goto Talador/0 75.2,22.4 < 20
kill Iridium Geode##80072
'Collect Iridium Dust |q Iridium Recovery##34576/1 |goto 76.73,18.88
kill Glowgullet Shardshedder##80013, Glowgullet Devourer##79190
'Use the Goren Gas Extractor on Glowgullet corpses |use Goren Gas Extractor##111910
'Collect Goren Gas Samples |q Gas Guzzlers##34579/1 |goto Talador/0 77.6,17.7
click Jovite Ore##10861
get 12 Jovite Ore##111906 |q Out of Jovite##34577/1 |goto 78.01,17.90 |tip They are all along the mine walls
step
'_Go up_ the ramp |goto Talador/0 76.3,19.5
'_Leave_ the cave |goto 75.2,22.4
'_Cross_ the bridge |goto Talador/0 73.0,25.9 < 20
'_Enter_ the camp |goto 71.8,29.2 < 20
talk Morketh Bladehowl##79356
turnin Iridium Recovery##34576 |goto 70.90,30.50
turnin Out of Jovite##34577 |goto 70.90,30.50
turnin Gas Guzzlers##34579 |goto 70.90,30.50
accept Going to the Gordunni##34837 |goto 70.89,30.50
step
talk Shadow Hunter Kajassa##79627
accept One Step Ahead##34683 |goto 71.24,29.95
step
talk Provisioner Naya##79921
accept Logistical Nightmare##34766 |goto 71.19,29.44
step
click Sack of Supplies##323
get 5 Sack of Supplies##111735 |q Logistical Nightmare##34766/1 |goto 69.11,29.82
click Garrison Records## |tip It's a pile of books and papers.
get 5 Garrison Records##111736 |q Logistical Nightmare##34766/2 |goto 68.1,31.3
step
accept Bonus Objective: Mor'gran Logworks##35237 |goto 65.99,31.26
kill 8 Iron Shredder##75815 |q Bonus Objective: Mor'gran Logworks##35237/1
click Lumber## |tip Piles of logs around the area.
get 20 Lumber##112994 |q Bonus Objective: Mor'gran Logworks##35237/2 |goto 65.76,31.57
step
'_Cross_ the bridge |goto Talador/0 70.2,29.5 < 20
talk Provisioner Naya##79921
turnin Logistical Nightmare##34766 |goto 71.19,29.43
accept Send Them Running##34803 |goto 71.19,29.43
step
kill Vicegnaw##80053 |q Send Them Running##34803/1 |goto 70.55,27.70
step
talk Provisioner Naya##79921
turnin Send Them Running##34803 |goto 71.19,29.44
step
talk Paoni Softhoof##81359
.home Vol'jin's Pride |goto Talador/0 72.0,30.0
step
'_Cross_ the bridge |goto Talador/0 70.2,29.4 < 20
'_Follow_ the path |goto 68.3,23.8 < 20
'_Continue_ along the path |goto Talador/0 66.6,20.6 < 20
'_Cross_ the stream |goto 65.1,14.0 < 20
talk Gazlowe##75873
accept Gazlowe's Solution##33721 |goto 62.09,10.40
step
talk Draka##75808
accept In Short Supply##33735 |goto 62.01,10.99
step
talk Durotan##75806
turnin One Step Ahead##34683 |goto 61.51,10.95
accept Through the Looking Glass##33754 |goto 61.51,10.96
step
click Gazlowe's Eye 'n' Ear## |tip The brass and steel looking glass on a a rock.
'Look through Gazlowe's Eye 'n' Ear |q Through the Looking Glass##33754/1 |goto 61.57,11.01
step
talk Durotan##75806
turnin Through the Looking Glass##33754 |goto 61.51,10.95
accept Too Many Irons in the Fire##33722 |goto 61.51,10.96
accept Old Friends, New Enemies##35226 |goto 61.51,10.96
stickystart "ST1"
stickystart "ST2"
step
'_Follow_ the hill down |goto Talador/0 61.9,9.9 < 20
'Use Gazlowe's Solution |use Gazlowe's Solution##107899
'Destroy the Blackrock Forge |q Gazlowe's Solution##33721/3 |goto 57.84,15.39
step
'Use Gazlowe's Solution |use Gazlowe's Solution##107899
'Destroy the Munitions Landing |q Gazlowe's Solution##33721/2 |goto 56.23,12.49
step "ST1"
click Iron Horde Explosives## |tip They look like wooden boxes with metal bands around them.
get 6 Iron Horde Explosives##107855 |q In Short Supply##33735/1 |goto 55.80,10.28
step
'Use Gazlowe's Solution |use Gazlowe's Solution##107899
'Destroy the Thunderlord Cache |q Gazlowe's Solution##33721/1 |goto 56.66,9.68
step "ST2"
kill 15 Iron Shredder##75815, Grom'kar Shadowblade##75753, Grom'kar Grimshot##75752, Grom'kar Deadeye##75749, Warsong Overseer##75745, Grom'kar Vanguard##75747 |q Too Many Irons in the Fire##33722/1 |goto Talador/0 56.4,10.6
step
'_Go up_ the stairs |goto Talador/0 56.1,9.2
'Meet Durotan at Orunai Coast |q Old Friends, New Enemies##35226/1 |goto 54.23,7.00
step
'Confront Orgrim |q Old Friends, New Enemies##35226/2 |goto 52.92,6.99
|modelnpc Orgrim Doomhammer##81699
step
kill Grom'kar Lieutenant##81704 |q Old Friends, New Enemies##35226/3 |goto 52.90,6.90
step
'_Go down_ the stairs |goto Talador/0 56.1,8.6
click Iron Shredder Decommission Orders## |tip It's a brown book laying on a large stone.
accept Decommissioned Mission##33720 |goto 59.96,16.49
step
'Enter the cave |goto Talador/0 61.7,14.4
kill Engineer Draxen##76791 |q Decommissioned Mission##33720/1 |goto 63.08,14.48
step
clicknpc Decommissioned Iron Shredder##75869
'Steal the Decommissioned Iron Shredder |q Decommissioned Mission##33720/2 |goto 63.25,14.56
step
'_Go up_ the hill |goto Talador/0 60.2,17.9 < 20
'_Enter_ Draka's Den |goto 60.0,20.2 < 20
'Bring the Shredder to Draka's Den |q Decommissioned Mission##33720/3 |goto 59.20,20.32
step
talk Draka##75808
turnin In Short Supply##33735 |goto 58.92,20.15
accept Iron Them Out##33736 |goto 58.96,20.12
step
talk Durotan##75958
turnin Too Many Irons in the Fire##33722 |goto 58.92,20.20
turnin Old Friends, New Enemies##35226 |goto 58.92,20.20
accept Dreadpiston##34950 |goto 58.94,20.21
step
talk Gazlowe##75924
turnin Decommissioned Mission##33720 |goto 58.95,20.72
turnin Gazlowe's Solution##33721 |goto 58.95,20.72
accept Vol. X Pages ?##33724 |goto 58.95,20.72
stickystart "ST3"
stickystart "ST4"
step
'_Leave_ the cave |goto Talador/0 59.9,20.2 < 20
'_Go up_ the hill |goto Talador/0 60.0,23.6 < 20
kill Dreadpiston##80576 |q Dreadpiston##34950/1 |goto 56.56,27.30
step
talk Ahm##77031
accept Dying Wish##33973 |goto 56.90,25.96
step
kill Blademaster Bralok##76981
get Ahm's Heirloom##108825 |q Dying Wish##33973/1 |goto 56.99,24.48
step
talk Ahm##77031
turnin Dying Wish##33973 |goto 56.90,25.97
step "ST3"
click Iron Horde Siege Engine## |tip They look like very large cannons on wheels parked around this area.
'Destroy the Siege Weapons |q Iron Them Out##33736/1 |goto 55.70,26.86 |tip They are all around the base
step "ST4"
kill Burning Blademaster##75794, Grom'kar Siegesmith##80552
get 20 Iron Shredder Operation Manual Vol. X Pa##107843 |q Vol. X Pages ?##33724/1 |goto 57.27,28.18
step
'_Cross_ the bridge |goto 56.8,33.7 < 20
'_Follow_ the path|goto Talador/0 55.9,37.9
talk Tega Skyblade##81058
fpath Durotan's Grasp |goto Talador/0 55.4,40.8
step
talk Durotan##75959
turnin Dreadpiston##34950 |goto 55.60,40.94
step
talk Draka##75808
turnin Iron Them Out##33736 |goto 55.55,40.98
step
talk Gazlowe##75941
turnin Vol. X Pages ?##33724 |goto 55.68,41.16
accept An Eye for a Spy##33728 |goto 55.68,41.16
step
click Gazlowe's Eye 'n' Ear## |tip The brass and steel looking glass on a a rock.
'Look through Gazlowe's Eye 'n' Ear |q An Eye for a Spy##33728/1 |goto 55.74,41.09
step
talk Gazlowe##75941
turnin An Eye for a Spy##33728 |goto 55.68,41.17
accept Born to Shred##33729 |goto 55.69,41.16
step
clicknpc Iron Shredder Prototype##75721
'Take control of the Iron Shredder |q Born to Shred##33729/1 |goto Talador/0 55.4,41.1
step
'While Controlling the Shredder |invehicle |goto Talador/0 55.4,41.1 < 5 |q 33729
'_Cross_ the bridge |goto Talador/0 57.5,37.7 < 20
kill 100 Grom'kar Deadeye##75943, Grom'kar Vanguard##75948, Fireblade Invoker##77066 |q Born to Shred##33729/2	 |goto Talador/0 60.1,40.5 |tip They are all around this area
step
clicknpc Iron Shredder Prototype##75968
turnin Born to Shred##33729 |tip You are inside of it
accept Engineering Her Demise##33730
step
kill Ketya Shrediron##75986 |q Engineering Her Demise##33730/1 |goto 61.05,38.69
step
'_Cross_ the bridge |goto Talador/0 57.9,37.8
talk Durotan##75959
turnin Engineering Her Demise##33730 |goto 55.58,40.96
accept Khadgar's Plan##34962 |goto 55.58,40.95
step
talk Archmage Khadgar##75805
turnin Khadgar's Plan##34962 |goto 54.18,36.43
accept The Battle for Shattrath##33731 |goto 54.19,36.43
step
'Meet with Gazlowe |goto Talador/0 50.4,35.0 < 10 |c |q 33731
talk Gazlowe##77191
'Tell him _"Thanks. I'll meet them at the docks."_ |scenariogoal 1/25835 |goto Talador/0 50.5,35.0
step
clicknpc Iron Star##86671
'Enter the Iron Star |scenariogoal 2/25177
step
'_Go down_ the stairs |goto Talador/0 46.3,35.3 < 20
'_Continue_ down the stairs |goto 45.7,33.5 < 20
'Reach the Harbor |scenariogoal 3/25176 |goto 45.4,25.8
step
talk Archmage Khadgar##77195
'Speak with Archmage Khadgar |scenariogoal 3/25186 |goto Talador/0 45.4,24.6
step
kill Grom'kar Vanguard##83806, Burning Blademaster##83807, Fireblade Invoker##83811
'Protect Khadgar |scenariogoal 4/24351
step
'Confront Blackhand |scenariogoal 5/25178 |goto Talador/0 46.7,21.2
step
'Speak with Khadgar to teleport to the Battleship
'Tell him _"I am ready to teleport to the ship."_ |scenariogoal 5/24679 |goto Talador/0 46.7,20.8
|modelnpc Archmage Khadgar##77195
step
clicknpc Blackrock Bomb##79443
kill Machinist B'randt##80962
|scenariogoal 5/24352
step
talk Archmage Khadgar##77195
'Tell him _"Then let's hurry!"_ |scenariogoal 6/24680	|goto Talador/0 48.5,12.9
step
kill Blackhand##77256
'Survive Blackhand's onslaught |scenariogoal 6/24678 |goto Talador/0 46.6,19.1
step
'Repel the Iron Horde from Shattrath |q The Battle for Shattrath##33731/1
step
clicknpc Portal to Talador##45454
'_Enter_ the portal |goto Talador/0 46.6,20.9 < 5
talk Durotan##79604
turnin The Battle for Shattrath##33731 |goto 71.42,29.61
step
'_Go through_ the gate |goto Talador/0 71.7,29.3 < 20
'_Follow_ the path back |goto 74.0,33.3 < 20
talk Crystal-Shaper Barum##75896
accept Burning Sky##33740 |goto 73.07,38.76
accept Pieces of Us##33734 |goto 73.07,38.76
stickystart "ST5"
step
'_Cross_ the bridge |goto Talador/0 75.5,40.8	< 20
click Barum's Notes## |tip It looks like an open book laying on the ground.
accept Barum's Notes##33761 |goto 76.28,42.74
step
talk Raksi##75311
accept Pyrophobia##33578 |goto 77.74,43.96
step
kill Sun-Sage Kairyx##75302 |q Pyrophobia##33578/1 |goto 78.52,45.38
step
talk Raksi##75311
turnin Pyrophobia##33578 |goto 77.74,43.95
accept What the Draenei Found##33579 |goto 77.74,43.95
step
click Harmonic Crystal##9694
'Test the Harmonic Crystal |q Barum's Notes##33761/3 |goto 77.30,42.09
step
click Polished Crystal##9024
'Test the Polished Crystal |q Barum's Notes##33761/2 |goto 77.49,41.40
step
click Honed Crystal##7075
'Test Honed Crystal |q Barum's Notes##33761/1 |goto 77.82,41.95
step
click Annals of Aruuna##8070
get Annals of Aruuna##107859 |q Pieces of Us##33734/3 |goto Talador/0 75.5,44.1
step
click Melani's Doll##7514
get Melani's Doll##107856 |q Pieces of Us##33734/2 |goto 77.90,43.04
step
click Crystal-Shaper's Tools##318
get Crystal-Shaper's Tools##107851 |q Pieces of Us##33734/1 |goto Talador/0 77.5,41.2
step "ST5"
kill Adherent Wing-Guard##75283+, Adherent Squallbringer##75290+, Adherent Sun-Caller##85434+
'Kill Adherent Invaders |q Burning Sky##33740/1 |goto Talador/0 77.0,42.0
step
'_Carefully jump_ down this cliff |goto Talador 75.5,44.6 < 20
accept Bonus Objective: Aruuna's Desolation##34639 |goto 76.11,47.14
kill Frenzied Ancient##79409 |q Bonus Objective: Aruuna's Desolation##34639/1 |goto Talador/0 76.1,48.6 |tip He walks around
clicknpc Panicked Young Prowler##79432
'Young Prowlers calmed |q Bonus Objective: Aruuna's Desolation##34639/2 |goto Talador/0 76.1,48.6
step
talk Crystal-Shaper Barum##75913
turnin Pieces of Us##33734 |goto 76.72,55.24
turnin Burning Sky##33740 |goto 76.72,55.24
turnin Barum's Notes##33761 |goto 76.72,55.24
step
'_Run through_ the wooded area |goto Talador 72.9,31.0 < 30
'_Enter_ the cave |goto Talador/0 78.3,35.5 < 20
'_Follow_ the path down |goto Talador/0 80.4,34.9 < 20
'_Cross_ the bridge |goto 81.6,37.6 < 20
click Ancient Prism##7378
'Examine the Ancient Prism |q What the Draenei Found##33579/1 |goto 82.70,37.87
step
talk Raksi##75469
turnin What the Draenei Found##33579 |goto 82.64,37.78
step
talk Skytalon Inuz##81354
fpath Terokkar Refuge |goto 70.3,57.1
step
talk Shadow-Sage Iskar##75288
accept The Purge of Veil Shadar##33580 |goto 70.51,56.85
step
talk Kura the Blind##75324
accept Kura's Vengeance##33582 |goto 70.77,56.78
step
talk Darkscryer Raastok##75323
accept Forbidden Knowledge##33581 |goto 70.51,57.34
stickystart "ST8"
stickystart "ST9"
step
'Follow the path |goto Talador/0 72.6,58.7 < 20
'_Go up_ the stairs |goto Talador/0 74.9,61.7 < 20
'_Continue_ along the path |goto Talador/0 77.0,62.0 < 20
'_Enter_ the cave |goto 80.2,61.7 < 20
kill Wing-Guard Kuuan##75353 |q Kura's Vengeance##33582/1 |goto Talador/0 80.4,63.7
step "ST8"
'_Leave_ the cave |goto Talador/0 80.2,61.8
talk Outcast Darktalon##75337, Outcast Shadeweaver##75336
'Evacuat the Outcast |q The Purge of Veil Shadar##33580/1 |goto Talador/0 78.6,60.6 |tip They are all around this area
step "ST9"
click The Art of Darkness##3731
.collect 6 Shadow Tome##107391 |q Forbidden Knowledge##33581/1 |goto Talador/0 74.9,63.0
step
'_Follow_ the path |goto 72.6,58.6 < 20
talk Kura the Blind##75324
turnin Kura's Vengeance##33582 |goto 70.78,56.78
step
talk Shadow-Sage Iskar##75288
turnin The Purge of Veil Shadar##33580 |goto 70.64,57.41
step
talk Darkscryer Raastok##75323
turnin Forbidden Knowledge##33581 |goto 70.51,57.35
step
talk Seer Malune##76665
accept Dust of the Dead##33872 |goto 65.42,50.74
accept Cure of Aruunem##33873 |goto 65.42,50.74
step
kill Agitated Duskwing##76668
get 7 Handful of Duskwing Dust##108645 |q Dust of the Dead##33872/1 |goto Talador/0 66.1,51.0
click Aruunem Berry Bush## |tip They look like leafy bushes with small red berries on them
get 60 Aruunem Berries##108655 |q Cure of Aruunem##33873/1 |goto Talador/0 67.6,52.6
step
talk Seer Malune##76665
turnin Dust of the Dead##33872 |goto 65.42,50.73
turnin Cure of Aruunem##33873 |goto 65.42,50.73
accept Aruumel's Rest##33874 |goto 65.43,50.73
step
'Use the Elixir of Memeories |use Elixir of Memories##108749
kill Aruumel##76824 |q Aruumel's Rest##33874/1 |goto 68.72,55.21
step
talk Seer Malune##76665
turnin Aruumel's Rest##33874 |goto 65.43,50.73
step
'_Cross_ the river |goto Talador/0 64.4,57.0 < 20
'_Follow_ the path |goto 63.4,61.8 < 20
'_Go up_ the stairs |goto Talador/0 62.4,65.5 < 20
talk Morketh Bladehowl##80229
turnin Going to the Gordunni##34837 |goto 62.15,69.22
accept Dropping Bombs##34840 |goto 62.14,69.23
step
clicknpc Gordunni Boulderthrower##80428
'Use the Smoke Grenade on the Gordunni Bladthrower |use Smoke Grenade##112091
'Destroy the Base Catapult |q Dropping Bombs##34840/1 |goto 63.59,69.15
step
clicknpc Gordunni Boulderthrower##80428
'Use the Smoke Grenade on the Gordunni Bladthrower |use Smoke Grenade##112091
'Central Catapult |q Dropping Bombs##34840/2 |goto Talador/0 65.5,69.0
step
clicknpc Gordunni Boulderthrower##80428
'Use the Smoke Grenade on the Gordunni Bladthrower |use Smoke Grenade##112091
'Destroy the Summit Catapult |q Dropping Bombs##34840/3 |goto Talador/0 66.8,68.1
step
'_Go up_ the hill |goto Talador/0 68.2,68.9 < 20
click Grappling Hook and rope##7548
'Use the Grappling Hook |q Dropping Bombs##34840/4 |goto 68.69,69.76
step
talk Morketh Bladehowl##80339
turnin Dropping Bombs##34840 |goto 68.76,70.53
accept Punching Through##34855 |goto 68.76,70.53
accept Prized Repossessions##34858 |goto 68.76,70.53
accept Supply Recovery##34860 |goto 68.76,70.53
stickystart "ST6"
stickystart "ST7"
step
'_Go up_ the stairs |goto Talador/0 68.2,79.5 < 20
kill Vizier Vorgorsh##80294 |q Punching Through##34855/1 |goto Talador/0 68.5,82.9
step
'_Follow_ the path back |goto Talador/0 68.1,80.6 < 20
'_Go up_ the stairs |goto 67.5,78.8 < 20
kill Vizier Zulmork##80292 |q Punching Through##34855/2 |goto Talador/0 67.1,77.0
step
kill Vizier Cromaug##80295 |q Punching Through##34855/3 |goto Talador/0 66.2,81.1
step "ST6"
clicknpc Iron Horde Shipment##80957
'Collect Iron Horde Shipments |q Supply Recovery##34860/1 |goto Talador/0 68.6,77.5 |tip They are all around the area
step "ST7"
kill Gordunni Basher##79231, Gordunni Cleaver##79234, Gordunni Warcrier##81764
get 6 Gordunni "Toothpick"##112006 |q Prized Repossessions##34858/1
step
'Next to you:
talk Morketh Bladehowl##80339
turnin Prized Repossessions##34858 |goto Talador/0 65.7,79.8
turnin Punching Through##34855 |goto Talador/0 65.7,79.8
turnin Supply Recovery##34860 |goto Talador/0 65.7,79.8
accept The Lord of the Gordunni##34870 |goto Talador/0 65.7,79.8
step
'_Follow_ the stairs up |goto Talador/0 65.4,80.1 < 20
kill Witch Lord Morkurk##80335 |q The Lord of the Gordunni##34870/1 |goto 64.28,81.79
get Fury of the Forge##112308 |q The Lord of the Gordunni##34870/2 |goto 64.28,81.79
step
talk Morketh Bladehowl##80342
turnin The Lord of the Gordunni##34870 |goto 64.50,81.62
accept The Only Way to Travel##34971 |goto 64.50,81.62
step
talk Morketh Bladehowl##80623
turnin The Only Way to Travel##34971 |goto 71.19,29.90
accept Armor Up##34972 |goto 71.19,29.90
step
talk Knight-Lord Dranarus##79612
accept The Lady of Light##34696 |goto 71.84,29.75
step
'_Cross_ the river |goto Talador/0 64.4,57.0 < 20
'_Go up_ the stairs |goto Talador/0 62.5,65.3 < 20
'_Continue_ up the stairs |goto Talador/0 60.6,67.4 < 20
'_Follow_ the path |goto 57.5,67.2 < 20
talk Soulbinder Nyami##78519
accept The Heart of Auchindoun##33920 |goto 56.51,67.13
step
talk Vindicator Nobundo##78482
accept Disrupting the Flow##33917 |goto 56.72,65.78 |tip He moves around the area
step
talk Lady Liadrin##75121
turnin The Lady of Light##34696 |goto 55.49,67.67
accept Holding the Line##34418 |goto 55.50,67.65
step
talk Mehlar Dawnblade##78577
accept Powering the Defenses##35249 |goto 55.56,67.04
step
talk Ranger Belonis##79696
accept Every Bit Counts##34710 |goto 55.38,66.78
step
fpath Exarch's Refuge |goto Talador/0 54.5,67.8
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
'_Go down_ the stairs |goto Talador/13 54.7,42.3 < 20
'Investigate the Ritual |q Nightmare in the Tomb##33530/1 |goto 58.96,55.01
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
'Recover Karab'uun |q The Heart of Auchindoun##33920/2 |goto 56.68,62.49
step "ST11"
click Burning Resonator## |tip They look like green glowing crystals floating above spiked altars.
'Destroy the Burning Resonators |q Disrupting the Flow##33917/1 |goto Talador/0 55.1,62.3
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
'_Follow_ the path |goto 59.5,68.9 < 20
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
'_Cross_ the bridge |goto 59.3,77.6 < 20
'_Follow the path_ back |goto Talador/0 60.4,82.1 < 20
'_Enter_ the cave |goto 61.3,84.2
kill Xanatos the Defiler##75294 |q Into the Hollow##33970/1 |goto Talador/0 65.6,86.8
step
'Recover the Sha'tari |q Into the Hollow##33970/2 |goto 65.75,86.87 |tip The floating pink crystal with a shield around it
step "ST13"
click Defiling Crystal## |tip It looks like a floating gold colored crystal.
kill Insidious Defiler##76969 |tip There will be an Insidious Defiler next to the crystals you need to destroy
'Destroy the Defiling Crystal |q Vile Defilers##33972/1 |goto 64.03,85.56
step "ST14"
kill Deathweb Crawler##75273, Deathweb Egg Tender##76947
get 9 Deathweb Fang##109744 |q Antivenin##33971/1 |goto 59.37,79.02
step
'_Cross_ the bridge |goto Talador/0 59.3,77.3 < 20
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
'_Follow_ the path back |goto Talador/0 58.4,78.7 < 20
'_Continue_ along the path |goto 55.8,83.2 < 20
accept Bonus Objective: Zorkra's Fall##34660 |goto 54.78,85.62
clicknpc Zorka's Void Gate##79520
'Seal Zorka's Void Gates |q Bonus Objective: Zorkra's Fall##34660/1 |goto Talador/0 54.1,87.1
kill 10 Shattered Hand Grunt##79544 |q Bonus Objective: Zorkra's Fall##34660/2 |goto Talador/0 54.7,87.6
step
talk Soulbinder Tuulani##77869
turnin Scheduled Pickup##34242 |goto 50.42,87.52
accept Restalaan, Captain of the Guard##34508 |goto 50.42,87.52
step
talk Defender Artaal##78083
accept Never Forget##34013 |goto 50.52,87.53
step
talk Vindicator Kaluud##78082
accept Payback##34234 |goto 50.40,87.32
step
click Hastily Written Note## |tip It looks like a scroll laying on the ground next to the fountain.
accept Invasion of the Soul Eaters##33988 |goto 49.22,88.04
stickystart "ST15"
step
click Forge##209
get Auchenai Torch##108886 |q Invasion of the Soul Eaters##33988/1 |goto 49.32,87.89
step
click Telmor Registry## |tip It looks like an open book laying on some white sacks, next to a pile of boxes.
get Telmor Registry##108896 |q Never Forget##34013/1 |goto 49.28,87.86
step
clicknpc Body Pile##77003 |q Invasion of the Soul Eaters##33988/2 |count 1 |goto 49.60,89.03
step
clicknpc Body Pile##77003 |q Invasion of the Soul Eaters##33988/2 |count 2 |goto 48.77,89.89
step
clicknpc Body Pile##77003 |q Invasion of the Soul Eaters##33988/2 |count 3 |goto 48.50,88.71
step
clicknpc Body Pile##77003 |q Invasion of the Soul Eaters##33988/2 |goto 47.83,90.28
step
'Click the _Quest Complete_ box in the top right corner of your screen:
turnin Invasion of the Soul Eaters##33988 |goto 47.83,90.28
step
click Auchenai Prayerbook##8520
get Auchenai Prayerbook##109622 |q Never Forget##34013/2 |goto 49.32,90.78
step
click Leafshadow## |tip It looks like a large greyish green pointed stone inside the building.
get Leafshadow##108897 |q Never Forget##34013/3 |goto 47.52,88.92
step "ST15"
kill 12 Wrathguard Destroyer##75382, Demon Conjurer##77901, Depraved Hunter##77026, Zealous Fanatic##77434, Shadowborne Reverend##77426, Fervid Adherent##77022, Depraved Hunter##77026 |q Payback##34234/1 |goto 49.37,88.04
step
talk Vindicator Kaluud##78082
turnin Payback##34234 |goto 50.38,87.32
step
talk Defender Artaal##78083
turnin Never Forget##34013 |goto 50.52,87.55
step
'_Continue up_ the stairs |goto 47.1,90.0 < 20
'_Enter_ the building |goto 45.1,90.5 < 20
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
'_Follow_ the path down |goto 44.7,87.5 < 20
'_Go up_ the hill |goto 42.5,80.0 < 20
talk Restalaan##77799
turnin Changing the Tide##34326 |goto 43.43,75.93
accept Desperate Measures##34092 |goto 43.43,75.95
step
talk Lady Liadrin##75389
accept Ogre Diplomacy##34122 |goto 42.96,76.23
step
fpath Retribution Point |goto Talador/0 42.1,76.8
stickystart "ST16"
step
'_Follow_ the path back |goto Talador/0 40.8,82.0 < 20
kill Mok'war the Terrible##77350
get Ango'rosh Spellbook##109163 |q Desperate Measures##34092/1 |goto 39.43,83.52
step
kill Dur'gol the Ruthless##77349
get Grimoire of Binding##109162 |q Desperate Measures##34092/2 |goto 42.69,84.87
step
clicknpc Altar of Ango'rosh##77393
'Perform the ritual |q Desperate Measures##34092/3 |goto 41.25,82.46 |tip Be sure not to move as the ritual channels
step "ST16"
kill 10 Ango'rosh Crusher##77352, Ango'rosh Spellweaver##77362, Ango'rosh Hunter##77402 |q Ogre Diplomacy##34122/1 |goto Talador/0 41.7,83.7
step
talk Restalaan##77799
turnin Desperate Measures##34092 |goto 43.44,75.93
step
talk Lady Liadrin##75389
turnin Ogre Diplomacy##34122 |goto 42.96,76.23
accept Retribution for the Light##34144 |goto 42.96,76.23
step
talk Exarch Maladaar##75392
accept Into the Heart of Madness##34157 |goto 42.93,76.10
step
click Shadow Council Communicator##7011
accept Hiding in the Shadows##34163 |goto 36.67,71.33
stickystart "ST17"
step
'_Go up_ the hill |goto Talador/0 34.3,69.6
'_Follow_ the path into Gul'rok |goto Talador/0 34.2,72.8
talk Kor'thos Dawnfury##77629
accept Book Burning##34164 |goto 34.00,73.97
step
kill Shadowborne Dementor##79187,Shadowborne Dementor##77548 |goto Talador/0 34.2,75.3
collect 3 Shadow Council Spellbook##109259 |q Book Burning##34164 |goto Talador/0 34.2,75.3
step
click Roaring Fire## |tip It looks like a huge green-yellow bonfire.
'Burn the Shadow Council Spellbooks |q Book Burning##34164/1 |goto 34.25,74.23
step
talk Kor'thos Dawnfury##77629
turnin Book Burning##34164 |goto 34.00,73.98
step
'Climb the tower |goto Talador/0 34.4,70.3
click Shadow Orb## |tip It's a purple swirling orb floating above metal column.
'Disable the Northern Shadow Orb |q Hiding in the Shadows##34163/3 |goto 34.46,70.37
step
'_Pass through_ Gul'rok|goto Talador/0 34.8,74.5
'_Climb_ the tower |goto 37.7,77.4
'Disable the Eastern Shadow Orb |q Hiding in the Shadows##34163/1 |goto 37.79,77.33
step
'_Climb_ the hill |goto Talador/0 36.4,80.3
'Disable the Southern Shadow Orb |q Hiding in the Shadows##34163/2 |goto 35.64,79.84
step
'Click the _Quest Complete_ box in the top right corner of your screen:
turnin Hiding in the Shadows##34163
step "ST17"
kill 15 Gorebound Demonguard##77541, Felwrought Annihilator##77528, Gorebound Demonguard##77541, Shadowborne Dementor##77548 |q Retribution for the Light##34144/1
step
'_Follow_ the path up |goto Talador/0 32.8,74.5
'_Enter_ the cave |goto 31.9,74.6
talk Soulbinder Nyami##77582
turnin Into the Heart of Madness##34157 |goto 31.21,73.60
accept Destination: Unknown##34564 |goto 31.21,73.60
step
clicknpc Demonic Gateway##77571
'Use the Demonic Gateway |q Destination: Unknown##34564/1 |goto 30.94,73.19
step
kill Mongrethod##77579 |q Destination: Unknown##34564/2
step
'Go to the North side of the room
clicknpc Demonic Gateway##77571 |q Destination: Unknown##34564/3
step
talk Lady Liadrin##77580
turnin Retribution for the Light##34144 |goto 45.68,74.47
step
talk Soulbinder Tuulani##79434
turnin Destination: Unknown##34564 |goto 46.32,74.09
accept Together We Are Strong##36512 |goto 46.32,74.09
step
talk Lady Liadrin##77580
accept Come Together##34706 |goto 45.70,74.46
step
'_Go up_ the stairs |goto Talador/0 44.5,74.5 < 20
'_Follow_ the path |goto 42.6,71.5 < 20
accept Bonus Objective: Court of Souls##34667 |goto 42.94,62.13
kill Warlock Soulstealer##79482
'Free Draenei Spirits|q Bonus Objective: Court of Souls##34667/1 |goto 43.35,62.67
kill 10 Doombringer##79503 |q Bonus Objective: Court of Souls##34667/2 |goto 43.26,62.57
clicknpc Auchenai Ballista##79523 |goto Talador/0 43.8,59.3
'Enter the Auchenai Ballista |invehicle |q Bonus Objective: Court of Souls##34667
kill Shadowgaze Batrider##79514
'Shoot down Shadowgaze Batriders |q Bonus Objective: Court of Souls##34667/3 |goto 43.20,62.70
step
talk Ageilaa##78534
turnin Every Bit Counts##34710 |goto 49.89,56.16
accept Trouble In The Mine##34399 |goto 49.89,56.16
accept Frenzied Manafeeders##34400 |goto 49.89,56.16
step
kill Frenzied Manafeeder##78390
'Watch out for the _"The Frenzied Manafeeder has entered a weakened state."_ to appear
'Use the Dissipation Crytal |use Dissipation Crystal##110468
'Sooth the Frenzied Manafeeders |q Frenzied Manafeeders##34400/1 |goto Talador/0 50.5,54.7
step
talk Ageilaa##78534
turnin Frenzied Manafeeders##34400 |goto 49.89,56.16
step
'_Enter_ the mine |goto 51.2,51.6 < 20
talk Vindicator Doruu##78538
turnin Trouble In The Mine##34399 |goto 51.61,50.47
step
talk Manduil Skycaller##78515
accept Arcane Essence##34401 |goto 51.64,50.51
accept Crystals of Unusual Power##34404 |goto 51.64,50.51
step
kill Arcane Wraith##78326, Crystal Rager##78452
get 6 Arcane Essence##110390 |q Arcane Essence##34401/1
click Jorune Crystal## |tip The pink crystals in mine carts.
get 10 Unrefined Power Crystals##110391 |q Crystals of Unusual Power##34404/1 |goto Talador/0 52.2,49.7
step
'_Go up_ the ramp |goto Talador/0 52.6,50.5 < 20
talk Manduil Skycaller##78515
turnin Arcane Essence##34401 |goto 51.64,50.51
turnin Crystals of Unusual Power##34404 |goto 51.64,50.51
accept An'dure The Giant##34414 |goto 51.64,50.51
step
kill An'dure the Awakened##78372
get Crystal Giant Heart##110418 |q An'dure The Giant##34414/1 |goto Talador/0 54.1,50.0
step
'_Go up_ the ramp |goto Talador/0 52.6,50.5 < 20
talk Manduil Skycaller##78515
turnin An'dure The Giant##34414 |goto 51.64,50.51
accept Kaelynara Sunchaser##34447 |goto 51.64,50.51
step
talk Manduil Skycaller##78515
'Tell him "_I am ready to confront Kaelynara._"
'Speak With Manduil Skycaller |q Kaelynara Sunchaser##34447/1 |goto 51.65,50.51
step
'Wait to be teleported:
kill Kaelynara Sunchaser##78501 |q Kaelynara Sunchaser##34447/2 |goto 52.08,47.54
collect Tear-stained Letter##110667 |q 34447
step
talk Manduil Skycaller##78515 |goto Talador 52.1,47.7
'Tell him "_I am ready to return to the Jorune Mine._" |goto Talador 51.6,50.5 < 20 |noway |c |q 34447
talk Vindicator Doruu##78538
turnin Kaelynara Sunchaser##34447 |goto 51.62,50.48
step
talk Knight-Lord Dranarus##79612
turnin Come Together##34706 |goto 71.84,29.74
step
label "end"
Congratulations! You have completed the Talador Guide!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Warlords of Draenor 90-100\\Spires of Arak (96-98)",[[
next Zygor's Horde Leveling Guides\\Warlords of Draenor 90-100\\Nagrand - Draenor (98-100)
image SpiresOfArak
condition suggested !exclusive
startlevel 96
step
talk Shadow Hunter Kajassa##79627
accept News from Spires of Arak##35537 |goto Talador/0 71.24,29.95
step
talk Rokhan##78487
turnin News from Spires of Arak##35537 |goto Frostwall/0 45.90,42.87
accept Arakkoa Exodus##34653 |goto 45.90,42.87
step
talk Bron Skyhorn##79407
'Tell him _"Please fly me to Spires of Arak."_ |goto Frostwall/0 45.8,50.9 < 5
talk Azik##79539
turnin Arakkoa Exodus##34653 |goto Spires of Arak/0 37.9,18.0
accept The Shadows of Skettis##34655 |goto Spires of Arak/0 37.9,18.0
step
'_Go down_ the hill |goto Spires of Arak/0 38.1,20.5 < 20
'_Pass_ through the archway |goto 41.4,16.9 < 20
'_Go up_ the hill |goto Spires of Arak/0 42.9,14.9 < 20
talk Reshad##79519
'Tell him _"Shadows gather..."_ |q The Shadows of Skettis##34655/1 |goto 43.65,12.93
step
talk Reshad##79519
turnin The Shadows of Skettis##34655 |goto 43.65,12.93
accept Hidden in Plain Sight##34656 |goto 43.65,12.93
accept Adherents of the Sun God##34657 |goto 43.65,12.93
stickystart "ST1"
step
'_Go through_ the wooden gate |goto Spires of Arak 42.4,15.3 < 20
click Weathered Wingblades## |tip They look like 2 blade weapons held by an Arrakoa scarecrow.
get Weathered Wingblades##111485 |q Hidden in Plain Sight##34656/1 |goto 41.23,16.27
step
click Ragged Mask## |tip It looks like a white cloth on the face of an Arrakoa scarecrow.
get Ragged Mask##111524 |q Hidden in Plain Sight##34656/2 |goto 44.94,15.14
step "ST1"
kill 8 Adherent Bladewing##79598 |q Adherents of the Sun God##34657/1 |goto Spires of Arak/0 44.7,13.9
step
talk Reshad##79519
turnin Hidden in Plain Sight##34656 |goto 43.65,12.94
turnin Adherents of the Sun God##34657 |goto 43.65,12.94
accept Orders From On High##34658 |goto 43.65,12.94
step
_Jump over_ the rubble next to the wall |goto Spires of Arak 46.2,14.5 < 20
kill Sun-Sage Rathyx##79516
get Adherent Proclamation##111575 |q Orders From On High##34658/1 |goto 45.93,15.49
step
talk Reshad##79519
turnin Orders From On High##34658 |goto 45.39,18.26
accept The Crone##34659 |goto 45.39,18.26
step
'_Cross_ the bridge and follow the road |goto Spires of Arak 45.4,20.0 < 20
'_Go down_ the large hill and follow the dirt road |goto 49.0,24.6 < 20
'_Cross_ the 2nd bridge | goto Spires of Arak 50.3,28.5 < 20
talk Ornekka##79890
'Tell him: "_Shadows gather..._"
'Speak the Password to Ornekka |q The Crone##34659/1 |goto 51.62,31.39
turnin The C44rone##34659 |goto 51.61,31.35
accept A Charming Deception##34756 |goto 51.61,31.35
accept All Due Respect##35636 |goto 51.61,31.35
step
talk Reshad##79519
accept Echo Hunters##34805 |goto 51.56,31.34
step
talk Darkscreech##84515
fpath Crow's Crook |goto Spires of Arak 51.8,31.1
stickystart "ST3"
step
'_Ride along_ the dirt road |goto Spires of Arak 50.8,32.8 < 20
clicknpc Syth##80047
get Feather of Syth##111850 |q All Due Respect##35636/1 |goto 50.26,36.36
step
click Syth's Bookcase## |tip It looks like a hanging nest inside the hut.
'Watch the Dialoge:
'The Saga of Terokk |q All Due Respect##35636/2 |goto 50.02,36.73
step
talk Reshad##82621
turnin All Due Respect##35636 |goto 50.28,36.71
accept Syth's Secret##35668 |goto 50.28,36.71
step
click Illusion Charm## |tip They look like purple and brown wooden objects leaning against trees around this area.
'Use Illusion Charms |q A Charming Deception##34756/1 |goto Spires of Arak/0 51.1,36.5 |count 1
step
click Illusion Charm## |tip They look like purple and brown wooden objects leaning against trees around this area.
'Use Illusion Charms |q A Charming Deception##34756/1 |goto Spires of Arak/0 50.1,37.6 |count 2
step
click Illusion Charm## |tip They look like purple and brown wooden objects leaning against trees around this area.
'Use Illusion Charms |q A Charming Deception##34756/1 |goto Spires of Arak/0 49.6,38.2 |count 3
step
click Illusion Charm## |tip They look like purple and brown wooden objects leaning against trees around this area.
'Use Illusion Charms |q A Charming Deception##34756/1 |goto Spires of Arak/0 50.4,40.0 |count 4
step
click Illusion Charm## |tip They look like purple and brown wooden objects leaning against trees around this area.
'Use Illusion Charms |q A Charming Deception##34756/1 | goto Spires of Arak/0 48.9,39.7 |count 5
step
'_Enter_ the Den |goto Spires of Arak 49.0,41.4 < 20
kill 1 Sun-Talon Oberyx##82623
get The Eye of Anzu##113282 |q Syth's Secret##35668/1 |goto 48.35,42.93
step "ST3"
kill 10 Echo Hunter##79895 |q Echo Hunters##34805/1 |goto 51.29,37.23
step
'_Run_ up the hill |goto Spires of Arak/0 48.5,41.4
talk Reshad##81770
turnin A Charming Deception##34756 |goto 48.56,44.48
turnin Syth's Secret##35668 |goto 48.56,44.48
turnin Echo Hunters##34805 |goto 48.56,44.48
accept A Gathering of Shadows##35671 |goto 48.56,44.48
step
'Follow Rshad to Veil Terokk |q A Gathering of Shadows##35671/1 |goto Spires of Arak/0 47.1,45.3
step
talk Shadow-Sage Iskar##80153
turnin A Gathering of Shadows##35671 |goto 46.50,45.60
step
talk Skytalon Meshaal##84498
fpath Veil Terokk |goto Spires of Arak 46.2,44.1
step
talk Shadow Hunter Ukambe##81890
accept One of Our Own##35272 |goto 45.90,46.34
step
talk Shadow-Sage Iskar##80153
'Tell him "_Your prisoner is with me. He means your people no harm._"
'Convince Shadow-Sage Iskar |q One of Our Own##35272/1 |goto 46.52,45.61
step
talk Shadow Hunter Ukambe##81890
turnin One of Our Own##35272 |goto 45.89,46.37
accept Inspecting the Troops##35275 |goto 45.90,46.36
step
'_Go down_ the hill |goto Spires of Arak 43.9,48.6 < 20
'_Go right_ at the crossroad |goto Spires of Arak 41.6,48.9 < 20
talk Shadow Hunter Ukambe##81913
turnin Inspecting the Troops##35275 |goto 40.07,44.03
step
talk Taskmaster Gornek##81920
accept Orders, Commander?##35277 |goto 40.18,43.49
step
'Routing to Smuggler |next "smuggler" |only if havequest(35697) or completedq(35697)
'Rounting to Tavern |next "hearthfire" |only if havequest(37326) or completedq(37326)
step
clicknpc Drafting Table##79177
'Use the Drafting Table |q Orders, Commander?##35277/1 |goto Spires of Arak/0 40.2,43.4
'Click here if you chose _Hearthfire Tavern_ |confirm always |goto Spires of Arak/0 40.2,43.4 |next "hearthfire"
'Or
'Click here if you chose _Smuggler's Den_ |confirm always |goto Spires of Arak/0 40.2,43.4 |next "smuggler"
step
label "smuggler"
talk Taskmaster Gornek##81920
turnin Orders, Commander?##35277 |goto 40.19,43.50
step
talk Shadow Hunter Ukambe##81959
accept What's Theirs is Ours##35295 |goto 40.27,43.39
step
talk Provisioner Galgar##82691
accept Peace Offering##35697 |goto 40.06,43.20
step
talk Percy##79748
accept Return to Veil Terokk##35611 |goto 40.09,43.96
|next "deadpeeps"
step
label "hearthfire"
talk Taskmaster Gornek##81920
turnin Orders, Commander?##35277 |goto 40.19,43.50
accept Befriending the Locals##37326 |goto 40.18,43.49
step
talk Shadow Hunter Ukambe##81959
accept What's Theirs is Ours##35295 |goto 40.28,43.38
step
talk Percy##79748
accept Return to Veil Terokk##35611 |goto 40.09,43.98
step
label "deadpeeps"
talk Taz'jari##84213
home Axefall |goto Spires of Arak/0 40.4,43.0 |future |q 36166
step
talk Hutou Featherwind##82612
fpath Axefall |goto Spires of Arak/0 39.5,43.4
step
'_Go down_ the ledge |goto Spires of Arak/0 39.6,45.6 < 20
talk Shadow Hunter Ukambe##81961
turnin What's Theirs is Ours##35295 |goto 39.14,48.94
accept I See Dead People##35322 |goto 39.14,48.94
step
kill Restless Foreman##82046, Spectral Laborer##82055, Restless Foreman##82083
get Bryan Finn's Schematic##113095 |q I See Dead People##35322/1 |goto Spires of Arak/0 39.6,50.2
step
talk Bryan Finn##82100
'_"Show the schematic to Bryan."_ |q I See Dead People##35322/2 |goto 38.99,48.72
step
talk Bryan Finn##82065
turnin I See Dead People##35322 |goto 38.99,48.72
accept A Parting Favor##35339 |goto 38.99,48.72
step
kill Ghastly Guard##82028, Lingering Rifleman##82029, Tormented Villager##82027, Ghastly Nightwatch##82038
get 6 Spectral Essence##113106 |q A Parting Favor##35339/1 |goto 37.94,51.26
step
talk Alice Finn##82110 |tip She is upstairs in a bed
'_Show the spectral essences to Alice_
'Free Alice Finn's Mind |q A Parting Favor##35339/2 |goto 37.67,51.07
step
talk Alice Finn##82124
turnin A Parting Favor##35339 |goto 37.66,51.08
accept A Piece of the Puzzle##35353 |goto 37.66,51.08
step
kill 1 Watch Commander Branson##82136 |q A Piece of the Puzzle##35353/1 |goto 37.41,51.04 |tip He's all the way in the basement of the inn.
step
talk Alice Finn##82126 |tip She's in the Kitchen of the inn.
turnin A Piece of the Puzzle##35353 |goto 37.54,50.76
accept Second in Command##35380 |goto 37.54,50.76
step
'_Leave_ the Inn |goto Spires of Arak/0 37.7,51.3 < 10
'_Enter_ the large building |goto Spires of Arak/0 37.4,53.5 < 10
talk Sir Harris##82194
turnin Second in Command##35380 |goto 37.70,53.81
accept Punishable by Death##35407 |goto 37.70,53.81
step
talk Lady Claudia##82212
accept Prime the Cannons##35408 |goto 37.66,53.87
stickystart "ST4"
step
click Cannonball##13420 |tip They are lying on the ground around this area.
get 10 Armory Cannonball##113122 |q Prime the Cannons##35408/1 |goto 36.95,53.25
step
talk Benjamin Gibb##86597
accept Three Feet Under##36864 |goto 35.79,52.16
step "ST4"
kill 8 Complicit Guard##82235+, Renegade Cannoneer##82232+ |q Punishable by Death##35407/1 |goto 36.93,53.20
step
click Armory Cannon##12908
get Armory Cannon##113127 |q Prime the Cannons##35408/2 |goto 36.43,53.53
step
talk Sir Harris##82194
turnin Punishable by Death##35407 |goto 37.68,53.78
step
talk Lady Claudia##82212
turnin Prime the Cannons##35408 |goto 37.64,53.85
accept Admiral Taylor##36183 |goto 37.66,53.87
step
'_Leave_ the large building |goto Spires of Arak/0 37.4,53.4 < 10
'Find Admiral Taylor |q Admiral Taylor##36183/1 |goto 36.82,56.90
step
kill Soulscythe##82314 |q Admiral Taylor##36183/2 |goto 36.82,56.90
step
kill Ephial##82320 |q Admiral Taylor##36183/3 |goto 36.81,57.42
step
talk Admiral Taylor##82375
turnin Admiral Taylor##36183 |goto 36.82,56.94
step
talk Shadow Hunter Ukambe##82402
accept Surviving in a Savage Land##35550 |goto 36.86,56.74
step
'Follow the side wall |goto Spires of Arak/0 38.3,54.6 < 15
'_Take the path left_ at the fork |goto 40.0,49.2 < 15
talk Scout Cel##85566
accept Pinchwhistle Gearworks##35620 |goto 40.02,43.97
step
talk Taskmaster Gornek##81920
turnin Surviving in a Savage Land##35550 |goto 40.18,43.50
step
talk Hutou Featherwind##82612
'Tell him _"Take me to the Pinchwhistle Gearworks."_
'Travel to Pinchwhistle Gearworks |q Pinchwhistle Gearworks##35620/1 |goto 39.51,43.36
step
talk Kwiven Quickcog##82511
fpath Pinchwhistle Gearworks |goto Spires of Arak/0 60.9,73.3
step
talk Kimzee Pinchwhistle##81109
turnin Pinchwhistle Gearworks##35620 |goto 61.48,72.93
accept Defungination##35077 |goto 61.48,72.93
step
talk Engineer Gazwitz##81128
accept Spore-be-Gone##35079 |goto 61.45,72.96
step
talk Exterminator Lemmy##85062
accept Unwanted Pests##36179 |goto 62.56,73.90
stickystart "activateturrets"
stickystart "sporecreatures"
step
'Use the QR58 Flame Blaster in your bags |use QR58 Flame Blaster##112683
'Burn Spore Pustules |q Defungination##35077/1 |goto 63.48,75.10 |tip They are small glowing domes near the mushrooms.
step "activateturrets"
clicknpc Spore-be-Gone Turret##81135
'Activate Turrets |q Spore-be-Gone##35079/1 |goto 63.00,76.69
step "sporecreatures"
kill Fungal Hulk##82243+, Spore Drifter##81138+
'Kill Spore Creatures |q Unwanted Pests##36179/1 |goto 63.22,75.28
step
talk Engineer Gazwitz##81128
turnin Spore-be-Gone##35079 |goto 61.45,72.96
turnin Unwanted Pests##36179 |goto 61.45,72.96
step
talk Kimzee Pinchwhistle##81109
turnin Defungination##35077 |goto 61.47,72.93
accept The Mother Lode##35080 |goto 61.47,72.93
step
'_Follow_ the road up |goto Spires of Arak 60.1,73.2 < 20
'_Continue_ up the dirt road |goto Spires of Arak 58.5,77.1 < 20
'Meet up with Kimzee Pinchwhistle |q The Mother Lode##35080/1 |goto 59.13,79.18
step
talk Kimzee Pinchwhistle##81773
turnin The Mother Lode##35080 |goto 59.13,79.18
accept Getting the Crew Back Together##35082 |goto 59.13,79.18
step
talk Engineer Gazwitz##81784
accept Clearing Out Before Cleaning Up##35081 |goto 59.09,79.22
stickystart "ST5"
step
clicknpc Injured Crewman##81131
'Revive Injured Crewmen |q Getting the Crew Back Together##35082/1 |goto 60.13,81.51
step "ST5"
kill 8 Crimsonwing Wasp##85403 |q Clearing Out Before Cleaning Up##35081/1 |goto 60.03,82.11
step
talk Kimzee Pinchwhistle##81773
turnin Getting the Crew Back Together##35082 |goto 59.12,79.19
step
talk Engineer Gazwitz##81784
turnin Clearing Out Before Cleaning Up##35081 |goto 59.10,79.24
accept Follow that Hotrod!##35285 |goto 59.10,79.22
step
'_Run along_ the beach path |goto Spires of Arak 60.2,83.5 < 20
talk Kimzee Pinchwhistle##81972
turnin Follow that Hotrod!##35285 |goto 58.49,92.33
accept The Right Parts for the Job##35090 |goto 58.49,92.33
accept Skimming Off The Top##35089 |goto 58.49,92.33
step
talk Krixel Pinchwhistle##81443
accept Field Trial##36384 |goto 58.48,92.21
stickystart "oil"
step
clicknpc Infected Lumberjack##81183
use Vial of Untested Serum##115475
'Test the Serum |q Field Trial##36384/1 |goto 57.35,86.04
step
'Stand next to Broken Shredders |modelnpc 81370
use G-14 Buster Rocket##112698
'Pick up the parts that fall on the ground:
click Serviceable Gear##7000
get 16 Serviceable Gear##112634 |q The Right Parts for the Job##35090/1 |goto 58.85,88.42
step "oil"
kill Volatile Sludge##81524+
get 6 Volatile Oil##112906 |q Skimming Off The Top##35089/1 |goto 59.71,89.31
step
talk Krixel Pinchwhistle##81443
turnin Field Trial##36384 |goto 58.49,92.20
step
talk Kimzee Pinchwhistle##81978
turnin Skimming Off The Top##35089 |goto 58.82,92.83
turnin The Right Parts for the Job##35090 |goto 58.82,92.83
accept Sporicide##35091 |goto 58.82,92.83
step
talk Krixel Pinchwhistle##81443
accept Preventing the Worst##35211 |goto 58.48,92.20
accept Curing With Force##36428 |goto 58.48,92.20
step
kill 6 Spore Shambler##82265 |q Sporicide##35091/1 |goto 56.73,93.62
step
talk Kimzee Pinchwhistle##81978
turnin Sporicide##35091 |goto 58.82,92.83
stickystart "ST6"
step
clicknpc Firebomb##81632 |tip It's inside this small hut.
'Place a Firebomb |q Preventing the Worst##35211/1 |count 1 |goto 56.74,91.56
step
clicknpc Firebomb##81632 |tip It's inside this small hut.
'Place a Firebomb |q Preventing the Worst##35211/1 |count 2 |goto Spires of Arak 56.3,91.6
step
clicknpc Firebomb##81632 |tip It's at the window in the top of this inn.
'Place a Firebomb |q Preventing the Worst##35211/1 |count 3 |goto Spires of Arak 55.7,91.0
step
clicknpc Firebomb##81632
'Place a Firebomb |q Preventing the Worst##35211/1 |count 4 |goto Spires of Arak 56.5,89.5
step
clicknpc Firebomb##81632 |tip It's inside this small hut.
'Place a Firebomb |q Preventing the Worst##35211/1 |count 5 |goto Spires of Arak 56.6,90.0
step "ST6"
clicknpc Infected Bruiser##81184 |tip Fight them until they are low on health.
use Vial of Refined Serum##115533
'Cure Infected Goblins |q Curing With Force##36428/1 |goto 56.12,90.82
step
talk Krixel Pinchwhistle##81443
turnin Preventing the Worst##35211 |goto Spires of Arak 58.5,92.2
turnin Curing With Force##36428 |goto Spires of Arak 58.5,92.2
accept Flame On##35298 |goto Spires of Arak 58.5,92.2
step
click Firebomb Plunger##9277
'Use the Firebomb Plunger |q Flame On##35298/1 |goto 58.51,92.22
step
clicknpc Repaired Flying Machine##81567
'Ride on Kimzee's Flying Machine |q Flame On##35298/2 |goto 58.84,92.84
step
talk Kimzee Pinchwhistle##82468
turnin Flame On##35298 |goto 61.60,72.84
accept Kimzee Pinchwhistle##36062 |goto 61.60,72.84
step
talk Kwiven Quickcog##82511
'Fly to _Veil Terokk_, Spires of Arak |goto Spires of Arak 60.9,73.3 < 5
talk Reshad##81770
turnin Return to Veil Terokk##35611 |goto 45.88,45.73
accept Talon Watch##34998 |goto 45.88,45.73
accept The Kaliri Whisperer##34884 |goto 45.88,45.73
step
talk Shadow-Sage Iskar##80153
accept Last of the Talonpriests##34827 |goto 45.94,45.76
step
talk Shadow-Sage Iskar##80153
Tell him: "_I have brought this as a peace offereing. I hope we can become close allies._"
'Deliver the Peace Offering |q Peace Offering##35697/1 |goto 45.93,45.75
|only if havequest(35697)
step
'_Follow_ the dirt road |goto Spires of Arak 47.1,42.2 < 20
clicknpc Skizzik##80233
'Search him for the gavel |q The Kaliri Whisperer##34884/1 |goto 45.42,36.32
accept Mother of Thorns##34885 |goto 45.42,36.32
step
clicknpc Kaliri Egg##80477
accept Ikky's Egg##34838 |goto 45.39,36.74
step
clicknpc Kaliri Egg##80477
'Help Ikky hatch from the Kaliri Egg in Shadowglade. |q Ikky's Egg##34838/1 |goto 45.39,36.74
talk Ikky##80469
turnin Ikky's Egg##34838 |goto 45.39,36.73
accept Baby Bird##34886 |goto 45.39,36.73
stickystart "ST7"
stickystart "ST8"
step
kill Shadeback Thornmother##80224 |q Mother of Thorns##34885/2 |goto 44.43,38.58
step "ST7"
clicknpc Ravager Grub##80472+
get 8 Ravager Grub##111934+ |q Baby Bird##34886/1 |goto 45.28,38.11
step "ST8"
kill 5 Shadeback Ravager##78931+ |q Mother of Thorns##34885/1 |goto 45.28,38.76
step
talk Ikky##80469
turnin Baby Bird##34886 |goto 45.40,36.75
step
use Elixir of Shadows##112100
'Elixir of Shadows imbibed |q Last of the Talonpriests##34827/1 |goto 48.02,34.63
step
talk Talonpriest Ishaal##80232
turnin Last of the Talonpriests##34827 |goto 48.01,34.76
accept Ishaal's Orb##34828 |goto 48.01,34.76
accept New Neighbors##34829 |goto 48.01,34.76
stickystart "ST10"
step
clicknpc Ravager Egg##85425
accept Egg Punt##36425 |goto 47.14,31.67
stickystart "ST9"
step
click Ishaal's Orb##6964
get Ishaal's Orb##112101 |q Ishaal's Orb##34828/1 |goto 48.09,28.47
step "ST9"
clicknpc Ravager Egg##85425
'Kick Ravager Eggs |q Egg Punt##36425/1 |goto 47.15,30.88
step
'Click the _Quest Complete_ box in the top right corner of your screen:
turnin Egg Punt##36425
step "ST10"
kill Shattered Hand Flayer##80430+, Shattered Hand Cutthroat##80178+
'Kill Shattered Hand Orcs |q New Neighbors##34829/1 |goto 47.26,31.37
step
talk Talonpriest Ishaal##80232
turnin Ishaal's Orb##34828 |goto 48.01,34.75
turnin New Neighbors##34829 |goto 48.01,34.75
accept Behind the Veil##34830 |goto 48.01,34.75
step
'_Run on_ the dirt path |goto Spires of Arak/0 45.6,32.8 < 20
'Enter the _wooded area_ of Veil Akraz |goto Spires of Arak 44.6,29.1 < 20
use Major Elixir of Shadows##112099
'Drink the Major Elixir of Shadows at Zellek's hut in Veil Akraz. |q Behind the Veil##34830/1 |goto 44.52,23.82
step
talk Talonpriest Zellek##80508
turnin Behind the Veil##34830 |goto 44.49,24.00
accept Blades in the Dark##34882 |goto 44.49,24.00
accept A Feast of Shadows##34883 |goto 44.49,24.00
step
kill Malrok Thornscar##80509 |q Blades in the Dark##34882/1 |goto 42.46,26.72
step
kill Essence Fiend##80512+, Face-Stealer##79973+
get 10 Shadow Dust##112195 |q A Feast of Shadows##34883/1 |goto 44.10,27.08
step
talk Talonpriest Zellek##80508
turnin Blades in the Dark##34882 |goto 44.49,24.00
turnin A Feast of Shadows##34883 |goto 44.49,24.00
accept Back from Beyond##34942 |goto 44.49,24.00
step
talk Darkscryer Raastok##85598
accept Power Unearthed##35257 |goto 44.40,23.99
step
'_Follow_ the dirt path |goto Spires of Arak/0 42.1,24.9 < 20
'_Cross_ the earth looking _bridge_ |goto Spires of Arak/0 39.6,24.5 < 20
talk Darkscryer Raastok##80157
turnin Power Unearthed##35257 |goto 36.87,24.54
accept Hardly Working##35260 |goto 36.87,24.54
accept Legacy of the Apexis##35258 |goto 36.87,24.54
step
talk Kura the Blind##80155
accept Sol Sisters##35259 |goto 36.95,24.45
step
talk Skytalon Kuris##84509
fpath Apexis Excavation |goto Spires of Arak/0 37.0,24.6
stickystart "ST11"
stickystart "ST12"
step
'_Run up_ the winding path up the cliff |goto Spires of Arak 34.0,25.4 < 20
kill Sol-Shaper Krashyx##81934 |q Sol Sisters##35259/2 |goto 32.13,25.67
step "ST11"
clicknpc Enslaved Outcast##81873
'Use Illusion Effigies to create decoys for 10 Enslaved Outcasts |use Illusion Effigies##113084 |q Hardly Working##35260/1 |goto Spires of Arak 34.4,27.4
step "ST12"
kill Apexis Guardian##81875
get 5 Apexis Core##113081 |q Legacy of the Apexis##35258/1 |goto Spires of Arak 34.4,27.4
step
talk Darkscryer Raastok##80157
turnin Hardly Working##35260 |goto 36.87,24.56
turnin Legacy of the Apexis##35258 |goto 36.87,24.56
step
'_Climb up_ the winding path |goto Spires of Arak/0 33.9,25.4 < 10
'_Enter_ the cave |goto Spires of Arak 34.0,28.3 < 20
kill Sol-Shaper Veoryx##81933 |q Sol Sisters##35259/1 | goto Spires of Arak 32.8,28.8
step
'_Enter the cave_ in the side of the cliff |goto Spires of Arak/0 33.8,28.2 < 10
clicknpc Inactive Apexis Destroyer##82123
turnin Sol Sisters##35259 |goto 32.56,29.06
accept Shot-Caller##35261 |goto 32.56,29.06
step
'_Run out_ the broken doorway |goto Spires of Arak/0 32.8,28.2 < 10
'_Leave_ the cave |goto Spires of Arak 34.0,28.3 < 20
'_Head_ up the widing cliff |goto 33.4,25.7 < 20
kill Overseer Akrath##82145
get Apexis Interface##113121 |q Shot-Caller##35261/1 |goto 33.48,30.22
step
click Overseer's Chair## |tip It looks like a chair with a golden bird at the top.
turnin Shot-Caller##35261 |goto 35.50,32.08
accept Hot Seat##35273 |goto 35.50,32.08
step
click Overseer's Chair## |tip It looks like a chair with a golden bird at the top.
'Take a ride in the Overseer's Chair |invehicle |q 35273/1
kill 30 Adherent Sol-Shaper##82245 |q Hot Seat##35273/2 |goto 35.48,32.03
kill 20 Apexis Destroyer##82229 |q Hot Seat##35273/1 |goto 35.48,32.03
step
'_Follow_ the cliff back |goto Spires of Arak/0 33.4,29.4 < 20
'_Go down_ the winding path |goto 33.3,26.0 < 20
talk Kura the Blind##80155
turnin Hot Seat##35273 |goto 36.95,24.45
step
talk Darkscryer Raastok##80157
accept Control is King##35634 |goto 36.87,24.54
step
talk Shadow-Sage Iskar##80153
turnin Back from Beyond##34942 |goto 46.59,46.54
step
talk Reshad##81770
turnin The Kaliri Whisperer##34884 |goto 46.49,46.65
turnin Mother of Thorns##34885 |goto 46.49,46.65
accept Rites of the Talonpriests##35733 |goto 46.49,46.65
step
talk Effigy of Terokk##82813
turnin Rites of the Talonpriests##35733 |goto 46.62,46.74
accept The Talon King##35734 |goto 46.62,46.74
step
talk Effigy of Terokk##82813
'_"Touch the wingblades to witness one of Terokk's legends."_ |invehicle |q 35734
stickystart "ST13"
stickystart "ST14"
step
kill Pridelord Karash##82950 |q The Talon King##35734/3 |goto 45.86,66.48
step "ST13"
kill 20 Bloodmane Hunter##82938+ |q The Talon King##35734/2 |goto 45.86,66.48
step "ST14"
kill 30 Bloodmane Shortfang##82946+ |q The Talon King##35734/1 |goto 45.86,66.48
step
talk Reshad##81770
turnin The Talon King##35734 |goto 46.50,46.66
step
talk Ikky##85320
accept Ikky##34898 |goto 46.20,45.69
step
talk Darkscryer Raastok##82509
turnin Control is King##35634 |goto 47.12,45.86
step
'_Follow_ the path down |goto Spires of Arak/0 45.3,47.7 < 20
talk Dusk-Seer Irizzar##83463
turnin Peace Offering##35697 |goto 43.90,48.92 |only if havequest(35697)
turnin Befriending the Locals##37326 |goto 43.90,48.92 |only if havequest(37326)
accept A Lack of Wasps##37296 |goto 43.90,48.92
step
kill 8 Widow Wasp##84866 |q A Lack of Wasps##37296/1 |goto Spires of Arak/0 43.4,50.5
step
talk Dusk-Seer Irizzar##83463
turnin A Lack of Wasps##37296 |goto 43.90,48.90
accept Not Here, Not Now##37330 |goto 43.91,48.88 |or
accept Not Here, Not Now##37328 |goto 43.91,48.88 |or
|tip You will only be able to accept one of these quests.
step
'_Travel right_ on this path |goto Spires of Arak/0 41.2,48.3 < 20
talk Taskmaster Gornek##81920
turnin Not Here, Not Now##37330 |goto 40.18,43.49 |only if havequest(37330)
turnin Not Here, Not Now##37328 |goto 40.18,43.49 |only if havequest(37328)
step
talk Dark Ranger Velonara##83529
accept Best Deals Anywhere##35705 |goto 40.07,43.20 |or |next "bestdeals"
accept Attempted Murder##35907 |goto 40.08,43.28 |or |next "murder"
step
label "bestdeals"
'_Go through_ the wooded area |goto Spires of Arak/0 53.2,31.3 < 20
'Travel along the _main dirt road_ |goto 54.5,32.7 < 20
'_Continue along_ the curvy road |goto Spires of Arak/0 56.6,36.1 < 20
talk Mixxy Weldblast##82713
turnin Best Deals Anywhere##35705 |goto 56.02,40.87
accept Sticky Situation##35706 |goto 56.04,40.80
accept Safety Measures##35879 |goto 56.04,40.80
stickystart "bogdenizens"
step
click Submerged Battery##9328 |tip They are found in small ponds in this area.
'Save Submerged Batteries |q Sticky Situation##35706/1 |goto Spires of Arak/0 54.8,39.3 |count 1
step
click Submerged Battery##9328 |tip They are found in small ponds in this area.
'Save Submerged Batteries |q Sticky Situation##35706/1 |goto 55.06,42.17 |count 2
step
click Submerged Battery##9328 |tip They are found in small ponds in this area.
'Save Submerged Batteries |q Sticky Situation##35706/1 |goto Spires of Arak/0 56.4,45.0 |count 3
step
click Submerged Battery##9328 |tip They are found in small ponds in this area.
'Save Submerged Batteries |q Sticky Situation##35706/1 |goto Spires of Arak/0 56.5,48.0 |count 4
step
click Submerged Battery##9328 |tip They are found in small ponds in this area.
'Save Submerged Batteries |q Sticky Situation##35706/1 |goto 57.0,49.1 |count 5
step "bogdenizens"
kill Surly Bogwallow##82726+, Putrid Mandragora##82722+, Putrid Axebeak##83436+, Electrified Stingtail##83444+
'Bog denizens |q Safety Measures##35879/1 |goto 56.04,44.47
step
talk Mixxy Weldblast##82713
turnin Sticky Situation##35706 |goto 56.02,40.86
turnin Safety Measures##35879 |goto 56.02,40.86
accept Back on Track##35718 |goto 56.02,40.86
step
'_Go up_ the road towards Talon Watch |goto Spires of Arak/0 59.3,41.3 < 20
talk Talon Guard Kurekk##80758
turnin Talon Watch##34998 |goto 62.22,42.67
|next "talonwatch"
step
label "murder"
talk Hutou Featherwind##82612
'Tell him _"Take me to Shadow's Vigil."_ |q Attempted Murder##35907/1 |goto 39.52,43.36
step
talk Dark Ranger Velonara##83608
turnin Attempted Murder##35907 |goto 52.10,23.56
accept Assassin's Mark##35924 |goto 52.10,23.56
step
clicknpc Vigilant Outcast##83615
'_Follow the trail down_ and click Vigilant Outcast's |goto Spires of Arak/0 54.0,23.0
'Continue checking the Vigilant Outcast's |goto 55.3,22.7
'_Follow the path down_ and check the Vigilant Outcast's |goto 53.5,25.7
'Get the Assassin's Mark |q Assassin's Mark##35924/1
step
talk Dark Ranger Velonara##83772
turnin Assassin's Mark##35924 |goto 53.57,27.51
accept The Power of Poison##35947 |goto 53.57,27.51
accept Extrinsic Motivation##36022 |goto 53.58,27.51
stickystart "ST15"
step
clicknpc Shattered Hand Sightless, Shattered Hand Harvester##83706
'Coat your weapon with Vial of Wracking |use Vial of Wracking Poison##113587
'Find the Name and Location of G.V. |q The Power of Poison##35947/1 |goto Spires of Arak/0 55.0,29.1 |tip Attack the Orcs as you normally would.
step "ST15"
kill 4 Shattered Hand Sightless##83749 |q Extrinsic Motivation##36022/1 |goto Spires of Arak/0 54.9,28.8
kill 3 Shattered Hand Harvester##83706 |q Extrinsic Motivation##36022/2 |goto 55.8,28.0
kill Shattered Hand Blood-Singer##83760 |q Extrinsic Motivation##36022/3 |goto Spires of Arak/0 54.4,28.5 |tip He walks around
step
talk Dark Ranger Velonara##83772
turnin The Power of Poison##35947 |goto 53.57,27.51
turnin Extrinsic Motivation##36022 |goto 53.57,27.51
accept Gardul Venomshiv##36028 |goto 53.57,27.51
step
'_Follow_ the path back |goto Spires of Arak/0 54.0,30.1
kill Gardul Venomshiv##83834 |q Gardul Venomshiv##36028/1 |goto 56.24,34.00
step
talk Dark Ranger Velonara##83899
turnin Gardul Venomshiv##36028 |goto 57.14,34.49
accept We Have Him Now##36047 |goto 57.12,34.52
stickystart "ST16"
step
'_Go up_ the hill |goto Spires of Arak/0 58.4,35.5 < 20
kill Gardul Venomshiv##83923
get Venomshiv's Secret Formula##113635 |q We Have Him Now##36047/1 |goto 58.16,33.33
step "ST16"
kill Shattered Hand Brewer##83940
click Poison Barrel## |tip Barrels around the area with a neon green band around the middle
get 6 Poison Barrel##113630 |q We Have Him Now##36047/2 |goto 58.41,34.24
step
talk Dark Ranger Velonara##83903
turnin We Have Him Now##36047 |goto 57.14,34.48
accept No Time to Waste##36166 |goto 57.14,34.48
step
clicknpc Lunzul##84259
'Spiresalve Administered to Lunzul |q No Time to Waste##36166/1 |goto Spires of Arak/0 40.1,43.3
step
talk Lunzul##84259
turnin No Time to Waste##36166 |goto 40.11,43.27
step
talk Dark Ranger Velonara##88179
accept Standing United##37276 |goto 40.04,43.33
step
talk Hutou Featherwind##82612
'Tell him: "_Fly me to Talon Watch_" |goto Spires of Arak/0 46.2,44.1 < .01
talk Skytalon Karaz##84504
fpath Talon Watch |goto Spires of Arak 61.9,42.6
step
label "talonwatch"
talk Talon Guard Kurekk##80758
turnin Talon Watch##34998 |goto 62.22,42.67
accept Banished From the Sky##35000 |goto 62.22,42.67
step
talk Kazu##81514
accept Hatred Undying##34999 |goto 61.91,42.24
step
talk Skytalon Karaz##84504
fpath Talon Watch |goto Spires of Arak 61.9,42.6
stickystart "ST17"
step
clicknpc Cursed Arakkoa##85790
'Use the Eye of Anzu on 8 Cursed Arakkoa. |q Banished From the Sky##35000/1 |goto 62.91,39.82
step "ST17"
kill Spiteful Animate##80637+
get 15 Congealed Blood of Sethe##112335 |q Hatred Undying##34999/1 |goto 63.66,41.14
step
talk Kazu##81514
turnin Hatred Undying##34999 |goto 61.92,42.22
step
talk Talon Guard Kurekk##80758
turnin Banished From the Sky##35000 |goto 62.22,42.66
accept Gaze of the Raven God##35001 |goto 62.22,42.66
accept Sons of Sethe##35002 |goto 62.22,42.66
stickystart "ST18"
step
'Use the Eye of Anzu at 4 Wind Serpent Nests. |q Gaze of the Raven God##35001/1 |use The Eye of Anzu##117396 |goto 67.03,44.43
'|modelnpc Sethekk Wind Serpent##80643
step "ST18"
kill Sethekk Wind Serpent##80643+
get 6 Wind Serpent Wing##112336 |q Sons of Sethe##35002/1 |goto 67.11,44.66
step
clicknpc Offering Bowl##59669
turnin Sons of Sethe##35002 |goto 66.79,51.37
step
click Place Eye of Anzu##7363
turnin Gaze of the Raven God##35001 |goto 66.62,51.74
step
talk Talon Guard Kurekk##86475
accept The False Talon King##35011 |goto 66.76,51.58
step
talk Anzu##80648
accept Servants of a Dead God##35004 |goto 66.82,51.73
accept Ritual Severance##35003 |goto 66.82,51.73
stickystart "ST19"
step
'_Run up_ this small hill at the crossroads |goto Spires of Arak 68.1,43.1 < 30
'_Continue up_ the small ramp |goto Spires of Arak/0 68.9,41.1 < 20
kill Talon King Ikiss##80815
get Scuffed Bangle##117493 |q The False Talon King##35011/1 |goto 70.03,40.95
step
'Stomp out the Southern Ritual |q Ritual Severance##35003/1 |goto 68.94,41.86 |tip Run back and forth on the red circle
step
'Stomp out the Central Ritual |q Ritual Severance##35003/2 |goto 67.54,40.52 |tip Run back and forth on the red circle
step
'Stomp out the Northern Ritual |q Ritual Severance##35003/3 |goto 67.00,38.24 |tip Run back and forth on the red circle
step "ST19"
kill 6 Sethekk Chosen##80640 |q Servants of a Dead God##35004/1 |goto 68.63,45.28
kill 6 Sethekk Prophet##80638 |q Servants of a Dead God##35004/2 |goto 68.63,45.28
step
talk Anzu##86355
turnin Servants of a Dead God##35004 |goto 64.33,37.05
turnin Ritual Severance##35003 |goto 64.33,37.05
step
talk Talon Guard Kurekk##86475
turnin The False Talon King##35011 |goto 64.10,37.01
accept Lithic's Gift##35013 |goto 64.10,37.01
step
talk Anzu##86355
accept Sethe, the Dead God##35012 |goto 64.32,37.06
step
'_Go up_ the hill |goto Spires of Arak/0 61.9,37.7 < 20
talk Anzu##85614 |goto Spires of Arak/0 62.5,35.9 < 10
'Tell him: "_I am ready Anzu, we will not fall._"
kill Sethe##80644 |q Sethe, the Dead God##35012/1 |goto 62.22,34.81 |tip Kill all of the enemies that spawn nearby
step
'Bring the Scuffed Bangle to Lithic's Rest. |q Lithic's Gift##35013/1 |goto 60.47,38.74
step
talk Memory of Lithic##80834
turnin Lithic's Gift##35013 |goto 60.47,38.74
accept A Sentimental Relic##35245 |goto 60.47,38.74
step
talk Anzu##80648
turnin Sethe, the Dead God##35012 |goto 60.48,39.00
step
talk Anzu##80648
accept Cult of the Ravenspeakers##34921 |goto 46.87,46.09
step
talk Reshad##81770
turnin A Sentimental Relic##35245 |goto 46.49,46.66
accept The Missing Piece##35897 |goto 46.49,46.66
step
talk Effigy of Terokk##82813
turnin The Missing Piece##35897 |goto 46.62,46.73
accept Terokk's Fall##35895 |goto 46.62,46.73
step
talk Effigy of Terokk##82813 |goto Spires of Arak 46.6,46.7
'_Touch the bangle to witness Terokk's fall._	|invehicle |q 35895
step
'Find Lithic |q Terokk's Fall##35895/1 |goto 64.00,40.47
step
'Use the _Darktalon Strike_ to:
kill 20 Crazed Outcast##83600 |q Terokk's Fall##35895/3 |goto 64.14,41.97
clicknpc Outcast Talon Guard##83716
'Use the _Talon Kings Command_ to:
'Talon Guard rallied |q Terokk's Fall##35895/2 |goto 64.07,42.12
step
click The Eye of Anzu##6964
'Use the Eye of Anzu |q Terokk's Fall##35895/4 |goto 66.92,45.25
step
talk Reshad##81770
turnin Terokk's Fall##35895 |goto 46.49,46.67
step
talk Shadow-Sage Iskar##80153
accept A Worthy Vessel##36059 |goto 46.59,46.54
step
talk Effigy of Terokk##82813 |goto Spires of Arak 46.6,46.7
'_Call upon Terokk._
kill Terokk##83960 |q A Worthy Vessel##36059/1 |goto 46.62,46.73
step
talk Shade of Terokk##84122
turnin A Worthy Vessel##36059 |goto 46.64,46.80
accept The Avatar of Terokk##35896 |goto 46.64,46.80
'_Accept Terokk's power_ |invehicle |q 35896
step
kill 25 Shattered Hand Gladiator##84032+ |q The Avatar of Terokk##35896/1 |goto 30.69,27.86
kill 4 Shattered Hand Pit-Master##84052+ |q The Avatar of Terokk##35896/2 |goto 30.62,28.07
step
kill 1 Kargath Bladefist##84053 |q The Avatar of Terokk##35896/3 |goto 30.62,28.07
step
talk Reshad##81770
turnin The Avatar of Terokk##35896 |goto 46.49,46.67
step
'_Follow_ the dirt road to the right |goto Spires of Arak/0 47.6,45.4 < 20
click Offering Basket##
'Place an Offering |q Cult of the Ravenspeakers##34921/1 |goto 48.92,48.94
step
talk Iktis of the Flock##80639
turnin Cult of the Ravenspeakers##34921 |goto 48.98,48.97
accept To the... Rescue?##34991 |goto 48.98,48.97
step
kill Stonescale##80694
get "Tillik" of the Flock##112331
'Rescue Tillik |q To the... Rescue?##34991/1 |goto 48.66,51.58
step
talk Iktis of the Flock##80639
turnin To the... Rescue?##34991 |goto 48.99,48.96
accept The High Ravenspeaker##35010 |goto 48.99,48.96
step
'_Ride along_ the road |goto Spires of Arak/0 50.2,49.0 < 20
'Locate High Ravenspeaker Krikka |q The High Ravenspeaker##35010/1 |goto 51.32,49.80
step
talk High Ravenspeaker Krikka##80481
turnin The High Ravenspeaker##35010 |goto 52.13,49.92
accept Rendezvous with the Ritualists##35007 |goto 52.13,49.92
step
'_Run up_ the dirt road |goto Spires of Arak/0 51.9,51.7 < 20
'_Go up_ the hill |goto Spires of Arak/0 53.4,53.7 < 20
talk Ravenspeaker Sekara##80740
turnin Rendezvous with the Ritualists##35007 |goto 54.87,54.24
accept The Bloodmane##34923 |goto 54.87,54.24
accept Words of the Raven Mother##34922 |goto 54.87,54.24
stickystart "ST20"
stickystart "ST21"
step
kill Huntmaster Sorrowfang##83896 |q The Bloodmane##34923/2 |goto Spires of Arak/0 55.8,55.7
step "ST20"
click Ravenspeaker Scroll## |tip They are rolled up scrolls next to dead Arrakoa around the area.
get 8 Ravenspeaker Scroll Fragment##112199 |q Words of the Raven Mother##34922/1 |goto 54.91,55.95
step "ST21"
kill 10 Bloodmane Razorclaw##80455 |q The Bloodmane##34923/1
step
talk Ravenspeaker Sekara##80740
turnin The Bloodmane##34923 |goto 54.88,54.24
turnin Words of the Raven Mother##34922 |goto 54.88,54.24
accept Ralshiara's Demise##34938 |goto 54.88,54.24
step
talk Vakora of the Flock##80863
accept The Egg Thieves##34924 |goto 54.83,54.15
step
talk High Ravenspeaker Krikka##80860
accept Declawing The Bloodmane##34939 |goto 54.85,54.32
step
'Proceeding to _Back on Track_ |next "backontrack" |only if havequest(35718) or completedq(35718)
'Proceeding to _The Good Doctor_ |next "doctor" |only if default
step
label "backontrack"
'_Run through_ the wooded area |goto Spires of Arak/0 57.0,52.1 < 20
talk Trixxy Weldblast##82786
turnin Back on Track##35718 |goto 60.20,53.14
accept All Natural##35738 |goto 60.20,53.14
accept I See Dead Arakkoa##35766 |goto 60.20,53.14
stickystart "freshcharcoal"
step
'Use the Ghostogrifier 12000 |use Ghostogrifier 12000##113438
kill 1 Talonpriest Zekk##82887 |q I See Dead Arakkoa##35766/1 |goto 61.00,57.96
step "freshcharcoal"
kill Smoldering Ancient##82805+
get 30 Fresh Charcoal##113404 |q All Natural##35738/1 |goto 60.03,56.31
step
talk Trixxy Weldblast##82786
turnin All Natural##35738 |goto 60.20,53.15
turnin I See Dead Arakkoa##35766 |goto 60.20,53.15
accept The Ebon Hunter##35797 |goto 60.20,53.15
step
'_Go through_ the trees and over the terrain |goto Spires of Arak/0 62.4,56.9 < 30
kill 1 The Ebon Hunter##82933
get 1 Organic Laser Apparatus##113441 |q The Ebon Hunter##35797/1 |goto 65.04,61.44
step
'_Go through_ the trees and over the terrain |goto Spires of Arak/0 62.4,56.9 < 30
talk Trixxy Weldblast##82786
turnin The Ebon Hunter##35797 |goto 60.08,53.63
step
label "doctor"
'_Go up_ the path next to the _Large Tree_ |goto Spires of Arak/0 56.8,52.2 < 20
'_Go down_ the dirt road |goto Spires of Arak/0 53.9,54.6 < 20
'_Run over_ the grassy hill |goto Spires of Arak/0 51.8,53.7 < 30
talk Mortally Wounded Initiate##86381
accept The Initiate's Revenge##36790 |goto 50.99,55.97
stickystart "ST22"
stickystart "ST23"
step
clicknpc Ralshiara##80502
use Strange Crystal Shard##112681
kill 1 Ralshiara##80502 |q Ralshiara's Demise##34938/1 |goto 50.08,59.77
step "ST22"
click Dread Raven Egg## |tip Bowling ball sized dark purple eggs scattered around the area.
get 8 Dread Raven Egg##112135 |q The Egg Thieves##34924/1 |goto 48.77,58.24
step "ST23"
kill Bloodmane Earthbinder##80448+, Bloodmane Gutripper##80450+
'Kill 18 Bloodmane Saberon |q The Initiate's Revenge##36790/1 |goto 50.31,56.11
get 6 Bloodmane Earthbinder Paw##112204 |q Declawing The Bloodmane##34939/1 |goto 50.28,56.13
step
'_Leave_ Bloodmane Valley |goto Spires of Arak/0 51.0,55.3 < 20
'_Ride through_ the wooded area |goto Spires of Arak/0 51.7,52.1 < 30
talk High Ravenspeaker Krikka##80481
turnin Ralshiara's Demise##34938 |goto 52.12,49.93
turnin Declawing The Bloodmane##34939 |goto 52.12,49.93
step
talk Vakora of the Flock##80746
turnin The Egg Thieves##34924 |goto 52.09,49.42
turnin The Initiate's Revenge##36790 |goto 52.09,49.42
step
talk High Ravenspeaker Krikka##80481
accept Call of the Raven Mother##35009 |goto 52.11,49.92
'Tell him: "_I'm ready. High Ravenspeaker._"	|q Call of the Raven Mother##35009/1 |goto 52.11,49.92
step
click Blessed Waters## |tip The purple jug to the far right.
click Sacred Feathers## |tip The blue feathers next to the Blessed Water.
click Scroll of the Ravens## |tip An unrolled scroll on the left next to the Incense.
click Aromatic Incense## |tip The woven basket on the far left.
'Click the items when Ravenspeaker calls them out:
'Complete the Ritual |q Call of the Raven Mother##35009/2 |goto 51.64,50.39
step
talk Ka'alu##77857
turnin Call of the Raven Mother##35009 |goto 51.23,50.53
step
talk Reshad##84276
accept On Ebon Wings##36085 |goto 51.35,50.29
step
talk Ka'alu##77857
'Tell him "_I am ready to fly. Ka'alu._" |q On Ebon Wings##36085/1 |goto 51.22,50.55
step
kill 8 Adherent Skystriker##84111 |q On Ebon Wings##36085/2 |goto 45.96,53.53
kill 1 Windkeeper Koreyx##84001 |q On Ebon Wings##36085/3 |goto 45.80,53.53
step
talk Reshad##84262
turnin On Ebon Wings##36085 |goto 46.52,54.29
accept When All Is Aligned##35704 |goto 46.52,54.29
step
clicknpc Ka'alu##86254
'Ride Ka'alu |invehicle |goto Spires of Arak 46.6,54.6 |q 35704
step
'Use your screech ability to kill
kill 80 Adherent Wind-Thrasher##82817 |q When All Is Aligned##35704/1 |goto 52.67,42.30
step
talk Reshad##81770
turnin When All Is Aligned##35704 |goto 46.50,46.66
step
talk Talonpriest Ishaal##83959
accept Talonpriest Ishaal##37141 |goto 46.52,46.81
step
talk Shadow-Sage Iskar##80153
accept News from Nagrand##36602 |goto 46.58,46.55
step
talk Rokhan##78487
turnin News from Nagrand##36602 |goto Frostwall/0 45.93,42.88 |only if havequest(36602)
turnin News from Nagrand##36607 |goto 45.93,42.88 |only if havequest(36607)
accept Taking the Fight to Nagrand##34794 |goto 45.93,42.88
step
'Congratulations! You have completed the Spires of Arak Guide!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Warlords of Draenor 90-100\\Nagrand - Draenor (98-100)",[[
condition suggested !exclusive
image NagrandDraenor
startlevel 98
endlevel 100
step
talk Shadow-Sage Iskar##80153
accept News from Nagrand##36602 |goto Spires of Arak 46.58,46.55
step
talk Rokhan##78487
turnin News from Nagrand##36607 |goto Frostwall/0 45.90,42.82
turnin News from Nagrand##36607 |goto 45.93,42.88
accept Taking the Fight to Nagrand##34794 |goto 45.79,43.12
step
talk Bron Skyhorn##79407
'Tell him _"I need a flight to the border of Nagrand."_ |goto Frostwall/0 45.8,50.8 < 5
'_Go up_ the hill |goto Nagrand D/0 89.4,70.5
talk Stone Guard Brox##80001
turnin Taking the Fight to Nagrand##34794 |goto Nagrand D/0 86.37,66.18
accept The Might of the Warsong##34795 |goto 86.37,66.19
step
'_Follow_ the path |goto Nagrand D/0 84.8,66.0 < 20
'_Continue_ along the cobblestone path |goto Nagrand D/0 80.9,56.5 < 20
'_Go straight_ through the crossroads |goto 81.9,53.3 < 20
talk Thrall##80003
turnin The Might of the Warsong##34795 |goto 82.84,45.07
accept More Lazy Peons##34808 |goto 82.84,45.07
step
talk Tal##82346
fpath Wor'var |goto Nagrand D/0 83.3,44.7
step
talk Elathriel Sunstriker##82345
home Wor'var |goto Nagrand D/0 82.6,45.4
step
clicknpc Lazy Peon##79906
'Motivate 8 Lazy Peons |q More Lazy Peons##34808/1 |goto 82.65,45.31 |tip They are all around the town
step
talk Foreman Thazz'ril##80140
turnin More Lazy Peons##34808 |goto 82.93,44.14
accept They Call Him Lantresor of the Blade##34818 |goto 82.93,44.14
step
talk Thrall##80003
accept The Friend of My Enemy##34826 |goto 82.85,45.07
stickystart "ST1"
step
'_Swim over_ the lake and run up the hill |goto Nagrand D/0 85.1,45.0 < 20
accept Bonus Objective: Hemet's Happy Hunting Grounds##35379 |goto Nagrand D/0 88.1,48.6 |only if not havequest(35379)
kill Lupe##82205 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/2 |goto Nagrand D/0 87.6,45.6
kill Loup##82209 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/3 |goto Nagrand D/0 87.6,45.6
step
accept Bonus Objective: Hemet's Happy Hunting Grounds##35379 |goto Nagrand D/0 88.1,48.6 |only if not havequest(35379)
kill Big Pete##123 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/4 |goto Nagrand D/0 88.7,43.9
step "ST1"
accept Bonus Objective: Hemet's Happy Hunting Grounds##35379 |goto Nagrand D/0 88.1,48.6 |only if not havequest(35379)
kill 15 Nagrand Prowler##81902 |q Bonus Objective: Hemet's Happy Hunting Grounds##35379/1 |goto 87.13,49.16
step
'_Travel up_ the dirt road and through the gate |goto Nagrand D/0 87.0,52.6 < 20
talk Lantresor of the Blade##80161
turnin They Call Him Lantresor of the Blade##34818 |goto 85.42,54.59
accept The Blade Itself##34849 |goto 85.42,54.59
accept Not Without My Honor##34850 |goto 85.42,54.59
stickystart "ST2"
step
kill Instructor Luhk##80236
get Lantresor's Blade##111938 |q The Blade Itself##34849/1 |goto 86.09,53.90
step
'The banner is located randomly inside one of the chests in the buildings below:
click Burning Blade Locker## |tip You may need to check inside a couple lockers before you find the banner.
'There should be one chest in this building |goto Nagrand D/0 84.8,55.5 < 20
'Check the Chests in this building, there should be 2 |goto Nagrand D/0 85.8,56.9 < 20
'There should be a single chest in here |goto Nagrand D/0 85.5,53.0 < 20
get Blademaster's Banner##113508 |q Not Without My Honor##34850/1 |goto 85.73,56.95
step "ST2"
kill 15 Burning Flameseer##80197, Blademaster Trainee##80191, Hallvalor Villager##80205 |q The Friend of My Enemy##34826/1 |goto 87.23,53.63
step
'_Enter_ the building |goto Nagrand D/0 85.5,55.0 < 10
talk Lantresor of the Blade##80161
turnin The Blade Itself##34849 |goto 85.42,54.59
turnin Not Without My Honor##34850 |goto 85.42,54.59
accept Meet Me in the Cavern##34866 |goto 85.42,54.59
step
'_Enter_ the cave |goto Nagrand D/0 88.0,55.5 < 20
talk Lantresor of the Blade##80319
turnin Meet Me in the Cavern##34866 |goto Nagrand D/10 44.9,19.8
accept Challenge of the Masters##34868 |goto Nagrand D/10 44.9,19.8
step
goto Nagrand D/10 53.4,68.7
click Burning Blade Sword## |tip The sword in the center of the steel circle.
'Pull the blade |q Challenge of the Masters##34868/1 |goto 53.01,68.47
step
kill Packleader Dran'ruk##80326, Sesk##80325, Gorn##80324, Warlord Dharl of the Thrice-Bloodied Bla##80327
'Survive the Challenge |q Challenge of the Masters##34868/2 |goto 52.53,67.97
step
click Garrison Blueprints##183
get Garrison Blueprints##112020 |q Challenge of the Masters##34868/3 |goto 52.88,68.41
step
'_Leave_ the cave |goto Nagrand D/10 30.5,15.7 < 15
'_Pass_ through the gates |goto Nagrand D/0 87.0,52.5 < 20
'_Continue_ traveling between the cliffs |goto Nagrand D/0 86.0,51.5 < 20
'_Follow_ the path |goto 84.3,49.3 < 15
talk Thrall##80003
turnin The Friend of My Enemy##34826 |goto 82.85,45.08
step
talk Foreman Thazz'ril##80140
turnin Challenge of the Masters##34868 |goto 82.93,44.14
accept A Choice to Make##34899 |goto 82.93,44.14
step
clicknpc Drafting Table##79177
'Choose between Corral & Tankworks |q A Choice to Make##34899/1 |goto Nagrand D 83.0,44.1
step
talk Shadow Hunter Taz##82078
accept That Pounding Sound##35374 |goto 82.53,43.96
step
talk Stalker Ogka##82080
accept Shooting the Breeze##35376 |goto 82.60,43.95
step
talk Thrall##80003
turnin A Choice to Make##34899 |goto 82.85,45.07
step
talk Draka##81319
accept Trouble at the Overwatch##35150 |goto 82.86,45.02
step
talk Aggra##81189
accept Target of Opportunity: Telaar##34914 |goto 82.88,45.07
step
talk Lantresor of the Blade##81790
accept The Honor of a Blademaster##34770 |goto 82.59,46.74
step
'_Follow_ the path down |goto Nagrand D/0 81.8,50.0 < 20
'_Continue_ along the path |goto 81.3,57.6 < 20
talk Akrosh##79281
turnin Trouble at the Overwatch##35150 |goto 83.05,67.98
accept Obtaining Ogre Offensive Orders##35157 |goto 83.06,67.94
accept Obliterating Ogres##35155 |goto 83.06,67.94
stickystart "ST3"
stickystart "ST4"
step
click Ogre Scrolls##8705
accept Removing the Paper Trail##35156 |goto 81.34,70.33
step
kill Thulgork##79266
get Thulgork's Orders##111065 |q Obtaining Ogre Offensive Orders##35157/2 |goto 83.17,70.37
step
'_Go up_ the stairs |goto Nagrand D/0 81.9,71.8
kill Crulgorosh##79267
get Crulgorosh's Orders##111066 |q Obtaining Ogre Offensive Orders##35157/1 |goto 84.11,73.58
step "ST3"
kill 15 Gorian Cohort##79070, Gorian Gladiator##79022, Gorian Arcanist##79023 |q Obliterating Ogres##35155/1 |goto Nagrand D/0 83.4,72.7
step "ST4"
click Box of Ogre Research##8705
'Destroy Boxes of Ogre Research |q Removing the Paper Trail##35156/1 |goto Nagrand D/0 84.1,72.3 |tip They are all around the Mar'gok Overwatch
step
'_Continue up_ the stairs |goto 83.4,75.6 < 15
talk Dalgorsh##81361
turnin Obtaining Ogre Offensive Orders##35157 |goto 83.79,76.86
accept Reglakk's Research##35158 |goto 83.84,76.80
turnin Obliterating Ogres##35155 |goto 83.79,76.86
turnin Removing the Paper Trail##35156 |goto 83.79,76.86
accept Removing the Reinforcements##35159 |goto 83.84,76.80
step
'_Go up_ the stairs |goto Nagrand D/0 83.9,77.5 < 20
clicknpc Portal to Highmaul##80357
'Destroy the portal to Highmaul |q Removing the Reinforcements##35159/1 |goto Nagrand D/0 82.6,81.0
step
kill  Bulgorg the Wind Slayer##79927
'Stop Reglakk |q Reglakk's Research##35158/1 |goto 81.57,77.35
step
talk Thrall##80003
turnin Reglakk's Research##35158 |goto 82.84,45.08
step
talk Foreman Thazz'ril##80140
turnin Removing the Reinforcements##35159 |goto Nagrand D 82.9,44.1
step
kill Breezestrider Talbuk##78278, Breezestrider Colt##78277
get 24 Breezestrider Horn##113102 |q Shooting the Breeze##35376/1 |goto Nagrand D/0 79.3,39.7
kill Leatherhide Bull##81898
get 12 Pair of Leatherhide Ears##113100 |q That Pounding Sound##35374/1 |goto Nagrand D/0 73.8,44.0
collect Frostwolf Axe##113109 |n
'Use the Frostwolf Axe |use Frostwolf Axe##113109
accept Someone's Missing Axe##35377
step
talk Shadow Hunter Taz##82078
turnin That Pounding Sound##35374 |goto 82.54,43.97
accept Queen of the Clefthoof##35375 |goto 82.54,43.97
step
talk Stalker Ogka##82080
turnin Shooting the Breeze##35376 |goto 82.60,43.94
turnin Someone's Missing Axe##35377 |goto 82.60,43.94
accept King of the Breezestriders##35378 |goto 82.60,43.94
step
'_Cross_ the open field |goto Nagrand D/0 80.0,37.9 < 40
'_Run on_ the path |goto 79.1,33.2 < 40
talk Murgok##88500
accept The Dead Do Not Forget...##37318 |goto 79.47,30.27
stickystart "releasespirit"
sitckystart "snarlpaws"
stickystart "ST5"
step
accept Bonus Objective: Snarlpaw Ledge##37280 |goto 78.93,31.84 |only if not havequest(37280)
kill Boneseer Cold-Eye##88361 |q Bonus Objective: Snarlpaw Ledge##37280/3 |goto Nagrand D/0 79.8,30.1
step "releasespirit"
accept Bonus Objective: Snarlpaw Ledge##37280 |goto 78.93,31.84 |only if not havequest(37280)
kill Saberon Ambusher##88813
talk Frightened Spirit##88812
'Frightened Spirits Released |q Bonus Objective: Snarlpaw Ledge##37280/1 |goto Nagrand D/0 78.4,28.2
step "snarlpaws"
accept Bonus Objective: Snarlpaw Ledge##37280 |goto 78.93,31.84 |only if not havequest(37280)
kill 15 Snarlpaw Bloodtracker##88365, Snarlpaw Shadowfang##88363 |q Bonus Objective: Snarlpaw Ledge##37280/2 |goto 78.64,30.26
step "ST5"
click Ancient Snarlpaw Skull## |tip They look like talkbuk skulls scattered around on the ground.
get 10 Ancient Snarlpaw Skull##119184 |q The Dead Do Not Forget...##37318/1 |goto 79.53,30.95
'There are more inside of the cave here |goto Nagrand D/0 80.5,29.0
step
click Boneseer's Cauldron##7409
turnin The Dead Do Not Forget...##37318 |goto 79.74,30.26
step
'_Exit_ Snarlpaw Ledge | goto Nagrand D/0 77.0,30.9 < 40
'_Cross_ the bridge |goto Nagrand D/0 73.0,28.2 < 20
talk Gixmo Moneycash##82844
fpath Throne of the Elements |goto Nagrand D/0 73.7,26.7
step
'_Cross_ the bridge |goto Nagrand D/0 74.1,21.8 < 20
talk Farseer Drek'Thar##80597
accept Called to the Throne##34965 |goto 71.70,19.63
step
talk Farseer Drek'Thar##80597
'Tell him _"I am ready to commune with the furies."_ |q Called to the Throne##34965/1 |goto 71.69,19.65
step
'_Stand here_ while you commune with the furies
'Commune with the furies |q Called to the Throne##34965/2 |goto Nagrand D/0 71.8,19.6
step
talk Farseer Drek'Thar##80597
turnin Called to the Throne##34965 |goto 71.71,19.64
accept Elemental Attunement##34891 |goto 71.71,19.64
step
talk Kalandrios##80595
accept An Old Friend##34943 |goto 72.77,19.73
step
talk Incineratus##80593
accept Earth, Wind and Fire...and Water##34881 |goto 71.34,17.85
accept Guardians of the Plateau##34893 |goto 71.34,17.85
step
'_Go up_ the hill |goto Nagrand D/0 74.1,16.1 < 20
talk Gar'rok##80434
turnin An Old Friend##34943 |goto 75.08,22.74
accept A Rare Bloom##34894 |goto 75.08,22.74
stickystart "wind"
step
'_Go up_ the hill |goto Nagrand D/0 76.1,20.1 < 20
'_Go up_ the ramp |goto Nagrand D/0 80.8,17.5 < 20
'_Follow the ramp_ up towards the Corrupted Wind Guardian |goto 79.4,24.5 < 20
kill Corrupted Wind Guardian##80375 |q Guardians of the Plateau##34893/2 |goto Nagrand D/0 79.8,25.4
step
click Pillar of Wind##1027
'Attune to the Wind |q Elemental Attunement##34891/2 |goto 78.32,24.42
step "wind"
clicknpc Living Wind##82889
kill Living Wind##82889
get 4 Living Wind##112085 |q Earth, Wind and Fire...and Water##34881/2 |goto Nagrand D/0 80.4,23.0
stickystart "earth"
step
'_Follow_ the ramp down |goto Nagrand D/0 80.4,18.5 < 20
click Pillar of Earth##1027
'Attune to the Earth |q Elemental Attunement##34891/1	|goto 79.29,11.67
step
kill Unstable Earth Guardian##80374|q Guardians of the Plateau##34893/1 |goto 81.6,14.5
step "earth"
kill Unstable Earth Spirit##80382
get 4 Living Earth##112084 |q Earth, Wind and Fire...and Water##34881/1 |goto Nagrand D/0 80.7,15.0
stickystart "water"
step
'_Follow_ the ramp up |goto Nagrand D/0 78.4,15.4 < 15
'_Continue_ up the ramp |goto Nagrand D/0 74.9,13.0 < 15
kill Tainted Water Guardian##80377 |q Guardians of the Plateau##34893/4 |goto Nagrand D/0 75.2,13.9
step
click Pillar of Water##1027
'Attune to the Water |q Elemental Attunement##34891/4 |goto 73.86,10.45
step "water"
click Living Water##6527
kill Tumultous Water Spirit##80379
get 4 Living Water##112083 |q Earth, Wind and Fire...and Water##34881/4 |goto Nagrand D/0 75.4,10.5
stickystart "fire"
step
'_Follow_ the ramp down |goto Nagrand D/0 71.3,8.0 < 15
click Pillar of Flame##1027
'Attune to the Flame |q Elemental Attunement##34891/3 |goto 67.47,9.06
step
kill Volatile Flame Guardian##80376 |q Guardians of the Plateau##34893/3 |goto Nagrand D/0 66.6,8.5
step "fire"
clicknpc Living Flame##80421
kill Volatile Fire Spirit##80380
get 4 Living Flame##112082 |q Earth, Wind and Fire...and Water##34881/3 |goto Nagrand D/0 67.1,10.8
step
'_Enter_ the cave |goto Nagrand D/0 68.9,10.2 < 15
click Ember Blossom##10256
get Ember Blossom##112089 |q A Rare Bloom##34894/1 |goto 70.58,9.97
step
kill 1 Magmire##80586
collect A Molten Core##113080 |n
'Use the _Molten Core_ in  your bags |use A Molten Core##113080
accept A Wrong of Earth and Fire##33928 |goto 68.84,10.66
step
'_Go down_ the hill |goto Nagrand D/0 68.5,13.8 < 20
talk Incineratus##80593
turnin Earth, Wind and Fire...and Water##34881 |goto 71.34,17.88
turnin Guardians of the Plateau##34893 |goto 71.34,17.88
turnin A Wrong of Earth and Fire##33928 |goto 71.35,17.93
step
talk Farseer Drek'Thar##80597
turnin Elemental Attunement##34891 |goto 71.72,19.65
step
'_Go up_ the ramp |goto Nagrand D/0 73.9,16.4
talk Gar'rok##80434
turnin A Rare Bloom##34894 |goto 75.08,22.74
accept Guise of the Deceiver##34932 |goto 75.08,22.73
step
'_Go up_ the ramp up |goto Nagrand D/0 76.0,20.9 < 15
'_Follow_ the path back |goto 77.3,21.5 < 15
'_Enter_ the cave |goto 77.6,23.2 < 15
talk Challe##80483 |q Guise of the Deceiver##34932/1 |goto Nagrand D/0 78.0,23.3
step
kill Challe##80483 |q Guise of the Deceiver##34932/2 |goto 77.91,23.30
step
'_Jump down_ the cliff |goto Nagrand D/0 76.4,22.7 < 30
talk Gar'rok##80434
turnin Guise of the Deceiver##34932 |goto 75.08,22.74
accept The Debt We Share##34941 |goto 75.08,22.74
step
talk Gar'rok##80434
'Tell him _"I stand with you. Gar'rok. Rest with honor."_
'Witness the passing of Gar'rok |q The Debt We Share##34941/1 |goto 75.08,22.75
step
'_Travel down_ the mountain path |goto Nagrand D/0 75.4,20.8 < 30
'_Cross_ the stone bridge |goto Nagrand D/0 74.9,16.6 < 20
'_Enter_ Throne of the Elements |goto Nagrand D/0 73.4,18.6 < 40
talk Kalandrios##80595
turnin The Debt We Share##34941 |goto 72.73,19.63
step
talk Farseer Drek'Thar##80597
accept The Ritual of Binding##35265 |goto 71.71,19.65
step
talk Kalandrios##80595
'Speak with Kalandrios |q The Ritual of Binding##35265/1 |goto Nagrand D/0 72.7,19.7
step
talk Farseer Drek'Thar##80597
turnin The Ritual of Binding##35265 |goto 71.71,19.64
accept The Call of Oshu'gun##35232 |goto 71.71,19.64
step
'_Cross_ the bridge |goto Nagrand D/0 73.8,21.5 < 20
talk Gixmo Moneycash##82844 |goto Nagrand D/0 73.7,26.7
'Tell him _"Fly me to the Spirit Woods near Oshu'gun."_ |q The Call of Oshu'gun##35232/1 |goto 73.70,26.65
step
talk Farseer Drek'Thar##81335
turnin The Call of Oshu'gun##35232 |goto 55.53,55.91
accept Spiritual Matters##35231 |goto 55.53,55.91
accept Dark Binding##35144 |goto 55.53,55.91
accept The Pale Threat##35145 |goto 55.53,55.91
step
click Shamanstone##1027
accept Silence the Call##35084 |goto 55.45,55.92
accept Disrupt the Rituals##35083 |goto 55.45,55.92
step
'_Go through_ the narrow passage |goto Nagrand D/0 57.0,58.5 < 20
kill 6 Pale Subjugator##81578 |q The Pale Threat##35145/2 |goto 58.46,61.64
kill Enslaved Earth Spirit##81409
'Liberate Elemental spirits |q Dark Binding##35144/1 |goto Nagrand D/0 56.7,63.6 |tip Some are trapped by Pale Subjugators
step
'_Follow_ the ramp down |goto Nagrand D/12 77.5,39.4 < 20
'Take the _path to the right_ |goto Nagrand D/12 65.4,32.4 < 10
kill Greyseer##81309 |q The Pale Threat##35145/1 |goto 65.84,20.60
step
'_Follow this path_ inside the cave |goto Nagrand D/12 58.7,20.8 < 10
talk Farseer Drek'Thar##81953
turnin Dark Binding##35144 |goto 45.97,32.85
turnin The Pale Threat##35145 |goto 45.97,32.85
accept The Fate of Gordawg##34271 |goto 46.08,32.87
accept The Dark Heart of Oshu'gun##35317 |goto 46.08,32.87
step
kill Gordawg##80592
get Heart of the Fury##113077 |q The Fate of Gordawg##34271/1 |goto Nagrand D/12 42.7,38.2
step
'_Go down_ the hill |goto Nagrand D/12 36.5,48.9 < 20
'_Go up_ the hill and through the opening |goto Nagrand D/12 25.3,57.9 < 20
'Enter the Sanctum of the Naaru |q The Dark Heart of Oshu'gun##35317/1 |goto 20.89,62.07
step
'Watch the cutscene:
kill Decimatus##81989 |q The Dark Heart of Oshu'gun##35317/2 |goto Nagrand D/12 15.7,66.3
step
'_Follow_ the ramp up |goto Nagrand D/12 22.4,68. < 10
'_Exit_ Oshu'gun |goto Nagrand D/0 47.0,62.0 < 10
'_Jump_ to the ground and run along the path |goto Nagrand D/0 47.4,60.8 < 20
click Warsong Attack Plans## |tip It looks like a scroll sitting on top of a barrel
accept The Warsong Threat##35271 |goto Nagrand D/0 51.89,62.03
stickystart "Shaman"
step
kill 1 Ritual Totem##81190 |q Disrupt the Rituals##35083/1 |count 1 |goto Nagrand D/0 48.4,58.7 |tip They are next to large brown pillars
step
kill 1 Ritual Totem##81190 |q Disrupt the Rituals##35083/1 |count 2 |goto Nagrand D/0 47.8,58.7 |tip They are next to large brown pillars
step
click Mixed Unit Tactics## |tip It's sitting on a desk at the back of the building
get Mixed Unit Tactics##113549 |q The Warsong Threat##35271/2 |goto 47.07,56.02
step
click Warsong Command Brief## |tip It's sitting on a table at the back of the room
get Warsong Command Brief##113550 |q The Warsong Threat##35271/1 |goto Nagrand D/0 52.5,55.8
step
kill 1 Ritual Totem##81190 |q Disrupt the Rituals##35083/2 |count 1 |goto Nagrand D/0 52.2,63.0 |tip They are next to large brown pillars
step
kill 1 Ritual Totem##81190 |q Disrupt the Rituals##35083/2 |count 2 |goto Nagrand D/0 52.4,63.9 |tip They are next to large brown pillars
step
kill Ritualist Kuhlrath##81142 |q Silence the Call##35084/1 |goto Nagrand D/0 54.7,67.1
click Nagrand Scouting Report## |tip It's sitting on top of a chest to the left of the doorway when you enter the building
get Nagrand Scouting Report##113552 |q The Warsong Threat##35271/4 |goto 54.58,67.06
step
kill 2 Ritual Totem##81190 |q Disrupt the Rituals##35083/3 |count 1 |goto Nagrand D/0 50.5,70.0 |tip They are next to large brown pillars
step
kill 2 Ritual Totem##81190 |q Disrupt the Rituals##35083/3 |count 2 | goto Nagrand D/0 50.4,71.0 |tip They are next to large brown pillars
step
click Warsong Outrider Orders## |tip It's sitting on a table at the back of the room
get Warsong Outrider Orders##113551 |q The Warsong Threat##35271/3 |goto 51.86,67.78
step "Shaman"
kill 10 Warsong Axe-Singer##81019, Warsong Windcaller##81054 |q Silence the Call##35084/2 |goto 52.93,68.39
step
click Shamanstone##1027
turnin Disrupt the Rituals##35083 |goto Nagrand D/0 52.1,68.8
turnin Silence the Call##35084 |goto Nagrand D/0 52.1,68.8
accept Through the Nether##35085 |goto Nagrand D/0 52.1,68.8
step
click Nether Beacon##7011
'Travel Into the Twisting Nether |q Through the Nether##35085/1 |goto 52.10,63.48
step
click Shamanstone##1027
turnin Through the Nether##35085 |goto 51.83,58.74
accept The Nether Approaches##35087 |goto 51.83,58.74
accept The Void March##35086 |goto 51.83,58.74
stickystart "void"
stickystart "terror"
step
click Void Portal##9383
'Collapse a Void Portal |q The Nether Approaches##35087/1 |count 1 |goto Nagrand D/0 52.6,62.1
step
click Void Portal##9383
'Collapse a Void Portal |q The Nether Approaches##35087/1 |count 2 |goto Nagrand D/0 52.0,61.8
step
click Void Portal##9383
'Collapse a Void Portal |q The Nether Approaches##35087/1 |count 3 |goto Nagrand D/0 51.4,60.5
step
click Void Portal##9383
'Collapse a Void Portal |q The Nether Approaches##35087/1 |count 4 |goto Nagrand D/0 51.6,58.2
step
click Void Portal##9383
'Collapse a Void Portal |q The Nether Approaches##35087/1 |count 5 |goto Nagrand D/0 50.0,59.5
step
click Void Portal##9383
'Collapse a Void Portal |q The Nether Approaches##35087/1 |count 6 |goto Nagrand D/0 50.1,61.2
step "void"
kill 15 Void Tendril##81230 |q The Void March##35086/2 |goto Nagrand D/0 52.3,60.1
step "terror"
kill 10 Void Terror##81216 |q The Void March##35086/1
step
click Shamanstone##1027
turnin The Nether Approaches##35087 |goto 51.85,58.72
turnin The Void March##35086 |goto 51.85,58.72
accept The Shadow of the Void##35088 |goto 51.85,58.72
step
clicknpc Void Crystal##85841
kill Invalidus##81215 |q The Shadow of the Void##35088/1 |goto 52.4,63.3
step
click Shamanstone##1027
turnin The Shadow of the Void##35088 |goto 51.83,58.75
step
'_Go towards_ the path |goto Nagrand D/0 50.5,53.9 < 20
'_Follow_ the path down |goto 50.4,50.1 < 20
talk Omu Spiritbreeze##82340
fpath Riverside Post |goto Nagrand D/0 49.6,48.0
step
talk Blood Guard Ehanes##81193
turnin The Warsong Threat##35271 |goto 49.43,47.81
step
talk Mankrik##72822
accept Lost in Nagrand##35167 |goto 49.29,47.98
step
talk Durotan##81186
accept Terms of Surrender##35096 |goto 48.59,48.22
step
'_Leave_ Riverside Post |goto Nagrand D/0 50.1,49.7 < 20
'_Go through_ the gate |goto Nagrand D/0 53.0,46.8 < 20
'_Enter_ the round hut |goto Nagrand D/0 55.5,43.0 < 10
talk Uruk Foecleaver##81086
turnin Terms of Surrender##35096 |goto 55.50,42.08
accept The Pride of Lok-rath##35097 |goto 55.50,42.08
step
talk Senior Sergeant Igerdes##81194
accept Silence the War Machines##35099 |goto 55.44,42.09
accept If They Won't Surrender...##35100 |goto 55.44,42.09
stickystart "raider"
step
clicknpc Iron Horde War Machine##81050
'Destroy 3 War machines |q Silence the War Machines##35099/1 |count 1	|goto Nagrand D/0 56.0,43.1
step
clicknpc Fallen Horde Soldier##81195
accept Terror of Nagrand##35101 |goto 56.09,43.77
step
'_Enter_ the cave |goto Nagrand D/0 57.1,42.6 < 20
kill Shagor##80263
get Shagor's Collar##112620 |q Terror of Nagrand##35101/1 |goto Nagrand D/0 58.1,43.3
step
clicknpc Iron Horde War Machine##81050
'Destroy 3 War machines |q Silence the War Machines##35099/1 |count 2 |goto Nagrand D/0 54.7,44.9
step
clicknpc Iron Horde War Machine##81050
'Destroy 3 War machines |q Silence the War Machines##35099/1 |goto Nagrand D/0 55.7,46.4
step
kill Uruk Foecleaver##80264 |q The Pride of Lok-rath##35097/1 |goto Nagrand D/0 55.6,47.8
step "raider"
kill 10 Nagrand Raider##80254, Warsong Wolf Master##80253, Iron Cannoneer##80964, Lok-rath Windtamer##80255 |q If They Won't Surrender...##35100/1 |goto Nagrand D/0 55.7,44.4
step
'_Go through_ the gate |goto Nagrand D/0 53.0,46.8
'_Take_ the path to the right |goto Nagrand D/0 51.1,49.9 < 30
talk Blood Guard Ehanes##81193
turnin Silence the War Machines##35099 |goto 49.43,47.80
turnin If They Won't Surrender...##35100 |goto 49.43,47.80
turnin Terror of Nagrand##35101 |goto 49.43,47.80
step
talk Durotan##81186
turnin The Pride of Lok-rath##35097 |goto 48.59,48.22
accept Lok-rath is Secured##35098 |goto 48.60,48.22
step
'_Travel_ through the open field |goto Nagrand D/0 46.7,52.8 < 40
'_Cross_ the bridge |goto Nagrand D/0 44.3,57.0 < 20
'_Turn right_ on the path |goto Nagrand D/0 42.8,58.4 < 20
talk Gar'rok##80864
turnin Spiritual Matters##35231 |goto 40.43,56.79
accept Lighting The Darkness##35022 |goto 40.43,56.79
step
talk Dahaka##80866
accept Echoes of the Past##35023 |goto 40.40,56.74
stickystart "torment"
step
click Ceremonial Pyre## |tip A stone circled fire pit.
'Light the Ceremonial Pyres |q Lighting The Darkness##35022/1 |count 1 |goto Nagrand D/0 39.3,57.3
step
click Ceremonial Pyre## |tip A stone circled fire pit.
'Light the Ceremonial Pyres |q Lighting The Darkness##35022/1 |count 2 |goto Nagrand D/0 39.5,53.1
step
click Ceremonial Pyre## |tip A stone circled fire pit.
'Light the Ceremonial Pyres |q Lighting The Darkness##35022/1 |count 3 |goto Nagrand D/0 38.0,51.6
step
click Ceremonial Pyre## |tip A stone circled fire pit.
'Light the Ceremonial Pyres |q Lighting The Darkness##35022/1 |count 4 |goto 37.5,53.1
step
click Ceremonial Pyre## |tip A stone circled fire pit.
'Light the Ceremonial Pyres |q Lighting The Darkness##35022/1 |count 5 |goto Nagrand D/0 38.7,54.6
step
click Ceremonial Pyre## |tip A stone circled fire pit.
'Light the Ceremonial Pyres |q Lighting The Darkness##35022/1 |goto Nagrand D/0 38.6,56.1
step "torment"
kill 8 Tormented Echo##80749, Tormented Echo##80748 |q Echoes of the Past##35023/1
step
talk Dahaka##80866
turnin Echoes of the Past##35023 |goto 40.40,56.75
step
talk Gar'rok##80864
turnin Lighting The Darkness##35022 |goto 40.43,56.78
accept Golmash Hellscream##35024 |goto 40.43,56.79
step
'_Run up_ the dirt hill |goto Nagrand D/0 38.9,56.8 < 20
kill Golmash Hellscream##80747 |q Golmash Hellscream##35024/1 |goto 37.41,55.83
step
talk Gar'rok##80864
turnin Golmash Hellscream##35024 |goto 40.43,56.79
step
talk Thrall##80003
turnin Lok-rath is Secured##35098 |goto 82.84,45.08
step
talk Lucy Brokerblast##83606
accept Bread and Circuses##35922 |goto 82.85,46.82
step
talk Gabby Goldsnap##80184
accept Gazmolf Futzwangler and the Highmaul Crusade##34810 |goto 79.88,48.85
step
talk Biggy Warprofits##83924
fpath The Ring of Trials |goto Nagrand D/0 79.8,49.7
step
talk Dexyl Deadblade##79188
turnin Bread and Circuses##35922 |goto 79.44,50.30
accept Ring of Trials: Crushmaul##34662 |goto 79.44,50.26
step
talk Digrem Orebar##81955
accept Tastes Like Chicken##34869 |goto 79.23,52.65
step
talk Pyxni Pennypocket##79310
accept The Missing Caravan##34598 |goto 78.57,48.57
accept Declawing The Competition##34512 |goto 78.57,48.57
step
talk Marybelle Walsh##84632
accept The Good Doctor##35146 |goto 77.43,47.35
accept Whacking Weeds##36273 |goto 77.43,47.35
step
talk Greezlex Fizzpinch##79312
turnin The Missing Caravan##34598 |goto 78.97,58.86
accept Gobnapped##34515 |goto 78.97,58.86
accept They've Got The Goods!##34514 |goto 78.97,58.86
step
click Bounty Board##15
accept WANTED: Razorpaw!##34513 |goto 78.97,58.95
step
talk Bazwix##79899
accept My Precious!##34516 |goto 76.99,59.26
stickystart "sabermaw1"
stickystart "sabermaw2"
stickystart "sabermaw3"
step
'_Enter_ the cave |goto Nagrand D/0 75.3,60.1 < 20
click Sabermaw Cage## |tip Rickety wooden cages.
'Goblin Traders Saved |q Gobnapped##34515/1 |count 1 |goto Nagrand D/0 75.6,59.7
step
click Sabermaw Cage## |tip Rickety wooden cages.
'Goblin Traders Saved |q Gobnapped##34515/1 |count 2 |goto Nagrand D/0 74.7,60.0
step
'_Enter_ the cave |goto Nagrand D/0 75.4,61.1 < 20
click Sabermaw Cage## |tip Rickety wooden cages.
'Goblin Traders Saved |q Gobnapped##34515/1 |count 3 |goto Nagrand D/0 75.9,61.7
step
click Sabermaw Cage## |tip Rickety wooden cages.
'Goblin Traders Saved |q Gobnapped##34515/1 |count 4 |goto Nagrand D/0 76.7,62.0
step
'_Leave_ the cave |goto Nagrand D/0 75.5,61.1 < 20
click Sabermaw Cage## |tip Rickety wooden cages.
'Goblin Traders Saved |q Gobnapped##34515/1 |count 5 |goto Nagrand D/0 73.8,60.5
step
click Sabermaw Cage## |tip Rickety wooden cages.
'Goblin Traders Saved |q Gobnapped##34515/1 |goto Nagrand D/0 73.3,61.2
step
'_Go up_ the ramp |goto Nagrand D/0 75.0,61.1 < 20
click Bazwix's Treasure##10302
'Bazwix's stolen treasure found |q My Precious!##34516/1 |goto 74.73,61.51
step
'Standing next to you:
talk Bazwix##79897
turnin My Precious!##34516
step
kill Razorpaw##79002 |q WANTED: Razorpaw!##34513/1 |goto Nagrand D/0 75.1,62.5
step "sabermaw1"
kill Sabermaw Scarfang##78976, Sabermaw Mystic##80056, Sabermaw Mauler##78990
get 10 Saberon Claw##110714 |q Declawing The Competition##34512/1
step "sabermaw2"
click Stolen Goods## |tip They look like small brown bags.
get 10 Stolen Goods##110719 |q They've Got The Goods!##34514/1 |goto Nagrand D/0 74.6,60.1 |tip They are all around the Sabermaw area, check up on ledges for them as well as the ground level
step "sabermaw3"
kill Ravenous Windroc##79854, Windroc##158756
get 10 Raw Windroc##113085 |q Tastes Like Chicken##34869/1 |goto Nagrand D/0 72.2,61.0 |tip They are flying in the air, or resting in nests throughout Sabermaw
'Alternatively, check up the ramp here and kill Windrocs |goto Nagrand D/0 76.0,57.6
step
'_Go up_ the ledge |goto Nagrand D/0 70.3,57.3 < 15
'_Cross_ the water |goto 69.3,64.3 < 15
talk Shadow Hunter Kajassa##80429
turnin Target of Opportunity: Telaar##34914 |goto 68.54,64.53
accept I Help Ya Kill Dem##34915 |goto 68.54,64.53
accept The Blessing of Samedi##34916 |goto 68.54,64.53
step
talk Rangari Keilnei##80451
accept Shields Up!##34917 |goto 68.59,64.56
stickystart "telaar1"
step
clicknpc Shadow Hunter Spar'kuhl##80463
'Use the Samedi Fetish on Shadow Hunter Spar'kuhl |use Samedi Fetish##112166
'Revive Shadow Hunter Spar'kuhl |q The Blessing of Samedi##34916/3 |goto 68.50,67.01
step
click Telaari Crystal## |tip The crystal is a purple and pick shard on top of a stone pillar.
'Power up the Southeast crystal |q Shields Up!##34917/3 |goto 68.01,67.95
step
'_Enter_ the building |goto Nagrand D/0 66.8,68.3 < 10
clicknpc Shadow Hunter Maloa##80464
'Use the Samedi Fetish on Shadow Hunter Maloa |use Samedi Fetish##112166
'Revive Shadow Hunter Maloa |q The Blessing of Samedi##34916/2 |goto 66.58,68.63
step
'_Exit_ the building |goto Nagrand D/0 66.8,68.3 < 10
click Telaari Crystal## |tip The crystal is a purple and pick shard on top of a stone pillar.
'Power up the Southwest crystal|q Shields Up!##34917/4 |goto 64.78,67.79
step
'_Enter_ the building |goto Nagrand D/0 65.6,65.5 < 10
clicknpc Shadow Hunter J'wan##80462
'Use the Samedi Fetish on Shadow Hunter Maloa |use Samedi Fetish##112166
'Revive Shadow Hunter J'wan |q The Blessing of Samedi##34916/1 |goto 65.24,65.08
step
click Telaari Crystal## |tip The crystal is a purple and pick shard on top of a stone pillar.
'Power up the Northwest Crystal |q Shields Up!##34917/2 |goto 65.17,63.67
step
click Telaari Crystal## |tip The crystal is a purple and pick shard on top of a stone pillar.
'Power up the Northeast Crystal |q Shields Up!##34917/1 |goto 66.47,62.26
step "telaar1"
kill 12 Warsong Raider##79744, Invading Warsinger##79753, Savage Warwolf##79755 |q I Help Ya Kill Dem##34915/1 |goto 67.8,66.6
step
'_Follow_ the road down |goto Nagrand D/0 67.8,64.4 < 20
talk Shadow Hunter Kajassa##80429
turnin I Help Ya Kill Dem##34915 |goto 68.54,64.52
turnin The Blessing of Samedi##34916 |goto 68.54,64.52
turnin Shields Up!##34917 |goto 68.54,64.52
accept Shields Down!##34918 |goto 68.54,64.52
step
kill Packleader Kargora##79839 |q Shields Down!##34918/1 |goto 66.91,65.49
step
clicknpc Arkonite Crystal##79919
'Arkonite Shield destroyed |q Shields Down!##34918/2 |goto 66.90,65.44
step
'_Go through_ the doorway |goto Nagrand D/0 65.7,70.6 < 20
'_Cross_ the bridge |goto 60.1,69.7 < 30
kill  Tall Buck##82116
get Tall Buck's Tail##113104 |q King of the Breezestriders##35378/1 |goto 57.82,69.03
step
'_Run_ up the hill |goto Nagrand D/0 58.8,66.8 < 20
'_Cross_ the bridge |goto 60.1,69.7 < 20
'Stay _on the road_ as you travel |goto Nagrand D/0 62.1,71.9 < 30
'_Follow_ the path |goto 65.7,73.1 < 20
'_Go down_ the hill |goto 69.0,70.2 < 30
'_Cross_ the water |goto Nagrand D/0 70.3,67.7 < 40
talk Gazmolf Futzwangler##79201
turnin Gazmolf Futzwangler and the Highmaul Crusade##34810 |goto 71.13,52.34
accept A Lesson in Minerology##34809 |goto 71.13,52.34
step
talk Trixi Leroux##82658
accept Good Help is Hard to Find##34811 |goto 71.11,52.42
stickystart "stonecrag1"
step
click Loose Soil##12093
get Nagrand Antiquity##111891 |q Good Help is Hard to Find##34811/1 |count 1 |goto Nagrand D/0 70.7,51.5
step
click Loose Soil##12093
get Nagrand Antiquity##111891 |q Good Help is Hard to Find##34811/1 |count 2 |goto Nagrand D/0 69.4,53.6
step
click Loose Soil##12093
get Nagrand Antiquity##111891 |q Good Help is Hard to Find##34811/1 |count 3 |goto 69.3,52.3
step
click Loose Soil##12093
get Nagrand Antiquity##111891 |q Good Help is Hard to Find##34811/1 |count 4 |goto 68.5,53.5
step
click Loose Soil##12093
get Nagrand Antiquity##111891 |q Good Help is Hard to Find##34811/1 |count 5 |goto 67.7,51.4
step
click Loose Soil##12093
get Nagrand Antiquity##111891 |q Good Help is Hard to Find##34811/1 |count 6 |goto 67.1,51.7
step
click Loose Soil##12093
get Nagrand Antiquity##111891 |q Good Help is Hard to Find##34811/1 |count 7 |goto 67.1,54.5
step
click Loose Soil##12093
get Nagrand Antiquity##111891 |q Good Help is Hard to Find##34811/1 |count 8 |goto 66.3,54.9
step "stonecrag1"
kill Raging Crusher##80144
get 4 Earthen Core##111874 |q A Lesson in Minerology##34809/1 |goto 66.5,53.8
step
map Nagrand D
path follow smart; loop; curved
path	62.9,57.3	61.6,53.6	63.4,49.8
path	64.6,45.4	67.7,44.2	71.5,47.1
path	72.4,51.5	69.2,56.4	65.5,57.8
'Follow the path around the cliff's to find Banthar
kill Banthar##82119
get Horn of Banthar##113105 |q Queen of the Clefthoof##35375/1
step
talk Trixi Leroux##82658
turnin Good Help is Hard to Find##34811 |goto 71.11,52.42
step
click Gold-O-Matic 9000##9877
turnin A Lesson in Minerology##34809 |goto 71.06,52.31
step
talk Gazmolf Futzwangler##79201
accept A Lesson in Teamwork##35663 |goto 71.14,52.35
accept A Lesson in Archaeology##35632 |goto 71.14,52.35
stickystart "highmaulartifact"
step
'_Follow_ the path back |goto Nagrand D/0 71.6,48.2 < 20
'_Go down_ the hill |goto 68.0,45.9 < 20
'_Enter_ the tunnel |goto Nagrand D/11 13.2,77.1 < 15
'_Cross_ the bridge |goto Nagrand D/11 64.1,68.6 < 15
'Use the Teleportation Beacon |use Teleportation Beacon##113217
'Place the teleport Beacon|q A Lesson in Archaeology##35632/1	|goto Nagrand D/11 68.7,40.9
step
'Mysterious Artifact recovered |q A Lesson in Archaeology##35632/2 |goto 68.38,41.89
step "highmaulartifact"
click Ancient Reliquary##51
from Highmaul Archaeologian##82619, Highmaul Laborer##79402, Highmaul Laborer##79402
get 10 Mysterious Artifact##113272 |q A Lesson in Teamwork##35663/1 |goto Nagrand D/11 49.5,56.0 |tip You can find these in the cave AND outside the cave.
step
'_Leave_ the cave |goto Nagrand D/0 67.2,49.6 < 20
'_Jump up_ the rocks and go up the hill |goto Nagrand D/0 66.9,51.2 < 20
'_Follow_ the hill up |goto Nagrand D/0 72.3,50.2 < 20
talk Gazmolf Futzwangler##79201
turnin A Lesson in Teamwork##35663 |goto 71.12,52.34
turnin A Lesson in Archaeology##35632 |goto 71.12,52.34
step
talk Digrem Orebar##81955
turnin Tastes Like Chicken##34869 |goto 79.22,52.65
accept Fruitful Ventures##34819 |goto 79.22,52.65
step
talk Pyxni Pennypocket##79310
turnin Declawing The Competition##34512 |goto 78.58,48.57
turnin WANTED: Razorpaw!##34513 |goto 78.58,48.57
turnin They've Got The Goods!##34514 |goto 78.58,48.57
turnin Gobnapped##34515 |goto 78.58,48.57
step
'_Enter_ the Ring of Trials |goto Nagrand D/0 78.8,49.6 < 20
talk Guzrug the Tiny##79189
'Tell him _"I am ready to begin the first Trial of The Ring."_ |q Ring of Trials: Crushmaul##34662/1 |goto 77.61,49.54
step
kill Crushmaul##76702 |q Ring of Trials: Crushmaul##34662/2 |goto 77.79,50.08
step
'_Exit_ the Ring of Trials |goto Nagrand D/0 79.0,49.4 < 20
talk Dexyl Deadblade##79188
turnin Ring of Trials: Crushmaul##34662 |goto 79.43,50.30
accept Ring of Trials: Raketalon##34663 |goto 79.43,50.30
step
'_Enter_ the Ring of Trials |goto Nagrand D/0 78.8,49.6 < 20
talk Guzrug the Tiny##79189
'Tell him _"I am ready to begin the second Trial of The Ring."_ |q Ring of Trials: Raketalon##34663/1	|goto 77.61,49.54
step
kill Raketalon##82670 |q Ring of Trials: Raketalon##34663/2 |goto 78.04,50.39
step
'_Exit_ the Ring of Trials |goto Nagrand D/0 79.0,49.4 < 20
talk Dexyl Deadblade##79188
turnin Ring of Trials: Raketalon##34663 |goto 79.44,50.30
accept Ring of Trials: Hol'yelaa##34664 |goto 79.44,50.30
step
'_Enter_ the Ring of Trials |goto Nagrand D/0 78.8,49.6 < 20
talk Guzrug the Tiny##79189
'Tell him _"I am ready to begin the third Trial of The Ring."_ |q Ring of Trials: Hol'yelaa##34664/1 |goto 77.61,49.54
step
kill Hol'yelaa##86146 |q Ring of Trials: Hol'yelaa##34664/2 |goto 78.04,50.39
step
'_Exit_ the Ring of Trials |goto Nagrand D/0 79.0,49.4 < 20
talk Dexyl Deadblade##79188
turnin Ring of Trials: Hol'yelaa##34664 |goto 79.44,50.30
accept Ring of Trials: Captain Boomspark##34665 |goto 79.44,50.30
step
'_Enter_ the Ring of Trials |goto Nagrand D/0 78.8,49.6 < 20
talk Guzrug the Tiny##79189
'Tell him _"I am ready to begin the fourth Trial of The Ring."_ |q Ring of Trials: Captain Boomspark##34665/1 |goto 77.61,49.54
step
kill The Burninator##79690 |q Ring of Trials: Captain Boomspark##34665/2 |goto 78.04,50.39
step
'_Exit_ the Ring of Trials |goto Nagrand D/0 79.0,49.4 < 20
talk Dexyl Deadblade##79188
turnin Ring of Trials: Captain Boomspark##34665 |goto 79.44,50.29
accept Ring of Trials: Roakk the Zealot##34666 |goto 79.44,50.29
step
'_Enter_ the Ring of Trials |goto Nagrand D/0 78.8,49.6 < 20
talk Guzrug the Tiny##79189
'Tell him _"I am ready to begin the fifth Trial of The Ring."_ |q Ring of Trials: Roakk the Zealot##34666/1 |goto 77.61,49.54
step
kill Roakk the Zealot##79490 |q Ring of Trials: Roakk the Zealot##34666/2 |goto 78.04,50.39
step
'_Exit_ the Ring of Trials |goto Nagrand D/0 79.0,49.4 < 20
talk Dexyl Deadblade##79188
turnin Ring of Trials: Roakk the Zealot##34666 |goto 79.44,50.30
step
click Nagrand Cherry##433
get 15 Nagrand Cherry##113083 |q Fruitful Ventures##34819/1 |goto 74.01,39.86 |tip Check near trees for them
'More can be found at this location |goto Nagrand D/0 78.7,39.6
step
talk Olgra##82688
turnin Lost in Nagrand##35167 |goto 74.16,37.51
accept Consumed by Vengeance##35170 |goto 74.16,37.51
step
kill Worgskin the Savage##82702 |q Consumed by Vengeance##35170/1 |goto Nagrand D/0 70.6,35.6
step
'_Run on_ the dirt road |goto Nagrand D/0 73.2,31.2 < 30
'_Cross_ the bridge |goto Nagrand D/0 73.1,27.7 < 20
'_Follow_ the path |goto 73.5,21.1 < 20
talk Kalandrios##80595
turnin The Fate of Gordawg##34271 |goto 72.79,19.74
step
talk Farseer Drek'Thar##82070
turnin The Dark Heart of Oshu'gun##35317 |goto 71.54,19.76
step
talk Gixmo Moneycash##82844 |goto Nagrand D/0 73.7,26.7 < 20
'Fly to _Wor'var_ |goto Nagrand D/0 83.2,44.6 < 20
talk Stalker Ogka##82080
turnin King of the Breezestriders##35378 |goto 82.59,43.94
step
talk Shadow Hunter Taz##82078
turnin Queen of the Clefthoof##35375 |goto 82.54,43.97
step
talk Thrall##80003
turnin Shields Down!##34918 |goto 82.84,45.08
accept And Justice for Thrall##35171 |goto 82.84,45.08
stickystart "annoying1"
step
'_Go up_ the hill |goto Nagrand D/0 81.2,38.5 < 20
'_Follow_ the path down |goto 83.6,32.2 < 20
'_Enter_ the burrow |goto 84.0,24.4 < 20
talk Dr. Hadley Ricard##84633
'Tell him _"Marybelle Walsh sent me to rescue you. Go and I'll protect you!"_
'Rescue Dr. Hadley Ricard |q The Good Doctor##35146/1 |goto 83.21,22.62
step "annoying1"
goto Nagrand D/0 86.8,26.8
kill 20 Spiteleaf Stabber##84656, Spiteleaf Sprout##84653, Spiteleaf Mender##84657, Spiteleaf Squirt##84655 |q Whacking Weeds##36273/1 |goto 84.84,27.95
step
talk Dr. Hadley Ricard##84861
turnin The Good Doctor##35146
accept A Fascinating Fungus##36284 |goto 86.65,28.34
accept The Search For Research##36275 |goto 86.65,28.32
stickystart "annoying2"
step
click Expedition Supplies## |tip It looks like a backpack underneath 3 giant mushrooms
'Get the Expedition Supplies |q The Search For Research##36275/2 |goto 86.03,20.49
step
click Research Journal## |tip It looks like a stack of books, sitting on top of mushrooms
get Research Journal##115272 |q The Search For Research##36275/1 |goto 88.87,19.77
step
click Anti-fungal Boots## |tip It's a pair of boots on top of a mushroom
get Anti-Fungal Boots##115274 |q The Search For Research##36275/3 |goto 91.76,21.78
step "annoying2"
click Spore Sac## |tip They are yellowish orange orbs, a majority of which are floating at the bottom of the lake
kill Spore Giant##84726
get 12 Fungal Spores##115276 |q A Fascinating Fungus##36284/1 |goto Nagrand D/0 88.6,21.8
step
'_Go up_ the hill |goto Nagrand D/0 85.4,25.2 < 20
talk Dr. Hadley Ricard##84861
turnin A Fascinating Fungus##36284 |goto 86.65,28.33
turnin The Search For Research##36275 |goto 86.65,28.33
accept Dirgemire##36285 |goto 86.66,28.41
step
'_Ride around_ the beach |goto Nagrand D/0 86.9,25.3 < 30
'_Follow_ the path down |goto 86.1,19.2 < 20
'_Swim_ underwater here |goto Nagrand D/0 86.5,16.2 < 10
kill Dirgemire##84649
get Fungal Brain##115277 |q Dirgemire##36285/1 |goto 84.56,17.45
step
'_Swim_ out of the cave |goto Nagrand D/0 86.5,16.2 < 20
'_Follow_ the path |goto 86.1,19.2 < 20
'_Go up_ the hill |goto Nagrand D/0 85.5,26.8 < 20
talk Dr. Hadley Ricard##84861
turnin Dirgemire##36285 |goto 86.66,28.32
step
talk Mankrik##72822
turnin Consumed by Vengeance##35170 |goto 49.29,47.97
step
talk Marybelle Walsh##84632
turnin Whacking Weeds##36273 |goto 77.43,47.35
step
talk Digrem Orebar##81955
turnin Fruitful Ventures##34819 |goto 79.22,52.66
accept New Babies##34900 |goto 79.23,52.66
step
clicknpc Tenderhoof Meadowstomper##78459
'Coax #5# Tenderhoof Meadowstompers|q New Babies##34900/1 |goto 77.34,56.27
'More can be found around this area |goto Nagrand D/0 70.2,58.7
step
talk Digrem Orebar##81955
turnin New Babies##34900 |goto 79.25,52.65
step
'_Cross_ the road |goto Nagrand D/0 78.7,58.2 < 40
'_Follow_ the path |goto Nagrand D/0 78.0,67.4 < 40
talk Durotan##81414 |goto Nagrand D/0 74.6,69.5
'Meet Durotan |goto Nagrand D/0 74.6,69.5 < 20 |c |q 35171
'Speak with Durotan at the Gates of Grommashar |scenariogoal 1/25158 |goto Nagrand D/0 74.6,69.5
step
talk Aggra##81416
'Tell her _"I agree. A flanking maneuver will buy you the time you need to move most of our forces closer to Garrosh."_ |scenariogoal 2/25159 |goto Nagrand D/0 74.7,76.3
step
kill Packmaster Grokglok##82131
'Slay Packmaster Grokglok |scenariogoal 3/24795 |goto Nagrand D/0 72.3,78.8
step
'_Go up_ the ramp |goto Nagrand D/0 70.2,81.5 < 15
'_Follow_ the path back |goto Nagrand D/0 73.6,81.2 < 15
talk Durotan##84443
'Tell him _"Like it or not, we need to move ahead. What's the situation."_ |scenariogoal 4/25131 |goto Nagrand D/0 75.2,77.6
step
kill Durn the Hungerer##82132
'Slay Durn the Hungerer |scenariogoal 5/24796 |goto Nagrand D/0 75.7,80.8
step
'_Follow_ the path down |goto Nagrand D/0 74.5,81.9 < 20
talk Durotan##84443
'Tell him _"Give the order, Durotan. Destroy the gates and get us in there."_ |scenariogoal 6/25161 |goto Nagrand D/0 72.9,81.8
step
kill Garrosh Hellscream##82133
'Bring Warlord Garrosh Hellscream to justice |scenariogoal 7/24797 |goto Nagrand D/0 71.6,84.1
'Garrosh dealt with |q And Justice for Thrall##35171/2 |goto 66.96,33.85
step
talk Durotan##81415
turnin And Justice for Thrall##35171 |goto 66.89,33.70
]])
