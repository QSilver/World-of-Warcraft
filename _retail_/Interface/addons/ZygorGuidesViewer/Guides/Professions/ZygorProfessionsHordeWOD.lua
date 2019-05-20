local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ProfessionsHWOD") then return end
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Mining 600-700 Leveling Guide",[[
description This guide will walk you through leveling Mining from 600-700.
step
map Frostfire Ridge
path follow loose; loop on; ants curved
path	43.0,58.3	40.8,60.5	38.4,59.3
path	36.0,57.0	34.3,54.6	31.6,54.8
path	28.5,49.5	27.9,44.6	24.5,39.7
path	23.9,34.1	27.9,30.9	31.9,27.0
path	32.6,25.7	33.5,20.5	36.3,21.0
path	37.8,26.5	41.0,28.9	42.1,30.6
path	43.0,31.0	44.7,31.2	49.7,35.4
path	52.4,38.3	54.3,39.5	48.5,50.1
path	47.6,54.9	46.2,58.3	43.3,57.9
.' Make sure you are tracking minerals, and gather all _Blackrock_ and _True Iron_ ore you see as you follow this path.
skill Mining,700
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Herbalism 600-700 Leveling Guide",[[
description This guide will walk you through leveling Herbalism from 600-700.
step
map Frostfire Ridge
path follow loose; loop on; ants curved
path	31.1,53.3	26.1,53.7	24.2,49.0
path	23.2,45.2	20.7,39.5	22.2,33.9
path	21.8,29.7	20.9,25.4	23.1,23.6
path	25.1,24.6	27.2,22.3	29.7,21.4
path	31.2,22.0	32.8,21.7	35.1,19.5
path	36.9,24.3	38.1,26.8	40.8,28.9
path	41.6,30.6	42.8,29.9	42.9,31.1
path	44.4,31.1	46.2,31.7	48.9,34.4
path	51.6,36.9	53.7,35.1	54.5,30.3
path	56.5,26.1	59.1,28.4	60.0,31.9
path	61.2,34.9	63.1,40.9	63.4,45.0
path	60.9,46.9	62.2,52.4	60.3,55.3
path	57.9,57.5	53.8,55.8	50.6,54.7
path	47.7,55.6	45.9,58.9	43.1,60.8
path	40.3,62.1	37.7,58.7	36.5,56.5
path	35.5,53.3	33.6,49.2	31.1,51.2
.' Make sure you have find herbs turned on, and gather all _Frostweed_ and _Fireweed_ you see as you follow this path.
skill Herbalism,700
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Skinning 600-700 Leveling Guide",[[
description This guide will walk you through leveling Skinning from 600-700.
step
map Nagrand D
path follow loose; loop on; ants curved
path	84.6,61.8	82.3,64.6	79.5,62.3
path	78.6,58.7	80.1,54.5	82.4,59.6
.' Follow the path, killing and skinning any beasts you come across.
skill Skinning,700
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Talador Orchid Farming",[[
description This guide will provide you the best area to quickly gather Talador Orchid.
step
map Talador
path follow loose; loop on; ants curved
path	57.7,46.9	56.3,49.8	54.2,52.0
path	52.7,50.3	51.2,51.5	49.4,54.8
path	46.7,52.6	44.5,53.2	41.5,54.4
path	39.6,53.6	40.7,57.4	40.5,61.5
path	39.7,63.2	39.2,67.9	39.4,72.9
path	41.0,76.8	39.4,81.7	40.3,86.7
path	42.5,88.4	46.0,87.5	48.1,85.9
path	52.4,85.1	56.0,84.4	57.9,78.8
path	59.3,77.5	58.8,74.0	60.3,65.7
path	63.3,64.9	62.8,59.1	61.3,56.6
path	59.5,53.0	59.1,48.6
.' Make sure you have find herbs turned on, and gather all _Talador Orchid_ you see as you follow this path.
.collect Talador Orchid##109129 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Gorgrond Flytrap Farming",[[
description This guide will provide you the best area to quickly gather Gorgrond Flytrap.
step
map Gorgrond
path follow loose; loop on; ants curved
path	50.5,76.1	52.7,75.6	54.1,72.5
path	53.7,68.1	55.1,65.2	56.3,64.1
path	59.3,64.1	61.1,62.6	60.4,59.2
path	59.2,57.6	57.5,57.8	56.2,60.2
path	55.9,62.5	54.0,62.6	52.4,62.4
path	52.1,64.4	50.8,64.8	50.5,67.3
path	49.4,68.9	48.3,70.6	47.2,70.4
path	45.4,71.2	44.5,72.2	44.7,74.2
path	45.0,75.9	45.6,77.0	47.7,76.0
.' Make sure you have find herbs turned on, and gather all _Gorgrond Flytrap_ you see as you follow this path.
..collect Gorgrond Flytrap##109126 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Alchemy 600-700 Leveling Guide",[[
description This guide will walk you through leveling your Alchemy skill from 600-700.
author support@zygorguides.com
completion skill,Alchemy,700
#include "Alchemy_600-700"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Blacksmithing 600-700 Leveling Guide",[[
description This guide will walk you through leveling your Blacksmithing skill from 600-700.
author support@zygorguides.com
completion skill,Blacksmithing,700
#include "Blacksmithing_600-700"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Enchanting 600-700 Leveling Guide",[[
description This guide will walk you through leveling your Enchanting skill from 600-700.
author support@zygorguides.com
completion skill,Enchanting,700
#include "Enchanting_600-700"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Engineering 600-700 Leveling Guide",[[
description This guide will walk you through leveling your Engineering skill from 600-700.
author support@zygorguides.com
completion skill,Engineering,700
#include "Engineering_600-700"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Inscription 600-700 Leveling Guide",[[
description This guide will walk you through leveling your Inscription skill from 600-700.
author support@zygorguides.com
completion skill,Inscription,700
#include "Inscription_600-700"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Jewelcrafting 600-700 Leveling Guide",[[
description This guide will walk you through leveling your Jewelcrafting skill from 600-700.
author support@zygorguides.com
completion skill,Jewelcrafting,700
#include "Jewelcrafting_600-700"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leatherworking 600-700 Leveling Guide",[[
description This guide will walk you through leveling your Leatherworking skill from 600-700.
author support@zygorguides.com
completion skill,Leatherworking,700
#include "Leatherworking_600-700"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Tailoring 600-700 Leveling Guide",[[
description This guide will walk you through leveling your Tailoring skill from 600-700.
author support@zygorguides.com
completion skill,Tailoring,700
#include "Tailoring_600-700"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Cooking 600-700 Leveling Guide",[[
description This guide will walk you through leveling Cooking from 600-700.
step
.' To unlock a maximum Cooking skill of 700, you you will need to loot The Joy of Draenor Cooking
.' These can drop off any mob, continue killing or questing until you get it
.collect The Joy of Draenor Cooking##111387 |n
.use The Joy of Draenor Cooking##111387
.learn Grilled Saberfishg##161002
step
.' You will need _250 Crescent Saberfish Flesh_ to start leveling Cooking from 600-650
.' These can be gained through the Fishing skill or bought from the Auction House
.' Click here to go Fishing |next "gatherflesh" |confirm
.' Click here to buy from the Auction House |next "buyflesh" |confirm
step
label "gatherflesh"
.' Fish anywhere _in the water_ in Frostfire Ridge |cast Fishing##131474
..collect Small Crescent Saberfish##111589 |n
.use Small Crescent Saberfish##111589 |tip These must be used in stacks of 20.
..collect Crescent Saberfish##111595 |n
.use Crescent Saberfish##111595 |tip These must be used in stacks of 10.
..collect 250 Crescent Saberfish Flesh##109137
|next "cook650"
step
label "buyflesh"
#include "auctioneer"
.' Buy Crescent Saberfish Flesh off the Auction House
..collect 250 Crescent Saberfish Flesh
|next "cook650"
step
label "cook650"
.' Build a Cooking Fire |cast Cooking Fire##818
.create 50 Grilled Saberfish##161002,Cooking,50 total
|skill Cooking,650
step
.' Click here to cook Calamari Crepes to 675 |next "calamaricrepes" |confirm
.' Click here to cook Frosty Stew to 675 |next "frostystew" |confirm
step
label "calamaricrepes"
.' You need _5 Nagrand Arrowblooms_
.' These can be gathered if you have Herbalism or bought off the Auction House
.' Click here to gather Arrowblooms |next "gatherna" |confirm
.' Click here to buy them off the Auction House |next "buyna" |confirm
step
label "gatherna"
map Nagrand D
path follow loose; loop; ants curved
path	87.8,65.2	87.4,63.1	86.4,61.4
path	84.7,60.5	84.3,60.1	84.4,58.1
path	83.9,57.8	83.7,56.6	83.3,53.8
path	84.0,51.9	84.6,50.1	82.5,47.7
path	81.3,46.1	80.8,43.4	80.2,38.6
path	77.6,35.9	76.1,35.0	76.5,32.1
path	76.4,30.3	75.7,29.8	74.2,29.7
path	73.5,29.7	73.0,28.5	73.2,27.0
path	74.2,25.1	74.3,22.7	73.9,21.6
path	73.2,20.8	71.6,19.0	70.8,19.3
path	69.5,21.1	69.2,22.1	66.4,23.4
path	66.4,26.1	65.7,29.5	65.0,32.5
path	64.1,35.1	64.3,35.6	65.3,36.4
path	65.2,37.2	64.0,40.0	64.3,38.9
path	63.3,41.8	62.7,42.5	60.4,43.0
path	58.9,42.7	58.7,44.5	58.1,47.0
path	56.5,48.7	54.1,49.1	51.8,46.6
path	50.8,47.0	50.8,48.7	49.5,50.2
path	47.8,49.4	46.7,48.4	45.9,49.0
path	44.3,50.0	43.0,51.4	43.6,54.0
path	44.5,54.4	46.0,55.3	47.2,54.8
path	49.2,54.2	50.8,53.7	53.0,55.0
path	53.8,58.1	53.3,60.3	53.3,63.0
path	53.3,66.5	53.3,67.5	53.8,68.2
path	55.9,69.6	56.7,69.1	57.3,67.1
path	59.8,66.3	60.8,64.1	60.7,60.8
path	60.3,56.8	59.1,53.1	59.1,50.8
path	60.2,50.3	61.1,50.3	62.0,52.2
path	62.8,51.8	63.8,49.7	63.6,47.6
path	63.4,46.2	65.8,44.4	68.5,45.3
path	68.5,46.7	71.5,48.5	72.8,49.5
path	71.3,53.7	71.0,56.5	72.4,57.6
path	75.4,57.5	77.2,58.6	78.2,63.4
path	80.4,66.2	84.1,68.1	86.3,67.5
.' Make sure you are tracking herbs, follow the path and collect all Nagrand Arrowblooms you come across
.collect 5 Nagrand Arrowbloom##109128
|next "1done"
step
label "buyna"
#include "auctioneer"
.' Buy 5 Nagrand Arrowblooms off the Auction House
.collect 5 Nagrand Arrowbloom##109128
|next "1done"
step
label "1done"
.' Next you need _23 Rylak Crepes_
.' Click here to gather Rylak Eggs to make them |next "gathercrepes" |confirm
.' Click here to buy them off the Auction House |next "buycrepes" |confirm
step
label "gathercrepes"
.kill 1 Toxicfang Rylak##83740+
.kill 1 Viletongue Rylak##88643+ |goto Spires of Arak/0 55.5,27.4
.' Click here for another location |goto Spires of Arak/0 63.8,23.4
.collect 115 Rylak Egg##109133
step
.' Build a Cooking Fire |cast Cooking Fire##818
.create 23 Rylak Crepes##160969,Cooking,23 total |n
.collect 23 Rylak Crepes##111437
|next "2done"
step
label "buycrepes"
#include "auctioneer"
.' Buy 125 Rylak Eggs _OR_ 25 Rylak Crepes off the Auction House
..collect 125 Rylak Egg##109133 |or
..collect 25 Rylak Crepes##111437 |or
|next "2done"
step
label "2done"
.' Last, you need _25 Fiery Calamari_
.' These are gained through Fishing or can be bought off the Auction House
.' Click here to go fishing |next "gathertent" |confirm
.' Click here to buy them off the Auction House |next "buytent" |confirm
step
label "gathertent"
.' Fish in the lava |cast Fishing##131474 |goto Frostfire Ridge/0 50.6,60.4
.collect Small Fire Ammonite##111656 |n
.use Small Fire Ammonite##111656 |tip These can only be used in stacks of 20.
.collect Fire Ammonite##111666 |n
.use Fire Ammonite##111666 |tip These can only be used in stacks of 10.
.collect Enormous Fire Ammonite##111673 |n
.use Enormous Fire Ammonite##111673 |tip These can only be used in stacks of 5.
..collect 125 Fire Ammonite Tentacle##109141
|next "3done"
step
label "buytent"
#include "auctioneer"
.' Buy 125 Fire Ammonite Tentacles _OR_ 25 Fiery Clamari
..collect 125 Fire Ammonite Tentacle##109141 |or
..collect 25 Fiery Calamari##111445 |or
|next "3done"
step
label "3done"
.' Build a Cooking Fire |cast Cooking Fire##818
.create 25 Fiery Calamari##160982,Cooking,25 total |n
..collect 25 Fiery Calamari##111445
step
.' Build a Cooking Fire |cast Cooking Fire##818
.create 25 Rylak Crepes##160969,Cooking,25 total |n
..collect 25 Rylak Crepes##111437
step
.' Build a Cooking Fire |cast Cooking Fire##818
.create 5 Calamari Crepes##160999,Cooking,5 total |n
|skill Cooking,675
|next "675menu"
step
label "frostystew"
.' First you need _5 Frostweed_
.' These can be gathered with Herbalism or bougth off the Auction House
.' Click here to gather Frostweed yourself |next "gatherfw" |confirm
.' Click here to buy them off the Auction House |next "buyfw" |confirm
step
label "gatherfw"
map Frostfire Ridge
path follow loose; loop on; ants curved
path	31.1,53.3	26.1,53.7	24.2,49.0
path	23.2,45.2	20.7,39.5	22.2,33.9
path	21.8,29.7	20.9,25.4	23.1,23.6
path	25.1,24.6	27.2,22.3	29.7,21.4
path	31.2,22.0	32.8,21.7	35.1,19.5
path	36.9,24.3	38.1,26.8	40.8,28.9
path	41.6,30.6	42.8,29.9	42.9,31.1
path	44.4,31.1	46.2,31.7	48.9,34.4
path	51.6,36.9	53.7,35.1	54.5,30.3
path	56.5,26.1	59.1,28.4	60.0,31.9
path	61.2,34.9	63.1,40.9	63.4,45.0
path	60.9,46.9	62.2,52.4	60.3,55.3
path	57.9,57.5	53.8,55.8	50.6,54.7
path	47.7,55.6	45.9,58.9	43.1,60.8
path	40.3,62.1	37.7,58.7	36.5,56.5
path	35.5,53.3	33.6,49.2	31.1,51.2
.' Make sure you are tracking Herbs, and gather any Frostweed you see as you follow the path
..collect 5 Frostweed##109124
|next "1done"
step
label "buyfw"
#include "auctioneer"
.' Buy 5 Frostweed off the Auction House
..collect 5 Frostweed##109124
|next "1done"
step
label "1done"
.' Next you need _25 Pan-Seared Talbuk_
.' These are gathered from Raw Talbuk Meat in Nagrand
.' Click here to gather Talbuk Meat to make them yourself |next "gathermeat" |confirm
.' Click here to buy it off the Auction House |next "buymeat" |confirm
step
label "gathermeat"
.kill Talbuk Stag##17130+
.kill Talbuk Thorngrazer##17131+
..collect 125 Raw Talbuk Meat##109132 |goto Nagrand D 78,42
step
.' Build a Cooking Fire |cast Cooking Fire##818
.create 25 Pan-Seared Talbuk##160966,Cooking,25 total |n
.collect 25 Pan-Seared Talbuk##111434
|next "2done"
step
label "buymeat"
#include "auctioneer"
.' Buy 125 Raw Talbuk Meat _OR_ 25 Pan-Seared Talbuk
..collect 125 Raw Talbuk Meat##109132 |or
..collect 25 Pan-Seared Talbuk##111434 |or
|next "2done"
step
label "2done"
.' Last you need _25 Sturgeon Stew_
.' These are gathered through Fishing or can be bought off the Auction House
.' Click here to go Fishing |next "gathersf" |confirm
.' Click here to buy it off the Auction House |next "buysf" |confirm
step
label "gathersf"
.' Fish in the water here |goto Shadowmoon Valley D 34,46 |cast Fishing##131474
.collect Small Blind Lake Sturgeon##111652 |n
.use Small Blind Lake Sturgeon##111652 |tip These can only be used in stacks of 20.
.collect Blind Lake Sturgeon##111667 |n
.use Blind Lake Sturgeon##111667 |tip These can only be used in stacks of 10.
.collect Enormous Blind Lake Sturgeon##111674 |n
.use Enormous Blind Lake Sturgeon##111674 |tip These can only be used in stacks of 5.
..collect 250 Blind Lake Sturgeon Flesh##111674
|next "3done"
step
label "buysf"
#include "auctioneer"
.' Buy 250 Blind Lake Sturgeon Flesh _OR_ 25 Sturgeon Stew
..collect 250 Blind Lake Sturgeon Flesh##111674 |or
..collect 25 Sturgeon Stew##111442 |or
|next "3done"
step
label "3done"
.' Build a Cooking Fire |cast Cooking Fire##818
.create 25 Pan-Seared Talbuk##160966,Cooking,25 total |n
..collect 25 Pan-Seared Talbuk##111434
step
.' Build a Cooking Fire |cast Cooking Fire##818
.create 25 Sturgeon Stew##160979,Cooking,25 total |n
..collect 25 Sturgeon Stew##111442
step
.' Build a Cooking Fire |cast Cooking Fire##818
.create 5 Frosty Stew##160987,Cooking,25 total |n
|skill Cooking,675
|next "675menu"
step
label "675menu"
.' Now you will make _5 Feast of the Waters_ to reach level 700
.' You will need the following ingredients:
..collect 50 Sea Scorpion Segment##109142
.' Click here to fish for more _Sea Scorpion Segments_ |next "seascorpion" |confirm
..collect 50 Abyssal Gulper Eel Flesh##109143
.' Click here to fish more _Abyssal Gulper Eel Flesh_ |next "gulpereel" |confirm
..collect 50 Blind Lake Sturgeon Flesh##109140
.' Click here to fish more _Blink Lake Sturgeon Flesh_ |next "blindlake" |confirm
..collect 50 Fat Sleeper Flesh##109139
.' Click here to fish more _Fat Sleeper Flesh_ |next "fatsleeper" |confirm
..collect 50 Fire Ammonite Tentacle##109141
.' Click here to fish more _Ammonite Tentacle_ |next "fireammonite" |confirm
..collect 50 Jawless Skulker Flesh##109138
.' Click here to fish more _Jawless Skulker Flesh_ |next "jawlessskulker" |confirm
.' OR click here to buy these off the _Auction House_ |next "ahfinal" |confirm
|next "cooking700"
step
label "seascorpion"
.' Fish in the water here |goto Frostfire Ridge/0 41.5,65.4 |cast Fishing##131474
.use Sea Scorpion Bait##110292
.' Use any _Sea Scorpion Bait_ you may have while fishing
.collect Small Sea Scorpion##111658 |n
.use Small Sea Scorpion##111658 |tip These can only be used in stacks of 20.
.collect Sea Scorpion##111665 |n
.use Sea Scorpion##111665 |tip These can only be used in stacks of 10.
.collect Enormous Sea Scorpion##111672 |n
.use Enormous Sea Scorpion##111672 |tip These can only be used in stacks of 5.
..collect 50 Sea Scorpion Segments##109142
|confirm
|next "675menu"
step
label "gulpereel"
.' Fish in the water here |goto Spires of Arak 52.5,8.7 |cast Fishing##131474
.use Abyssal Gulper Eel Bait####110293
.' Use any _Abyssal Gulper Eel Bait_ you may have while fishing
.collect Small Abyssal Gulper Eel##111659 |n
.use Small Abyssal Gulper Eel##111659 |tip These can only be used in stacks of 20.
.collect Abyssal Gulper Eel##111664 |n
.use Abyssal Gulper Eel##111664 |tip These can only be used in stacks of 10.
.collect Enormous Abyssal Gulper Eel##111671 |n
.use Enormous Abyssal Gulper Eel##111671 |tip These can only be used in stacks of 5.
..collect 50 Abyssal Gulper Eel Flesh##109143
|confirm
|next "675menu"
step
label "blindlake"
.' Fish in the water here |goto Shadowmoon Valley D 34,46 |cast Fishing##131474
.use Blind Lake Sturgeon Bait##110290
.' Use any _Lake Sturgeon Bait_ you may have while fishing
.collect Small Blind Lake Sturgeon##111652 |n
.use Small Blind Lake Sturgeon##111652 |tip These can only be used in stacks of 20.
.collect Blind Lake Sturgeon##111667 |n
.use Blind Lake Sturgeon##111667 |tip These can only be used in stacks of 10.
.collect Enormous Blind Lake Sturgeon##111674 |n
.use Enormous Blind Lake Sturgeon##111674 |tip These can only be used in stacks of 5.
..collect 50 Blind Lake Sturgeon Flesh##109140
|confirm
|next "675menu"
step
label "fatsleeper"
.' Fish in the water here |goto Nagrand D 51.7,43.4 |cast Fishing##131474
.use Fat Sleeper Bait##110289
.' Use any _Fat Sleeper Bait_ you may have while fishing
.collect Small Fat Sleeper##111651 |n
.use Small Fat Sleeper##111651 |tip These can only be used in stacks of 20.
.collect Fat Sleeper##111668 |n
.use Fat Sleeper##111668 |tip These can only be used in stacks of 10.
.collect Enormous Fat Sleeper##111675 |n
.use Enormous Fat Sleeper##111675 |tip These can only be used in stacks of 5.
..collect 50 Fat Sleeper Flesh##109139
|confirm
|next "675menu"
step
label "fireammonite"
.' Fish in the lava |goto Frostfire Ridge/0 50.6,60.4 |cast Fishing##131474
.use Fire Ammonite Bait##110291
.' Use any _Fire Ammonite Bait_ you may have while fishing
.collect Small Fire Ammonite##111656 |n
.use Small Fire Ammonite##111656 |tip These can only be used in stacks of 20.
.collect Fire Ammonite##111666 |n
.use Fire Ammonite##111666 |tip These can only be used in stacks of 10.
.collect Enormous Fire Ammonite##111673 |n
.use Enormous Fire Ammonite##111673 |tip These can only be used in stacks of 5.
..collect 50 Fire Ammonite Tentacle##109141
|confirm
|next "675menu"
step
label "jawlessskulker"
.' Fish in the water here |goto Gorgrond 43.5,81.0 |cast Fishing##131474
.use Jawless Skulker Bait##110274
.' Use any _Jawless Skulker Bait_ you may have while fishing
.collect Small Jawless Skulker##111650 |n
.use Small Jawless Skulker##111650 |tip These can only be used in stacks of 20.
.collect Jawless Skulker##111669 |n
.use Jawless Skulker##111669 |tip These can only be used in stacks of 10.
.collect Enormous Jawless Skulker##111676 |n
.use Enormous Jawless Skulker##111676 |tip These can only be used in stacks of 5.
..collect 50 Jawless Skulker Flesh##109138
|confirm
|next "675menu"
step
label "ahfinal"
#include "auctioneer"
.' Buy the following cooking ingredients from the Auction House:
..collect 50 Sea Scorpion Segment##109142
..collect 50 Abyssal Gulper Eel Flesh##109143
..collect 50 Blind Lake Sturgeon Flesh##109140
..collect 50 Fat Sleeper Flesh##109139
..collect 50 Fire Ammonite Tentacle##109141
..collect 50 Jawless Skulker Flesh##109138
|next "cooking700"
.' Click here if you need to go farm if not all of these are avilable |next "675menu" |confirm
step
label "cooking700"
.' Build a Cooking Fire |cast Cooking Fire##818
.create 5 Feast of the Waters##173979,Cooking, 5 total
|skill Cooking,700
step
.' Congratulations, you have reached level 700 in Cooking!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Fishing 600-700 Leveling Guide",[[
description This guide will walk you through leveling Fishing from 600-700.
step
.' Fish anywhere in the water or lava in Frostfire Ridge |cast Fishing##131474 |goto Frostfire Ridge/0 50.6,60.2
.collect Fishing Guide to Draenor##111356 |n
.use Fishing Guide to Draenor##111356
|confirm
step
.' You can level up by fishing in Frostfire Ridge or in your Garrison, after a short questline
.' Click here to fish in Frostfire Ridge |next "frostfire" |confirm
.' Click here to fish in your Garrison |next "garrison" |confirm
step
label "frostfire"
.' Fish anywhere in the water or lava in Frostfire Ridge |cast Fishing##131474 |goto Frostfire Ridge/0 50.6,60.2
|skill Fishing,700
|next "end"
step
label "garrison"
.talk 79892
..accept 34758 |goto 38.10,72.53 |tip You must be at least level 94 to accept this quest.
step
.talk 79896
.' Find a local fisherman and inquire for help |q Looking For Help##34758/1 |goto Frostfire Ridge/0 55.7,75.2
step
.talk 79896
..turnin 34758 |goto 55.70,75.24
..accept 36141 |goto 55.70,75.24
step
.' _Follow the hill_ back up |goto Frostfire Ridge/0 55.7,74.0 < 10
.kill 1 Icespine Stinger##80782+
.' Collect Icespine Stinger |q Icespine Stingers##36141/1 |goto Frostfire Ridge/0 54.72,70.43
step
.talk 79896
..turnin 36141 |goto 55.71,75.28
..accept 36131 |goto 55.71,75.28
step
.use Icespine Stinger Bait##114628
.' Fish with the Icespine Stinger Bait |cast Fishing##131474 |goto Frostfire Ridge/0 56.0,75.1
.' Catch 5 Zangar Eels |q Proving Your Worth##36131/1 | |goto Frostfire Ridge/0 56.0,75.1
step
.talk 79896
..turnin 36131 |goto 55.71,75.26
..accept 36132 |goto 55.71,75.26
step
.talk 79892
..turnin 36132 |goto 38.16,72.42
step
.' Fish in the water behind your Garrison |cast Fishing##131474 |goto Frostwall/0 38.6,79.2
|skill Fishing,700
|next "end"
step
label "end"
.' Congratulations, you have reached level 700 in Fishing!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking & Fishing\\Cooking & Fishing 600-700 Leveling Guide",[[
description This guide will walk you through leveling Cooking and Fishing from 600-700.
step
.' To unlock a maximum Cooking skill of 700, you you will need to loot The Joy of Draenor Cooking
.' These can drop off any mob, continue killing or questing until you get it
.collect The Joy of Draenor Cooking##111387 |n
.use The Joy of Draenor Cooking##111387
.learn Grilled Saberfish##161002
step
.' Fish anywhere in the water or lava in Frostfire Ridge |cast Fishing##131474 |goto Frostfire Ridge/0 50.6,60.2
.collect Fishing Guide to Draenor##111356 |n
.use Fishing Guide to Draenor##111356
|confirm
step
.' You can level up by fishing in Frostfire Ridge or in your Garrison, after a short questline
.' Click here to fish in Frostfire Ridge |next "frostfire" |confirm
.' Click here to fish in your Garrison |next "garrison" |confirm
step
label "frostfire"
.' Fish anywhere _in the water_ in Frostfire Ridge |cast Fishing##131474
..collect Small Crescent Saberfish##111589 |n
.use Small Crescent Saberfish##111589 |tip These must be used in stacks of 20.
..collect Crescent Saberfish##111595 |n
.use Crescent Saberfish##111595 |tip These must be used in stacks of 10.
..collect 250 Crescent Saberfish Flesh##109137
|next "cookto650"
step
label "garrison"
.talk 79892
..accept 34758 |goto 38.10,72.53 |tip You must be at least level 94 to accept this quest.
step
.' _Leave_ your Garrison |goto Frostwall/0 71.7,85.7 < 10
.' _Jump down_ here |goto 80.9,85.0 < 10
.talk 79896
.' Find a local fisherman and inquire for help |q Looking For Help##34758/1 |goto Frostfire Ridge/0 55.7,75.2
step
.talk 79896
..turnin 34758 |goto 55.70,75.24
..accept 36141 |goto 55.70,75.24
step
.' _Follow the hill_ back up |goto Frostfire Ridge/0 55.7,74.0 < 10
.kill 1 Icespine Stinger##80782+
.' Collect Icespine Stinger |q Icespine Stingers##36141/1 |goto Frostfire Ridge/0 54.72,70.43
step
.talk 79896
..turnin 36141 |goto 55.71,75.28
..accept 36131 |goto 55.71,75.28
step
.use Icespine Stinger Bait##114628
.' Fish with the Icespine Stinger Bait |cast Fishing##131474 |goto Frostfire Ridge/0 56.0,75.1
.' Catch 5 Zangar Eels |q Proving Your Worth##36131/1 | |goto Frostfire Ridge/0 56.0,75.1
step
.talk 79896
..turnin 36131 |goto 55.71,75.26
..accept 36132 |goto 55.71,75.26
step
.' Go back up the _hill_ |goto Frostfire Ridge/0 55.7,74.3 < 10
.' Follow the _snowy path_ back to your Garrison |goto 53.2,64.0 < 10
.' _Enter_ your Garrison |goto Frostwall/0 54.8,17.8 < 10
.talk 79892
..turnin 36132 |goto 38.16,72.42
step
.' Fish in the water behind your Garrison |cast Fishing##131474 |goto Frostwall/0 38.6,79.2
..collect Small Crescent Saberfish##111589 |n
.use Small Crescent Saberfish##111589 |tip These must be used in stacks of 20.
..collect Crescent Saberfish##111595 |n
.use Crescent Saberfish##111595 |tip These must be used in stacks of 10.
..collect 250 Crescent Saberfish Flesh##109137
|next "cookto650"
step
label "cookto650"
.' Build a Cooking Fire |cast Cooking Fire##818
.create 50 Grilled Saberfishg##161002,Cooking, 50 total
|skill Cooking,650
step
.' Click here to cook Calamari Crepes to 675 |next "calamaricrepes" |confirm
.' Click here to cook Frosty Stew to 675 |next "frostystew" |confirm
step
label "calamaricrepes"
.' You need _5 Nagrand Arrowblooms_
.' These can be gathered if you have Herbalism or bought off the Auction House
.' Click here to gather Arrowblooms |next "gatherna" |confirm
.' Click here to buy them off the Auction House |next "buyna" |confirm
step
label "gatherna"
map Nagrand D
path follow loose; loop; ants curved
path	87.8,65.2	87.4,63.1	86.4,61.4
path	84.7,60.5	84.3,60.1	84.4,58.1
path	83.9,57.8	83.7,56.6	83.3,53.8
path	84.0,51.9	84.6,50.1	82.5,47.7
path	81.3,46.1	80.8,43.4	80.2,38.6
path	77.6,35.9	76.1,35.0	76.5,32.1
path	76.4,30.3	75.7,29.8	74.2,29.7
path	73.5,29.7	73.0,28.5	73.2,27.0
path	74.2,25.1	74.3,22.7	73.9,21.6
path	73.2,20.8	71.6,19.0	70.8,19.3
path	69.5,21.1	69.2,22.1	66.4,23.4
path	66.4,26.1	65.7,29.5	65.0,32.5
path	64.1,35.1	64.3,35.6	65.3,36.4
path	65.2,37.2	64.0,40.0	64.3,38.9
path	63.3,41.8	62.7,42.5	60.4,43.0
path	58.9,42.7	58.7,44.5	58.1,47.0
path	56.5,48.7	54.1,49.1	51.8,46.6
path	50.8,47.0	50.8,48.7	49.5,50.2
path	47.8,49.4	46.7,48.4	45.9,49.0
path	44.3,50.0	43.0,51.4	43.6,54.0
path	44.5,54.4	46.0,55.3	47.2,54.8
path	49.2,54.2	50.8,53.7	53.0,55.0
path	53.8,58.1	53.3,60.3	53.3,63.0
path	53.3,66.5	53.3,67.5	53.8,68.2
path	55.9,69.6	56.7,69.1	57.3,67.1
path	59.8,66.3	60.8,64.1	60.7,60.8
path	60.3,56.8	59.1,53.1	59.1,50.8
path	60.2,50.3	61.1,50.3	62.0,52.2
path	62.8,51.8	63.8,49.7	63.6,47.6
path	63.4,46.2	65.8,44.4	68.5,45.3
path	68.5,46.7	71.5,48.5	72.8,49.5
path	71.3,53.7	71.0,56.5	72.4,57.6
path	75.4,57.5	77.2,58.6	78.2,63.4
path	80.4,66.2	84.1,68.1	86.3,67.5
.' Make sure you are tracking herbs, follow the path and collect all Nagrand Arrowblooms you come across
.collect 5 Nagrand Arrowbloom##109128
|next "1done"
step
label "buyna"
#include "auctioneer"
.' Buy 5 Nagrand Arrowblooms off the Auction House
.collect 5 Nagrand Arrowbloom##109128
|next "1done"
step
label "1done"
.' Next you need _23 Rylak Crepes_
.' Click here to gather them |next "gathercrepes" |confirm
.' Click here to buy them off the Auction House |next "buycrepes" |confirm
step
label "gathercrepes"
.kill 1 Toxicfang Rylak##83740+
.kill 1 Viletongue Rylak##88643+ |goto Spires of Arak/0 55.5,27.4
.' Click here for another location |goto Spires of Arak/0 63.8,23.4
.collect 115 Rylak Egg##109133
step
.' Build a Cooking Fire |cast Cooking Fire##818
.create 23 Rylak Crepes##160969,Cooking,23 total |n
.collect 23 Rylak Crepes##111437
|next "2done"
step
label "buycrepes"
#include "auctioneer"
.' Buy 125 Rylak Eggs _OR_ 25 Rylak Crepes off the Auction House
..collect 125 Rylak Egg##109133 |or
..collect 25 Rylak Crepes##111437 |or
|next "2done"
step
label "2done"
.' Last, you need _25 Fiery Calamari_
.' These are gained through Fishing or can be bought off the Auction House
.' Click here to go fishing |next "gathertent" |confirm
.' Click here to buy them off the Auction House |next "buytent" |confirm
step
label "gathertent"
.' Fish in the lava |cast Fishing##131474 |goto Frostfire Ridge/0 50.6,60.4
.collect Small Fire Ammonite##111656 |n
.use Small Fire Ammonite##111656 |tip These can only be used in stacks of 20.
.collect Fire Ammonite##111666 |n
.use Fire Ammonite##111666 |tip These can only be used in stacks of 10.
.collect Enormous Fire Ammonite##111673 |n
.use Enormous Fire Ammonite##111673 |tip These can only be used in stacks of 5.
..collect 125 Fire Ammonite Tentacle##109141
|next "3done"
step
label "buytent"
#include "auctioneer"
.' Buy 125 Fire Ammonite Tentacles _OR_ 25 Fiery Clamari
..collect 125 Fire Ammonite Tentacle##109141 |or
..collect 25 Fiery Calamari##111445 |or
|next "3done"
step
label "3done"
.' Build a Cooking Fire |cast Cooking Fire##818
.create 25 Fiery Calamari##160982,Cooking,25 total |n
..collect 25 Fiery Calamari##111445
step
.' Build a Cooking Fire |cast Cooking Fire##818
.create 25 Rylak Crepes##160969,Cooking,25 total |n
..collect 25 Rylak Crepes##111437
step
.' Build a Cooking Fire |cast Cooking Fire##818
.create 5 Calamari Crepes##160999,Cooking,5 total |n
|skill Cooking,675
|next "675menu"
step
label "frostystew"
.' First you need _5 Frostweed_
.' These can be gathered with Herbalism or bougth off the Auction House
.' Click here to gather Frostweed yourself |next "gatherfw" |confirm
.' Click here to buy them off the Auction House |next "buyfw" |confirm
step
label "gatherfw"
map Frostfire Ridge
path follow loose; loop on; ants curved
path	31.1,53.3	26.1,53.7	24.2,49.0
path	23.2,45.2	20.7,39.5	22.2,33.9
path	21.8,29.7	20.9,25.4	23.1,23.6
path	25.1,24.6	27.2,22.3	29.7,21.4
path	31.2,22.0	32.8,21.7	35.1,19.5
path	36.9,24.3	38.1,26.8	40.8,28.9
path	41.6,30.6	42.8,29.9	42.9,31.1
path	44.4,31.1	46.2,31.7	48.9,34.4
path	51.6,36.9	53.7,35.1	54.5,30.3
path	56.5,26.1	59.1,28.4	60.0,31.9
path	61.2,34.9	63.1,40.9	63.4,45.0
path	60.9,46.9	62.2,52.4	60.3,55.3
path	57.9,57.5	53.8,55.8	50.6,54.7
path	47.7,55.6	45.9,58.9	43.1,60.8
path	40.3,62.1	37.7,58.7	36.5,56.5
path	35.5,53.3	33.6,49.2	31.1,51.2
.' Make sure you are tracking Herbs, and gather any Frostweed you see as you follow the path
..collect 5 Frostweed##109124
|next "1done"
step
label "buyfw"
#include "auctioneer"
.' Buy 5 Frostweed off the Auction House
..collect 5 Frostweed##109124
|next "1done"
step
label "1done"
.' Next you need _25 Pan-Seared Talbuk_
.' These are gathered from Raw Talbuk Meat in Nagrand
.' Click here to gather them yourself |next "gathermeat" |confirm
.' Click here to buy it off the Auction House |next "buymeat" |confirm
step
label "gathermeat"
.kill Talbuk Stag##17130+
.kill Talbuk Thorngrazer##17131+
..collect 125 Raw Talbuk Meat##109132 |goto Nagrand D 78,42
step
.' Build a Cooking Fire |cast Cooking Fire##818
.create 25 Pan-Seared Talbuk##160966,Cooking,25 total |n
.collect 25 Pan-Seared Talbuk##111434
|next "2done"
step
label "buymeat"
#include "auctioneer"
.' Buy 125 Raw Talbuk Meat _OR_ 25 Pan-Seared Talbuk
..collect 125 Raw Talbuk Meat##109132 |or
..collect 25 Pan-Seared Talbuk##111434 |or
|next "2done"
step
label "2done"
.' Last you need _25 Sturgeon Stew_
.' These are gathered through Fishing or can be bought off the Auction House
.' Click here to go Fishing |next "gathersf" |confirm
.' Click here to buy it off the Auction House |next "buysf" |confirm
step
label "gathersf"
.' Fish in the water here |goto Shadowmoon Valley D 34,46 |cast Fishing##131474
.collect Small Blind Lake Sturgeon##111652 |n
.use Small Blind Lake Sturgeon##111652 |tip These can only be used in stacks of 20.
.collect Blind Lake Sturgeon##111667 |n
.use Blind Lake Sturgeon##111667 |tip These can only be used in stacks of 10.
.collect Enormous Blind Lake Sturgeon##111674 |n
.use Enormous Blind Lake Sturgeon##111674 |tip These can only be used in stacks of 5.
..collect 250 Blind Lake Sturgeon Flesh##111674
|next "3done"
step
label "buysf"
#include "auctioneer"
.' Buy 250 Blind Lake Sturgeon Flesh _OR_ 25 Sturgeon Stew
..collect 250 Blind Lake Sturgeon Flesh##111674 |or
..collect 25 Sturgeon Stew##111442 |or
|next "3done"
step
label "3done"
.' Build a Cooking Fire |cast Cooking Fire##818
.create 25 Pan-Seared Talbuk##160966,Cooking,25 total |n
..collect 25 Pan-Seared Talbuk##111434
step
.' Build a Cooking Fire |cast Cooking Fire##818
.create 25 Sturgeon Stew##160979,Cooking,25 total |n
..collect 25 Sturgeon Stew##111442
step
.' Build a Cooking Fire |cast Cooking Fire##818
.create 5 Frosty Stew##160987,Cooking,25 total |n
|skill Cooking,675
|next "675menu"
step
label "675menu"
.' Now you will make _5 Feast of the Waters_ to reach level 700
.' You will need the following ingredients:
..collect 50 Sea Scorpion Segment##109142
.' Click here to fish for more _Sea Scorpion Segments_ |next "seascorpion" |confirm
..collect 50 Abyssal Gulper Eel Flesh##109143
.' Click here to fish more _Abyssal Gulper Eel Flesh_ |next "gulpereel" |confirm
..collect 50 Blind Lake Sturgeon Flesh##109140
.' Click here to fish more _Blink Lake Sturgeon Flesh_ |next "blindlake" |confirm
..collect 50 Fat Sleeper Flesh##109139
.' Click here to fish more _Fat Sleeper Flesh_ |next "fatsleeper" |confirm
..collect 50 Fire Ammonite Tentacle##109141
.' Click here to fish more _Ammonite Tentacle_ |next "fireammonite" |confirm
..collect 50 Jawless Skulker Flesh##109138
.' Click here to fish more _Jawless Skulker Flesh_ |next "jawlessskulker" |confirm
.' OR click here to buy these off the _Auction House_ |next "ahfinal" |confirm
|next "cooking700"
step
label "seascorpion"
.' Fish in the water here |goto Frostfire Ridge/0 41.5,65.4 |cast Fishing##131474
.use Sea Scorpion Bait##110292
.' Use any _Sea Scorpion Bait_ you may have while fishing
.collect Small Sea Scorpion##111658 |n
.use Small Sea Scorpion##111658 |tip These can only be used in stacks of 20.
.collect Sea Scorpion##111665 |n
.use Sea Scorpion##111665 |tip These can only be used in stacks of 10.
.collect Enormous Sea Scorpion##111672 |n
.use Enormous Sea Scorpion##111672 |tip These can only be used in stacks of 5.
..collect 50 Sea Scorpion Segments##109142
|confirm
|next "675menu"
step
label "gulpereel"
.' Fish in the water here |goto Spires of Arak 52.5,8.7 |cast Fishing##131474
.use Abyssal Gulper Eel Bait####110293
.' Use any _Abyssal Gulper Eel Bait_ you may have while fishing
.collect Small Abyssal Gulper Eel##111659 |n
.use Small Abyssal Gulper Eel##111659 |tip These can only be used in stacks of 20.
.collect Abyssal Gulper Eel##111664 |n
.use Abyssal Gulper Eel##111664 |tip These can only be used in stacks of 10.
.collect Enormous Abyssal Gulper Eel##111671 |n
.use Enormous Abyssal Gulper Eel##111671 |tip These can only be used in stacks of 5.
..collect 50 Abyssal Gulper Eel Flesh##109143
|confirm
|next "675menu"
step
label "blindlake"
.' Fish in the water here |goto Shadowmoon Valley D 34,46 |cast Fishing##131474
.use Blind Lake Sturgeon Bait##110290
.' Use any _Lake Sturgeon Bait_ you may have while fishing
.collect Small Blind Lake Sturgeon##111652 |n
.use Small Blind Lake Sturgeon##111652 |tip These can only be used in stacks of 20.
.collect Blind Lake Sturgeon##111667 |n
.use Blind Lake Sturgeon##111667 |tip These can only be used in stacks of 10.
.collect Enormous Blind Lake Sturgeon##111674 |n
.use Enormous Blind Lake Sturgeon##111674 |tip These can only be used in stacks of 5.
..collect 50 Blind Lake Sturgeon Flesh##109140
|confirm
|next "675menu"
step
label "fatsleeper"
.' Fish in the water here |goto Nagrand D 51.7,43.4 |cast Fishing##131474
.use Fat Sleeper Bait##110289
.' Use any _Fat Sleeper Bait_ you may have while fishing
.collect Small Fat Sleeper##111651 |n
.use Small Fat Sleeper##111651 |tip These can only be used in stacks of 20.
.collect Fat Sleeper##111668 |n
.use Fat Sleeper##111668 |tip These can only be used in stacks of 10.
.collect Enormous Fat Sleeper##111675 |n
.use Enormous Fat Sleeper##111675 |tip These can only be used in stacks of 5.
..collect 50 Fat Sleeper Flesh##109139
|confirm
|next "675menu"
step
label "fireammonite"
.' Fish in the lava |goto Frostfire Ridge/0 50.6,60.4 |cast Fishing##131474
.use Fire Ammonite Bait##110291
.' Use any _Fire Ammonite Bait_ you may have while fishing
.collect Small Fire Ammonite##111656 |n
.use Small Fire Ammonite##111656 |tip These can only be used in stacks of 20.
.collect Fire Ammonite##111666 |n
.use Fire Ammonite##111666 |tip These can only be used in stacks of 10.
.collect Enormous Fire Ammonite##111673 |n
.use Enormous Fire Ammonite##111673 |tip These can only be used in stacks of 5.
..collect 50 Fire Ammonite Tentacle##109141
|confirm
|next "675menu"
step
label "jawlessskulker"
.' Fish in the water here |goto Gorgrond 43.5,81.0 |cast Fishing##131474
.use Jawless Skulker Bait##110274
.' Use any _Jawless Skulker Bait_ you may have while fishing
.collect Small Jawless Skulker##111650 |n
.use Small Jawless Skulker##111650 |tip These can only be used in stacks of 20.
.collect Jawless Skulker##111669 |n
.use Jawless Skulker##111669 |tip These can only be used in stacks of 10.
.collect Enormous Jawless Skulker##111676 |n
.use Enormous Jawless Skulker##111676 |tip These can only be used in stacks of 5.
..collect 50 Jawless Skulker Flesh##109138
|confirm
|next "675menu"
step
label "ahfinal"
#include "auctioneer"
.' Buy the following cooking ingredients from the Auction House:
..collect 50 Sea Scorpion Segment##109142
..collect 50 Abyssal Gulper Eel Flesh##109143
..collect 50 Blind Lake Sturgeon Flesh##109140
..collect 50 Fat Sleeper Flesh##109139
..collect 50 Fire Ammonite Tentacle##109141
..collect 50 Jawless Skulker Flesh##109138
|next "cooking700"
.' Click here if you need to go farm if not all of these are avilable |next "675menu" |confirm
step
label "cooking700"
.' Build a Cooking Fire |cast Cooking Fire##818
.create 5 Feast of the Waters##173979,Cooking, 5 total
|skill Cooking,700
step
label "cookingend"
.' Fish anywhere in the water or lava in Frostfire Ridge |cast Fishing##131474 |goto Frostfire Ridge/0 50.6,60.2
.' Click here to fish in your Garrison |goto Frostwall/0 38.6,79.2 |only if completedq(36132)
|skill Fishing,700
step
.' Congratulations, you have reached level 700 in Cooking and Fishing!
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\First Aid\\First Aid 600-700 Leveling Guide",[[
description This guide will walk you through leveling First Aid from 600-700.
step
.' To unlock a maximum First Aid skill of 700, you you will need to loot First Aid in Draenor
.' These can drop off any mob, continue killing or questing until you get it
..collect First Aid in Draenor##111364 |n
.use First Aid in Draenor##111364
.learn Healing Tonic##172540
step
.' You will need _200 Sea Scorpion Segments_ to reach level 700 in First Aid
.' These can be gathered if you have the Fishing skill, or purchased off the Auction House
.' Click here to go Fishing |next "fish" |confirm
.' Click here to go to the Auction House |next "buyfish" |confirm
step
label "fish"
.' Fish in the water here |goto Frostfire Ridge/0 41.5,65.4 |cast Fishing##131474
.use Sea Scorpion Bait##110292
.' Use any _Sea Scorpion Bait_ you may have while fishing
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
.' Buy _200 Sea Scorpion Segments_ from the Auction House
..collect 200 Sea Scorpion Segment##109142
|next "craft"
step
label "craft"
.create 20 Healing Tonic##172540,First Aid,700
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Archaeology\\Archaeology 600-700 Leveling Guide",[[
description This guide will walk you through leveling Archaeology from 600-700.
step
.' To unlock a maximum Archaeology skill of 700, you you will need to loot a Brittle Cartography Journal in Draenor
.' These have a chance to drop off any mob, so continue killing or questing until you get it
..collect Brittle Cartography Journal##109586 |n
.use Brittle Cartography Journal##109586
|confirm
step
'Open your world map, find dig sites in Draenor and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 6 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' Open your Archaeology profession window |cast Archaeology##78670
.' Click artifacts to open them, then solve them once you have the required amounts of each
.skill Archaeology,700
step
.' Congratulations, you have reached level 700 in Archaeology!
]])
