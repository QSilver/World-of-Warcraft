--[[
Questionably Epic Mythic+ Dungeon Tips
Version: 4.8 (Battle for Azeroth)
Developed by: Voulk
Contact: 
	Discord: Voulk#1858
	Email: itsvoulk@gmail.com
	
	
Special Thanks:
 - CoV (testing & support)
 - Everyone who helped test the addon and support the site 
	

--Shorthand--

Defensives {Defensive: SpellName}
Interrupts {Interrupt: SpellName (SpellEffect)}, {Stun Interrupt: SpellName (SpellEffect)}
Dispels {Dispel: SpellName (SpellEffect)}, {Purge: SpellName (SpellEffect)}
Positioning: {Spread: When}, {Stack: When}, {Dodge: SpellName (Area / description)}
Other: {Frontal Cleave (opt: tank dodgeable)}, {Healing CD: SpellName}, {ClassName: Specific Cheese}, {Priority DPS target}

--Examples--
Interrupt: Stone Bolt (heavy ST nuke)
Defensive: Arcing / Expel Light overlap
Healing CD: Slicing Maelstrom (every 25s)
Dispel: Brittle Bones (inc dmg taken)
Frontal Cleave: Razor Shards (tank dodgeable)
Druid: Shapeshift the Arcane Lockdown debuff

]]--

local _, addon = ...;

-- The Tips maps holds tooltip information and mob ID's for all 13 legion dungeons and all 10 BFA dungeons. This is basically the database.
-- Each array uses the format: {{"Type", "Tip1"}, {"Type", "Tip2"}}
local tipsMap = {
	-- Example
	[126389] = {{"Blank", "A+ Tip right here. \n It's a shame it's so damn long eh? It just goes on and on and on and ooon"}, 
				{"Interrupt", "INTERRUPT: Stone Bolt"}}, -- In this example case, all roles will see "A+ Tip right here" on the mobs tooltip but only Healers will see the second tip.
	
		--
	
	---------------------------------------------------
	----------------Battle for Azeroth-----------------
	---------------------------------------------------
	
	----- Uldir -----
	-- Taloc --
	[137119] = {{"Important", "Drop the Plasma Discharge debuff out of the raid."}, {"Important", "Dodge: Boss charge (immediately follows Cudgel of Gore). Big hitbox."},
				{"Important", "Dodge: Sanguine Static: cast time, big red balls flying from boss"}, {"Important", "At 60% boss room turns into elevator. Dodge beams (you can kind of see them under platform) and kill the blobs."}, 
				{"TANK", "Run out during Cudgel of Gore. He'll clear any pools he charges over."},
				{"HEALER", "Healing CDs: Cudgel of Gore. Every 1 minute starting at ~0:40. None when platform descending."}}, -- Taloc the Corrupted
		[138530] = 	{{"Important", "Drop Plasma Discharge out of the raid"}, {"Important", "Dodge: Boss charge (immediately follows Cudgel of Gore). Big hitbox."},
				{"Important", "Dodge: Sanguine Static: cast time, big red balls flying from boss"}, {"Important", "At 60% boss room turns into elevator. Dodge beams (you can kind of see them under platform) and kill the blobs."}, 
				{"TANK", "Run out during Cudgel of Gore. He'll clear any pools he charges over."},
				{"HEALER", "Healing CDs: Cudgel of Gore. Every 1 minute starting at ~0:40. None when platform descending."}}, -- Taloc the Corrupted (Volatile Droplet)
		[138959] = 	{{"Important", "Drop Plasma Discharge out of the raid"}, {"Important", "Dodge: Boss charge (immediately follows Cudgel of Gore). Big hitbox."},
				{"Important", "Dodge: Sanguine Static: cast time, big red balls flying from boss"}, {"Important", "At 60% boss room turns into elevator. Dodge beams (you can kind of see them under platform) and kill the blobs."}, 
				{"TANK", "Run out during Cudgel of Gore. He'll clear any pools he charges over."},
				{"HEALER", "Healing CDs: Cudgel of Gore. Every 1 minute starting at ~0:40. None when platform descending."}}, -- Taloc the Corrupted (Coalesced Blood)	
				
				
	-- Mother			
	[135452] = {{"Important", "Three rooms. You cross in small groups since crossing deals raid damage and spawns an add. Hero the last room."}, {"PriorityTarget", "Priority Target: Remnant of Corruption."},
				{"Important", "Run against the wind pushback, dodge the fire swirlies and avoid the beams."}, {"Interrupts", "Interrupt: Clinging Corruption (cast by adds, likely a wipe if one gets through)"},
				{"Important", "Heroic: Beam can drop from the roof. Stand in the yellow swirlies to survive."}, {"TANK", "Frontal Cleave: Sanitizing Strike (cone). Command raid not to stand in front of boss."},
				{"HEALER", "Healing CDs: on group crosses. Have one healer stay with tank in first room until they move."}}, -- MOTHER
	[138089] = {{"Important", "Three rooms. You cross in small groups since crossing deals raid damage and spawns an add. Hero the last room."}, {"PriorityTarget", "Priority Target: Remnant of Corruption."},
				{"Important", "Run against the wind pushback, dodge the fire swirlies and avoid the beams."}, {"Interrupts", "Interrupt: Clinging Corruption (cast by adds, likely a wipe if one gets through)"},
				{"Important", "Heroic: Beam can drop from the roof. Stand in the yellow swirlies to survive."}, {"TANK", "Frontal Cleave: Sanitizing Strike (cone). Command raid not to stand in front of boss."},
				{"HEALER", "Healing CDs: on group crosses. Have one healer stay with tank in first room until they move."}}, -- MOTHER (2nd ID)
		[136315] = {{"Important", "Three rooms. You cross in small groups since crossing deals raid damage and spawns an add. Hero the last room."}, {"PriorityTarget", "Priority Target: Remnant of Corruption."},
				{"Important", "Run against the wind pushback, dodge the fire swirlies and avoid the beams."}, {"Interrupts", "Interrupt: Clinging Corruption (cast by adds, likely a wipe if one gets through)"},
				{"Important", "Heroic: Beam can drop from the roof. Stand in the yellow swirlies to survive."}, {"TANK", "Frontal Cleave: Sanitizing Strike (cone). Command raid not to stand in front of boss."},
				{"HEALER", "Healing CDs: on group crosses. Have one healer stay with tank in first room until they move."}}, -- MOTHER (Remnant of Corruption)
				
	-- Fetid Devourer
	[133298] = {{"Important", "Have your back against wall when Shockwave Stomp hits."}, {"Important", "Pop bloodlust at 50% since boss takes +50% damage."}, 
				{"Important", "Key Dodge: Rotting Regurgitation. Big cone but long cast time."}, {"PriorityTargets", "Kill the egg nearest boss. Ignore the other and just DPS him."},
				{"TANK", "Stand on top of each other. Every 4th melee attack will shred the offtank. Very heavy hitting boss."}, {"HEALER", "Focus heal debuff targets. Putrid Paroxysm is especially painful."},
				{"HEALER", "ALL healers must watch the tanks. Use your external cooldowns."}}, -- Fetid Devourer
		[133492] = {{"Important", "Have your back against wall when Shockwave Stomp hits"}, {"Important", "Pop bloodlust at 50% since boss takes +50% damage."}, 
				{"Important", "Key Dodge: Rotting Regurgitation. Big cone but long cast time."}, {"PriorityTargets", "Kill the egg nearest boss. Ignore the other and just DPS him."},
				{"TANK", "Stand on top of each other. Every 4th melee attack will shred the offtank. Very heavy hitting boss."}, {"HEALER", "Focus heal debuff targets. Putrid Paroxysm is especially painful."},
				{"HEALER", "ALL healers must watch the tanks. Use your external cooldowns."}}, -- Fetid Devourer (Corruption Corpuscle)
				
				
	-- Zek'Voz
	[134445] = {{"Important", "Move out of raid with eyebeam. Use mobility cooldowns. It's very quick, and very painful."}, {"Important", "Run out of raid with Rolling Deceit. It drops a cloud that spawns an add when stood in."},
				{"Important", "Surging Darkness deals damage in three consecutive circles. Move to the non-dark area. It's slow. Don't die to it."}, {"Interrupts", "Interrupt(!): Void Bolt (Void Weavers), Psionic Blast (MC'd players)"},
				{"DAMAGE", "P3 (30%): Have best DPS catch orbs of Corruption for big damage increase. Interrupt and kill them when they get MC'd."}, {"TANK", "Tank swap after every Might of the Void combo. It reduces healing and hits hard."},
				{"HEALER", "Healing CD: Surging Darkness, or through the fight for efficiency. There's moderate persistent ticking damage."}}, -- Zek'voz, Herald of N'zoth
		[135824] = {{"Important", "Move out of raid with eyebeam. Use mobility cooldowns. It's very quick, and very painful."}, {"Important", "Run out of raid with Rolling Deceit. It drops a cloud that spawns an add when stood in."},
				{"Important", "Surging Darkness deals damage in three consecutive circles. Move to the non-dark area. It's slow. Don't die to it."}, {"Interrupts", "Interrupt(!): Void Bolt (Void Weavers), Psionic Blast (MC'd players)"},
				{"DAMAGE", "P3 (30%): Have best DPS catch orbs of Corruption for big damage increase. Interrupt and kill them when they get MC'd."}, {"TANK", "Tank swap after Might of the Void combo. Reduces healing, hits hard."},
				{"HEALER", "Healing CD: Surging Darkness, or through the fight for efficiency. There's moderate persistent ticking damage."}}, -- Zek'voz, Herald of N'zoth (Nerubian Voidweaver)	
		
				
	-- Vectis
	[134442] = {{"Important", "Two stack points. Raid moves from one to the other on Gestate cast."}, {"Important", "Move out of stack point if 8+ Lingering Infection stacks to stop yourself getting more."},
				{"Important", "P2 (boss in pool): Dodge the big red waves. They add debuff stacks and are 100% avoidable."}, {"Important", "P2: Have one person in each big circle to soak Plague Bombs."},
				{"PriorityTargets", "Priority Target: Plague Amalgam"},
				{"TANK", "Tank swap at 4+ Evolving Affliction stacks."}, {"HEALER", "Healing CDs: Contagion (Big AoE). Heal off any Immosuppression absorbs"}}, -- Vectis
		[135016] = {{"Important", "Two stack points. Raid moves from one to the other on Gestate cast."}, {"Important", "Move out of stack point if 8+ Lingering Infection stacks to stop yourself getting more."},
				{"Important", "P2 (boss in pool): Dodge the big red waves. They add debuff stacks and are 100% avoidable."}, {"Important", "P2: Have one person in each big circle to soak Plague Bombs."},
				{"PriorityTargets", "Priority Target: Plague Amalgam"},
				{"TANK", "Tank swap at 4+ Evolving Affliction stacks."}, {"HEALER", "Healing CDs: Contagion (Big AoE). Heal off any Immosuppression absorbs"}}, -- Vectis (Plague Amalgam)			
				
				
				
	-- Zul, Reborn
	[138967] = {{"Important", "(H)One player soaks each pool of darkness. They'll need spot heals."}, {"Important", "Run far from the raid with the Dark Revelations debuff."},
				{"Important", "Entire fight is a DPS check and you'll get a stacking DoT on you in P2 based on how long the fight has been going."}, {"PriorityTargets", "Priority Target: Hexer > Crusher > Crawgs."},
				{"Important", "Minions of Zul need to be offensively purged or killed. They'll fear the raid if they reach."}, 
				{"Interrupts", "Interrupt (Hexer): Bloodshard (big burst on lowest damage player)"}, {"TANK", "P1: Face Crusher away from raid at 100 energy and (H) tank hexers away from other hexers"},
				{"TANK", "P2: Face away from raid. Tank swap when Rupturing Blood goes out and run debuff out of raid."}, {"HEALER", "Healing CDs: Dark Revelation but have them all up for P2. HEAVY AOE DAMAGE. Don't overlap CDs."}
				}, -- Zul, Reborn
		[139051] = {{"Important", "(H)One player soaks each pool of darkness. They'll need spot heals."}, {"Important", "Run far from the raid with the Dark Revelations debuff."},
				{"Important", "Entire fight is a DPS check and you'll get a stacking DoT on you in P2 based on how long the fight has been going."}, {"PriorityTargets", "Priority Target: Hexer > Crusher > Crawgs."},
				{"Important", "Minions of Zul need to be offensively purged or killed. They'll fear the raid if they reach."}, 
				{"Interrupts", "Interrupt (Hexer): Bloodshard (big burst on lowest damage player)"}, {"TANK", "P1: Face Crusher away from raid at 100 energy and (H) tank hexers away from other hexers"},
				{"TANK", "P2: Face away from raid. Tank swap when Rupturing Blood goes out and run debuff out of raid."}, {"HEALER", "Healing CDs: Dark Revelation but have them all up for P2. HEAVY AOE DAMAGE. Don't overlap CDs."}
				}, -- Zul, Reborn (Nazmani Crusher)
		[139057] = {{"Important", "(H)One player soaks each pool of darkness. They'll need spot heals."}, {"Important", "Run far from the raid with the Dark Revelations debuff."},
				{"Important", "Entire fight is a DPS check and you'll get a stacking DoT on you in P2 based on how long the fight has been going."}, {"PriorityTargets", "Priority Target: Hexer > Crusher > Crawgs."},
				{"Important", "Minions of Zul need to be offensively purged or killed. They'll fear the raid if they reach."}, 
				{"Interrupts", "Interrupt (Hexer): Bloodshard (big burst on lowest damage player)"}, {"TANK", "P1: Face Crusher away from raid at 100 energy and (H) tank hexers away from other hexers"},
				{"TANK", "P2: Face away from raid. Tank swap when Rupturing Blood goes out and run debuff out of raid."}, {"HEALER", "Healing CDs: Dark Revelation but have them all up for P2. HEAVY AOE DAMAGE. Don't overlap CDs."}
				}, -- Zul, Reborn (Hexer)
		[139059] = {{"Important", "(H)One player soaks each pool of darkness. They'll need spot heals."}, {"Important", "Run far from the raid with the Dark Revelations debuff."},
				{"Important", "Entire fight is a DPS check and you'll get a stacking DoT on you in P2 based on how long the fight has been going."}, {"PriorityTargets", "Priority Target: Hexer > Crusher > Crawgs."},
				{"Important", "Minions of Zul need to be offensively purged or killed. They'll fear the raid if they reach."}, 
				{"Interrupts", "Interrupt (Hexer): Bloodshard (big burst on lowest damage player)"}, {"TANK", "P1: Face Crusher away from raid at 100 energy and (H) tank hexers away from other hexers"},
				{"TANK", "P2: Face away from raid. Tank swap when Rupturing Blood goes out and run debuff out of raid."}, {"HEALER", "Healing CDs: Dark Revelation but have them all up for P2. HEAVY AOE DAMAGE. Don't overlap CDs."}
				}, -- Zul, Reborn (Crawg)	
				
				
	-- Mythrax
	[134546] = {{"Important", "Stacking DoT through fight that also reduces max HP. Run over orbs to reduce stacks. Tanks get priority. Lust at 20% (H)."}, {"Important", "Dodge: Obliteration Blast, stay spread 5+ yards"},
				{"Important", "Use knockbacks or light damage to knock allies out of orbs. Raidwide AoE when they're released."}, {"Important", "Run out with Imminent Ruin. Run far."},
				{"Important", "P2 (cast on a timer): Boss immune to damage. Will cast giant beams at random players. Watch where he's facing. Don't be there."},
				{"Interrupts", "Interrupt: Void Volley (Destroyers), Mind Flay (Visions)"}, {"PriortyTargets", "Priority Target: Visions of Madness > Destroyers"},
				{"TANK", "Tank swap after Essence Shear. P2: Tank destroyers away from each other and face away from raid."}, {"HEALER", "Healing CDs: Imminent Ruin. Conserve mana in P2."}}, -- Mythrax the Unraveler
		[139381] = {{"Important", "Stacking DoT through fight that also reduces max HP. Run over orbs to reduce stacks. Tanks get priority. Lust at 20% (H)."}, {"Important", "Dodge: Obliteration Blast, stay spread 5+ yards"},
				{"Important", "Use knockbacks or light damage to knock allies out of orbs. Raidwide AoE when they're released."}, {"Important", "Run out with Imminent Ruin. Run far."},
				{"Important", "P2 (cast on a timer): Boss immune to damage. Will cast giant beams at random players. Watch where he's facing. Don't be there."},
				{"Interrupts", "Interrupt: Void Volley (Destroyers), Mind Flay (Visions)"}, {"PriortyTargets", "Priority Target: Visions of Madness > Destroyers"},
				{"TANK", "Tank swap after Essence Shear. P2: Tank destroyers away from each other and face away from raid."}, {"HEALER", "Healing CDs: Imminent Ruin. Conserve mana in P2."}}, -- Mythrax the Unraveler
		[139487] = {{"Important", "Stacking DoT through fight that also reduces max HP. Run over orbs to reduce stacks. Tanks get priority. Lust at 20% (H)."}, {"Important", "Dodge: Obliteration Blast, stay spread 5+ yards"},
				{"Important", "Use knockbacks or light damage to knock allies out of orbs. Raidwide AoE when they're released."}, {"Important", "Run out with Imminent Ruin. Run far."},
				{"Important", "P2 (cast on a timer): Boss immune to damage. Will cast giant beams at random players. Watch where he's facing. Don't be there."},
				{"Interrupts", "Interrupt: Void Volley (Destroyers), Mind Flay (Visions)"}, {"PriortyTargets", "Priority Target: Visions of Madness > Destroyers"},
				{"TANK", "Tank swap after Essence Shear. P2: Tank destroyers away from each other and face away from raid."}, {"HEALER", "Healing CDs: Imminent Ruin. Conserve mana in P2."}}, -- Mythrax the Unraveler				
	
	
	-- G'Huun
	[132998] = {{"Important", "When orbs spawn up the side have 2-3 players throw it between them up the ramp to dunk it in the machine at the end."},
				{"Important", "Run out: Explosive Corruption. Drops a patch and spawns balls."}, {"Important", "Stack in Blood Feast circle to remove Putrid Blood debuff."},
				{"Important", "P3 (20%): Dodge collapsing ceiling, face away from boss during Gaze or you'll get feared."}, {"PriorityTargets", "Priority Targets: Tendril > Terror > Young"},
				{"Interrupts", "Interrupt: Torment (Terror), Decaying Eruption (Tendril)"},
				{"TANK", "Tank Dark Young near other adds during Dark Bargain cast."},
				{"TANK", "P2: Tank Swap when Corruption Bite stacks too high."}, {"HEALER", "Healing CDs: Reorigination Blast. Ticks four times in 24 seconds. Use as they come up in P3."}}, -- G'huun
		[138531] = {{"Important", "When orbs spawn up the side have 2-3 players throw it between them up the ramp to dunk it in the machine at the end."},
				{"Important", "Run out: Explosive Corruption. Drops a patch and spawns balls."}, {"Important", "Stack in Blood Feast circle to remove Putrid Blood debuff."},
				{"Important", "P3 (20%): Dodge collapsing ceiling, face away from boss during Gaze or you'll get feared."}, {"PriorityTargets", "Priority Targets: Tendril > Terror > Young"},
				{"Interrupts", "Interrupt: Torment (Terror), Decaying Eruption (Tendril)"},
				{"TANK", "Tank Dark Young near other adds during Dark Bargain cast."},
				{"TANK", "P2: Tank Swap when Corruption Bite stacks too high."}, {"HEALER", "Healing CDs: Reorigination Blast. Ticks four times in 24 seconds. Use as they come up in P3."}}, -- G'huun (Cyclopean Terror)
		[138529] = {{"Important", "When orbs spawn up the side have 2-3 players throw it between them up the ramp to dunk it in the machine at the end."},
				{"Important", "Run out: Explosive Corruption. Drops a patch and spawns balls."}, {"Important", "Stack in Blood Feast circle to remove Putrid Blood debuff."},
				{"Important", "P3 (20%): Dodge collapsing ceiling, face away from boss during Gaze or you'll get feared."}, {"PriorityTargets", "Priority Targets: Tendril > Terror > Young"},
				{"Interrupts", "Interrupt: Torment (Terror), Decaying Eruption (Tendril)"},
				{"TANK", "Tank Dark Young near other adds during Dark Bargain cast."},
				{"TANK", "P2: Tank Swap when Corruption Bite stacks too high."}, {"HEALER", "Healing CDs: Reorigination Blast. Ticks four times in 24 seconds. Use as they come up in P3."}}, -- G'huun (Dark Young)
		[134010] = {{"Important", "When orbs spawn up the side have 2-3 players throw it between them up the ramp to dunk it in the machine at the end."},
				{"Important", "Run out: Explosive Corruption. Drops a patch and spawns balls."}, {"Important", "Stack in Blood Feast circle to remove Putrid Blood debuff."},
				{"Important", "P3 (20%): Dodge collapsing ceiling, face away from boss during Gaze or you'll get feared."}, {"PriorityTargets", "Priority Targets: Tendril > Terror > Young"},
				{"Interrupts", "Interrupt: Torment (Terror), Decaying Eruption (Tendril)"},
				{"TANK", "Tank Dark Young near other adds during Dark Bargain cast."},
				{"TANK", "P2: Tank Swap when Corruption Bite stacks too high."}, {"HEALER", "Healing CDs: Reorigination Blast. Ticks four times in 24 seconds. Use as they come up in P3."}}, -- G'huun (Gibbering Horror)
				
	
	----- Ataldazar -----
	
	-- Trash toward Priestess
	[122971] = {{"Important", "Ranged players should stay spread 8 yards to avoid his charge hitting more than one player"}, {"Important", "Enrage: Dispel or Kite away during Fanatic's Rage"},
				{"Advanced", "The charge can be avoided completely with blinks / or sprints (stand as far away as possible)"}}, -- Dazar'ai Juggernaut
	[127799] = {{"Important", "Minor tank damage. Not dangerous."}}, -- Dazar'ai Honor Guard
	[127757] = {{"PriorityTargets", "Priority Target"}, {"Important", "MUST kill the reanimation totem first."}, {"Important", "Will pulse HEAVY AoE to the party after totem is dead. Kill quickly."}}, -- Reanimated Honor Guard
	[122973] = {{"Interrupts", "Interrupt(!): Bwonsamdi's Mantle (big CC immunity bubble)"}, {"Interrupts", "Interrupt: Mending Word (medium heal)"}, 
				{"TANK", "If they get a bubble off then you'll need to drag all of the mobs out of it."}}, -- Dazar'ai Confessor
	[122972] = {{"Interrupts", "Interrupt(!!): Fiery Enchant (buffs a nearby Juggernaut to throw fire)"}, 
				{"Important", "Will also cast Wild Fire (dmg + DoT) on random players but this is a less important interrupt"}}, -- Dazar'ai Augur
	[122984] = {{"PriorityTargets", "Priority Target: will heal and gain damage every time a nearby mob dies"}, {"Defensives", "Defensive: Soul Burn (Heavy DoT on one player)"}}, -- Dazar'ai Colossus
	[132126] = {{"Important", "Not dangerous. Stand in blood pools before transfusion to kill them more quickly"}}, -- Gilded Priestess
	
	-- Trash toward Vol'kaal
	[128435] = {{"Important", "Will jump to random allies and deal damage in a small AoE"}, {"Important", "Stay grouped but with a 3yd gap between each player."}}, -- Toxic Saurid
	[128434] = {{"Interrupts", "Interrupt(!!): Terrifying Screech (long AoE fear)"}}, -- Feasting Skyscreamer
	[128455] = {{"Important", "Skippable! Just walk carefully around the edge of the platform."}, {"Important", "Will charge a random player. Other allies should stand clear so only one is hit"}}, -- T'lonja
	[129552] = {{"Important", "Skippable! Just walk carefully around the edge of the platform."}}, -- Monzumi
	[129553] = {{"Important", "Skippable! Just walk carefully around the edge of the platform."}, {"Interrupts", "Interrupt or Purge: Dino Might (medium HoT)"}}, -- Dinomancer Kish'o
	[122969] = {{"Interrupts", "Interrupt or decurse: Unstable Hex (long CC)"}, {"Important", "The Hex spreads to allies within 8 yards when dispelled. Give them time to walk out."}}, -- Zanchuli Witch-Doctor
	[127879] = {{"Important", "Channels a big damage reduction shield that protects nearby enemies"}, {"Important", "Knockbacks are key here because you can knock his shield away from the rest of the pack"},
				{"Important", "Will Shield Bash nearby enemies if tank isn't in range. This really hurts so keep distance."}}, -- Shieldbearer of Zul
	[135989] = {{"Important", "Channels a big damage reduction shield that protects nearby enemies"}, {"Important", "Knockbacks are key here because you can knock his shield away from the rest of the pack"},
				{"Important", "Will Shield Bash nearby enemies if tank isn't in range. This really hurts so keep distance."}}, -- Shieldbearer of Zul
	[122970] = {{"Important", "Start stealthed and will stun you if they get the jump on you. Let the tank lead."}, {"Important", "Heavy tank damage. Particularly during Venonfang Strike (dispellable poison)"}, 
				{"Fluff", "The mob is stealthed so by the time you read this you might already be dead..."}}, -- Shadowblade Stalker
	
	-- Bosses
	[122967] = {{"Important", "Stand in the blood pools before Transfusion is cast"}, {"Important", "The debuff lasts 15 seconds so you can grab it early"},
				{"PriorityTargets", "Priority Target (or CC): Spirit of Gold (eats blood pools)"}, {"HEALER", "Contribute DPS and keep the tank alive. Very easy fight."}}, -- Priestess Alun'za
		[131009] = {{"Important", "Stand in the blood pools before Transfusion is cast"}, {"Important", "The debuff lasts 15 seconds so you can grab it early"},
				{"PriorityTargets", "Priority Target (or CC): Spirit of Gold (eats blood pools)"}, {"HEALER", "Contribute DPS and keep the tank alive. Very easy fight."}}, -- Priestess Alun'za (Spirit of Gold)
				
	[122965] = {{"Important", "Totems first. Boss second. Totems MUST die within 7 seconds of each other."}, {"Important", "Consider assigning one DPS to each totem."},
				{"Important", "Boss will instantly heal until totems are dead so don't multi-DoT him."}, {"HEALER", "Heavy ticking damage. Be efficient, use your cooldowns regularly."},
				{"HEALER", "The damage tends to be heavier while the totems are up so it's ok if you use more mana / CD's there."}}, -- Vol'kaal
	[122963] = {{"Important", "Don't stand on piles of bones"}, {"Important", "Line of Sight: Terrifying Visage"}, {"Important", "Tank the boss up against a pillar on the side of the room. You can use them for easy LoS."},
				{"Important", "Run from: Pursuit (though currently undertuned)"}}, -- Rezan
	[122968] = {{"Important", "Put down a raid marker 40 yards from the boss. During Soulrend, DPS / Healers stack on this point."}, {"Important", "This lets you stun and AoE down the adds that spawn."},
				{"Important", "There's plenty on the floor to dance around. It all hurts."}, {"HEALER", "Healing CD: Soulrend. Otherwise spot heal anyone who stands in spiders."}}, -- Yazma
	
	
	
	--- Freehold
	-- Trash toward Skycap'n Kragg
	[128551] = {{"Important", "Moderate tank damage."}, {"DRUID", "Soothe: Beastial Wrath (50% dmg buff)"}, {"HUNTER", "Tranq Shot: Beastial Wrath (50% dmg buff)"}}, -- Irontide Mastiff
	[129788] = {{"Important", "Moderate tank damage."}, {"Interrupts", "Interrupt (or purge): Healing Balm (medium HoT)"}, {"HEALER", "Dispel: Infected Wound (Disease, -healing taken)"}}, -- Irontide Bonesaw
	[129602] = {{"Important", "VERY annoying mob. Frontal cleave (tank can dodge after cast starts)"}, {"Important", "Will throw the tank but no longer drops threat. Pull one at a time if possible."}}, -- Irontide Enforcer
	[126928] = {{"Important", "Moderate tank damage."}, {"HEALER", "Dispel: Poisoning Strike (Poison, DoT, wait until 2 stacks)"}}, -- Irontide Corsair
	[126918] = {{"Important", "Move out of the red swirls. They burn. Don't burn."}, {"TANK", "These don't really move but still have threat table. Tank everything on top of them."}}, -- Irontide Crackshot
	[129598] = {{"Important", "Why are you killing the poor mules!?"}, {"Important", "No notable mechanics but still... why!?"}},
	
	-- The Village	
	[130522] = {{"Important", "Mostly harmless. Pull as few of them as you can."}}, -- Freehold Shipmate (Neutral)
	[130521] = {{"Important", "Mostly harmless. Pull as few of them as you can."}}, -- Freehold Deckhand (Neutral)
	[127124] = {{"Important", "Mostly harmless. Pull as few of them as you can."}}, -- Freehold Barhand (Neutral)
	[129526] = {{"Important", "Mostly harmless. Pull as few of them as you can."}}, -- Bilge Rat Swabby (Neutral)	
	[130024] = {{"Important", "Stacks healing debuff on tank. Pull out your AoE CC here."}}, -- Soggy Shiprat
	[127111] = {{"Interrupts", "Interrupt or Dodge: Sea Spout (conjures dodgeable blue swirls everywhere)"}}, -- Irontide Oarsman
	[130400] = {{"Important", "Two abilities to dodge. Boulder toss is a grey swirl that will stun you (if you live)."}, {"Important", "Ground Shatter is a 9 yard AoE around him that you'll move out of."}}, -- Irontide Crusher
	[130404] = {{"Important", "Will lay traps around the area. Standing in one roots you and deals very heavy damage"}}, -- Vermin Trapper
	[129527] = {{"Important", ""}}, -- Bilge Rat Buccaneer
	[129600] = {{"Important", ""}}, -- Bilge Rat Brinescale
	[129550] = {{"Important", "Will jump to random players."}, {"Important", "Don't stand 50 yards away so they stay in AoE (looking at you, Hunters)"}, {"HEALER", "Dispel: Plague Step (Disease, small DoT & -healing taken"}}, -- Bilge Rat Padfoot
	[129548] = {{"Important", "Have a minor AoE slow but otherwise harmless"}}, -- Blacktooth Brute
	[129529] = {{"Important", "Fixates random allies. The scrapper should be kited or you should pop a major defensive."}, {"DRUID", "Soothe: Blind Rage (yes, you can stop the fixate. Soothe is god.)"},
				{"HUNTER", "Tranq Shot: Blind Rage (yes, you can stop the fixate.)"}}, -- Blacktooth Scrapper
	[129547] = {{"Interrupts", "Interrupt(!): Shattering Bellow (AoE damage, spell interrupt)"}, {"Important", "Bellow only has a 30 yard range so it doesn't hurt to stand back if you're a caster."}}, -- Blacktooth Knuckleduster
	[129599] = {{"Important", "Has a bouncing blade. Stand 8 yards apart to minimize bouncing."}}, -- Cutwater Knife Juggler
	[129601] = {{"Important", "Will drag random ranged players into him. Consider using a defensive."}, {"Important", "The real danger here is that you get dragged into the Crushers abilities."}}, -- Cutwater Harpooner
	[129559] = {{"Important", ""}}, -- Cutwater Duelist	
		
	[135978] = {{"Important", ""}}, -- Bilge Rat Grog Jerk (Allied - Hands out drinks)
	[135353] = {{"Important", ""}}, -- Veteran Man O' Warden (World Quest mob)
	[130090] = {{"Important", ""}}, -- Gukguk "The Motivator" (Allied)
	
	-- Path to Sweete
	[130012] = {{"Interrupts", "Interrupt: Painful Motivation (45% dmg buff)"}, {"Important", "The buff also deals heavy damage to the mobs. The risk is up to you."}}, -- Irontide Ravager
	[126919] = {{"Interrupts", "Interrupt: Thundering Squall (moderate 12s 10yrd AoE)"}, {"Important", "You can walk out of this but your melee will lose damage."}}, -- Irontide Stormcaller
	[130011] = {{"Important", "Frontal Cleave (Blade Barrage, tank can dodge after cast start)"}}, -- Irontide Buccaneer
	[127106] = {{"Important", "Heavy tank damage."}, {"HEALER", "Dispel(!): Oiled Blade (Magic, 75% healing reduction)"}}, -- Irontide Officer
		
	-- Bosses
	[126832] = {{"Important", "Phase 1 (above 75% HP): Just dodge the brown charge swirl."}, {"Interrupts", "Interrupt: Revitalizing Brew (HoT). You can drink it off the floor after you interrupt it."},
				{"Important", "Spread around the boss. His powder shot deals damage in a big cone in a random players direction."}, 
				{"Important", "Big bird will swoop through the arena dealing heavy dmg. Watch what direction he's facing."}}, -- Skycap'n Kragg
	[126845] = {{"Important", "Don't fight all three at once! You need to complete a mini game to remove one from the fight."}, {"Important", "Mini-game rotates weekly. Find the dog, drink with vulperas or beat up the knuckledusters."},
				{"Important", "Raoul: Throws barrels on allies heads. Destroy them (barrel, not player). Dodge swirls."}, {"Important", "Eudora: Hits random allies, then casts big series of cones across arena."},
				{"Important", "Jolly: Dodge spinning blades. Watch out for boss charge."}, {"Important", "Honestly this fight has way too many mechanics. Check website soon for more information."}}, -- CoC: Captain Jolly
	[126847] = {{"Important", "Don't fight all three at once! You need to complete a mini game to remove one from the fight."}, {"Important", "Mini-game rotates weekly. Find the dog, drink with vulperas or beat up the knuckledusters."},
				{"Important", "Raoul: Throws barrels on allies heads. Destroy them (barrel, not player). Dodge swirls."}, {"Important", "Eudora: Hits random allies, then casts big series of cones across arena."},
				{"Important", "Jolly: Dodge spinning blades. Watch out for boss charge."}, {"Important", "Honestly this fight has way too many mechanics. Check website soon for more information."}}, -- CoC: Captain Raoul
	[126848] = {{"Important", "Don't fight all three at once! You need to complete a mini game to remove one from the fight."}, {"Important", "Mini-game rotates weekly. Find the dog, drink with vulperas or beat up the knuckledusters."},
				{"Important", "Raoul: Throws barrels on allies heads. Destroy them (barrel, not player). Dodge swirls."}, {"Important", "Eudora: Hits random allies, then casts big series of cones across arena."},
				{"Important", "Jolly: Dodge spinning blades. Watch out for boss charge."}, {"Important", "Honestly this fight has way too many mechanics. Check website soon for more information."}}, -- CoC: Captain Eudora
	[130099] = {{"Important", "Phase 1 (Pig). You need to click him 5 times as a group."}, {"Important", "Phase 2 (Turtle): Dodge the big shells."}, {"Important", "Phase 3 (Shark Puncher): Move from Sharknado, run from flailing sharks."},
				{"Important", "You need to run the sharks through the chum to slow them down."}, {"TANK", "Go too close to the side of the arena and spectators will throw fruit. Heavy fruit."}}, -- RoB: Lightning (Pig)
	[129699] = {{"Important", "Phase 1 (Pig). You need to click him 5 times as a group."}, {"Important", "Phase 2 (Turtle): Dodge the big shells."}, {"Important", "Phase 3 (Shark Puncher): Move from Sharknado, run from flailing sharks."},
				{"Important", "You need to run the sharks through the chum to slow them down."}, {"TANK", "Go too close to the side of the arena and spectators will throw fruit. Heavy fruit."}}, -- RoB: Ludwig Von Tortollan
	[126969] = {{"Important", "Phase 1 (Pig). You need to click him 5 times as a group."}, {"Important", "Phase 2 (Turtle): Dodge the big shells."}, {"Important", "Phase 3 (Shark Puncher): Move from Sharknado, run from flailing sharks."},
				{"Important", "You need to run the sharks through the chum to slow them down."}, {"TANK", "Go too close to the side of the arena and spectators will throw fruit. Heavy fruit."}}, -- RoB: Trothak (Shark Puncher)
	[126983] = {{"Important", "When marked with Cannon Barrage run from the party. You'll spawn swirls."}, {"Important", "Prioritize the adds that spawn. They'll fixate a player and self-destruct. CC, slow, kill."},
				{"Important", "Sabers spawn near the boss and fly in the direction they're facing. Stand between them."}, {"Important", "At 30% life he'll take and deal double damage. Save defensive, and offensive cooldowns."}, {"Fluff", "Not good looking."}}, -- Harlan Sweete
	
	
	----- King's Rest -----
	-- Trash toward Golden Serpent
	[133935] = {{"Important", "Frontal Cleave ('Suppression Slam', stuns, dodgeable by tank)"}, {"Tank", "MUCH more dangerous with the Released Inhibitors buff (gained a few moments in). Take care."}}, -- Animated Guardian
	[133943] = {{"Important", "Fixates random players and fears if they touch."}, {"Important", "Purge / Mass Dispel / Arcane Torrent will instantly kill them."}}, -- Minion of Zul
	[134158] = {{"Important", "Will block all spells from a direction with Vigilant Defense. Attack from behind."}, {"TANK", "Deals very heavy damage with Ancestral Fury. Cooldown if no soothe available."},
				{"DRUID", "Soothe: Ancestral Fury (+100% dmg)"}, {"HUNTER", "Tranq Shot: Ancestral Fury (+100% dmg)"}}, -- Shadow-Borne Champion
	[134174] = {{"Interrupts", "Interrupt(!!): Shadowbolt Volley (AoE nuke)"}}, -- Shadow-Borne Witch Doctor
	[134157] = {{"Important", "Do your best to avoid the tornados. Melee especially."}}, -- Shadow-Borne Warrior
	
	-- Trash toward Mchima. The traps.
	[137474] = {{"Important", "Bladestorm will wreck your life. Dread it. Run from it. Bladestorm arrives all the same."}}, -- King Timalji
	[137478] = {{"Important", "Will Mind Control a random player. Dispel it. Don't kill them."}}, -- Queen Wasi
	
	[134331] = {{"Important", "Channels HEAVY AoE lightning. Move. Quickly."}, {"Important", "If you stopped to read this you're probably already dead."}}, -- King Rahu'ai
	[137473] = {{"Interrupts", "Stun Interrupt(!): Axe Barrage (Heavy AoE DoT)"}}, -- Guard Captain Atu
	[134251] = {{"Interrupts", "Interrupt or Purge(!!): Induce Regeneration (big ST heal)"}}, -- Seneschal M'bara
	
	[137486] = {{"Important", "Don't stand in the big purple pools. Easy."}}, -- Queen Patlaa
	[137487] = {{"Important", "Will leap to a random player and then spam cleave. Just move away / behind it."}}, -- Skeletal Hunting Raptor
	
	[137484] = {{"Important", "While debuffed you'll poop pools behind you. Don't drop them on friends."}, {"HEALER", "Dispel: Hidden Blade (Poison, causes the green pools)"}}, -- King A'akul
	[137485] = {{"Important", "Will teleport to the purple swirls and AoE. Just move from them."}}, -- Bloodsword Agent
	
	
	[134739] = {{"Important", "Will spin a beam in a clockwise direction. Follow it around so you don't get hit."}, {"Important", "Don't stand in the fire. You've been practicing for 14 years."}}, -- Purification Construct

	-- Trash toward Council. The walkway.
	[135204] = {{"Interrupts", "Interrupt(!): Hex (long adorable CC)"}}, -- Spectral Hex Priest
	[135167] = {{"PriorityTargets", "Priority Target"}, {"Important", "The tank must stay within 10 yards of the mob to soak Severing Blade casts."},
				{"Important", "The mob will leap to random players. Don't stand too far away, and run when he moves."}, {"HEALER", "These deal HEAVY tank damage. It's Ironbark / Sac / Guardian Spirit time."}}, -- Spectral Beserker
	[135231] = {{"Important", "Huge, easily dodgeable ground AoE attack. Ranged should keep distance to minimize movement."}}, -- Spectral Brute
	[135239] = {{"Important", "You must kill the Healing Tide Totem they put down."}}, -- Spectral Witch Doctor
	[135235] = {{"Important", "If targeted by Poison Barrage you must move out of the party."}, {"Important", "A large cone AoE will be fired in your direction and only you must be hit."},
				{"Important", "Also has a knockback. Stand close to the edge at your own peril."}}, -- Spectral Beastmaster
	[135192] = {{"Important", "Wait for it to jump to a target, then run behind it. It's like a cleave."}}, -- Honored Raptor	
	
	-- Trash toward Dazar
	[138489] = {{"Important", "If afflicted with Dark Revelation then run from the group. Deals proximity dmg on expiry."}, {"Important", "On debuff expiry focus fire the add that spawns."},
				{"Important", "One player stands in each dark pool. You'll soak the damage for the party."}}, -- Shadow of Zul
	
	-- Bosses
	[135322] = {{"Important", "When afflicted with Spit Gold you should run to a corner that your party pre-selects."}, {"Important", "You'll drop a pool when it expires. You want all the pools grouped closely together"},
				{"Important", "When Lucre's Call is cast all pools will turn into adds which will run to the boss."}, {"Important", "CC them, slow them, kill them. If they reach the boss he'll get an absorb shield and dmg buff."},
				{"Important", "When the boss is low CC the adds and burn him down."}, {"Important", "Dodge the Serpentine Gust. It's a basic 15yd AoE."}, 
				{"TANK", "You need to pull the boss away from the gold blobs wherever possible. You're first to die if they reach him."},
				{"HEALER", "Spit Gold targets will need heavy spot healing."}, {"HEALER", "You have CC of your own. Time to pull out that utility."}}, -- The Golden Serpent
		[135406] = {{"Important", "When afflicted with Spit Gold you should run to a corner that your party pre-selects."}, {"Important", "You'll drop a pool when it expires. You want all the pools grouped closely together"},
				{"Important", "When Lucre's Call is cast all pools will turn into adds which will run to the boss."}, {"Important", "CC them, slow them, kill them. If they reach the boss he'll get an absorb shield and dmg buff."},
				{"Important", "When the boss is low CC the adds and burn him down."}, {"Important", "Dodge the Serpentine Gust. It's a basic 15yd AoE."}, 
				{"TANK", "You need to pull the boss away from the gold blobs wherever possible. You're first to die if they reach him."},
				{"HEALER", "Spit Gold targets will need heavy spot healing."}, {"HEALER", "You have CC of your own. Time to pull out that utility."}}, -- The Golden Serpent (Animated Gold)
				
	[134993] = {{"Important", "Mchimba here is going to shut one of you in a crypt. Spam action button to shake your coffin."}, {"Important", "The rest of the party finds the wiggling sarcophagus and lets them out"},
				{"Important", "Opening the wrong one spawns a mummy. Interrupt its Wretched Discharge or pay the price."}, {"Important", "There's also plenty of fire around the room to dodge."},
				{"HEALER", "Debuff: Drain Fluids / Dessication. Spam heal the player to above 90% life."}}, -- Mchimba
	[135470] = {{"Important", "Council. Order you fight them in changes week to week. When you kill one they'll cast as spirits."}, {"Important", "Aka'ali: Barrel Through. targeted on player. Rest of party stands between them and boss to soak."},
				{"Important", "Kula: Dodge the spinning axes"}, {"Important", "Zanazal(!!!): Kill the Explosive Totem immediately. Party wipe if cast goes off."}, {"Important", "Totem kill order is otherwise Explosive > Thundering > Torrent > Earthwall"},
				{"TANK", "Aka'ali: Run away from boss after Debilitating Backhand knockback. You take triple dmg during debuff."}, {"HEALER", "Kula: Spot heal the Severing Axe debuff."}}, -- Council of Tribes (Aka'ali the Conqueror)
	[135475] = {{"Important", "Council. Order you fight them in changes week to week. When you kill one they'll cast as spirits."}, {"Important", "Aka'ali: Barrel Through. targeted on player. Rest of party stands between them and boss to soak."},
				{"Important", "Kula: Dodge the spinning axes"}, {"Important", "Zanazal(!!!): Kill the Explosive Totem immediately. Party wipe if cast goes off."}, {"Important", "Totem kill order is otherwise Explosive > Thundering > Torrent > Earthwall"},
				{"TANK", "Aka'ali: Run away from boss after Debilitating Backhand knockback. You take triple dmg during debuff."}, {"HEALER", "Kula: Spot heal the Severing Axe debuff."}}, -- Council of Tribes (Kula the Butcher)
	[135472] = {{"Important", "Council. Order you fight them in changes week to week. When you kill one they'll cast as spirits."}, {"Important", "Aka'ali: Barrel Through. targeted on player. Rest of party stands between them and boss to soak."},
				{"Important", "Kula: Dodge the spinning axes"}, {"Important", "Zanazal(!!!): Kill the Explosive Totem immediately. Party wipe if cast goes off."}, {"Important", "Totem kill order is otherwise Explosive > Thundering > Torrent > Earthwall"},
				{"TANK", "Aka'ali: Run away from boss after Debilitating Backhand knockback. You take triple dmg during debuff."}, {"HEALER", "Kula: Spot heal the Severing Axe debuff."}}, -- Council of Tribes (Zanazal the Wise)
	[136160] = {{"Important", "Busy boss, but most of it isn't threatening."}, {"Important", "Dodge tornados, move away from the raptor after it leaps. Kill Reban quickly when he spawns."},
				{"Important", "Will cast an uninterruptable fear while riding T'zala. Again, not that dangerous."}, {"Important", "At 40% you'll have to dodge patterns of brown spear swirls. Focus on your movement instead of DPS."}}, -- Dazar, The First King
		
	
	----- Siege of Boralus -----
	-- Siege has multiple IDs for a lot of mobs. I'm theorising that they change after your first clear (with the first being tied heavily into the questline) but that needs more testing.
	-- Until then this section is a mess of duplicates. Horde / Alliance also see different mobs leading up to the first boss. Same mechanics, different names / IDs. So there's that too.
	
	-- Path to the Horde / Alliance boss
	[141283] = {{"Important", "Look. This isn't related to the mob, but don't swim in the water. A shark will eat you."}, {"Important", "Frontal Cleave ('Slobber Knocker', tank can dodge)"}}, -- Kul Tiran Halberd
	[141565] = {{"PriorityTargets", "Priority Target"}, {"Important", "Mostly just wreck your tank including a -haste debuff."}}, -- Kul Tiran Footman
	[141284] = {{"Interrupts", "Interrupt or Purge(!!!): Watertight Shell (90% AoE DR, AoE damage on expiration)"}}, -- Kul Tiran Wavetender
	[132532] = {{"Important", "Throws fire at random players. Mostly harmless."}}, -- Kul Tiran Marksman
	[132481] = {{"Important", "Frontal Cleave ('Heavy Slash', stuns, tank can dodge)"}}, -- Kul Tiran Vanguard
	[133990] = {{"Important", "Completely harmless. Your healer could 1 v 1 it."}}, -- Scrimshaw Gutter
	[138002] = {{"Important", "Completely harmless. Your healer could 1 v 1 it."}}, -- Scrimshaw Gutter (2nd ID)
	[129374] = {{"Important", "No notable mechanics."}}, -- Scrimshaw Enforcer
	[143934] = {{"Important", "Dangerous. Don't punch."}}, -- Bloodcrazed Shark
	
	-- Path to Lockwood
	[144071] = {{"Interrupts", "Interrupt or Purge(!!!): Watertight Shell (90% AoE DR, AoE damage on expiration)"}}, -- Irontide Waveshaper (wavetender dup)
	[129370] = {{"Interrupts", "Interrupt or Purge(!!!): Watertight Shell (90% AoE DR, AoE damage on expiration)"}}, -- Irontide Waveshaper (wavetender dup, 2nd ID)
	[138254] = {{"Important", "Throws fire at random players. Mostly harmless."}}, -- Irontide Powdershot (marksman dup)
	[137521] = {{"Important", "Throws fire at random players. Mostly harmless."}}, -- Irontide Powdershot (marksman dup, 2nd ID)
	[129373] = {{"Important", "Will charge random players. Spread out."}}, -- Dockhound Packmaster
	[129640] = {{"PriorityTargets", "Priority Target"}, {"Important", "The hound and packmaster get +125% dmg while together so kill the dog quickly."}}, -- Snarling Dockhound
	[129371] = {{"Important", "Watch for the swirl he'll mark on the ground. He's apparently a stealthy little shit."}, {"Important", "Frontal Cleave ('Singing Steel', tank can dodge)"}}, -- Riptide Shredder
	[129369] = {{"Important", "Has an AoE attack called Savage Tempest. Step away from the mob at that time."}, {"Important", "Will hook random players and there's nothing you can do about it."}}, -- Irontide Raider
	[129372] = {{"Important", "Spread 5 yards and dodge any Burning Tar patches."}}, -- Blacktar Bomber
	[138247] = {{"PriorityTargets", "Stacks a curse on the tank. Dispel it, or focus this mob first."}}, -- Irontide Marauder
	[128969] = {{"Important", "Will focus a random player and charge toward them. All players must dodge this."}, {"Important", "Once fixated he won't follow the player, so even they can avoid it."},
				{"Important", "Will cast Bolstering Shout (DR buff to nearby allies). Try and tank him away from the others where possible."}}, -- Ashvane Commander
	[138255] = {{"Important", "Keep her rooted or slowed to stop her leaping around the room."}, {"Important", "A player will get a Sighted Artillery debuff. Their location is hit with missiles every 1.5s"},
				{"Important", "These missiles also damage trash. Use wisely and don't die."}}, -- Ashvane Spotter
	[138464] = {{"Important", "Frontal Cleave ('Crimson Swipe')"}}, -- Ashvane Deckhand
	[135258] = {{"Important", "Completely harmless. Your grandma could 1 v 1 it."}}, -- Irontide Marauder
	
	-- Path to Darkfathom
	[129366] = {{"Important", "D-don't walk into the bananas."}}, -- Bilge Rat Buccaneer
	[135241] = {{"Important", "Frontal Cleave ('Viscous Slobber', tank can't dodge)"}}, -- Bilge Rat Pillager
	[135245] = {{"Important", "Frontal Cleave ('Crushing Slam', stuns, tank CAN dodge)"}, {"Important", "Terrifying Roar is a 30yd AoE Fear. Ranged players should stand at max distance."}}, -- Bilge Rat Demolisher
	[129367] = {{"Interrupts", "Interrupt(!): Revitalizing Mist (Big ST heal)"}, {"Interrupts", "Interrupt or Dispel(!): Choking Waters (DoT, silence)"}}, -- Bilge Rat Tempest
	[137511] = {{"Important", "Moderate tank threat. Stacks -healing debuff."}, {"HEALER", "Dispel: Rotting Wounds (Disease, -healing, stacks)"}}, -- Bilge Rat Cutthroat
	
	
	-- Bosses
	[144158] = {{"Important", "Focus all adds over the boss until he's low."}, {"Important", "Boss will fixate a ranged player who must kite. He'll hit you with iron pipe if he catches you."},
				{"Important", "Kite the boss into the munitions to stun him."}, {"Important", "Will re-fixate every 20 seconds. He does speed up so if you're going to get hit then pop defensive CD."},
				{"DRUID", "BEAR FORM THE IRON PIPE. Or... just run."}}, -- Sergeant Bainbridge (Horde version of the boss)
	[128649] = {{"Important", "Focus all adds over the boss until he's low."}, {"Important", "Boss will fixate a ranged player who must kite. He'll hit you with iron pipe if he catches you."},
				{"Important", "Kite the boss into the munitions to stun him."}, {"Important", "Will re-fixate every 20 seconds. He does speed up so if you're going to get hit then pop defensive CD."},
				{"DRUID", "BEAR FORM THE IRON PIPE. Or... just run."}}, -- Sergeant Bainbridge (Horde version of the boss)
				
	[144160] = {{"Important", "Focus all adds over the boss until he's low."}, {"Important", "Boss will fixate a ranged player who must kite. He'll hit you with iron pipe if he catches you."},
				{"Important", "Kite the boss into the munitions to stun him."}, {"Important", "Will re-fixate every 20 seconds. He does speed up so if you're going to get hit then pop defensive CD."},
				{"DRUID", "BEAR FORM THE IRON PIPE. Or... just run."}}, -- Chopper Redhook (Alliance version of the boss)
	[128650] = {{"Important", "Focus all adds over the boss until he's low."}, {"Important", "Boss will fixate a ranged player who must kite. He'll hit you with iron pipe if he catches you."},
				{"Important", "Kite the boss into the munitions to stun him."}, {"Important", "Will re-fixate every 20 seconds. He does speed up so if you're going to get hit then pop defensive CD."},
				{"DRUID", "BEAR FORM THE IRON PIPE. Or... just run."}}, -- Chopper Redhook (Alliance version of the boss, second ID for some reason)
				
	[129208] = {{"Important", "Keep her rooted or slowed to prevent her running and Gut Shotting people."}, {"Important", "When boss reaches full energy she'll return to her ship and start firing in patterns."},
				{"Important", "AoE the adds down until a cannoneer drops an ordnance to fire back at the boss."}, {"Important", "This causes her to re-engage and the fight repeats."},
				{"Important", "Frontal Cleave (Deckhands & boss)"}}, -- Dread Captain Lockwood
				
	[128651] = {{"Important", "Will shoot damaging pools in a straight line in front of him. Don't stand in them."}, {"Important", "You'll want to tank him near a corner to minimize space taken up by pools."},
				{"Important", "He'll also target random allies with Break Water which leave identical pools. Watch your position."}, {"Important", "Hide behind the statue during the massive wave. It won't hurt you there."}}, -- Hadal Darkfathom
	[130086] = {{"Important", "Will shoot damaging pools in a straight line in front of him. Don't stand in them."}, {"Important", "You'll want to tank him near a corner to minimize space taken up by pools."},
			{"Important", "He'll also target random allies with Break Water which leave identical pools. Watch your position."}, {"Important", "Hide behind the statue during the massive wave. It won't hurt you there."}}, -- Hadal Darkfathom

	
	[128652] = {{"PriorityTargets", "Target order: Demolishing Terror > Gripping Terror. Target swap whenever a new Demo spawns."}, {"Important", "Demolishers need to be tanked quickly or they'll deal crushing AoE damage to the party."},
				{"Important", "Killing Gripping Terrors will reactive the cannon. Use it to damage the boss."}, {"Important", "After firing cannon move left to the next one. There are three total. The water hurts. Don't swim."},
				{"HEALER", "The cannons line of sight healing. Zzzzzzzzzzzzzz."}, {"HEALER", "Dispel Putrid Waters on cooldown or the 30s debuff will overwhelm you."}}, -- Viq'Goth
		[137614] = {{"PriorityTargets", "Target order: Demolishing Terror > Gripping Terror. Target swap whenever a new Demo spawns."}, {"Important", "Demolishers need to be tanked quickly or they'll deal crushing AoE damage to the party."},
				{"Important", "Killing Gripping Terrors will reactive the cannon. Use it to damage the boss."}, {"Important", "After firing cannon move left to the next one. There are three total. The water hurts. Don't swim."},
				{"HEALER", "The cannons line of sight healing. Zzzzzzzzzzzzzz."}, {"HEALER", "Dispel Putrid Waters on cooldown or the 30s debuff will overwhelm you."}}, -- Viq'Goth (Demolishing Terror)
		[137405] = {{"PriorityTargets", "Target order: Demolishing Terror > Gripping Terror. Target swap whenever a new Demo spawns."}, {"Important", "Demolishers need to be tanked quickly or they'll deal crushing AoE damage to the party."},
				{"Important", "Killing Gripping Terrors will reactive the cannon. Use it to damage the boss."}, {"Important", "After firing cannon move left to the next one. There are three total. The water hurts. Don't swim."},
				{"HEALER", "The cannons line of sight healing. Zzzzzzzzzzzzzz."}, {"HEALER", "Dispel Putrid Waters on cooldown or the 30s debuff will overwhelm you."}}, -- Viq'Goth (Gripping Terror)
	
	
	
	----- Temple of Sethraliss -----
	-- Path to Twin Snakes
	[134600] = {{"Important", "Will cast a slow Power Shot at a player. Hits in a line and all players should avoid when cast starts."}, {"Important", "No threat table. Attacks random players."},
				{"Important", "Don't move with Neurotoxin unless in the way of Power Shot. It'll sleep you."}}, -- Sandswept Marksman
	[134900] = {{"Interrupts", "Interrupt(!): Healing Surge (moderate heal)"}, {"Interrupts", "Will also lightning bolt random players but this is low priority."}}, -- Charged Dustdevil
	[134991] = {{"Important", "Has a 30yd mini-interrupt. Casters must stand further away."}}, -- Sandfury Stonefist
	[134616] = {{"Important", "These interrupt random players. I hate to say this, but you're going to have to kill some puppies."}}, -- Krolusk Pup
	[134602] = {{"Important", "Will blade flurry the tank. Tank can take it but nearby melee should stay 5yds away."}}, -- Shrouded Fang (stealthed)
	[134990] = {{"Interrupts", "Interrupt(!!): Healing Surge (Large ST Heal)"}}, -- Charged Dust Devil
	
	-- Path to Merektha
	[134629] = {{"Important", "Frontal Cleave (Noxious Breath, DoT, tank can dodge after cast start)"}, {"Important", "They also have a SECOND frontal cleave so definitely face away"},
				{"Important", "When Electrified Scales is up you'll take reflect damage. Don't stop DPS, just watch health."}}, -- Scaled Krolusk Rider
	[135562] = {{"HEALER", "Dispel: Cytotoxin (Poison, Stacking DoT, dispel on 2+)"}}, -- Venomous Ophidian
	[135846] = {{"PriorityTargets", "Priority Target"}, {"Important", "Drag mobs out of the sandcloud they drop. It causes everything to miss."}}, -- Sand-Crusted Striker
	[134686] = {{"Important", "Frontal Cleave (Scouring Sand, large area)"}, {"Important", "Frontal Cleave (Noxious Breath, DoT, tank can dodge after cast start)"}}, -- Mature Krolusk
	[139422] = {{"Important", "Frontal Cleave"}, {"Important", "When Electrified Scales is up you'll take reflect damage. Don't stop DPS, just watch health."}}, -- Scaled Krolusk Tamer
	[139425] = {{"Important", "Move out of the lightning circles on the ground"}, {"Important", "Will self destruct when low. Kill quickly or move away from it."},
				{"Interrupts", "Interrupt(!!): Stoneshield Potion (90% damage reduction)"}}, -- Crazed Incubator
	[134364] = {{"Important", "Healer mob. Don't pull too many at once or you'll spend half your timer here."}, {"Interrupts", "Stun Interrupt: Drain (big heal, dmg buff)"}, 
				{"Interrupts", "Interrupt: Greater Healing Potion (Big heal)"},
				{"HEALER", "Dispel: Venomous Spit (Poison, DoT, Stacks)"}}, -- Faithless Tender
	[134390] = {{"PriorityTargets", "Priority Target"}, {"Important", "Drag mobs out of the sandcloud they drop. It causes everything to miss."}}, -- Sand-crusted Striker
	
	-- Path to Galvazzt
	[136076] = {{"Interrupts", "Interrupt or Purge(!!): Accumulate Charge (damage buff)"}, {"Important", "Will deal heavy AoE damage based on number of charges."}}, -- Agitated Nimbus
	[134599] = {{"Important", "Don't stand in the swirls."}, {"Important", "Will Shock random players for medium damage. Save your kicks for the Nimbus."}}, -- Imbued Stormcaller
	[134691] = {{"Important", "Will deal persistent AoE to random allies. Not overly dangerous."}}, -- Static Charged Dervish
	
	-- Path to Avatar
	[139110] = {{"Important", "Engaging him will stop sparks on the bridge so your... less-mobile allies can make it across."}, {"Important", "Dodge the blue swirls."},
				{"Interrupts", "Interrupt: Shock (damage burst on random ally)"}}, -- Spark Channeler
	[135971] = {{"Important", "Exist only to whack the orb carrier. AoE them down, keep as much threat as you can."}, {"Important", "Respawn after a minute or so."}}, -- Faithless Conscript
	[135007] = {{"PriorityTargets", "Priority Target"}, {"Important", "You need to pick up orbs from each side of the room and move them to the big skull door."},
				{"Important", "You can throw the orbs between players with the extra action button and should do so"}, {"Important", "Getting hit by a mob will cause you to drop it and be unable to pick it back up for a bit."},
				{"Important", "This mob will steal the orb back. CC them and focus them down."}, {"Important", "Respawn after a minute or so."}}, -- Orb Guardian
	[136250] = {{"HEALER", "Dispel: Flame Shock (Magic, moderate DoT)"}}, -- Hoodoo Hexer (also involved in boss fight)
	[139949] = {{"Interrupts", "Interrupt: Chain Lightning (AoE dmg)"}, {"HEALER", "Dispel(!!): Snake Charm (Magic, long CC)"}}, -- Plague Doctor
	[139946] = {{"PriorityTargets", "Priority Target"}, {"Important", "Stacks a damage taken increase on the tank. Kite if low DPS."}}, -- Heart Guardian
	
	-- Bosses
	[133944] = {{"Important", "DON'T ATTACK THE ONE WITH LIGHTNING SHIELD"}, {"Important", "Lightly spread around the room to minimize movement"}, {"Important", "Run out: Conduction debuff (8 yard AoE on expiry)"}, 
				{"Important", "If you have 0-1 melee then have a ranged stay within 15yds to split Arcing Blade"},
				{"Defensives", "Defensive: Static Shock (2s cast, used when Aspix at 100 energy)"}}, -- A&A: Aspix
	[133379] = {{"Important", "DON'T ATTACK THE ONE WITH LIGHTNING SHIELD"}, {"Important", "Lightly spread around the room to minimize movement"}, {"Important", "Run out: Conduction debuff (8 yard AoE on expiry)"}, 
				{"Important", "If you have 0-1 melee then have a ranged stay within 15yds to split Arcing Blade"},
				{"Defensives", "Defensive: Static Shock (2s cast, used when Aspix at 100 energy)"}}, -- A&A: Adderis
	[133384] = {{"Important", "LOOK AWAY DURING BLINDING SAND. AHHHHH."}, {"Important", "You can break allies from snakes with stun / incap. Otherwise DPS them out."}, 
				{"Important", "Boss only burrows twice. Even on tyrannical +30."},
				{"Important", "During Boss burrow: DPS the adds and watch out for her dashes across the arena."},
				{"HEALER", "Dispel: Cytotoxin (Posion, heavy DoT)"}}, -- Merektha
	[133389] = {{"Important", "You need to intercept beams so they don't hit boss or he'll gain energy"}, {"Important", "Beams debuff you and deal more damage over time. Take full beam, then switch for next set"},
				{"Defensives", "Defensive: Consume Charge (at 100 energy, heavy AoE)"}, {"HEALER", "Damage gets worse longer the fight lasts. Channel healing into beam soakers"},
				{"HEALER", "Healing CD: Consume Charge. Cast as boss nears 100 energy since party likely isn't topped"}}, -- Galvazzt
	[133392] = {{"Important", "Kill Order: Heart Guardian > Toads > Plague Doctor > Hoodoo Hexer"}, {"Important", "Toads must be kept off your healer. They can be CC'd to buy time"},
				{"HEALER", "After hexers die you can heal boss in increments of 10->40, 40->70, 70-100% health"}, {"HEALER", "You have as MUCH TIME AS YOU NEED. New hexers won't spawn until you heal him 30%."},
				{"HEALER", "That means don't burn all of your mana rushing it. Save your cooldowns for the rest of the fight"}}, -- Avatar of Sethraliss (Friendly)
	
	
	----- Motherlode!! -----
	-- Path to the... coin dude
	[130436] = {{"Important", "Will wang random allies with wrenches. Just heal through it."}}, -- Off-Duty Laborer
	[136470] = {{"PriorityTargets", "Priority Target"}, {"Interrupts", "Interrupt(!): Iced Spritzer (DoT, stun if full channel)"},
				{"Interrupts", "Interrupt(!): Kaja'Cola Refresher (HoT)"}, {"HEALER", "You can dispel the Brain Freeze stun if nobody interrupts."}}, -- Refreshment Vendor
	[136006] = {{"Important", "Harmless."}}, -- Rowdy Reveler
	[130488] = {{"Important", "Must be CC'd if they try and run to a mech or they'll get inside."}, {"Important", "Dodge the red swirls to avoid knockback"}}, -- Mech Jockey
	[136139] = {{"Important", "Energy Shield blocks attacks from one direction. Just move around it."}, {"Important", "Watch out for the Tear Gas clouds. They disorient."}}, -- Mechanized Peacekeeper
	[134232] = {{"Interrupts", "Interrupt(!): Toxic Blades (causes DoT on all attacks)"}, {"Important", "Stun / CC Interrupt(!): Hail of Flechettes (heavy AoE)"},
				{"Important", "The Flechettes have a huge radius so outranging isn't really an option."}}, -- Hired Assassin
	[130435] = {{"Important", "Will charge random allies and stun them. Rude."}, {"Interrupts", "Interrupt: Inhale Vapors (+50% phys dmg)"}, {"DRUID", "Soothe: Inhale Vapors"},
				{"HUNTER", "Tranq Shot: Inhale Vapors"}}, -- Addled Thug
	
	-- Path to the... rock dude
	[130653] = {{"Important", "When sappers get low they'll cast Final Blast. Kill or CC them to prevent the cast or move away from it."},
				{"Important", "The big red swirls hurt. You have five seconds to move from them."}}, -- Wanton Sapper
	[130437] = {{"Important", "Pelt random allies with rocks. Annoying but not dangerous."}}, -- Mine Rat
	[130661] = {{"Interrupts", "Interrupt or Purge(!): Earth Shield (DR + healing when hit)"}}, -- Venture Co. Earthshaper
	[136643] = {{"Important", "Frontal Cleave (Power through)"}}, -- Azerite Extractor
	[136688] = {{"Important", "Moderate tank damage."}}, -- Fanatical Driller
	[130635] = {{"Interrupts", "Interrupt(!!): Furious Quake (Heavy AoE)"}, {"Interrupts", "Interrupt or Purge(!): Tectonic Barrier (DR + interrupt immunity)"}}, -- Stonefury
	[134005] = {{"Important", "Mostly harmless."}}, -- Shalebiter
	[134012] = {{"Important", "During the Cower cast just drag away nearby trash. It's a big DR shield."}, {"Important", "Will deal heavy tank damage when below 20% HP."},
				{"Important", "Kill the Sappers first. This guy isn't too dangerous."}}, -- Taskmaster Askari
	
	-- Path to the boss whose name I can't remember because she dies so quickly
	[133345] = {{"Interrupts", "Interrupt(!!): Transfiguration Serum"}, {"Interrupts", "Interrupt: Blowtorch (frontal cone AoE)"}}, -- Feckless Assistant
	[136934] = {{"Important", "This mob is awful. During Force Cannon you need to rotate around him. Randomly targeted."}, {"Important", "Frontal Cleave (Echo Blade, tank can't dodge, silences)"},
				{"HEALER", "You can dispel the Echo Blade silence debuff that hopefully only the tank got."}}, -- Weapons Tester
	[133432] = {{"Interrupts", "Interrupt or Dispel: Transmute Enemy to Goo (10s Polymorph)"}}, -- Venture Co. Alchemist
	[133430] = {{"PriorityTargets", "Priority Target"}, {"Important", "Watch out for the purple orbs. They heal the mob."}, {"Important", "Purge: Azerite Injection (heal, +dmg)"}, 
				{"HEALER", "Energy Lash targets need heavy spot healing."}}, -- Venture Co. Mastermind
	[133963] = {{"Important", "Mostly harmless but do get stronger over time so clear them quickly."}}, -- Test Subject
	
	-- The part you probably want to invis potion
	[133482] = {{"Important", "These will fixate a player and explode. Kill them quickly or kite them."}}, -- Crawler Mine
	[137029] = {{"Interrupts", "Interrupt: Artillery Barrage (conjures 100 red swirls to dodge)."}}, -- Ordnance Specialist
	[133436] = {{"Important", "Will fixate a target with a red laser. It can be intercepted by standing in it when shot fires."}, {"Important", "The shot does give you a -healing debuff, so take care if the tank soaks it."}}, -- Venture Co. Skyscorcher
	[133463] = {{"Important", "Will rock the tank with Charged Shot. They'll need a defensive."}}, -- Venture Co. War Machine
	[133593] = {{"Interrupts", "Stun Interrupt(!): Repair (heal on the war machine)"}, {"Interrupts", "Interrupt: Overcharge (haste buff on war machine)"}}, -- Expert Tactician
	
	-- Bosses
	[129214] = {{"Important", "Let's play football. The boss will throw balls around the arena."}, {"Important", "You have to click them to kick them toward the boss. You have to aim them."},
				{"Important", "Any that aren't kicked into the boss will explode for big AoE damage."}, {"Important", "Frontal Cleave (Shocking Claw, tank dodgeable after cast starts)"},
				{"TANK", "Try and move the boss away from the coin piles. He'll suck them in for a damage bonus."}}, -- Coin-Operated Crowd Pummeler
	[129227] = {{"Important", "The adds will fixate random targets. They must be kited and killed very quickly."}, {"Important", "Frontal Cleave (Tectonic Smash, tank can dodge after cast start)."},
				{"Important", "Boss will sometimes empower an add, it'll deal and take more damage. Nuke it."}, {"Important", "When the boss casts Resonant Pulse all alive adds must be CC'd."},
				{"HEALER", "Almost all of the damage is in the first minute. Pop your cooldowns immediately."}}, -- Azerokk
	[129231] = {{"Important", "You can use Propellant Blast to push the azerite pools off the platform."}, {"Important", "Other than that, don't stand in pools and this is very easy."},
				{"HEALER", "Dispel: Chemical Burn (DoT)"}}, -- Rixxa Fluxflame
	[129232] = {{"Important", "Homing Missle will target ranged players. Run it from the group."}, {"Important", "Two boomba adds will fly around the arena. They'll fire red swirlies across 3/4 of the platform."},
				{"Important", "You can avoid them by looking up at standing in the quarter they're not facing."}, {"Important", "In P2 all players must stand near the brown rockets (look like closets)"},
				{"Important", "Random player will be targeted and resulting Drill Smash will break the rockets."}, {"Important", "Break them all and boss will return to platform."},
				{"HEALER", "Phase 1 is damage light, phase 2 quite heavy. Save your cooldowns."}}, -- Mogul Razdunk
	
	
	----- The Underrot -----
	-- Path to Elder Leaxa
	[131402] = {{"Important", "Look small but are vicious."}, {"Important", "Stacks HEAVY DoT on the tank and explodes on death."}, 
				{"Important", "Pull as few of these as possible and stagger your kills so your healer can recover."}}, -- Underrot Tick
	[130909] = {{"Important", "Frontal breath in a random allies direction."}, {"Important", "Wait until the cast starts, then make sure you're nowhere near the front of the mob."}}, -- Fetid Maggot
	[131436] = {{"PriorityTargets", "Priority Target"}, {"Important", "Frontal Cleave (Savage Cleave, heavy damage + DoT)"}, {"Important", "Warcry heavily buffs all nearby enemies. It can be soothed / tranq shotted."}, 
				{"Important", "Try and go down whichever path has fewer Blood Matrons"}}, -- Chosen Blood Matron
	[133663] = {{"Important", "Will pelt random allies. Hooked Snare is a DoT. Consider defensives here."}}, -- Fanatical Headhunter
	[131492] = {{"Interrupts", "Interrupt(!!): Dark Reconstitution (big heal)"}, {"Interrupts", "Interrupt or Purge(!): Gift of G'huun (+100% damage, unkillable)"}}, -- Devout Blood Priest
	[133685] = {{"Interrupts", "Interrupt(!!!): Harrowing Despair (BIG AoE)"}, {"Important", "Will also channel on random players. Spread a little so you don't share the damage"}, 
				{"HEALER", "Dark Omen should be on you bars and they'll need some decent healing."}}, -- Befouled Spirit
	
	-- The Crag
	[133835] = {{"Important", "Will fixate a random player. Kite, CC, don't get hit."}, {"Interrupts", "Interrupt: Sonic Screech (AoE damage, interrupts spells)"}}, -- Feral Bloodswarmer
	[133870] = {{"Interrupts", "Interrupt(!!): Decaying Mind (Long CC)"}, {"Important", "If a Decaying Mind goes off it can be cleansed by healing through the healing absorb."},
				{"Important", "It can also be cleansed (disease)"}, {"Important", "If it was targeted on the healer you are likely to wipe. Interrupt it."}}, -- Diseased Lasher
	[133852] = {{"Important", "Drop green pools around them. Can interrupt but low priority."}}, -- Living Rot
	
	-- Path to Sporecaller Zancha
	[133836] = {{"Important", "Will cast Bone Shield, a big absorb on themselves. Try and AoE CC them and burn."}}, -- Reanimated Guardian
	[138338] = {{"Important", "Will cast Bone Shield, a big absorb on themselves. Try and AoE CC them and burn."}}, -- Reanimated Guardian (second ID)
	[138187] = {{"Interrupts", "Interrupt(!!): Death Bolt (AoE dmg + DoT)"}, {"Important", "You really need to interrupt every Death Bolt here."}}, -- Grotesque Horror
	[134284] = {{"Interrupts", "Interrupt: Raise Dead (summons a Guardian)"}, {"Interrupts", "Interrupt or Soothe: Wicked Frenzy (+100% haste)"}}, -- Fallen Deathspeaker
	[133912] = {{"Interrupts", "Interrupt(!!): Withering Curse (+dmg taken, -dmg done)"}, {"Interrupts", "Interrupt(!): Shadowbolt Volley (Medium AoE)"},
				{"Important", "Summons a totem that MUST be killed or run away from within 6 seconds (6yd AoE)."}}, -- Bloodsworn Defiler
	
	-- Path to the Abomination
	[138281] = {{"Important", "Dodge: Maddening Gaze (Long fear, targeted in random players direction)"}, {"Important", "Move away from tentacles when they spawn. They're easy to dodge."}}, -- Faceless Corruptor
	
	
	-- Bosses
	[131318] = {{"Important", "When Leaxa or an add casts Sanguine Feast you must walk away from them"}, {"Important", "Dodge: Creeping Rot (moving ground effect that leaves from boss)"}, 
				{"PriorityTargets", "Priority Target: Blood Effigy"}, {"Interrupts", "Interrupt: Blood Bolt (where possible, ST nuke)"}, 
				{"HEALER", "All boss abilities inflict stacking DoT / healing absorb on target."}}, -- Elder Leaxa
	[131817] = {{"Important", "Larva spawn when boss uses abilities. Stand on them to squish."}, {"Important", "Larva grow into adds if not stood on within 8 seconds"},
				{"Important", "Dodge: Charge (Cast on random target, BIG damage)"}, {"HEALER", "Healing CD: Tantrum (big AoE damage, cast at 100 energy)"}}, -- Cragmaw the Infested
	[131383] = {{"Important", "Every mushroom that explodes leaves a stacking DoT. Avoid taking more than 2 stacks."}, {"Important", "Targeted by Upheaval: stand next to a group of mushrooms then run out of the swirl"}, 
				{"Important", "Run into lone mushrooms to detonate them"}, {"Important", "Boss will explode all mushrooms every ~50s. You must clear all mushrooms beforehand"},
				{"TANK", "Frontal Cleave: It also destroys mushrooms"}, {"HEALER", "Consider saving healing CDs for Boundless Rot since it's big dmg if mushrooms are alive"},
				{"ROGUE", "Immunity: the mushroom debuff. Run into as many as possible"}}, -- Sporecaller Zancha
	[133007] = {{"Important", "Boss gains energy instead of taking damage. At 100 he releases adds."}, {"Important", "Dodge: Floating Spores, Vile Expulsion (Cone targeted at player)"},
				{"Important", "Yellow circle around you? Party stacks in it. Clears your debuffs"}, {"PriorityTargets", "Priority Target: Blood Visage > Boss. Killing Blood Visages damages boss."},
				{"Important", "Spores can be one-shot. Clear any that are getting close."},
				{"HEALER", "Stacking dispellable DoT on entire party. Yellow circle clears it. Dispel newbies that miss circle."}}, -- Unbound Abomination
		[137103] = {{"Important", "Boss gains energy instead of taking damage. At 100 he releases adds."}, {"Important", "Dodge: Floating Spores, Vile Expulsion (Cone targeted at player)"},
				{"Important", "Yellow circle around you? Party stacks in it. Clears your debuffs"}, {"PriorityTargets", "Priority Target: Blood Visage > Boss. Killing Blood Visages damages boss."},
				{"Important", "Spores can be one-shot. Clear any that are getting close."},
				{"HEALER", "Stacking dispellable DoT on entire party. Yellow circle clears it. Dispel newbies that miss circle."}}, -- Unbound Abomination (Blood Visage)
	
	
	
	
	----- Tol Dagor -----
	-- Outside
	[127480] = {{"Important", "Stack a light DoT on the party. Just AoE them down."}}, -- Stinging Parasite
	[127381] = {{"Important", "Will squeeze random players for moderate dmg. Don't pull too many at once."}, {"HEALER", "Make sure you can see the Squeeze debuff on your party frames."},
				{"DRUID", "You can shapeshift out of Squeeze. Nice."}}, -- Silt Crab
	
	
	-- Sewer / Lower Prison
	[127482] = {{"Important", "Will lower the max health of the tank. Don't pull too many at once."}}, -- Sewer Vicejaw
	[130025] = {{"Interrupts", "Interrupt(!!): Debilitating Shout (AoE dmg + dmg dealt reduction"}}, -- Irontide Thug
	[131112] = {{"Important", "Low priority mob. Harmless."}}, -- Cutwater Striker
	[135366] = {{"Important", "Prominent torch chucker. Will give your healer something to dispel but not otherwise dangerous."}, {"HEALER", "Dispel: Torch Strike (Magic, DoT, stacking, dispel at 2+)"}}, -- Blacktooth Arsonist
	[127485] = {{"Important", "Moderate tank damage."}, {"Important", "You can AoE purge (Mass dispel, Arcane Torrent) their Darkstep buff."}}, -- Bilge Rat Looter
	[130582] = {{"Important", ""}}, -- Despondent Scallywag (Neutral)
	[130026] = {{"Interrupts", "Interrupt(!!): Watery Dome (AoE damage reduction)"}}, -- Bilge Rat Seaspeaker
	[135254] = {{"Important", "Harmless."}}, -- Irontide Raider
	[131445] = {{"Important", ""}}, -- Block Warden
	
	-- Upper Prison
	[135699] = {{"Interrupts", "Stun / CC Interrupt: Riot Shield (dmg reduction, spell reflect)"}, {"Important", "Will REFLECT spells during Riot Shield. Ow."}}, -- Ashvane Jailer
	[127486] = {{"Interrupts", "Interrupt(!): Handcuff (Silence, pacify, DoT)"}, {"Interrupts", "Stun / CC Interrupt: Riot Shield (dmg reduction, spell reflect)"}}, -- Ashvane Officer
	[127488] = {{"Important", "Fuselighter will create a swirl under a random player. Dodge. Definitely dodge."}}, -- Ashvane Flamecaster
	[130027] = {{"Important", "Have a threat table but a ranged basic attack."}, {"Important", "Frontal Cleave (Suppression Fire, tank must take, DoT)"}}, -- Ashvane Marine
	[136665] = {{"Important", "Will blow up a barrel when engaged. Don't stand in it."}, {"Important", "Has a threat table but a ranged basic attack."}, 
				{"Important", "Frontal Cleave (Suppression Fire, tank must take, DoT)"}}, -- Ashvane Spotter
	[133972] = {{"Important", "You can get in the cannon to deal HEAVY AoE damage."}, {"Important", "WARNING: FRIENDLY FIRE. THE CANNON ALSO HITS ALLIES."},
				{"Important", "Handle the next few packs by pulling them toward the cannon and then CC'ing in place while cannon kills."},
				{"Fluff", "Up-and-coming super villains can use this opportunity to murder your friends."}}, -- Heavy Cannon (Vehicle, Neutral)
	
	-- Roof
	[127497] = {{"Important", "Lockdown is a slow cast that'll root everyone within 6 yds. Avoid."}, {"TANK", "Consider kiting during the Heavily Armed buff. They'll deal dbl dmg."},
				{"Important", "Drag them toward the cannons. Cannons very buff."}}, -- Ashvane Warden
	[130028] = {{"Important", "Righteous Flames is a slow cast that'll disorient everyone within 6 yrds. Avoid."}, {"Interrupts", "Interrupt(!!): Inner Flames (AoE heal, dmg buff)"}}, -- Ashvane Priest
	
	
	-- Bosses
	[127479] = {{"Important", "When she burrows move away from the upheaval target"}, {"Important", "Avoid: Sand mounds (4s stun)"}, 
				{"Important", "Killing drones gives boss a 4s damage buff. Kill in small bunches on higher keys"}, {"HEALER", "Sandstorm (heavy AoE) hits every 30s. Save healing CD's."},
				{"HEALER", "The tank damage can be heavy, especially below 30%"}, {"DRUID", "Soothe: Enrage (Both when adds die, and when she hits 30% HP."},
				{"HUNTER", "Tranq Shot: Enrage (Both when adds die, and when she hits 30% HP."}}, -- The Sand Queen
	[127484] = {{"Important", "Hide around the corner during Flashing Daggers cast or you will die."}, {"Interrupts", "Interrupt: Howling Fear (long AoE fear)"},
				{"Important", "At 50% boss will run away. Chase while killing prisoner adds."}, {"Important", "As soon as you reach boss interrupt his Motivating Cry"},
				{"Important", "During P2 Bobby will join fight and stun ally. Damage his shield off FIRST then interrupt"}, {"HEALER", "Dispel or heal: Crippling Shiv (Poison, medium DoT)"}}, -- Jes Howlis
	[127490] = {{"Important", "You need to pick up and move barrels out of: Cinderflame (cone on random player) and Ignition (big red circles)"}, {"Important", "Everyone must help. You click to pick up, then use extra action bar to drop."},
				{"Advanced", "You only need to keep a corner clean. Tank in a corner and leave the barrels on other side of room."},
				{"Advanced", "There are two barrels near the door when you come in. Move them into the corridor before the fight begins"}}, -- Knight Captain Valyri
	[127503] = {{"Important", "Tank in the north west corner of the room. Everyone spreads around boss with backs to the small walls"}, {"Important", "This will stop you getting pushed back and minimizes movement"},
				{"Important", "You need to dodge the Cross Ignition. It's marked with black paths along the ground."}, {"Important", "If you move more than a few inches then you'll be stunned and likely die."},
				{"HEALER", "Even with good play this is a bursty high damage fight. Try and keep the party topped up."}, {"HEALER", "The group is close together so make sure you keep group heals like Effloresence down."}}, -- Overseer Korgus
	
	
	
	----- Waycrest Manor -----
	-- Entrance Hall
	[135240] = {{"Important", "Moderate damage casts at random allies. Group them up and AoE CC."}}, -- Soul Essence	
	[131677] = {{"Important", "Frontal Cleave (Marking Cleave, tank can dodge after cast start)"}, {"Interrupts", "Interrupt(!): Etch (ST damage channel)"}}, -- Heartsbane Runeweaver
	
	-- Right Side
	[135234] = {{"Important", "Mostly harmless."}}, -- Diseased Mastiff
	[131849] = {{"Important", "Targets random players."}, {"Important", "Will fire a rocket at a random player. Spread out so only one person gets hit."}}, -- Crazed Marksman
	[131850] = {{"Important", "Will throw out traps. One deals heavy damage, one stuns for 8s."}, {"Important", "You really need to make sure you don't walk into them."},
				{"Interrupts", "Interrupt(!): Serving Serpents (AoE disease DoT)"}}, -- Maddened Survivalist
	[134024] = {{"Important", "Harmless UNLESS it has the Parasitic debuff. If it does it must be burned down or interrupted."}, {"Important", "Successful Infest casts will spawn two more maggots"}}, -- Devouring Maggot
	[134041] = {{"Important", "Mostly harmless."}}, -- Infected Peasant
	[135048] = {{"Important", "Mostly harmless. Maybe even cute?"}}, -- Gorestained Piglet
	[137850] = {{"Important", "Frontal Cleave (Retch)"}, {"Important", "Will leap to furthest ally and deal 5yd AoE DoT. Spread a little."}}, -- Pallid Gorger
	[131586] = {{"Interrupts", "Interrupt: Dinner Bell (AoE 8yd silence)"}}, -- Banquet Steward
	[131847] = {{"Important", "Mostly harmless."}}, -- Waycrest Reveler
	
	-- Left Side
	[131670] = {{"Interrupts", "Interrupt or Purge(!): Grasping Thorns (Stun, DoT)"}}, -- Heartsbane Vinetwister
	[131585] = {{"Important", "Frontal Cleave (Shadow Cleave)"}}, -- Enthralled Guard
	[131587] = {{"Interrupts", "Interrupt or Purge: Spirited Defense (medium DR)"}}, -- Bewitched Captain
	--[131685] = {{"Important", ""}}, -- Runic Disciple
	[131818] = {{"Important", "Try and interrupt Runic Mark but if not then the marked player walks away from the group."}, {"Interrupts", "Interrupt or Purge(!!): Soul Fetish (buffs allies on death)"}}, -- Marked Sister
	--[135049] = {{"Important", ""}}, -- Dreadwing Raven
	[135474] = {{"Interrupts", "Interrupt: Bone Splinter, Drain Essence (both DoTs)"}}, -- Thistle Acolyte
	[135052] = {{"Important", "Creates big green swirl on death. Move."}}, -- Blight Toad
	
	-- Courtyard
	[131669] = {{"Important", "Moderate tank damage."}}, -- Jagged Hound
	[131858] = {{"Important", "Heavy tank damage."}, {"Important", "Explodes into a brown swirl on death. Is as nasty as it sounds. Move."}, 
				{"DRUID", "Soothe: Enrage (+25% dmg)"}, {"HUNTER", "Tranq Shot: Enrage (+25% dmg)"}}, -- Thornguard
	[131666] = {{"Important", "Will conjure roots underneath allies. Don't stand in them."}, 
				{"Interrupts", "Interrupt(!!): Effigy Reconstruction (full AoE heal)"}, {"Interrupts", "Interrupt or Purge(!!): Soul Fetish (buffs allies on death)"},
				{"HEALER", "Dispel or heal: Infested Thorn (Disease, medium DoT)"}}, -- Coven Thornshaper
	[135329] = {{"Important", "Very heavy tank damage during uninterruptable Thorned Barrage cast."}, {"Important", "More browl swirls. Move."}}, -- Matron Bryndle
	
	-- Cellar
	[131819] = {{"Interrupts", "Interrupt or Purge(!!): Soul Fetish (buffs allies on death)"}, {"HEALER", "Dispel: Fragment Soul (DoT, buffs the mob later)"}}, -- Coven Diviner
	[135365] = {{"Important", "Spread with Dread Mark. Your healer will give you $5 later."}, {"Interrupts", "Interrupt(!): Ruinous Volley (AoE nuke)"},
				{"TANK", "Have a defensive ready for Decaying Touch. It increases your dmg taken."}}, -- Matron Alna
	[139269] = {{"Important", "Will leap to furthest player and deal 5yd AoE DoT. Have one player stand out."}}, -- Gloom Horror
	[131812] = {{"Important", "Drag mobs out of any candles the soulcharmer drops. Save the romance for later."}, {"Interrupts", "Interrupt: Soul Volley (AoE nuke)"}}, -- Heartsbane Soulcharmer
	
	-- Bosses
	[131863] = {{"Important", "Dodge: Rotten Expulsion, Tenderize (Cone AoEs)"}, {"Important", "If Wasting Servants get to boss he gets damage buff. Ignore them when boss is low."}, 
				{"Important", "Servants vulnerable to ALL CCs if you need more time"}, {"PriorityTargets", "Priority Target: Wasting Servants > Boss. AoE oozelings."},
				{"HEALER", "Low damage so help DPS adds and triage any rookies that stand in puddles."}}, -- Raal the Gluttenous
	[131667] = {{"PriorityTargets", "Priority Target: Soul Thorns (stuns random player until dead)"}, {"HEALER", "Little red spirits will chase you around. Don't stop moving for long"},
				{"HEALER", "Heavy tank damage until boss is dragged over fire, then heavy party damage"}, {"HEALER", "Healing CDs: Burning Brush (moderate AoE)"},
				{"TANK", "Drag the boss into fire to reset his stacks. Do it whenever possible."}}, -- Soulbound Goliath
	[131824] = {{"Important", "Can only dmg one at a time. Don't multi-DoT. Targetable mob will be bigger."}, {"Important", "Aura of Dread: you MUST keep moving. The active aura rotates."},
				{"Important", "Will periodically MC an ally. Switch DPS to them until broken free."},
				{"DAMAGE", "Aura of Thorns: You'll take damage after every attack. Care."}, {"HEALER", "Very hard fight. Aura of Apathy: 50% healing reduction. Conserve mana."},
				{"HEALER", "Spam Heal: Jagged Nettles debuff (heavy DoT, lasts til target is above 90%.)"}, {"HEALER", "Each boss deals heavy AoE at 100 energy. Track it and top the party before."}}, -- Witches: Sister Selena
	[131825] = {{"Important", "Can only dmg one at a time. Don't multi-DoT. Targetable mob will be bigger."}, {"Important", "Aura of Dread: you MUST keep moving. The active aura rotates."},
				{"Important", "Will periodically MC an ally. Switch DPS to them until broken free."},
				{"DAMAGE", "Aura of Thorns: You'll take damage after every attack. Care."}, {"HEALER", "Very hard fight. Aura of Apathy: 50% healing reduction. Conserve mana."},
				{"HEALER", "Spam Heal: Jagged Nettles debuff (heavy DoT, lasts til target is above 90%.)"}, {"HEALER", "Each boss deals heavy AoE at 100 energy. Track it and top the party before."}}, -- Witches: Sister Briar
	[131823] = {{"Important", "Can only dmg one at a time. Don't multi-DoT. Targetable mob will be bigger."}, {"Important", "Aura of Dread: you MUST keep moving. The active aura rotates."},
				{"Important", "Will periodically MC an ally. Switch DPS to them until broken free."},
				{"DAMAGE", "Aura of Thorns: You'll take damage after every attack. Care."}, {"HEALER", "Very hard fight. Aura of Apathy: 50% healing reduction. Conserve mana."},
				{"HEALER", "Spam Heal: Jagged Nettles debuff (heavy DoT, lasts til target is above 90%.)"}, {"HEALER", "Each boss deals heavy AoE at 100 energy. Track it and top the party before."}}, -- Witches: Sister Malady
		[135052] = {{"Important", ""}}, -- Blight Toad
	[131545] = {{"Important", "Virulent Pathogen debuff (green circle): run it out of the group"}, {"Important", "Run out the debuff, stay out of purple swirls and this is very easy fight"},
				{"Important", "Lady will heal Lord a few times using her own health. No counterplay, just keep DPS'ing"}, {"TANK", "Lady Waycrest will fly over at 10% health. You need to taunt her immediately"},
				{"HEALER", "Don't dispel the disease in most cases. Only lasts 5s and they need to run out"}}, -- L&L: Lady Waycrest
	[131527] = {{"Important", "Virulent Pathogen debuff (green circle): run it out of the group"}, {"Important", "Run out the debuff, stay out of purple swirls and this is very easy fight"},
				{"Important", "Lady will heal Lord a few times using her own health. No counterplay, just keep DPS'ing"}, {"TANK", "Lady Waycrest will fly over at 10% health. You need to taunt her immediately"},
				{"HEALER", "Don't dispel the disease in most cases. Only lasts 5s and they need to run out"}}, -- L&L: Lord Waycrest
	[131864] = {{"Important", "Slavers cast Death Lens. Either kill quickly or interrupt cast with knockbacks / grips."}, {"Important", "Yorrick will drop flasks of fire on the floor. Assign one DPS to pick them up"},
				{"Important", "Kill the adds near the boss and then cast Alchemical Fire when boss casts Dread Essence"}, {"Important", "If you don't then he'll resummon all dead adds."},
				{"HEALER", "Add Death Lens to your frame. They'll need big healing if the cast goes through"}}, -- Gorak Tul	
	
	
	
	
	----- Shrine of the Storm -----
	-- Path to Aqu'sirr
	[136347] = {{"Important", "Mostly harmless. They'll run when low so watch for that."}}, --  Tidesage Initiate
	[134139] = {{"Important", "Annoying mob. CC them where possible and kill them alone."}, {"Important", "Frontal Cleave (Heaving blow, stuns, dodgeable by tank)"},
				{"Interrupts", "Interrupt or Purge: Tidal Surge (+haste +dmg)"}}, -- 	Shrine Templar
	[134137] = {{"Important", "Move out of the blue swirl."}, {"Interrupts", "Interrupt as many Water Blasts as you can but it isn't urgent."}}, -- 	Temple Attendant
	[134173] = {{"Important", "Mostly harmless."}}, -- 	Animated Droplet
	[136186] = {{"Interrupts", "Interrupt(!!): Mending Rapids (Massive heal)"}, {"Important", "Anchor of Binding will toss an anchor at a player. Dodgeable."}}, -- 	Tidesage Spiritualist
	[134144] = {{"Important", "Dangerous mob. Will throw players into the air and deal heavy AoE damage."}, {"Important", "You CAN now Line of Sight the Rising Tides. Healers / DPS are encouraged to."}}, -- 	Living Current
	
	-- Path to Council
	[139800] = {{"Important", "Move from the windy zones and dodge any tornadoes."}, {"Interrupts", "Interrupt: Tempest (spawns high damage dodgeable tornadoes)"}}, -- 	Galecaller Apprentice
	[139799] = {{"Important", "Heavy tank damage. AoE 8yd cleave (Whirling Slam, dodgeable)"}, {"TANK", "Kite during the Blessing of Ironsides buff. Mob deals dbl dmg but moves slow."}}, -- 	Ironhull Apprentice
	[134150] = {{"Important", "Ok he'll put a ward down and everyone should stand in it at all times."}, {"Important", "He'll cast Carve Flesh on a random party member."},
				{"Important", "If you're in the ward you'll take -75% dmg and live. If you're 50 yards away you're dead."}, {"TANK", "You want to stand in the ward yourself, while keeping the miniboss out of it."},
				{"HEALER", "Make sure you can see Carve Flesh on your frames. Try and save idiot DPS that isn't in ward."}}, -- 	Runecarver Sorn
	[136249] = {{"Important", "BFA's Mariner. Will channel heavy AoE damage on party."}, {"HEALER", "Make sure you have healing CD's ready. It's predictable but heavy damage."}, 
				{"HEALER", "Dispel: Electrifying Shock (Medium DoT)"}}, -- 	Guardian Elemental
	[136214] = {{"Important", "Jump in the Swiftness Wards she summons for a 25% haste buff"}, {"TANK", "The haste ward also buffs Heldis and any other trash. Drag them out."},
				{"HEALER", "Gale Winds is a moderately harmful AoE channel. You'll need to heal through it."},
				{"Fluff", "With all that haste you'll feel like you're still playing a different expansion."}},
	
	-- Path to Stormsong
	[134417] = {{"Important", "PULL ONE AT A TIME"}, {"Important", "Spread out with Void Seed. It doesn't hurt if you're 6yds apart."}, 
				{"Interrupts", "Interrupt(!!): Unending Darkness (AoE nuke, inc shad dmg taken debuff)"}}, -- 	Deepsea Ritualist
	[139626] = {{"Important", "You can purge their shield to make them easier kills. Arcane Torrent is beautiful here."}}, -- 	Dredged Sailor
	[134338] = {{"Important", "Conjures many blue swirls. I died to them once. Don't be me."}}, -- 	Tidesage Enforcer
	[134418] = {{"Important", "Have many interruptable casts. Priority is Touch of the Drowned > Rip Mind > Void Bolt."}, {"Interrupts", "Interrupt or dispel(!): Touch of the Drowned (medium DoT)"},
				{"Interrupts", "Interrupt: Rip Mind (ST Nuke, -max HP)"}}, -- 	Drowned Depthbringer
	[134514] = {{"Important", "Frontal Cleave ('Mental Assault', stun, tank can dodge)"}, {"Interrupts", "Interrupt or Purge(!): Consuming Void (spell absorb buff)"},
				{"Interrupts", "Interrupt: Detect Thoughts (100% dodge chance, 6s)"}}, -- 	Abyssal Cultist
	[136353] = {{"Important", "Deal heavy AoE damage. Make sure your tank is standing close to them."}}, -- 	Colossal Tentacles
	[134423] = {{"Important", "Deal medium AoE damage. AoE them quickly."}}, -- 	Abyss Dweller
	
	-- The Seas
	[140038] = {{"Important", "Moderate tank damage. Otherwise harmless."}}, -- 	Abyssal Eel
	[136295] = {{"Important", "Heavy tank damage. Slow so can be kited."}}, -- 	Sunken Denizen
	[136297] = {{"Interrupts", "Interrupt(!!) Consume Essence (AoE Nuke + full AoE heal)"}}, -- 	Forgotten Denizen
	
	-- Bosses
	[134056] = {{"Important", "Don't stand in blue swirls. Don't stand in front of boss when he charges. DPS Grasps."}, {"Important", "Boss will split into three smaller elementals. Same abilities. Watch out for the charges."}, 
				{"Important", "YOU CAN FALL OFF THE PLATFORM. KEEP YOURSELF SAFE."}, {"HEALER", "Dispel: Choking Brine (DoT)"}, {"DRUID", "You can shapeshift out of the Grasp of the Depths root"}, 
				{"PALADIN", "You can Freedom the Roots."}}, -- 	Aqu'sirr
		[134828] = {{"Important", "Don't stand in blue swirls. Don't stand in front of boss when he charges. DPS Grasps."}, {"Important", "Boss will split into three smaller elementals. Same abilities. Watch out for the charges."}, 
				{"Important", "YOU CAN FALL OFF THE PLATFORM. KEEP YOURSELF SAFE."}, {"HEALER", "Dispel: Choking Brine (DoT)"}, {"DRUID", "You can shapeshift out of the Grasp of the Depths root"}, 
				{"PALADIN", "You can Freedom the Roots."}}, -- 	Aqualing
	[134063] = {{"Important", "Swiftness and Reinforcing wards are dropped through fight. ALWAYS stand in them"}, {"Important", "Reinforcing clears Slicing Winds stacks, Swiftness is +25% haste"},
				{"Important", "Kill Faye first, or both at the same time (efficient but tough on mana)"}, {"Important", "Interrupt: Slicing Blast (when Faye is in a swiftness ward)"},
				{"TANK", "When Ironhull casts Blessing you need to kite. He deals double damage"}, {"TANK", "Face the cleave away from the party. You can clear the movement debuff in swiftness wards"},
				{"HEALER", "Track Slicing Blast stacks. They should be cleared every reinforcing ward but DPS are slow sometimes"}, {"HEALER", "Warning: The tank is likely to take heavy spiky damage"}}, -- 	TC: Brother Ironhull
	[134058] = {{"Important", "Swiftness and Reinforcing wards are dropped through fight. ALWAYS stand in them"}, {"Important", "Reinforcing clears Slicing Winds stacks, Swiftness is +25% haste"},
				{"Important", "Kill Faye first, or both at the same time (efficient but tough on mana)"}, {"Important", "Interrupt: Slicing Blast (when Faye is in a swiftness ward)"},
				{"TANK", "When Ironhull casts Blessing you need to kite. He deals double damage"}, {"TANK", "Face the cleave away from the party. You can clear the movement debuff in swiftness wards"},
				{"HEALER", "Track Slicing Blast stacks. They should be cleared every reinforcing ward but DPS are slow sometimes"}, {"HEALER", "Warning: The tank is likely to take heavy spiky damage"}}, -- 	TC: Galecaller Faye
	[134060] = {{"Important", "MC'd targets must take damage by running through orbs and being targeted by allies."}, {"Important", "If you're not MC'd, don't get hit by the orbs or I'm taking away your dungeon license."},
				{"HEALER", "Dispel: Mind Rend (DoT, slow). You can also dispel Explosive Void (stun) if someone hits an orb."}}, -- 	Lord Stormsong
	[134069] = {{"Important", "Complex fight. Start by dodging tentacle slams and big black circles."}, {"Important", "Boss will drop everyone to sunken realm. Tank & healer in one, DPS in the other. Must kill add to escape"},
				{"Important", "Healer gets debuff that gives +damage +healing -maximum health. Healer MUST help DPS. DPS can receive buff if healer already has it"}, {"Important", "Debuff can be cleansed if you don't trust yourself to dodge everything"},
				{"Important", "Manifestation adds can't reach boss but will deal AoE damage when killed. Ensure nobody is low"}, {"Important", "Advanced strat on the website soon (too long for tooltips)"}}, -- 	Vol'zith the Whisperer
		[136100] = {{"Important", "Kite it, kill it. Healer MUST DPS it. Cast from your spellbook if you must; you're hitting it."}}, -- 	Sunken Denizen
	
	
	---------------------------------------------------
	
	
	
	---------------------------------------------------
	---------------------Legion------------------------
	---------------------------------------------------	
				
	-- Halls of Valor
	[97087] = {{"Legion", "Not strong. Minor tank damage."}}, -- Valarjar Champion
	[96611] = {{"Legion", "Can skip with Sap / Imprison"}, {"Interrupts", "STUN Interrupt: Rumbling Stomp"}}, -- Angerhoof Bull
	[96608] = {{"Legion", "Don't pull more than 2-3 at a time!"}, {"Legion", "Use grips / stuns to minimize damage"}}, -- Ebonclaw Worg
	[96677] = {{"Legion", "Don't pull. Inefficient."}}, -- Steeljaw Grizzly
	[96640] = {{"Legion", "Penetrating shot fires in direction of tank."}, {"Important", "Penetrating Shot will one shot you!"}}, -- Valarjar Marksman
	[95834] = {{"Interrupts", "Interrupts: Holy Radiance > Rune of Healing"}}, -- Valarjar Mystic
	[101637] = {{"Important", "Skip this pack by hugging the left or right walls"}}, -- Valarjar Aspirant
	[96664] = {{"Interrupts", "Interrupts: Etch"}, {"Interrupts", "Interrupts: Shattered Rune"}}, -- Valarjar Runecarver
	[95832] = {{"Important", "Frontal Cleave!"}, {"HEALER", "Healing / Armor reduction on tank"}}, -- Valarjar Shieldmaiden
	[95842] = {{"Interrupts", "Interrupts: Thunderous Bolt"}, {"HEALER", "Dispel: Thunderstrike"}, {"Legion", "Use AoE stuns / knockbacks to control large packs"}}, -- Valarjar Thundercaller
	[97068] = {{"PriorityTargets", "Priority Target"}, {"TANK", "You need a big CD for each Lightning Breath. Face away from party"}, {"HEALER", "Top the tank up before each Lightning Breath"},
				{"DRUID", "You're a beautiful person"}, {"DEMONHUNTER", "You're doing great"}}, -- Storm Drake
	[96574] = {{"Important", "Gives Interrupts immunity to nearby mobs. Pull alone."}}, -- Stormforged Sentinel
	[99891] = {{"PriorityTargets", "Priority Target"}, {"TANK", "You need a big CD for each Lightning Breath"}, {"HEALER", "Top the tank up before each Lightning Breath"}}, -- Storm Drake
	[97197] = {{"PriorityTargets", "Priority Target (or CC)"}, {"Interrupts", "Interrupt: Cleansing Flame"}}, -- Valarjar Purifier
	[99804] = {{"Fluff", "You shouldn't need to pull this"}}, -- Valarjar Falconer
	[96934] = {{"Important", "Drops Bear Traps. Don't stand on them."}}, -- Valarjar Trapper
	
	-- Mini Bosses
	[97202] = {{"Important", "Dodge: Sanctify balls (AoE damage to your party)"}}, -- Olmyr
	[97219] = {{"Important", "Stand in bubble during Eye of the Storm"}}, -- Solsten
	[97083] = {{"Important", "Recommended kill order: #1/4"}, {"Interrupts", "Interrupt: Unruly Yell"}}, -- King Ranulf
	[95843] = {{"Important", "Recommended kill order: #3=/4"}, {"TANK", "Does heavy tank damage with Sever."}, {"HEALER", "Tank will get smashed with Sever. Keep alive."}}, -- King Haldor
	[97081] = {{"Important", "Recommended kill order: #3=/4"}, {"HEALER", "Will wang random targets with Wicked Dagger."}}, -- King Bjorn
	[97084] = {{"Important", "Recommended kill order: #2/4"}, {"Legion", "Ancient Ancestors vulnerable to almost every CC."}}, -- King Tor
	
	
	-- Bosses
	[95833] = {{"Defensives", "Defensives: Save for Expel Light / Arcing combo."},
				{"HEALER", "Healing CD: Every Eye of the Storm (every 1min)"}, {"HEALER", "This is a very tough fight. Prepare for heavy, spiky damage."}, 
				{"TANK", "Face Shield of Light toward opposite side of the room"}, {"Legion", "There's a Weak Aura for Arcing Bolt on QuestionablyEpic"}}, -- Hyrja
	[94960] = {{"Important", "Start in the middle for Storm Drakes. Move into the first section to be hit by lightning."}, {"Important", "Focus on dodging Ball Lightning. Your damage doesn't matter."},
				{"HEALER", "Horn of Valor deals heavy AoE damage. Top the party before it hits"}, {"TANK", "Big frontal cleave. Face boss away from the party at all times."}}, -- Hymdall
	[99868] = {{"Important", "Party must be 10 yards apart during Ravenous Leap"}, {"Important", "Claw Frenzy is split between everyone close to the boss"}, 
				{"Legion", "You can pop immunities during Scent of Blood to keep boss still."}, {"HEALER", "Keep party healthy to survive claw frenzy"},
				{"Advanced", "Shadowmeld: Ravenous Leap to cancel the entire ability."}}, -- Fenryr II
	[95674] = {{"Important", "Party must be 10 yards apart during Ravenous Leap"}, {"Important", "Claw Frenzy is split between everyone close to the boss"}, 
				{"Legion", "You can pop immunities during Scent of Blood to keep boss still."}, {"HEALER", "Keep party healthy to survive claw frenzy"},
				{"Advanced", "Shadowmeld: Ravenous Leap to cancel the entire ability."}}, -- Fenryr	I		
				
	[95675] = {{"Important", "Felblaze Rush can be dodged! Stand max range; Use mobility cooldowns or defensives"}, 
				{"HEALER", "You have time to DPS during the fight, very little damage"},
				{"TANK", "You are responsible for using Aegis of Aggramar during Ragnarok"}, {"TANK", "Remember to pick up the shield again when it falls to the floor!"}}, -- God King Skovald
	[95676] = {{"PriorityTargets", "Kill Obliterators as Priority targets. You MUST interrupt"}, {"Legion", "You get a big damage buff when you cash in Runic Brand. Save cooldowns"}}, -- Odyn
	----------------------------

	
	-- Lower Karazhan
	[114627] = {{"Interrupts", "Interrupt: Terrifying Wail"}, {"HEALER", "Dispel: Cursed Touch"}}, -- Shrieking Terror (spirit)
	[114626] = {{"Interrupts", "Interrupt: Soul Leech"}, {"HEALER", "Dispel: Shadow Rend"}}, -- Forlorn Spirit (spirit)
	[114541] = {{"Legion", "Not strong. Minor tank damage"}}, -- Spectral Patron
	[114542] = {{"Important", "Dodge coins on the ground instead of reading this"}, {"TANK", "Ultra-high unavoidable tank damage with throw coin"}}, -- Ghostly Philanthropist
	[114584] = {{"Legion", "Not strong. Minor tank damage"}}, -- Phantom Crew (?)
	[114526] = {{"Important", "Standing in the spotlights increases your damage by 50%!"}, 
				{"Important", "Final Curtain is a 5 yard range one shot"},
				{"TANK", "Keep the mobs out of the spotlights"}}, -- Ghostly Understudy
					
	[116549] = {{"Interrupts", "Interrupt(!!): Firelands Portal"},
				{"Important", "Use AoE stuns to prevent casts. They will murder you."}}, -- Backup Singer
	[114544] = {{"Important", "Face away from the mobs during Flashlight!"},
				{"HEALER", "Flashlight does moderate AoE damage even when handled correctly"}}, -- Skeletal Usher 
	[114625] = {{"Legion", "Mass Interrupts to group them together"},
				{"Legion", "Not dangerous"}}, -- Phantom Guest
	[114629] = {{"Important", "Dangerous mob. Pull with caution."},
				{"Interrupts", "Interrupt: Oath of Fealty"},
				{"TANK", "Oath of Fealty can mind control you if cast"}}, -- Spectral Retainer
	[114634] = {{"Interrupts", "Interrupt: Shackles of Servitude"}, {"HEALER", "Dispel (Curse): Shackles of Servitude"}}, -- Undying Servant
	[114636] = {{"Important", "Frontal Cleave with Shield Slam"},
				{"TANK", "You can also dodge Shield Slam yourself"}},	-- Phantom Guardsman
	[114637] = {{"Legion", "Will fire on random party members"}}, -- Spectral Sentry
	[114783] = {{"Legion", "Stun and focus the Maiden as she hits 50% to avoid Heartbreaker"}, {"HEALER", "Dispel Flirt to reduce danger of a Heartbreaker cast. Tank priority"}}, -- Reformed Maiden
	[114796] = {{"Interrupts", "Interrupt: Banshee Wail"}, {"HEALER", "Dispel anyone near 100 Alluring Aura stacks to avoid MC"}}, -- Wholesome Hostess
	[114792] = {{"Important", "Don't stand in the Charming Perfume"}, {"Interrupts", "Interrupt: Shadowbolt Volley"}}, -- Virtuous Lady
	[115020] = {{"Legion", "This is a poor place to get your trash percentage"}}, -- Arcanid
	[115019] = {{"Legion", "This is a poor place to get your trash percentage"}}, -- Coldmist Widow
	[115115] = {{"Legion", "This is a poor place to get your trash percentage"}}, -- Coldmist Stalker
	[114624] = {{"Important", "Avoid the blue swirls on the floor"}, {"Legion", "Spread with Volatile Charge debuffs"}}, -- Arcane Warden
	[114628] = {{"HEALER", "Dispel: Brittle Bones"}}, -- Skeletal Waiter
	[114794] = {{"TANK", "Defensive: Rotting Bite"}}, -- Skeletal Hound
	[114716] = {{"TANK", "Not dangerous, but will knock you down for 2 seconds"}},	 -- Ghostly Baker
	[114715] = {{"Legion", "Moderate frontal cleave. Stay at max range"}}, -- Ghostly Chef
	[114802] = {{"Important", "Heavy frontal cleave with Smash. Can be avoided by tank"}}, -- Spectral Journeyman
	[114801] = {{"PriorityTargets", "Priority Target"}, {"Important", "Spreadout with Burning Brand. It hurts. A lot."}}, -- Spectral Apprentice
	[114804] = {{"Legion", "Stand near the wall, shorter charge = more DPS"},
				{"Legion", "Consider stun-interrupting Tramping Stomp"}},-- Spectral Charger
	[114803] = {{"Interrupts", "Interrupt: Healing Touch"}}, -- Spectral Stable Hand
	[114633] = {{"Interrupts", "Interrupt: Demoralizing Shout"}}, -- Spectral Valet
	[116550] = {{"Legion", "Not strong. Minor tank damage."}}, -- Spectral Patron
	[114632] = {{"Interrupts", "Interrupt: Shadow Rejuvenation (Heal)"}}, -- Spectral Attendant
	[114714] = {{"Important", "Will stun the tank"}}, -- Ghostly Steward
	
	--Bosses
	[113971] = {{"Interrupts", "Interrupt: Holy Wrath, Holy Shock"},
				{"DAMAGE", "Save DPS cooldowns for Holy Bulwark"},
				{"HEALER", "Try and get a stack of Sacred Ground 5s before Mass Repentance"},
				{"HEALER", "This reduces the burst healing required to deal with the mechanic"}}, -- Maiden
	[114262] = {{"Important", "Stack with the tank for Shared Suffering unless they are able to dodge it"},
				{"TANK", "You cannot easily dodge Mortal Strike, a 50% max HP reduction"},
				{"Legion", "Let your healer know if you have the spirit on you."},
				{"Legion", "Manually scanning five people is much slower"},
				{"Legion", "During Spectral Charge, try and stay near the center of the room"}}, -- Attumen
	[114312] = {{"Important", "Add CC is broken when Moroes below 60% but can be hunter trapped after"},
				{"HEALER", "Long grueling fight. Watch your mana"},
				{"HEALER", "Dispel: Coat Check (Incr dmg taken)"}}, -- Moroes main
	[114316] = {{"Legion", "Casts Mana Drain, Arcane Blast"},
				{"Interrupts", "Interrupts(!): Mana Drain"}}, --  Dorothea Millstipe
	[114317] = {{"Legion", "Casts Healing Stream, Smite"},
				{"Interrupts", "Interrupts(!): Healing Stream"}}, -- Catriona
	[114318] = {{"Legion", "Casts Iron Whirlwind"},
				{"Legion", "Stay as far from Rafe as you can"}}, -- Baron Rafe
	[114319] = {{"Legion", "Casts Empowered Arms"},
				{"Interrupts", "Interrupts(!): Empowered Arms"}}, -- Keira
	[114320] = {{"Legion", "Casts Whirling Edge (projectile)"},
				{"Legion", "Harmless if you avoid the blade he throws at you"}}, -- Robin Daris
	[114321] = {{"Legion", "Casts Will Breaker"},
				{"Legion", "Long cast, large floor-based AoE one-shot"},
				{"Advanced", "You can interrupt Will Breaker with knock backs"}}, -- Crispin Ference
			
	-- Upper Karazhan
	[114334] = {{"Legion", "Straightforward. Don't stand in the swirls"}}, -- Damaged Golem
	[115765] = {{"Legion", "Soul always appears in the same place. Gives +100% damage to you"}}, -- Abstract Nullifier
	[114338] = {{"Legion", "You can line of sight Arcane Barrage"},
				{"Interrupts", "Interrupt: Arcane Barrage when shield drops"}}, -- Mana Confluence
	[114364] = {{"Legion", "Not strong"}}, -- Mana-Gorged Wyrm
	[115484] = {{"Legion", "You can taunt to bring to the ground. Rarely required"}}, -- Fel Bat
	[115488] = {{"Important", "You must soak the Fel Orbs by standing in them"},
				{"Important", "They explode if not soaked. Use defensive when soaking"}},-- Infused Pyromancer
	[115757] = {{"Important", "Nasty frontal cleave"}, {"Legion", "Kite him up into the tunnel to avoid flame floor"}}, -- Wrathguard Flamebringer
	[115419] = {{"Important", "Avoid pulling"},
				{"Interrupts", "Interrupt: Consume Magic"}}, -- Ancient Tome
	[115417] = {{"Legion", "Avoid stampede. Keep tank alive."}}, -- Rat
	[115418] = {{"HEALER", "Dispel Leech Life if able as priority"},
				{"HEALER", "Keep Web targets alive"}},-- Spider
	[115831] = {{"Important", "Intercept orbs for a damage buff"},
				{"Important", "Any orbs that hit wyrms explode for AoE damage"}}, -- Mana Devourer
	[115486] = {{"Important", "Frontal cleave that will knock you off!"}}, -- Erudite Slayer
	[115388] = {{"Important", "The King won't put up new shield below 30%"},
				{"Legion", "Focus on low HP targets first, like Knights"},
				{"Legion", "Don't die. This sucks enough as-is"}}, -- King
				
	---Bosses
	[114247] = {{"Important", "Killing sparks is absolute priority"},
				{"Important", "High keys: Move as a group to preserve space"},
				{"HEALER", "Heavy AoE damage from sparks. Keep party topped"},
				{"HEALER", "Help DPS during Evocation"}}, -- Curator
	[114350] = {{"Important", "Keep Frostbite Interrupted. Coordinate Interrupts"},
				{"Legion", "Blink after Inferno Bolt is cast to avoid it entirely"},
				{"WARRIOR", "Piercing Missles can be spell reflected"},
				{"HEALER", "Flame Wreath must be healed through. Be amazing"},
				{"HEALER", "Healing CDs: Bird phase. Something for Flame Wreath"}}, -- Shade of Medivh
	[116494] = {{"Important", "You can use immunities to soak mass balls"},
				{"Legion", "If not, grab 1-2 orbs each only"}}, -- Mana Devourer
	[114790] = {{"Important", "Keep an eye on the eyeball during Disintegrate"},
				{"Important", "Pre-spread before Chaotic Shadows goes out. Don't stack"},
				{"Interrupts", "Interrupt: Burning Blast"}}, -- Viz'aduum
	---------------0--------------------
	
	
	-- Eye of Azshara
	[106785] = {{"Legion", "Dispellable debuff on tank, otherwise harmless"}}, -- Bitterbrine Slave
	[101414] = {{"Important", "Has more health than other murlocs. Beware on Bolster"}}, -- Saltscale Skulker
	[91796] = {{"PriorityTargets", "Priority Target"}, {"Important", "Casts: Rising Fury (AoE stun)"}}, -- Skrog Wavecrasher
	[97172] = {{"Legion", "Harmless"}}, -- Saltsea Droplet
	[91782] = {{"Interrupts", "Interrupt: Thundering Stomp"}}, -- Hatecoil Crusher
	[97170] = {{"Important", "Don't pull!"}}, -- Hatecoil Wavebinder
	[97173] = {{"Important", "Don't pull!"}}, -- Restless Tides
	[91783] = {{"Interrupts", "Interrupt: Arc Lightning(!), Storm"}}, -- Hatecoil Stormweaver
	[95861] = {{"Interrupts", "Interrupt: Rejuvenating Waters(!)"}}, -- Hatecoil Oracle
	[95939] = {{"Important", "Casts: Massive Quake (dodgeable circles)"}}, -- Skrog Tidestomper
	[100216] = {{"Interrupts", "Stun Interrupt(!!!): Lightning Prod (Big AoE)"}}, -- Hatecoil Wrangler
	[106787] = {{"Legion", "Dispellable debuff on tank, otherwise harmless"}}, -- Bitterbrine Slave
	[106786] = {{"Legion", "Dispellable debuff on tank, otherwise harmless"}}, -- Bitterbrine Slave
	[97171] = {{"Interrupts", "Interrupt: Arcane Rebound (ST Nuke). Ignore others"}}, -- Hatecoil Arcanist
	[95920] = {{"Important", "Don't pull!"}}, -- Animated Storm
	[99630] = {{"Legion", "Dispellable debuff on tank, otherwise harmless"}}, -- Bitterbrine Scavenger
	[91793] = {{"Legion", "Harmless"}}, -- Seaspray Crab
	[91792] = {{"Important", "Dangerous Tail Cleave"},
				{"TANK", "Hydra autoattacks have chance to deal heavy magic damage"}}, -- Stormwake Hydra
	[99629] = {{"Legion", "Dispellable debuff on tank, otherwise harmless"}}, -- Bitterbrine Scavenger
	[91781] = {{"Important", "Frontal Cleave"}}, -- Hatecoil Warrior
	[91794] = {{"Legion", "Harmless"}}, -- Saltscale Lurker
	[91785] = {{"Legion", "Harmless. You can stun the shield off"}}, -- Wandering Shellback
	[95940] = {{"Legion", "Dispellable debuff on tank, otherwise harmless"}}, -- Bitterbrine Scavenger
	[95947] = {{"Legion", "Breaking mob shield deals AoE damage. Has cleave."}}, -- Mak'rana Hardshell
	[91790] = {{"Important", "Stun or dodge Spray Sand"},
				{"HEALER", "Dispel: Sandstorm (reduced hit chance)"}}, -- Mak'rana Siltwalker
	[91786] = {{"Legion", "Doesn't melee. Slime hits in a cone"}}, -- Gritslime Snail
	[91787] = {{"Legion", "Pull before bosses. Will disorient nearby targets"}}, -- Cove Seagull
	[100248] = {{"Interrupts", "Interrupt: Lightning Blast (ST Nuke)"}}, -- Ritualist Lesha
	[100249] = {{"Interrupts", "Interrupt: Lightning Blast (ST Nuke)"},
				{"HEALER", "Dispel: Polymorph Fish (CC)"}}, -- Channeler Varisz
	[100250] = {{"Interrupts", "Interrupt: Lightning Blast (ST Nuke)"},
				{"HEALER", "Dispel or heal: Magic Binding (5 targets)"}}, -- Binder Ashioi
	[98173] = {{"Interrupts", "Interrupt(!): Lightning Blast(!)"},
				{"Interrupts", "Interrupt or Dodge: Storm (10 yard AoE)"}}, -- Mystic Ssa'veh
	---Bosses
	[91784] = {{"Important", "Stand behind a minion during Impaling Spear"},
				{"Interrupts", "Interrupts (Shellbreaker): Bellowing Roar"},
				{"HEALER", "Impaling Spear targets need big heals"}}, -- Parjesh				 
	[91789] = {{"Important", "Spread during Focused Lightning"},
			{"Legion", "Careful with your curse, it knocks back on expiry. Don't murder your friends"},
			{"Legion", "The tornadoes destroy the land. Take care"},
			{"Defensives", "Defensive: Focused Lightning"}}, -- Hatecoil
	[91808] = {{"Legion", "Remember your health potions. Fight is very spread out"}, {"Legion", "Damage dealt to spawns also hits Serpentrix"}}, -- Serpentrix
	[91797] = {{"Legion", "Aftershock hits 4s after Quake. Move from cracked ground"},
				{"Legion", "Remove bubbles with Quake and Call of the Seas"}}, -- King Deepbeard
	[96028] = {{"Important", "Stick together! Mark your healer"},
				{"Legion", "You must stack on or sacrifice the Crushing Depths target"},
				{"HEALER", "Dispel: Arcane Bomb (ST Nuke)"},
				{"HEALER", "Healing CDs: Save for Phase 2 (sub 10%)"}}, -- Wrath of Azshara
	------------------0-----------------

	
	
	-- Black Rook Hold
	[101839] = {{"Important", "Ranged: Stand at least 40 yards away and spread"},
				{"Important", "Priority Kill Target"}}, -- Risen Companion
	[98691] = {{"Interrupts", "Stun Interrupt: Knife Dance (AoE)"},
				{"Important", "Knife Dance has short range so run out if you can't stun"}}, -- Risen Scout
	[98706] = {{"Important", "Beware: Bonebreaking Strike stuns in a frontal line"}}, -- Commander Shemdah'sohn
	[98366] = {{"Legion", "You can skip with invis pot"},
				{"HEALER", "Dispel: Soul Blade"}}, -- Ghostly Retainer
	[98368] = {{"PriorityTargets", "Priority Kill Target"}, {"Legion", "You can skip with invis pot"}}, -- Ghostly Protector
	[101549] = {{"PriorityTargets", "Priority Kill Target"}, {"Important", "Move out of blue swirls on ground"}}, -- Arcane Minion
	[102138] = {{"Important", "Where did you find this man??"}}, -- Vanguard Ixxilon (not in game)
	[98275] = {{"Important", "Shoot has a 30 yard range. Sorry melee"}, {"Legion", "Arrow Barrage hits slightly further than the animation"},
				{"Legion", "You can line of sight Shoot if low"}}, -- Risen Archer 
	[98280] = {{"Interrupts", "Interrupt: Arcane Blitz (ST Nuke)"}}, -- Risen Arcanist
	[98243] = {{"Important", "Beware: Bonebreaking Strike stuns in a frontal line"}}, -- Soul-Torn Champion
	[98677] = {{"Important", "Explodes on death"}, {"HEALER", "Dispel(!): Soul Venom (large DoT)"}}, -- Rook Spiderling
	[98538] = {{"Important", "Stay spread out. Moderately high tank & party damage"}, 
				{"Legion", "You can skip with invis pot"}}, -- Lady Velandras Ravencrest
	[98521] = {{"Important", "Move out of the party with Soul Echos"}, 
				{"Interrupts", "Interrupt: Spirit Blast"},
				{"Legion", "You can skip with invis pot"}}, -- Lord Etheldrin Ravencrest
	[98813] = {{"Legion", "Harmless"}}, -- Bloodscent Felhound
	[98681] = {{"Legion", "Harmless"}}, -- Rook Spinner
	[98370] = {{"Interrupts", "Interrupt: Dark Mending (Heal)"}}, -- Ghostly Councilor
	[102788] = {{"Interrupts", "Interrupt: Felfrenzy"}, {"Legion", "Good luck with the staircase my friend"}}, -- Felspite Dominator
	[98810] = {{"Interrupts", "Stun Interrupt: Brutal Assault"}, {"TANK", "Brutal Assault deals heavy tank damage. Stun or run away"}}, -- Wrathguard Bladelord
	[98792] = {{"Legion", "Abilities change after potion drink"}, {"Legion", "Basically just give them some space"}}, -- Wyrmtongue Scavenger
	[101923] = {{"Legion", "Does a variety of abilities after potion drink"}, {"Legion", "Basically just give them some space"}}, -- Wyrmtongue Scavenger
	[98900] = {{"Legion", "Harmless. Bolster warning: Low HP mob"}}, -- Wyrmtongue Trickster
	[102095] = {{"Important", "Dodge the brown swirls on the floor"}}, -- Risen Lancer
	[102094] = {{"TANK", "Coup de Grace deals heavy damage"}}, -- Risen Swordsman
	---Bosses
	[98542] = {{"Important", "P2: CC a spirit to delay Soul Burst until 15%"}, {"Important", "Use ALL of your defensives on Soul Burst"}, {"TANK", "Pull to one side of the room. Run out of Reap Soul"}}, -- Amalgam of Souls
	[98696] = {{"Important", "Ranged: Spread for Brutal Glaive, then line up for Blazing Trail"}, {"Important", "P2: Kill Arcanist first. Interrupts casts"}, 
				{"TANK", "Use your core defensive ability before Vengeful Shear"},
				{"HEALER", "Big heals on Brutal Glaive targets"}}, -- Illysanna Ravencrest
	[98949] = {{"Important", "When targeted, move Fel Vomit to the side of the room"}, {"Important", "Move away from Fel Vomit during Earthshaking Stomp"},
			{"Important", "Brutal Gaze should be intercepeted by tank / tanky DPS, 1-2 stacks max"}, {"TANK", "When boss energy hits 100: expect heavy tank damage"}}, -- Smashspite
	[94923] = {{"Important", "Use BIG defensives for first Shadowbolt Volley"}, {"Important", "Dodge Whirling Blade. It hurts"},
			{"Important", "Dark Obliteration can move in both directions. Be prepared"}, {"HEALER", "Swarm targets will need big healing"}}, -- Kur'talos
	----------------0--------------------
	
	
	-- Arcway
	[98728] = {{"Legion", "Jumps to random players to eat them. You can walk away"}}, -- Acidic Bile
	[98756] = {{"Important", "Arcane Slicer is a line based one shot. Itll face a direction to cast it"}, {"Interrupts", "Interrupt: Arcane Reconstitution (Full Heal)"}}, -- Arcane Anomaly
	[105617] = {{"Interrupts", "Interrupt: Demonic Ascension (purgeable)"}, {"Interrupts", "Interrupt: Portal Argus / Brand of the Legion"}, 
				{"WARLOCK", "Enslave then cast Brand of the Legion on allies"}}, -- Eredar Chaosbringer
	[105682] = {{"TANK", "Heavy hitter. Reduces healing received. Take care"}}, -- Felguard Destroyer
	[98732] = {{"Important", "Won't always attack tanks. Use AoE CC to keep debuff stacks low"}, {"HEALER", "Dispel the disease if possible, otherwise pump big heals"}}, -- Plagued Rat
	[105651] = {{"Important", "Line of Sight: Prophecies of Doom to avoid all damage"}, {"DEATHKNIGHT", "Death Grip can interrupt Seer casts"},
				{"DEMONHUNTER", "Sigil of Chains can interrupt Seer casts"}}, -- Dreadborne Seer
	[98759] = {{"Legion", "Devour can be stunned, or removed with Freedom / Shapeshifting"}}, -- Vicious Manafang
	[105876] = {{"Important", "Explodes on death!!"}}, -- Enchanted Broodling
	[102351] = {{"Legion", "Line of sight: They'll group up for your AoE DPS"}}, -- Mana Wyrm
	[105915] = {{"Interrupts", "Interrupt(!!): Eye of the Vortex (Huge AoE DoT)"}, {"Legion", "Stand in the blue circles for a 50% haste buff"}, 
				{"HEALER", "Dispel: Eye of the Vortex but get DPS to kick"}}, -- Nightborne Reclaimer
	[105921] = {{"Important", "Stand in the circle for a 50% haste buff."}, {"TANK", "Keep all mobs in the pack out of the haste circle"}, {"DAMAGE", "When shielded, avoid attacking from the front"}}, -- Nightborne Spellsword
	[105706] = {{"Legion", "Stand away during Bladestorm channel"}}, -- Priestess of Misery
	[98425] = {{"Important", "Dodge: Ooze explosion (15yd range, 2s cast)"}}, -- Unstable Amalgamation
	[106059] = {{"Interrupts", "Interrupt(!): Arcane Reconstitution (Full Heal)"}, {"Interrupts", "Interrupt: Phase Breach (heavy AoE damage)"}}, -- Warp Shade
	[98733] = {{"Important", "On Death: AoE silence (15 yard range)"}}, -- Withered Fiend
	[105952] = {{"Legion", "Don't stand in the pretty clouds"}}, -- Withered Manawraith
	[98770] = {{"Defensives", "Defensives: Searing Wound (heavy DoT)"},
				{"HEALER", "Big Healing on Searing Wound targets"}}, -- Wrathguard Felblade
	[105629] = {{"Important", "You can line of sight the cast"}}, -- Wyrmtongue Scavenger
	[113699] = {{"Important", "Each cast reduces healing received by 10%."},{"Important", "Interrupt or line of sight on high stacks"}}, -- Forgotten Spirit
	
	---Bosses
	[98206] = {{"Defensives", "Defensive CD: Wicked Slam"}, {"Important", "Wicked Slam can be dodged (with dodge stat)"},
				{"HEALER", "Top everyone before Wicked Slam but otherwise easy boss to heal"}, {"TANK", "Remember to pick up the bats"}}, -- Xakal
	[98207] = {{"Important", "Use mobility to break Tangled Web ASAP. Aim to take < 3 ticks"}, {"Important", "Kill the adds. They'll root you into Blink Strikes"},
				{"WARLOCK", "Use Demonic Portal to immediately break web"}}, -- Nal'tira
	[98205] = {{"Important", "Stand with a friend for Quarantine. Alone = dead"}, {"Fluff", "Very easy. Please don't wipe."}}, -- Corstilax
	[98203] = {{"Interrupts", "Interrupt: Overcharge Mana(!), Arcane Blast (some)"}, {"Important", "Moving during Nether Link pushes allies away. Be careful"}}, -- Ivanyr
	[98208] = {{"Important", "Be aware of your surroundings. Chrono Shards explode - big damage"}, {"Legion", "Reapply DoTs during Banish in Time cast"},
			{"Legion", "Intermission: Best path is always the outside path leading north"}, {"Legion", "Unstable Mana: Melee kite in a circle around boss to keep DPSing"}}, -- Vandros
	----------------0------------------
	
	
	
	-- Darkheart Thicket
	[95771] = {{"Important", "Move from the shiny purple beams"}}, -- Dreadsoul Ruiner
	[95779] = {{"Important", "The roar is a 30yd range. Ranged DPS / Healers stand at max range"}}, -- Festerhide Grizzly
	[99358] = {}, -- Rotheart Dryad
	[101679] = {{"Important", "The poison explodes in an 8yd radius. If it cant be dispelled then spread out"},
				{"HEALER", "Dispel: Nightmare Toxin (DoT + AoE)"}}, -- Dreadsoul Poisoner
	[95766] = {{"Legion", "Easy mob but face away from the party and avoid charge"}}, -- Crazed Razorbeak
	[99359] = {{"PriorityTargets", "Priority Target"}, {"Important", "Auto-heals nearby mushrooms"}}, -- Rotheart Keeper
	[99360] = {}, -- Vilethorn Blossom
	[95769] = {{"Interrupts", "Interrupt: Unnerving Screech (Disorient)"}}, -- Mindshattered Screecher
	[95772] = {{"PriorityTargets", "Priority Target. Keep stunned if possible"}}, -- Frenzied Nightclaw
	[100531] = {{"Important", "Giant blood bomb will fall from the sky. Don't get hit by it"},{"Advanced", "Run away from the Fury as it dies and small blobs won't aggro"}}, -- Bloodtainted Fury (elementals)
	[101991] = {{"Interrupts", "Interrupt: Tormenting Fear (Fear)"}}, -- Nightmare Dweller
	[100526] = {{"Legion", "Stacks heavy disease on the tank. Consider kiting / stunning"}}, -- Tormented Bloodseeker
	[100527] = {}, -- Dreadfire Imp
	[100539] = {{"Legion", "Will ping random targets and teleport around"}}, -- Taintheart Deadeye
	[99365] = {{"Legion", "The stalker... stalks (hits random targets for medium damage)"}}, -- Taintheart Stalker
	[99366] = {}, -- Taintheart Summoner
	[100529] = {{"Important", "They drop a blood pool when they die. Treat like fire"}}, -- Hatespawn Slime
	---Bosses
	[96512] = {{"Important", "Grievous Leap always targets furthest ally from boss"}, {"Important", "You can CC the adds to stop them dripping everywhere"}, 
				{"TANK", "Face the boss away from your party. Primal Rampage charges in your direction"}}, -- Glaidalis
	[103344] = {{"Important", "You can stand in the Strangling Roots to prevent adds spawning"}, {"Important", "Druids and BoF are great for clearing them"},
			{"Important", "Crushing Grip is very heavy tank damage. Use a big cooldown / heals"}}, -- Oakheart
	[99200] = {{"Important", "Stand inside bosses hitbox during Down Draft to minimize blowback"}, {"Important", "Spread before Earthshaking Roar"},
			{"Important", "Whole party can avoid Breath of Corruption, including tank"}, {"HEALER", "Healing CDs: Down Draft (heavy AoE with pushback)"}}, -- Dresaron
	[99192] = {{"Defensives", "Defensives: Apoc Empowerment (boss at 50%"}, {"Defensives", "Defensives: Feed on the Weak (heavy DoT)"}, 
			{"Important", "Stack for Nightmare Bolt, spread for Induced Nightmare"},
			{"HUNTER", "You can Feign Death the Feed on the Weak cast"}, {"Advanced", "High key? Wear Prydaz"}}, -- Shade of Xavius
	-----------------0-------------------------
	
	
	-- Seat of the Triumvirate
	[124171] = {{"Legion", "Suppression Field debuff = don't move"}}, -- Shadowguard Subjugator
	[122322] = {{"Legion", "Use AoE CC to keep your tank alive"},
				{"TANK", "Use anti-magic mitigation. These really hurt."},
				{"TANK", "Don't tank on the black ground"}}, -- Famished Broken
	[122478] = {{"Important", "Explodes when it dies leaving giant DoT. Run."},
				{"HEALER", "Dispel: Corrupting Touch"}}, -- Void Discharge
	[122571] = {{"Important", "Move out of the black swirls on the ground"},
				{"Interrupts", "Interrupt: Stygian Blast"},
				{"TANK", "Don't tank on the black ground"}}, -- Rift Warden
	[122405] = {{"Legion", "Interrupts as often as possible"}}, -- Shadowguard Conjurer
	[122403] = {{"Important", "Frontal Cleave"},
				{"HEALER", "Heavy tank damage"}}, -- Shadowguard Champion
	[124947] = {{"Legion", "Interrupt or stun the constant Dark Flay casts"}}, -- Void Flayer
	[127784] = {{"Important", "Spread + mobility cooldowns to escape Corrupting Void"}, {"HEALER", "Heavy healing warning. Use Cooldowns"}}, -- Shadowguard Voidbender
	[125857] = {{"Fluff", "More like Paper Mache Voidlings"}}, -- Lashing Voidling
		
	-- Bosses
	[122313] = {{"Legion", "Void adds explode if reach boss. Use CC to help."},
				{"DPS", "Void Realm: Kill adds until full energy. Click extra action button."},
				{"TANK", "Void Realm: Kill adds until full energy. Click extra action button."},
				{"TANK", "Never tank him on the black ground"}}, -- Zuraal
	[122316] = {{"Legion", "Please don't stand on the mines. I asked nicely"}},-- Saprish
	[125340] = {{"Interrupts", "Interrupt(!!): Dread Screech (Disorient)"}}, -- Shadewing
	[122319] = {{"Important", "Dodge: Ravaging Darkness"}}, -- Darkfang
	[124309] = {{"Interrupts", "Interrupt(!!): Eternal Twilight (One shot), Howling Dark (Fear)"},
				{"Important", "Stack near the boss before Entropic Force is cast"},
				{"HEALER", "Track Void Lashing on your healer frames"},
				{"HEALER", "Prioritize healing to anyone attacked by multiple tentacles"},
				{"DPS", "Kill Priority is Voidtenders >> Tentacles > Boss"}}, -- Viceroy Nezhar	
	[122314] = {{"Important", "Rift Wardens will cast Fragment of Despair"},
				{"Important", "You must soak the black circles it leaves"},
				{"Important", "Safest to soak with immunities but not required"},
				{"Legion", "Two waves of Rift Wardens. Single and a double"},
				{"HEALER", "High, ticking damage through fight. Be efficient with mana"}}, -- L'ura
	----------------------------------------------------------------------------------------
	
	
	-- Vault of the Wardens
	[99649] = {{"Important", "Skip this guy! Illianna is easier"}, {"Important", "You pulled him? Ok, stack for the meteor"}}, -- Dreadlord Mendacius
	[102583] = {{"Important", "Explodes on death (woah!). Stagger kills if multiple Scorchers"}}, -- Fel Scorcher
	[99956] = {{"Important", "You can knockback or stun Fel Gaze to greatly reduce party damage"}, {"Interrupts", "Interrupt: Unleash Fury (huge AoE damage)"}}, -- Fel-Infused Fury
	[97674] = {}, -- Brood Mother (not in game)
	[102584] = {}, -- Malignant Defiler
	[100364] = {{"Legion", "Wont move naturally, run away from them to get them to port to you"}, {"Legion", "Will hit DPS / Healers if tank isn't in range. They hurt"}}, -- Spirit of Vengeance
	[98963] = {{"Legion", "Do almost nothing. Grab as many as you can"}, {"Legion", "Bursting / Bolstering don't apply"}}, -- Blazing Imp
	[95771] = {}, -- Dreadsoul Ruiner (in DHT)
	[96480] = {{"Legion", "Do almost nothing. Grab as many as you can (except on Bursting!)"}}, -- Viletongue Belcher
	[96657] = {{"Legion", "Casters: Stop casting during Defeaning Shout or be locked out for 4s"}, {"Legion", "Focus DPS on Illianna and let cleave take care of dogs"}}, -- Blade Dancer Illianna
	[97677] = {{"Legion", "Will start running away at low health. Save your stuns / knockbacks"}}, -- Barbed Spiderling
	[96584] = {{"Legion", "No notable mechanics"}}, -- Immoliant Fury
	[97678] = {{"Legion", "Will strangle a player and drag them into webbing. Not that dangerous"}}, -- Aranasi Broodmother
	[96587] = {{"HEALER", "Dispel: Nightmares (long stun)"}}, -- Felsworn Infester
	[98177] = {{"Important", "Will transform and deal very heavy damage sub-50%"}, {"HEALER", "Will wreck both tank and party sub 50%. Use your healing CDs"}}, -- Glayvianna Soulrender
	[98533] = {{"Important", "Don't stand underneath her. The little pool reduces hit chance"}, {"Important", "Dodge the swirls or you'll be judged"}}, -- Foul Mother
	[98926] = {{"Legion", "No notable mechanics"}}, -- Shadow Hunter
	[98954] = {{"Important", "Frontal silence cone. Face away from party"}}, -- Felsworn Myrmidon
	[102566] = {{"Important", "When somebody gets caged STACK on it. The damage is shared"}, {"Important", "... but dodge the green swirls"}}, -- Grimhorn the Enslaver
	
	---Bosses
	[95885] = {{"Important", "Interrupt and kill adds"}, {"Important", "Give the Hatred beam a wide berth. It moves quickly"}, 
				{"TANK", "You need to use your active mitigation when boss casts Darkstrike"}}, -- Tirathon
	[96015] = {{"Important", "NW: Quillen. Can be CC'd, otherwise kill"}, {"Important", "NE: Void. Kill order: Mindflayer > Voidcaster > Juggernaut"},
			{"Important", "SW: Shadowmoon. Spread. Interrupt Seed of Corruption. Kill Technician > Warlock"}, {"Important", "SE: Corruption. Spread, AoE down"},
				{"TANK", "Consider tanking up where he starts. Makes avoiding gazes very easy"}}, -- Tormentorum
	[95887] = {{"Important", "If you stand under boss you can't be hit by balls"}, {"Important", "Move boss after each floor puddle"}, 
				{"Important", "Boss takes extra damage after Focus phase"}}, -- Glazer
	[95886] = {{"Important", "Stop adds exploding and don't stand in fire"}, {"Legion", "Very easy boss"}}, -- Ash'golm
	[95888] = {{"Important", "You must dodge the Moonglaive, even as tank"}, {"Important", "Consider throwing the light to new shadows. Quicker"},
				{"Important", "Stick together during Creeping Doom"}, {"HUNTER", "You can use flare to pop the boss out of hiding during Shadowstep"}}, -- Cordana
	--------------------0----------------------

	-- Template
	-- {"Legion", ""}
	-- {"Important", ""}
	-- {"Interrupts", "Interrupt: "}
	-- {"HEALER", ""}
	-- {"TANK", ""}	
	-- {"DPS", "DPS Note", ""}	
	
	
	-- Maw of Souls
	[97097] = {{"Interrupts", "Interrupt: Bone Chilling Scream (AoE Fear)"}, {"Legion", "The fear also has a 15 yard range"}}, -- Helarjar Champion
	[97043] = {{"Important", "Barbed Spear is in two parts. A dispellable grip and an AoE cleave afterwards"}, {"Important", "You can be hit by the cleave even if not targeted by the grip; melee take care"},
			{"Important", "Don't stand in the blue swirling muck"}}, -- Seacursed Slaver
	[99188] = {{"Important", "Barrels roll toward a player and hurt. Small"}}, -- Waterlogged Soul Guard
	[102375] = {{"Interrupts", "Interrupt: Fire Blast (Heavy ST nuke)"}}, 		-- Runecarver Slave
	[98919] = {{"Important", "Big frontal cleave during ghost form"}}, -- Seacursed Swiftblade
	[97182] = {{"Defensives", "Defensives: Lantern of Darkness (expect 2)"}, {"HEALER", "Healing CD: Lantern of Darkness (prep for 2)"}},		 -- Night Watch Mariner
	[99033] = {{"Interrupts", "Interrupt: Whirlpool of souls (AoE damage / healing)"}}, -- Helarjar Mistcaller
	[97185] = {{"Important", "Frontal Cleave (Bile Breath)"}}, -- The Grimewalker
	[97119] = {{"Important", "Spiky party damage. Use AoE CC"}}, -- Shroud Hound
	[97200] = {{"Important", "Defiant Strike: charges slowly in one direction. Hurts."}, {"Important", "If he reaches a wall during charge he will turn"}}, -- Seacursed Soulkeeper
	[102104] = {{"Important", "Frontal cleave. Melee beware"}},	 -- Enslaved Shieldmaiden
	[97365] = {}, 	-- Seacursed Mistmender
	[99307] = {{"Important", "Give no Quarter: Spread. Move when targeted"}, {"Important", "The Necromancer adds explode when left alive. AoE them"},
			{"Interrupts", "Interrupt: Debilitating Shout (Damage + -MaxHP)"}},			 -- Skjal
	[98973] = {}, -- Skeletal Warrior
	---Bosses
	[96756] = {{"Important", "Skeletons cannot be CC'd"}, {"Important", "Skeletons should be AoE'd down as absolute priority"},
		{"Legion", "Hunter pets and Boomkin Treants can taunt the boss before Dark Slash"}}, -- Ymiron
	[96754] = {{"Important", "Dodge scythe at all times. It does hit slightly behind the boss"}, {"Important", "Use CC on fragments to keep them in one place for AoE"}, {"Legion", "Try and keep the party close for good Servitor spawns"},
				{"HEALER", "Add Fragment to your frames. The debuff really hurts"}, {"TANK", "Move boss away from nether rips as they overwhelm an area"}}, -- Harbaron
	[96759] = {{"PriorityTargets", "Focus Destructor Tentacles first. Two up at once is dangerous"}, {"Important", "The tentacle hitboxes are huge so you can usually AoE them"}, 
			{"Important", "P2: Her breath hits a third of the platform. It can one shot you"}, {"Important", "Intermission: Stand on platform edge. Holes won't spawn under you"},
			{"Legion", "Bloodlust the 1st phase for a CLEAN kill, or 2nd for a FAST kill"}}, -- Helya
	------------------0-------------------
	
	
	-- Neltharion's Lair
	[102404] = {{"Important", "Stoneshatter is an AoE targeted on tank"}, {"Important", "Grubs MUST be CC'd or immediately killed or they'll transform"}}, -- Stoneclaw Grubmaster
	[91332] = {}, -- Stoneclaw Hunter
	[92610] = {{"Important", "Interrupt his cast to stop the drumming. Animation still plays but harmless"}}, -- Understone Drummer
	[92351] = {{"Important", "Interrupt his cast to stop the drumming. Animation still plays but harmless"}}, -- Understone Drummer (missing)
	[91008] = {{"Important", "Attacks allies at random. Won't cast if tank is 40 yards+ away"}}, -- Rockbound Pelter
	[90998] = {{"Interrupts", "Interrupt: Stone Bolt (Heavy ST nuke)"}}, -- Blightshard Shaper
	[102253] = {{"Important", "The Charskin transform cast can be stunned, else run away from the giant"}}, -- Understone Demolisher
	[102232] = {{"Interrupts", "Interrupt: Bound (Long stun on random player)"}, {"Important", "Pelts random players. Consider CC'ing while you kill the scorpion"}}, -- Rockbound Trapper
	[90997] = {{"Important", "Move when you see Avalanche cast. Don't run where another player was standing"}, {"Important", "Consider a weak aura to warn you to move"}}, -- Mightstone Breaker
	[92350] = {}, -- Understone Drudge
	[91000] = {{"Interrupts", "Stun interrupt: Piercing Shards (Huge cone AoE damage)"}, {"Important", "If low on stuns then face mob away from the party to minimize damage"},
				{"Legion", "Piercing Shards will ALWAYS follow the Fracture knock back"}}, -- Vileshard Hulk
	[101438] = {{"Important", "Dodge: Crush (10 yard AoE)"}}, -- Vileshard Chunk
	[91006] = {{"Legion", "Moderate tank damage. Easily kited."}}, -- Rockback Gnasher
	[105636] = {}, -- Understone Drudge
	[105720] = {}, -- Understone Drudge
	[101437] = {{"PriorityTargets", "Priority Target"}}, -- Burning Geode
	[98406] = {}, -- Embershard Scorpion (ones at the beginning)
	[102287] = {{"Important", "Always hits the three furthest allies from the mob"}, {"Important", "Frontal cleave. Face away from the party"},
				{"Defensives", "Defensives: throughout and stay grouped"}, {"Interrupts", "Stun Interrupt: Frenzy (Huge damage buff)"}, 
				{"HEALER", "Healing CDs: Need one for every scorpion"}}, -- Emberhusk Dominator (Scorps at the end)
	[96247] = {}, -- Vileshard Crawler
	[91001] = {}, -- Tarspitter Lurker
	[102430] = {{"Important", "Harmless but be careful on Bursting / Bolstering"}}, -- Tarspitter Slug
	[113998] = {{"Important", "Move when you see Avalanche cast. Don't run where another player was standing"}, {"Important", "Consider a weak aura to warn you to move"}}, -- Mightstone Breaker
	[113537] = {{"Important", "Always hits the three furthest allies from the mob"}, {"Important", "Frontal cleave. Face away from the party"},
				{"Defensives", "Defensives: throughout and stay grouped"}, {"Interrupts", "Stun Interrupt: Frenzy (Huge damage buff)"}, 
				{"HEALER", "Healing CDs: Need one for every scorpion"}}, -- Emberhusk Dominator
	---Bosses
	[91003] = {{"Important", "Shatter deals heavy AoE damage based on HP remaining of Skitters"}, {"Important", "Ensure they're cleared / mostly dead before Shatter to avoid death"},
				{"Important", "Frontal cleave: Razor Shards"}, {"Legion", "Don't move with Crystalline Ground debuff"}}, -- Rokmora
	[91004] = {{"Important", "First rock phase: after 35s. Subsequent: every 70s"}, {"Important", "There's no trick or weak aura to find where he's hiding. Watch closely"},
				{"TANK", "Sunder is nature damage"}, {"WARRIOR", "Sunder can be spell reflected"}, {"DEATHKNIGHT", "Consider AMS if tanking Sunder"}}, -- Ularogg
	[91005] = {{"Important", "Every add or tank eaten by boss buffs her melee damage by 50%"}, {"Important", "Ranged should stand 20-30 yards from the boss to drop the sticky green pools there"},
			{"Important", "During Spiked Tongue the tank can use the puddles to avoid being eaten"}, {"Important", "Naraxas attacks nearby allies when spiked tongue ends. Don't be within 10 yards until tank is"}}, -- Naraxas
	[91007] = {{"Important", "Must be faced away from the party and any Crystal Walls"}, {"Important", "Magma wave is deadly and you must have a wall between you and boss to avoid a roasting"},
			{"Important", "Magma sculptors spawn where players are standing. Run them into walls to stun them"}, {"Legion", "Walls don't block line of sight. Ranged / Healers can hide early"}}, -- Dargrul
	-------------0-------------
		
	
	-- Cathedral of Eternal Night
	[119952] = {{"Interrupts", "Interrupt: Shadow Wail (shield) or drag mobs away from it"}}, -- Felguard Destroyer
	[120550] = {{"Important", "Outrange: Fel Strike (30 yards)"}}, -- Wrathguard Invader
	[118704] = {{"Important", "Dodge: Shadow Wave (huge cone with slow cast)"}}, -- Dul'zak
	[119923] = {{"Interrupts", "Interrupt: Demonic Mending (AoE heal)"}}, -- Helblaze Soulmender
	[118700] = {{"Important", "Pop defensives and keep stunned. Will leap on random allies"}}, -- Felblight Stalker
	[119930] = {{"Legion", "Frontal Cleave"}}, -- Dreadwing
	[120366] = {{"Interrupts", "Interrupt(!): Alluring Aroma (Mind Control)"}}, -- Hellblaze Temptress
	[119978] = {{"Important", "Will Fixate a player and explode on death. Kite"}}, -- Fulminating Lasher
	[118703] = {{"Interrupts", "Interrupt: Blistering Rain (Channeled AoE)"}, {"Interrupts", "Interrupt: Fel Rejuvenation (Heal)"}}, -- Felborne Botanist
	[118716] = {}, -- Bilespray Lasher
	[119977] = {{"Interrupts", "Stun Interrupt: Choking Vines (or run away)"}}, -- Stranglevine Lasher
	[118717] = {{"Interrupts", "Interrupt: Fel Bolt (ST Nuke). AoE stuns / silences recommended"}}, -- Helblaze Imp
	[118719] = {{"Important", "Kill the Arcane Tomes or they'll become a nasty arcane minion"}}, -- Wyrmtongue Scavenger
	[118723] = {{"Important", "Face away from the mob during Blinding Glare"},
				{"HEALER", "Healing CD: Focused Destruction (heavy AoE damage)"}}, -- Gazerax
	[120274] = {}, -- Felstrider Magus
	[118706] = {{"HEALER", "Dispel: Sinister Fangs deals (heavy ticking damage)"}}, -- Necrotic Spiderling
	[118712] = {{"Important", "Nasty frontal cleave"}}, -- Felstrider Enforcer
	[118705] = {{"Important", "Will teleport behind someone before casting Venom Storm"}, {"Important", "Adjusts to face a player before unleashing. Watch carefully"}}, -- Nal'asha
	[120374] = {{"Interrupts", "Interrupt: Shadow Wail (shield) or drag mobs away from it"}}, -- Felguard Destroyer
	[118690] = {{"Important", "Outrange: Fel Strike (30 yards)"}}, -- Wrathguard Invader
	[118724] = {{"Legion", "Conjures bubble that gives +50% haste but deals heavy damage"}, {"Legion", "On high keys you probably want to avoid standing inside"}}, -- Helblaze Felbringer
	[120556] = {{"Legion", "Frontal Cleave"}}, -- Dreadwing
	[120405] = {{"Legion", "Frontal Cleave"}}, -- Dreadwing
	[118714] = {{"Interrupts", "Interrupt(!): Alluring Aroma (Mind Control)"}}, -- Hellblaze Temptress
	[121318] = {{"Important", "Fixates a player and explodes on death"}}, -- Fulminating Lasher
	[121569] = {{"Interrupts", "Stun Interrupt: Lumbering Crash (Heavy AoE)"}}, -- Vilebark Walker
	[121711] = {}, -- Bilespray Lasher
	[120371] = {{"Interrupts", "Interrupt: Fel Bolt (ST Nuke). AoE stuns / silences recommended"}}, -- Helblaze Imp
	[118713] = {{"Important", "The spinning green orb will one shot you. Stand at distance"}}, -- Felstrider Orbcaster
	[121553] = {{"Interrupts", "Interrupt: Dread Scream"}, {"Legion", "Frontal Cleave"}}, -- Dreadhunter
	---Bosses
	[117193] = {{"Important", "Run out of choking vines > target adds > target boss"}, {"Important", "Don't let flowers touch you!"}, {"Legion", "Flowers are vulnerable to CC"}}, -- Agronox
	[117194] = {{"Important", "Don't let the boss hit the south west bookcase if possible"}, {"Legion", "Charge: You can pop a full immunity instead of hiding behind a bookcase"}}, -- Thrashbite
	[119542] = {{"Important", "Coordinate DPS between portals to kill both before they finish cast"}, {"Important", "Mistresses have a knockback. Keep them away from shield"}, 
				{"TANK", "Boss will cleave. Always face away from the shield"}}, -- Domatrax (first ID)
	[118804] = {{"Important", "Coordinate DPS between portals to kill both before they finish cast"}, {"Important", "Mistresses have a knockback. Keep them away from shield"}, 
				{"TANK", "Boss will cleave. Always face away from the shield"}}, -- Domatrax (second ID)
	[120793] = {{"Important", "Move Demonic Upheaval to the side of the room"}, {"Important", "Stay spread to avoid extra Dark Solitude damage"}, 
				{"Important", "P2: Clear adds clockwise as a group"}, {"HEALER", "Damage is heavy and spiky. Save your CD's for P2"}}, -- Mephistroth
	-------------0--------------
	
	
	-- Court of Stars
	[105705] = {{"Interrupts", "Interrupt: Charged Blast"}}, -- Bound Energy
	[105704] = {{"Interrupts", "Interrupt: Drain Magic"}}, -- Arcane Manifestation
	[104247] = {{"Interrupts", "Interrupt: Nightfall Orb"}}, -- Duskwatch Arcanist
	[104246] = {{"Important", "Cone frontal cleave (visible)"}}, -- Duskwatch Guard
	[111563] = {{"Important", "Cone frontal cleave (visible)"}}, -- Duskwatch Guard
	[104270] = {{"Interrupts", "Interrupt: Charging Station (ignore if construct is alone)"}, {"Interrupts", "Interrupt: Suppress (Can also be dispelled)"}}, -- Guardian Construct
	[105703] = {{"Important", "Explodes on death!"}}, -- Mana Wyrm
	[105699] = {{"Important", "Spread out to avoid multiple people getting hit by Mana Fang"}, {"Important", "You can stun or knock the cat back during the leap"}, 
				{"HEALER", "Dispel the large DoT the cat leaves after a jump"}}, -- Mana Saber
	[104251] = {{"Important", "Chucks torch at first target. Let tank pull"}, {"Important", "Use CC and burst damage to stop sentry ringing bell"}}, -- Duskwatch Sentry
	[104277] = {{"Important", "Creates puddles on floor. Dont stand in them"}}, -- Legion Hound
	[104295] = {{"Interrupts", "Interrupt: All casts. Use AoE stuns and kill quickly"}}, -- Blazing Imp
	[105715] = {{"Interrupts", "Stun / Knockback Interrupt: Eye Storm"}, {"HEALER", "This mob hurts. Keep the party topped up"}}, -- Watchful Inquisitor
	[104278] = {{"Important", "Line of sight the Fel Detonation cast if not tank. It hurts"}}, -- Felbound Enforcer
	[104300] = {{"HEALER", "Dispel: Bewitch"}}, -- Shadow Mistress
	
	-- Mini Bosses
	[104275] = {{"Important", "Beware Whirling Blades (AoE attack)"}}, -- Imacut'ya
	[104274] = {{"DEFENSIVES", "Defensive: Disintegration Beam"}, {"HEALER", "Drop big heals on the Beam target"}}, -- Baalgar
	[104273] = {{"Important", "Dodge: Shockwave (frontal cleave)"}, {"HEALER", "Mob does nothing. Practice DPS'ing"}}, -- Jazshariu
	[108151] = {{"Important", "Face away from the party since Carrion Swarm is a frontal cone"}, {"Important", "On Fortified Shadowbolt Volley REALLY hurts. Consider a defensive"}},  -- Gerenth the Vile
	
	---Bosses
	[104215] = {{"Important", "Give Resonant Slash a wide berth"}, {"Important", "Leave one Signal Beacon up before you engage"}, {"HEALER", "Dispel Arcane Lockdown. Contribute DPS"}}, -- Gerdo
	[104217] = {{"Important", "Stack before Infernal Eruption to auto-group imps"}, {"Interrupts", "Interrupt: Withering Soul, Imps"}, {"HEALER", "Big Persistent damage. Use CDs regularly"}}, -- Talixae
	[104218] = {{"Important", "Stack to one side before Blade Surge to keep images together"}, {"Legion", "Wear Avoidance gear if possible"}, {"HEALER", "Gear to maximise healing in 5s period"},
				{"HEALER", "Healing CD: Slicing Maelstrom (every 25s)"}, {"HEALER", "Focus. You've got this."}}, -- Melandrus
	----------------0-----------------
	
	
	[0] = {{"-"}}	
	
}

-- Color code information for the different types of tips:
-- Important:	Green
-- Interrupt:	Orange
-- Healer Note: Light Blue
-- Blank:		Default Blizzard color
local tipsColors = {
	["Legion"] = {0.8, 0.8, 0.8},
	["Important"] = {1,0.57,0.12},
	["Defensives"] = {1,0.57,0.12},
	["Interrupts"] = {0.37,0.92,1},
	["PriorityTargets"] = {1, 1, 0},
	["Fluff"] = {1, 1, 1},
	["Advanced"] = {0.75, 0.55, 0.35},
	
	["HEALER"] = {0.2, 0.98, 0.25},
	["TANK"] = {0.8, 0.6, 0},	
	["DAMAGE"] = {1, 0.72, 0.68},
	
	
	--["DEMONHUNTER"] = {0.64, 0.19, 0.79},
	["DEMONHUNTER"] = {0.68, 0.22, 0.84},
	["DRUID"] = {1, 0.49, 0.04},
	["DEATHKNIGHT"] = {0.77, 0.12, 0.23},
	["HUNTER"] = {0.67, 0.83, 0.45},
	["MAGE"] = {0.41, 0.8, 0.94},
	["MONK"] = {0, 1, 0.59},
	["PALADIN"] = {0.96, 0.55, 0.73},
	["PRIEST"] = {1, 1, 1},
	["ROGUE"] = {1, 0.96, 0.41},
	["SHAMAN"] = {0, 0.44, 0.87},
	["WARRIOR"] = {0.78, 0.61, 0.43},
	["WARLOCK"] = {0.58, 0.51, 0.79}

}

local roleList = {
	TANK = true,
	HEALER = true,
	DAMAGE = true,
}

local classList =  {
	DEMONHUNTER = true,
	DRUID = true,
	DEATHKNIGHT = true,
	HUNTER = true,
	MAGE = true,
	MONK = true,
	PALADIN = true,
	PRIEST = true,
	ROGUE = true,
	SHAMAN = true,
	WARRIOR = true,
	WARLOCK = true
}

local iconList = {
	PriorityTargets = "ability_hunter_markedfordeath",
	Interrupts = "ability_kick",
	Defensives = "inv_shield_05",
	Important = "ability_dualwield",
	Legion = "ability_dualwield",
	
	DEMONHUNTER = "classicon_demonhunter",
	DRUID = "classicon_druid",		
	DEATHKNIGHT = "classicon_deathknight",
	HUNTER = "classicon_hunter",
	MAGE = "classicon_mage",
	MONK = "classicon_monk",
	PALADIN = "classicon_paladin",
	PRIEST = "classicon_priest",
	ROGUE = "classicon_rogue",
	SHAMAN = "classicon_shaman",
	WARRIOR = "classicon_warrior",
	WARLOCK = "classicon_warlock",
	
	HEALER = "spell_nature_healingtouch",
	TANK = "inv_shield_06",
	DAMAGE = "inv_sword_01"

}

addon.acceptedDungeons = {
	-- BFA
	[1038] = true, -- Temple of Sethraliss
	[1043] = true, -- Temple of Sethraliss
	[934] = true, -- Atal'Dazar (MapUI = 934,  instance = 968))
	[935] = true, -- Atal'Dazar (MapUI = 934,  instance = 968))
	[936] = true, -- Freehold
	[1004] = true, -- Kings' Rest
	[1039] = true, -- Shrine of the Storm
	[1040] = true, -- Shrine of the Storm
	[1161] = true, -- Siege of Boralus
	[1162] = true, -- Siege of Boralus
	[1010] = true, -- Motherlode
	[1041] = true, -- Underrot
	[1042] = true, -- Tol Dagor
	[974] = true, -- Tol Dagor
	[975] = true, -- Tol Dagor
	[976] = true, -- Tol Dagor
	[977] = true, -- Tol Dagor
	[978] = true, -- Tol Dagor
	[979] = true, -- Tol Dagor (+1169!?)
	[980] = true, -- Tol Dagor
	[1169] = true, -- Tol Dagor
	[1015] = true, -- Waycrest Manor
	[1016] = true, -- Waycrest Manor
	[1017] = true, -- Waycrest Manor
	[1018] = true, -- Waycrest Manor
	
	[1148] = true, -- Uldir
	[1149] = true, -- Uldir
	[1150] = true, -- Uldir
	[1151] = true, -- Uldir
	[1152] = true, -- Uldir
	[1153] = true, -- Uldir
	[1154] = true, -- Uldir
	[1155] = true, -- Uldir
	
	-- Legion
	[751] = true, -- Blackrook Hold
	[752] = true, -- Blackrook Hold
	[753] = true, -- Blackrook Hold
	[754] = true, -- Blackrook Hold
	[755] = true, -- Blackrook Hold
	[756] = true, -- Blackrook Hold
	[845] = true, -- Cathedral of Endless Night
	[846] = true, -- Cathedral of Endless Night
	[847] = true, -- Cathedral of Endless Night
	[848] = true, -- Cathedral of Endless Night
	[849] = true, -- Cathedral of Endless Night
	[761] = true, -- Court of Stars
	[762] = true, -- Court of Stars
	[763] = true, -- Court of Stars
	[733] = true, -- Darkheart Thicket
	[790] = true, -- Eye of Azshara
	[703] = true, -- Halls of Valor
	[704] = true, -- Halls of Valor
	[705] = true, -- Halls of Valor
	[829] = true, -- Halls of Valor
	[1] = true, -- Maw of Souls
	[731] = true, -- Neltharion's Lair
	[794] = true, -- Return to Karazhan
	[795] = true, -- Return to Karazhan
	[796] = true, -- Return to Karazhan
	[797] = true, -- Return to Karazhan
	[809] = true, -- Return to Karazhan
	[810] = true, -- Return to Karazhan
	[811] = true, -- Return to Karazhan
	[812] = true, -- Return to Karazhan
	[813] = true, -- Return to Karazhan
	[814] = true, -- Return to Karazhan
	[815] = true, -- Return to Karazhan
	[816] = true, -- Return to Karazhan
	[817] = true, -- Return to Karazhan
	[818] = true, -- Return to Karazhan
	[819] = true, -- Return to Karazhan
	[820] = true, -- Return to Karazhan
	[821] = true, -- Return to Karazhan
	[822] = true, -- Return to Karazhan
	[903] = true, -- Seat of the Triumvirate
	[749] = true, -- Arcway
	[677] = true, -- Vault of the Wardens
	[678] = true, -- Vault of the Wardens
	[679] = true, -- Vault of the Wardens
	[710] = true, -- Vault of the Wardens
	[711] = true, -- Vault of the Wardens
	[712] = true, -- Vault of the Wardens
	
	[1] = true -- Bookstop
	
}

local function RGBToHex(r, g, b)
	r = r <= 1 and r >= 0 and r or 0
	g = g <= 1 and g >= 0 and g or 0
	b = b <= 1 and b >= 0 and b or 0
	return string.format("%02x%02x%02x", r*255, g*255, b*255)
end


-- The addline function hooks into the WoW API to add a line to an NPC's tooltip.
local function addLine(tooltip, tips, type, role, class)
	local found = false
	-- Check if we already added to this tooltip. This prevents writing the same thing to the tooltip multiple times.
	for i = 1,15 do	
		local frame = _G[tooltip:GetName() .. "TextLeft" .. i]
		local text
		if frame then text = frame:GetText() end
		if text and text == type then found = true break end
	end
	

	-- If we haven't added to the NPC tooltip yet, proceed.
	if not found then
		-- Remember we are passing in an array {"HEALER", "HealersOnly"}} in our example so we'll iterate through each pair here.
		for i, tip in ipairs(tips) do
			-- tip[1] is the category indicator and we'll use that to decide whether we should show this tooltip or not.
			
			if QEConfig[tip[1]] or tip[1] == "Legion" or -- Show if tip type turned on, or if it's using an old Legion tag.
				(tip[1] == role and QEConfig["RoleChoice"] == "Show my role only") or  -- Show if role matches the tip, and the user wants to see their role only.
				(roleList[tip[1]] and QEConfig["RoleChoice"] == "Show all roles") or -- Show if role tip and user wants to see all.
				
				(tip[1] == class and QEConfig["ClassChoice"] == "Show my class only") or
				(classList[tip[1]] and QEConfig["ClassChoice"] == "Show all classes") then
				
					local r,g,b = tipsColors[tip[1]][1], tipsColors[tip[1]][2], tipsColors[tip[1]][3]
					
					if iconList[tip[1]] then -- Check if Icon exists
						tooltip:AddLine((("|T%s:0|t"):format("Interface\\Icons\\"..iconList[tip[1]])..tip[2]),r,g,b)
					elseif tipsColors[tip[1]] then -- Check if color exists
						tooltip:AddLine(tip[2],r,g,b)
					else -- There is no icon or color assigned to the category so a plain line will be added instead.
						tooltip:AddLine(tip[2])
					end
			end
		end
		
		tooltip:Show() -- This is necessary to actually update the tooltip whenever we add anything to it.
	end
end

-- The addline function hooks into the WoW API to add a line to an NPC's tooltip.
local function addFrameLine(tooltip, tips, type, role, class)
	local found = false
	-- Check if we already added to this tooltip. This prevents writing the same thing to the tooltip multiple times.
	if not QE_HeaderPanel:IsVisible() then addon:setEnabled() end
	
	for i = 1,15 do	
		local frame = _G[tooltip:GetName() .. "TextLeft" .. i]
		local text
		if frame then text = frame:GetText() end
		if text and text == type then found = true break end
	end
	

	-- If we haven't added to the NPC tooltip yet, proceed.
	if not found then
		-- Remember we are passing in an array {"HEALER", "HealersOnly"}} in our example so we'll iterate through each pair here.
		for i, tip in ipairs(tips) do
			-- tip[1] is the category indicator and we'll use that to decide whether we should show this tooltip or not.

			if QEConfig[tip[1]] or tip[1] == "Legion" or -- Show if tip type turned on, or if it's using an old Legion tag.
				(tip[1] == role and QEConfig["RoleChoice"] == "Show my role only") or  -- Show if role matches the tip, and the user wants to see their role only.
				(roleList[tip[1]] and QEConfig["RoleChoice"] == "Show all roles") or -- Show if role tip and user wants to see all.
				
				(tip[1] == class and QEConfig["ClassChoice"] == "Show my class only") or
				(classList[tip[1]] and QEConfig["ClassChoice"] == "Show all classes") then
				
					local r,g,b = tipsColors[tip[1]][1], tipsColors[tip[1]][2], tipsColors[tip[1]][3]
					local lineHex = RGBToHex(r, g, b)
					local tipBase = QE_TipText:GetText() or ""
					
					if iconList[tip[1]] then -- Check if Icon exists
						--tooltip:AddLine((("|T%s:0|t"):format("Interface\\Icons\\"..iconList[tip[1]])..tip[2]),r,g,b)
						
						QE_TipText:SetText(tipBase .. ((("|T%s:0|t"):format("Interface\\Icons\\"..iconList[tip[1]]).. "|cff" .. lineHex .. " " .. tip[2] .. "|r" .. "\n")))
						
					elseif tipsColors[tip[1]] then -- Check if color exists
						QE_TipText:SetText(tipBase .. "|cff" .. lineHex .. " " .. tip[2] .. "|r" .. "\n")
						--tooltip:AddLine(tip[2],r,g,b)
					else -- There is no icon or color assigned to the category so a plain line will be added instead.
						QE_TipText:SetText(tipBase .. " " .. tip[2] .. "\n")
						--tooltip:AddLine(tip[2])
					end
			end
		end
		
		--tooltip:Show() -- This is necessary to actually update the tooltip whenever we add anything to it.
	end
end




-- This starts the ball rolling. This function is called whenever an NPC tooltip is moused over.
GameTooltip:HookScript("OnTooltipSetUnit", function(self)
	
  if C_PetBattles.IsInBattle() then return end -- Tiny Snippet to disable the mod while pet battling.
  if QEConfig.ShowFrame == "Show in separate frame" and QEConfig.TargetTrigger == "Show targeted mob" then return end -- Tiny Snippet to disable the tooltip hook if targeting is selected instead.
  if QEConfig.ShowFrame == "Show in separate frame" and QEConfig.TargetTrigger == "Show mouseover" and QE_onBoss then return end -- Disable tooltip hook if player is using frame + Mouseover but is on boss
  if not addon:checkInstance() then return end -- We won't be adding anything to tooltips if the addon is disabled in the current instance.
  
  local unit = select(2, self:GetUnit()) -- This grabs information about the unit we have targeted.
  local role = UnitGroupRolesAssigned("player")
  local _, class, _ = UnitClass("player")
  
	if unit then
		local guid = UnitGUID(unit) or ""
		local id = tonumber(guid:match("-(%d+)-%x+$"), 10) -- This is the mobs ID. Don't worry about the regex.
		local name = UnitName(unit) or ""
		
		-- Check our dictionary to see if we actually have any tips for the mob targeted.
		if tipsMap[id] then
			-- Don't remove active tip if you accidentally mouse over ally.
			QE_TipText:SetText("")
			QE_MobName:SetText(name)	
		
			if QEConfig.ShowFrame == "Show in separate frame" then addFrameLine(QE_TipPanel, tipsMap[id], "NPC ID:", role, class) 
			else addLine(GameTooltip, tipsMap[id], "NPC ID:", role, class)
			end
		
		elseif UnitIsEnemy(unit, "player") then
			QE_TipText:SetText("")
			QE_MobName:SetText(name)
		end
		
	
  end 
end)

-- This starts the ball rolling on a mob target.
function addon:getTarget(mobType)
  if C_PetBattles.IsInBattle() then return end -- Tiny Snippet to disable the mod while pet battling.
  
  local guid = UnitGUID(mobType) -- This grabs information about the unit we have targeted.
  
  local role = UnitGroupRolesAssigned("player")
  local _, class, _ = UnitClass("player")
  
  --print("GUID: " .. UnitGUID("boss1"))
  
  if guid then
    --local guid = UnitGUID(unit) or ""
    local id = tonumber(guid:match("-(%d+)-%x+$"), 10) -- This is the mobs ID. Don't worry about the regex.
	local name = UnitName(mobType) or ""
	
	-- Check our dictionary to see if we actually have any tips for the mob targeted.
	if tipsMap[id]  then
		-- Don't remove active tip if you accidentally mouse over ally.
		
		QE_TipText:SetText("")		
		QE_MobName:SetText(name)
		addFrameLine(QE_TipPanel, tipsMap[id], "NPC ID:", role, class)
		--addLine(GameTooltip, tipsMap[id], "NPC ID:", role, class)		

	elseif 	UnitIsEnemy(mobType, "player") then
		QE_TipText:SetText("")
		QE_MobName:SetText(name)
		
	end
	

	
  end
end


