local name,addon = ...

local data={}
addon.LibTaxiData = data

data.taxipoints = {
	[1]={
		['Ashenvale']={
					{name="Astranaar",faction="A",npc="Daelyshia",npcid=4267,x=34.4,y=48.0},
					{name="Blackfathom Camp",faction="A",npc="Solais",npcid=34374,x=18.1,y=20.6},
					{name="Forest Song",faction="A",npc="Suralais Farwind",npcid=22935,x=85.1,y=43.5},
					{name="Hellscream's Watch",faction="H",npc="Thraka",npcid=34429,x=38.1,y=42.3},
					{name="Silverwind Refuge",faction="H",npc="Wind Tamer Shoshok",npcid=34943,x=49.3,y=65.3},
					{name="Splintertree Post",faction="H",npc="Vhulgra",npcid=12616,x=73.3,y=61.7},
					{name="Stardust Spire",faction="A",npc="Myre Moonglide",npcid=34378,x=35.0,y=72.1},
					{name="Zoram'gar Outpost",faction="H",npc="Andruk",npcid=11901,x=11.2,y=34.4},
		},
		['Azshara']={
					{name="Bilgewater Harbor",faction="H",npc="Kroum",npcid=8610,x=52.9,y=49.9},
					{name="Northern Rocketway",faction="H",npc="Blitz Blastospazz",npcid=43328,x=66.5,y=20.9},
					{name="Southern Rocketway",faction="H",npc="Friz Groundspin",npcid=37005,x=51.5,y=74.3},
					{name="Valormok",faction="H",npc="Kroum",npcid=36728,x=14.4,y=65.0},
		},
		['Azuremyst Isle']={
					{name="Azure Watch",faction="A",npc="Zaldaan",npcid=43991,x=49.7,y=49.1},
		},
		['Bloodmyst Isle']={
					{name="Blood Watch",faction="A",npc="Laando",npcid=17554,x=57.9,y=53.9},
		},
		['Darkshore']={
					{name="Grove of the Ancients",faction="A",npc="Delanea",npcid=33253,x=44.4,y=75.5},
					{name="Lor'danel",faction="A",npc="Teldira Moonfeather",npcid=3841,x=51.7,y=17.6},
					{name="Darkshore Cat 1",comment="name needs to be like that to connect a taxi tag. extitle can not be title b/c then only title gets put on the Pointer",extitle="Lor'danel",faction="A",npc="Nightsaber Rider",npcid=33359,x=52.2,y=22.3,taxioperator="blackcat"},
					{name="Darkshore Cat 2",extitle="Lor'danel",faction="A",npc="Nightsaber Rider",npcid=33359,x=51.0,y=22.7,taxioperator="blackcat"},
					{name="Darkshore Cat 3",extitle="Ruins of Mathystra",faction="A",npc="Nightsaber Rider",npcid=33359,x=58.6,y=20.0,taxioperator="blackcat"},
					{name="Darkshore Cat 4",extitle="Shatterspear Vale",faction="A",npc="Nightsaber Rider",npcid=33359,x=69.1,y=18.9,taxioperator="blackcat"},
					{name="Darkshore Cat 5",extitle="Bashal'Aran",faction="A",npc="Nightsaber Rider",npcid=33359,x=46.9,y=33.2,taxioperator="blackcat"},
		},
		['Darnassus']={
					{name="Darnassus",faction="A",npc="Leora",npcid=40552,x=36.6,y=47.8},
		},
		['Desolace']={
					{name="Ethel Rethor",faction="B",npc="Korrah's Hippogryph",npcid=35562,x=39.07,y=26.94},
					{name="Furien's Post",faction="H",npc="Narimar",npcid=35315,x=44.27,y=29.67},
					{name="Karnum's Glade",faction="B",npc="Lastrea Greengale",npcid=35478,x=57.72,y=49.75},
					{name="Nijel's Point",faction="A",npc="Baritanas Skyriver",npcid=6706,x=64.7,y=10.6},
					{name="Shadowprey Village",faction="H",npc="Thalon",npcid=6726,x=21.60,y=74.13},
					{name="Thargad's Camp",faction="A",npc="Moira Steelwing",npcid=35481,x=36.8,y=71.7},
					{name="Thunk's Abode",faction="B",npc="Thunk's Wyvern",npcid=35556,x=70.66,y=32.89},
		},
		['Durotar']={
					{name="Razor Hill",faction="H",npc="Burok",npcid=41140,x=53.1,y=43.6},
					{name="Sen'jin Village",faction="H",npc="Handler Marnlek",npcid=41142,x=55.4,y=73.3},
		},
		['Dustwallow Marsh']={
					{name="Brackenwall Village",faction="H",npc="Shardi",npcid=11899,x=35.6,y=31.8},
					{name="Mudsprocket",faction="B",npc="Dyslix Silvergrub",npcid=40358,x=42.8,y=72.4},
					{name="Theramore",comment="achievemissing: Only include this flight point if an achievement is *missing*. Used because this flight point disappears when Theramore is destroyed.",faction="A",npc="Baldruc",npcid=4321,x=67.4,y=51.4,achievemissing=7523}
		},
		['Felwood']={
					{name="Emerald Sanctuary",faction="B",npc="Gorrim",npcid=22931,x=51.5,y=80.9},
					{name="Talonbranch Glade",faction="A",npc="Mishellena",npcid=12578,x=60.5,y=25.3},
					{name="Whisperwind Grove",faction="B",npc="Hanah Southsong",npcid=43073,x=43.6,y=28.7},
					{name="Wildheart Point",faction="B",npc="Chyella Hushglade",npcid=43079,x=44.3,y=61.9},
					{name="Irontree Clearing",faction="H",npc="Dirzak Pryocrank",npcid=43085,x=56.4,y=8.4},
		},
		['Feralas']={
					{name="Camp Ataya",faction="H",npc="Tono",npcid=40473,x=41.54,y=15.46},
					{name="Camp Mojache",faction="H",npc="Shyn",npcid=39898,x=75.4,y=44.3},
					{name="Dreamer's Rest",faction="A",npc="Selor",npcid=40966,x=50.2,y=16.7},
					{name="Feathermoon",faction="A",npc="Irela Moonfeather",npcid=41383,x=46.8,y=45.3},
					{name="Shadebough",faction="A",npc="Seyala Nightwisp",npcid=40367,x=77.3,y=56.8},
					{name="Stonemaul Hold",faction="H",npc="Mergek",npcid=41605,x=51.00,y=48.42},
					{name="Tower of Estulan",faction="A",npc=" Aryenda",npcid=41580,x=57.1,y=54.0},
		},
		['Moonglade']={
					{name="Moonglade",faction="A",npc="Sindrayl",npcid=10897,x=48.1,y=67.3},
					{name="Moonglade",faction="H",npc="Faustron",npcid=12740,x=32.1,y=66.6},
					{name="Nighthaven",faction="H",class="DRUID",npc="Bunthen Plainswind",npcid=11798,x=44.2,y=45.6},
					{name="Nighthaven",faction="A",class="DRUID",npc="Silva Fil'naveth",npcid=11800,x=44.2,y=45.8},
		},
		['Mount Hyjal']={
					{name="Gates of Sothann",faction="B",quest=25608,npc="Althera",npcid=43549,x=71.6,y=75.3},
					{name="Grove of Aessina",faction="B",npc="Elizil Wintermoth",npcid=41860,x=19.6,y=36.4},
					{name="Nordrassil",faction="B",npc="Fayran Elthas",npcid=41861,x=62.1,y=21.6},
					{name="Sanctuary of Malorne",faction="B",quest=25372,npc="Ranela Featherglen",npcid=54393,x=27.75,y=63.64},
					{name="Shrine of Aviana",faction="B",npc="Dinorae Swiftfeather",npcid=50084,x=41.2,y=42.6},
		},
		['Mulgore']={
					{name="Bloodhoof Village",faction="H",npc="Tak",npcid=40809,x=47.4,y=58.6},
		},
		['Northern Barrens']={
						{name="Nozzlepot's Outpost",faction="H",npc="Gazrix",npcid=40558,x=62.31,y=17.12},
					{name="Ratchet",faction="B",npc="Bragok",npcid=16227,x=69.1,y=70.7,factionid=470,factionstanding=3},
					{name="The Crossroads",faction="H",npc="Devrak",npcid=3615,x=48.6,y=58.6},
					{name="The Mor'Shan Ramparts",faction="H",npc="Gort Goreflight",npcid=34927,x=41.98,y=15.87},
		},
		['Orgrimmar']={
					{name="Orgrimmar",faction="H",npc="Doras",npcid=3310,x=49.7,y=59.2},
		},
		['Silithus']={
					{name="Cenarion Hold",faction="A",npc="Cloud Skydancer",npcid=15177,x=54.4,y=32.7},
					{name="Cenarion Hold",faction="H",npc="Runk Windtamer",npcid=15178,x=52.8,y=34.6},
		},
		['Southern Barrens']={
					{name="Desolation Hold",faction="H",npc="Crador",npcid=39330,x=41.24,y=70.76},
					{name="Fort Triumph",faction="A",npc="Steve Stevenson",npcid=39211,x=49.2,y=67.8},
					{name="Honor's Stand",faction="A",npc="John Johnson",npcid=39210,x=38.9,y=10.9},
					{name="Hunter's Hill",faction="H",npc="Unega",npcid=39340,x=39.79,y=20.26},
					{name="Northwatch Hold",faction="A",npc="Bill Williamson",npcid=39212,x=66.4,y=47.1},
					{name="Vendetta Point",faction="H",npc="Lognah",npcid=52060,x=41.55,y=47.60},
		},
		['Stonetalon Mountains']={
					{name="Farwatcher's Glen",faction="A",npc="Ceyora",npcid=35138,x=32.0,y=61.8},
					{name="Mirkfallon Post",faction="A",npc="Fiora Moonsoar",npcid=41240,x=48.6,y=51.5},
					{name="Northwatch Expedition Base Camp",faction="A",npc="Kaluna Songflight",npcid=35136,x=70.9,y=80.6},
					{name="Thal'darah Overlook",faction="A",npc="Teloren",npcid=4407,x=40.1,y=32.0},
					{name="Windshear Hold",faction="A",npc="Allana Swiftglide",npcid=35137,x=58.8,y=54.3},
					{name="Cliffwalker Post",faction="H",npc="Orna Skywatcher",npcid=35141,x=45.11,y=30.87},
					{name="Krom'gar Fortress",faction="H",npc="Kormal the Swift",npcid=35140,x=66.5,y=62.8},
					{name="Sun Rock Retreat",faction="H",npc="Tharm",npcid=4312,x=48.48,y=61.95},
					{name="The Sludgewerks",faction="H",npc="Flok",npcid=41246,x=53.87,y=40.12},
					{name="Malaka'jin",faction="H",npc="Zillane",npcid=35139,x=70.6,y=89.4},
		},
		['Tanaris']={
					{name="Bootlegger Outpost",faction="B",npc="Slick Dropdip",npcid=41214,x=55.9,y=60.6},
					{name="Dawnrise Expedition",faction="H",npc="Raina Sunglide",npcid=41215,x=33.3,y=77.4},
					{name="Gadgetzan",faction="A",npc="Bera Stonehammer",npcid=7823,x=51.4,y=29.5,factionid=369,factionstanding=3},
					{name="Gadgetzan",faction="H",npc="Bulkrek Ragefist",npcid=7824,x=52.0,y=27.6,factionid=369,factionstanding=3},
					{name="Gunstan's Dig",faction="A",npc="Thurda",npcid=40827,x=40.0,y=77.5},
		},
		['Teldrassil']={
					{name="Dolanaar",faction="A",npc="Fidelio",npcid=40553,x=55.5,y=50.4},
					{name="Rut'theran Village",faction="A",npc="Vesprystus",npcid=3838,x=55.4,y=88.4},
		},
		['The Exodar']={
					{name="The Exodar",faction="A",npc="Stephanos",npcid=17555,x=54.5,y=36.3},
		},
		['Thousand Needles']={
					{name="Fizzle & Pozzik's Speedbarge",faction="A",npc="Tilly Topspin",npcid=40768,x=79.2,y=72.0},
					{name="Fizzle & Pozzik's Speedbarge",faction="H",npc="Zazzix Boomride",npcid=40769,x=79.0,y=71.8},
					{name="Westreach Summit",faction="H",npc="Nah'te",npcid=44399,x=11.2,y=11.4},
		},
		['Thunder Bluff']={
					{name="Thunder Bluff",faction="H",npc="Tal",npcid=2995,x=46.8,y=49.8},
		},
		['Uldum']={
					{name="Oasis of Vir'sar",faction="B",npc="Jock Lindsey",npcid=48274,x=26.6,y=8.4},
					{name="Ramkahen",faction="B",npc="Kurzel",npcid=48275,x=56.2,y=33.6},
					{name="Schnottz's Landing",faction="B",npc="Evax Oilspark",npcid=48273,x=22.3,y=64.9},
		},
		['Un\'Goro Crater']={
					{name="Marshal's Stand",faction="B",npc="Gryfe",npcid=10583,x=56.0,y=64.2},
					{name="Mossy Pile",faction="B",npc="Flizzy Coilspanner",npcid=39175,x=44.1,y=40.3},
		},
		['Winterspring']={
					{name="Everlook",faction="A",npc="Maethrya",npcid=11138,x=61.0,y=48.6,factionid=577,factionstanding=3},
					{name="Everlook",faction="H",npc="Yugrek",npcid=11139,x=58.8,y=48.3,factionid=577,factionstanding=3},
		},
	},
	[2]={
		['Abyssal Depths']={
					{name="Darkbreak Cove",faction="A",npc="Swift Seahorse",npcid=40866,x=56.9,y=75.5,taxioperator="seahorse"},
					{name="Tenebrous Cavern",faction="H",npc="Swift Seahorse",npcid=40873,x=53.9,y=59.6,taxioperator="seahorse"},
		},
		['Arathi Highlands']={
					{name="Galen's Fall",faction="H",npc="Rhoda Bowers",npcid=43104,x=13.3,y=34.8},
					{name="Hammerfall",faction="H",npc="Urda",npcid=2851,x=68.2,y=33.4},
					{name="Refuge Pointe",faction="A",npc="Cedrik Prose",npcid=2835,x=39.9,y=47.3},
		},
		['Badlands']={
					{name="Bloodwatcher Point",faction="H",npc="Selara",npcid=44408,x=52.4,y=50.8},
					{name="Dragon's Mouth",faction="A",npc="Jake Badlands",npcid=44410,x=21.7,y=57.8},
					{name="Dustwind Dig",faction="A",npc="Nancy Skybrew",npcid=44409,x=49.0,y=36.2},
					{name="Fuselight",faction="B",npc="Mixi Sweetride",npcid=44407,x=64.3,y=35.0},
					{name="New Kargath",faction="H",npc="Gorrik",npcid=2861,x=17.2,y=40.0},
		},
		['Blasted Lands']={
					{name="Dreadmaul Hold",faction="H",npc="Preda",npcid=43121,x=43.7,y=14.3,cond_fun=function() return UnitLevel('player')<90 or LibRover:HasBuff("Time Travelling",176111) end},
					{name="Nethergarde Keep",faction="A",npc="Alexandra Constantine",npcid=8609,x=61.3,y=21.6,cond_fun=function() return UnitLevel('player')<90 or LibRover:HasBuff("Time Travelling",176111) end},
					{name="Sunveil Excursion",faction="H",npc="Salena",npcid=43114,x=50.9,y=72.9,cond_fun=function() return UnitLevel('player')<90 or LibRover:HasBuff("Time Travelling",176111) end},
					{name="Surwich",faction="A",npc="Graham McAllister",npcid=43107,x=47.1,y=89.3,cond_fun=function() return UnitLevel('player')<90 or LibRover:HasBuff("Time Travelling",176111) end},
					{name="Shattered Landing",faction="H",npc="Ameri Windblade",npcid=85734,x=72.9,y=48.6,cond_fun=function() return UnitLevel('player')>89 and not LibRover:HasBuff("Time Travelling",176111) end},
					{name="Shattered Beachhead",faction="A",npc="Araazi",npcid=85731,x=67.6,y=28.0,cond_fun=function() return UnitLevel('player')>89 and not LibRover:HasBuff("Time Travelling",176111) end}, -- ally iron invasion fp. needs testing
		},
		['Burning Steppes']={
					{name="Chiselgrip",faction="B",npc="Grimly Singefeather",npcid=48321,x=46.2,y=41.8},
					{name="Flame Crest",faction="H",npc="Vahgruk",npcid=13177,x=54.1,y=24.3},
					{name="Flamestar Post",faction="B",npc="Hans Oreflight",npcid=48318,x=17.79,y=52.75},
					{name="Morgan's Vigil",faction="A",npc="Borgus Stoutarm",npcid=2299,x=72.1,y=65.7},
		},
		['Dun Morogh']={
					{name="Gol'Bolar Quarry",faction="A",npc="Dominic Galebeard",npcid=43702,x=75.9,y=54.4},
					{name="Kharanos",faction="A",npc="Brolan Galebeard",npcid=43701,x=53.8,y=52.8},
		},
		['Duskwood']={
					{name="Darkshire",faction="A",npc="Felicia Maline",npcid=2409,x=77.5,y=44.3},
					{name="Raven Hill",faction="A",npc="John Shelby",npcid=43697,x=21.1,y=56.4},
		},
		['Eastern Plaguelands']={
					{name="Acherus: The Ebon Hold",faction="B",class="DEATHKNIGHT", npc="Grimwing",npcid=29480,x=83.88,y=50.43},
					{name="Light's Hope Chapel",faction="H",npc="Georgia",npcid=12636,x=75.8,y=53.3},
					{name="Light's Hope Chapel",faction="A",npc="Khaelyn Steelwing",npcid=12617,x=75.84,y=53.41},
					{name="Eastwall Tower",faction="B",npc="Richard Trueflight",npcid=44230,x=61.6,y=43.9},
					{name="Northpass Tower",faction="B",npc="Grayson Ironwing",npcid=28621,x=51.4,y=21.3},
					{name="Light's Shield Tower",faction="B",npc="Devon Manning",npcid=44231,x=52.8,y=53.6},
					{name="Crown Guard Tower",faction="B",npc="Janice Myers",npcid=44232,x=34.9,y=67.9},
					{name="Plaguewood Tower",faction="B",npc="William Kielar Jr.",npcid=44233,x=18.5,y=27.4},
					{name="Thondroril River",faction="B",npc="Frax Bucketdrop",npcid=37888,x=10.1,y=65.7},
		},
		['Elwynn Forest']={
					{name="Goldshire",faction="A",npc="Bartlett the Brave",npcid=42983,x=41.7,y=64.6},
					{name="Eastvale Logging Camp",faction="A",npc="Goss the Swift",npcid=43000,x=81.8,y=66.6},
		},
		['Eversong Woods']={
					{name="Fairbreeze Village",faction="H",npc="Skymaster Brightdawn",npcid=44036,x=43.9,y=70.0},
					{name="Silvermoon City",faction="H",npc="Skymistress Gloaming",npcid=16192,x=54.4,y=50.7},
					{name="Falconwing Square",faction="H",npc="Skymaster Skyles",npcid=44244,x=46.2,y=46.8},
		},
		['Ghostlands']={
					{name="Tranquillien",faction="H",npc="Skymaster Sunwing",npcid=16189,x=45.4,y=30.5},
					{name="Zul'Aman",faction="B",npc="Kiz Coilspanner",npcid=24851,x=74.8,y=67.2},
		},
		['Hillsbrad Foothills']={
					{name="Eastpoint Tower",faction="H",npc="Darren Longfellow",npcid=47661,x=59.62,y=63.25},
					{name="Ruins of Southshore",faction="H",npc="Darla Harris",npcid=47644,x=49.0,y=66.2},
					{name="Southpoint Gate",faction="H",npc="Pamela Stutzka",npcid=47655,x=29.1,y=64.4},
					{name="Strahnbrad",faction="H",npc="Phillip Harding",npcid=47665,x=58.2,y=26.5},
					{name="Tarren Mill",faction="H",npc="Zarise",npcid=2389,x=56.1,y=46.1},
		},
		['Ironforge']={
					{name="Ironforge",faction="A",npc="Gryth Thurden",npcid=1573,x=55.5,y=47.8},
		},
		['Isle of Quel\'Danas']={
					{name="Shattered Sun Staging Area",faction="B",npc="Ohura",npcid=26560,x=48.4,y=25.1}, -- Sun's Reach Harbor ?
		},
		['Kelp\'thar Forest']={
					{name="Smuggler's Scar",faction="B",npc="Swift Seahorse",npcid=40852,x=56.1,y=31.2,taxioperator="seahorse"},
					{name="Sandy Beach",faction="A",npc="Swift Seahorse",npcid=43287,x=42.4,y=66.2,taxioperator="seahorse"},
					{name="Sandy Beach",faction="H",npc="Swift Seahorse",npcid=43216,x=49.3,y=87.9,taxioperator="seahorse"},
					{name="Stygian Bounty",faction="H",npc="Brogdul",npcid=43225,x=64.8,y=68.0},
		},
		['Loch Modan']={
					{name="Farstrider Lodge",faction="A",npc="Eeryven Grayer",npcid=41332,x=81.9,y=64.1},
					{name="Thelsamar",faction="A",npc="Thorgrum Borrelson",npcid=1572,x=34.0,y=50.9},
		},
		['Northern Stranglethorn']={
					{name="Bambala",faction="H",npc="Raskha",npcid=43052,x=62.4,y=39.3},
					{name="Fort Livingston",faction="A",npc="Robert Rhodes",npcid=43042,x=52.6,y=66.1},
					{name="Grom'gol",faction="H",npc="Thysta",npcid=1387,x=39.0,y=51.3},
					{name="Rebel Camp",faction="A",npc="James Stillair",npcid=43045,x=47.9,y=11.9},
		},
		['Redridge Mountains']={
					{name="Camp Everstill",faction="A",npc="Arlen Marsters",npcid=43371,x=52.9,y=54.6},
					{name="Lakeshire",faction="A",npc="Ariena Stormfeather",npcid=931,x=29.4,y=53.8},
					{name="Shalewind Canyon",faction="A",npc="Nora Baldwin",npcid=43072,x=78.0,y=65.9},
		},
		['Searing Gorge']={
					{name="Iron Summit",faction="B",npc="Doug Deepdown",npcid=47927,x=41.1,y=68.8},
					{name="Thorium Point",faction="A",npc="Lanie Reed",npcid=2941,x=37.9,y=30.9},
					{name="Thorium Point",faction="H",npc="Grisha",npcid=3305,x=34.8,y=30.9},
		},
		['Shimmering Expanse']={
					{name="Sandy Beach",faction="A",npc="Francis Greene",npcid=43290,x=57.0,y=17.0},
					{name="Silver Tide Hollow",faction="B",npc="Swift Seahorse",npcid=40851,x=49.5,y=41.2,taxioperator="seahorse"},
					{name="Tranquil Wash",faction="A",npc="Swift Seahorse",npcid=40867,x=48.6,y=57.4,taxioperator="seahorse"},
					{name="Voldrin's Hold",faction="A",quest=26005,npc="Salty McTavish",npcid=43295,x=69.4,y=75.2},
					{name="Voldrin's Hold",faction="A",quest=26005,npc="Swift Seahorse",npcid=43289,x=57.1,y=75.2,taxioperator="seahorse"},
					{name="Stygian Bounty",faction="H",quest=26006,npc="Brogdul",npcid=43225,x=49.5,y=65.6},
					{name="Stygian Bounty",faction="H",quest=26006,npc="Swift Seahorse",npcid=40871,x=50.8,y=63.4,taxioperator="seahorse"},
					{name="Sandy Beach",faction="H",npc="Briglar",npcid=43220,x=61.0,y=28.4},
					{name="Legion's Rest",faction="H",npc="Swift Seahorse",npcid=40871,x=50.8,y=63.5,taxioperator="seahorse"},
		},
		['Silverpine Forest']={
					{name="The Forsaken Front",faction="H",npc="Steven Stutzka",npcid=46552,x=50.8,y=63.6},
					{name="The Sepulcher",faction="H",npc="Karos Razok",npcid=2226,x=45.4,y=42.5},
					{name="Forsaken Rear Guard",faction="H",npc="Franny Mertz",npcid=50463,x=45.9,y=21.9},
					{name="Forsaken High Command",quest=26965,faction="H",npc="Bat Handler Maggotbreath",npcid=44825,x=57.9,y=8.7},
		},
		['Stormwind City']={
					{name="Stormwind",faction="A",npc="Dungar Longdrink",npcid=352,x=70.9,y=72.5},
		},
		['Swamp of Sorrows']={
					{name="Bogpaddle",faction="B",npc="Skeezie",npcid=43086,x=72.0,y=12.0},
					{name="Marshtide Watch",faction="A",npc="Paola Baldwin",npcid=43087,x=70.0,y=38.6},
					{name="Stonard",faction="H",npc="Breyk",npcid=6026,x=47.8,y=55.2},
					{name="The Harborage",faction="A",npc="Yedrin",npcid=43088,x=30.8,y=34.6},
		},
		['The Cape of Stranglethorn']={
					{name="Booty Bay",faction="A",npc="Gyll",npcid=2859,x=41.7,y=74.5,factionid=21,factionstanding=3},
					{name="Booty Bay",faction="H",npc="Gringer",npcid=2858,x=40.6,y=73.4,factionid=21,factionstanding=3},
					{name="Explorers' League Digsite",faction="A",npc="Colin Swifthammer",npcid=43043,x=55.7,y=41.2},
					{name="Hardwrench Hideaway",faction="H",npc="Hizzle",npcid=43053,x=35.2,y=29.4},
		},
		['The Hinterlands']={
					{name="Aerie Peak",faction="A",npc="Guthrum Thunderfist",npcid=8018,x=11.1,y=46.3},
					{name="Hiri'watha Research Station",faction="H",npc="Kellen Kuhn",npcid=43573,x=32.5,y=58.1},
					{name="Revantusk Village",faction="H",npc="Gorkas",npcid=4314,x=81.7,y=81.8},
					{name="Stormfeather Outpost",faction="A",npc="Brock Rockbeard",npcid=43570,x=65.8,y=44.9},
		},
		['Tirisfal Glades']={
					{name="Brill",faction="H",npc="Anette Williams",npcid=43124,x=58.8,y=51.9},
					{name="The Bulwark",faction="H",npc="Timothy Cunningham",npcid=37915,x=83.6,y=70.0},
		},
		['Undercity']={
					{name="Undercity",faction="H",npc="Michael Garrett",npcid=4551,x=63.3,y=48.6},
		},
		['Twilight Highlands']={
					{name="Bloodgulch",faction="H",npc="Bramok Gorewing",npcid=47156,x=54.1,y=42.2},
					{name="Crushblow",faction="H",npc="Tokrog",npcid=47116,x=45.8,y=76.2},
					{name="Dragonmaw Port",quest=26830,faction="H",npc="Gorthul",npcid=47174,x=73.8,y=52.8},
					{name="Firebeard's Patrol",faction="A",npc="Farstad Stonegrip",npcid=47147,x=60.4,y=57.6},
					{name="Highbank",faction="A",quest=28598,npc="Glenn Arbuckle",npcid=47119,x=81.6,y=77.0},
					{name="Kirthaven",faction="A",npc="Shaina Talonheart",npcid=47155,x=56.8,y=15.1},
					{name="The Gullet",faction="H",npc="San'shigo",npcid=47133,x=36.9,y=38.0},
					{name="The Krazzworks",faction="H",npc="Harpo Boltknuckle",npcid=47061,x=75.3,y=17.8},
					{name="Thundermar",faction="A",npc="Doran Talonheart",npcid=47154,x=48.5,y=28.1},
					{name="Vermillion Redoubt",faction="N",quest=27504,npc="Aquinastrasz",npcid=47121,x=28.6,y=24.9},
					{name="Victor's Point",faction="A",npc="Desmond Chadsworth",npcid=47118,x=43.9,y=57.3},
		},
		['Western Plaguelands']={
					{name="The Menders' Stead",faction="B",npc="Marge Heffman",npcid=46011,x=50.5,y=52.2},
					{name="Andorhal",faction="H",npc="Rhonda Molver",npcid=46004,x=46.5,y=64.7},
					{name="Andorhal",faction="A",npc="Ginny Goodwin",npcid=46006,x=39.5,y=69.5},
					{name="Hearthglen",faction="B",npc="William Henderson",npcid=47875,x=44.7,y=18.5},
					{name="Chillwind Camp",faction="A",npc="Bibilfaz Featherwhistle",npcid=12596,x=42.9,y=85.1},
		},
		['Westfall']={
					{name="Sentinel Hill",faction="A",npc="Thor",npcid=523,x=56.6,y=49.4},
					{name="Moonbrook",faction="A",npc="Tina Skyden",npcid=42426,x=42.1,y=63.3},
					{name="Furlbrow's Pumpkin Farm",faction="A",npc="Hoboair",npcid=42406,x=49.8,y=18.7},
		},
		['Wetlands']={
					{name="Dun Modr",faction="A",npc="Caleb Baelor",npcid=41325,x=49.9,y=18.6},
					{name="Greenwarden's Grove",faction="A",npc="Halana",npcid=41322,x=56.3,y=41.9},
					{name="Menethil Harbor",faction="A",npc="Shellei Brondir",npcid=1571,x=9.5,y=59.6},
					{name="Slabchisel's Survey",faction="A",npc="Elgin Baelor",npcid=41321,x=56.9,y=71.1},
					{name="Whelgar's Retreat",faction="A",npc="Damon Baelor",npcid=41323,x=38.8,y=39.0},
		},
	},
	[3]={
		['Blade\'s Edge Mountains']={
					{name="Evergrove",faction="B",npc="Fhyn Leafshadow",npcid=22216,x=61.7,y=39.6},
					{name="Skyguard Outpost",faction="B",factionid=1031,factionstanding=6,npc="Skyguard Handler Irena",npcid=23413,x=28.2,y=52.0,taxioperator="skyguard"},
					{name="Sylvanaar",faction="A",npc="Amerun Leafshade",npcid=18937,x=37.8,y=61.4},
					{name="Thunderlord Stronghold",faction="H",npc="Unoke Tenderhoof",npcid=18953,x=52.0,y=54.1},
					{name="Mok'Nathal Village",faction="H",npc="Sky-Master Maxxor",npcid=22455,x=76.4,y=65.8},
					{name="Toshley's Station",faction="A",npc="Rip Pedalslam",npcid=21107,x=61.2,y=70.4},
		},
		['Hellfire Peninsula']={
					{name="Falcon Watch",faction="H",npc="Innalia",npcid=18942,x=27.8,y=60.0},
					{name="Honor Hold",faction="A",npc="Flightmaster Krill Bitterhue",npcid=16822,x=54.7,y=62.4},
					{name="Shatter Point",faction="A",npc="Runetog Wildhammer",npcid=20234,x=78.4,y=34.9},
					{name="Spinebreaker Ridge",faction="H",npc="Amilya Airheart",npcid=19558,x=61.7,y=81.2},
					{name="Temple of Telhamat",faction="A",npc="Kuma",npcid=18785,x=25.2,y=37.2},
					{name="Hellfire Peninsula, The Dark Portal",faction="A",npc="Amish Wildhammer",npcid=18931,x=87.4,y=52.4},
					{name="Hellfire Peninsula, The Dark Portal",faction="H",npc="Vlagga Freyfeather",npcid=18930,x=87.3,y=48.1},
					{name="Thrallmar",faction="H",npc="Barley",npcid=16587,x=56.3,y=36.2},
		},
		['Nagrand']={
					{name="Garadar",faction="H",npc="Gursha",npcid=18808,x=57.2,y=35.3},
					{name="Telaar",faction="A",npc="Furgu",npcid=18789,x=54.2,y=75.1},
		},
		['Netherstorm']={
					{name="Area 52",faction="B",npc="Krexcil",npcid=18938,x=33.8,y=64.0},
					{name="Cosmowrench",faction="B",npc="Harpax",npcid=20515,x=65.2,y=66.8},
					{name="The Stormspire",faction="B",npc="Grennik",npcid=19583,x=45.3,y=34.9},
		},
		['Shadowmoon Valley']={
					{name="Altar of Sha'tar",faction="B",factionid=932,factionstanding=3,npc="Maddix",npcid=19581,x=63.3,y=30.4},
					{name="Sanctum of the Stars",faction="B",factionid=934,factionstanding=3,npc="Alieshor",npcid=21766,x=56.3,y=57.8},
					{name="Shadowmoon Village",faction="H",npc="Drek'Gol",npcid=19317,x=30.3,y=29.2},
					{name="Wildhammer Stronghold",faction="A",npc="Brubeck Stormfoot",npcid=18939,x=37.6,y=55.5},
		},
		['Shattrath City']={
					{name="Shattrath",faction="B",npc="Nutral",npcid=18940,x=64.1,y=41.1},
		},
		['Terokkar Forest']={
					{name="Allerian Stronghold",faction="A",npc="Furnan Skysoar",npcid=18809,x=59.4,y=55.4},
					{name="Blackwing Landing",faction="B",factionid=1031,factionstanding=6,npc="Skyguard Handler Deesak",npcid=23415,x=63.6,y=65.8,taxioperator="skyguard"},
					{name="Stonebreaker Hold",faction="H",npc="Kerna",npcid=18807,x=49.2,y=43.4},
		},
		['Zangarmarsh']={
					{name="Orebor Harborage",faction="A",npc="Halu",npcid=22485,x=41.3,y=29.0},
					{name="Swamprat Post",faction="H",npc="Gur'zil",npcid=20762,x=84.8,y=55.1},
					{name="Telredor",faction="A",npc="Munci",npcid=18788,x=67.8,y=51.5},
					{name="Zabra'jin",faction="H",npc="Du'ga",npcid=18791,x=33.1,y=51.1},
		},
	},
	[4]={
		['Borean Tundra']={
					{name="Valiance Keep",faction="A",npc="Tomas Riverwell",npcid=26879,x=59.0,y=68.3},
					{name="Warsong Hold",faction="H",npc="Turida Coldwind",npcid=25288,x=40.4,y=51.4},
					{name="Transitus Shield",faction="B",npc="Warmage Adami",npcid=27046,x=33.1,y=34.5},
					{name="Amber Ledge",faction="B",npc="Surristrasz",npcid=24795,x=45.3,y=34.5},
					{name="Bor'gorok Outpost",faction="H",npc="Kimbiza",npcid=26848,x=49.6,y=11.1},
					{name="Fizzcrank Airstrip",faction="A",npc="Kara Thricestar",npcid=26602,x=56.6,y=20.1},
					{name="Unu'pe",faction="B",npc="Bilko Driftspark",npcid=28195,x=78.5,y=51.5},
					{name="Taunka'le Village",faction="H",npc="Omu Spiritbreeze",npcid=26847,x=77.8,y=37.8},
		},
		['Crystalsong Forest']={
					{name="Windrunner's Overlook",faction="A",npc="Galendror Whitewing",npcid=30271,x=72.2,y=81.0},
					{name="Sunreaver's Command",faction="H",npc="Skymaster Baeric",npcid=30269,x=78.5,y=50.5},
		},
		['Dalaran']={
					{name="Dalaran",faction="B",npc="Aludane Whitecloud",npcid=28674,x=72.8,y=45.6},
		},
		['Dragonblight']={
					{name="Stars' Rest",faction="A",npc="Palena Silvercloud",npcid=26881,x=29.2,y=55.3},
					{name="Agmar's Hammer",faction="H",npc="Narzun Skybreaker",npcid=26566,x=37.5,y=45.8},
					{name="Fordragon Hold",faction="A",npc="Derek Rammel",npcid=26877,x=39.5,y=25.9},
					{name="Kor'kron Vanguard",faction="H",npc="Numo Spiritbreeze",npcid=26850,x=43.8,y=17.0},
					{name="Wyrmrest Temple",faction="B",npc="Nethestrasz",npcid=26851,x=60.3,y=51.6},
					{name="Wintergarde Keep",faction="A",npc="Rodney Wells",npcid=26878,x=77.0,y=49.8},
					{name="Venomspite",faction="H",npc="Junter Weiss",npcid=26845,x=76.5,y=62.2},
					{name="Moa'ki",faction="B",npc="Cid Flounderfix",npcid=28196,x=48.51,y=74.39},
		},
		['Gilneas']={
					{name="Forsaken Forward Command",comment="enabled after quest 27290, disabled after quest 27405, just assume we dont know it.",quest=999999,faction="H",npc="Bat Handler Doomair",npcid=45479,x=57.25,y=17.96},
		},
		['Grizzly Hills']={
					{name="Amberpine Lodge",faction="A",npc="Vana Grey",npcid=26880,x=31.3,y=59.1},
					{name="Conquest Hold",faction="H",npc="Kragh",npcid=26852,x=22.0,y=64.4},
					{name="Camp Oneqwah",faction="H",npc="Makki Wintergale",npcid=26853,x=65.0,y=46.9},
					{name="Westfall Brigade",faction="A",npc="Samuel Clearbook",npcid=26876,x=59.9,y=26.7},
		},
		['Howling Fjord']={
					{name="Camp Winterhoof",faction="H",npc="Celea Frozenmane",npcid=24032,x=49.6,y=11.6},
					{name="Fort Wildervar",faction="A",npc="James Ormsby",npcid=24061,x=60.1,y=16.1},
					{name="Vengeance Landing",faction="H",npc="Adeline Chambers",npcid=27344,x=79.0,y=29.7},
					{name="Valgarde Port",faction="A",npc="Pricilla Winterwind",npcid=23736,x=59.8,y=63.2},
					{name="New Agamand",faction="H",npc="Tobias Sarkhoff",npcid=24155,x=52.0,y=67.4},
					{name="Kamagua",faction="B",npc="Kip Trawlskip",npcid=28197,x=24.7,y=57.8},
					{name="Westguard Keep",faction="A",npc="Greer Orehammer",npcid=23859,x=31.3,y=44.0},
					{name="Apothecary Camp",faction="H",npc="Lilleth Radescu",npcid=26844,x=26.0,y=25.1},
		},
		['Icecrown']={
					{name="Argent Tournament Grounds",faction="B",npc="Helidan Lightwing",npcid=33849,x=72.6,y=22.6},
					{name="The Shadow Vault",faction="A",quest=12896,npc="Morlia Doomwing",npcid=30314,x=43.7,y=24.4},
					{name="The Shadow Vault",faction="H",quest=12897,npc="Morlia Doomwing",npcid=30314,x=43.7,y=24.4},
					{name="Death's Rise",faction="B",npc="Dreadwind",npcid=31078,x=19.3,y=47.8},
					{name="Crusaders' Pinnacle",faction="B",quest=13141,npc="Penumbrius",npcid=31069,x=79.4,y=72.4},
					{name="The Argent Vanguard",faction="B",npc="Aedan Moran",npcid=30433,x=87.8,y=78.1},
		},
		['Sholazar Basin']={
					{name="River's Heart",faction="B",npc="Marvin Wobblesprocket",npcid=28574,x=50.1,y=61.4},
					{name="Nesingwary Base Camp",faction="B",quest=12523,npc="The Spirit of Gnomeregan",npcid=28037,x=25.3,y=58.4},
		},
		['The Storm Peaks']={
					{name="K3",faction="B",npc="Skizzle Slickslide",npcid=29721,x=40.8,y=84.5},
					{name="Frosthold",faction="A",npc="Faldorf Bitterchill",npcid=29750,x=29.5,y=74.3},
					{name="Grom'arsh Crash-Site",faction="H",npc="Kabarg Windtamer",npcid=29757,x=36.2,y=49.4},
					{name="Dun Niffelem",faction="B",quest=12956,npc="Halvdan",npcid=32571,x=62.6,y=60.9},
					{name="Camp Tunka'lo",faction="H",npc="Hyeyoung Parka",npcid=29762,x=65.4,y=50.6},
					{name="Ulduar",faction="B",npc="Shavalius the Fancy",npcid=29951,x=44.5,y=28.2},
					{name="Bouldercrag's Refuge",faction="B",npc="Breck Rockbrow",npcid=29950,x=30.6,y=36.3},
		},
		['Wintergrasp']={
					{name="Wintergrasp",faction="A",npc="Arzo Safeflight",npcid=30869,x=72.0,y=30.9},
					{name="Warsong Camp",faction="H",npc="Herzo Safeflight",npcid=30870,x=21.6,y=35.0},
					{name="Valiance Landing Camp",faction="A",npc="Arzo Safeflight",npcid=30869,x=72.0,y=31.0},
		},
		['Zul\'Drak']={
					{name="Light's Breach",faction="B",npc="Danica Saint",npcid=28618,x=32.2,y=74.4},
					{name="Ebon Watch",faction="B",npc="Baneflight",npcid=28615,x=14.0,y=73.6},
					{name="The Argent Stand",faction="B",npc=" Gurric",npcid=28623,x=41.5,y=64.4},
					{name="Zim'Torga",faction="B",npc="Maaka",npcid=28624,x=60.0,y=56.7},
					{name="Gundrak",faction="B",npc="Rafae",npcid=30569,x=70.5,y=23.3},
		},
	},
	[5]={
	},
	[6]={
		['The Jade Forest']={
					{name="Sri-La Village",faction="B",npc="Gingo Alebottom",npcid=59733,x=55.4,y=23.7},
					{name="Emperor's Omen",faction="B",npc="Supplier Towsa",npcid=59735,x=50.9,y=26.9},
					{name="Tian Monastery",faction="B",npc="Studious Chu",npcid=59736,x=43.6,y=24.6},
					{name="Dawn's Blossom",faction="B",npc="Keg Runner Lee",npcid=59186,x=47.0,y=46.2},
					{name="The Arboretum",faction="B",npc="Injar'i Lakebloom",npcid=59732,x=57.0,y=44.0},
					{name="Jade Temple Grounds",faction="B",npc="Ginsa Arroweye",npcid=59727,x=54.6,y=61.9},
					{name="Serpent's Overlook",faction="A",npc="Sky Dancer Ji",quest=31362,npcid=64310,x=43.1,y=68.5,available=function() return IsSpellKnown(115913) end},
					{name="Serpent's Overlook",faction="H",npc="Sky Dancer Ji",quest=30485,npcid=64310,x=43.1,y=68.5,available=function() return IsSpellKnown(115913) end},
					{name="Paw'Don Village",faction="A",npc="Wing Kyo",npcid=487,x=46.0,y=85.1},
					{name="Pearlfin Village",faction="A",npc="Ut-Nam",npcid=56737,x=58.0,y=82.5},
					{name="Honeydew Village",faction="H",npc="Wing Hya",npcid=691,x=28.1,y=15.6},
					{name="Grookin Hill",faction="H",npc="Grookin Flapmaster",npcid=60952,x=27.8,y=47.9},
		},
		['Krasarang Wilds']={
					{name="Zhu's Watch",faction="B",npc="Gee Hung",npcid=60232,x=76.7,y=8.4},
					{name="Thunder Cleft",faction="H",npc="Lira Skysplitter",npcid=59046,x=59.2,y=24.6},
					{name="Dawnchaser Retreat",faction="H",npc="Munch Windhoof",npcid=59047,x=29.0,y=50.3},
					{name="Domination Point",faction="H",npc="Kromthar",npcid=2249,x=9.7,y=52.5},
					{name="Marista",faction="B",npc="Nan-Po",npcid=60441,x=52.4,y=76.6},
					{name="The Incursion",faction="A",npc="Tylen Moonfeather",npcid=59049,x=67.8,y=32.5},
					{name="Sentinel Basecamp",faction="A",npc="Maylen Moonfeather",npcid=59048,x=25.2,y=33.5},
					{name="Lion's Landing",faction="A",npc="Daggin Windbeard",npcid=2690,x=88.3,y=34.7},
					{name="Cradle of Chi-Ji",faction="B",npc="Feather Keeper Li",npcid=65189,x=31.1,y=63.2},
		},
		['Valley of the Four Winds']={
					{name="Pang's Stead",faction="B",npc="Princeton",npcid=60230,x=84.5,y=21.1},
					{name="Grassy Cline",faction="B",npc="Kim of the Mountain Winds",npcid=62658,x=70.8,y=24.1},
					{name="Halfhill",faction="B",npc="Wing Nga",npcid=60231,x=56.5,y=50.4},
					{name="Stoneplow",faction="B",npc="\"Dragonwing\" Dan",npcid=58843,x=20.3,y=58.7},
		},
		['Vale of Eternal Blossoms']={
					{name="Serpent's Spine",faction="B",npc="Mai of the Wall",npcid=63497,x=14.2,y=79.2,region="topofthewallVEB"},
					{name="Shrine of Two Moons",faction="H",npc="Tania Summerbreeze",npcid=0,x=62.9,y=21.8},
					{name="Shrine of Seven Stars",faction="A",npc="Sharinga Springrunner",npcid=61121,x=84.6,y=62.4},
		},
		['The Veiled Stair']={
					{name="Tavern in the Mists",faction="B",npc="Shin the Weightless",npcid=61759,x=56.7,y=75.7},
		},
		['Kun-Lai Summit']={
					{name="Binan Village",faction="B",npc="Jo the Wind Watcher",npcid=61474,x=72.5,y=94.2},
					{name="Westwind Rest",faction="A",npc="Tabo the Flyer",npcid=61744,x=54.0,y=84.3},
					{name="Eastwind Rest",faction="H",npc="Soaring Paw",npcid=61745,x=62.4,y=80.7},
					{name="Temple of the White Tiger",faction="B",npc="Big Greenfeather",npcid=61118,x=66.3,y=50.7},
					{name="Zouchin Village",faction="B",npc="Bo the Wind Claimer",npcid=61511,x=62.4,y=30.1},
					{name="One Keg",faction="B",npc="Little Cleankite",npcid=61504,x=57.7,y=59.7},
					{name="Kota Basecamp",faction="B",npc="Uncle Eastwind",npcid=60416,x=42.8,y=69.6},
					{name="Shado-Pan Fallback",faction="B",npc="Kite Master Ni",npcid=61473,x=43.9,y=89.6,region="topofthewallKLS"},
					{name="Winter's Blossom",faction="B",npc="Kite Master Len",npcid=61512,x=34.5,y=59.1},
					{name="Serpent's Spine",faction="H",npc="Morla Skyblade",npcid=327,x=36.0,y=83.7,region="topofthewallKLS"},
		},
		['Townlong Steppes']={
					{name="Longying Outpost",faction="B",npc="Kite Master Wong",npcid=62901,x=71.1,y=57.3},
					{name="Gao-Ran Battlefront",faction="B",npc="Kite Master Nenshi",npcid=62903,x=74.4,y=81.5},
					{name="Rensai's Watchpost",faction="B",npc="Kite Master Li-Sen",npcid=62898,x=54.3,y=79.0},
					{name="Shado-Pan Garrison",faction="B",npc="Kite Master Yao-Li",npcid=62909,x=50.1,y=72.0},
		},
		['Dread Wastes']={
					{name="The Sunset Brewgarden",faction="B",npc="Jin the Flying Keg",npcid=63500,x=50.2,y=12.2},
					{name="Klaxxi'vess",faction="B",npc="Kik'tik",npcid=63501,x=55.8,y=34.9},
					{name="Soggy's Gamble",faction="B",npc="Min the Breeze Rider",npcid=63498,x=56.1,y=70.2},
					{name="The Briny Muck",faction="B",npc="Infiltrator Ik'thal",npcid=65511,x=42.5,y=55.8},
					{name="The Lion's Redoubt",faction="A",npc="Tiper Windman",npcid=65865,x=73.0,y=33.1,region="topofthewallVFW"},
		},
		['Isle of Giants']={
					{name="Beeble's Wreck",faction="A",npc="Beeble Sockwrench",npcid=69359,x=41.8,y=79.3},
					{name="Bozzle's Wreck",faction="H",npc="Bozzle Blastinfuse",npcid=69360,x=52.0,y=75.5},
		},
		['Timeless Isle']={
					{name="Tushui Landing",faction="A",npc="Michi Windblossom",npcid=71940,x=23.1,y=71.0},
					{name="Huojin Landing",faction="H",npc="Chi-Ro the Skytamer",npcid=71939,x=21.9,y=39.7},
		},
	},
	[7]={
		['Shadowmoon Valley D']={
			{name="Exile's Rise",faction="B",npc="Wargra",npcid=76850,x=45.5,y=25.4},
			{name="Elodor",faction="A",npc="Vamuun",npcid=81289,x=58.7,y=31.9},
			{name="Path of Light",faction="A",npc="Paaya",npcid=76851,x=59.3,y=45.9},
			{name="Tranquil Court",faction="A",npc="Itara",npcid=86685,x=70.4,y=50.4},
			{name="The Draakorium",faction="A",npc="Morfax",npcid=81284,x=57.0,y=56.6},
			{name="Socrethar's Rise",faction="B",npc="Azara Goldenwing",npcid=81285,x=43.9,y=77.5,level=100},
			{name="Darktide Roost",faction="B",npc="Beasttamer Ladaak",npcid=83427,x=59.8,y=81.3,level=100},
			{name="Twilight Glade",faction="A",npc="Gotuun",npcid=76839,x=40.7,y=55.3},
			{name="Embaari Village",faction="A",npc="Eonor",npcid=76840,x=45.7,y=38.9},
		},
		['Gorgrond']={
			--{name="Tailthrasher Basin",faction="A",npc="Rangari Yaval",npcid=84507,x=46.4,y=92.4},
			{name="Deeproot",faction="A",npc="Rangari Nogo",npcid=81888,x=46.5,y=76.6},
			{name="Highpass",faction="A",npc="Rangari Rajess",npcid=81074,x=52.8,y=59.3},
			{name="Breaker's Crown",faction="B",npc="Nisha",npcid=81674,x=45.9,y=54.9},
			{name="Wildwood Wash",faction="A",npc="Rangari Thewe",npcid=81884,x=64.2,y=57.5},			
			{name="Bastion Rise",faction="A",npc="Rangari Yaval",npcid=84507,x=46.4,y=92.4},
			{name="Everbloom Wilds",faction="B",npc="Arcanist Windlebop",npcid=84714,x=57.0,y=45.9},
			{name="Skysea Point",faction="B",npc="Faronn Dustwalker",npcid=85829,x=39.5,y=36.6},
			{name="Iron Docks",faction="B",npc="Nisha",npcid=84700,x=43.1,y=20.2},
			{name="Everbloom Overlook",faction="B",npc="Researcher Sarix",npcid=88757,x=68.7,y=28.7,level=100,quest=34028},
			{name="Evermorn Springs",faction="H",npc="Chucklespine",npcid=84495,x=41.3,y=87.1},
			{name="Bastion Rise",faction="H",npc="Windscreamer",npcid=84508,x=47.4,y=90.8},
			{name="Beastwatch",faction="H",npc="Grinslicer",npcid=81055,x=46.0,y=69.2},
		},
		['Nagrand D']={
			{name="The Ring of Trials",faction="B",npc="Biggy Warprofits",npcid=83924,x=79.8,y=49.7},
			{name="Telaari Station",faction="A",npc="John Shelby",npcid=82309,x=63.6,y=61.6},
			{name="Nivek's Overlook",faction="B",npc="Nivek Lee",npcid=88653,x=49.4,y=75.9},
			{name="Yrel's Watch",faction="A",npc="Felicia Maline",npcid=81250,x=62.6,y=40.6},
			{name="Joz's Rylaks",faction="B",npc="Joz Navarix",npcid=88668,x=62.2,y=32.9},
			{name="Rilzit's Holdfast",faction="B",npc="Rilzit Mugshot",npcid=87395,x=50.8,y=30.6},
			{name="Throne of the Elements",faction="B",npc="Gixmo Moneycash",npcid=82844,x=73.7,y=26.7},
			{name="Wor'var",faction="H",npc="Tal",npcid=82346,x=83.3,y=44.7},
			{name="Riverside Post",faction="H",npc="Omu Spiritbreeze",npcid=82340,x=49.6,y=48.0},
		},
		['Spires of Arak']={
			{name="Apexis Excavation",faction="B",npc="Skytalon Kuris",npcid=84509,x=36.9,y=24.6},
			{name="Crow's Crook",faction="B",npc="Darkscreech",npcid=84515,x=51.8,y=31.0},
			{name="Akeeta's Hovel",faction="B",npc="Duskclaw",npcid=88584,x=65.7,y=17.5},
			{name="Talon Watch",faction="B",npc="Skytalon Karaz",npcid=84504,x=61.9,y=42.6},
			{name="Pinchwhistle Gearworks",faction="B",npc="Kwiven Quickcog",npcid=82511,x=60.9,y=73.3},
			{name="Southport",faction="A",npc="Fim Swiftbreeze",npcid=83567,x=39.0,y=61.8},
			{name="Axefall",faction="H",npc="Hutou Featherwind",npcid=82612,x=39.5,y=43.4},
			{name="Veil Terokk",faction="B",npc="Skytalon Meshaal",npcid=84498,x=46.2,y=44.1},
		},
		['Talador']={
			{name="Retribution Point",faction="B",npc="Beldos",npcid=81068,x=42.1,y=76.8},
			{name="Exarch's Refuge",faction="A",npc="Niaa",npcid=81077,x=54.8,y=68.8},
			{name="Shattrath City",faction="B",npc="Zamara",npcid=81064,x=51.3,y=42.7,level=100},
			{name="Terokkar Refuge",faction="B",npc="Skytalon Inuz",npcid=81354,x=70.3,y=57.1},
			{name="Anchorite's Sojourn",faction="A",npc="Zaari",npcid=81067,x=80.0,y=56.7},
			{name="Zangarra",faction="B",npc="Dominic Arlington",npcid=80932,x=80.4,y=25.3},
			{name="Fort Wrynn",faction="A",npc="Skyguard Amelia",npcid=81060,x=69.9,y=21.5},
			{name="Redemption Rise",faction="A",npc="Nomaeaa",npcid=81061,x=63.3,y=25.7},
			{name="Frostwolf Overlook",faction="H",npc="Mok'ra",npcid=81053,x=61.4,y=10.5},
			{name="Vol'jin's Pride",faction="H",npc="Mo'jimba",npcid=81057,x=70.7,y=29.4},
			{name="Durotan's Grasp",faction="H",npc="Tega Skyblade",npcid=81058,x=55.4,y=40.8},
			{name="Exarch's Refuge",faction="H",npc="Roka",npcid=81078,x=54.5,y=67.8},
		},
		['Stormshield']={
			{name="Stormshield",faction="A",npc="Ernst ten Bosch",npcid=85959,x=30.5,y=48.5},
		},
		['Warspear']={
			{name="Warspear",faction="H",npc="Ilalu",npcid=86049,x=44.2,y=33.9},
		},
		['Frostfire Ridge']={
			{name="Iron Siegeworks",faction="A",npc="Rangari Veera",npcid=84993,x=87.4,y=62.6},
			{name="Stonefang Outpost",faction="H",npc="Skyhunter Donmor'gan",npcid=76879,x=40.1,y=51.8},
			{name="Wor'gol",faction="H",npc="Pul Windcarver",npcid=76782,x=21.6,y=56.1},
			{name="Throm'Var",faction="H",npc="Jonnock Hewndawn",npcid=76783,x=31.8,y=9.5},
			{name="Bloodmaul Slag Mines",faction="B",npc="Brenna Skymoor",npcid=76787,x=51.4,y=21.4},
			{name="Darkspear's Edge",faction="H",npc="Ja'kana",npcid=78699,x=51.7,y=41.1},
			{name="Wolf's Stand",faction="H",npc="Windhunter",npcid=87707,x=73.6,y=60.0},
			{name="Thunder Pass",faction="H",npc="Bile Warneck",npcid=76784,x=83.6,y=60.9},
			{name="Bladespire Fortress",faction="H",npc="Roark the Airwolf",npcid=76781,x=19.9,y=51.8,f=1,quest=33527},
		},
		['Lunarfall']={
			{name="Lunarfall Garrison",faction="A",npc="Dungar Longdrink",npcid=81103,x=48.0,y=49.8},
		},
		['Frostwall']={
			{name="Frostwall Garrison",faction="H",npc="Bron Skyhorn",npcid=79407,x=45.8,y=51.0},
		},
	},
}


-- NOTE: If two taxis have the same name but different factions then a factions field must be added in here. See Serpent's Spire.
-- If not then one of the taxis will be marked with the wrong faction so will not properly get neighbors that it should.

data.flightcost = {
	[1]={
		{
			tag = "001:001",
			name = "Darkshore Cat 1, Lor'danel, Darkshore",
			taxioperator = "blackcat",
			neighbors = {
				["003:003"] = 50, -- Darkshore Cat 3, Ruins of Mathystra, Darkshore
			},
		},
		{
			tag = "002:002",
			name = "Darkshore Cat 2, Lor'danel, Darkshore",
			taxioperator = "blackcat",
			neighbors = {
				["005:005"] = 53, -- Darkshore Cat 5, Bashal'Aran, Darkshore
			},
		},
		{
			tag = "003:003",
			name = "Darkshore Cat 3, Ruins of Mathystra, Darkshore",
			taxioperator = "blackcat",
			neighbors = {
				["001:001"] = 50, -- Darkshore Cat 1, Lor'danel, Darkshore
				["004:004"] = 75, -- Darkshore Cat 4, Shatterspear Vale, Darkshore
			},
		},
		{
			tag = "004:004",
			name = "Darkshore Cat 4, Shatterspear Vale, Darkshore",
			taxioperator = "blackcat",
			neighbors = {
				["001:001"] = 115, -- Darkshore Cat 1, Lor'danel, Darkshore
			},
		},
		{
			tag = "005:005",
			name = "Darkshore Cat 5, Bashal'Aran, Darkshore",
			taxioperator = "blackcat",
			neighbors = {
				["002:002"] = 53, -- Darkshore Cat 2, Lor'danel, Darkshore
			},
		},
		{
			tag = "205:745",
			name = "The Exodar",
			neighbors = {
				["218:824"] = 89, -- Blood Watch, Bloodmyst Isle
				["242:734"] = 40, -- Azure Watch, Azuremyst Isle
				["410:832"] = 101, -- Rut'theran Village, Teldrassil
			},
		},
		{
			tag = "218:824",
			name = "Blood Watch, Bloodmyst Isle",
			neighbors = {
				["205:745"] = 101, -- The Exodar
			},
		},
		{
			tag = "242:734",
			name = "Azure Watch, Azuremyst Isle",
			neighbors = {
				["205:745"] = 41, -- The Exodar
			},
		},
		{
			tag = "316:415",
			name = "Shadowprey Village, Desolace",
			neighbors = {
				["345:361"] = 71, -- Camp Ataya, Feralas
				["348:473"] = 91, -- Ethel Rethor, Desolace
				["358:469"] = 77, -- Furien's Post, Desolace
				["383:445"] = 83, -- Karnum's Glade, Desolace
				["407:527"] = 199, -- Sun Rock Retreat, Stonetalon Mountains
				["442:306"] = 196, -- Camp Mojache, Feralas
				["449:438"] = 178, -- Thunder Bluff, Mulgore
				["461:483"] = 172, -- Malaka'jin, Stonetalon Mountains
			},
		},
		{
			tag = "342:897",
			name = "Darnassus, Teldrassil",
			neighbors = {
				["410:832"] = 109, -- Rut'theran Village, Teldrassil
				["410:893"] = 62, -- Dolanaar, Teldrassil
			},
		},
		{
			tag = "344:418",
			name = "Thargad's Camp, Desolace",
			neighbors = {
				["348:473"] = 63, -- Ethel Rethor, Desolace
				["360:304"] = 126, -- Feathermoon, Feralas
				["370:358"] = 54, -- Dreamer's Rest, Feralas
				["383:445"] = 56, -- Karnum's Glade, Desolace
				["387:575"] = 158, -- Thal'darah Overlook, Stonetalon Mountains
				["396:493"] = 102, -- Nijel's Point, Desolace
			},
		},
		{
			tag = "345:361",
			name = "Camp Ataya, Feralas",
			neighbors = {
				["316:415"] = 68, -- Shadowprey Village, Desolace
				["372:298"] = 78, -- Stonemaul Hold, Feralas
			},
		},
		{
			tag = "348:473",
			name = "Ethel Rethor, Desolace",
			neighbors = {
				["316:415"] = 80, -- Shadowprey Village, Desolace
				["344:418"] = 52, -- Thargad's Camp, Desolace
				["358:469"] = 17, -- Furien's Post, Desolace
				["383:445"] = 39, -- Karnum's Glade, Desolace
				["396:493"] = 66, -- Nijel's Point, Desolace
				["407:465"] = 52, -- Thunk's Abode, Desolace
			},
		},
		{
			tag = "358:469",
			name = "Furien's Post, Desolace",
			neighbors = {
				["316:415"] = 68, -- Shadowprey Village, Desolace
				["348:473"] = 10, -- Ethel Rethor, Desolace
				["383:445"] = 38, -- Karnum's Glade, Desolace
				["407:527"] = 107, -- Sun Rock Retreat, Stonetalon Mountains
				["442:306"] = 249, -- Camp Mojache, Feralas
			},
		},
		{
			tag = "360:304",
			name = "Feathermoon, Feralas",
			neighbors = {
				["344:418"] = 147, -- Thargad's Camp, Desolace
				["367:527"] = 204, -- Farwatcher's Glen, Stonetalon Mountains
				["370:358"] = 55, -- Dreamer's Rest, Feralas
				["389:287"] = 31, -- Tower of Estulan, Feralas
				["396:493"] = 227, -- Nijel's Point, Desolace
				["418:209"] = 118, -- Cenarion Hold, Silithus
				["447:282"] = 92, -- Shadebough, Feralas
				["464:794"] = 495, -- Lor'danel, Darkshore
			},
		},
		{
			tag = "367:527",
			name = "Farwatcher's Glen, Stonetalon Mountains",
			neighbors = {
				["360:304"] = 219, -- Feathermoon, Feralas
				["387:575"] = 53, -- Thal'darah Overlook, Stonetalon Mountains
				["396:493"] = 63, -- Nijel's Point, Desolace
				["408:544"] = 44, -- Mirkfallon Post, Stonetalon Mountains
				["432:539"] = 76, -- Windshear Hold, Stonetalon Mountains
				["462:497"] = 115, -- Northwatch Expedition Base Camp, Stonetalon Mountains
			},
		},
		{
			tag = "370:358",
			name = "Dreamer's Rest, Feralas",
			neighbors = {
				["344:418"] = 68, -- Thargad's Camp, Desolace
				["360:304"] = 56, -- Feathermoon, Feralas
			},
		},
		{
			tag = "372:298",
			name = "Stonemaul Hold, Feralas",
			neighbors = {
				["345:361"] = 66, -- Camp Ataya, Feralas
				["416:207"] = 106, -- Cenarion Hold, Silithus
				["442:306"] = 70, -- Camp Mojache, Feralas
			},
		},
		{
			tag = "383:445",
			name = "Karnum's Glade, Desolace",
			neighbors = {
				["316:415"] = 83, -- Shadowprey Village, Desolace
				["344:418"] = 49, -- Thargad's Camp, Desolace
				["348:473"] = 40, -- Ethel Rethor, Desolace
				["358:469"] = 39, -- Furien's Post, Desolace
				["387:575"] = 121, -- Thal'darah Overlook, Stonetalon Mountains
				["396:493"] = 56, -- Nijel's Point, Desolace
				["407:465"] = 29, -- Thunk's Abode, Desolace
				["407:527"] = 91, -- Sun Rock Retreat, Stonetalon Mountains
			},
		},
		{
			tag = "387:575",
			name = "Thal'darah Overlook, Stonetalon Mountains",
			neighbors = {
				["344:418"] = 143, -- Thargad's Camp, Desolace
				["367:527"] = 63, -- Farwatcher's Glen, Stonetalon Mountains
				["383:445"] = 121, -- Karnum's Glade, Desolace
				["396:493"] = 109, -- Nijel's Point, Desolace
				["408:544"] = 41, -- Mirkfallon Post, Stonetalon Mountains
				["423:647"] = 127, -- Blackfathom Camp, Ashenvale
				["432:539"] = 83, -- Windshear Hold, Stonetalon Mountains
				["444:691"] = 168, -- Grove of the Ancients, Darkshore
				["462:497"] = 101, -- Northwatch Expedition Base Camp, Stonetalon Mountains
				["462:603"] = 171, -- Astranaar, Ashenvale
				["463:565"] = 87, -- Stardust Spire, Ashenvale
				["464:794"] = 253, -- Lor'danel, Darkshore
			},
		},
		{
			tag = "389:287",
			name = "Tower of Estulan, Feralas",
			neighbors = {
				["360:304"] = 34, -- Feathermoon, Feralas
				["447:282"] = 61, -- Shadebough, Feralas
			},
		},
		{
			tag = "396:493",
			name = "Nijel's Point, Desolace",
			neighbors = {
				["344:418"] = 81, -- Thargad's Camp, Desolace
				["348:473"] = 49, -- Ethel Rethor, Desolace
				["360:304"] = 232, -- Feathermoon, Feralas
				["367:527"] = 52, -- Farwatcher's Glen, Stonetalon Mountains
				["383:445"] = 50, -- Karnum's Glade, Desolace
				["387:575"] = 101, -- Thal'darah Overlook, Stonetalon Mountains
				["407:465"] = 31, -- Thunk's Abode, Desolace
				["432:539"] = 73, -- Windshear Hold, Stonetalon Mountains
				["462:497"] = 81, -- Northwatch Expedition Base Camp, Stonetalon Mountains
				["463:565"] = 105, -- Stardust Spire, Ashenvale
				["464:794"] = 337, -- Lor'danel, Darkshore
				["636:330"] = 308, -- Theramore, Dustwallow Marsh
			},
		},
		{
			tag = "399:577",
			name = "Cliffwalker Post, Stonetalon Mountains",
			neighbors = {
				["407:527"] = 43, -- Sun Rock Retreat, Stonetalon Mountains
				["407:625"] = 50, -- Zoram'gar Outpost, Ashenvale
				["420:562"] = 21, -- The Sludgewerks, Stonetalon Mountains
				["451:525"] = 44, -- Krom'gar Fortress, Stonetalon Mountains
				["461:483"] = 63, -- Malaka'jin, Stonetalon Mountains
				["471:612"] = 62, -- Hellscream's Watch, Ashenvale
			},
		},
		{
			tag = "407:047",
			name = "Schnottz's Landing, Uldum",
			neighbors = {
				["418:143"] = 88, -- Oasis of Vir'sar, Uldum
				["493:100"] = 89, -- Ramkahen, Uldum
			},
		},
		{
			tag = "407:465",
			name = "Thunk's Abode, Desolace",
			neighbors = {
				["348:473"] = 63, -- Ethel Rethor, Desolace
				["383:445"] = 56, -- Karnum's Glade, Desolace
				["396:493"] = 33, -- Nijel's Point, Desolace
				["449:438"] = 46, -- Thunder Bluff, Mulgore
			},
		},
		{
			tag = "407:527",
			name = "Sun Rock Retreat, Stonetalon Mountains",
			neighbors = {
				["316:415"] = 143, -- Shadowprey Village, Desolace
				["358:469"] = 102, -- Furien's Post, Desolace
				["383:445"] = 108, -- Karnum's Glade, Desolace
				["399:577"] = 49, -- Cliffwalker Post, Stonetalon Mountains
				["407:625"] = 121, -- Zoram'gar Outpost, Ashenvale
				["420:562"] = 42, -- The Sludgewerks, Stonetalon Mountains
				["449:438"] = 175, -- Thunder Bluff, Mulgore
				["451:525"] = 43, -- Krom'gar Fortress, Stonetalon Mountains
				["461:483"] = 67, -- Malaka'jin, Stonetalon Mountains
				["471:612"] = 110, -- Hellscream's Watch, Ashenvale
				["557:469"] = 150, -- The Crossroads, Northern Barrens
			},
		},
		{
			tag = "407:625",
			name = "Zoram'gar Outpost, Ashenvale",
			neighbors = {
				["399:577"] = 73, -- Cliffwalker Post, Stonetalon Mountains
				["407:527"] = 121, -- Sun Rock Retreat, Stonetalon Mountains
				["449:438"] = 247, -- Thunder Bluff, Mulgore
				["471:612"] = 82, -- Hellscream's Watch, Ashenvale
				["505:650"] = 122, -- Emerald Sanctuary, Felwood
				["554:582"] = 172, -- Splintertree Post, Ashenvale
				["557:469"] = 235, -- The Crossroads, Northern Barrens
			},
		},
		{
			tag = "408:544",
			name = "Mirkfallon Post, Stonetalon Mountains",
			neighbors = {
				["367:527"] = 53, -- Farwatcher's Glen, Stonetalon Mountains
				["387:575"] = 39, -- Thal'darah Overlook, Stonetalon Mountains
				["432:539"] = 28, -- Windshear Hold, Stonetalon Mountains
			},
		},
		{
			tag = "410:832",
			name = "Rut'theran Village, Teldrassil",
			neighbors = {
				["205:745"] = 100, -- The Exodar
				["342:897"] = 111, -- Darnassus, Teldrassil
				["464:794"] = 61, -- Lor'danel, Darkshore
			},
		},
		{
			tag = "410:893",
			name = "Dolanaar, Teldrassil",
			neighbors = {
				["342:897"] = 61, -- Darnassus, Teldrassil
			},
		},
		{
			tag = "416:207",
			name = "Cenarion Hold, Silithus",
			faction = "H",
			neighbors = {
				["372:298"] = 106, -- Stonemaul Hold, Feralas
				["418:143"] = 64, -- Oasis of Vir'sar, Uldum
				["442:306"] = 130, -- Camp Mojache, Feralas
				["495:201"] = 77, -- Mossy Pile, Un'Goro Crater
				["514:177"] = 120, -- Marshal's Stand, Un'Goro Crater
				["607:196"] = 241, -- Gadgetzan, Tanaris
			},
		},
		{
			tag = "418:143",
			name = "Oasis of Vir'sar, Uldum",
			neighbors = {
				["407:047"] = 128, -- Schnottz's Landing, Uldum
				["416:207"] = 108, -- Cenarion Hold, Silithus
				["418:209"] = 102, -- Cenarion Hold, Silithus
				["493:100"] = 122, -- Ramkahen, Uldum
			},
		},
		{
			tag = "418:209",
			name = "Cenarion Hold, Silithus",
			faction = "A",
			neighbors = {
				["360:304"] = 120, -- Feathermoon, Feralas
				["418:143"] = 65, -- Oasis of Vir'sar, Uldum
				["495:201"] = 72, -- Mossy Pile, Un'Goro Crater
				["514:177"] = 113, -- Marshal's Stand, Un'Goro Crater
				["605:192"] = 188, -- Gadgetzan, Tanaris
			},
		},
		{
			tag = "420:562",
			name = "The Sludgewerks, Stonetalon Mountains",
			neighbors = {
				["399:577"] = 31, -- Cliffwalker Post, Stonetalon Mountains
				["407:527"] = 37, -- Sun Rock Retreat, Stonetalon Mountains
				["451:525"] = 44, -- Krom'gar Fortress, Stonetalon Mountains
			},
		},
		{
			tag = "423:647",
			name = "Blackfathom Camp, Ashenvale",
			neighbors = {
				["387:575"] = 137, -- Thal'darah Overlook, Stonetalon Mountains
				["444:691"] = 69, -- Grove of the Ancients, Darkshore
				["462:603"] = 60, -- Astranaar, Ashenvale
				["505:650"] = 110, -- Emerald Sanctuary, Felwood
			},
		},
		{
			tag = "432:539",
			name = "Windshear Hold, Stonetalon Mountains",
			neighbors = {
				["367:527"] = 92, -- Farwatcher's Glen, Stonetalon Mountains
				["387:575"] = 65, -- Thal'darah Overlook, Stonetalon Mountains
				["396:493"] = 62, -- Nijel's Point, Desolace
				["408:544"] = 31, -- Mirkfallon Post, Stonetalon Mountains
				["462:497"] = 58, -- Northwatch Expedition Base Camp, Stonetalon Mountains
				["463:565"] = 57, -- Stardust Spire, Ashenvale
			},
		},
		{
			tag = "442:306",
			name = "Camp Mojache, Feralas",
			neighbors = {
				["316:415"] = 200, -- Shadowprey Village, Desolace
				["358:469"] = 256, -- Furien's Post, Desolace
				["372:298"] = 66, -- Stonemaul Hold, Feralas
				["416:207"] = 130, -- Cenarion Hold, Silithus
				["449:438"] = 259, -- Thunder Bluff, Mulgore
				["488:310"] = 43, -- Westreach Summit, Thousand Needles
				["520:352"] = 104, -- Desolation Hold, Southern Barrens
				["557:469"] = 264, -- The Crossroads, Northern Barrens
				["607:196"] = 201, -- Gadgetzan, Tanaris
			},
		},
		{
			tag = "444:691",
			name = "Grove of the Ancients, Darkshore",
			neighbors = {
				["387:575"] = 162, -- Thal'darah Overlook, Stonetalon Mountains
				["423:647"] = 65, -- Blackfathom Camp, Ashenvale
				["462:603"] = 85, -- Astranaar, Ashenvale
				["464:794"] = 92, -- Lor'danel, Darkshore
				["487:682"] = 58, -- Wildheart Point, Felwood
				["505:650"] = 82, -- Emerald Sanctuary, Felwood
				["527:742"] = 136, -- Talonbranch Glade, Felwood
			},
		},
		{
			tag = "447:282",
			name = "Shadebough, Feralas",
			neighbors = {
				["360:304"] = 84, -- Feathermoon, Feralas
				["389:287"] = 60, -- Tower of Estulan, Feralas
				["583:300"] = 134, -- Mudsprocket, Dustwallow Marsh
				["605:192"] = 215, -- Gadgetzan, Tanaris
				["611:238"] = 177, -- Fizzle & Pozzik's Speedbarge, Thousand Needles
				["636:330"] = 207, -- Theramore, Dustwallow Marsh
			},
		},
		{
			tag = "449:438",
			name = "Thunder Bluff, Mulgore",
			neighbors = {
				["316:415"] = 159, -- Shadowprey Village, Desolace
				["407:465"] = 66, -- Thunk's Abode, Desolace
				["407:527"] = 181, -- Sun Rock Retreat, Stonetalon Mountains
				["407:625"] = 264, -- Zoram'gar Outpost, Ashenvale
				["442:306"] = 252, -- Camp Mojache, Feralas
				["461:483"] = 54, -- Malaka'jin, Stonetalon Mountains
				["466:393"] = 51, -- Bloodhoof Village, Mulgore
				["488:310"] = 210, -- Westreach Summit, Thousand Needles
				["516:454"] = 66, -- Hunter's Hill, Southern Barrens
				["521:399"] = 85, -- Vendetta Point, Northern Barrens
				["557:469"] = 103, -- The Crossroads, Northern Barrens
				["567:358"] = 238, -- Brackenwall Village, Dustwallow Marsh
				["607:196"] = 290, -- Gadgetzan, Tanaris
				["629:561"] = 208, -- Orgrimmar, Durotar
				["709:633"] = 316, -- Bilgewater Harbor, Azshara
			},
		},
		{
			tag = "451:525",
			name = "Krom'gar Fortress, Stonetalon Mountains",
			neighbors = {
				["399:577"] = 70, -- Cliffwalker Post, Stonetalon Mountains
				["407:527"] = 46, -- Sun Rock Retreat, Stonetalon Mountains
				["420:562"] = 47, -- The Sludgewerks, Stonetalon Mountains
				["461:483"] = 68, -- Malaka'jin, Stonetalon Mountains
				["497:576"] = 77, -- Silverwind Refuge, Ashenvale
				["541:537"] = 137, -- The Mor'Shan Ramparts, Ashenvale
			},
		},
		{
			tag = "461:483",
			name = "Malaka'jin, Stonetalon Mountains",
			neighbors = {
				["316:415"] = 164, -- Shadowprey Village, Desolace
				["399:577"] = 111, -- Cliffwalker Post, Stonetalon Mountains
				["407:527"] = 74, -- Sun Rock Retreat, Stonetalon Mountains
				["449:438"] = 47, -- Thunder Bluff, Mulgore
				["451:525"] = 69, -- Krom'gar Fortress, Stonetalon Mountains
				["557:469"] = 86, -- The Crossroads, Northern Barrens
			},
		},
		{
			tag = "462:497",
			name = "Northwatch Expedition Base Camp, Stonetalon Mountains",
			neighbors = {
				["367:527"] = 121, -- Farwatcher's Glen, Stonetalon Mountains
				["387:575"] = 114, -- Thal'darah Overlook, Stonetalon Mountains
				["396:493"] = 67, -- Nijel's Point, Desolace
				["432:539"] = 61, -- Windshear Hold, Stonetalon Mountains
				["463:565"] = 83, -- Stardust Spire, Ashenvale
				["513:473"] = 51, -- Honor's Stand, Southern Barrens
			},
		},
		{
			tag = "462:603",
			name = "Astranaar, Ashenvale",
			neighbors = {
				["387:575"] = 176, -- Thal'darah Overlook, Stonetalon Mountains
				["423:647"] = 52, -- Blackfathom Camp, Ashenvale
				["444:691"] = 88, -- Grove of the Ancients, Darkshore
				["463:565"] = 43, -- Stardust Spire, Ashenvale
				["464:794"] = 205, -- Lor'danel, Darkshore
				["505:650"] = 78, -- Emerald Sanctuary, Felwood
				["582:610"] = 135, -- Forest Song, Ashenvale
				["605:450"] = 193, -- Ratchet, The Barrens
				["636:330"] = 388, -- Theramore, Dustwallow Marsh
			},
		},
		{
			tag = "463:565",
			name = "Stardust Spire, Ashenvale",
			neighbors = {
				["387:575"] = 95, -- Thal'darah Overlook, Stonetalon Mountains
				["396:493"] = 94, -- Nijel's Point, Desolace
				["432:539"] = 64, -- Windshear Hold, Stonetalon Mountains
				["462:497"] = 65, -- Northwatch Expedition Base Camp, Stonetalon Mountains
				["462:603"] = 39, -- Astranaar, Ashenvale
				["513:473"] = 103, -- Honor's Stand, Southern Barrens
			},
		},
		{
			tag = "464:794",
			name = "Lor'danel, Darkshore",
			neighbors = {
				["360:304"] = 495, -- Feathermoon, Feralas
				["387:575"] = 267, -- Thal'darah Overlook, Stonetalon Mountains
				["396:493"] = 348, -- Nijel's Point, Desolace
				["410:832"] = 61, -- Rut'theran Village, Teldrassil
				["444:691"] = 93, -- Grove of the Ancients, Darkshore
				["462:603"] = 225, -- Astranaar, Ashenvale
				["527:742"] = 96, -- Talonbranch Glade, Felwood
				["552:794"] = 92, -- Moonglade
				["636:330"] = 502, -- Theramore, Dustwallow Marsh
			},
		},
		{
			tag = "466:393",
			name = "Bloodhoof Village, Mulgore",
			neighbors = {
				["449:438"] = 50, -- Thunder Bluff, Mulgore
			},
		},
		{
			tag = "471:612",
			name = "Hellscream's Watch, Ashenvale",
			neighbors = {
				["399:577"] = 85, -- Cliffwalker Post, Stonetalon Mountains
				["407:527"] = 113, -- Sun Rock Retreat, Stonetalon Mountains
				["407:625"] = 60, -- Zoram'gar Outpost, Ashenvale
				["497:576"] = 47, -- Silverwind Refuge, Ashenvale
				["505:650"] = 91, -- Emerald Sanctuary, Felwood
				["541:537"] = 120, -- The Mor'Shan Ramparts, Ashenvale
				["554:582"] = 106, -- Splintertree Post, Ashenvale
			},
		},
		{
			tag = "485:737",
			name = "Whisperwind Grove, Felwood",
			neighbors = {
				["487:682"] = 60, -- Wildheart Point, Felwood
				["505:650"] = 90, -- Emerald Sanctuary, Felwood
				["517:770"] = 41, -- Irontree Clearing, Felwood
				["527:742"] = 59, -- Talonbranch Glade, Felwood
			},
		},
		{
			tag = "487:682",
			name = "Wildheart Point, Felwood",
			neighbors = {
				["444:691"] = 52, -- Grove of the Ancients, Darkshore
				["485:737"] = 68, -- Whisperwind Grove, Felwood
				["505:650"] = 35, -- Emerald Sanctuary, Felwood
			},
		},
		{
			tag = "488:310",
			name = "Westreach Summit, Thousand Needles",
			neighbors = {
				["442:306"] = 50, -- Camp Mojache, Feralas
				["449:438"] = 215, -- Thunder Bluff, Mulgore
				["520:352"] = 100, -- Desolation Hold, Southern Barrens
				["521:399"] = 122, -- Vendetta Point, Northern Barrens
				["557:469"] = 186, -- The Crossroads, Northern Barrens
				["567:358"] = 97, -- Brackenwall Village, Dustwallow Marsh
				["583:300"] = 83, -- Mudsprocket, Dustwallow Marsh
				["607:196"] = 153, -- Gadgetzan, Tanaris
				["611:238"] = 118, -- Fizzle & Pozzik's Speedbarge, Thousand Needles
			},
		},
		{
			tag = "493:100",
			name = "Ramkahen, Uldum",
			neighbors = {
				["407:047"] = 94, -- Schnottz's Landing, Uldum
				["418:143"] = 83, -- Oasis of Vir'sar, Uldum
				["552:097"] = 68, -- Dawnrise Expedition, Tanaris
				["572:097"] = 80, -- Gunstan's Dig, Tanaris
			},
		},
		{
			tag = "495:201",
			name = "Mossy Pile, Un'Goro Crater",
			neighbors = {
				["416:207"] = 84, -- Cenarion Hold, Silithus
				["418:209"] = 83, -- Cenarion Hold, Silithus
				["514:177"] = 29, -- Marshal's Stand, Un'Goro Crater
				["605:192"] = 97, -- Gadgetzan, Tanaris
				["607:196"] = 98, -- Gadgetzan, Tanaris
			},
		},
		{
			tag = "497:576",
			name = "Silverwind Refuge, Ashenvale",
			neighbors = {
				["451:525"] = 77, -- Krom'gar Fortress, Stonetalon Mountains
				["471:612"] = 43, -- Hellscream's Watch, Ashenvale
				["541:537"] = 70, -- The Mor'Shan Ramparts, Ashenvale
				["554:582"] = 64, -- Splintertree Post, Ashenvale
			},
		},
		{
			tag = "505:650",
			name = "Emerald Sanctuary, Felwood",
			neighbors = {
				["407:625"] = 114, -- Zoram'gar Outpost, Ashenvale
				["423:647"] = 96, -- Blackfathom Camp, Ashenvale
				["444:691"] = 77, -- Grove of the Ancients, Darkshore
				["462:603"] = 80, -- Astranaar, Ashenvale
				["471:612"] = 70, -- Hellscream's Watch, Ashenvale
				["485:737"] = 97, -- Whisperwind Grove, Felwood
				["487:682"] = 43, -- Wildheart Point, Felwood
				["527:742"] = 128, -- Talonbranch Glade, Felwood
				["554:582"] = 83, -- Splintertree Post, Ashenvale
				["582:610"] = 103, -- Forest Song, Ashenvale
			},
		},
		{
			tag = "513:473",
			name = "Honor's Stand, Southern Barrens",
			neighbors = {
				["462:497"] = 58, -- Northwatch Expedition Base Camp, Stonetalon Mountains
				["463:565"] = 112, -- Stardust Spire, Ashenvale
				["544:358"] = 103, -- Fort Triumph, Southern Barrens
				["597:400"] = 100, -- Northwatch Hold, Southern Barrens
				["605:450"] = 85, -- Ratchet, The Barrens
			},
		},
		{
			tag = "514:177",
			name = "Marshal's Stand, Un'Goro Crater",
			neighbors = {
				["416:207"] = 126, -- Cenarion Hold, Silithus
				["418:209"] = 121, -- Cenarion Hold, Silithus
				["495:201"] = 38, -- Mossy Pile, Un'Goro Crater
				["605:192"] = 91, -- Gadgetzan, Tanaris
				["607:196"] = 93, -- Gadgetzan, Tanaris
			},
		},
		{
			tag = "516:454",
			name = "Hunter's Hill, Southern Barrens",
			neighbors = {
				["449:438"] = 66, -- Thunder Bluff, Mulgore
				["520:352"] = 93, -- Desolation Hold, Southern Barrens
				["521:399"] = 49, -- Vendetta Point, Northern Barrens
				["557:469"] = 43, -- The Crossroads, Northern Barrens
			},
		},
		{
			tag = "517:770",
			name = "Irontree Clearing, Felwood",
			neighbors = {
				["485:737"] = 41, -- Whisperwind Grove, Felwood
				["537:794"] = 76, -- Moonglade
				["640:767"] = 123, -- Everlook, Winterspring
			},
		},
		{
			tag = "520:352",
			name = "Desolation Hold, Southern Barrens",
			neighbors = {
				["442:306"] = 97, -- Camp Mojache, Feralas
				["488:310"] = 101, -- Westreach Summit, Thousand Needles
				["516:454"] = 98, -- Hunter's Hill, Southern Barrens
				["521:399"] = 48, -- Vendetta Point, Northern Barrens
				["567:358"] = 47, -- Brackenwall Village, Dustwallow Marsh
				["583:300"] = 76, -- Mudsprocket, Dustwallow Marsh
			},
		},
		{
			tag = "521:399",
			name = "Vendetta Point, Northern Barrens",
			neighbors = {
				["449:438"] = 117, -- Thunder Bluff, Mulgore
				["488:310"] = 128, -- Westreach Summit, Thousand Needles
				["516:454"] = 56, -- Hunter's Hill, Southern Barrens
				["520:352"] = 45, -- Desolation Hold, Southern Barrens
				["557:469"] = 77, -- The Crossroads, Northern Barrens
				["567:358"] = 62, -- Brackenwall Village, Dustwallow Marsh
			},
		},
		{
			tag = "523:699",
			name = "Grove of Aessina, Hyjal",
			neighbors = {
				["560:692"] = 45, -- Shrine of Aviana, Hyjal
				["597:717"] = 81, -- Nordrassil, Hyjal
			},
		},
		{
			tag = "527:742",
			name = "Talonbranch Glade, Felwood",
			neighbors = {
				["444:691"] = 121, -- Grove of the Ancients, Darkshore
				["464:794"] = 115, -- Lor'danel, Darkshore
				["485:737"] = 51, -- Whisperwind Grove, Felwood
				["505:650"] = 129, -- Emerald Sanctuary, Felwood
				["552:794"] = 67, -- Moonglade
				["645:766"] = 107, -- Everlook, Winterspring
			},
		},
		{
			tag = "537:668",
			name = "Sanctuary of Malorne, Hyjal",
			neighbors = {
				["560:692"] = 31, -- Shrine of Aviana, Hyjal
			},
		},
		{
			tag = "537:794",
			name = "Moonglade",
			faction = "H",
			neighbors = {
				["517:770"] = 73, -- Irontree Clearing, Felwood
				["597:717"] = 135, -- Nordrassil, Hyjal
				["640:767"] = 141, -- Everlook, Winterspring
			},
		},
		{
			tag = "541:537",
			name = "The Mor'Shan Ramparts, Ashenvale",
			neighbors = {
				["451:525"] = 143, -- Krom'gar Fortress, Stonetalon Mountains
				["471:612"] = 93, -- Hellscream's Watch, Ashenvale
				["497:576"] = 70, -- Silverwind Refuge, Ashenvale
				["554:582"] = 46, -- Splintertree Post, Ashenvale
				["557:469"] = 65, -- The Crossroads, Northern Barrens
				["589:535"] = 58, -- Nozzlepot's Outpost, Northern Barrens
				["629:561"] = 102, -- Orgrimmar, Durotar
			},
		},
		{
			tag = "544:358",
			name = "Fort Triumph, Southern Barrens",
			neighbors = {
				["513:473"] = 103, -- Honor's Stand, Southern Barrens
				["583:300"] = 66, -- Mudsprocket, Dustwallow Marsh
				["597:400"] = 76, -- Northwatch Hold, Southern Barrens
			},
		},
		{
			tag = "549:807",
			name = "Nighthaven",
			faction = "H",
			comment = "no ', Moonglade' because it screws up matching",
			neighbors = {
				["449:438"] = 400, -- Thunder Bluff, Mulgore
			},
		},
		{
			tag = "549:808",
			name = "Nighthaven",
			faction = "A",
			comment = "no ', Moonglade' because it screws up matching",
			neighbors = {
				["410:832"] = 151, -- Rut'theran Village, Teldrassil
			},
		},
		{
			tag = "552:097",
			name = "Dawnrise Expedition, Tanaris",
			neighbors = {
				["493:100"] = 72, -- Ramkahen, Uldum
				["607:196"] = 94, -- Gadgetzan, Tanaris
				["618:130"] = 62, -- Bootlegger Outpost, Tanaris
			},
		},
		{
			tag = "552:794",
			name = "Moonglade",
			faction = "A",
			neighbors = {
				["464:794"] = 86, -- Lor'danel, Darkshore
				["527:742"] = 61, -- Talonbranch Glade, Felwood
				["597:717"] = 140, -- Nordrassil, Hyjal
				["645:766"] = 119, -- Everlook, Winterspring
			},
		},
		{
			tag = "554:582",
			name = "Splintertree Post, Ashenvale",
			neighbors = {
				["407:625"] = 167, -- Zoram'gar Outpost, Ashenvale
				["471:612"] = 82, -- Hellscream's Watch, Ashenvale
				["497:576"] = 58, -- Silverwind Refuge, Ashenvale
				["505:650"] = 85, -- Emerald Sanctuary, Felwood
				["541:537"] = 54, -- The Mor'Shan Ramparts, Ashenvale
				["557:469"] = 160, -- The Crossroads, Northern Barrens
				["621:610"] = 71, -- Valormok, Azshara
				["629:561"] = 96, -- Orgrimmar, Durotar
				["709:633"] = 158, -- Bilgewater Harbor, Azshara
			},
		},
		{
			tag = "557:469",
			name = "The Crossroads, Northern Barrens",
			neighbors = {
				["407:527"] = 151, -- Sun Rock Retreat, Stonetalon Mountains
				["407:625"] = 231, -- Zoram'gar Outpost, Ashenvale
				["442:306"] = 252, -- Camp Mojache, Feralas
				["449:438"] = 107, -- Thunder Bluff, Mulgore
				["461:483"] = 115, -- Malaka'jin, Stonetalon Mountains
				["488:310"] = 188, -- Westreach Summit, Thousand Needles
				["516:454"] = 49, -- Hunter's Hill, Southern Barrens
				["521:399"] = 70, -- Vendetta Point, Northern Barrens
				["541:537"] = 63, -- The Mor'Shan Ramparts, Ashenvale
				["554:582"] = 162, -- Splintertree Post, Ashenvale
				["567:358"] = 163, -- Brackenwall Village, Dustwallow Marsh
				["589:535"] = 67, -- Nozzlepot's Outpost, Northern Barrens
				["605:450"] = 52, -- Ratchet, The Barrens
				["607:196"] = 303, -- Gadgetzan, Tanaris
				["629:561"] = 117, -- Orgrimmar, Durotar
				["709:633"] = 228, -- Bilgewater Harbor, Azshara
			},
		},
		{
			tag = "560:692",
			name = "Shrine of Aviana, Hyjal",
			neighbors = {
				["523:699"] = 37, -- Grove of Aessina, Hyjal
				["537:668"] = 65, -- Sanctuary of Malorne, Hyjal
				["597:717"] = 46, -- Nordrassil, Hyjal
				["613:654"] = 61, -- Gates of Sothann, Hyjal
			},
		},
		{
			tag = "567:358",
			name = "Brackenwall Village, Dustwallow Marsh",
			neighbors = {
				["449:438"] = 224, -- Thunder Bluff, Mulgore
				["488:310"] = 111, -- Westreach Summit, Thousand Needles
				["520:352"] = 56, -- Desolation Hold, Southern Barrens
				["521:399"] = 60, -- Vendetta Point, Northern Barrens
				["557:469"] = 162, -- The Crossroads, Northern Barrens
				["583:300"] = 62, -- Mudsprocket, Dustwallow Marsh
				["605:450"] = 90, -- Ratchet, The Barrens
				["607:196"] = 205, -- Gadgetzan, Tanaris
				["629:561"] = 217, -- Orgrimmar, Durotar
			},
		},
		{
			tag = "572:097",
			name = "Gunstan's Dig, Tanaris",
			neighbors = {
				["493:100"] = 86, -- Ramkahen, Uldum
				["605:192"] = 87, -- Gadgetzan, Tanaris
				["618:130"] = 50, -- Bootlegger Outpost, Tanaris
			},
		},
		{
			tag = "582:610",
			name = "Forest Song, Ashenvale",
			neighbors = {
				["462:603"] = 142, -- Astranaar, Ashenvale
				["505:650"] = 110, -- Emerald Sanctuary, Felwood
				["613:654"] = 82, -- Gates of Sothann, Hyjal
			},
		},
		{
			tag = "583:300",
			name = "Mudsprocket, Dustwallow Marsh",
			neighbors = {
				["447:282"] = 144, -- Shadebough, Feralas
				["488:310"] = 100, -- Westreach Summit, Thousand Needles
				["520:352"] = 88, -- Desolation Hold, Southern Barrens
				["544:358"] = 66, -- Fort Triumph, Southern Barrens
				["567:358"] = 63, -- Brackenwall Village, Dustwallow Marsh
				["611:238"] = 60, -- Fizzle & Pozzik's Speedbarge, Thousand Needles
				["636:330"] = 53, -- Theramore, Dustwallow Marsh
			},
		},
		{
			tag = "589:535",
			name = "Nozzlepot's Outpost, Northern Barrens",
			neighbors = {
				["541:537"] = 58, -- The Mor'Shan Ramparts, Ashenvale
				["557:469"] = 65, -- The Crossroads, Northern Barrens
				["629:561"] = 0, -- Orgrimmar, Durotar
			},
		},
		{
			tag = "597:400",
			name = "Northwatch Hold, Southern Barrens",
			neighbors = {
				["513:473"] = 104, -- Honor's Stand, Southern Barrens
				["544:358"] = 78, -- Fort Triumph, Southern Barrens
				["605:450"] = 46, -- Ratchet, The Barrens
				["636:330"] = 73, -- Theramore, Dustwallow Marsh
			},
		},
		{
			tag = "597:717",
			name = "Nordrassil, Hyjal",
			neighbors = {
				["523:699"] = 77, -- Grove of Aessina, Hyjal
				["537:794"] = 132, -- Moonglade
				["552:794"] = 116, -- Moonglade
				["560:692"] = 47, -- Shrine of Aviana, Hyjal
				["640:767"] = 123, -- Everlook, Winterspring
				["645:766"] = 128, -- Everlook, Winterspring
			},
		},
		{
			tag = "605:192",
			name = "Gadgetzan, Tanaris",
			faction = "A",
			neighbors = {
				["418:209"] = 198, -- Cenarion Hold, Silithus
				["447:282"] = 214, -- Shadebough, Feralas
				["495:201"] = 105, -- Mossy Pile, Un'Goro Crater
				["514:177"] = 96, -- Marshal's Stand, Un'Goro Crater
				["572:097"] = 89, -- Gunstan's Dig, Tanaris
				["605:450"] = 247, -- Ratchet, The Barrens
				["611:238"] = 49, -- Fizzle & Pozzik's Speedbarge, Thousand Needles
				["618:130"] = 54, -- Bootlegger Outpost, Tanaris
				["636:330"] = 154, -- Theramore, Dustwallow Marsh
			},
		},
		{
			tag = "605:450",
			name = "Ratchet, The Barrens",
			neighbors = {
				["462:603"] = 197, -- Astranaar, Ashenvale
				["513:473"] = 90, -- Honor's Stand, Southern Barrens
				["557:469"] = 68, -- The Crossroads, Northern Barrens
				["567:358"] = 101, -- Brackenwall Village, Dustwallow Marsh
				["597:400"] = 55, -- Northwatch Hold, Southern Barrens
				["605:192"] = 245, -- Gadgetzan, Tanaris
				["607:196"] = 241, -- Gadgetzan, Tanaris
				["629:561"] = 104, -- Orgrimmar, Durotar
				["636:330"] = 105, -- Theramore, Dustwallow Marsh
			},
		},
		{
			tag = "607:196",
			name = "Gadgetzan, Tanaris",
			faction = "H",
			neighbors = {
				["416:207"] = 233, -- Cenarion Hold, Silithus
				["442:306"] = 199, -- Camp Mojache, Feralas
				["449:438"] = 308, -- Thunder Bluff, Mulgore
				["488:310"] = 167, -- Westreach Summit, Thousand Needles
				["495:201"] = 102, -- Mossy Pile, Un'Goro Crater
				["514:177"] = 100, -- Marshal's Stand, Un'Goro Crater
				["552:097"] = 98, -- Dawnrise Expedition, Tanaris
				["557:469"] = 300, -- The Crossroads, Northern Barrens
				["567:358"] = 194, -- Brackenwall Village, Dustwallow Marsh
				["605:450"] = 243, -- Ratchet, The Barrens
				["611:238"] = 50, -- Fizzle & Pozzik's Speedbarge, Thousand Needles
				["618:130"] = 57, -- Bootlegger Outpost, Tanaris
				["629:561"] = 350, -- Orgrimmar, Durotar
			},
		},
		{
			tag = "611:238",
			name = "Fizzle & Pozzik's Speedbarge, Thousand Needles",
			faction = "H",
			neighbors = {
				["488:310"] = 132, -- Westreach Summit, Thousand Needles
				["583:300"] = 72, -- Mudsprocket, Dustwallow Marsh
				["607:196"] = 39, -- Gadgetzan, Tanaris
			},
		},
		{
			tag = "611:238",
			name = "Fizzle & Pozzik's Speedbarge, Thousand Needles",
			faction = "A",
			comment = "originally 611:238, moved this y coord by 1 to seperate horde and alliance",
			neighbors = {
				["447:282"] = 180, -- Shadebough, Feralas
				["583:300"] = 72, -- Mudsprocket, Dustwallow Marsh
				["605:192"] = 43, -- Gadgetzan, Tanaris
			},
		},
		{
			tag = "613:654",
			name = "Gates of Sothann, Hyjal",
			neighbors = {
				["560:692"] = 45, -- Shrine of Aviana, Hyjal
				["582:610"] = 42, -- Forest Song, Ashenvale
				["621:610"] = 37, -- Valormok, Azshara
				["629:561"] = 74, -- Orgrimmar, Durotar
			},
		},
		{
			tag = "618:130",
			name = "Bootlegger Outpost, Tanaris",
			neighbors = {
				["552:097"] = 64, -- Dawnrise Expedition, Tanaris
				["572:097"] = 51, -- Gunstan's Dig, Tanaris
				["605:192"] = 60, -- Gadgetzan, Tanaris
				["607:196"] = 61, -- Gadgetzan, Tanaris
			},
		},
		{
			tag = "621:610",
			name = "Valormok, Azshara",
			neighbors = {
				["554:582"] = 80, -- Splintertree Post, Ashenvale
				["613:654"] = 72, -- Gates of Sothann, Hyjal
				["629:561"] = 76, -- Orgrimmar, Durotar
				["709:633"] = 86, -- Bilgewater Harbor, Azshara
			},
		},
		{
			tag = "629:561",
			name = "Orgrimmar, Durotar",
			neighbors = {
				["449:438"] = 225, -- Thunder Bluff, Mulgore
				["541:537"] = 99, -- The Mor'Shan Ramparts, Ashenvale
				["554:582"] = 93, -- Splintertree Post, Ashenvale
				["557:469"] = 108, -- The Crossroads, Northern Barrens
				["567:358"] = 228, -- Brackenwall Village, Dustwallow Marsh
				["589:535"] = 0, -- Nozzlepot's Outpost, Northern Barrens
				["605:450"] = 108, -- Ratchet, The Barrens
				["607:196"] = 417, -- Gadgetzan, Tanaris
				["613:654"] = 117, -- Gates of Sothann, Hyjal
				["621:610"] = 82, -- Valormok, Azshara
				["640:767"] = 240, -- Everlook, Winterspring
				["646:498"] = 55, -- Razor Hill, Durotar
				["706:596"] = 93, -- Southern Rocketway, Azshara
				["709:633"] = 114, -- Bilgewater Harbor, Azshara
			},
		},
		{
			tag = "636:330",
			name = "Theramore, Dustwallow Marsh",
			neighbors = {
				["396:493"] = 334, -- Nijel's Point, Desolace
				["447:282"] = 201, -- Shadebough, Feralas
				["462:603"] = 369, -- Astranaar, Ashenvale
				["464:794"] = 500, -- Lor'danel, Darkshore
				["583:300"] = 63, -- Mudsprocket, Dustwallow Marsh
				["597:400"] = 81, -- Northwatch Hold, Southern Barrens
				["605:192"] = 157, -- Gadgetzan, Tanaris
				["605:450"] = 116, -- Ratchet, The Barrens
			},
		},
		{
			tag = "640:767",
			name = "Everlook, Winterspring",
			faction = "H",
			neighbors = {
				["517:770"] = 122, -- Irontree Clearing, Felwood
				["537:794"] = 134, -- Moonglade
				["597:717"] = 126, -- Nordrassil, Hyjal
				["629:561"] = 243, -- Orgrimmar, Durotar
				["709:633"] = 148, -- Bilgewater Harbor, Azshara
			},
		},
		{
			tag = "645:766",
			name = "Everlook, Winterspring",
			faction = "A",
			neighbors = {
				["527:742"] = 107, -- Talonbranch Glade, Felwood
				["552:794"] = 110, -- Moonglade
				["597:717"] = 130, -- Nordrassil, Hyjal
			},
		},
		{
			tag = "646:498",
			name = "Razor Hill, Durotar",
			neighbors = {
				["629:561"] = 60, -- Orgrimmar, Durotar
				["651:455"] = 36, -- Sen'jin Village, Durotar
			},
		},
		{
			tag = "651:455",
			name = "Sen'jin Village, Durotar",
			neighbors = {
				["646:498"] = 36, -- Razor Hill, Durotar
			},
		},
		{
			tag = "706:596",
			name = "Southern Rocketway, Azshara",
			neighbors = {
				["629:561"] = 88, -- Orgrimmar, Durotar
				["709:633"] = 39, -- Bilgewater Harbor, Azshara
			},
		},
		{
			tag = "709:633",
			name = "Bilgewater Harbor, Azshara",
			neighbors = {
				["449:438"] = 304, -- Thunder Bluff, Mulgore
				["554:582"] = 149, -- Splintertree Post, Ashenvale
				["557:469"] = 234, -- The Crossroads, Northern Barrens
				["621:610"] = 83, -- Valormok, Azshara
				["629:561"] = 98, -- Orgrimmar, Durotar
				["640:767"] = 150, -- Everlook, Winterspring
				["706:596"] = 33, -- Southern Rocketway, Azshara
				["740:677"] = 53, -- Northern Rocketway, Azshara
			},
		},
		{
			tag = "740:677",
			name = "Northern Rocketway, Azshara",
			neighbors = {
				["709:633"] = 50, -- Bilgewater Harbor, Azshara
			},
		},
	},
	[2]={
		{
			tag = "215:347",
			name = "Tenebrous Cavern, Vashj'ir",
			taxioperator = "seahorse",
			neighbors = {
				["277:335"] = 73, -- Stygian Bounty, Vashj'ir
				["280:337"] = 78, -- Legion's Rest, Vashj'ir
			},
		},
		{
			tag = "219:334",
			name = "Darkbreak Cove, Vashj'ir",
			taxioperator = "seahorse",
			neighbors = {
				["276:344"] = 63, -- Tranquil Wash, Vashj'ir
				["290:323"] = 80, -- Voldrin's Hold, Vashj'ir
			},
		},
		{
			tag = "276:344",
			name = "Tranquil Wash, Vashj'ir",
			taxioperator = "seahorse",
			neighbors = {
				["219:334"] = 69, -- Darkbreak Cove, Vashj'ir
				["277:361"] = 44, -- Silver Tide Hollow, Vashj'ir
				["290:323"] = 60, -- Voldrin's Hold, Vashj'ir
			},
		},
		{
			tag = "277:335",
			name = "Stygian Bounty, Vashj'ir",
			taxioperator = "seahorse",
			neighbors = {
				["215:347"] = 77, -- Tenebrous Cavern, Vashj'ir
				["280:337"] = 33, -- Legion's Rest, Vashj'ir
			},
		},
		{
			tag = "277:361",
			name = "Silver Tide Hollow, Vashj'ir",
			taxioperator = "seahorse",
			neighbors = {
				["276:344"] = 44, -- Tranquil Wash, Vashj'ir
				["280:337"] = 49, -- Legion's Rest, Vashj'ir
				["290:391"] = 58, -- Sandy Beach, Vashj'ir
				["297:377"] = 36, -- Sandy Beach, Vashj'ir
				["305:414"] = 72, -- Smuggler's Scar, Vashj'ir
			},
		},
		{
			tag = "278:335",
			name = "Stygian Bounty, Vashj'ir",
			faction = "H",
			neighbors = {
				["296:377"] = 50, -- Sandy Beach, Vashj'ir
			},
		},
		{
			tag = "280:337",
			name = "Legion's Rest, Vashj'ir",
			taxioperator = "seahorse",
			neighbors = {
				["215:347"] = 72, -- Tenebrous Cavern, Vashj'ir
				["277:335"] = 28, -- Stygian Bounty, Vashj'ir
				["277:361"] = 50, -- Silver Tide Hollow, Vashj'ir
			},
		},
		{
			tag = "289:323",
			name = "Voldrin's Hold, Vashj'ir",
			neighbors = {
				["290:389"] = 70, -- Sandy Beach, Vashj'ir
			},
		},
		{
			tag = "290:323",
			name = "Voldrin's Hold, Vashj'ir",
			taxioperator = "seahorse",
			neighbors = {
				["219:334"] = 81, -- Darkbreak Cove, Vashj'ir
				["276:344"] = 46, -- Tranquil Wash, Vashj'ir
			},
		},
		{
			tag = "290:389",
			name = "Sandy Beach, Vashj'ir",
			faction = "A",
			neighbors = {
				["289:323"] = 68, -- Voldrin's Hold, Vashj'ir
				["466:406"] = 189, -- Ironforge, Dun Morogh
			},
		},
		{
			tag = "290:391",
			name = "Sandy Beach, Vashj'ir",
			taxioperator = "seahorse",
			faction = "A",
			neighbors = {
				["277:361"] = 61, -- Silver Tide Hollow, Vashj'ir
				["305:414"] = 31, -- Smuggler's Scar, Vashj'ir
			},
		},
		{
			tag = "296:377",
			name = "Sandy Beach, Vashj'ir",
			faction = "H",
			neighbors = {
				["278:335"] = 46, -- Stygian Bounty, Vashj'ir
				["416:628"] = 358, -- Undercity, Tirisfal
			},
		},
		{
			tag = "297:377",
			name = "Sandy Beach, Vashj'ir",
			taxioperator = "seahorse",
			faction = "H",
			neighbors = {
				["277:361"] = 44, -- Silver Tide Hollow, Vashj'ir
				["305:414"] = 40, -- Smuggler's Scar, Vashj'ir
			},
		},
		{
			tag = "305:414",
			name = "Smuggler's Scar, Vashj'ir",
			taxioperator = "seahorse",
			neighbors = {
				["277:361"] = 84, -- Silver Tide Hollow, Vashj'ir
				["297:377"] = 43, -- Sandy Beach, Vashj'ir
			},
		},
		{
			tag = "369:542",
			name = "Forsaken Forward Command, Gilneas",
			neighbors = {
				["380:569"] = 0, -- The Forsaken Front, Silverpine Forest
			},
		},
		{
			tag = "372:196",
			name = "Moonbrook, Westfall",
			neighbors = {
				["390:207"] = 27, -- Sentinel Hill, Westfall
			},
		},
		{
			tag = "372:590",
			name = "The Sepulcher, Silverpine Forest",
			neighbors = {
				["373:610"] = 51, -- Forsaken Rear Guard, Silverpine Forest
				["380:569"] = 25, -- The Forsaken Front, Silverpine Forest
				["390:623"] = 54, --  Forsaken High Command, Silverpine Forest
				["416:628"] = 122, -- Undercity, Tirisfal
				["456:573"] = 97, -- Tarren Mill, Hillsbrad
			},
		},
		{
			tag = "373:610",
			name = "Forsaken Rear Guard, Silverpine Forest",
			neighbors = {
				["372:590"] = 31, -- The Sepulcher, Silverpine Forest
				["390:623"] = 25, --  Forsaken High Command, Silverpine Forest
			},
		},
		{
			tag = "380:569",
			name = "The Forsaken Front, Silverpine Forest",
			neighbors = {
				["369:542"] = 0, -- Forsaken Forward Command, Gilneas
				["372:590"] = 36, -- The Sepulcher, Silverpine Forest
				["410:552"] = 38, -- Southpoint Gate, Hillsbrad
			},
		},
		{
			tag = "381:232",
			name = "Furlbrow's Pumpkin Farm, Westfall",
			neighbors = {
				["390:207"] = 28, -- Sentinel Hill, Westfall
				["409:266"] = 59, -- Stormwind, Elwynn
			},
		},
		{
			tag = "390:207",
			name = "Sentinel Hill, Westfall",
			neighbors = {
				["372:196"] = 25, -- Moonbrook, Westfall
				["381:232"] = 33, -- Furlbrow's Pumpkin Farm, Westfall
				["409:071"] = 186, -- Booty Bay, Stranglethorn
				["409:266"] = 86, -- Stormwind, Elwynn
				["416:201"] = 31, -- Raven Hill, Duskwood
				["433:180"] = 62, -- Rebel Camp, Stranglethorn Vale
				["469:208"] = 97, -- Darkshire, Duskwood
				["503:246"] = 130, -- Lakeshire, Redridge
			},
		},
		{
			tag = "390:623",
			name = " Forsaken High Command, Silverpine Forest",
			neighbors = {
				["372:590"] = 40, -- The Sepulcher, Silverpine Forest
				["373:610"] = 28, -- Forsaken Rear Guard, Silverpine Forest
				["413:652"] = 50, -- Brill, Tirisfal Glades
				["416:628"] = 75, -- Undercity, Tirisfal
			},
		},
		{
			tag = "400:112",
			name = "Hardwrench Hideaway, Stranglethorn",
			neighbors = {
				["408:072"] = 48, -- Booty Bay, Stranglethorn
				["420:142"] = 39, -- Grom'gol, Stranglethorn
				["454:154"] = 73, -- Bambala, Stranglethorn
			},
		},
		{
			tag = "408:072",
			name = "Booty Bay, Stranglethorn",
			faction = "H",
			neighbors = {
				["400:112"] = 41, -- Hardwrench Hideaway, Stranglethorn
				["420:142"] = 76, -- Grom'gol, Stranglethorn
				["510:342"] = 309, -- New Kargath, Badlands
				["532:144"] = 170, -- Sunveil Excursion, Blasted Lands
				["539:210"] = 238, -- Stonard, Swamp of Sorrows
			},
		},
		{
			tag = "409:071",
			name = "Booty Bay, Stranglethorn",
			faction = "A",
			neighbors = {
				["390:207"] = 148, -- Sentinel Hill, Westfall
				["409:266"] = 199, -- Stormwind, Elwynn
				["429:101"] = 50, -- Explorers' League Digsite, Stranglethorn
				["433:180"] = 118, -- Rebel Camp, Stranglethorn Vale
				["469:208"] = 166, -- Darkshire, Duskwood
				["527:130"] = 144, -- Surwich, Blasted Lands
			},
		},
		{
			tag = "409:266",
			name = "Stormwind, Elwynn",
			neighbors = {
				["381:232"] = 50, -- Furlbrow's Pumpkin Farm, Westfall
				["390:207"] = 78, -- Sentinel Hill, Westfall
				["409:071"] = 199, -- Booty Bay, Stranglethorn
				["423:246"] = 32, -- Goldshire, Elwynn
				["433:180"] = 93, -- Rebel Camp, Stranglethorn Vale
				["466:346"] = 133, -- Thorium Point, Searing Gorge
				["466:406"] = 216, -- Ironforge, Dun Morogh
				["469:208"] = 117, -- Darkshire, Duskwood
				["503:246"] = 113, -- Lakeshire, Redridge
				["521:283"] = 150, -- Morgan's Vigil, Burning Steppes
				["545:188"] = 176, -- Nethergarde Keep, Blasted Lands
			},
		},
		{
			tag = "410:552",
			name = "Southpoint Gate, Hillsbrad",
			neighbors = {
				["380:569"] = 39, -- The Forsaken Front, Silverpine Forest
				["444:550"] = 37, -- Ruins of Southshore, Hillsbrad
			},
		},
		{
			tag = "413:652",
			name = "Brill, Tirisfal Glades",
			neighbors = {
				["390:623"] = 45, --  Forsaken High Command, Silverpine Forest
				["416:628"] = 59, -- Undercity, Tirisfal
				["451:633"] = 45, -- The Bulwark, Tirisfal
			},
		},
		{
			tag = "416:201",
			name = "Raven Hill, Duskwood",
			neighbors = {
				["390:207"] = 43, -- Sentinel Hill, Westfall
				["433:180"] = 40, -- Rebel Camp, Stranglethorn Vale
				["469:208"] = 63, -- Darkshire, Duskwood
			},
		},
		{
			tag = "416:628",
			name = "Undercity, Tirisfal",
			neighbors = {
				["296:377"] = 345, -- Sandy Beach, Vashj'ir
				["372:590"] = 100, -- The Sepulcher, Silverpine Forest
				["390:623"] = 67, --  Forsaken High Command, Silverpine Forest
				["413:652"] = 62, -- Brill, Tirisfal Glades
				["451:633"] = 89, -- The Bulwark, Tirisfal
				["456:573"] = 145, -- Tarren Mill, Hillsbrad
				["481:540"] = 248, -- Galen's Fall, Arathi
				["510:342"] = 476, -- New Kargath, Badlands
				["519:641"] = 157, -- Thondroril River, Eastern Plaguelands
				["547:542"] = 301, -- Hammerfall, Arathi
				["589:551"] = 272, -- Revantusk Village, The Hinterlands
				["611:652"] = 262, -- Light's Hope Chapel, Eastern Plaguelands
			},
		},
		{
			tag = "420:142",
			name = "Grom'gol, Stranglethorn",
			neighbors = {
				["400:112"] = 39, -- Hardwrench Hideaway, Stranglethorn
				["408:072"] = 78, -- Booty Bay, Stranglethorn
				["454:154"] = 57, -- Bambala, Stranglethorn
				["501:313"] = 198, -- Flame Crest, Burning Steppes
				["510:342"] = 243, -- New Kargath, Badlands
				["539:210"] = 173, -- Stonard, Swamp of Sorrows
			},
		},
		{
			tag = "423:246",
			name = "Goldshire, Elwynn",
			neighbors = {
				["409:266"] = 26, -- Stormwind, Elwynn
				["469:208"] = 68, -- Darkshire, Duskwood
				["471:244"] = 57, -- Eastvale Logging Camp, Elwynn
			},
		},
		{
			tag = "429:101",
			name = "Explorers' League Digsite, Stranglethorn",
			neighbors = {
				["409:071"] = 53, -- Booty Bay, Stranglethorn
				["440:128"] = 46, -- Fort Livingston, Stranglethorn
			},
		},
		{
			tag = "433:180",
			name = "Rebel Camp, Stranglethorn Vale",
			neighbors = {
				["390:207"] = 66, -- Sentinel Hill, Westfall
				["409:071"] = 116, -- Booty Bay, Stranglethorn
				["409:266"] = 98, -- Stormwind, Elwynn
				["416:201"] = 39, -- Raven Hill, Duskwood
				["440:128"] = 54, -- Fort Livingston, Stranglethorn
				["469:208"] = 48, -- Darkshire, Duskwood
			},
		},
		{
			tag = "440:128",
			name = "Fort Livingston, Stranglethorn",
			neighbors = {
				["429:101"] = 44, -- Explorers' League Digsite, Stranglethorn
				["433:180"] = 55, -- Rebel Camp, Stranglethorn Vale
			},
		},
		{
			tag = "443:377",
			name = "Kharanos, Dun Morogh",
			neighbors = {
				["466:406"] = 46, -- Ironforge, Dun Morogh
				["480:375"] = 47, -- Gol'Bolar Quarry, Dun Morogh
			},
		},
		{
			tag = "444:550",
			name = "Ruins of Southshore, Hillsbrad",
			neighbors = {
				["410:552"] = 45, -- Southpoint Gate, Hillsbrad
				["456:573"] = 28, -- Tarren Mill, Hillsbrad
				["462:554"] = 19, -- Eastpoint Tower, Hillsbrad
			},
		},
		{
			tag = "451:633",
			name = "The Bulwark, Tirisfal",
			neighbors = {
				["413:652"] = 48, -- Brill, Tirisfal Glades
				["416:628"] = 89, -- Undercity, Tirisfal
				["456:573"] = 74, -- Tarren Mill, Hillsbrad
				["460:595"] = 45, -- Strahnbrad, Alterac Mountains
				["481:626"] = 35, -- Andorhal, Western Plaguelands
				["519:641"] = 73, -- Thondroril River, Eastern Plaguelands
			},
		},
		{
			tag = "453:442",
			name = "Menethil Harbor, Wetlands",
			neighbors = {
				["466:406"] = 90, -- Ironforge, Dun Morogh
				["495:462"] = 47, -- Whelgar's Retreat, Wetlands
				["513:530"] = 113, -- Refuge Pointe, Arathi
				["527:385"] = 163, -- Thelsamar, Loch Modan
			},
		},
		{
			tag = "454:154",
			name = "Bambala, Stranglethorn",
			neighbors = {
				["400:112"] = 70, -- Hardwrench Hideaway, Stranglethorn
				["420:142"] = 48, -- Grom'gol, Stranglethorn
				["560:165"] = 0, -- Shattered Landing, Blasted Lands
			},
		},
		{
			tag = "456:573",
			name = "Tarren Mill, Hillsbrad",
			neighbors = {
				["372:590"] = 104, -- The Sepulcher, Silverpine Forest
				["416:628"] = 139, -- Undercity, Tirisfal
				["444:550"] = 30, -- Ruins of Southshore, Hillsbrad
				["451:633"] = 69, -- The Bulwark, Tirisfal
				["460:595"] = 28, -- Strahnbrad, Alterac Mountains
				["462:554"] = 25, -- Eastpoint Tower, Hillsbrad
				["481:540"] = 0, -- Galen's Fall, Arathi
				["519:641"] = 108, -- Thondroril River, Eastern Plaguelands
				["524:573"] = 104, -- Hiri'watha Research Station, The Hinterlands
				["547:542"] = 118, -- Hammerfall, Arathi
				["589:551"] = 162, -- Revantusk Village, The Hinterlands
			},
		},
		{
			tag = "460:595",
			name = "Strahnbrad, Alterac Mountains",
			neighbors = {
				["451:633"] = 49, -- The Bulwark, Tirisfal
				["456:573"] = 32, -- Tarren Mill, Hillsbrad
			},
		},
		{
			tag = "461:292",
			name = "Flamestar Post, Burning Steppes",
			neighbors = {
				["468:326"] = 45, -- Iron Summit, Searing Gorge
				["492:300"] = 36, -- Chiselgrip, Burning Steppes
			},
		},
		{
			tag = "462:554",
			name = "Eastpoint Tower, Hillsbrad",
			neighbors = {
				["444:550"] = 25, -- Ruins of Southshore, Hillsbrad
				["456:573"] = 22, -- Tarren Mill, Hillsbrad
				["481:540"] = 32, -- Galen's Fall, Arathi
			},
		},
		{
			tag = "464:346",
			name = "Thorium Point, Searing Gorge",
			faction = "H",
			neighbors = {
				["468:326"] = 24, -- Iron Summit, Searing Gorge
				["501:313"] = 61, -- Flame Crest, Burning Steppes
				["510:342"] = 67, -- New Kargath, Badlands
			},
		},
		{
			tag = "466:346",
			name = "Thorium Point, Searing Gorge",
			faction = "A",
			neighbors = {
				["409:266"] = 126, -- Stormwind, Elwynn
				["466:406"] = 89, -- Ironforge, Dun Morogh
				["468:326"] = 25, -- Iron Summit, Searing Gorge
				["521:283"] = 90, -- Morgan's Vigil, Burning Steppes
				["527:385"] = 88, -- Thelsamar, Loch Modan
			},
		},
		{
			tag = "466:406",
			name = "Ironforge, Dun Morogh",
			neighbors = {
				["290:391"] = 187, -- Sandy Beach, Vashj'ir
				["409:266"] = 211, -- Stormwind, Elwynn
				["443:377"] = 46, -- Kharanos, Dun Morogh
				["453:442"] = 115, -- Menethil Harbor, Wetlands
				["466:346"] = 85, -- Thorium Point, Searing Gorge
				["475:606"] = 257, -- Chillwind Camp, Western Plaguelands
				["480:375"] = 56, -- Gol'Bolar Quarry, Dun Morogh
				["495:583"] = 240, -- Aerie Peak, The Hinterlands
				["513:530"] = 204, -- Refuge Pointe, Arathi
				["527:385"] = 102, -- Thelsamar, Loch Modan
				["562:468"] = 228, -- Vermillion Redoubt, Twilight Highlands
				["582:942"] = 675, -- Shattered Sun Staging Area
				["611:652"] = 349, -- Light's Hope Chapel, Eastern Plaguelands
			},
		},
		{
			tag = "468:326",
			name = "Iron Summit, Searing Gorge",
			neighbors = {
				["461:292"] = 47, -- Flamestar Post, Burning Steppes
				["464:346"] = 25, -- Thorium Point, Searing Gorge
				["466:346"] = 25, -- Thorium Point, Searing Gorge
			},
		},
		{
			tag = "469:208",
			name = "Darkshire, Duskwood",
			neighbors = {
				["390:207"] = 93, -- Sentinel Hill, Westfall
				["409:071"] = 171, -- Booty Bay, Stranglethorn
				["409:266"] = 88, -- Stormwind, Elwynn
				["416:201"] = 63, -- Raven Hill, Duskwood
				["423:246"] = 68, -- Goldshire, Elwynn
				["433:180"] = 47, -- Rebel Camp, Stranglethorn Vale
				["503:246"] = 60, -- Lakeshire, Redridge
				["545:188"] = 97, -- Nethergarde Keep, Blasted Lands
			},
		},
		{
			tag = "470:621",
			name = "Andorhal, Western Plaguelands",
			faction = "A",
			neighbors = {
				["475:606"] = 19, -- Chillwind Camp, Western Plaguelands
				["487:638"] = 25, -- The Menders' Stead, Western Plaguelands
				["495:583"] = 80, -- Aerie Peak, The Hinterlands
			},
		},
		{
			tag = "471:244",
			name = "Eastvale Logging Camp, Elwynn",
			neighbors = {
				["423:246"] = 53, -- Goldshire, Elwynn
				["503:246"] = 41, -- Lakeshire, Redridge
			},
		},
		{
			tag = "475:606",
			name = "Chillwind Camp, Western Plaguelands",
			neighbors = {
				["466:406"] = 260, -- Ironforge, Dun Morogh
				["470:621"] = 18, -- Andorhal, Western Plaguelands
				["487:638"] = 42, -- The Menders' Stead, Western Plaguelands
				["495:583"] = 65, -- Aerie Peak, The Hinterlands
				["519:641"] = 59, -- Thondroril River, Eastern Plaguelands
				["611:652"] = 146, -- Light's Hope Chapel, Eastern Plaguelands
			},
		},
		{
			tag = "478:672",
			name = "Hearthglen, Western Plaguelands",
			neighbors = {
				["487:638"] = 45, -- The Menders' Stead, Western Plaguelands
				["531:676"] = 61, -- Plaguewood Tower, Eastern Plaguelands
			},
		},
		{
			tag = "480:375",
			name = "Gol'Bolar Quarry, Dun Morogh",
			neighbors = {
				["443:377"] = 44, -- Kharanos, Dun Morogh
				["466:406"] = 69, -- Ironforge, Dun Morogh
			},
		},
		{
			tag = "481:540",
			name = "Galen's Fall, Arathi",
			neighbors = {
				["416:628"] = 199, -- Undercity, Tirisfal
				["456:573"] = 0, -- Tarren Mill, Hillsbrad
				["462:554"] = 34, -- Eastpoint Tower, Hillsbrad
				["547:542"] = 74, -- Hammerfall, Arathi
			},
		},
		{
			tag = "481:626",
			name = "Andorhal, Western Plaguelands",
			faction = "H",
			neighbors = {
				["451:633"] = 37, -- The Bulwark, Tirisfal
				["487:638"] = 16, -- The Menders' Stead, Western Plaguelands
				["524:573"] = 90, -- Hiri'watha Research Station, The Hinterlands
			},
		},
		{
			tag = "487:638",
			name = "The Menders' Stead, Western Plaguelands",
			neighbors = {
				["470:621"] = 29, -- Andorhal, Western Plaguelands
				["475:606"] = 43, -- Chillwind Camp, Western Plaguelands
				["478:672"] = 44, -- Hearthglen, Western Plaguelands
				["481:626"] = 26, -- Andorhal, Western Plaguelands
				["519:641"] = 37, -- Thondroril River, Eastern Plaguelands
			},
		},
		{
			tag = "492:300",
			name = "Chiselgrip, Burning Steppes",
			neighbors = {
				["461:292"] = 35, -- Flamestar Post, Burning Steppes
				["501:313"] = 17, -- Flame Crest, Burning Steppes
				["521:283"] = 39, -- Morgan's Vigil, Burning Steppes
			},
		},
		{
			tag = "495:462",
			name = "Whelgar's Retreat, Wetlands",
			neighbors = {
				["453:442"] = 53, -- Menethil Harbor, Wetlands
				["511:481"] = 29, -- Dun Modr, Wetlands
				["520:459"] = 30, -- Greenwarden's Grove, Wetlands
			},
		},
		{
			tag = "495:583",
			name = "Aerie Peak, The Hinterlands",
			neighbors = {
				["466:406"] = 256, -- Ironforge, Dun Morogh
				["470:621"] = 70, -- Andorhal, Western Plaguelands
				["475:606"] = 57, -- Chillwind Camp, Western Plaguelands
				["513:530"] = 75, -- Refuge Pointe, Arathi
				["568:584"] = 80, -- Stormfeather Outpost, The Hinterlands
				["611:652"] = 164, -- Light's Hope Chapel, Eastern Plaguelands
			},
		},
		{
			tag = "501:313",
			name = "Flame Crest, Burning Steppes",
			neighbors = {
				["420:142"] = 206, -- Grom'gol, Stranglethorn
				["464:346"] = 61, -- Thorium Point, Searing Gorge
				["492:300"] = 17, -- Chiselgrip, Burning Steppes
				["510:342"] = 82, -- New Kargath, Badlands
				["539:210"] = 192, -- Stonard, Swamp of Sorrows
				["561:235"] = 108, -- Bogpaddle, Swamp of Sorrows
			},
		},
		{
			tag = "503:246",
			name = "Lakeshire, Redridge",
			neighbors = {
				["390:207"] = 134, -- Sentinel Hill, Westfall
				["409:266"] = 113, -- Stormwind, Elwynn
				["469:208"] = 61, -- Darkshire, Duskwood
				["471:244"] = 39, -- Eastvale Logging Camp, Elwynn
				["521:283"] = 61, -- Morgan's Vigil, Burning Steppes
				["524:245"] = 21, -- Camp Everstill, Redridge
				["525:222"] = 47, -- The Harborage, Swamp of Sorrows
			},
		},
		{
			tag = "510:342",
			name = "New Kargath, Badlands",
			neighbors = {
				["408:072"] = 301, -- Booty Bay, Stranglethorn
				["416:628"] = 470, -- Undercity, Tirisfal
				["420:142"] = 243, -- Grom'gol, Stranglethorn
				["464:346"] = 63, -- Thorium Point, Searing Gorge
				["501:313"] = 73, -- Flame Crest, Burning Steppes
				["539:210"] = 228, -- Stonard, Swamp of Sorrows
				["547:542"] = 252, -- Hammerfall, Arathi
				["548:334"] = 45, -- Bloodwatcher Point, Badlands
				["560:345"] = 57, -- Fuselight, Badlands
				["562:468"] = 189, -- Vermillion Redoubt, Twilight Highlands
				["645:434"] = 251, -- Dragonmaw Port, Twilight Highlands
			},
		},
		{
			tag = "511:481",
			name = "Dun Modr, Wetlands",
			neighbors = {
				["495:462"] = 33, -- Whelgar's Retreat, Wetlands
				["513:530"] = 52, -- Refuge Pointe, Arathi
				["520:459"] = 36, -- Greenwarden's Grove, Wetlands
			},
		},
		{
			tag = "513:530",
			name = "Refuge Pointe, Arathi",
			neighbors = {
				["453:442"] = 126, -- Menethil Harbor, Wetlands
				["466:406"] = 271, -- Ironforge, Dun Morogh
				["495:583"] = 72, -- Aerie Peak, The Hinterlands
				["511:481"] = 59, -- Dun Modr, Wetlands
				["527:385"] = 170, -- Thelsamar, Loch Modan
				["562:468"] = 146, -- Vermillion Redoubt, Twilight Highlands
				["568:584"] = 85, -- Stormfeather Outpost, The Hinterlands
			},
		},
		{
			tag = "515:329",
			name = "Dragon's Mouth, Badlands",
			neighbors = {
				["521:283"] = 55, -- Morgan's Vigil, Burning Steppes
				["544:344"] = 35, -- Dustwind Dig, Badlands
				["560:345"] = 54, -- Fuselight, Badlands
			},
		},
		{
			tag = "519:641",
			name = "Thondroril River, Eastern Plaguelands",
			neighbors = {
				["416:628"] = 161, -- Undercity, Tirisfal
				["451:633"] = 77, -- The Bulwark, Tirisfal
				["456:573"] = 100, -- Tarren Mill, Hillsbrad
				["475:606"] = 58, -- Chillwind Camp, Western Plaguelands
				["487:638"] = 39, -- The Menders' Stead, Western Plaguelands
				["524:573"] = 86, -- Hiri'watha Research Station, The Hinterlands
				["554:639"] = 45, -- Crown Guard Tower, Eastern Plaguelands
				["568:584"] = 109, -- Stormfeather Outpost, The Hinterlands
				["611:652"] = 101, -- Light's Hope Chapel, Eastern Plaguelands
			},
		},
		{
			tag = "520:459",
			name = "Greenwarden's Grove, Wetlands",
			neighbors = {
				["495:462"] = 26, -- Whelgar's Retreat, Wetlands
				["511:481"] = 28, -- Dun Modr, Wetlands
				["521:431"] = 33, -- Slabchisel's Survey, Wetlands
				["562:468"] = 68, -- Vermillion Redoubt, Twilight Highlands
			},
		},
		{
			tag = "521:283",
			name = "Morgan's Vigil, Burning Steppes",
			neighbors = {
				["409:266"] = 151, -- Stormwind, Elwynn
				["466:346"] = 91, -- Thorium Point, Searing Gorge
				["492:300"] = 43, -- Chiselgrip, Burning Steppes
				["503:246"] = 63, -- Lakeshire, Redridge
				["515:329"] = 55, -- Dragon's Mouth, Badlands
				["545:188"] = 197, -- Nethergarde Keep, Blasted Lands
				["561:235"] = 77, -- Bogpaddle, Swamp of Sorrows
			},
		},
		{
			tag = "521:431",
			name = "Slabchisel's Survey, Wetlands",
			neighbors = {
				["520:459"] = 33, -- Greenwarden's Grove, Wetlands
				["527:385"] = 60, -- Thelsamar, Loch Modan
			},
		},
		{
			tag = "522:194",
			name = "Dreadmaul Hold, Blasted Lands",
			neighbors = {
				["532:144"] = 56, -- Sunveil Excursion, Blasted Lands
				["539:210"] = 44, -- Stonard, Swamp of Sorrows
			},
		},
		{
			tag = "524:245",
			name = "Camp Everstill, Redridge",
			neighbors = {
				["503:246"] = 24, -- Lakeshire, Redridge
				["546:239"] = 33, -- Shalewind Canyon, Redridge
			},
		},
		{
			tag = "524:573",
			name = "Hiri'watha Research Station, The Hinterlands",
			neighbors = {
				["456:573"] = 81, -- Tarren Mill, Hillsbrad
				["481:626"] = 74, -- Andorhal, Western Plaguelands
				["519:641"] = 82, -- Thondroril River, Eastern Plaguelands
				["547:542"] = 70, -- Hammerfall, Arathi
				["589:551"] = 85, -- Revantusk Village, The Hinterlands
			},
		},
		{
			tag = "525:222",
			name = "The Harborage, Swamp of Sorrows",
			neighbors = {
				["503:246"] = 46, -- Lakeshire, Redridge
				["559:220"] = 38, -- Marshtide Watch, Swamp of Sorrows
			},
		},
		{
			tag = "527:130",
			name = "Surwich, Blasted Lands",
			neighbors = {
				["409:071"] = 152, -- Booty Bay, Stranglethorn
				["545:188"] = 73, -- Nethergarde Keep, Blasted Lands
			},
		},
		{
			tag = "527:385",
			name = "Thelsamar, Loch Modan",
			neighbors = {
				["453:442"] = 152, -- Menethil Harbor, Wetlands
				["466:346"] = 81, -- Thorium Point, Searing Gorge
				["466:406"] = 110, -- Ironforge, Dun Morogh
				["513:530"] = 163, -- Refuge Pointe, Arathi
				["521:431"] = 60, -- Slabchisel's Survey, Wetlands
				["544:344"] = 46, -- Dustwind Dig, Badlands
				["573:377"] = 46, -- Farstrider Lodge, Loch Modan
				["660:405"] = 181, -- Highbank, Twilight Highlands
			},
		},
		{
			tag = "531:676",
			name = "Plaguewood Tower, Eastern Plaguelands",
			neighbors = {
				["478:672"] = 62, -- Hearthglen, Western Plaguelands
				["554:639"] = 53, -- Crown Guard Tower, Eastern Plaguelands
				["577:682"] = 57, -- Northpass Tower, Eastern Plaguelands
				["579:652"] = 61, -- Light's Shield Tower, Eastern Plaguelands
				["591:661"] = 67, -- Eastwall Tower, Eastern Plaguelands
			},
		},
		{
			tag = "532:144",
			name = "Sunveil Excursion, Blasted Lands",
			neighbors = {
				["408:072"] = 172, -- Booty Bay, Stranglethorn
				["522:194"] = 60, -- Dreadmaul Hold, Blasted Lands
			},
		},
		{
			tag = "539:210",
			name = "Stonard, Swamp of Sorrows",
			neighbors = {
				["408:072"] = 230, -- Booty Bay, Stranglethorn
				["420:142"] = 178, -- Grom'gol, Stranglethorn
				["501:313"] = 176, -- Flame Crest, Burning Steppes
				["510:342"] = 228, -- New Kargath, Badlands
				["522:194"] = 27, -- Dreadmaul Hold, Blasted Lands
				["560:165"] = 0, -- Shattered Landing, Blasted Lands
				["561:235"] = 45, -- Bogpaddle, Swamp of Sorrows
			},
		},
		{
			tag = "544:344",
			name = "Dustwind Dig, Badlands",
			neighbors = {
				["515:329"] = 37, -- Dragon's Mouth, Badlands
				["527:385"] = 53, -- Thelsamar, Loch Modan
				["560:345"] = 29, -- Fuselight, Badlands
			},
		},
		{
			tag = "545:188",
			name = "Nethergarde Keep, Blasted Lands",
			neighbors = {
				["409:266"] = 189, -- Stormwind, Elwynn
				["469:208"] = 92, -- Darkshire, Duskwood
				["521:283"] = 209, -- Morgan's Vigil, Burning Steppes
				["527:130"] = 92, -- Surwich, Blasted Lands
				["559:220"] = 39, -- Marshtide Watch, Swamp of Sorrows
			},
		},
		{
			tag = "546:239",
			name = "Shalewind Canyon, Redridge",
			neighbors = {
				["524:245"] = 24, -- Camp Everstill, Redridge
				["561:235"] = 34, -- Bogpaddle, Swamp of Sorrows
			},
		},
		{
			tag = "547:542",
			name = "Hammerfall, Arathi",
			neighbors = {
				["416:628"] = 259, -- Undercity, Tirisfal
				["456:573"] = 117, -- Tarren Mill, Hillsbrad
				["481:540"] = 68, -- Galen's Fall, Arathi
				["510:342"] = 249, -- New Kargath, Badlands
				["524:573"] = 53, -- Hiri'watha Research Station, The Hinterlands
				["562:468"] = 167, -- Vermillion Redoubt, Twilight Highlands
				["589:551"] = 88, -- Revantusk Village, The Hinterlands
				["645:434"] = 251, -- Dragonmaw Port, Twilight Highlands
			},
		},
		{
			tag = "548:334",
			name = "Bloodwatcher Point, Badlands",
			neighbors = {
				["510:342"] = 39, -- New Kargath, Badlands
				["560:345"] = 25, -- Fuselight, Badlands
			},
		},
		{
			tag = "554:639",
			name = "Crown Guard Tower, Eastern Plaguelands",
			neighbors = {
				["519:641"] = 39, -- Thondroril River, Eastern Plaguelands
				["531:676"] = 53, -- Plaguewood Tower, Eastern Plaguelands
				["577:682"] = 62, -- Northpass Tower, Eastern Plaguelands
				["579:652"] = 35, -- Light's Shield Tower, Eastern Plaguelands
			},
		},
		{
			tag = "559:220",
			name = "Marshtide Watch, Swamp of Sorrows",
			neighbors = {
				["525:222"] = 41, -- The Harborage, Swamp of Sorrows
				["545:188"] = 44, -- Nethergarde Keep, Blasted Lands
				["561:235"] = 30, -- Bogpaddle, Swamp of Sorrows
			},
		},
		{
			tag = "560:165",
			name = "Shattered Landing, Blasted Lands",
			neighbors = {
				["454:154"] = 0, -- Bambala, Stranglethorn
				["539:210"] = 0, -- Stonard, Swamp of Sorrows
			},
		},
		{
			tag = "560:345",
			name = "Fuselight, Badlands",
			neighbors = {
				["510:342"] = 51, -- New Kargath, Badlands
				["515:329"] = 51, -- Dragon's Mouth, Badlands
				["544:344"] = 19, -- Dustwind Dig, Badlands
				["548:334"] = 18, -- Bloodwatcher Point, Badlands
				["573:377"] = 49, -- Farstrider Lodge, Loch Modan
				["611:652"] = 358, -- Light's Hope Chapel, Eastern Plaguelands
			},
		},
		{
			tag = "561:235",
			name = "Bogpaddle, Swamp of Sorrows",
			neighbors = {
				["501:313"] = 109, -- Flame Crest, Burning Steppes
				["521:283"] = 81, -- Morgan's Vigil, Burning Steppes
				["539:210"] = 42, -- Stonard, Swamp of Sorrows
				["546:239"] = 33, -- Shalewind Canyon, Redridge
				["559:220"] = 25, -- Marshtide Watch, Swamp of Sorrows
			},
		},
		{
			tag = "562:468",
			name = "Vermillion Redoubt, Twilight Highlands",
			neighbors = {
				["466:406"] = 152, -- Ironforge, Dun Morogh
				["510:342"] = 124, -- New Kargath, Badlands
				["513:530"] = 92, -- Refuge Pointe, Arathi
				["520:459"] = 44, -- Greenwarden's Grove, Wetlands
				["547:542"] = 109, -- Hammerfall, Arathi
				["578:452"] = 19, -- The Gullet, Twilight Highlands
				["599:464"] = 29, -- Thundermar, Twilight Highlands
			},
		},
		{
			tag = "568:584",
			name = "Stormfeather Outpost, The Hinterlands",
			neighbors = {
				["495:583"] = 83, -- Aerie Peak, The Hinterlands
				["513:530"] = 99, -- Refuge Pointe, Arathi
				["519:641"] = 120, -- Thondroril River, Eastern Plaguelands
				["611:652"] = 88, -- Light's Hope Chapel, Eastern Plaguelands
			},
		},
		{
			tag = "573:377",
			name = "Farstrider Lodge, Loch Modan",
			neighbors = {
				["527:385"] = 46, -- Thelsamar, Loch Modan
				["560:345"] = 47, -- Fuselight, Badlands
			},
		},
		{
			tag = "573:794",
			name = "Fairbreeze Village, Eversong Woods",
			neighbors = {
				["578:754"] = 46, -- Tranquillien, Ghostlands
				["591:816"] = 29, -- Silvermoon City
			},
		},
		{
			tag = "577:682",
			name = "Northpass Tower, Eastern Plaguelands",
			neighbors = {
				["531:676"] = 50, -- Plaguewood Tower, Eastern Plaguelands
				["554:639"] = 52, -- Crown Guard Tower, Eastern Plaguelands
				["591:661"] = 30, -- Eastwall Tower, Eastern Plaguelands
			},
		},
		{
			tag = "577:820",
			name = "Falconwing Square, Eversong Woods",
			neighbors = {
				["591:816"] = 19, -- Silvermoon City
			},
		},
		{
			tag = "578:452",
			name = "The Gullet, Twilight Highlands",
			neighbors = {
				["562:468"] = 31, -- Vermillion Redoubt, Twilight Highlands
				["594:406"] = 58, -- Crushblow, Twilight Highlands
				["609:447"] = 55, -- Bloodgulch, Twilight Highlands
			},
		},
		{
			tag = "578:754",
			name = "Tranquillien, Ghostlands",
			neighbors = {
				["573:794"] = 53, -- Fairbreeze Village, Eversong Woods
				["591:816"] = 74, -- Silvermoon City
				["611:652"] = 128, -- Light's Hope Chapel, Eastern Plaguelands
				["611:726"] = 53, -- Zul'Aman, Ghostlands
			},
		},
		{
			tag = "579:652",
			name = "Light's Shield Tower, Eastern Plaguelands",
			neighbors = {
				["531:676"] = 61, -- Plaguewood Tower, Eastern Plaguelands
				["554:639"] = 30, -- Crown Guard Tower, Eastern Plaguelands
				["591:661"] = 20, -- Eastwall Tower, Eastern Plaguelands
				["611:652"] = 39, -- Light's Hope Chapel, Eastern Plaguelands
			},
		},
		{
			tag = "582:942",
			name = "Shattered Sun Staging Area",
			neighbors = {
				["591:816"] = 166, -- Silvermoon City
				["611:726"] = 232, -- Zul'Aman, Ghostlands
			},
		},
		{
			tag = "589:551",
			name = "Revantusk Village, The Hinterlands",
			neighbors = {
				["416:628"] = 269, -- Undercity, Tirisfal
				["456:573"] = 156, -- Tarren Mill, Hillsbrad
				["524:573"] = 76, -- Hiri'watha Research Station, The Hinterlands
				["547:542"] = 94, -- Hammerfall, Arathi
				["611:652"] = 134, -- Light's Hope Chapel, Eastern Plaguelands
			},
		},
		{
			tag = "590:429",
			name = "Victor's Point, Twilight Highlands",
			neighbors = {
				["599:464"] = 43, -- Thundermar, Twilight Highlands
				["621:428"] = 41, -- Firebeard's Patrol, Twilight Highlands
			},
		},
		{
			tag = "591:661",
			name = "Eastwall Tower, Eastern Plaguelands",
			neighbors = {
				["531:676"] = 66, -- Plaguewood Tower, Eastern Plaguelands
				["577:682"] = 31, -- Northpass Tower, Eastern Plaguelands
				["579:652"] = 18, -- Light's Shield Tower, Eastern Plaguelands
				["611:652"] = 30, -- Light's Hope Chapel, Eastern Plaguelands
			},
		},
		{
			tag = "591:816",
			name = "Silvermoon City",
			neighbors = {
				["573:794"] = 31, -- Fairbreeze Village, Eversong Woods
				["577:820"] = 24, -- Falconwing Square, Eversong Woods
				["578:754"] = 65, -- Tranquillien, Ghostlands
				["582:942"] = 185, -- Shattered Sun Staging Area
			},
		},
		{
			tag = "594:406",
			name = "Crushblow, Twilight Highlands",
			neighbors = {
				["578:452"] = 54, -- The Gullet, Twilight Highlands
				["609:447"] = 48, -- Bloodgulch, Twilight Highlands
				["645:434"] = 80, -- Dragonmaw Port, Twilight Highlands
			},
		},
		{
			tag = "599:464",
			name = "Thundermar, Twilight Highlands",
			neighbors = {
				["562:468"] = 43, -- Vermillion Redoubt, Twilight Highlands
				["590:429"] = 52, -- Victor's Point, Twilight Highlands
				["614:480"] = 24, -- Kirthaven, Twilight Highlands
				["621:428"] = 58, -- Firebeard's Patrol, Twilight Highlands
			},
		},
		{
			tag = "609:447",
			name = "Bloodgulch, Twilight Highlands",
			neighbors = {
				["578:452"] = 50, -- The Gullet, Twilight Highlands
				["594:406"] = 59, -- Crushblow, Twilight Highlands
				["645:434"] = 57, -- Dragonmaw Port, Twilight Highlands
				["648:477"] = 50, -- The Krazzworks, Twilight Highlands
			},
		},
		{
			tag = "611:652",
			name = "Light's Hope Chapel, Eastern Plaguelands",
			faction = "A",
			neighbors = {
				["466:406"] = 369, -- Ironforge, Dun Morogh
				["475:606"] = 149, -- Chillwind Camp, Western Plaguelands
				["495:583"] = 162, -- Aerie Peak, The Hinterlands
				["519:641"] = 96, -- Thondroril River, Eastern Plaguelands
				["560:345"] = 175, -- Fuselight, Badlands
				["568:584"] = 96, -- Stormfeather Outpost, The Hinterlands
				["578:754"] = 0, -- Tranquillien, Ghostlands
				["579:652"] = 35, -- Light's Shield Tower, Eastern Plaguelands
				["591:661"] = 24, -- Eastwall Tower, Eastern Plaguelands
				["611:726"] = 223, -- Zul'Aman, Ghostlands
				["622:655"] = 65, -- Acherus: The Ebon Hold
			},
		},
		{
			tag = "611:652",
			name = "Light's Hope Chapel, Eastern Plaguelands",
			faction = "H",
			neighbors = {
				["416:628"] = 261, -- Undercity, Tirisfal
				["519:641"] = 96, -- Thondroril River, Eastern Plaguelands
				["560:345"] = 175, -- Fuselight, Badlands
				["578:754"] = 123, -- Tranquillien, Ghostlands
				["579:652"] = 35, -- Light's Shield Tower, Eastern Plaguelands
				["589:551"] = 144, -- Revantusk Village, The Hinterlands
				["591:661"] = 24, -- Eastwall Tower, Eastern Plaguelands
				["611:726"] = 223, -- Zul'Aman, Ghostlands
				["622:655"] = 65, -- Acherus: The Ebon Hold
			},
		},
		{
			tag = "611:726",
			name = "Zul'Aman, Ghostlands",
			neighbors = {
				["578:754"] = 52, -- Tranquillien, Ghostlands
				["582:942"] = 251, -- Shattered Sun Staging Area
				["611:652"] = 227, -- Light's Hope Chapel, Eastern Plaguelands
			},
		},
		{
			tag = "614:480",
			name = "Kirthaven, Twilight Highlands",
			neighbors = {
				["599:464"] = 29, -- Thundermar, Twilight Highlands
				["621:428"] = 68, -- Firebeard's Patrol, Twilight Highlands
				["660:405"] = 99, -- Highbank, Twilight Highlands
			},
		},
		{
			tag = "621:428",
			name = "Firebeard's Patrol, Twilight Highlands",
			neighbors = {
				["590:429"] = 42, -- Victor's Point, Twilight Highlands
				["599:464"] = 57, -- Thundermar, Twilight Highlands
				["614:480"] = 73, -- Kirthaven, Twilight Highlands
				["660:405"] = 53, -- Highbank, Twilight Highlands
			},
		},
		{
			tag = "622:655",
			name = "Acherus: The Ebon Hold",
			neighbors = {
				["611:652"] = 10, -- Light's Hope Chapel, Eastern Plaguelands
			},
		},
		{
			tag = "645:434",
			name = "Dragonmaw Port, Twilight Highlands",
			neighbors = {
				["510:342"] = 217, -- New Kargath, Badlands
				["547:542"] = 237, -- Hammerfall, Arathi
				["594:406"] = 66, -- Crushblow, Twilight Highlands
				["609:447"] = 44, -- Bloodgulch, Twilight Highlands
				["648:477"] = 53, -- The Krazzworks, Twilight Highlands
			},
		},
		{
			tag = "648:477",
			name = "The Krazzworks, Twilight Highlands",
			neighbors = {
				["609:447"] = 55, -- Bloodgulch, Twilight Highlands
				["645:434"] = 48, -- Dragonmaw Port, Twilight Highlands
			},
		},
		{
			tag = "660:405",
			name = "Highbank, Twilight Highlands",
			neighbors = {
				["527:385"] = 171, -- Thelsamar, Loch Modan
				["614:480"] = 93, -- Kirthaven, Twilight Highlands
				["621:428"] = 51, -- Firebeard's Patrol, Twilight Highlands
			},
		},
	},
	[3]={
		{
			tag = "001:001",
			name = "Skyguard Outpost, Blade's Edge Mountains",
			taxioperator = "skyguard",
			neighbors = {
				["002:002"] = 245, -- Blackwing Landing, Terokkar Forest
			},
		},
		{
			tag = "002:002",
			name = "Blackwing Landing, Terokkar Forest",
			taxioperator = "skyguard",
			neighbors = {
				["001:001"] = 245, -- Skyguard Outpost, Blade's Edge Mountains
			},
		},
		{
			tag = "232:496",
			name = "Zabra'jin, Zangarmarsh",
			neighbors = {
				["288:375"] = 82, -- Garadar, Nagrand
				["378:677"] = 112, -- Thunderlord Stronghold, Blade's Edge Mountains
				["437:328"] = 151, -- Shattrath, Terokkar Forest
				["444:485"] = 112, -- Swamprat Post, Zangarmarsh
				["535:430"] = 147, -- Falcon Watch, Hellfire Peninsula
			},
		},
		{
			tag = "266:556",
			name = "Orebor Harborage, Zangarmarsh",
			neighbors = {
				["315:656"] = 64, -- Sylvanaar, Blade's Edge Mountains
				["375:495"] = 52, -- Telredor, Zangarmarsh
			},
		},
		{
			tag = "274:255",
			name = "Telaar, Nagrand",
			neighbors = {
				["375:495"] = 126, -- Telredor, Zangarmarsh
				["437:328"] = 87, -- Shattrath, Terokkar Forest
				["554:234"] = 121, -- Allerian Stronghold, Terokkar Forest
			},
		},
		{
			tag = "288:375",
			name = "Garadar, Nagrand",
			neighbors = {
				["232:496"] = 67, -- Zabra'jin, Zangarmarsh
				["437:328"] = 77, -- Shattrath, Terokkar Forest
				["535:430"] = 127, -- Falcon Watch, Hellfire Peninsula
			},
		},
		{
			tag = "315:656",
			name = "Sylvanaar, Blade's Edge Mountains",
			neighbors = {
				["266:556"] = 76, -- Orebor Harborage, Zangarmarsh
				["375:495"] = 81, -- Telredor, Zangarmarsh
				["418:629"] = 57, -- Toshley's Station, Blade's Edge Mountains
				["421:720"] = 51, -- Evergrove, Blade's Edge Mountains
				["576:729"] = 119, -- Area 52, Netherstorm
				["628:816"] = 154, -- The Stormspire, Netherstorm
			},
		},
		{
			tag = "375:495",
			name = "Telredor, Zangarmarsh",
			neighbors = {
				["266:556"] = 62, -- Orebor Harborage, Zangarmarsh
				["274:255"] = 124, -- Telaar, Nagrand
				["315:656"] = 91, -- Sylvanaar, Blade's Edge Mountains
				["418:629"] = 68, -- Toshley's Station, Blade's Edge Mountains
				["437:328"] = 97, -- Shattrath, Terokkar Forest
				["524:494"] = 81, -- Temple of Telhamat, Hellfire Peninsula
			},
		},
		{
			tag = "378:677",
			name = "Thunderlord Stronghold, Blade's Edge Mountains",
			neighbors = {
				["232:496"] = 148, -- Zabra'jin, Zangarmarsh
				["421:720"] = 26, -- Evergrove, Blade's Edge Mountains
				["444:485"] = 116, -- Swamprat Post, Zangarmarsh
				["486:643"] = 55, -- Mok'Nathal Village, Blade's Edge Mountains
				["576:729"] = 96, -- Area 52, Netherstorm
				["628:816"] = 158, -- The Stormspire, Netherstorm
			},
		},
		{
			tag = "418:629",
			name = "Toshley's Station, Blade's Edge Mountains",
			neighbors = {
				["315:656"] = 59, -- Sylvanaar, Blade's Edge Mountains
				["375:495"] = 72, -- Telredor, Zangarmarsh
				["421:720"] = 53, -- Evergrove, Blade's Edge Mountains
				["576:729"] = 83, -- Area 52, Netherstorm
			},
		},
		{
			tag = "421:720",
			name = "Evergrove, Blade's Edge Mountains",
			neighbors = {
				["315:656"] = 55, -- Sylvanaar, Blade's Edge Mountains
				["378:677"] = 36, -- Thunderlord Stronghold, Blade's Edge Mountains
				["418:629"] = 44, -- Toshley's Station, Blade's Edge Mountains
				["576:729"] = 77, -- Area 52, Netherstorm
			},
		},
		{
			tag = "437:328",
			name = "Shattrath, Terokkar Forest",
			neighbors = {
				["232:496"] = 136, -- Zabra'jin, Zangarmarsh
				["274:255"] = 88, -- Telaar, Nagrand
				["288:375"] = 81, -- Garadar, Nagrand
				["375:495"] = 83, -- Telredor, Zangarmarsh
				["444:485"] = 79, -- Swamprat Post, Zangarmarsh
				["509:268"] = 68, -- Stonebreaker Hold, Terokkar Forest
				["535:430"] = 76, -- Falcon Watch, Hellfire Peninsula
				["554:234"] = 75, -- Allerian Stronghold, Terokkar Forest
				["648:423"] = 111, -- Honor Hold, Hellfire Peninsula
				["655:496"] = 131, -- Thrallmar, Hellfire Peninsula
			},
		},
		{
			tag = "444:485",
			name = "Swamprat Post, Zangarmarsh",
			neighbors = {
				["232:496"] = 111, -- Zabra'jin, Zangarmarsh
				["378:677"] = 106, -- Thunderlord Stronghold, Blade's Edge Mountains
				["437:328"] = 87, -- Shattrath, Terokkar Forest
				["486:643"] = 70, -- Mok'Nathal Village, Blade's Edge Mountains
				["535:430"] = 62, -- Falcon Watch, Hellfire Peninsula
			},
		},
		{
			tag = "486:643",
			name = "Mok'Nathal Village, Blade's Edge Mountains",
			neighbors = {
				["378:677"] = 63, -- Thunderlord Stronghold, Blade's Edge Mountains
				["444:485"] = 73, -- Swamprat Post, Zangarmarsh
				["576:729"] = 56, -- Area 52, Netherstorm
			},
		},
		{
			tag = "509:268",
			name = "Stonebreaker Hold, Terokkar Forest",
			neighbors = {
				["437:328"] = 56, -- Shattrath, Terokkar Forest
				["655:496"] = 125, -- Thrallmar, Hellfire Peninsula
				["661:232"] = 67, -- Shadowmoon Village, Shadowmoon Valley
			},
		},
		{
			tag = "524:494",
			name = "Temple of Telhamat, Hellfire Peninsula",
			neighbors = {
				["375:495"] = 80, -- Telredor, Zangarmarsh
				["648:423"] = 87, -- Honor Hold, Hellfire Peninsula
			},
		},
		{
			tag = "535:430",
			name = "Falcon Watch, Hellfire Peninsula",
			neighbors = {
				["232:496"] = 149, -- Zabra'jin, Zangarmarsh
				["288:375"] = 132, -- Garadar, Nagrand
				["437:328"] = 71, -- Shattrath, Terokkar Forest
				["444:485"] = 68, -- Swamprat Post, Zangarmarsh
				["655:496"] = 73, -- Thrallmar, Hellfire Peninsula
			},
		},
		{
			tag = "554:234",
			name = "Allerian Stronghold, Terokkar Forest",
			neighbors = {
				["274:255"] = 149, -- Telaar, Nagrand
				["437:328"] = 74, -- Shattrath, Terokkar Forest
				["648:423"] = 96, -- Honor Hold, Hellfire Peninsula
				["694:153"] = 79, -- Wildhammer Stronghold, Shadowmoon Valley
			},
		},
		{
			tag = "576:729",
			name = "Area 52, Netherstorm",
			neighbors = {
				["315:656"] = 126, -- Sylvanaar, Blade's Edge Mountains
				["378:677"] = 108, -- Thunderlord Stronghold, Blade's Edge Mountains
				["418:629"] = 93, -- Toshley's Station, Blade's Edge Mountains
				["421:720"] = 80, -- Evergrove, Blade's Edge Mountains
				["486:643"] = 64, -- Mok'Nathal Village, Blade's Edge Mountains
				["628:816"] = 48, -- The Stormspire, Netherstorm
				["719:720"] = 66, -- Cosmowrench, Netherstorm
			},
		},
		{
			tag = "628:816",
			name = "The Stormspire, Netherstorm",
			neighbors = {
				["315:656"] = 154, -- Sylvanaar, Blade's Edge Mountains
				["378:677"] = 146, -- Thunderlord Stronghold, Blade's Edge Mountains
				["576:729"] = 53, -- Area 52, Netherstorm
				["719:720"] = 68, -- Cosmowrench, Netherstorm
			},
		},
		{
			tag = "648:423",
			name = "Honor Hold, Hellfire Peninsula",
			neighbors = {
				["437:328"] = 119, -- Shattrath, Terokkar Forest
				["524:494"] = 75, -- Temple of Telhamat, Hellfire Peninsula
				["554:234"] = 118, -- Allerian Stronghold, Terokkar Forest
				["748:500"] = 56, -- Shatter Point, Hellfire Peninsula
				["786:451"] = 64, -- Hellfire Peninsula, The Dark Portal
			},
		},
		{
			tag = "655:496",
			name = "Thrallmar, Hellfire Peninsula",
			neighbors = {
				["437:328"] = 123, -- Shattrath, Terokkar Forest
				["509:268"] = 128, -- Stonebreaker Hold, Terokkar Forest
				["535:430"] = 67, -- Falcon Watch, Hellfire Peninsula
				["677:370"] = 66, -- Spinebreaker Ridge, Hellfire Peninsula
				["786:463"] = 70, -- Hellfire Peninsula, The Dark Portal
			},
		},
		{
			tag = "661:232",
			name = "Shadowmoon Village, Shadowmoon Valley",
			neighbors = {
				["509:268"] = 73, -- Stonebreaker Hold, Terokkar Forest
				["778:146"] = 65, -- Sanctum of the Stars, Shadowmoon Valley
				["808:228"] = 84, -- Altar of Sha'tar, Shadowmoon Valley
			},
		},
		{
			tag = "677:370",
			name = "Spinebreaker Ridge, Hellfire Peninsula",
			neighbors = {
				["655:496"] = 63, -- Thrallmar, Hellfire Peninsula
			},
		},
		{
			tag = "694:153",
			name = "Wildhammer Stronghold, Shadowmoon Valley",
			neighbors = {
				["554:234"] = 100, -- Allerian Stronghold, Terokkar Forest
				["778:146"] = 42, -- Sanctum of the Stars, Shadowmoon Valley
				["808:228"] = 83, -- Altar of Sha'tar, Shadowmoon Valley
			},
		},
		{
			tag = "719:720",
			name = "Cosmowrench, Netherstorm",
			neighbors = {
				["576:729"] = 64, -- Area 52, Netherstorm
				["628:816"] = 60, -- The Stormspire, Netherstorm
			},
		},
		{
			tag = "748:500",
			name = "Shatter Point, Hellfire Peninsula",
			neighbors = {
				["648:423"] = 57, -- Honor Hold, Hellfire Peninsula
				["786:451"] = 32, -- Hellfire Peninsula, The Dark Portal
			},
		},
		{
			tag = "778:146",
			name = "Sanctum of the Stars, Shadowmoon Valley",
			neighbors = {
				["661:232"] = 61, -- Shadowmoon Village, Shadowmoon Valley
				["694:153"] = 41, -- Wildhammer Stronghold, Shadowmoon Valley
			},
		},
		{
			tag = "786:451",
			name = "Hellfire Peninsula, The Dark Portal",
			faction = "A",
			neighbors = {
				["524:494"] = 115, -- Temple of Telhamat, Hellfire Peninsula
				["648:423"] = 73, -- Honor Hold, Hellfire Peninsula
				["748:500"] = 27, -- Shatter Point, Hellfire Peninsula
			},
		},
		{
			tag = "786:463",
			name = "Hellfire Peninsula, The Dark Portal",
			faction = "H",
			neighbors = {
				["535:430"] = 122, -- Falcon Watch, Hellfire Peninsula
				["655:496"] = 60, -- Thrallmar, Hellfire Peninsula
			},
		},
		{
			tag = "808:228",
			name = "Altar of Sha'tar, Shadowmoon Valley",
			neighbors = {
				["661:232"] = 66, -- Shadowmoon Village, Shadowmoon Valley
				["694:153"] = 80, -- Wildhammer Stronghold, Shadowmoon Valley
			},
		},
	},
	[4]={
		{
			tag = "121:472",
			name = "Transitus Shield, Coldarra",
			neighbors = {
				["165:473"] = 45, -- Amber Ledge, Borean Tundra
			},
		},
		{
			tag = "148:430",
			name = "Warsong Hold, Borean Tundra",
			neighbors = {
				["165:473"] = 35, -- Amber Ledge, Borean Tundra
				["182:530"] = 68, -- Bor'gorok Outpost, Borean Tundra
				["287:464"] = 87, -- Taunka'le Village, Borean Tundra
				["290:430"] = 92, -- Unu'pe, Borean Tundra
			},
		},
		{
			tag = "165:473",
			name = "Amber Ledge, Borean Tundra",
			neighbors = {
				["121:472"] = 37, -- Transitus Shield, Coldarra
				["148:430"] = 41, -- Warsong Hold, Borean Tundra
				["182:530"] = 34, -- Bor'gorok Outpost, Borean Tundra
				["208:508"] = 35, -- Fizzcrank Airstrip, Borean Tundra
				["217:388"] = 66, -- Valiance Keep, Borean Tundra
				["287:464"] = 71, -- Taunka'le Village, Borean Tundra
			},
		},
		{
			tag = "175:603",
			name = "Nesingwary Base Camp, Sholazar Basin",
			neighbors = {
				["182:530"] = 60, -- Bor'gorok Outpost, Borean Tundra
				["208:508"] = 77, -- Fizzcrank Airstrip, Borean Tundra
				["244:597"] = 51, -- River's Heart, Sholazar Basin
				["278:721"] = 91, -- Death's Rise, Icecrown
			},
		},
		{
			tag = "182:530",
			name = "Bor'gorok Outpost, Borean Tundra",
			neighbors = {
				["148:430"] = 72, -- Warsong Hold, Borean Tundra
				["165:473"] = 58, -- Amber Ledge, Borean Tundra
				["175:603"] = 47, -- Nesingwary Base Camp, Sholazar Basin
				["244:597"] = 56, -- River's Heart, Sholazar Basin
				["287:464"] = 77, -- Taunka'le Village, Borean Tundra
			},
		},
		{
			tag = "208:508",
			name = "Fizzcrank Airstrip, Borean Tundra",
			neighbors = {
				["165:473"] = 44, -- Amber Ledge, Borean Tundra
				["175:603"] = 76, -- Nesingwary Base Camp, Sholazar Basin
				["217:388"] = 70, -- Valiance Keep, Borean Tundra
				["244:597"] = 63, -- River's Heart, Sholazar Basin
				["290:430"] = 64, -- Unu'pe, Borean Tundra
				["423:467"] = 133, -- Stars' Rest, Dragonblight
			},
		},
		{
			tag = "217:388",
			name = "Valiance Keep, Borean Tundra",
			neighbors = {
				["165:473"] = 63, -- Amber Ledge, Borean Tundra
				["208:508"] = 75, -- Fizzcrank Airstrip, Borean Tundra
				["290:430"] = 63, -- Unu'pe, Borean Tundra
				["423:467"] = 145, -- Stars' Rest, Dragonblight
				["522:617"] = 262, -- Dalaran
			},
		},
		{
			tag = "244:597",
			name = "River's Heart, Sholazar Basin",
			neighbors = {
				["175:603"] = 42, -- Nesingwary Base Camp, Sholazar Basin
				["182:530"] = 61, -- Bor'gorok Outpost, Borean Tundra
				["208:508"] = 69, -- Fizzcrank Airstrip, Borean Tundra
				["278:721"] = 93, -- Death's Rise, Icecrown
				["313:566"] = 86, -- Warsong Camp, Wintergrasp
				["410:571"] = 150, -- Valiance Landing Camp, Wintergrasp
				["522:617"] = 301, -- Dalaran
			},
		},
		{
			tag = "278:721",
			name = "Death's Rise, Icecrown",
			neighbors = {
				["175:603"] = 117, -- Nesingwary Base Camp, Sholazar Basin
				["244:597"] = 116, -- River's Heart, Sholazar Basin
				["313:566"] = 114, -- Warsong Camp, Wintergrasp
				["377:785"] = 93, -- The Shadow Vault, Icecrown
				["410:571"] = 173, -- Valiance Landing Camp, Wintergrasp
				["521:655"] = 175, -- Crusaders' Pinnacle, Icecrown
			},
		},
		{
			tag = "287:464",
			name = "Taunka'le Village, Borean Tundra",
			neighbors = {
				["148:430"] = 84, -- Warsong Hold, Borean Tundra
				["165:473"] = 76, -- Amber Ledge, Borean Tundra
				["182:530"] = 72, -- Bor'gorok Outpost, Borean Tundra
				["290:430"] = 30, -- Unu'pe, Borean Tundra
				["313:566"] = 80, -- Warsong Camp, Wintergrasp
				["453:491"] = 91, -- Agmar's Hammer, Dragonblight
			},
		},
		{
			tag = "290:430",
			name = "Unu'pe, Borean Tundra",
			neighbors = {
				["148:430"] = 87, -- Warsong Hold, Borean Tundra
				["208:508"] = 79, -- Fizzcrank Airstrip, Borean Tundra
				["217:388"] = 59, -- Valiance Keep, Borean Tundra
				["287:464"] = 21, -- Taunka'le Village, Borean Tundra
				["423:467"] = 97, -- Stars' Rest, Dragonblight
				["493:421"] = 118, -- Moa'ki, Dragonblight
			},
		},
		{
			tag = "313:566",
			name = "Warsong Camp, Wintergrasp",
			neighbors = {
				["244:597"] = 76, -- River's Heart, Sholazar Basin
				["278:721"] = 113, -- Death's Rise, Icecrown
				["287:464"] = 79, -- Taunka'le Village, Borean Tundra
				["377:785"] = 164, -- The Shadow Vault, Icecrown
				["453:491"] = 100, -- Agmar's Hammer, Dragonblight
				["521:655"] = 159, -- Crusaders' Pinnacle, Icecrown
				["522:617"] = 141, -- Dalaran
			},
		},
		{
			tag = "377:785",
			name = "The Shadow Vault, Icecrown",
			neighbors = {
				["278:721"] = 77, -- Death's Rise, Icecrown
				["313:566"] = 138, -- Warsong Camp, Wintergrasp
				["410:571"] = 141, -- Valiance Landing Camp, Wintergrasp
				["494:789"] = 78, -- Argent Tournament Grounds, Icecrown
				["521:655"] = 120, -- Crusaders' Pinnacle, Icecrown
				["555:639"] = 134, -- The Argent Vanguard, Icecrown
				["573:789"] = 121, -- Bouldercrag's Refuge, The Storm Peaks
			},
		},
		{
			tag = "410:571",
			name = "Valiance Landing Camp, Wintergrasp",
			neighbors = {
				["244:597"] = 136, -- River's Heart, Sholazar Basin
				["278:721"] = 166, -- Death's Rise, Icecrown
				["377:785"] = 162, -- The Shadow Vault, Icecrown
				["423:467"] = 80, -- Stars' Rest, Dragonblight
				["460:539"] = 49, -- Fordragon Hold, Dragonblight
				["521:655"] = 109, -- Crusaders' Pinnacle, Icecrown
				["522:617"] = 91, -- Dalaran
			},
		},
		{
			tag = "423:467",
			name = "Stars' Rest, Dragonblight",
			neighbors = {
				["208:508"] = 129, -- Fizzcrank Airstrip, Borean Tundra
				["217:388"] = 132, -- Valiance Keep, Borean Tundra
				["290:430"] = 100, -- Unu'pe, Borean Tundra
				["410:571"] = 67, -- Valiance Landing Camp, Wintergrasp
				["460:539"] = 80, -- Fordragon Hold, Dragonblight
				["493:421"] = 70, -- Moa'ki, Dragonblight
				["535:477"] = 89, -- Wyrmrest Temple, Dragonblight
				["596:481"] = 123, -- Wintergarde Keep, Dragonblight
			},
		},
		{
			tag = "453:491",
			name = "Agmar's Hammer, Dragonblight",
			neighbors = {
				["287:464"] = 113, -- Taunka'le Village, Borean Tundra
				["313:566"] = 117, -- Warsong Camp, Wintergrasp
				["476:561"] = 65, -- Kor'kron Vanguard, Dragonblight
				["493:421"] = 63, -- Moa'ki, Dragonblight
				["535:477"] = 51, -- Wyrmrest Temple, Dragonblight
				["594:451"] = 88, -- Venomspite, Dragonblight
			},
		},
		{
			tag = "460:539",
			name = "Fordragon Hold, Dragonblight",
			neighbors = {
				["410:571"] = 60, -- Valiance Landing Camp, Wintergrasp
				["423:467"] = 73, -- Stars' Rest, Dragonblight
				["522:617"] = 65, -- Dalaran
				["535:477"] = 65, -- Wyrmrest Temple, Dragonblight
				["596:481"] = 86, -- Wintergarde Keep, Dragonblight
				["636:578"] = 118, -- Ebon Watch, Zul'Drak
			},
		},
		{
			tag = "476:561",
			name = "Kor'kron Vanguard, Dragonblight",
			neighbors = {
				["453:491"] = 52, -- Agmar's Hammer, Dragonblight
				["522:617"] = 56, -- Dalaran
				["535:477"] = 67, -- Wyrmrest Temple, Dragonblight
				["594:451"] = 90, -- Venomspite, Dragonblight
				["636:578"] = 106, -- Ebon Watch, Zul'Drak
			},
		},
		{
			tag = "493:421",
			name = "Moa'ki, Dragonblight",
			neighbors = {
				["290:430"] = 132, -- Unu'pe, Borean Tundra
				["423:467"] = 54, -- Stars' Rest, Dragonblight
				["453:491"] = 64, -- Agmar's Hammer, Dragonblight
				["522:617"] = 122, -- Dalaran
				["535:477"] = 48, -- Wyrmrest Temple, Dragonblight
				["594:451"] = 61, -- Venomspite, Dragonblight
				["596:481"] = 85, -- Wintergarde Keep, Dragonblight
				["738:292"] = 184, -- Kamagua, Howling Fjord
			},
		},
		{
			tag = "494:789",
			name = "Argent Tournament Grounds, Icecrown",
			neighbors = {
				["377:785"] = 89, -- The Shadow Vault, Icecrown
				["521:655"] = 73, -- Crusaders' Pinnacle, Icecrown
				["522:617"] = 140, -- Dalaran
				["573:789"] = 52, -- Bouldercrag's Refuge, The Storm Peaks
			},
		},
		{
			tag = "521:655",
			name = "Crusaders' Pinnacle, Icecrown",
			neighbors = {
				["278:721"] = 168, -- Death's Rise, Icecrown
				["313:566"] = 159, -- Warsong Camp, Wintergrasp
				["377:785"] = 123, -- The Shadow Vault, Icecrown
				["494:789"] = 97, -- Argent Tournament Grounds, Icecrown
				["522:617"] = 70, -- Dalaran
				["555:639"] = 32, -- The Argent Vanguard, Icecrown
			},
		},
		{
			tag = "522:617",
			name = "Dalaran",
			neighbors = {
				["217:388"] = 261, -- Valiance Keep, Borean Tundra
				["244:597"] = 212, -- River's Heart, Sholazar Basin
				["313:566"] = 161, -- Warsong Camp, Wintergrasp
				["410:571"] = 116, -- Valiance Landing Camp, Wintergrasp
				["460:539"] = 100, -- Fordragon Hold, Dragonblight
				["476:561"] = 73, -- Kor'kron Vanguard, Dragonblight
				["493:421"] = 159, -- Moa'ki, Dragonblight
				["494:789"] = 123, -- Argent Tournament Grounds, Icecrown
				["521:655"] = 39, -- Crusaders' Pinnacle, Icecrown
				["535:477"] = 122, -- Wyrmrest Temple, Dragonblight
				["555:639"] = 32, -- The Argent Vanguard, Icecrown
				["585:566"] = 52, -- Windrunner's Overlook, Crystalsong Forest
				["596:602"] = 57, -- Sunreaver's Command, Crystalsong Forest
				["619:641"] = 54, -- K3, The Storm Peaks
				["636:578"] = 81, -- Ebon Watch, Zul'Drak
				["875:278"] = 281, -- Valgarde Port, Howling Fjord
			},
		},
		{
			tag = "535:477",
			name = "Wyrmrest Temple, Dragonblight",
			neighbors = {
				["423:467"] = 66, -- Stars' Rest, Dragonblight
				["453:491"] = 69, -- Agmar's Hammer, Dragonblight
				["460:539"] = 58, -- Fordragon Hold, Dragonblight
				["476:561"] = 66, -- Kor'kron Vanguard, Dragonblight
				["493:421"] = 53, -- Moa'ki, Dragonblight
				["522:617"] = 65, -- Dalaran
				["594:451"] = 50, -- Venomspite, Dragonblight
				["596:481"] = 50, -- Wintergarde Keep, Dragonblight
				["636:578"] = 105, -- Ebon Watch, Zul'Drak
			},
		},
		{
			tag = "555:639",
			name = "The Argent Vanguard, Icecrown",
			neighbors = {
				["377:785"] = 147, -- The Shadow Vault, Icecrown
				["521:655"] = 27, -- Crusaders' Pinnacle, Icecrown
				["522:617"] = 31, -- Dalaran
				["568:672"] = 40, -- Frosthold, The Storm Peaks
				["599:749"] = 103, -- Grom'arsh Crash-Site, The Storm Peaks
			},
		},
		{
			tag = "568:672",
			name = "Frosthold, The Storm Peaks",
			neighbors = {
				["555:639"] = 33, -- The Argent Vanguard, Icecrown
				["573:789"] = 65, -- Bouldercrag's Refuge, The Storm Peaks
				["619:641"] = 48, -- K3, The Storm Peaks
				["637:814"] = 97, -- Ulduar, The Storm Peaks
			},
		},
		{
			tag = "573:789",
			name = "Bouldercrag's Refuge, The Storm Peaks",
			neighbors = {
				["377:785"] = 112, -- The Shadow Vault, Icecrown
				["494:789"] = 61, -- Argent Tournament Grounds, Icecrown
				["568:672"] = 78, -- Frosthold, The Storm Peaks
				["599:749"] = 40, -- Grom'arsh Crash-Site, The Storm Peaks
				["637:814"] = 44, -- Ulduar, The Storm Peaks
			},
		},
		{
			tag = "585:566",
			name = "Windrunner's Overlook, Crystalsong Forest",
			neighbors = {
				["522:617"] = 47, -- Dalaran
				["596:481"] = 75, -- Wintergarde Keep, Dragonblight
				["619:641"] = 46, -- K3, The Storm Peaks
				["636:578"] = 46, -- Ebon Watch, Zul'Drak
			},
		},
		{
			tag = "594:451",
			name = "Venomspite, Dragonblight",
			neighbors = {
				["453:491"] = 133, -- Agmar's Hammer, Dragonblight
				["476:561"] = 120, -- Kor'kron Vanguard, Dragonblight
				["493:421"] = 82, -- Moa'ki, Dragonblight
				["535:477"] = 52, -- Wyrmrest Temple, Dragonblight
				["636:578"] = 83, -- Ebon Watch, Zul'Drak
				["694:576"] = 106, -- Light's Breach, Zul'Drak
				["698:452"] = 59, -- Conquest Hold, Grizzly Hills
				["743:377"] = 98, -- Apothecary Camp, Howling Fjord
				["845:267"] = 186, -- New Agamand, Howling Fjord
			},
		},
		{
			tag = "596:481",
			name = "Wintergarde Keep, Dragonblight",
			neighbors = {
				["423:467"] = 114, -- Stars' Rest, Dragonblight
				["460:539"] = 96, -- Fordragon Hold, Dragonblight
				["493:421"] = 98, -- Moa'ki, Dragonblight
				["535:477"] = 54, -- Wyrmrest Temple, Dragonblight
				["585:566"] = 71, -- Windrunner's Overlook, Crystalsong Forest
				["636:578"] = 64, -- Ebon Watch, Zul'Drak
				["694:576"] = 88, -- Light's Breach, Zul'Drak
				["729:464"] = 77, -- Amberpine Lodge, Grizzly Hills
				["764:328"] = 125, -- Westguard Keep, Howling Fjord
			},
		},
		{
			tag = "596:602",
			name = "Sunreaver's Command, Crystalsong Forest",
			neighbors = {
				["522:617"] = 55, -- Dalaran
				["619:641"] = 33, -- K3, The Storm Peaks
				["636:578"] = 37, -- Ebon Watch, Zul'Drak
			},
		},
		{
			tag = "599:749",
			name = "Grom'arsh Crash-Site, The Storm Peaks",
			neighbors = {
				["555:639"] = 79, -- The Argent Vanguard, Icecrown
				["573:789"] = 37, -- Bouldercrag's Refuge, The Storm Peaks
				["619:641"] = 87, -- K3, The Storm Peaks
				["637:814"] = 51, -- Ulduar, The Storm Peaks
				["733:745"] = 96, -- Camp Tunka'lo, The Storm Peaks
			},
		},
		{
			tag = "619:641",
			name = "K3, The Storm Peaks",
			neighbors = {
				["522:617"] = 72, -- Dalaran
				["568:672"] = 43, -- Frosthold, The Storm Peaks
				["585:566"] = 53, -- Windrunner's Overlook, Crystalsong Forest
				["596:602"] = 37, -- Sunreaver's Command, Crystalsong Forest
				["599:749"] = 75, -- Grom'arsh Crash-Site, The Storm Peaks
				["636:578"] = 43, -- Ebon Watch, Zul'Drak
				["720:713"] = 100, -- Dun Niffelem, The Storm Peaks
				["733:745"] = 90, -- Camp Tunka'lo, The Storm Peaks
			},
		},
		{
			tag = "636:578",
			name = "Ebon Watch, Zul'Drak",
			neighbors = {
				["460:539"] = 111, -- Fordragon Hold, Dragonblight
				["476:561"] = 108, -- Kor'kron Vanguard, Dragonblight
				["522:617"] = 67, -- Dalaran
				["535:477"] = 91, -- Wyrmrest Temple, Dragonblight
				["585:566"] = 33, -- Windrunner's Overlook, Crystalsong Forest
				["594:451"] = 98, -- Venomspite, Dragonblight
				["596:481"] = 61, -- Wintergarde Keep, Dragonblight
				["596:602"] = 26, -- Sunreaver's Command, Crystalsong Forest
				["619:641"] = 40, -- K3, The Storm Peaks
				["694:576"] = 44, -- Light's Breach, Zul'Drak
				["724:598"] = 63, -- The Argent Stand, Zul'Drak
			},
		},
		{
			tag = "637:814",
			name = "Ulduar, The Storm Peaks",
			neighbors = {
				["568:672"] = 102, -- Frosthold, The Storm Peaks
				["573:789"] = 48, -- Bouldercrag's Refuge, The Storm Peaks
				["599:749"] = 43, -- Grom'arsh Crash-Site, The Storm Peaks
				["720:713"] = 103, -- Dun Niffelem, The Storm Peaks
				["733:745"] = 87, -- Camp Tunka'lo, The Storm Peaks
				["784:614"] = 153, -- Zim'Torga, Zul'Drak
			},
		},
		{
			tag = "694:576",
			name = "Light's Breach, Zul'Drak",
			neighbors = {
				["594:451"] = 121, -- Venomspite, Dragonblight
				["596:481"] = 83, -- Wintergarde Keep, Dragonblight
				["636:578"] = 39, -- Ebon Watch, Zul'Drak
				["698:452"] = 74, -- Conquest Hold, Grizzly Hills
				["724:598"] = 43, -- The Argent Stand, Zul'Drak
				["729:464"] = 83, -- Amberpine Lodge, Grizzly Hills
				["844:492"] = 105, -- Camp Oneqwah, Grizzly Hills
			},
		},
		{
			tag = "698:452",
			name = "Conquest Hold, Grizzly Hills",
			neighbors = {
				["594:451"] = 87, -- Venomspite, Dragonblight
				["694:576"] = 79, -- Light's Breach, Zul'Drak
				["743:377"] = 57, -- Apothecary Camp, Howling Fjord
				["835:412"] = 85, -- Camp Winterhoof, Howling Fjord
				["844:492"] = 102, -- Camp Oneqwah, Grizzly Hills
			},
		},
		{
			tag = "720:713",
			name = "Dun Niffelem, The Storm Peaks",
			neighbors = {
				["619:641"] = 87, -- K3, The Storm Peaks
				["637:814"] = 84, -- Ulduar, The Storm Peaks
				["733:745"] = 32, -- Camp Tunka'lo, The Storm Peaks
				["784:614"] = 88, -- Zim'Torga, Zul'Drak
			},
		},
		{
			tag = "724:598",
			name = "The Argent Stand, Zul'Drak",
			neighbors = {
				["636:578"] = 52, -- Ebon Watch, Zul'Drak
				["694:576"] = 24, -- Light's Breach, Zul'Drak
				["784:614"] = 41, -- Zim'Torga, Zul'Drak
				["826:537"] = 71, -- Westfall Brigade, Grizzly Hills
				["844:492"] = 99, -- Camp Oneqwah, Grizzly Hills
			},
		},
		{
			tag = "729:464",
			name = "Amberpine Lodge, Grizzly Hills",
			neighbors = {
				["596:481"] = 81, -- Wintergarde Keep, Dragonblight
				["694:576"] = 66, -- Light's Breach, Zul'Drak
				["764:328"] = 83, -- Westguard Keep, Howling Fjord
				["826:537"] = 83, -- Westfall Brigade, Grizzly Hills
				["877:400"] = 116, -- Fort Wildervar, Howling Fjord
			},
		},
		{
			tag = "733:745",
			name = "Camp Tunka'lo, The Storm Peaks",
			neighbors = {
				["599:749"] = 101, -- Grom'arsh Crash-Site, The Storm Peaks
				["619:641"] = 114, -- K3, The Storm Peaks
				["637:814"] = 73, -- Ulduar, The Storm Peaks
				["720:713"] = 45, -- Dun Niffelem, The Storm Peaks
				["784:614"] = 98, -- Zim'Torga, Zul'Drak
			},
		},
		{
			tag = "738:292",
			name = "Kamagua, Howling Fjord",
			neighbors = {
				["493:421"] = 194, -- Moa'ki, Dragonblight
				["743:377"] = 55, -- Apothecary Camp, Howling Fjord
				["764:328"] = 36, -- Westguard Keep, Howling Fjord
				["845:267"] = 63, -- New Agamand, Howling Fjord
				["875:278"] = 80, -- Valgarde Port, Howling Fjord
			},
		},
		{
			tag = "743:377",
			name = "Apothecary Camp, Howling Fjord",
			neighbors = {
				["594:451"] = 117, -- Venomspite, Dragonblight
				["698:452"] = 47, -- Conquest Hold, Grizzly Hills
				["738:292"] = 54, -- Kamagua, Howling Fjord
				["835:412"] = 60, -- Camp Winterhoof, Howling Fjord
				["845:267"] = 92, -- New Agamand, Howling Fjord
			},
		},
		{
			tag = "764:328",
			name = "Westguard Keep, Howling Fjord",
			neighbors = {
				["596:481"] = 151, -- Wintergarde Keep, Dragonblight
				["729:464"] = 76, -- Amberpine Lodge, Grizzly Hills
				["738:292"] = 51, -- Kamagua, Howling Fjord
				["875:278"] = 69, -- Valgarde Port, Howling Fjord
				["877:400"] = 85, -- Fort Wildervar, Howling Fjord
			},
		},
		{
			tag = "784:614",
			name = "Zim'Torga, Zul'Drak",
			neighbors = {
				["637:814"] = 154, -- Ulduar, The Storm Peaks
				["720:713"] = 85, -- Dun Niffelem, The Storm Peaks
				["724:598"] = 52, -- The Argent Stand, Zul'Drak
				["733:745"] = 86, -- Camp Tunka'lo, The Storm Peaks
				["818:687"] = 53, -- Gundrak, Zul'Drak
				["826:537"] = 56, -- Westfall Brigade, Grizzly Hills
				["844:492"] = 82, -- Camp Oneqwah, Grizzly Hills
			},
		},
		{
			tag = "818:687",
			name = "Gundrak, Zul'Drak",
			neighbors = {
				["784:614"] = 55, -- Zim'Torga, Zul'Drak
			},
		},
		{
			tag = "826:537",
			name = "Westfall Brigade, Grizzly Hills",
			neighbors = {
				["724:598"] = 81, -- The Argent Stand, Zul'Drak
				["729:464"] = 78, -- Amberpine Lodge, Grizzly Hills
				["784:614"] = 72, -- Zim'Torga, Zul'Drak
				["877:400"] = 85, -- Fort Wildervar, Howling Fjord
			},
		},
		{
			tag = "835:412",
			name = "Camp Winterhoof, Howling Fjord",
			neighbors = {
				["698:452"] = 93, -- Conquest Hold, Grizzly Hills
				["743:377"] = 57, -- Apothecary Camp, Howling Fjord
				["844:492"] = 58, -- Camp Oneqwah, Grizzly Hills
				["845:267"] = 79, -- New Agamand, Howling Fjord
				["951:365"] = 73, -- Vengeance Landing, Howling Fjord
			},
		},
		{
			tag = "844:492",
			name = "Camp Oneqwah, Grizzly Hills",
			neighbors = {
				["694:576"] = 92, -- Light's Breach, Zul'Drak
				["698:452"] = 97, -- Conquest Hold, Grizzly Hills
				["724:598"] = 99, -- The Argent Stand, Zul'Drak
				["784:614"] = 92, -- Zim'Torga, Zul'Drak
				["835:412"] = 49, -- Camp Winterhoof, Howling Fjord
				["951:365"] = 105, -- Vengeance Landing, Howling Fjord
			},
		},
		{
			tag = "845:267",
			name = "New Agamand, Howling Fjord",
			neighbors = {
				["594:451"] = 191, -- Venomspite, Dragonblight
				["738:292"] = 76, -- Kamagua, Howling Fjord
				["743:377"] = 103, -- Apothecary Camp, Howling Fjord
				["835:412"] = 80, -- Camp Winterhoof, Howling Fjord
				["951:365"] = 80, -- Vengeance Landing, Howling Fjord
			},
		},
		{
			tag = "875:278",
			name = "Valgarde Port, Howling Fjord",
			neighbors = {
				["522:617"] = 281, -- Dalaran
				["738:292"] = 95, -- Kamagua, Howling Fjord
				["764:328"] = 69, -- Westguard Keep, Howling Fjord
				["877:400"] = 70, -- Fort Wildervar, Howling Fjord
			},
		},
		{
			tag = "877:400",
			name = "Fort Wildervar, Howling Fjord",
			neighbors = {
				["729:464"] = 96, -- Amberpine Lodge, Grizzly Hills
				["764:328"] = 80, -- Westguard Keep, Howling Fjord
				["826:537"] = 97, -- Westfall Brigade, Grizzly Hills
				["875:278"] = 73, -- Valgarde Port, Howling Fjord
			},
		},
		{
			tag = "951:365",
			name = "Vengeance Landing, Howling Fjord",
			neighbors = {
				["522:617"] = 303, -- Dalaran
				["835:412"] = 73, -- Camp Winterhoof, Howling Fjord
				["844:492"] = 104, -- Camp Oneqwah, Grizzly Hills
				["845:267"] = 88, -- New Agamand, Howling Fjord
			},
		},
		{
			tag = "999:999",
			name = "Forsaken Forward Command, Gilneas",
			comment = "Does not go anywhere and is only available between two quest. Ignore it",
			neighbors = {
				["000:000"] = 999, -- ?
			},
		},
	},
	[5]={
	},
	[6]={
		{
			tag = "215:524",
			name = "Shado-Pan Garrison, Townlong Steppes",
			neighbors = {
				["235:501"] = 14, -- Rensai's Watchpost, Townlong Steppes
			},
		},
		{
			tag = "235:501",
			name = "Rensai's Watchpost, Townlong Steppes",
			neighbors = {
				["215:524"] = 22, -- Shado-Pan Garrison, Townlong Steppes
				["317:571"] = 49, -- Longying Outpost, Townlong Steppes
				["333:493"] = 44, -- Gao-Ran Battlefront, Townlong Steppes
			},
		},
		{
			tag = "244:324",
			name = "The Briny Muck, Dread Wastes",
			neighbors = {
				["304:387"] = 49, -- Klaxxi'vess, Dread Wastes
				["305:281"] = 33, -- Soggy's Gamble, Dread Wastes
			},
		},
		{
			tag = "279:455",
			name = "The Sunset Brewgarden, Dread Wastes",
			neighbors = {
				["304:387"] = 33, -- Klaxxi'vess, Dread Wastes
				["333:493"] = 34, -- Gao-Ran Battlefront, Townlong Steppes
				["390:424"] = 52, -- Serpent's Spine, Vale of Eternal Blossoms
				["494:505"] = 106, -- Shrine of Two Moons, Vale of Eternal Blossoms
				["541:447"] = 118, -- Shrine of Seven Stars, Vale of Eternal Blossoms
			},
		},
		{
			tag = "304:387",
			name = "Klaxxi'vess, Dread Wastes",
			neighbors = {
				["244:324"] = 43, -- The Briny Muck, Dread Wastes
				["279:455"] = 39, -- The Sunset Brewgarden, Dread Wastes
				["305:281"] = 48, -- Soggy's Gamble, Dread Wastes
				["390:424"] = 42, -- Serpent's Spine, Vale of Eternal Blossoms
				["410:335"] = 50, -- Stoneplow, Valley of the Four Winds
				["420:275"] = 71, -- Sentinel Basecamp, Krasarang Wilds
				["435:230"] = 100, -- Dawnchaser Retreat, Krasarang Wilds
				["494:505"] = 97, -- Shrine of Two Moons, Vale of Eternal Blossoms
				["541:447"] = 110, -- Shrine of Seven Stars, Vale of Eternal Blossoms
			},
		},
		{
			tag = "305:281",
			name = "Soggy's Gamble, Dread Wastes",
			neighbors = {
				["244:324"] = 44, -- The Briny Muck, Dread Wastes
				["304:387"] = 49, -- Klaxxi'vess, Dread Wastes
				["390:424"] = 81, -- Serpent's Spine, Vale of Eternal Blossoms
			},
		},
		{
			tag = "317:571",
			name = "Longying Outpost, Townlong Steppes",
			neighbors = {
				["235:501"] = 49, -- Rensai's Watchpost, Townlong Steppes
				["333:493"] = 40, -- Gao-Ran Battlefront, Townlong Steppes
				["344:637"] = 34, -- Winter's Blossom, Kun-Lai Summit
				["351:551"] = 30, -- Serpent's Spine, Kun-Lai Summit
				["393:530"] = 41, -- Shado-Pan Fallback, Kun-Lai Summit
			},
		},
		{
			tag = "333:493",
			name = "Gao-Ran Battlefront, Townlong Steppes",
			neighbors = {
				["235:501"] = 51, -- Rensai's Watchpost, Townlong Steppes
				["279:455"] = 33, -- The Sunset Brewgarden, Dread Wastes
				["317:571"] = 46, -- Longying Outpost, Townlong Steppes
				["351:551"] = 33, -- Serpent's Spine, Kun-Lai Summit
				["393:530"] = 39, -- Shado-Pan Fallback, Kun-Lai Summit
			},
		},
		{
			tag = "344:637",
			name = "Winter's Blossom, Kun-Lai Summit",
			neighbors = {
				["317:571"] = 34, -- Longying Outpost, Townlong Steppes
				["387:601"] = 27, -- Kota Basecamp, Kun-Lai Summit
				["390:424"] = 0, -- Serpent's Spine, Vale of Eternal Blossoms
			},
		},
		{
			tag = "351:551",
			name = "Serpent's Spine, Kun-Lai Summit",
			faction = "H",
			neighbors = {
				["317:571"] = 22, -- Longying Outpost, Townlong Steppes
				["333:493"] = 28, -- Gao-Ran Battlefront, Townlong Steppes
				["494:505"] = 77, -- Shrine of Two Moons, Vale of Eternal Blossoms
			},
		},
		{
			tag = "359:225",
			name = "Domination Point, Krassarang Wilds",
			neighbors = {
				["410:335"] = 64, -- Stoneplow, Valley of the Four Winds
				["435:230"] = 61, -- Dawnchaser Retreat, Krasarang Wilds
			},
		},
		{
			tag = "384:392",
			name = "The Lion's Redoubt, Dread Wastes",
			neighbors = {
				["541:447"] = 81, -- Shrine of Seven Stars, Vale of Eternal Blossoms
			},
		},
		{
			tag = "387:601",
			name = "Kota Basecamp, Kun-Lai Summit",
			neighbors = {
				["344:637"] = 29, -- Winter's Blossom, Kun-Lai Summit
				["393:530"] = 30, -- Shado-Pan Fallback, Kun-Lai Summit
				["446:549"] = 37, -- Westwind Rest, Kun-Lai Summit
				["466:635"] = 41, -- One Keg, Kun-Lai Summit
				["490:561"] = 59, -- Eastwind Rest, Kun-Lai Summit
			},
		},
		{
			tag = "390:424",
			name = "Serpent's Spine, Vale of Eternal Blossoms",
			faction = "B",
			neighbors = {
				["279:455"] = 54, -- The Sunset Brewgarden, Dread Wastes
				["304:387"] = 52, -- Klaxxi'vess, Dread Wastes
				["305:281"] = 73, -- Soggy's Gamble, Dread Wastes
				["494:505"] = 59, -- Shrine of Two Moons, Vale of Eternal Blossoms
				["541:447"] = 71, -- Shrine of Seven Stars, Vale of Eternal Blossoms
			},
		},
		{
			tag = "390:424",
			name = "Serpent's Spine, Vale of Eternal Blossoms",
			neighbors = {
				["279:455"] = 0, -- The Sunset Brewgarden, Dread Wastes
				["304:387"] = 0, -- Klaxxi'vess, Dread Wastes
				["305:281"] = 0, -- Soggy's Gamble, Dread Wastes
				["344:637"] = 0, -- Winter's Blossom, Kun-Lai Summit
				["541:447"] = 0, -- Shrine of Seven Stars, Vale of Eternal Blossoms
			},
		},
		{
			tag = "393:530",
			name = "Shado-Pan Fallback, Kun-Lai Summit",
			neighbors = {
				["317:571"] = 52, -- Longying Outpost, Townlong Steppes
				["333:493"] = 38, -- Gao-Ran Battlefront, Townlong Steppes
				["387:601"] = 31, -- Kota Basecamp, Kun-Lai Summit
				["446:549"] = 26, -- Westwind Rest, Kun-Lai Summit
				["490:561"] = 45, -- Eastwind Rest, Kun-Lai Summit
			},
		},
		{
			tag = "410:335",
			name = "Stoneplow, Valley of the Four Winds",
			neighbors = {
				["304:387"] = 64, -- Klaxxi'vess, Dread Wastes
				["359:225"] = 64, -- Domination Point, Krassarang Wilds
				["420:275"] = 27, -- Sentinel Basecamp, Krasarang Wilds
				["435:230"] = 45, -- Dawnchaser Retreat, Krasarang Wilds
				["444:197"] = 62, -- Cradle of Chi-Ji, Krasarang Wilds
				["530:353"] = 46, -- Halfhill, Valley of the Four Winds
				["588:277"] = 61, -- The Incursion, Krasarang Wilds
			},
		},
		{
			tag = "420:275",
			name = "Sentinel Basecamp, Krasarang Wilds",
			neighbors = {
				["304:387"] = 74, -- Klaxxi'vess, Dread Wastes
				["410:335"] = 43, -- Stoneplow, Valley of the Four Winds
				["444:197"] = 0, -- Cradle of Chi-Ji, Krasarang Wilds
				["527:162"] = 75, -- Marista, Krasarang Wilds
				["530:353"] = 65, -- Halfhill, Valley of the Four Winds
				["588:277"] = 75, -- The Incursion, Krasarang Wilds
			},
		},
		{
			tag = "435:230",
			name = "Dawnchaser Retreat, Krasarang Wilds",
			neighbors = {
				["304:387"] = 104, -- Klaxxi'vess, Dread Wastes
				["359:225"] = 73, -- Domination Point, Krassarang Wilds
				["410:335"] = 50, -- Stoneplow, Valley of the Four Winds
				["444:197"] = 19, -- Cradle of Chi-Ji, Krasarang Wilds
				["527:162"] = 50, -- Marista, Krasarang Wilds
				["554:298"] = 67, -- Thunder Cleft, Krasarang Wilds
			},
		},
		{
			tag = "444:197",
			name = "Cradle of Chi-Ji, Krasarang Wilds",
			neighbors = {
				["410:335"] = 61, -- Stoneplow, Valley of the Four Winds
				["420:275"] = 0, -- Sentinel Basecamp, Krasarang Wilds
				["435:230"] = 15, -- Dawnchaser Retreat, Krasarang Wilds
				["527:162"] = 43, -- Marista, Krasarang Wilds
				["530:353"] = 80, -- Halfhill, Valley of the Four Winds
				["588:277"] = 80, -- The Incursion, Krasarang Wilds
			},
		},
		{
			tag = "446:549",
			name = "Westwind Rest, Kun-Lai Summit",
			neighbors = {
				["387:601"] = 38, -- Kota Basecamp, Kun-Lai Summit
				["393:530"] = 27, -- Shado-Pan Fallback, Kun-Lai Summit
				["466:635"] = 47, -- One Keg, Kun-Lai Summit
				["490:739"] = 97, -- Zouchin Village, Kun-Lai Summit
				["511:667"] = 63, -- Temple of the White Tiger, Kun-Lai Summit
				["541:447"] = 65, -- Shrine of Seven Stars, Vale of Eternal Blossoms
				["543:514"] = 45, -- Binan Village, Kun-Lai Summit
			},
		},
		{
			tag = "463:856",
			name = "Beeble's Wreck, Isle of Giants",
			comment = "Isle of Giants/Dinosa --Need these coords at some point. Broke atm",
			neighbors = {
				["490:739"] = 54, -- Zouchin Village, Kun-Lai Summit
				["541:447"] = 203, -- Shrine of Seven Stars, Vale of Eternal Blossoms
			},
		},
		{
			tag = "466:635",
			name = "One Keg, Kun-Lai Summit",
			neighbors = {
				["387:601"] = 52, -- Kota Basecamp, Kun-Lai Summit
				["446:549"] = 56, -- Westwind Rest, Kun-Lai Summit
				["490:561"] = 47, -- Eastwind Rest, Kun-Lai Summit
				["490:739"] = 59, -- Zouchin Village, Kun-Lai Summit
				["511:667"] = 24, -- Temple of the White Tiger, Kun-Lai Summit
				["543:514"] = 67, -- Binan Village, Kun-Lai Summit
			},
		},
		{
			tag = "478:860",
			name = "Bozzle's Wreck, Isle Of Giants",
			neighbors = {
				["490:739"] = 50, -- Zouchin Village, Kun-Lai Summit
				["494:505"] = 185, -- Shrine of Two Moons, Vale of Eternal Blossoms
			},
		},
		{
			tag = "490:561",
			name = "Eastwind Rest, Kun-Lai Summit",
			neighbors = {
				["387:601"] = 62, -- Kota Basecamp, Kun-Lai Summit
				["393:530"] = 50, -- Shado-Pan Fallback, Kun-Lai Summit
				["466:635"] = 48, -- One Keg, Kun-Lai Summit
				["490:739"] = 88, -- Zouchin Village, Kun-Lai Summit
				["494:505"] = 61, -- Shrine of Two Moons, Vale of Eternal Blossoms
				["511:667"] = 59, -- Temple of the White Tiger, Kun-Lai Summit
				["543:514"] = 30, -- Binan Village, Kun-Lai Summit
			},
		},
		{
			tag = "490:739",
			name = "Zouchin Village, Kun-Lai Summit",
			neighbors = {
				["446:549"] = 93, -- Westwind Rest, Kun-Lai Summit
				["463:856"] = 50, -- Beeble's Wreck, Isle of Giants
				["466:635"] = 62, -- One Keg, Kun-Lai Summit
				["478:860"] = 52, -- Bozzle's Wreck, Isle Of Giants
				["490:561"] = 82, -- Eastwind Rest, Kun-Lai Summit
				["511:667"] = 44, -- Temple of the White Tiger, Kun-Lai Summit
			},
		},
		{
			tag = "494:505",
			name = "Shrine of Two Moons, Vale of Eternal Blossoms",
			neighbors = {
				["279:455"] = 107, -- The Sunset Brewgarden, Dread Wastes
				["304:387"] = 108, -- Klaxxi'vess, Dread Wastes
				["351:551"] = 84, -- Serpent's Spine, Kun-Lai Summit
				["390:424"] = 63, -- Serpent's Spine, Vale of Eternal Blossoms
				["478:860"] = 193, -- Bozzle's Wreck, Isle Of Giants
				["490:561"] = 67, -- Eastwind Rest, Kun-Lai Summit
				["530:353"] = 74, -- Halfhill, Valley of the Four Winds
				["543:514"] = 84, -- Binan Village, Kun-Lai Summit
				["577:411"] = 74, -- Grassy Cline, Valley of the Four Winds
				["612:618"] = 133, -- Honeydew Village, Jade Forest
				["622:418"] = 92, -- Pang's Stead, Valley of the Four Winds
				["723:499"] = 163, -- Dawn's Blossom, Jade Forest
			},
		},
		{
			tag = "511:667",
			name = "Temple of the White Tiger, Kun-Lai Summit",
			neighbors = {
				["446:549"] = 61, -- Westwind Rest, Kun-Lai Summit
				["466:635"] = 32, -- One Keg, Kun-Lai Summit
				["490:561"] = 52, -- Eastwind Rest, Kun-Lai Summit
				["490:739"] = 40, -- Zouchin Village, Kun-Lai Summit
				["543:514"] = 75, -- Binan Village, Kun-Lai Summit
			},
		},
		{
			tag = "527:162",
			name = "Marista, Krasarang Wilds",
			neighbors = {
				["420:275"] = 86, -- Sentinel Basecamp, Krasarang Wilds
				["435:230"] = 64, -- Dawnchaser Retreat, Krasarang Wilds
				["444:197"] = 51, -- Cradle of Chi-Ji, Krasarang Wilds
				["554:298"] = 61, -- Thunder Cleft, Krasarang Wilds
				["588:277"] = 62, -- The Incursion, Krasarang Wilds
			},
		},
		{
			tag = "530:353",
			name = "Halfhill, Valley of the Four Winds",
			neighbors = {
				["410:335"] = 49, -- Stoneplow, Valley of the Four Winds
				["420:275"] = 66, -- Sentinel Basecamp, Krasarang Wilds
				["444:197"] = 77, -- Cradle of Chi-Ji, Krasarang Wilds
				["494:505"] = 76, -- Shrine of Two Moons, Vale of Eternal Blossoms
				["541:447"] = 73, -- Shrine of Seven Stars, Vale of Eternal Blossoms
				["554:298"] = 35, -- Thunder Cleft, Krasarang Wilds
				["577:411"] = 37, -- Grassy Cline, Valley of the Four Winds
				["588:277"] = 44, -- The Incursion, Krasarang Wilds
				["622:418"] = 51, -- Pang's Stead, Valley of the Four Winds
				["623:341"] = 43, -- Zhu's Watch, Krasarang Wilds
			},
		},
		{
			tag = "541:447",
			name = "Shrine of Seven Stars, Vale of Eternal Blossoms",
			neighbors = {
				["279:455"] = 113, -- The Sunset Brewgarden, Dread Wastes
				["304:387"] = 114, -- Klaxxi'vess, Dread Wastes
				["384:392"] = 83, -- The Lion's Redoubt, Dread Wastes
				["390:424"] = 69, -- Serpent's Spine, Vale of Eternal Blossoms
				["446:549"] = 64, -- Westwind Rest, Kun-Lai Summit
				["463:856"] = 201, -- Beeble's Wreck, Isle of Giants
				["530:353"] = 67, -- Halfhill, Valley of the Four Winds
				["543:514"] = 91, -- Binan Village, Kun-Lai Summit
				["577:411"] = 63, -- Grassy Cline, Valley of the Four Winds
				["622:418"] = 80, -- Pang's Stead, Valley of the Four Winds
				["717:346"] = 124, -- Paw'Don Village, Jade Forest
				["723:499"] = 170, -- Dawn's Blossom, Jade Forest
			},
		},
		{
			tag = "543:514",
			name = "Binan Village, Kun-Lai Summit",
			neighbors = {
				["446:549"] = 51, -- Westwind Rest, Kun-Lai Summit
				["466:635"] = 61, -- One Keg, Kun-Lai Summit
				["490:561"] = 34, -- Eastwind Rest, Kun-Lai Summit
				["494:505"] = 84, -- Shrine of Two Moons, Vale of Eternal Blossoms
				["511:667"] = 66, -- Temple of the White Tiger, Kun-Lai Summit
				["541:447"] = 97, -- Shrine of Seven Stars, Vale of Eternal Blossoms
				["586:438"] = 40, -- Tavern in the Mists, The Veiled Stair
				["612:618"] = 58, -- Honeydew Village, Jade Forest
				["623:341"] = 85, -- Zhu's Watch, Krasarang Wilds
				["717:346"] = 141, -- Paw'Don Village, Jade Forest
			},
		},
		{
			tag = "554:298",
			name = "Thunder Cleft, Krasarang Wilds",
			neighbors = {
				["435:230"] = 80, -- Dawnchaser Retreat, Krasarang Wilds
				["527:162"] = 71, -- Marista, Krasarang Wilds
				["530:353"] = 34, -- Halfhill, Valley of the Four Winds
				["622:418"] = 61, -- Pang's Stead, Valley of the Four Winds
				["623:341"] = 39, -- Zhu's Watch, Krasarang Wilds
			},
		},
		{
			tag = "577:411",
			name = "Grassy Cline, Valley of the Four Winds",
			neighbors = {
				["494:505"] = 69, -- Shrine of Two Moons, Vale of Eternal Blossoms
				["530:353"] = 37, -- Halfhill, Valley of the Four Winds
				["541:447"] = 64, -- Shrine of Seven Stars, Vale of Eternal Blossoms
				["586:438"] = 16, -- Tavern in the Mists, The Veiled Stair
				["622:418"] = 30, -- Pang's Stead, Valley of the Four Winds
			},
		},
		{
			tag = "586:438",
			name = "Tavern in the Mists, The Veiled Stair",
			neighbors = {
				["543:514"] = 38, -- Binan Village, Kun-Lai Summit
				["577:411"] = 20, -- Grassy Cline, Valley of the Four Winds
				["622:418"] = 22, -- Pang's Stead, Valley of the Four Winds
			},
		},
		{
			tag = "588:277",
			name = "The Incursion, Krasarang Wilds",
			neighbors = {
				["410:335"] = 60, -- Stoneplow, Valley of the Four Winds
				["420:275"] = 76, -- Sentinel Basecamp, Krasarang Wilds
				["444:197"] = 76, -- Cradle of Chi-Ji, Krasarang Wilds
				["527:162"] = 63, -- Marista, Krasarang Wilds
				["530:353"] = 44, -- Halfhill, Valley of the Four Winds
				["669:272"] = 64, -- Lion's Landing, Krassarang Wilds
			},
		},
		{
			tag = "610:491",
			name = "Grookin Hill, Jade Forest",
			neighbors = {
				["612:618"] = 61, -- Honeydew Village, Jade Forest
				["622:418"] = 40, -- Pang's Stead, Valley of the Four Winds
				["703:583"] = 58, -- Tian Monastery, Jade Forest
				["723:499"] = 63, -- Dawn's Blossom, Jade Forest
			},
		},
		{
			tag = "612:618",
			name = "Honeydew Village, Jade Forest",
			neighbors = {
				["494:505"] = 126, -- Shrine of Two Moons, Vale of Eternal Blossoms
				["543:514"] = 61, -- Binan Village, Kun-Lai Summit
				["610:491"] = 63, -- Grookin Hill, Jade Forest
				["703:583"] = 43, -- Tian Monastery, Jade Forest
				["723:499"] = 77, -- Dawn's Blossom, Jade Forest
			},
		},
		{
			tag = "622:418",
			name = "Pang's Stead, Valley of the Four Winds",
			neighbors = {
				["494:505"] = 94, -- Shrine of Two Moons, Vale of Eternal Blossoms
				["530:353"] = 56, -- Halfhill, Valley of the Four Winds
				["541:447"] = 86, -- Shrine of Seven Stars, Vale of Eternal Blossoms
				["554:298"] = 65, -- Thunder Cleft, Krasarang Wilds
				["577:411"] = 25, -- Grassy Cline, Valley of the Four Winds
				["586:438"] = 29, -- Tavern in the Mists, The Veiled Stair
				["623:341"] = 37, -- Zhu's Watch, Krasarang Wilds
				["723:499"] = 56, -- Dawn's Blossom, Jade Forest
			},
		},
		{
			tag = "623:341",
			name = "Zhu's Watch, Krasarang Wilds",
			neighbors = {
				["530:353"] = 47, -- Halfhill, Valley of the Four Winds
				["543:514"] = 87, -- Binan Village, Kun-Lai Summit
				["554:298"] = 43, -- Thunder Cleft, Krasarang Wilds
				["622:418"] = 34, -- Pang's Stead, Valley of the Four Winds
				["717:346"] = 40, -- Paw'Don Village, Jade Forest
			},
		},
		{
			tag = "669:272",
			name = "Lion's Landing, Krassarang Wilds",
			neighbors = {
				["588:277"] = 45, -- The Incursion, Krasarang Wilds
				["717:346"] = 64, -- Paw'Don Village, Jade Forest
			},
		},
		{
			tag = "700:411",
			name = "Serpent's Overlook, Jade Forest",
			neighbors = {
				["723:499"] = 56, -- Dawn's Blossom, Jade Forest
				["787:356"] = 44, -- Pearlfin Village, Jade Forest
			},
		},
		{
			tag = "703:583",
			name = "Tian Monastery, Jade Forest",
			neighbors = {
				["610:491"] = 66, -- Grookin Hill, Jade Forest
				["612:618"] = 54, -- Honeydew Village, Jade Forest
				["723:499"] = 42, -- Dawn's Blossom, Jade Forest
				["745:574"] = 22, -- Emperor's Omen, Jade Forest
			},
		},
		{
			tag = "717:346",
			name = "Paw'Don Village, Jade Forest",
			neighbors = {
				["541:447"] = 131, -- Shrine of Seven Stars, Vale of Eternal Blossoms
				["543:514"] = 110, -- Binan Village, Kun-Lai Summit
				["623:341"] = 49, -- Zhu's Watch, Krasarang Wilds
				["669:272"] = 49, -- Lion's Landing, Krassarang Wilds
				["723:499"] = 96, -- Dawn's Blossom, Jade Forest
				["767:437"] = 65, -- Jade Temple Grounds, Jade Forest
				["787:356"] = 38, -- Pearlfin Village, Jade Forest
			},
		},
		{
			tag = "723:499",
			name = "Dawn's Blossom, Jade Forest",
			neighbors = {
				["494:505"] = 167, -- Shrine of Two Moons, Vale of Eternal Blossoms
				["541:447"] = 178, -- Shrine of Seven Stars, Vale of Eternal Blossoms
				["610:491"] = 71, -- Grookin Hill, Jade Forest
				["612:618"] = 88, -- Honeydew Village, Jade Forest
				["622:418"] = 76, -- Pang's Stead, Valley of the Four Winds
				["700:411"] = 48, -- Serpent's Overlook, Jade Forest
				["703:583"] = 49, -- Tian Monastery, Jade Forest
				["717:346"] = 78, -- Paw'Don Village, Jade Forest
				["745:574"] = 40, -- Emperor's Omen, Jade Forest
				["767:437"] = 36, -- Jade Temple Grounds, Jade Forest
				["782:507"] = 28, -- The Arboretum, Jade Forest
				["787:356"] = 70, -- Pearlfin Village, Jade Forest
				["956:338"] = 143, -- Huojin Landing, Timeless Isle
				["959:296"] = 142, -- Tushui Landing, Timeless Isle
			},
		},
		{
			tag = "745:574",
			name = "Emperor's Omen, Jade Forest",
			neighbors = {
				["703:583"] = 21, -- Tian Monastery, Jade Forest
				["723:499"] = 38, -- Dawn's Blossom, Jade Forest
				["772:587"] = 23, -- Sri-La Village, Jade Forest
			},
		},
		{
			tag = "767:437",
			name = "Jade Temple Grounds, Jade Forest",
			neighbors = {
				["717:346"] = 57, -- Paw'Don Village, Jade Forest
				["723:499"] = 46, -- Dawn's Blossom, Jade Forest
				["782:507"] = 38, -- The Arboretum, Jade Forest
				["787:356"] = 36, -- Pearlfin Village, Jade Forest
			},
		},
		{
			tag = "772:587",
			name = "Sri-La Village, Jade Forest",
			neighbors = {
				["745:574"] = 21, -- Emperor's Omen, Jade Forest
				["782:507"] = 50, -- The Arboretum, Jade Forest
			},
		},
		{
			tag = "782:507",
			name = "The Arboretum, Jade Forest",
			neighbors = {
				["723:499"] = 26, -- Dawn's Blossom, Jade Forest
				["767:437"] = 31, -- Jade Temple Grounds, Jade Forest
				["772:587"] = 50, -- Sri-La Village, Jade Forest
			},
		},
		{
			tag = "787:356",
			name = "Pearlfin Village, Jade Forest",
			neighbors = {
				["700:411"] = 44, -- Serpent's Overlook, Jade Forest
				["717:346"] = 47, -- Paw'Don Village, Jade Forest
				["723:499"] = 75, -- Dawn's Blossom, Jade Forest
				["767:437"] = 37, -- Jade Temple Grounds, Jade Forest
			},
		},
		{
			tag = "956:338",
			name = "Huojin Landing, Timeless Isle",
			neighbors = {
				["723:499"] = 143, -- Dawn's Blossom, Jade Forest
			},
		},
		{
			tag = "959:296",
			name = "Tushui Landing, Timeless Isle",
			neighbors = {
				["723:499"] = 142, -- Dawn's Blossom, Jade Forest
			},
		},
	},
	[7]={
		{
			tag = "220:416",
			name = "Nivek's Overlook, Nagrand",
			neighbors = {
				["220:480"] = 0, -- Riverside Post, Nagrand
				["224:520"] = 0, -- Rilzit's Holdfast, Nagrand
				["264:515"] = 0, -- Joz's Rylaks, Nagrand
				["269:449"] = 32, -- Telaari Station, Nagrand
				["325:476"] = 0, -- The Ring of Trials, Nagrand
				["475:222"] = 0, -- Southport, Spires of Arak
				["477:268"] = 0, -- Axefall, Spires of Arak
			},
		},
		{
			tag = "220:480",
			name = "Riverside Post, Nagrand",
			neighbors = {
				["220:416"] = 0, -- Nivek's Overlook, Nagrand
				["224:520"] = 0, -- Rilzit's Holdfast, Nagrand
				["304:529"] = 0, -- Throne of the Elements, Nagrand
				["337:488"] = 0, -- Wor'var, Nagrand
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
				["477:268"] = 0, -- Axefall, Spires of Arak
			},
		},
		{
			tag = "224:520",
			name = "Rilzit's Holdfast, Nagrand",
			neighbors = {
				["220:416"] = 0, -- Nivek's Overlook, Nagrand
				["220:480"] = 0, -- Riverside Post, Nagrand
				["264:515"] = 0, -- Joz's Rylaks, Nagrand
				["266:497"] = 0, -- Yrel's Watch, Nagrand
				["269:449"] = 0, -- Telaari Station, Nagrand
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
				["351:742"] = 0, -- Bloodmaul Slag Mines, Frostfire Ridge
			},
		},
		{
			tag = "240:656",
			name = "Wor'gol, Frostfire Ridge",
			neighbors = {
				["308:666"] = 0, -- Stonefang Outpost, Frostfire Ridge
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
			},
		},
		{
			tag = "250:702",
			name = "Bladespire Fortress, Frostfire Ridge",
			neighbors = {
				["308:666"] = 0, -- Stonefang Outpost, Frostfire Ridge
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
			},
		},
		{
			tag = "264:515",
			name = "Joz's Rylaks, Nagrand",
			neighbors = {
				["220:416"] = 0, -- Nivek's Overlook, Nagrand
				["224:520"] = 0, -- Rilzit's Holdfast, Nagrand
				["266:497"] = 0, -- Yrel's Watch, Nagrand
				["304:529"] = 0, -- Throne of the Elements, Nagrand
				["325:476"] = 0, -- The Ring of Trials, Nagrand
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
			},
		},
		{
			tag = "266:497",
			name = "Yrel's Watch, Nagrand",
			neighbors = {
				["224:520"] = 0, -- Rilzit's Holdfast, Nagrand
				["264:515"] = 0, -- Joz's Rylaks, Nagrand
				["269:449"] = 0, -- Telaari Station, Nagrand
				["304:529"] = 0, -- Throne of the Elements, Nagrand
				["325:476"] = 0, -- The Ring of Trials, Nagrand
			},
		},
		{
			tag = "269:449",
			name = "Telaari Station, Nagrand",
			neighbors = {
				["220:416"] = 27, -- Nivek's Overlook, Nagrand
				["224:520"] = 0, -- Rilzit's Holdfast, Nagrand
				["266:497"] = 0, -- Yrel's Watch, Nagrand
				["304:529"] = 38, -- Throne of the Elements, Nagrand
				["325:476"] = 0, -- The Ring of Trials, Nagrand
				["447:457"] = 0, -- Shattrath City, Talador
				["475:222"] = 0, -- Southport, Spires of Arak
				["515:509"] = 0, -- Fort Wrynn, Talador
				["571:678"] = 155, -- Highpass, Gorgrond
				["603:404"] = 0, -- Lunarfall Garrison, Shadowmoon Valley
			},
		},
		{
			tag = "278:771",
			name = "Throm'Var, Frostfire Ridge",
			neighbors = {
				["351:742"] = 0, -- Bloodmaul Slag Mines, Frostfire Ridge
				["352:693"] = 0, -- Darkspear's Edge, Frostfire Ridge
			},
		},
		{
			tag = "304:529",
			name = "Throne of the Elements, Nagrand",
			neighbors = {
				["220:480"] = 0, -- Riverside Post, Nagrand
				["264:515"] = 0, -- Joz's Rylaks, Nagrand
				["266:497"] = 0, -- Yrel's Watch, Nagrand
				["269:449"] = 38, -- Telaari Station, Nagrand
				["325:476"] = 0, -- The Ring of Trials, Nagrand
				["337:488"] = 0, -- Wor'var, Nagrand
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
				["351:742"] = 0, -- Bloodmaul Slag Mines, Frostfire Ridge
				["485:640"] = 0, -- Iron Siegeworks, Frostfire Ridge
			},
		},
		{
			tag = "308:666",
			name = "Stonefang Outpost, Frostfire Ridge",
			neighbors = {
				["240:656"] = 0, -- Wor'gol, Frostfire Ridge
				["250:702"] = 0, -- Bladespire Fortress, Frostfire Ridge
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
				["352:693"] = 0, -- Darkspear's Edge, Frostfire Ridge
				["471:644"] = 0, -- Thunder Pass, Frostfire Ridge
			},
		},
		{
			tag = "325:476",
			name = "The Ring of Trials, Nagrand",
			neighbors = {
				["220:416"] = 0, -- Nivek's Overlook, Nagrand
				["264:515"] = 0, -- Joz's Rylaks, Nagrand
				["266:497"] = 0, -- Yrel's Watch, Nagrand
				["269:449"] = 0, -- Telaari Station, Nagrand
				["304:529"] = 0, -- Throne of the Elements, Nagrand
				["337:488"] = 0, -- Wor'var, Nagrand
				["414:375"] = 0, -- Retribution Point, Talador
				["447:457"] = 0, -- Shattrath City, Talador
			},
		},
		{
			tag = "337:488",
			name = "Wor'var, Nagrand",
			neighbors = {
				["220:480"] = 0, -- Riverside Post, Nagrand
				["304:529"] = 0, -- Throne of the Elements, Nagrand
				["325:476"] = 0, -- The Ring of Trials, Nagrand
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
				["447:457"] = 0, -- Shattrath City, Talador
				["463:462"] = 0, -- Durotan's Grasp, Talador
				["477:268"] = 0, -- Axefall, Spires of Arak
				["484:535"] = 0, -- Frostwolf Overlook, Talador
				["518:489"] = 0, -- Vol'jin's Pride, Talador
				["537:645"] = 0, -- Beastwatch, Gorgrond
			},
		},
		{
			tag = "338:631",
			name = "Frostwall Garrison, Frostfire Ridge",
			neighbors = {
				["220:480"] = 0, -- Riverside Post, Nagrand
				["224:520"] = 0, -- Rilzit's Holdfast, Nagrand
				["240:656"] = 0, -- Wor'gol, Frostfire Ridge
				["250:702"] = 0, -- Bladespire Fortress, Frostfire Ridge
				["264:515"] = 0, -- Joz's Rylaks, Nagrand
				["304:529"] = 0, -- Throne of the Elements, Nagrand
				["308:666"] = 0, -- Stonefang Outpost, Frostfire Ridge
				["337:488"] = 0, -- Wor'var, Nagrand
				["351:742"] = 0, -- Bloodmaul Slag Mines, Frostfire Ridge
				["352:693"] = 0, -- Darkspear's Edge, Frostfire Ridge
				["433:646"] = 0, -- Wolf's Stand, Frostfire Ridge
				["447:457"] = 0, -- Shattrath City, Talador
				["468:314"] = 0, -- Apexis Excavation, Spires of Arak
				["471:644"] = 0, -- Thunder Pass, Frostfire Ridge
				["477:268"] = 0, -- Axefall, Spires of Arak
				["484:535"] = 0, -- Frostwolf Overlook, Talador
				["518:489"] = 0, -- Vol'jin's Pride, Talador
				["537:645"] = 0, -- Beastwatch, Gorgrond
				["556:194"] = 0, -- Pinchwhistle Gearworks, Spires of Arak
				["857:617"] = 0, -- Warspear, Ashran
			},
		},
		{
			tag = "351:742",
			name = "Bloodmaul Slag Mines, Frostfire Ridge",
			neighbors = {
				["224:520"] = 0, -- Rilzit's Holdfast, Nagrand
				["278:771"] = 0, -- Throm'Var, Frostfire Ridge
				["304:529"] = 0, -- Throne of the Elements, Nagrand
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
				["447:457"] = 0, -- Shattrath City, Talador
				["471:644"] = 0, -- Thunder Pass, Frostfire Ridge
				["485:640"] = 0, -- Iron Siegeworks, Frostfire Ridge
				["505:754"] = 0, -- Skysea Point, Gorgrond
			},
		},
		{
			tag = "352:693",
			name = "Darkspear's Edge, Frostfire Ridge",
			neighbors = {
				["278:771"] = 0, -- Throm'Var, Frostfire Ridge
				["308:666"] = 0, -- Stonefang Outpost, Frostfire Ridge
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
				["433:646"] = 0, -- Wolf's Stand, Frostfire Ridge
			},
		},
		{
			tag = "414:375",
			name = "Retribution Point, Talador",
			neighbors = {
				["325:476"] = 0, -- The Ring of Trials, Nagrand
				["447:457"] = 0, -- Shattrath City, Talador
				["459:396"] = 0, -- Exarch's Refuge, Talador
				["460:394"] = 0, -- Exarch's Refuge, Talador
				["468:314"] = 0, -- Apexis Excavation, Spires of Arak
			},
		},
		{
			tag = "433:646",
			name = "Wolf's Stand, Frostfire Ridge",
			neighbors = {
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
				["352:693"] = 0, -- Darkspear's Edge, Frostfire Ridge
				["471:644"] = 0, -- Thunder Pass, Frostfire Ridge
			},
		},
		{
			tag = "447:457",
			name = "Shattrath City, Talador",
			neighbors = {
				["269:449"] = 0, -- Telaari Station, Nagrand
				["325:476"] = 0, -- The Ring of Trials, Nagrand
				["337:488"] = 0, -- Wor'var, Nagrand
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
				["351:742"] = 0, -- Bloodmaul Slag Mines, Frostfire Ridge
				["414:375"] = 0, -- Retribution Point, Talador
				["459:396"] = 0, -- Exarch's Refuge, Talador
				["460:394"] = 0, -- Exarch's Refuge, Talador
				["463:462"] = 0, -- Durotan's Grasp, Talador
				["468:314"] = 0, -- Apexis Excavation, Spires of Arak
				["471:644"] = 0, -- Thunder Pass, Frostfire Ridge
				["475:222"] = 0, -- Southport, Spires of Arak
				["477:268"] = 0, -- Axefall, Spires of Arak
				["485:640"] = 0, -- Iron Siegeworks, Frostfire Ridge
				["491:498"] = 0, -- Redemption Rise, Talador
				["515:509"] = 0, -- Fort Wrynn, Talador
				["517:422"] = 0, -- Terokkar Refuge, Talador
				["518:489"] = 0, -- Vol'jin's Pride, Talador
				["574:332"] = 0, -- Akeeta's Hovel, Shadowmoon Valley
				["603:404"] = 0, -- Lunarfall Garrison, Shadowmoon Valley
				["851:515"] = 0, -- Stormshield, Ashran
				["857:617"] = 0, -- Warspear, Ashran
			},
		},
		{
			tag = "459:396",
			name = "Exarch's Refuge, Talador",
			faction = "H",
			neighbors = {
				["414:375"] = 0, -- Retribution Point, Talador
				["447:457"] = 0, -- Shattrath City, Talador
				["463:462"] = 0, -- Durotan's Grasp, Talador
				["468:314"] = 0, -- Apexis Excavation, Spires of Arak
				["517:422"] = 0, -- Terokkar Refuge, Talador
				["574:332"] = 0, -- Akeeta's Hovel, Shadowmoon Valley
			},
		},
		{
			tag = "460:394",
			name = "Exarch's Refuge, Talador",
			faction = "A",
			neighbors = {
				["414:375"] = 0, -- Retribution Point, Talador
				["447:457"] = 0, -- Shattrath City, Talador
				["468:314"] = 0, -- Apexis Excavation, Spires of Arak
				["491:498"] = 0, -- Redemption Rise, Talador
				["517:422"] = 0, -- Terokkar Refuge, Talador
				["552:423"] = 0, -- Anchorite's Sojourn, Talador
				["574:332"] = 0, -- Akeeta's Hovel, Shadowmoon Valley
				["657:242"] = 0, -- Socrethar's Rise, Shadowmoon Valley
				["665:384"] = 0, -- Exile's Rise, Shadowmoon Valley
			},
		},
		{
			tag = "463:462",
			name = "Durotan's Grasp, Talador",
			neighbors = {
				["337:488"] = 0, -- Wor'var, Nagrand
				["447:457"] = 0, -- Shattrath City, Talador
				["459:396"] = 0, -- Exarch's Refuge, Talador
				["484:535"] = 0, -- Frostwolf Overlook, Talador
				["517:422"] = 0, -- Terokkar Refuge, Talador
				["518:489"] = 0, -- Vol'jin's Pride, Talador
			},
		},
		{
			tag = "468:314",
			name = "Apexis Excavation, Spires of Arak",
			neighbors = {
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
				["414:375"] = 0, -- Retribution Point, Talador
				["447:457"] = 0, -- Shattrath City, Talador
				["459:396"] = 0, -- Exarch's Refuge, Talador
				["460:394"] = 0, -- Exarch's Refuge, Talador
				["475:222"] = 0, -- Southport, Spires of Arak
				["477:268"] = 0, -- Axefall, Spires of Arak
				["502:266"] = 0, -- Veil Terokk, Spires of Arak
				["522:298"] = 0, -- Crow's Crook, Spires of Arak
			},
		},
		{
			tag = "471:644",
			name = "Thunder Pass, Frostfire Ridge",
			neighbors = {
				["308:666"] = 0, -- Stonefang Outpost, Frostfire Ridge
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
				["351:742"] = 0, -- Bloodmaul Slag Mines, Frostfire Ridge
				["433:646"] = 0, -- Wolf's Stand, Frostfire Ridge
				["447:457"] = 0, -- Shattrath City, Talador
				["518:489"] = 0, -- Vol'jin's Pride, Talador
				["536:693"] = 0, -- Breaker's Crown, Gorgrond
				["537:645"] = 0, -- Beastwatch, Gorgrond
			},
		},
		{
			tag = "475:222",
			name = "Southport, Spires of Arak",
			neighbors = {
				["220:416"] = 0, -- Nivek's Overlook, Nagrand
				["269:449"] = 0, -- Telaari Station, Nagrand
				["447:457"] = 0, -- Shattrath City, Talador
				["468:314"] = 0, -- Apexis Excavation, Spires of Arak
				["502:266"] = 41, -- Veil Terokk, Spires of Arak
				["515:509"] = 0, -- Fort Wrynn, Talador
				["556:194"] = 0, -- Pinchwhistle Gearworks, Spires of Arak
				["574:332"] = 0, -- Akeeta's Hovel, Shadowmoon Valley
				["603:404"] = 0, -- Lunarfall Garrison, Shadowmoon Valley
				["657:242"] = 0, -- Socrethar's Rise, Shadowmoon Valley
			},
		},
		{
			tag = "477:268",
			name = "Axefall, Spires of Arak",
			neighbors = {
				["220:416"] = 0, -- Nivek's Overlook, Nagrand
				["220:480"] = 0, -- Riverside Post, Nagrand
				["337:488"] = 0, -- Wor'var, Nagrand
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
				["447:457"] = 0, -- Shattrath City, Talador
				["468:314"] = 0, -- Apexis Excavation, Spires of Arak
				["502:266"] = 0, -- Veil Terokk, Spires of Arak
				["518:489"] = 0, -- Vol'jin's Pride, Talador
				["522:298"] = 0, -- Crow's Crook, Spires of Arak
				["574:332"] = 0, -- Akeeta's Hovel, Shadowmoon Valley
			},
		},
		{
			tag = "484:535",
			name = "Frostwolf Overlook, Talador",
			neighbors = {
				["337:488"] = 0, -- Wor'var, Nagrand
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
				["463:462"] = 0, -- Durotan's Grasp, Talador
				["518:489"] = 0, -- Vol'jin's Pride, Talador
				["544:574"] = 0, -- Bastion Rise, Gorgrond
			},
		},
		{
			tag = "485:640",
			name = "Iron Siegeworks, Frostfire Ridge",
			neighbors = {
				["304:529"] = 0, -- Throne of the Elements, Nagrand
				["351:742"] = 0, -- Bloodmaul Slag Mines, Frostfire Ridge
				["447:457"] = 0, -- Shattrath City, Talador
				["505:754"] = 0, -- Skysea Point, Gorgrond
				["515:509"] = 0, -- Fort Wrynn, Talador
				["536:693"] = 0, -- Breaker's Crown, Gorgrond
				["539:568"] = 0, -- Bastion Rise, Gorgrond
				["539:621"] = 0, -- Deeproot, Gorgrond
				["571:678"] = 0, -- Highpass, Gorgrond
			},
		},
		{
			tag = "491:498",
			name = "Redemption Rise, Talador",
			neighbors = {
				["447:457"] = 0, -- Shattrath City, Talador
				["460:394"] = 0, -- Exarch's Refuge, Talador
				["515:509"] = 0, -- Fort Wrynn, Talador
				["517:422"] = 0, -- Terokkar Refuge, Talador
			},
		},
		{
			tag = "502:266",
			name = "Veil Terokk, Spires of Arak",
			neighbors = {
				["468:314"] = 0, -- Apexis Excavation, Spires of Arak
				["475:222"] = 0, -- Southport, Spires of Arak
				["477:268"] = 0, -- Axefall, Spires of Arak
				["522:298"] = 0, -- Crow's Crook, Spires of Arak
				["556:194"] = 0, -- Pinchwhistle Gearworks, Spires of Arak
				["560:270"] = 0, -- Talon Watch, Spires of Arak
			},
		},
		{
			tag = "505:754",
			name = "Skysea Point, Gorgrond",
			neighbors = {
				["351:742"] = 0, -- Bloodmaul Slag Mines, Frostfire Ridge
				["485:640"] = 0, -- Iron Siegeworks, Frostfire Ridge
				["514:586"] = 0, -- Evermorn Springs, Gorgrond
				["522:808"] = 0, -- Iron Docks, Gorgrond
				["536:693"] = 0, -- Breaker's Crown, Gorgrond
				["571:678"] = 0, -- Highpass, Gorgrond
				["592:723"] = 0, -- Everbloom Wilds, Gorgrond
				["627:684"] = 0, -- Wildwood Wash, Gorgrond
			},
		},
		{
			tag = "514:586",
			name = "Evermorn Springs, Gorgrond",
			neighbors = {
				["505:754"] = 0, -- Skysea Point, Gorgrond
				["518:489"] = 0, -- Vol'jin's Pride, Talador
				["537:645"] = 0, -- Beastwatch, Gorgrond
			},
		},
		{
			tag = "515:509",
			name = "Fort Wrynn, Talador",
			neighbors = {
				["269:449"] = 0, -- Telaari Station, Nagrand
				["447:457"] = 0, -- Shattrath City, Talador
				["475:222"] = 0, -- Southport, Spires of Arak
				["485:640"] = 0, -- Iron Siegeworks, Frostfire Ridge
				["491:498"] = 0, -- Redemption Rise, Talador
				["539:568"] = 0, -- Bastion Rise, Gorgrond
				["539:621"] = 0, -- Deeproot, Gorgrond
				["552:423"] = 0, -- Anchorite's Sojourn, Talador
				["553:499"] = 0, -- Zangarra, Talador
				["571:678"] = 0, -- Highpass, Gorgrond
				["574:332"] = 0, -- Akeeta's Hovel, Shadowmoon Valley
				["603:404"] = 0, -- Lunarfall Garrison, Shadowmoon Valley
			},
		},
		{
			tag = "517:422",
			name = "Terokkar Refuge, Talador",
			neighbors = {
				["447:457"] = 0, -- Shattrath City, Talador
				["459:396"] = 0, -- Exarch's Refuge, Talador
				["460:394"] = 0, -- Exarch's Refuge, Talador
				["463:462"] = 0, -- Durotan's Grasp, Talador
				["491:498"] = 0, -- Redemption Rise, Talador
				["518:489"] = 0, -- Vol'jin's Pride, Talador
				["522:298"] = 0, -- Crow's Crook, Spires of Arak
				["552:423"] = 0, -- Anchorite's Sojourn, Talador
				["553:499"] = 0, -- Zangarra, Talador
				["574:332"] = 0, -- Akeeta's Hovel, Shadowmoon Valley
				["665:384"] = 0, -- Exile's Rise, Shadowmoon Valley
			},
		},
		{
			tag = "518:489",
			name = "Vol'jin's Pride, Talador",
			neighbors = {
				["337:488"] = 0, -- Wor'var, Nagrand
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
				["447:457"] = 0, -- Shattrath City, Talador
				["463:462"] = 0, -- Durotan's Grasp, Talador
				["471:644"] = 0, -- Thunder Pass, Frostfire Ridge
				["477:268"] = 0, -- Axefall, Spires of Arak
				["484:535"] = 0, -- Frostwolf Overlook, Talador
				["514:586"] = 0, -- Evermorn Springs, Gorgrond
				["517:422"] = 0, -- Terokkar Refuge, Talador
				["537:645"] = 0, -- Beastwatch, Gorgrond
				["544:574"] = 0, -- Bastion Rise, Gorgrond
				["553:499"] = 0, -- Zangarra, Talador
				["574:332"] = 0, -- Akeeta's Hovel, Shadowmoon Valley
				["857:617"] = 0, -- Warspear, Ashran
			},
		},
		{
			tag = "522:298",
			name = "Crow's Crook, Spires of Arak",
			neighbors = {
				["468:314"] = 0, -- Apexis Excavation, Spires of Arak
				["477:268"] = 0, -- Axefall, Spires of Arak
				["502:266"] = 0, -- Veil Terokk, Spires of Arak
				["517:422"] = 0, -- Terokkar Refuge, Talador
				["556:194"] = 0, -- Pinchwhistle Gearworks, Spires of Arak
				["560:270"] = 0, -- Talon Watch, Spires of Arak
				["574:332"] = 0, -- Akeeta's Hovel, Shadowmoon Valley
				["603:404"] = 0, -- Lunarfall Garrison, Shadowmoon Valley
			},
		},
		{
			tag = "522:808",
			name = "Iron Docks, Gorgrond",
			neighbors = {
				["505:754"] = 0, -- Skysea Point, Gorgrond
				["536:693"] = 0, -- Breaker's Crown, Gorgrond
				["537:645"] = 0, -- Beastwatch, Gorgrond
				["571:678"] = 0, -- Highpass, Gorgrond
				["592:723"] = 0, -- Everbloom Wilds, Gorgrond
				["627:684"] = 0, -- Wildwood Wash, Gorgrond
			},
		},
		{
			tag = "536:693",
			name = "Breaker's Crown, Gorgrond",
			neighbors = {
				["471:644"] = 0, -- Thunder Pass, Frostfire Ridge
				["485:640"] = 0, -- Iron Siegeworks, Frostfire Ridge
				["505:754"] = 0, -- Skysea Point, Gorgrond
				["522:808"] = 0, -- Iron Docks, Gorgrond
				["537:645"] = 0, -- Beastwatch, Gorgrond
				["539:621"] = 0, -- Deeproot, Gorgrond
				["571:678"] = 0, -- Highpass, Gorgrond
				["592:723"] = 0, -- Everbloom Wilds, Gorgrond
			},
		},
		{
			tag = "537:645",
			name = "Beastwatch, Gorgrond",
			neighbors = {
				["337:488"] = 0, -- Wor'var, Nagrand
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
				["471:644"] = 0, -- Thunder Pass, Frostfire Ridge
				["514:586"] = 0, -- Evermorn Springs, Gorgrond
				["518:489"] = 0, -- Vol'jin's Pride, Talador
				["522:808"] = 0, -- Iron Docks, Gorgrond
				["536:693"] = 0, -- Breaker's Crown, Gorgrond
				["544:574"] = 0, -- Bastion Rise, Gorgrond
				["592:723"] = 0, -- Everbloom Wilds, Gorgrond
				["857:617"] = 0, -- Warspear, Ashran
			},
		},
		{
			tag = "539:568",
			name = "Bastion Rise, Gorgrond",
			faction = "A",
			neighbors = {
				["485:640"] = 0, -- Iron Siegeworks, Frostfire Ridge
				["515:509"] = 0, -- Fort Wrynn, Talador
				["539:621"] = 0, -- Deeproot, Gorgrond
				["603:404"] = 0, -- Lunarfall Garrison, Shadowmoon Valley
				["627:684"] = 0, -- Wildwood Wash, Gorgrond
			},
		},
		{
			tag = "539:621",
			name = "Deeproot, Gorgrond",
			neighbors = {
				["485:640"] = 0, -- Iron Siegeworks, Frostfire Ridge
				["515:509"] = 0, -- Fort Wrynn, Talador
				["536:693"] = 0, -- Breaker's Crown, Gorgrond
				["539:568"] = 0, -- Bastion Rise, Gorgrond
				["571:678"] = 0, -- Highpass, Gorgrond
				["592:723"] = 0, -- Everbloom Wilds, Gorgrond
				["627:684"] = 0, -- Wildwood Wash, Gorgrond
			},
		},
		{
			tag = "544:574",
			name = "Bastion Rise, Gorgrond",
			faction = "H",
			neighbors = {
				["484:535"] = 0, -- Frostwolf Overlook, Talador
				["518:489"] = 0, -- Vol'jin's Pride, Talador
				["537:645"] = 0, -- Beastwatch, Gorgrond
			},
		},
		{
			tag = "552:423",
			name = "Anchorite's Sojourn, Talador",
			neighbors = {
				["460:394"] = 0, -- Exarch's Refuge, Talador
				["515:509"] = 0, -- Fort Wrynn, Talador
				["517:422"] = 0, -- Terokkar Refuge, Talador
				["553:499"] = 0, -- Zangarra, Talador
				["560:270"] = 0, -- Talon Watch, Spires of Arak
				["603:404"] = 0, -- Lunarfall Garrison, Shadowmoon Valley
				["665:384"] = 0, -- Exile's Rise, Shadowmoon Valley
			},
		},
		{
			tag = "553:499",
			name = "Zangarra, Talador",
			neighbors = {
				["515:509"] = 0, -- Fort Wrynn, Talador
				["517:422"] = 0, -- Terokkar Refuge, Talador
				["518:489"] = 0, -- Vol'jin's Pride, Talador
				["552:423"] = 0, -- Anchorite's Sojourn, Talador
				["603:404"] = 0, -- Lunarfall Garrison, Shadowmoon Valley
			},
		},
		{
			tag = "556:194",
			name = "Pinchwhistle Gearworks, Spires of Arak",
			neighbors = {
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
				["475:222"] = 0, -- Southport, Spires of Arak
				["502:266"] = 0, -- Veil Terokk, Spires of Arak
				["522:298"] = 0, -- Crow's Crook, Spires of Arak
				["560:270"] = 0, -- Talon Watch, Spires of Arak
				["574:332"] = 0, -- Akeeta's Hovel, Shadowmoon Valley
			},
		},
		{
			tag = "560:270",
			name = "Talon Watch, Spires of Arak",
			neighbors = {
				["502:266"] = 0, -- Veil Terokk, Spires of Arak
				["522:298"] = 0, -- Crow's Crook, Spires of Arak
				["552:423"] = 0, -- Anchorite's Sojourn, Talador
				["556:194"] = 0, -- Pinchwhistle Gearworks, Spires of Arak
				["574:332"] = 0, -- Akeeta's Hovel, Shadowmoon Valley
				["645:302"] = 0, -- Twilight Glade, Shadowmoon Valley
				["657:242"] = 0, -- Socrethar's Rise, Shadowmoon Valley
				["665:384"] = 0, -- Exile's Rise, Shadowmoon Valley
			},
		},
		{
			tag = "571:678",
			name = "Highpass, Gorgrond",
			neighbors = {
				["269:449"] = 0, -- Telaari Station, Nagrand
				["485:640"] = 0, -- Iron Siegeworks, Frostfire Ridge
				["505:754"] = 0, -- Skysea Point, Gorgrond
				["515:509"] = 0, -- Fort Wrynn, Talador
				["522:808"] = 0, -- Iron Docks, Gorgrond
				["536:693"] = 0, -- Breaker's Crown, Gorgrond
				["539:621"] = 0, -- Deeproot, Gorgrond
				["592:723"] = 0, -- Everbloom Wilds, Gorgrond
				["603:404"] = 0, -- Lunarfall Garrison, Shadowmoon Valley
				["627:684"] = 0, -- Wildwood Wash, Gorgrond
			},
		},
		{
			tag = "574:332",
			name = "Akeeta's Hovel, Shadowmoon Valley",
			neighbors = {
				["447:457"] = 0, -- Shattrath City, Talador
				["459:396"] = 0, -- Exarch's Refuge, Talador
				["460:394"] = 0, -- Exarch's Refuge, Talador
				["475:222"] = 0, -- Southport, Spires of Arak
				["477:268"] = 0, -- Axefall, Spires of Arak
				["515:509"] = 0, -- Fort Wrynn, Talador
				["517:422"] = 0, -- Terokkar Refuge, Talador
				["518:489"] = 0, -- Vol'jin's Pride, Talador
				["522:298"] = 0, -- Crow's Crook, Spires of Arak
				["556:194"] = 0, -- Pinchwhistle Gearworks, Spires of Arak
				["560:270"] = 0, -- Talon Watch, Spires of Arak
				["603:404"] = 0, -- Lunarfall Garrison, Shadowmoon Valley
				["657:242"] = 0, -- Socrethar's Rise, Shadowmoon Valley
				["665:384"] = 0, -- Exile's Rise, Shadowmoon Valley
				["851:515"] = 0, -- Stormshield, Ashran
				["857:617"] = 0, -- Warspear, Ashran
			},
		},
		{
			tag = "592:723",
			name = "Everbloom Wilds, Gorgrond",
			neighbors = {
				["505:754"] = 0, -- Skysea Point, Gorgrond
				["522:808"] = 0, -- Iron Docks, Gorgrond
				["536:693"] = 0, -- Breaker's Crown, Gorgrond
				["537:645"] = 0, -- Beastwatch, Gorgrond
				["539:621"] = 0, -- Deeproot, Gorgrond
				["571:678"] = 0, -- Highpass, Gorgrond
				["627:684"] = 0, -- Wildwood Wash, Gorgrond
				["651:780"] = 0, -- Everbloom Overlook, Gorgrond
				["857:617"] = 0, -- Warspear, Ashran
			},
		},
		{
			tag = "603:404",
			name = "Lunarfall Garrison, Shadowmoon Valley",
			neighbors = {
				["269:449"] = 134, -- Telaari Station, Nagrand
				["447:457"] = 0, -- Shattrath City, Talador
				["475:222"] = 0, -- Southport, Spires of Arak
				["515:509"] = 0, -- Fort Wrynn, Talador
				["522:298"] = 0, -- Crow's Crook, Spires of Arak
				["539:568"] = 0, -- Bastion Rise, Gorgrond
				["552:423"] = 0, -- Anchorite's Sojourn, Talador
				["553:499"] = 0, -- Zangarra, Talador
				["571:678"] = 0, -- Highpass, Gorgrond
				["574:332"] = 0, -- Akeeta's Hovel, Shadowmoon Valley
				["627:684"] = 0, -- Wildwood Wash, Gorgrond
				["645:302"] = 0, -- Twilight Glade, Shadowmoon Valley
				["657:242"] = 0, -- Socrethar's Rise, Shadowmoon Valley
				["665:346"] = 0, -- Embaari Village, Shadowmoon Valley
				["665:384"] = 0, -- Exile's Rise, Shadowmoon Valley
				["718:366"] = 0, -- Elodor, Shadowmoon Valley
				["723:231"] = 0, -- Darktide Roost, Shadowmoon Valley
				["851:515"] = 112, -- Stormshield, Ashran
			},
		},
		{
			tag = "627:684",
			name = "Wildwood Wash, Gorgrond",
			neighbors = {
				["505:754"] = 0, -- Skysea Point, Gorgrond
				["522:808"] = 0, -- Iron Docks, Gorgrond
				["539:568"] = 0, -- Bastion Rise, Gorgrond
				["539:621"] = 0, -- Deeproot, Gorgrond
				["571:678"] = 0, -- Highpass, Gorgrond
				["592:723"] = 0, -- Everbloom Wilds, Gorgrond
				["603:404"] = 0, -- Lunarfall Garrison, Shadowmoon Valley
				["851:515"] = 0, -- Stormshield, Ashran
			},
		},
		{
			tag = "645:302",
			name = "Twilight Glade, Shadowmoon Valley",
			neighbors = {
				["560:270"] = 0, -- Talon Watch, Spires of Arak
				["603:404"] = 0, -- Lunarfall Garrison, Shadowmoon Valley
				["657:242"] = 0, -- Socrethar's Rise, Shadowmoon Valley
				["665:346"] = 0, -- Embaari Village, Shadowmoon Valley
				["711:298"] = 0, -- The Draakorium, Shadowmoon Valley
				["721:327"] = 0, -- Path of Light, Shadowmoon Valley
			},
		},
		{
			tag = "651:780",
			name = "Everbloom Overlook, Gorgrond",
			neighbors = {
				["592:723"] = 0, -- Everbloom Wilds, Gorgrond
			},
		},
		{
			tag = "657:242",
			name = "Socrethar's Rise, Shadowmoon Valley",
			neighbors = {
				["460:394"] = 0, -- Exarch's Refuge, Talador
				["475:222"] = 0, -- Southport, Spires of Arak
				["560:270"] = 0, -- Talon Watch, Spires of Arak
				["574:332"] = 0, -- Akeeta's Hovel, Shadowmoon Valley
				["603:404"] = 0, -- Lunarfall Garrison, Shadowmoon Valley
				["645:302"] = 0, -- Twilight Glade, Shadowmoon Valley
				["665:384"] = 0, -- Exile's Rise, Shadowmoon Valley
				["711:298"] = 0, -- The Draakorium, Shadowmoon Valley
				["723:231"] = 0, -- Darktide Roost, Shadowmoon Valley
				["851:515"] = 0, -- Stormshield, Ashran
				["857:617"] = 0, -- Warspear, Ashran
			},
		},
		{
			tag = "665:346",
			name = "Embaari Village, Shadowmoon Valley",
			neighbors = {
				["603:404"] = 0, -- Lunarfall Garrison, Shadowmoon Valley
				["645:302"] = 0, -- Twilight Glade, Shadowmoon Valley
				["665:384"] = 0, -- Exile's Rise, Shadowmoon Valley
				["711:298"] = 0, -- The Draakorium, Shadowmoon Valley
				["718:366"] = 0, -- Elodor, Shadowmoon Valley
				["721:327"] = 0, -- Path of Light, Shadowmoon Valley
			},
		},
		{
			tag = "665:384",
			name = "Exile's Rise, Shadowmoon Valley",
			neighbors = {
				["460:394"] = 0, -- Exarch's Refuge, Talador
				["517:422"] = 0, -- Terokkar Refuge, Talador
				["552:423"] = 0, -- Anchorite's Sojourn, Talador
				["560:270"] = 0, -- Talon Watch, Spires of Arak
				["574:332"] = 0, -- Akeeta's Hovel, Shadowmoon Valley
				["603:404"] = 0, -- Lunarfall Garrison, Shadowmoon Valley
				["657:242"] = 0, -- Socrethar's Rise, Shadowmoon Valley
				["665:346"] = 0, -- Embaari Village, Shadowmoon Valley
				["718:366"] = 0, -- Elodor, Shadowmoon Valley
				["723:231"] = 0, -- Darktide Roost, Shadowmoon Valley
				["857:617"] = 0, -- Warspear, Ashran
			},
		},
		{
			tag = "711:298",
			name = "The Draakorium, Shadowmoon Valley",
			neighbors = {
				["645:302"] = 0, -- Twilight Glade, Shadowmoon Valley
				["657:242"] = 0, -- Socrethar's Rise, Shadowmoon Valley
				["665:346"] = 0, -- Embaari Village, Shadowmoon Valley
				["721:327"] = 0, -- Path of Light, Shadowmoon Valley
				["766:315"] = 0, -- Tranquil Court, Shadowmoon Valley
			},
		},
		{
			tag = "718:366",
			name = "Elodor, Shadowmoon Valley",
			neighbors = {
				["603:404"] = 0, -- Lunarfall Garrison, Shadowmoon Valley
				["665:346"] = 0, -- Embaari Village, Shadowmoon Valley
				["665:384"] = 0, -- Exile's Rise, Shadowmoon Valley
				["721:327"] = 0, -- Path of Light, Shadowmoon Valley
				["766:315"] = 0, -- Tranquil Court, Shadowmoon Valley
				["851:515"] = 0, -- Stormshield, Ashran
			},
		},
		{
			tag = "721:327",
			name = "Path of Light, Shadowmoon Valley",
			neighbors = {
				["645:302"] = 0, -- Twilight Glade, Shadowmoon Valley
				["665:346"] = 0, -- Embaari Village, Shadowmoon Valley
				["711:298"] = 0, -- The Draakorium, Shadowmoon Valley
				["718:366"] = 0, -- Elodor, Shadowmoon Valley
				["766:315"] = 0, -- Tranquil Court, Shadowmoon Valley
			},
		},
		{
			tag = "723:231",
			name = "Darktide Roost, Shadowmoon Valley",
			neighbors = {
				["603:404"] = 0, -- Lunarfall Garrison, Shadowmoon Valley
				["657:242"] = 0, -- Socrethar's Rise, Shadowmoon Valley
				["665:384"] = 0, -- Exile's Rise, Shadowmoon Valley
				["851:515"] = 0, -- Stormshield, Ashran
				["857:617"] = 0, -- Warspear, Ashran
			},
		},
		{
			tag = "766:315",
			name = "Tranquil Court, Shadowmoon Valley",
			neighbors = {
				["711:298"] = 0, -- The Draakorium, Shadowmoon Valley
				["718:366"] = 0, -- Elodor, Shadowmoon Valley
				["721:327"] = 0, -- Path of Light, Shadowmoon Valley
			},
		},
		{
			tag = "851:515",
			name = "Stormshield, Ashran",
			neighbors = {
				["447:457"] = 0, -- Shattrath City, Talador
				["574:332"] = 0, -- Akeeta's Hovel, Shadowmoon Valley
				["603:404"] = 0, -- Lunarfall Garrison, Shadowmoon Valley
				["627:684"] = 0, -- Wildwood Wash, Gorgrond
				["657:242"] = 0, -- Socrethar's Rise, Shadowmoon Valley
				["718:366"] = 0, -- Elodor, Shadowmoon Valley
				["723:231"] = 0, -- Darktide Roost, Shadowmoon Valley
			},
		},
		{
			tag = "857:617",
			name = "Warspear, Ashran",
			neighbors = {
				["338:631"] = 0, -- Frostwall Garrison, Frostfire Ridge
				["447:457"] = 0, -- Shattrath City, Talador
				["518:489"] = 0, -- Vol'jin's Pride, Talador
				["537:645"] = 0, -- Beastwatch, Gorgrond
				["574:332"] = 0, -- Akeeta's Hovel, Shadowmoon Valley
				["592:723"] = 0, -- Everbloom Wilds, Gorgrond
				["657:242"] = 0, -- Socrethar's Rise, Shadowmoon Valley
				["665:384"] = 0, -- Exile's Rise, Shadowmoon Valley
				["723:231"] = 0, -- Darktide Roost, Shadowmoon Valley
			},
		},
	},
}
