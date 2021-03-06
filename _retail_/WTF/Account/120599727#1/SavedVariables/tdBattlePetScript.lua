
TD_DB_BATTLEPETSCRIPT_GLOBAL = {
	["profileKeys"] = {
		["Lachrymas - Silvermoon"] = "Default",
		["Qsilver - Silvermoon"] = "Default",
	},
	["global"] = {
		["version"] = 80100.01,
		["scripts"] = {
			["Rematch"] = {
				[154913] = {
					["name"] = "Shadowspike Lurker",
					["code"] = "use(Black Claw:919) [!enemy(Shadowspike Lurker:2726).aura(Black Claw:918).exists]\nuse(Flock:581) [enemy(Shadowspike Lurker:2726).aura(Black Claw:918).exists]\n\nchange(Veilwatcher Hatchling:1596) [self(Ikky:1532).dead]\n\nuse(Predatory Strike:518)",
				},
				[154917] = {
					["name"] = "Mindshackle",
					["code"] = "use(Primal Cry:920)\nuse(Black Claw:919) [!enemy(Mindshackle:2730).aura(Black Claw:918).exists]\nuse(Hunting Party:921)\n\nchange(#2) [self(#1).dead]\n\nuse(Twilight Meteorite:1960) [ enemy(Mindshackle:2730).hp < 579]\nuse(Twilight Fire:1890)\nuse(Twilight Meteorite:1960)",
				},
				[154921] = {
					["name"] = "Giant Opaline Conch",
					["code"] = "quit [self(Zandalari Anklerender:1211).dead & round = 3]\n\nuse(Black Claw:919) [!enemy(Giant Opaline Conch:2734).aura(Black Claw:918).exists]\nuse(Hunting Party:921)\n\nchange(Twilight Clutch-Sister:2081)\n\nuse(Twilight Meteorite:1960)\nuse(Tail Sweep:122)\n\nuse(Predatory Strike:518) [enemy(Giant Opaline Conch:2734).hpp <= 25]\nuse(Peck:112)",
				},
				[154925] = {
					["name"] = "Creakclank",
					["code"] = "use(Peck:112) [enemy(Creakclank:2738).aura(Shattered Defenses:542).exists]\nuse(Black Claw:919) [!enemy(Creakclank:2738).aura(Black Claw:918).exists]\nuse(Flock:581) [enemy(Creakclank:2738).aura(Black Claw:918).exists]\nuse(Peck:112)\nuse(Savage Talon:1370)\n\nchange(Twilight Clutch-Sister:2081) [self(Foulfeather:2438).dead & enemy(Creakclank:2738).aura(Shattered Defenses:542).exists & enemy(Creakclank:2738).aura(Black Claw:918).exists]\n\nuse(Twilight Fire:1890)\nuse(Twilight Meteorite:1960)\nuse(Phase Shift:764)\n\nchange(Ikky:1532)\nchange(Twilight Clutch-Sister:2081)",
				},
				[154929] = {
					["name"] = "Unit 17",
					["code"] = "use(Black Claw:919) [!enemy(Unit 17:2742).aura(Black Claw:918).exists]\nuse(Flock:581)\n\nchange(#2) [self(#1).dead]",
				},
				[154910] = {
					["name"] = "Prince Wiggletail",
					["code"] = "quit [self(#1).dead & round=4]\nquit [self(#2).dead & round = 7]\n\nuse(Primal Cry:920) [!enemy(Prince Wiggletail:2723).aura(Black Claw:918).exists & !enemy(Prince Wiggletail:2723).aura(Dodge:311).exists]\nuse(Black Claw:919) [!enemy(Prince Wiggletail:2723).aura(Black Claw:918).exists]\nuse(Hunting Party:921)\nuse(Flock:581)\n\nchange(#2) [self(#1).dead]\nchange(#2) [enemy(Prince Wiggletail:2723).aura(Dodge:311).exists & enemy(Prince Wiggletail:2723).ability(Tidal Wave X:2309).usable]",
				},
				[154914] = {
					["name"] = "Pearlhusk Crawler",
					["code"] = "use(Black Claw:919) [!enemy(Pearlhusk Crawler:2727).aura(Black Claw:918).exists]\nuse(Flock:581) [enemy(Pearlhusk Crawler:2727).aura(Black Claw:918).exists]\n\nchange(Twilight Clutch-Sister:2081) [self(Ikky:1532).dead]\n\nuse(Twilight Meteorite:1960)\nuse(Twilight Fire:1890)\n\nuse(Predatory Strike:518)\n\nstandby",
				},
				[154918] = {
					["name"] = "Kelpstone",
					["code"] = "use(Black Claw:919) [!enemy(Kelpstone:2731).aura(Black Claw:918).exists]\nuse(Flock:581)\n\nchange(Zandalari Anklerender:1211) [self(Ikky:1532).dead]\n\nuse(Hunting Party:921)",
				},
				[154922] = {
					["name"] = "Gnomefeaster",
					["code"] = "use(Black Claw:919) [enemy(Gnomefeaster:2735).aura(Black Claw:918).duration <= 1]\nuse(Flock:581)\n\nchange(#2) [self(#1).dead]",
				},
				[154926] = {
					["name"] = "CK-9 Micro-Oppression Unit",
					["code"] = "quit [self(Zandalari Anklerender:1211).dead & round = 2]\n\nuse(Primal Cry:920)\nuse(Black Claw:919) [!enemy(CK-9 Micro-Oppression Unit:2739).aura(Black Claw:918).exists]\n\nchange(Foulfeather:2438) [self(Zandalari Anklerender:1211).dead]\n\nuse(Flock:581) [enemy(CK-9 Micro-Oppression Unit:2739).aura(Black Claw:918).exists]\n\nuse(Phase Shift:764) [enemy(CK-9 Micro-Oppression Unit:2739).ability(Lift-Off X:2333).usable]\nuse(Twilight Fire:1890)\nuse(Twilight Meteorite:1960)",
				},
				[154911] = {
					["name"] = "Chomp",
					["code"] = "use(Primal Cry:920)\nuse(Black Claw:919)\n\nchange(Lil' Bling:1320) [self(Zandalari Anklerender:1211).dead]\n\nuse(Inflation:1002)",
				},
				[154915] = {
					["name"] = "Elderspawn of Nalaada",
					["code"] = "use(Predatory Strike:518)\nuse(Black Claw:919) [!enemy(Elderspawn of Nalaada:2728).aura(Black Claw:918).exists]\nuse(Flock:581)\n\nchange(#2) [self(#1).dead]",
				},
				[154919] = {
					["name"] = "Voltgorger",
					["code"] = "use(Inflation:1002)",
				},
				[154923] = {
					["name"] = "Sputtertube",
					["code"] = "use(Black Claw:919) [!enemy(Sputtertube:2736).aura(Black Claw:918).exists]\nuse(Hunting Party:921) [enemy(Sputtertube:2736).aura(Black Claw:918).exists]\n\nchange(#2) [self(#1).dead]\n\nuse(Twilight Fire:1890)",
				},
				[154927] = {
					["name"] = "Unit 35",
					["code"] = "use(Black Claw:919) [!enemy(Unit 35:2740).aura(Black Claw:918).exists]\nuse(Flock:581)\n\nchange(#2) [self(#1).dead]\n\nuse(Twilight Fire:1890)\nuse(Twilight Meteorite:1960)",
				},
				[154912] = {
					["name"] = "Silence",
					["code"] = "use(Black Claw:919) [!enemy(Silence:2725).aura(Black Claw:918).exists]\nuse(Flock:581) [enemy(Silence:2725).aura(Black Claw:918).exists]\n\nchange(Twilight Clutch-Sister:2081) [self(Foulfeather:2438).dead]\n\nuse(Twilight Fire:1890)\nuse(Twilight Meteorite:1960)",
				},
				[154916] = {
					["name"] = "Ravenous Scalespawn",
					["code"] = "use(Black Claw:919) [!enemy.aura(Black Claw:918).exists]\nuse(Flock:581)\n\nchange(#2) [self(#1).dead]",
				},
				[154920] = {
					["name"] = "Frenzied Knifefang",
					["code"] = "use(Black Claw:919) [!enemy(Frenzied Knifefang:2733).aura(Black Claw:918).exists]\nuse(Flock:581) [enemy(Frenzied Knifefang:2733).aura(Black Claw:918).exists]\n\nchange(#2) [self(#1).dead & enemy(Frenzied Knifefang:2733).aura(Black Claw:918).exists]\nchange(Veilwatcher Hatchling:1596)\n\nuse(Predatory Strike:518)",
				},
				[154924] = {
					["name"] = "Goldenbot XD",
					["code"] = "use(Primal Cry:920)\nuse(Black Claw:919) [!enemy(Goldenbot XD:2737).aura(Black Claw:918).exists]\n\nchange(Foulfeather:2438) [self(Zandalari Anklerender:1211).dead]\n\nuse(Flock:581) [enemy(Goldenbot XD:2737).aura(Black Claw:918).exists]\n\nuse(Phase Shift:764) [enemy(Goldenbot XD:2737).ability(Smoke Cloud:2239).usable]\nstandby [enemy(Goldenbot XD:2737).aura(Dodge:2060).exists]\nuse(Twilight Fire:1890)\nuse(Twilight Meteorite:1960)",
				},
				[154928] = {
					["name"] = "Unit 6",
					["code"] = "use(Black Claw:919) [!enemy(Unit 6:2741).aura(Black Claw:918).exists]\nuse(Flock:581)\n\nchange(Twilight Clutch-Sister:2081) [self(Ikky:1532).dead]\n\nuse(Twilight Fire:1890)\nuse(Twilight Meteorite:1960)",
				},
			},
			["Base"] = {
			},
			["FirstEnemy"] = {
			},
			["AllInOne"] = {
			},
		},
	},
	["profiles"] = {
		["Default"] = {
			["pluginOrders"] = {
				"Rematch", -- [1]
				"Base", -- [2]
				"FirstEnemy", -- [3]
				"AllInOne", -- [4]
			},
		},
	},
}
