local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end


ZygorGuidesViewer:RegisterGuideSorting({
	"BETA",
	"Leveling",
	"Loremaster",
	"Dailies",
	"Events",
	"Dungeons",
	"Gear",
	"Professions",
	"Achievements",
	"Pets & Mounts",
	"Titles",
	"Reputations",
	"Macros",
})


------------------ 5.4 BETA

ZygorGuidesViewer:RegisterInclude("celestial_tournament",[[
	step
		goto Timeless Isle/0 34.7,59.6
		.talk Master Li##73082
		..accept The Celestial Tournament##33137
	step
		goto Timeless Isle/0 34.7,59.6
		.talk Master Li##73082
		.' Tell him you'd like to enter the Celestial Tournament. |goto Celestial Tournament/0 34.0,55.2 |noway |c
	step
		'Once you enter the _Celestial Tournament_ you will notice there are 3 main NPCs that you need to talk to.
		.' Click here if those 3 NPCs are _Chen Stormstout_, _Wrathion_, and _Taran Zhu_. |confirm |next "chen"
		.' OR
		.' Click here if those 3 NPCs are _Shademaster Kiryn_, _Blingtron 4000_, and _Wise Mari_. |confirm |next "shademaster"
//Scenario (option 1)
	step
	label "chen"
		goto Celestial Tournament/0 37.8,57.3
		.talk Chen Stormstout##71927
		.' Tell him, "Let's do this!"
		|tip Chen Stormstout has a Beast Pet, a Critter Pet and an Elemental Pet. Use Mechanical type attacks on his Beast, Beast type attacks on his Critter, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
		.' Defeat Chen Stormstout in a pet battle |q 33137
		|confirm
	step
		goto Celestial Tournament/0 40.3,56.5
		.talk Wrathion##71924
		.' Tell him, "Let's do this!"
		|tip Wrathion has an Undead Pet, and two Dragonkin Pets. Use Critter type attacks on his Critters, and Humanoid type attacks on his Dragonkin. Your pets should all be level 25.
		.' Defeat Wrathion in a pet battle |q 33137
		|confirm
	step
		goto Celestial Tournament/0 40.1,52.6
		.talk Taran Zhu##71931
		.' Tell him, "Let's do this!"
		|tip Taran Zhu has three Humanoid Pets. Use Undead type attacks on his Humanoids. Your pets should all be level 25.
		.' Defeat Taran Zhu in a pet battle |q 33137
		|confirm |next "phasetwo"
//Scenario (option 2)
	step
	label "shademaster"
		goto Celestial Tournament/0 37.8,57.3
		.talk Shademaster Kiryn##71930
		.' Tell her, "Let's do this!"
		|tip Shademaster Kiryn has a Humanoid Pet, a Beast Pet and a Mechanical Pet. Use Undead type attacks on her Humanoid, Mechanical type attacks on her Beast, and Elemental type attacks on her Mechanical. Your pets should all be level 25.
		.' Defeat Shademaster Kiryn in a pet battle |q 33137
		|confirm
	step
		goto Celestial Tournament/0 40.4,56.5
		.talk Blingtron 4000##71933
		.' Tell him, "Let's do this!"
		|tip Blingtron 4000 has an Elemental Pet, a Critter Pet and a Mechanical Pet. Use Aquatic type attacks on his Elemental, Beast type attacks on his Critter, and Elemental type attacks on his Mechanical. Your pets should all be level 25.
		.' Defeat Blingtron 4000 in a pet battle |q 33137
		|confirm
	step
		goto Celestial Tournament/0 40.0,52.7
		.talk Wise Mari##71932
		.' Tell him, "Let's do this!"
		|tip Wise Mari has an Aquatic Pet, a Magic Pet and an Elemental Pet. Use Flying type attacks on his Beast, Dragonkin type attacks on his Magic, and Aquatic type attacks on his Elemental. Your pets should all be level 25.
		.' Defeat Wise Mari in a pet battle |q 33137
		|confirm
//Second part
	step
	label "phasetwo"
		goto Celestial Tournament/0 38.9,56.7
		.talk Yu'la, Broodling of Yu'lon##73507
		.' Tell him, "Let's do this!"
		|tip Yu'la is a Dragonkin type pet. Use Humanoid attacks against him in order to defeat him. Your pets should all be level 25.
		.' Defeat Yu'la, Broodling of Yu'lon in a pet battle |q 33137
		|confirm
	step
		goto Celestial Tournament/0 40.0,55.2
		.talk Xu-Fu, Cub of Xuen##73505
		.' Tell him, "Let's do this!"
		|tip Xu-Fu is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
		.' Defeat Xu-Fu, Cub of Xuen in a pet battle |q 33137
		|confirm
	step
		goto Celestial Tournament/0 39.0,53.8
		.talk Zao, Calfling of Niuzao##73506
		.' Tell him, "Let's do this!"
		|tip Zao is a Beast type pet. Use Mechanical attacks against him in order to defeat him. Your pets should all be level 25.
		.' Defeat Zao, Calfling of Niuzao in a pet battle |q 33137
		|confirm
	step
		goto Celestial Tournament/0 38.0,55.2
		.talk Chi-Chi, Hatchling of Chi-Ji##73503
		.' Tell him, "Let's do this!"
		|tip Chi-Chi is a Flying type pet. Use Magic attacks against him in order to defeat him. Your pets should all be level 25.
		.' Defeat Chi-Chi, Hatchling of Chi-Ji in a pet battle |q 33137
		|confirm
	step
		'Complete The Celestial Tournament |q 33137/1
]])


ZygorGuidesViewer:RegisterGuide("Achievement\\Pet Battle System\\The Celestial Tournament",[[
	description Complete the Celestial Tournament Scenario
	condition end achieved(8410)
	step
	label "start"
		'This achievement requires you to complete the _Celestial Tournament_ scenario.
		.' In order to do so, you must have at least 30 different battle pets at level 25.
		|confirm
	step
		#include "celestial_tournament"
		|achieve 8410
	step
		'Congratulations, you have obtained _The Celestial Tournament_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Achievement\\Pet Battle System\\Celestial Family",[[
	description Complete the Celestial Tournament Scenario
	condition end achieved(8410)
	step
	label "start"
		'This achievement requires you to obtain all 4 of the celesital pets on the Timeless Isle.
		.' In order to do so, you must complete the _Celestial Tournament_ every week to earn _Celestial Coins_. These are used to purchase the 4 pets.
		|confirm
	step
		#include "celestial_tournament"
	step
		'You will have to have _3 Celestial Coins_ in order to obtain each pet.
		.collect 3 Celestial Coin##101529 |next
		.' Click here to go back to the beginning of the guide to complete the weekly quest again. |confirm |next "start"
	step
		goto Timeless Isle/0 34.8,59.7
		.talk Master Li##73082
		..buy 1 Yu'la, Broodling of Yu'lon##102147 |next "yulal" |only if not achieved(8519/3) |or
		..buy 1 Xu-Fu, Cub of Xuen##101771 |next "xuful" |only if not achieved(8519/1) |or
		..buy 1 Zao, Calfling of Niuzao##102146 |next "zaol" |only if not achieved(8519/4) |or
		..buy 1 Chi-Chi, Hatchling of Chi-Ji##102145 |next "chichil" |only if not achieved(8519/2) |or
	step
	label "yulal"
		'Use the _Yu'la, Broodling of Yu'lon_ in your bags. |use Yu'la, Broodling of Yu'lon##102147
		.learnpet Yu'la, Broodling of Yu'lon##72463
		|next "check"
		|only if not achieved(8519/3)
	step
	label "chichil"
		'Use the _Chi-Chi, Hatchling of Chi-Ji_ in your bags. |use Chi-Chi, Hatchling of Chi-Ji##102145
		.learnpet Chi-Chi, Hatchling of Chi-Ji##72462
		|next "check"
		|only if not achieved(8519/2)
	step
	label "zaol"
		'Use the _Zao, Calfling of Niuzao_ in your bags. |use Zao, Calfling of Niuzao##102146
		.learnpet Zao, Calfling of Niuzao##72464
		|next "check"
		|only if not achieved(8519/4)
	step
	label "xuful"
		'Use the _Xu-Fu, Cub of Xuen_ in your bags. |use Xu-Fu, Cub of Xuen##101771
		.learnpet Xu-Fu, Cub of Xuen##71942
		|next "check"
		|only if not achieved(8519/1)
	step
	label "check"
		'This will display your progress up to this point:
		.' Yu'la obtained |achieve 8519/3
		.' Xu-Fu obtained |achieve 8519/1
		.' Zao obtained |achieve 8519/4
		.' Chi-Chi obtained |achieve 8519/2
		|confirm |next "start"
	step
		.' Congratulations, you have obtained the _Celestial Family_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Achievement\\Pet Battle System\\Emissary of Ordos",[[
	step
	label "start"
		'This achievement requires you to purchase and use a _Censer of Eternal Agony_ on the Timeless Isle.
		.' In order to do so, you must gather _2500 Timeless Coins_ from mobs and chests on the Timeless Isle.
		|confirm
	step
		goto Timeless Isle/0 31.0,50.5
		.from Brilliant Windfeather##72762+, Windfeather Chick##71143+, Ironfur Herdling##72842+, Ironfur Grazer##72843+
		.earn 2500 Timeless Coin##777+
	step
		goto Timeless Isle/0 74.9,44.9
		.talk Speaker Gulan##73307
		.buy 1 Censer of Eternal Agony##102467
	step
		'Use the _Censer of Eternal Agony_ in your bags. |use Censer of Eternal Agony##102467
		|achieve 8716
	step
		.' Congratulations, you have obtained the _Emissary of Ordos_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Achievement\\Pet Battle System\\Crazy for Cats",[[
	step
		'This guide will help you obtain 20 different cat pets for the achievement and title.
		.' All of the pets in this guide are in-game, and do not require the Blizzard Store or TCG to obtain.
		|confirm
	step
	label "menu"
		'Click here to obtain the Black Tabby Cat |confirm |next "blacktabby" |only if not achieved(8397/1)
		'Click here to obtain the Bombay Cat |confirm |next "bombay" |only if not achieved(8397/2)
		'Click here to obtain the Calico Cat |confirm |next "calico" |only if not achieved(8397/3)
		'Click here to obtain the Cat |confirm |next "normal" |only if not achieved(8397/4)
		'Click here to obtain the Cheetah Cub |confirm |next "cheetah" |only if not achieved(8397/5)
		'Click here to obtain the Cornish Rex |confirm |next "cornish" |only if not achieved(8397/7)
		'Click here to obtain the Darkmoon Cub |confirm |next "darkmoon" |only if not achieved(8397/8)
		'Click here to obtain the Feline Familiar |confirm |next "felinefam" |only if not achieved(8397/9)
		'Click here to obtain the Fluxfire Feline |confirm |next "fluxfire" |only if not achieved(8397/10)
		'Click here to obtain the Mr. Bigglesworth |confirm |next "bigglesworth" |only if not achieved(8397/12)
		'Click here to obtain the Orange Tabby Cat |confirm |next "orangetabby" |only if not achieved(8397/14)
		'Click here to obtain the Panther Cub |confirm |next "panthercub" |only if not achieved(8397/15)
		'Click here to obtain the Sand Kitten |confirm |next "sandkitten" |only if not achieved(8397/16)
		'Click here to obtain the Sapphire Cub |confirm |next "sapphire" |only if not achieved(8397/17)
		'Click here to obtain the Siamese Cat |confirm |next "siamese" |only if not achieved(8397/18)
		'Click here to obtain the Silver Tabby Cat |confirm |next "silvertabby" |only if not achieved(8397/19)
		'Click here to obtain the Snow Cub |confirm |next "snowcub" |only if not achieved(8397/20)
		'Click here to obtain the White Kitten |confirm |next "whitekitten" |only if not achieved(8397/23)
		'Click here to obtain the Winterspring Cub |confirm |next "winterspring" |only if not achieved(8397/24)
		'Click here to obtain Xu-Fu, Cub of Xuen |confirm |next "xufu" |only if not achieved(8397/25)
//BLACK TABBY
	step
	label "blacktabby"
		goto Hillsbrad Foothills 58.8,74.6
		'_Kill_ any and all mobs in _Hillsbrad Foothills_ |tip Every mob here has a chance to drop the Black Tabby Cat's carrier
		.collect 1 Cat Carrier (Black Tabby)##8491
		|modeldisplay 5448
	step
		.learnpet Black Tabby Cat##7383 |use Cat Carrier (Black Tabby)##8491
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//BOMBAY CAT
	step
	label "bombay"
		goto Elwynn Forest,44.2,53.2
		.talk Donni Anthania##6367
		.buy 1 Cat Carrier (Bombay)##8485 //5556
		|modeldisplay 5556
	step
		.learnpet Bombay Cat##7385 |use Cat Carrier (Bombay)##8485
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//CALICO CAT
	step
	label "calico"
		goto Dalaran 58.6,39.6
		.talk Breanni##28951
		.buy 1 Calico Cat##46398
		|modeldisplay 11709
	step
		.learnpet Calico Cat##34364 |use Calico Cat##46398
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//CAT
	step
	label "normal"
		goto Elwynn Forest 44.6,53.4
		.' The _Cat_ is level 1. Challenge one to a pet battle and capture it.
		.learnpet Cat##62019
		|modeldisplay 5585
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//CHEETAH CUB
	step
	label "cheetah"
		goto Northern Barrens 66.5,71.3
		.' The _Cheetah Cubs_ are level 3. Challenge one to a pet battle and capture it.
		.learnpet Cheetah Cub##62129
		|modeldisplay 42362
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//CORNISH REX
	step
	label "cornish"
		goto Elwynn Forest,44.2,53.2
		.talk Donni Anthania##6367
		.buy 1 Cat Carrier (Cornish Rex)##8486 //5586
		|modeldisplay 5586
	step
		.learnpet Cornish Rex Cat##7384 |use Cat Carrier (Cornish Rex)##8486
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//DARKMOON CUB
	step
	label "darkmoon"
		'This pet requires Darkmoon Island to be accessible.
		|confirm
	step
		goto Darkmoon Island,56.0,52.9 |n
		.' Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |noway |c
	step
		'Complete daily quests on Darkmoon Island until you have 90 Darkmoon Prize Tickets
		.earn 90 Darkmoon Prize Ticket##515
	step
		goto Darkmoon Island,48.2,69.6
		.talk Lhara##14846
		.buy 1 Darkmoon Cub##74981
		|modeldisplay 39137
	step
		.learnpet Darkmoon Cub##56031 |use Darkmoon Cub##74981
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//FLUXFIRE FELINE
	step
	label "fluxfire"
		goto New Tinkertown 36.6,52.7
		.' The _Fluxfire Felines_ in the area are around level 1.
		.learnpet Fluxfire Feline##68838
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//ORANGE TABBY
	step
	label "orangetabby"
		goto Elwynn Forest,44.2,53.2
		.talk Donni Anthania##6367
		.buy 1 Cat Carrier (Orange Tabby)##8487
		|modeldisplay 5554
	step
		.learnpet Orange Tabby Cat##7382 |use Cat Carrier (Orange Tabby)##8487
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//PANTHER CUB
	step
	label "panthercub"
		goto Stormwind City,25.9,29.3
		.talk Bwemba##52654
		..accept Bwemba's Spirit##29100
		..accept To Fort Livingston##29102
	step
		goto Northern Stranglethorn,52.8,66.4
		.talk Livingston Marshal##52281
		..turnin To Fort Livingston##29102
		..accept Serpents and Poison##29103
	step
		goto 52.0,61.4
		.kill 10 Jungle Serpent |q 29103/1
		.' Click Fort Livingston Adventurers |tip They look like green bodies laying on the ground around this area.
		.' Heal 10 Adventurers |q 29103/2
	step
		goto 52.8,66.4
		.talk Livingston Marshal##52281
		..turnin Serpents and Poison##29103
	step
		'Next to you:
		.talk Bwemba##52234
		..accept Spirits Are With Us##29104
	step
		goto 52.9,66.5
		.' Click the Bonfire |tip It's a big pile of sticks on fire in the middle of Fort Livingston.
		.' Watch the dialogue
		.' Use the Bonfire in Fort Livingston |q 29104/1
	step
		'Next to you:
		.talk Bwemba##52234
		..turnin Spirits Are With Us##29104
	step
		goto 52.8,66.4
		.talk Livingston Marshal##52281
		..accept Nesingwary Will Know##29105
	step
		goto 44.1,22.9
		.talk Hemet Nesingwary Jr.##52294
		..turnin Nesingwary Will Know##29105
		..accept Track the Tracker##29114
	step
		goto 50.4,21.7
		.talk Grent Direhammer##52346
		..turnin Track the Tracker##29114
		..accept The Hunter's Revenge##29115
	step
		goto 64.0,19.6
		.from Mauti?##52349
		.' Bring Grent Direhammer to the body of Mauti |q 29115/1
	step
		'Click the Complete Quest box that appears under you minimap
		..turnin The Hunter's Revenge##29115
		.' You will automatically accept a new quest:
		..accept Follow That Cat##29116
	step
		goto 77.7,68.4
		.' Go to this spot
		.' Find Mauti's Lair |q 29116/1
	step
		'Next to you:
		.talk Bwemba##52234
		..turnin Follow That Cat##29116
		..accept Mauti##29120
	step
		goto 77.2,69.0
		.from Mauti##52372
		.' Let Bwemba Inspect the Cat |q 29120/1
	step
		'Next to you:
		.talk Bwemba##52234
		..turnin Mauti##29120
		..accept How's the Hunter Holding Up?##29213
	step
		goto 76.5,67.5 |n
		.' Enter the cave |goto 76.5,67.5,0.5 |noway |c
	step
		goto 76.1,66.7
		.talk Grent Direhammer##52371
		..turnin How's the Hunter Holding Up?##29213
		..accept Bury Me With Me Boots...##29121
	step
		goto 76.0,66.5
		.' Click Direhammer's Boots |tip They look like a small pair of brown boots sitting on the ground inside this cave.
		.get Direhammer's Boots |q 29121/1
	step
		goto 76.1,66.7
		.talk Grent Direhammer##52371
		..turnin Bury Me With Me Boots...##29121
	step
		goto 76.1,66.7
		.talk Panther Cub##52374
		..accept Some Good Will Come##29267
		.collect 1 Panther Cub##68833
	step
		.learnpet Panther Cub##52226 |use Panther Cub##68833
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//SAND KITTEN
	step
	label "sandkitten"
		goto Tanaris 33.1,71.0
		.' The _Sand Kittens_ are level 13. Challenge one to a pet battle and capture it.
		.learnpet Sand Kitten##62257
		|modeldisplay 5586
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//SAPPHIRE CUB
	step
	label "sapphire"
		'This pet requires you to either have level 600 Inscription, or purchase it from the Auction House.
		.' Click here to gather and create the pet yourself |confirm |next "create"
		.' Click here to be taken to the Auctioneer to purchase it |confirm |next "buy"
	step
	label "create"
		'You have to complete the Dailies for the _Golden Lotus_ to get the recipe for this pet.
		|confirm
	step
		map Vale of Eternal Blossoms
		path	54.6,23.7	52.8,23.1	47.0,18.7
		path	42.6,15.0	41.8,17.8	36.9,18.0
		path	353.5,21.3	35.0,28.7	35.6,34.5
		path	42.2,29.1	45.4,29.6	47.9,26.5
		path	50.8,31.5	53.6,28.6
		.' Follow the path, mining any node you see.
		.' Use your _Prospecting_ skill on any 5 ore you gather. |cast Prospecting##31252
		.collect 3 Wild Jade##76138
	step
		.create 1 Sapphire Cub##82775
		|next "done"
	step
	label "buy"
		goto Stormwind City 61.0,71.6
		.talk Auctioneer Chilton##8670
		.buy 1 Sapphire Cub##82775
	step
	label "done"
		.learnpet Sapphire Cub##61883 |use Sapphire Cub##82775
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//SIAMESE CAT
	step
	label "siamese"
		goto Netherstorm 43.4,35.2
		.talk Dealer Rashaad##20980
		.buy 1 Cat Carrier (Siamese)##8490
		|modeldisplay 5585
	step
		.learnpet Siamese Cat##7380 |use Cat Carrier (Siamese)##8490
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//SILVER TABBY CAT
	step
	label "silvertabby"
		goto Elwynn Forest,44.2,53.2
		.talk Donni Anthania##6367
		.buy 1 Cat Carrier (Silver Tabby)##8488
		|modeldisplay 5555
	step
		.learnpet Silver Tabby Cat##7381 |use Cat Carrier (Silver Tabby)##8488
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//SNOW CUB
	step
	label "snowcub"
		goto Dun Morogh 51.1,44.6
		.' The _Snow Cubs_ are level 1. Challenge one to a pet battle and capture it.
		.learnpet Snow Cub##61689
		|modeldisplay 42203
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//WHITE KITTEN
	step
	label "whitekitten"
		map Stormwind City
		path follow loose;loop off;
		path	69.2,62.0	67.6,59.0	69.6,53.2
		path	66.0,50.8	61.8,44.6	58.2,53.6
		path	56.0,56.6	53.0,55.2	50.4,56.8
		path	46.8,56.0	51.2,63.0	55.4,63.2
		path	58.6,64.2	63.6,61.2	67.0,64.6
		.' This pet is purchesed from _Lil Timmy_, who patrols around Stormwind.
		.' Follow the path to find him.
		.talk Lil Timmy##8666
		.buy 1 Cat Carrier (White Kitten)##8489
		|modeldisplay 9989
	step
		.learnpet White Kitten##7386 |use Cat Carrier (White Kitten)##8489
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//WINTERSPRING CUB
	step
	label "winterspring"
		goto Winterspring 59.8,51.6
		.talk Michelle De Rum##52830
		.buy 1 Winterspring Cub##69239
		|modeldisplay 37712
	step
		.learnpet Winterspring Cub##52831 |use Winterspring Cub##69239
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//FELINE FAMILIAR (DIFFICULT)
	step
	label "felinefam"
		'This pet can only be obtained during the Hallows End event.
		.collect 150 Tricky Treat##33226
	step
		goto Elwynn Forest,31.8,50.0
		.talk Dorothy##53728
		.buy Feline Familiar##70908
		|modeldisplay 38539
	step
		.learnpet Feline Familiar##53884 |use Feline Familiar##70908
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//MR. BIGGLESWORTH (DIFFICULT)
	step
	label "bigglesworth"
		'This pet is obtained through getting the Raiding with Leases Achievement.
		|confirm
	step
		.' Capture a Mini Mindslayer |achieve 7934/1
		.' Capture an Anubisath Idol |achieve 7934/2
		.' Capture a Giant Bone Spider |achieve 7934/3
		.' Capture a Fungal Abomination |achieve 7934/4
		.' Capture a Stitched Pup |achieve 7934/5
		.' Capture a Harbinger of Flame |achieve 7934/6
		.' Capture a Corefire Imp |achieve 7934/7
		.' Capture an Ashstone Core |achieve 7934/8
		.' Capture an Untamed Hatchling |achieve 7934/9
		.' Capture a Chrominius |achieve 7934/10
		.' Capture a Death Talon Whelpguard |achieve 7934/11
		.' Capture a Viscidus Globule |achieve 7934/12
	step
		'Check your in-game mailbox for your new pet!
		.collect 1 Mr. Bigglesworth##93031
		|modeldisplay 46897
	step
		.learnpet Mr. Bigglesworth##68655 |use Mr. Bigglesworth##93031
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//XU-FU, CUB OF XUEN
	step
	label "xufu"
		'You can only obtain this pet by purchasing it using _Celestial Coins_
		.' You get Celestial Coins from completing the weekly quest, _The Celestial Tournament_.
		|confirm
	step
		#include "celestial_tournament"
	step
		'You will have to have _3 Celestial Coins_ in order to obtain this pet.
		.collect 3 Celestial Coin##101529 |next
		.' Click here to go back to the beginning of the guide to complete the weekly quest again. |confirm |next "startxufu"
	step
		goto Timeless Isle/0 34.8,59.7
		.talk Master Li##73082
		..buy 1 Xu-Fu, Cub of Xuen##101771
	step
		'Use the _Xu-Fu, Cub of Xuen_ in your bags. |use Xu-Fu, Cub of Xuen##101771
		.learnpet Xu-Fu, Cub of Xuen##71942
		|next "menu" |only if not achieved(8397)
		|next "end" |only if achieved(8397)
//END
	step
	label "end"
		'Congratulations, you have obtained the _Crazy for Cats_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Achievement\\Exploration Achievements\\Pandaria\\Timeless Champion",[[
	description Defeat all of the rare creatures of the Timeless Isle listed below. 
	condition end achieved(8714)
	step
		'This achievement requires you to kill every _rare spawn_ on the Timeless Isle.
		'Most of the spawns are on timer, so you will need to wait for them to respawn. If there are other conditions, they are listed with the mob.
		|tip It's recommended that you have at least 1-2 other people helping you with this, as some of the rare spawns have a lot of health.
		|confirm
	step
		goto Timeless Isle/0 26.9,76.4
		.from Monstrous Spineclaw##73166
		|achieve 8714/17
	step
		goto Timeless Isle/0 25.6,55.5
		.from Great Turtle Furyshell##73161
		|achieve 8714/3
	step
		goto Timeless Isle/0 25.2,35.7
		.from Chelon##72045
		|achieve 8714/8
	step
		goto Timeless Isle/0 37.3,43.0
		.from Ironfur Steelhorn##73160 |tip He can spawn in the place of any of the steelhorns in this area.
		|achieve 8714/2
	step
		goto Timeless Isle/22 56.0,30.7
		.from Spirit of Jadefire##72769
		|achieve 8714/12
	step
		goto Timeless Isle/22 45.4,29.4
		.from Rock Moss##73157
		|achieve 8714/20
	step
		goto Timeless Isle/0 54.6,44.3
		.from Tsavo'ka##72808
		|achieve 8714/16
	step
		goto Timeless Isle/0 59.2,48.3
		.' Wait for the cave-in, then click the hammer that spawns here. It may take a minute for the hammer to spawn, but it shouldn't be too long.
		|confirm
	step
		goto Timeless Isle/0 59.1,48.6
		.click Cave-In
		.from Spelurk##71864+
		|achieve 8714/9
	step
		goto Timeless Isle/0 62.5,63.5
		.from Golganarr##72970
		|achieve 8714/28
	step
		goto Timeless Isle/0 62.7,74.6
		.from Bufo##72775 |tip Bufo cn spawn in the place of any Gulp Frog in this area.
		|achieve 8714/14
	step
		goto Timeless Isle/0 60.7,88.0
		.from Rattleskew##72048
		|achieve 8714/11
	step
		goto Timeless Isle/0 46.9,87.3
		.from Zesqua##72245
		|achieve 8714/5
	step
		goto Timeless Isle/0 34.0,83.8
		.talk Fin Longpaw##72151
		.' Ask him to fish up Karkanos for you.
		|confirm
	step
		goto Timeless Isle/0 34.2,84.7
		.from Karkanos##72193
		|achieve 8714/7
	step
		goto Timeless Isle/0 40.4,78.0
		.from Gu'chi the Swarmbringer##72909 |tip He walks around the village here, so some searching may be necessary.
		|achieve 8714/4
	step
		goto Timeless Isle/0 38.0,77.6
		.from Skunky Brew Alemental##71908+ |tip You will have to wait for these to spawn as a random event. After killing 10, Zhu-Gon will spawn.
		|confirm
	step
		goto Timeless Isle/0 38.0,77.6
		.from Zhu-Gon the Sour##71919+
		|achieve 8714/6
	step
		goto Timeless Isle/0 44.5,69.0
		.from Cranegnasher##73854
		|achieve 8714/10
	step
		goto Timeless Isle 44.4,65.5
		.from Imperial Python##73163
		|achieve 8714/18
	step
		goto Timeless Isle/0 40.7,68.8
		.from Emerald Gander##73158
		|achieve 8714/1
	step
		goto Timeless Isle/0 51.5,83.3
		.from Jakur of Ordon##73169
		|achieve 8714/22
	step
		goto Timeless Isle/0 57.5,77.1
		.from Watcher Osu##73170
		|achieve 8714/21
	step
		goto Timeless Isle/0 70.9,49.9
		.from Champion of the Black Flame##73171 |tip The all 3 walk up and down this path here, some searching may be necessary.
		|achieve 8714/23
	step
		goto Timeless Isle/0 72.9,48.7
		.from Huolon##73167
		|achieve 8714/27
	step
		goto Timeless Isle/0 67.3,44.1
		.from Leafmender##73277
		|achieve 8714/13
	step
		goto Timeless Isle/0 54.0,52.4
		.from Cinderfall##73175 |tip On the bridge up above.
		|achieve 8714/24
	step
		goto Timeless Isle/0 64.8,28.8
		.from Garnia##73282
		|achieve 8714/15
	step
		goto Timeless Isle 48.2,38.4
		.from Flintlord Gairan##73172
		|achieve 8714/26
	step
		goto Timeless Isle/0 45.4,26.6
		.from Urdur the Cauterizer##73173
		|achieve 8714/25
	step
		goto Timeless Isle/0 14.1,37.5
		.from Evermaw##73279
		.' He swims in a circle around the isle. He's very fast, so you will either need some kind of water-walking, or the Cursed Swabby Helmet in order to fight him.
		.' He has also been found around the following coordinates:
		.' [14.5,56.5]
		.' [16.1,63.9]
		.' [33.3,2.6]
		.' [63.4,6.9]
		.' [79.6,30.4]
		.' [79.0,70.0]
		.' [75.0,84.0]
		.' [55.0,91.0]
		.' [30.0,89.0]
		.collect 1 Mist-Filled Spirit Lantern##104115 |tip This is a guaranteed drop.
		|achieve 8714/29
	step
		goto Timeless Isle/0 26.2,23.8
		'Use the _Mist-Filled Spirit Lantern_ to summon the Dread Ship Vazuvius. |use Mist-Filled Spirit Lantern##104115
		.from Dread Ship Vazuvius##73281
		|achieve 8714/30
	step
		'Congratulations, you have obtained the _Timeless Champion_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Achievement\\Exploration Achievements\\Pandaria\\Timeless Nutriment",[[
	description Consume all of the sources of Timeless Nutriment on the Timeless Isle.
	condition end achieved(8722)
	step
		goto Timeless Isle/0 23.3,51.7
		.click Sand-Covered Egg
		|achieve 8722/2
	step
		goto Timeless Isle/0 35.7,42.4
		.click Ripe Crispfruit
		|achieve 8722/1
	step
		goto Timeless Isle/0 59.3,55.2
		.click Charged Crystal |tip On the ground under the bridge.
		|achieve 8722/3
	step
		goto Timeless Isle/0 66.5,74.0
		.click Southsea Firebrew
		|achieve 8722/7
	step
		goto Timeless Isle/0 52.2,75.2
		.click Huge Yak Roast
		|achieve 8722/4
	step
		goto Timeless Isle/0 70.3,55.1
		.click Roasted Seed
		|achieve 8722/5
	step
		goto Timeless Isle/0 59.8,31.8
		.click Fire Poppy
		|achieve 8722/6
	step
		'Congratulations, you have obtained the _Timeless Nutriment_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Achievement\\Exploration Achievements\\Pandaria\\Eyes on the Ground",[[
	description Check for loot in suspicious places throughout the Timeless Isle. 
	condition end achieved(8725)
	step
		goto Timeless Isle/0 18.8,20.4
		.click Giant Clam |tip This item is underwater.
		'You can also find this item underwater at [25.7,14.6]
		|achieve 8725/1
	step
		goto Timeless Isle/22 54.2,66.4
		.click Eerie Crystal
		|achieve 8725/3
	step
		map Timeless Isle 
		path	33.1,66.2	31.6,64.6	29.7,67.2
		path	43.2,66.0	32.6,69.4	41.4,69.6
		.click Crane Nest
		|achieve 8725/4
	step
		goto Timeless Isle/0 70.5,73.1
		.click Glinting Sand |tip This item is underwater.
		|achieve 8725/2
	step
		goto Timeless Isle/0 53.2,74.3
		.click Ordon Supplies
		|achieve 8725/5
	step
		goto Timeless Isle/0 67.5,62.5
		.click Firestorm Egg |tip You can only get this item by carefully jumping off the mountainside to a ledge where this item is located.
		'You can also find this item off the mountainside at [Timeless Isle/0 60.1,59.8]
		|achieve 8725/6
	step
		goto Timeless Isle/0 75.3,44.8
		.click Fiery Altar of Ordos
		|achieve 8725/7
	step
		'Congratulations, you have obtained the _Eyes on the Ground_ achievement!
]])

ZygorGuidesViewer:RegisterGuide("Achievement\\Exploration Achievements\\Pandaria\\Rolo's Riddle",[[
	description This guide will instruct you on how to solve Rolo's Riddle in the Timeless Isle.
	condition end achieved(8730)
	step
		goto Timeless Isle/0 39.0,92.5
		.click Glinting Sand##49 |tip You can find this along the shoreline all over the Timeless Isle.
		.collect Rolo's Riddle##102225 |n |tip You likely won't get it on your first try.
		.' Use Rolo's Riddle. |use Rolo's Riddle##102225
		.accept Rolo's Riddle##32974
	step
		goto 49.4,69.4
		.click Mound of Dirt##12093 
		.turnin Rolo's Riddle##32974
		.accept Rolo's Riddle##32975
	step
		goto Timeless Isle/0 34.6,26.7
		.click Mound of Dirt##12093 
		.turnin Rolo's Riddle##32975
		.accept Rolo's Riddle##32976
	step
		goto 33.8,55.0
		.from Highwind Albatross##73531+
		.' Shortly after engaging one, it will pick you up and start to fly off.
		|confirm
	step
		goto 66.0,23.2
		.' When the Highwind ALbatross is over the lake, attack it.
		.' move up the hill to the provided coordinates.
		.clicknpc Rolo's Treasure##72755
		.turnin Rolo's Riddle##32976
	step
		|achieve 8730
	step
		.' Congratulations, you have earned the _Rolo's Riddle_ achievement.
]])

ZygorGuidesViewer:RegisterGuide("Achievement\\Exploration Achievements\\Pandaria\\Zarhym Altogether",[[
	description Help Zarhym find his body in the Cavern of Lost Spirits on Timeless Isle. 
	condition end achieved(8743)
	step
		goto Timeless Isle/22 53.5,57.2
		.talk Zarhym##71876
		.' Tell him you're ready to enter the spirit world
		|confirm
	step
		goto Timeless Isle/22 54.0,30.9
		'Avoid all of the evil spirits as you make your way to the end. If one sees you, it will pull you out of the spirit world and you will fail the event.
		.click Zarhym's Body 
		|tip If you fail this, you will have to wait a day to complete it, as it is only available to players once every day.
		|achieve 8743
	step
		.' Congratulations, you have earned the _Zarhym Altogether_ achievement.
]])

ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Mounts\\Mists of Pandaria\\Flying Mounts\\Thundering Onyx Cloud Serpent",[[
	description This guide will help you acquire the Thundering Onyx Cloud Serpent Mount.
	condition end hasmount(132036)
	step
		goto Timeless Isle/0 72.9,48.7
		.from Huolon##73167 |tip He is a rarespawn.
		.' Note that he flies around the entire island, but this is the easiest place to be on if he's around.
		.collect Reins of the Thundering Onyx Cloud Serpent##104269
	step
		|use Reins of the Thundering Onyx Cloud Serpent##104269
		.learnmount Thundering Onyx Cloud Serpent##148476
]])

ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Pets\\Gu'chi Swarmling",[[
	//Caught in wild = true
	//Source = Drop: Gu'chi the Swarmbringer Zone: Timeless Isle
	//Can Battle = true
	//Tradeable = true
	description This guide will walk you through obtaining
	description the Critter pet:Gu'chi Swarmling
	pet 1345
	step
		goto Timeless Isle/0 40.4,78.0
		.from Gu'chi the Swarmbringer##72909 |tip He walks around the village here, so some searching may be necessary.
		.collect 1 Gu'chi Swarmling##104291
	step
		'Use the _Gu'chi Swarmling_ in your bags. |use Gu'chi Swarmling##104291
		..learnpet Gu'chi Swarmling##73730
]])

ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Pets\\Jademist Dancer",[[
	//Caught in wild = false
	//Source = Drop: Jademist Dancer Zone: Timeless Isle
	//Can Battle = true
	//Tradeable = true
	description This guide will walk you through obtaining
	description the Elemental pet:Jademist Dancer
	pet 1333
	step
		goto Timeless Isle/0 26.3,29.7
		.from Jademist Dancer##72767+
		..collect 1 Jademist Dancer##104164 |tip This item is a rare drop, so you may need to grind for a while.
	step
		'Use the Jademist Dancer in your bags! |use Jademist Dancer##104164
		..learnpet Jademist Dancer##73355
]])

ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Pets\\Ashwing Moth",[[
	-- Caught in wild = true
	-- Source = Pet Battle: Pet Battle: Timeless Isle 
	-- Can Battle = true
	-- Tradeable = false
	description This guide will walk you through obtaining
	description the Flying pet: Ashwing Moth
	pet 1333
	step
		goto Townlong Steppes 47.3,78.7
		.' The _Ashwing Moths_ in this area are level 25. Challenge one to a pet battle and capture it.
		.learnpet Ashwing Moth##73542
		|modeldisplay 51305
]])

ZygorGuidesViewer:RegisterGuide("Pets & Mounts\\Pets\\Azure Crane Chick",[[
	//Caught in wild = false
	//Source = Drop: Crane Nest Zone: Timeless Isle
	//Can Battle = true
	//Tradeable = true
	description This guide will walk you through obtaining
	description the Flying pet:Azure Crane Chick
	pet 1321
	step
		'This pet is looted from _Crane Nests_ on the Timeless Isle.
		|confirm
	step
		map Timeless Isle 
		path	33.1,66.2	31.6,64.6	29.7,67.2
		path	43.2,66.0	32.6,69.4	41.4,69.6
		.click Crane Nest
		..collect 1 Azure Crane Chick##104157
	step
		'Use the _Azure Crane Chick_ in your bags. |use Azure Crane Chick##104157
		.learnpet Azure Crane Chick##73534
	step
		.' Congratulations, you have learned the _Azure Crane Chick_ companion!
]])


---------------------------------------------------
--------- Warlords of Draenor Reputations----------
---------------------------------------------------

ZygorGuidesViewer:RegisterInclude("Arakkoa_Outcasts",[[
	description This guide will show you how to become Exalted with the Arakkoa Outcasts.
	description Becoming Exalted with the Arakkoa Outcasts allows you access to special items including the Shadowmane Charger mount and the Son of Sethe battle pet.
	stickystart "info"
	step
	label "farm"
		Killing certain mobs and questing in Spires of Arak gives you Arakkoa Outcasts rep:
		Skettis |next "skettis" |confirm
		Lost Veil Anzu |next "veil" |confirm
	step
	label "skettis"
		kill Skyreach Labormaster##85542+, Skyreach Tempest-Keeper##84467+, Dread Raven##84083+, Flighted Storm-Spinner##89085+
		Kill level 100 mobs around _Skettis_ for Arakkoa Outcast reputation |goto Spires of Arak 56.9,11.7
		Return to the menu |next "farm" |confirm
	step
	label "veil"
		kill Infected Plunderer##86215+, Infected Mechanic##89144+, Befuddled Relic-Seeker##86205+, Highmaul Relic-Seeker##86155+, Highmaul Skullcrusher##89127+
		Kill level 100 mobs around _Lost Veil Anzu_ for Arakkoa Outcast reputation |goto Spires of Arak 73.4,45.3
		Return to the menu |next "farm" |confirm
	step "info"
		Completing quests in the Spires of Arak and Talador will give you rep with this faction
		Your current reputation rank is:
		_Neutral_ |only if rep('Arakkoa Outcasts')==Neutral
		_Friendly_ |only if rep('Arakkoa Outcasts')==Friendly
		_Honored_ |only if rep('Arakkoa Outcasts')==Honored
		_Revered_ |only if rep('Arakkoa Outcasts')==Revered
		_Exalted_ |only if rep('Arakkoa Outcasts')==Exalted
]])

ZygorGuidesViewer:RegisterInclude("Steamwheedle_Preservation_Society",[[
	description This guide will show you how to become Exalted with the Steamwheedle Preservation Society.
	description Becoming Exalted with the Steamwheedle Preservation Society allows you access to special items including the Domesticated Razorback mount.
	step
	label "menu"
		You gain rep from artifacts and elites
		Your current reputation rank is:
		_Neutral_ |only if rep('Steamwheedle Preservation Society')==Neutral
		_Friendly_ |only if rep('Steamwheedle Preservation Society')==Friendly
		_Honored_ |only if rep('Steamwheedle Preservation Society')==Honored
		_Revered_ |only if rep('Steamwheedle Preservation Society')==Revered
		_Exalted_ |only if rep('Steamwheedle Preservation Society')==Exalted
		Click here to farm Gorian Artifact Fragments from level 100 mobs in Nagrand |next "farm" |confirm
		Click here to do chest runs in Nagrand for Artifact Fragments and Highmaul Relics |next "loot" |confirm
		Click here to kill level 100 Rares in Nagrand |next "rare" |confirm
	step
	label "farm"
		kill Direfang Prowler##86931+, Warsong Wolf Trainer##87231+, Marsh Anaconda##87039+, Highmaul Guard##87221+, Young Razorclaw##88957+, Wetland Riverbeast##87020+, Grand Elekk##86741+, Thorncoat Talbuk##86727+
		collect Gorian Artifact Fragment##118099 |n |goto Nagrand D 36.0,34.1
		You turn these in in stacks of 20 for Steamwheedle Preservation Society reputation
		|confirm
	step
		talk Sallee Silverclamp##87393
		Turn in all of your Gorian Artifact Fragments
		accept Fragments of the Past##35147 |instant |goto Nagrand D 50.4,41.3
		Click here to return to the menu |confirm always |next "menu"
	step
	label "loot"
		Follow the path, looking at these locations for Highmaul Reliquary chests
		map Nagrand D
		path follow loose; loop on; ants straight
		path	27.8,46.4	35.1,48.6	37.4,42.9
		path	49.1,37.6	52.7,33.6	55.2,34.2
		path	56.5,38.2	63.1,36.0	64.7,21.6
		path	59.0,20.0	57.8,18.6	51.8,26.1
		path	49.9,25.7	40.6,25.0	38.8,27.5
		click Highmaul Reliquary
		collect Gorian Artifact Fragment##118099 |n
		collect Highmaul Relic##118100 |n
		You turn these in for Steamwheedle Preservation Society reputation
		|confirm
	step
		talk Sallee Silverclamp##87393
		Turn in all of your Highmaul Relics
		accept A Rare Find##37125 |instant |goto Nagrand D 50.4,41.3
		Turn in all of your Gorian Artifact Fragments
		accept Fragments of the Past##35147 |instant |goto Nagrand D 50.4,41.3
		Click here to return to the menu |confirm always |next "menu"
	step
	label "rare"
		Follow the path, looking at these locations for rares
		map Nagrand D
		path	30.0,44.8	34.1,51.6	41.7,45.0
		path	60.3,38.6	64.4,30.4	62.2,17.5
		path	51.2,16.5	48.1,22.0	37.5,38.5
		collect Thek'talon's Talon##118660 |n
		collect Mu'gra's Head##118659 |n
		collect Xelganak's Stinger##118661 |n
		collect Dekorhan's Tusk##118656 |n
		collect Direhoof's Hide##118657 |n
		collect Bergruu's Horn##118655 |n
		collect Aogexon's Fang##118654 |n
		ollect Gagrog's Skull##118658 |n
		collect Vileclaw's Claw##120172 |n
		You'll turn these items in for Steamwheedle Preservation Society reputation
		|confirm
	step
		Turn in any of the items you have
		talk Gazmolf Futzwangler##87706 |goto Nagrand D/0 50.3,41.1
		accept Aogexon's Fang##37210 |instant
		accept Bergruu's Horn##37211 |instant
		accept Dekorhan's Tusk##37221 |instant
		accept Direhoof's Hide##37222 |instant
		accept Gagrog's Skull##37223 |instant
		accept Mu'gra's Head##37224 |instant
		accept Thek'talon's Talon##37225 |instant
		accept Xelganak's Stinger##37226 |instant
		accept Vileclaw's Claw##37520 |instant
		Click here to return to the menu |confirm always |next "menu"
]])

----------------------------------------------
--------- Warlords of Draenor Titles----------
----------------------------------------------

ZygorGuidesViewer:RegisterInclude("wod_architect",[[
	step
		This title is gained by completing other Garrison achievements:
		|achieve 9094/1
		|achieve 9094/3
		|achieve 9094/2
		|achieve 9094/4
		|achieve 9094/5
	step
		|achieve 9094
	step
		Congratulations, you now have the _Architect_ title!
]])

ZygorGuidesViewer:RegisterInclude("wod_artisan",[[
	step
		This title is gained by reaching skill level 700 in any profession
		|achieve 9464
	step
		Congratulations, you now have the _Artisan_ title!
]])

ZygorGuidesViewer:RegisterInclude("wod_jenkins",[[
	stickystart "info"
	step
		_Note_ the following must be done while in _Heroic Mode_
		Fight through the dungeon and kill _Kyrak_
		Revive Leeroy Jenkins |goto Upper Blackrock Spire 2/2 38.8,39.0
		This will start a _15 minute_ timer, do not wait for the dialogue. Start clearing trash and _kill Commander Tharbek_
		Clear all of the trash to the _Son of the Beast_
		Kill the Son of the Beast |tip Do not skin him before Leeroy has a chance to loot his shoulders or you will fail the achievement
		|achieve 9058
	step "info"
		This title is gained by helping Leeroy Jenkins recover his Devout shoulders in Upper Blackrock Spire on Heroic difficulty
	step
		Congratulations, you now have the _Jenkins_ title and Leeroy Jenkins is now available as a Garrison Follower!
]])

ZygorGuidesViewer:RegisterInclude("wod_empirestwilight",[[
	step
		This title is gained by defeating Imperator Mar'gok on Mythic difficulty
		Enter the Highmaul raid on _Mythic_ difficulty
		kill Imperator Mar'gok##87818
		|achieve 8965
	step
		Congratulations, you now have the _Empire's Twilight_ title!
]])

ZygorGuidesViewer:RegisterInclude("wod_ironbane",[[
	step
		This title is gained by defeating Warlord Blackhand on Mythic difficulty
		Enter the Blackrock Foundry raid on _Mythic_ difficulty
		kill Blackhand##87420
		|achieve 8973
	step
		Congratulations, you now have the _Ironbane_ title!
]])

ZygorGuidesViewer:RegisterInclude("wod_indomitable",[[
	step
		This title is gained by completing every challenge mode dungeon for Warlords of Draenor with a rating of Bronze or better
		|achieve 8897/1
		|achieve 8897/2
		|achieve 8897/3
		|achieve 8897/4
		|achieve 8897/5
		|achieve 8897/6
		|achieve 8897/7
		|achieve 8897/8
	step
		|achieve 8897
	step
		Congratulations, you now have _The Indomitable_ title!
]])

ZygorGuidesViewer:RegisterInclude("wod_talonkingqueen",[[
	stickystart "info"
	step
	label "menu"
		Completing quests in the Spires of Arak and Talador will give you rep with this faction
		Click here to kill level 100 mobs for reputation |confirm |next "farm"
		Reach Exalted reputation level |next "achieve" |condition rep('Arakkoa Outcasts')==Exalted
	step
	label "farm"
		Killing certain mobs Spires of Arak gives you Arakkoa Outcasts rep:
		Skettis |confirm |next "skettis"
		Lost Veil Anzu |confirm |next "veil"
	step
	label "skettis"
		kill Skyreach Labormaster##85542+, Skyreach Tempest-Keeper##84467+, Dread Raven##84083+, Flighted Storm-Spinner##89085+
		Kill level 100 mobs around _Skettis_ for Arakkoa Outcast reputation |goto Spires of Arak 56.9,11.7
		Return to the menu |confirm |next "menu"
	step
	label "veil"
		kill Infected Plunderer##86215+, Infected Mechanic##89144+, Befuddled Relic-Seeker##86205+, Highmaul Relic-Seeker##86205+, Highmaul Skullcrusher##89127+
		Kill level 100 mobs around _Lost Veil Anzu_ for Arakkoa Outcast reputation |goto Spires of Arak 73.4,45.3
		Return to the menu |confirm |next "menu"
	step "info"
		This title is gained by completing the Terokk's Legacy storyline and earning Exalted status with the Arakkoa Outcasts
		Your current reputation rank is:
		_Neutral_ |only if rep('Arakkoa Outcasts')==Neutral
		_Friendly_ |only if rep('Arakkoa Outcasts')==Friendly
		_Honored_ |only if rep('Arakkoa Outcasts')==Honored
		_Revered_ |only if rep('Arakkoa Outcasts')==Revered
		_Exalted_ |only if rep('Arakkoa Outcasts')==Exalted
	step
	label "achieve"
		|achieve 9072
	step
		Congratulations, you now have the _Talon King_ or _Talon Queen_ title!
]])