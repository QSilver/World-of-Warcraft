local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DungeonHWOD") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Draenor Dungeons\\Bloodmaul Slag Mines 90",[[
mapid 964
description This guide will walk you through the Bloodmaul Slag Mines dungeon.
achieveid 9046
condition suggested level>=90
keywords BSM
author support@zygorguides.com
step
.'Enter the _Bloodmaul Slag Mines_ dungeon |goto Bloodmaul Slag Mines/1 51.5,83.3 < 100 |c |noway |or
|confirm |or
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	51.5,83.3	49.0,77.0	49.9,68.7
path	52.6,62.0	52.6,62.0	56.3,59.8
.'Follow the path |goto Bloodmaul Slag Mines/1 57.1,60.0 < 20 |noway |c
step
.modelnpc Slave Watcher Crushto##86222
.'_Tank_: Interrupt _Ferocious Yell_. Miners will fixate on players, becoming untauntable.
.'_DPS_: Interrupt _Ferocious Yell_. Kill Captured Miners quickly.
.'_Healer_: Heal players affected by _Crushing Leap_. Heal friendly miners to keep them in the fight.
|scenariogoal 25035 |goto Bloodmaul Slag Mines/1 59.0,59.6
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	55.7,59.7	53.3,56.9	55.0,46.4
path	53.1,42.1	48.2,41.7	43.7,54.0
path	35.9,55.8	29.1,55.9
.'Follow the path |goto Bloodmaul Slag Mines/1 29.1,55.9 < 20 |noway |c
step
.modelnpc Magmolatus##74475
.'_Phase One:_
.'_Tank_: _Rough Smash_ does significant damage and stuns for 2 seconds.
.'_DPS_: Kill elementals. Interrupt Calamity's _Firestorm_.
.'_Healer_: Dispel _Dancing Flames_ and _Withering Flames_ quickly or they will spread.
.'_Phase Two:_
.'_Tank_: _Slag Smash_ does significant damage and stuns for 3 seconds. _Molten Elementals_ cannot be tanked.
.'_DPS_: Kill _Molten Elementals_ quickly.
.'_Healer_: Dispel _Dancing Flames_ and _Withering Flames_ quickly or they will spread.
|scenariogoal 25036 |goto Bloodmaul Slag Mines/1 26.4,55.9
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	29.1,55.9	34.9,56.0	41.9,55.5
path	43.7,52.2	45.4,45.4	49.1,40.2
.'Follow the path |goto Bloodmaul Slag Mines/1 49.1,38.0 < 20 |noway |c
step
.modelnpc Roltall##86223
.'_Healer_: _Heat Wave_ will deal damage to the entire party.
.'Avoid the _Fiery Boulders_ that roll down the bridge.
.'_Heat Wave_ will knock everyone back. Be careful not to get knocked into pools of _Burning Slag_.
.'Avoid standing in _Burning Slag_ pools.
.'_Heroic Difficulty_: _Rotall_ gains _Scorching Aura_, reducing cast speed when in close proximity by 100%.
|scenariogoal 25037 |goto Bloodmaul Slag Mines/1 49.1,34.8
step
map Bloodmaul Slag Mines/1
path follow loose;loop off;ants straight
path	49.1,33.6	49.1,33.7	49.4,24.5
path	58.8,23.3
.'Follow the path |goto Bloodmaul Slag Mines/1 58.8,23.3 < 10 |noway |c
step
.modelnpc Gug'rokk##86224
.'_Tank_: Interrupt _Molten Blast_.
.'_DPS_: Interrupt _Molten Blast_. Kill _Unstable Slag Elementals_ before they reach their kiln.
.'_Healer_: _Unstable Slag Elementals_ will deal AoE damage to the party through _Unleashed Flames_.
.'_Heroic Difficulty_: _Gug'rokk_ gains _Flame Buffet_, dealing damage to all players and increasing fire damage taken. Stacks.
|scenariogoal 24989 |goto Bloodmaul Slag Mines/1 65.4,22.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Draenor Dungeons\\Iron Docks 92",[[
mapid 987
description This guide will walk you through the Iron Docks dungeon.
achieveid 9047
condition suggested level>=92
keywords ID
author support@zygorguides.com
step
.'Enter the _Iron Docks_ dungeon. |goto Iron Docks/1 30.6,44.5 |c |noway |or
|confirm |or
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	33.6,40.7	37.8,35.5	42.0,34.4
.'Follow the path |goto Iron Docks/1 42.0,34.4 |c |noway
step
.modelnpc Fleshrender Nok'gar##87451
.'_Tank_: Move _Nok'gar_ and _Dreadfang_ out of _Barbed Arrow Barrage_ and _Burning Arrows_.
.'_DPS_: Move out of _Barbed Arrow Barrage_ and _Burning Arrows_ quickly.
.'_Healer_: Move out of _Barbed Arrow Barrage_ and _Burning Arrows_ quickly.
.'Everyone should stop attacking when _Nok'gar_ has _Reckless Provocation_. This is a shield-looking effect.
.'Avoid _Shredding Swipes_ when _Dreadfang_ charges forward.
|scenariogoal 25108 |goto Iron Docks/1 47.8,34.1
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	46.4,34.2	49.2,47.6	39.6,48.6
path	37.9,55.5	49.5,67.6	64.3,76.3
path	76.4,76.6
.'Follow the path |goto Iron Docks/1 76.4,76.6 |c |noway
step
.modelnpc Grimrail Enforcers##87452
.'_Tank_: Avoid attacking any Enforcer protected with _Sanguine Sphere_. Face _Makogg_ away from the group.
.'_DPS_: Avoid attacking any Enforcer protected with _Sanguine Sphere_.
.'Do not step on _Ogre Traps_. Doing so will make you vulnerable to _Big Boom_.
.'Spread out when _Neesa_ fires _Hyper-Jumper Cables 9000-XL_.
|scenariogoal 25109 |goto Iron Docks/1 80.2,75.3
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	83.5,76.2	86.4,68.9	86.5,24.8
.'Follow the path |goto Iron Docks/1 86.5,24.8 |c |noway
step
.modelnpc Oshir##86232
.'_Tank_: Focus damage on _Oshir_ during _Feeding Frenzy_. When _Oshir_ flips backward, avoid his _Primal Assault_.
.'_DPS_: Focus damage on _Oshir_ during _Feeding Frenzy_. When _Oshir_ casts _Breakout_, kill the beasts quickly.
.'_Healer_: Focus healing on the target of _Feeding Frenzy_.
.'Stay out of _Acid Splash_ on the floor.
.'_Heroic Difficulty_: _Ravenous Wolves_ gain a damage buff when near each other. Keep them separated.
|scenariogoal 25110 |goto Iron Docks/1 80.4,17.4
step
map Iron Docks/1
path follow loose;loop off;ants straight
path	79.3,19.6	71.9,28.0	69.4,34.2
.'Follow the path |goto Iron Docks/1 69.4,34.2 |c |noway
step
.modelnpc Skulloc##86233
.'_Tank_: Face _Koramar_ away from the group.
.'Take cover behind crates during _Cannon Barrage_, moving foreward between shots.
.'Avoid the rear of the ship during _Cannon Barrage_. _Backdraft_ will kill you.
.'Avoid standing between _Zoggosh_ and his _Rapid Fire_ target.
|scenariogoal 25111 |goto Iron Docks/1 68.4,43.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Draenor Dungeons\\Auchindoun 94",[[
mapid 984
description This guide will walk you through the Auchindoun dungeon.
achieveid 9049
condition suggested level>=94
author support@zygorguides.com
step
.'Enter the _Auchindoun_ dungeon |goto Auchindoun/1 49.7,90.2 |c |noway |or
|confirm |or
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	49.7,90.2	49.8,68.8	44.4,65.9
path	37.8,61.6	32.2,54.5	27.4,40.2
.'Follow the path |goto Auchindoun/1 27.4,40.2 < 20 |c |noway
step
.modelnpc Vigilant Kaathar, Protector of Auchindoun##86217
.'_Tank_: Try to keep _Kaathar_ a short distance away from his shield.
.'Stay out of patches of holy energy on the ground.
.'During _Consecrated Light_, everyone needs to hide behind the shield.
.'_Heroic Difficulty_: He will now cast _Fate_, instantly blowing up all _Hallowed Ground_ patches immediately.
|scenariogoal 25102 |goto Auchindoun/1 28.9,33.6
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	27.4,40.2	30.6,51.3	35.0,58.9
path	44.2,66.0
.'Follow the path |goto Auchindoun/1 44.2,66.0 < 20 |c |noway
step
.modelnpc SoulbinderNyami##86218
.'_Tank_: Pick up adds summoned by _Torn Spirits_.
.'_DPS_: Interrupt _Arbiter's Hammer_ from _Spiteful Arbiters_ and _Arcane Bolt_ from _Twisted Magus_.
.'_Healer_: Players outside of the safe zone will take heavy damage from _Soul Vessel_.
.'During _Soul Vessel_, the center is safe from damage.
|scenariogoal 25103 |goto Auchindoun/1 49.7,66.6
step
map Auchindoun/1
path follow loose;loop off;ants straight
path	49.7,66.6	55.0,66.1	65.0,59.5
path	70.0,48.5	70.7,38.2
.'Follow the path|goto Auchindoun/1 70.7,38.2 < 20 |c |noway
step
.modelnpc Azzakel##86219
.'_Tank_: Summoned _Felguards_ must be tanked. They do heavy melee damage.
.'Avoid standing close to _Blazing Tricksters_. Their _Conflagration_ aura will deal damage and disorient. This effect can spread.
.'Interrupt _Felblast_ cast by _Cackling Pyromaniacs_.
.'Move out of _Fel Pool_.
.'_Heroic Difficulty_: _Fel Sparks_ will reach out of _Fel Pools_ inflicting extreme fire damage each second to anyone who stands in them.
|scenariogoal 25104 |goto Auchindoun/1 70.7,33.2
step
.click Soul Transporter
map Auchindoun/1
path follow loose;loop off;ants straight
path	67.8,38.6	63.7,32.4
.'Activate the Soul Transporter |goto 58.7,18.9 |c |noway
step
.click Soul Transporter
.'Activate the Soul Transporter |goto Auchindoun 57.0,21.5
|goto Auchindoun/1 40.8,18.9 |c |noway
step
.click Soul Transporter
.'Activate the Soul Transporter |goto Auchindoun 42.4,21.4
|goto Auchindoun/1 41.1,45.4 |c |noway
step
.click Soul Transporter
.'Activate the Soul Transporter |goto Auchindoun 42.4,43.5
|goto Auchindoun/1 49.7,41.6 |c |noway
step
.modelnpc Teron'gor##86220
.'_Phase 1:_
.'Interrupt _Drain Life_.
.'Spread out when _Seed of Malevolence_ detonates.
.'Avoid standing in _Rain of Fire_.
.'_Heroic Difficulty_: Run away when the _Felborne Abyssal_ fixates on you.
.'_Phase 2:_
.'Interrupt _Drain Life_ and _Chaos Bolt_.
.'Dispel _Curse of Exhaustion_ whenever possible.
.'There are several possible targeted and AoE effects possible for this phase. All are relatively easy to avoid.
|scenariogoal 25105 |goto Auchindoun/1 49.6,33.5
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Draenor Dungeons\\Skyreach 97",[[
mapid 989
description This guide will walk you through the Skyreach dungeon.
achieveid 8844
condition suggested level>=97
keywords Sky
author support@zygorguides.com
step
.'Enter the _Skyreach_ dungeon |goto Skyreach/1 60.6,25.1 < 20 |c |noway |or
|confirm |or
step
map Skyreach/1
path follow loose;loop off;ants straight
path	60.6,25.1	60.5,15.7	65.5,13.7
path	66.5,25.9	64.1,32.2
.'Follow the path |goto Skyreach/1 64.1,32.2 |c |noway
step
.modelnpc Ranjit##86238
.'_Healer_: _Fan of Blades_ deals damage to the entire group and leaves a bleed effect.
.'Avoid standing in the wind trails created by _Four Winds_.
.'Avoid standing in the path of _Spinning Blade_.
.'_Ranjit_ will charge forward in a _Piercing Rush_. Avoid standing in front of him.
.'_Heroic Difficulty_: _Lens Flare_ will call a beam of light down on a party member and follow them. Move away and don't lead it through the group.
|scenariogoal 24709 |goto Skyreach/1 63.3,38.5
step
map Skyreach/1
path follow loose;loop off;ants straight
path	62.6,39.2	59.2,46.2	54.1,50.3
path	53.3,53.7
.'Follow the path |goto Skyreach/1 53.3,53.7 |c |noway
step
.modelnpc Araknath##86239
.'_Tank_: Avoid standing in _Smash_. This ability comes from his left or right arm.
.'_Healer_: _Burst_ will deal increasing damage to the entire party.
.'Someone needs to stand in the path of _Energize_. It is best if the _Tank_ does this, but anyone is capable.
|scenariogoal 24451 |goto Skyreach/1 52.4,61.2
step
map Skyreach/1
path follow loose;loop off;ants straight
path	52.3,61.1	47.0,62.3	45.7,64.7
path	 47.1,67.8	47.8,70.9	45.3,76.3
.'Follow the path |goto Skyreach/1 45.3,76.3 |c |noway
step
.modelnpc Rukhran##76379
.'_Tank_: It is critical to stay in melee range of _Rukhran_ at all times or he will cast _Screech_. Use active mitigation cooldowns to counter _Pierce Armor_.
.'Run from _Solar Flare_ if you get fixated. These should be killed away from _Ash Piles_ or they will animate as additional _Solar Flares_.
.'_Heroic Difficulty_: _Rukhran_ will cast _Quills_, dealing damage to all enemies and increasing in damage each cast. Soft enrage.
|scenariogoal 24452 |goto Skyreach/1 42.7,81.9
step
map Skyreach/1
path follow loose;loop off;ants straight
path	41.4,77.1	39.5,72.0	39.9,64.2
path	37.0,63.6	35.5,68.1	42.4,69.3
.'Follow the path |goto Skyreach/1 42.4,69.3 < 5 |c |noway
step
map Skyreach/2
path follow loose;loop off;ants straight
path	18.1,73.8	27.2,80.8	30.9,72.5
path	24.8,58.1	27.8,41.3	35.4,35.4
path	44.0,43.4
.'Follow the path |goto Skyreach/2 44.0,43.4 < 5 |c |noway
step
.modelnpc High Sage Viryx##86241
.'_Tank_: Interrupt _Solar Burst_.
.'_DPS_: Burn down _Zealots_ quickly before they can drop allies off the side. Kill _Shield Constructs_.
.'Move out of _Lens Flare_ and lead it away from the party.
|scenariogoal 24453 |goto Skyreach/2 51.1,27.4
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Draenor Dungeons\\Grimrail Depot 100",[[
mapid 993
description This guide will walk you through the Grimrail Depot dungeon.
achieveid 9052
condition suggested level>=100
keywords GRD
author support@zygorguides.com
step
.'Enter the _Grimrail Depot_ dungeon |goto Grimrail Depot/1 32.4,31.9 < 20 |c |noway |or
|confirm |or
step
map Grimrail Depot/1
path follow loose;loop off;ants straight
path	30.9,51.7	43.9,56.8	path	56.6,42.8
.'Follow the path |goto Grimrail Depot/1 56.6,42.8 |c |noway
step
.modelnpc Railmaster Rocketspark##86225
.modelnpc Borka the Brute##86226
.'_Tank_: Aim _Borka_ at _Railmaster Rocketspark_ during _Mad Dash_. _Rocketspark_ cannot be tanked.
.'_Healer_: _Slam_ and _X21-01A Missile Barrage_ do unavoidable group damage.
.'Move away from _Borka's Mad Dash_.
.'Don't stand in _Rocketspark's VX18-B Target Eliminator_.
.'Range DPS should be on _Rocketspark_, while melee DPS should be on _Borka_.
.'_Heroic Difficulty_: _Borka's Slam_ also interrupts for 1.5 seconds.
|scenariogoal 25106 |goto Grimrail Depot/1 71.3,57.8
step
map Grimrail Depot/1
path follow loose;loop off;ants straight
path	69.5,19.6	75.4,25.0	Grimrail Depot/2 63.6,25.8
path	Grimrail Depot/2 71.8,13.7	Grimrail Depot/2 70.3,29.3
.'Follow the path |goto Grimrail Depot/3 85.3,51.8 |c |noway |or
.' Enter the Train Car |confirm |or
step
map Grimrail Depot/3
path follow loose;loop off;ants straight
path	85.3,51.8	67.6,52.1	38.6,51.8
path	9.7,51.7
.'Follow the path |goto Grimrail Depot/3 9.7,51.7 |c |noway
step
.modelnpc Nitrogg Thundertower##86227
.'_Tank_: Pick up adds that spawn when _Assault Cannon_ becomes active.
.'_DPS_: Kill _Boomers_ and loot _Blackrock Mortar Shells_. Enter turrets and shoot the _Assault Cannon_.
.'_Healer_: Line of sight can be difficult during this fight. Be aware of your party placement.
.'Hide behind something when targeted by _Suppressive Fire_.
.'Anyone who picks up _Blackrock Grenades_ should use them to deal heavy damage to adds.
.'_Heroic Difficulty_: Move out of _Slag Blast_. This leaves fire on the ground.
|scenariogoal 25107 |goto Grimrail Depot/3 65.0,51.0
step
map Grimrail Depot/4
path follow loose;loop off;ants straight
path	70.3,51.5	54.0,51.6	30.9,51.6
.'Follow the path |goto Grimrail Depot/4 30.9,51.6 |c |noway
step
.modelnpc Skylord Tovra##86228
.'_Tank_: Reposition _Tovra_ frequently to avoid _Freezing Snare_ and _Diffused Energy_.
.'_DPS_: Avoid _Spinning Spear_ and _Freezing Snare_.
.'_Healer_: Players standing in _Diffused Energy_ will take damage that increases very quickly.
.'_Heroic Difficulty_: Random players will be marked with _Hunter's Mark_. Move away from them.
|scenariogoal 26188 |goto Grimrail Depot/4 8.6,51.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Draenor Dungeons\\Shadowmoon Burial Grounds 100",[[
mapid 969
description This guide will walk you through the Shadowmoon Burial Grounds dungeon.
achieveid 9054
condition suggested level>=100
keywords SBG
author support@zygorguides.com
step
.'Enter the _Shadowmoon Burial Grounds_ dungeon |goto Shadowmoon Burial Grounds/1 12.0,68.4 < 20 |c |noway |or
|confirm |or
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	12.0,68.4	13.8,65.6	16.2,55.5
path	23.4,50.8	37.6,50.9	38.4,37.6
path	45.6,28.9	52.6,24.1	52.6,21.7
.'Drop down at the end of the path |goto Shadowmoon Burial Grounds/1 46.9,51.0 |c |noway
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,21.7	52.6,34.8	42.3,36.1
path	42.5,50.8	47.9,50.9
.'Follow the path |goto Shadowmoon Burial Grounds/1 47.9,50.9 < 8 |c |noway
step
.modelnpc Sadana Bloodfury##86234
.'_Tank_: Kill _Defiled Souls_ before they get to _Sadana_.
.'_DPS_: Kill _Defiled Souls_ before they get to _Sadana_.
.'_Healer_: The whole group will take damage from _Whispers of the Dark Star_.
.'During _Dark Eclipse_, walk over uncorrupted blue runes to survive.
.'Move away from falling _Daggers_.
|scenariogoal 25114 |goto Shadowmoon Burial Grounds/1 52.2,51.0
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	52.6,51.0	65.3,50.9	72.7,51.7
path	77.9,55.9	78.2,62.4
.'Follow the path |goto Shadowmoon Burial Grounds/1 78.2,62.4 < 8 |c |noway
step
.modelnpc Nhallish##75829
.'_Tank_: Pick up spirits near barrows raised by _Exhume the Crypts_. Face _Nhallish_ away from the group.
.'Kill your _Spirit_ quickly during _Soul Shred_ or you will die.
.'Run away when _Nhallish_ casts _Void Vortex_.
.'Avoid purple spots on the ground. These areas will be hit by _Void Devastation_.
|scenariogoal 25116 |goto Shadowmoon Burial Grounds/1 78.8,73.6
step
map Shadowmoon Burial Grounds/1
path follow loose;loop off;ants straight
path	79.0,72.9	84.4,72.5	87.6,60.4
.'Follow the path |goto Shadowmoon Burial Grounds/1 87.6,60.4 |c |noway
step
map Shadowmoon Burial Grounds/2
path follow loose;loop off;ants straight
path	7.0,65.5	7.3,60.9	10.6,58.9
path	15.5,58.1	21.3,61.7	22.2,66.8
path	20.2,71.5	17.3,70.9	16.9,66.9
path	18.8,62.2	25.7,59.5
.'Follow the path |goto Shadowmoon Burial Grounds/2 25.7,59.5 |c |noway
step
.modelnpc Bonemaw##86236
.'_Tank_: There must always be a tank in melee range of _Bonemaw_ or he will use _Fetid Spit_ rapidly and wipe the group.
.'_Healer_: _Corpse Breath_ inflicts shadow damage to everyone. Healers need to be prepared to heal the group up.
.'Avoid _Body Slam_ cast by _Carrion Worms_ and _Bonemaw_.
.'Stand in _Necrotic Pitch_ when _Bonemaw_ _Inhales_.
|scenariogoal 25115 |goto Shadowmoon Burial Grounds/2 39.8,51.4
step
map Shadowmoon Burial Grounds/2
path follow loose;loop off;ants straight
path	39.1,50.9	49.4,57.6	56.9,62.3
path	64.8,67.1
.'Follow the path |goto Shadowmoon Burial Grounds/3 38.5,36.9 < 20 |c |noway
step
.modelnpc Ner'zhul##76268
.'During _Ritual of Bones_, the Tank and DPS need to focus dps on a single skeleton to break a safe zone in the chain.
.'Everyone should move away from _Omen of Death_ quickly to avoid taking too much damage from close proximity.
.'When Ner'zhul casts _Malevolence_, avoid being in front of him.
|scenariogoal 24995 |goto Shadowmoon Burial Grounds/3 48.1,47.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Draenor Dungeons\\The Everbloom 100",[[
mapid 1008
description This guide will walk you through The Everbloom dungeon.
achieveid 9053
condition suggested level>=100
keywords TEB
author support@zygorguides.com
step
.'Enter _The Everbloom_ dungeon |goto The Everbloom/1 72.4,55.7 < 20 |c |noway |or
|confirm |or
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	72.4,55.7	69.4,50.4	67.4,48.0
path	63.4,56.9	59.0,59.9	56.0,59.7
.'Follow the path
step
.modelnpc Witherbark##86242
.'_Tank_: Tank _Witherbark_ away from the water. Pick up _Unchecked Growths_ quickly and face _Witherbark_ away from the group.
.'_Aqueous Globules_ need to be destroyed before they can reach Witherbark.
.'_DPS_ and _Healers_ should lead _Unchecked Growths_ away from the group.
.'Avoid standing in areas targeted by _Agitated Water_
.'Save DPS cooldowns for _Brittle Bark_. _Witherbark_ takes double damage during this time.
.'_Heroic Difficulty_: _Witherbark_ will continue to cast _Unchecked Growth_ during _Brittle Bark_.
|scenariogoal 25278
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	53.3,56.3	54.2,49.4	58.2,46.1
path	63.5,48.5	67.7,47.4	69.5,42.1
path	71.0,29.6	70.6,24.4	67.8,21.6
.'Follow the path
step
.modelnpc Dulhu##83894
.modelnpc Earthshaper Telu##86244
.modlenpc Life Warden Gola##86243
.'Dispel or interrupt _Briarskin_ cast by _Telu_
.'Dispel or interrupt _Rapid Tides_ cast by _Gola_.
.'A lot of random damage goes out in this encounter. Healers should be prepared.
.'Interrupt _Revitalizing Water_ cast by _Gola_.
.'_Dulhu_ will cast _Grasping Vine_ on a party member and then _Slash_ at them. Don't stand in front of him.
|scenariogoal 25112 |goto The Everbloom/1 64.0,22.4
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	64.5,25.3	62.0,28.2	59.8,25.5
path	57.8,20.6	58.8,13.4	62.1,5.9
.'Follow the path
step
.modelnpc Xeri'tac##86247
.'DPS and Healers should avoid Xeri'tac when he uses _Descend_
.'When _Toxic Spiderlings_ die, the leave patches of _Toxic Gas_. Avoid standing in them.
.'The Tank should position _Venom-Crazed Pale Ones_ to be hit by _Descend_.
.'_Phase 1:_
.'Xeri'tac will _Descend_ randomly, dropping down to strike. Avoid being underneath him.
.'_Phase 2:_
.'Xeri'tac engages the party in this phase.
.'The Tank should position _Venom-Crazed Pale Ones_ facing away from the group.
.'Avoid tanking orcs near _Toxic Gas_.
.'Run away from _Gorged Bursters_ if you get fixated.
|scenariogoal 25277 |goto The Everbloom/1 64.5,2.7
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	61.4,7.3	58.8,12.8	57.4,20.4
path	57.2,29.6
.'Follow the path
step
.modelnpc Archmage Sol##86246
.'_Archmage Sol_ begins by casting _Fire_ spells, followed by _Frost_ and then _Arcane_.
.'_DPS_ and _Tanks_ should interrupt _Parasitic Growth_.
.'Everyone should _jump_ over the expanding rings of _Firebloom_.
.'The group will take heavy AoE damage during _Arcane_ phase due to _Arcane Burst_.
.'Avoid standing in the ground targeted abilities _Firebloom_, _Frozen Rain_, and _Arcane Blossom_.
.'_Heroic Difficulty_: Interrupting _Parasitic Growth_ spawns a _Spore Image_. This image continues casting the prevous school of magic until killed.
|scenariogoal 25275
step
map The Everbloom/1
path follow loose;loop off;ants straight
path	55.2,33.1	44.2,35.1
.'Follow the path
step
.modelnpc Yalnu##86248
.'Step on _Sprouting Lashers_ to _Trample_ them during _Genesis_.
.'DPS should destroy _Entanglement_ and kill enemies spawned by _Font of Life_.
.'Healers_ should save group heals for _Colossal Blow_. The entire group will take heavy damage.
.'The Tank must pick up adds from _Font of Life_.
.'_DPS_ and _Healers_ should avoid standing in front of the adds. They have frontal cone attacks that deal heavy damage.
|scenariogoal 25276
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Draenor Dungeons\\Upper Blackkrock Spire 100",[[
mapid 995
description This guide will walk you through the Upper Blackkrock Spire dungeon.
achieveid 9055
condition suggested level>=100
keywords UBRS
author support@zygorguides.com
step
.'Enter the _Upper Blackrock Spire_ dungeon |goto Upper Blackrock Spire 2/1 37.3,29.1 < 100 |c |noway |or
|confirm |or
step
map Upper Blackrock Spire 2/1
path follow loose;loop off;ants straight
path	37.2,30.0	36.6,18.3	33.5,15.8
path	32.9,13.2	30.6,13.3	Upper Blackrock Spire 2/2 30.4,19.6
.'Clear the rooms to break the seals
.'Follow the path |goto Upper Blackrock Spire 2/2 30.4,19.6 < 5|c |noway
step
.modelnpc Orebender Gor'ashan##86249
.'To begin the encounter, click the _Rune Conduits_ near the walls.
.'_DPS_: When _Gor'ashan_ casts _Power Conduit_, click the conduits with lightning touching them.
.'Move out of _Shrapnel Nova_ to reduce the overall group damage taken.
|scenariogoal 24322 |goto Upper Blackrock Spire 2/2 30.3,27.0
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	30.3,27.0	30.6,36.4	32.0,37.8
.'Follow the path |goto Upper Blackrock Spire 2/2 32.0,37.8
step
.modelnpc Kyrak##86250
.'_Tank_: Face the _Drakonids_ away from the group and interrupt _Debilitating Fixation_.
.'Stay spread out to reduce the damage from _Vileblood Serum_.
.'_Heroic Difficulty_: It is important to stay away from others when affected by _Salve of Toxic Fumes_.
|scenariogoal 24433 |goto Upper Blackrock Spire 2/2 38.4,38.5
step
map Upper Blackrock Spire 2/2
path follow loose;loop off;ants straight
path	36.2,37.6	30.3,39.5
.'Follow the path |goto Upper Blackrock Spire 2/2 30.3,39.5 |c |noway
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	28.6,41.1	28.4,34.1	36.4,34.0
path	36.4,27.8	42.2,28.3	45.8,28.0
.'Follow the path |goto Upper Blackrock Spire 2/3 45.8,28.0 < 8 |c |noway |or
.' Enter the next floor |confirm |or
step
.modelnpc Commander Tharbek##86251
.'_Tank_: Pick up _Black Iron Guards_ quickly to eliminate excessive group damage.
.'_Tharbek_ will choose a target and charge to it using _Iron Reaver_. Stay out of the path.
.'Avoid standing near the whirling _Imbued Iron Axe_.
.'Periodically Tharbek's mount will use _Incinerating Breath_ and _Noxious Spit_. These are easy to avoid.
|scenariogoal 24619 |goto Upper Blackrock Spire 2/3 48.6,25.9
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	48.5,27.3	48.7,35.8	54.7,35.8
path	54.7,45.7	59.0,47.1
.'Follow the path |goto Upper Blackrock Spire 2/3 59.0,47.1 < 10 |c |noway
step
.modelnpc Son of the Beast##77927
.'Son of the Beast is an optional mini boss. |goto Upper Blackrock Spire 2/3 62.2,41.4 |confirm
.'If you choose to fight him, stay out of fire on the ground.
.'Healers should be aware that he will periodically _knock back_ and _AoE fear_ the group.
.'Click here to proceed |confirm
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	61.8,45.6	58.1,47.0	50.6,45.7
.'Follow the path |goto Upper Blackrock Spire 2/3 50.6,45.7 |c |noway
step
.modelnpc Ragewing##76585
.'_Tank_: Pick up _Ragewing Whelps_ quickly.
.'_DPS_: Kill _Ragewing Whelps_ as quickly as possible.
.'_Engulfing Fire_ is a sweeping flame attack that will reach the middle of the bridge. It is easier to avoid when standing near the middle.
.'Loosely spreading out will minimize the risk of multiple targets being hit by _Magma Spit_.
.'This fight can be very tough for healers so minimizing incoming damage is very important.
|scenariogoal 24624 |goto Upper Blackrock Spire 2/3 46.7,45.6
step
map Upper Blackrock Spire 2/3
path follow loose;loop off;ants straight
path	46.7,45.6	39.8,45.9	36.3,51.4
path	28.9,51.5	21.4,49.6	18.8,47.6
path	16.7,47.4
.'Follow the path |goto Upper Blackrock Spire 2/3 16.7,47.4 < 8 |c |noway
step
.modelnpc Warlord Zaela##77120
.'_Tank_: Position yourself so the knockback from _Destructive Smite_ will not knock you off the platform.
.'_Zaela_ will fixate a random target with _Black Iron Cyclone_. Avoid leading this through the group when you run away.
.'_Zaela_ will throw a blade occasionally at a target. Stay spread out to avoid this blade jumping to another party member.
.'Throughout the fight, Proto-Drakes will lay down lines of _Burning Breath_. Move out of the path.
.'_Heroic Difficulty_: _Zaela_ gains _Destructive Smite_, dealing massive damage to the current target and knocking them back.
|scenariogoal 24981 |goto Upper Blackrock Spire 2/3 14.4,47.7
]])
