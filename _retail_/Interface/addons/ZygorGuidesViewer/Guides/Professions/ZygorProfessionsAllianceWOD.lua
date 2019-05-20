local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ProfessionsAWOD") then return end
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Alchemy 600-700 Leveling Guide",[[
description This guide will walk you through leveling your Alchemy skill from 600-700.
author support@zygorguides.com
completion skill,Alchemy,700
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
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Mining 600-700 Leveling Guide",[[
description This guide will walk you through leveling Mining from 600-700.
step
collect True Iron Ore##109119 |n
collect Blackrock Ore##109118 |n
map Shadowmoon Valley D
path follow loose; loop; ants curved
path	42.0,18.7	41.1,22.6	51.4,21.9
path	52.4,26.4	51.0,33.4	66.2,30.2
path	66.9,34.5	63.6,36.6	62.8,49.8
path	66.1,58.2	61.3,57.7	58.1,60.3
path	62.4,62.4	61.4,69.4	55.5,61.1
path	53.4,64.5	53.6,69.0	56.8,72.8
path	54.5,75.1	50.4,68.0	43.0,72.4
path	38.1,73.9	37.1,66.9	34.4,63.4
path	38.2,57.2	41.7,52.2	40.1,46.7
path	39.3,41.2	35.1,35.5	30.9,36.5
path	26.7,31.2	25.0,28.7	21.5,25.1
path	24.4,21.9	25.5,19.6	24.0,15.9
path	24.3,8.3	29.1,13.2	26.9,14.6
path	31.6,19.3	33.2,22.7	33.9,26.6
path	37.1,21.3	37.1,21.3	56.7,34.2
path	55.4,34.3
Make sure you are tracking minerals, and gather all _Blackrock_ and _True Iron_ ore you see as you follow this path
skill Mining,700
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Herbalism 600-700 Leveling Guide",[[
description This guide will walk you through leveling Herbalism from 600-700.
step
collect Frostweed##109124 |n
collect Starflower##109127 |n
map Shadowmoon Valley D
path follow loose; loop; ants curved
path	26.6,8.0	27.4,12.7	27.4,15.6
path	26.2,17.1	26.8,19.8	27.5,22.1
path	29.3,27.4	31.4,26.3	32.3,23.8
path	34.6,27.2	36.0,24.1	37.2,21.6
path	39.5,19.9	40.6,23.3	40.6,24.9
path	41.5,26.7	42.8,28.1	45.0,28.8
path	47.5,28.1	48.7,26.8	50.7,28.8
path	53.3,31.1	54.5,32.7	56.0,35.5
path	58.6,36.0	62.3,32.0	63.5,31.0
path	65.9,31.7	66.3,34.2	65.0,36.0
path	63.1,36.6	62.3,39.4	60.2,42.4
path	59.1,45.2	58.0,47.7	58.8,50.8
path	62.5,53.0	64.7,55.5	65.9,56.7
path	65.7,57.4	64.7,59.4	61.4,57.7
path	59.6,58.0	58.8,58.6	59.9,61.4
path	60.5,63.9	62.0,62.2	62.7,64.2
path	61.6,65.3	61.9,67.4	61.4,69.3
path	59.8,67.0	58.1,64.1	57.9,63.4
path	57.4,59.5	55.3,59.0	54.5,61.8
path	53.3,63.7	53.0,65.6	52.2,67.0
path	54.0,69.9	56.0,70.2	56.0,72.4
path	55.0,74.4	54.0,74.3	52.7,72.9
path	51.7,70.8	51.1,68.7	49.1,68.3
path	45.6,68.3	42.9,73.0	41.6,74.7
path	38.2,73.4	37.0,71.5	38.3,67.7
path	38.1,66.4	37.4,60.8	36.4,59.6
path	36.9,56.8	40.7,57.6	42.9,57.0
path	43.2,54.8	41.7,53.6	41.2,50.1
path	42.0,48.6	43.1,46.7	42.6,43.6
path	40.2,43.4	39.0,39.8	37.0,35.7
path	34.7,32.4	32.9,31.0	31.1,32.4
path	28.3,32.9	26.4,31.7	25.4,28.8
path	24.1,26.7	22.7,26.1	21.4,24.8
path	22.3,24.2	23.7,23.1	25.1,20.8
path	24.3,19.0	23.4,18.1	23.4,16.3
path	22.8,14.5	23.7,10.2
Make sure you have find herbs turned on, and gather all _Frostweed_ and _Starflower_ you see as you follow this path
skill Herbalism,700
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
Make sure you have find herbs turned on, and gather all _Talador Orchid_ you see as you follow this path
collect Talador Orchid##109129 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Fireweed Farming",[[
description This guide will provide you the best area to quickly gather Fireweed.
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
Make sure you have find herbs turned on, and gather all _Frostweed_ and _Fireweed_ you see as you follow this path
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Nagrand Arrowbloom Farming",[[
description This guide will provide you the best area to quickly gather Nagrand Arrowbloom.
step
label "nagrandarrowbloom"
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
Make sure you have find herbs turned on, and gather all _Nagrand Arrowbloom_ you see as you follow this path
collect Nagrand Arrowbloom##109128 |n
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
Make sure you have find herbs turned on, and gather all _Gorgrond Flytrap_ you see as you follow this path
collect Gorgrond Flytrap##109126 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Skinning 600-700 Leveling Guide",[[
step
map Nagrand D
path follow loose; loop; ants curved
path	80.5,48.7	80.4,50.1	79.7,53.1
path	78.1,54.2	76.5,53.8	75.5,52.3
path	74.9,51.1	73.3,49.8	72.4,50.2
path	71.3,52.5	70.6,54.0	69.2,54.6
path	68.1,56.3	68.3,59.0	69.2,61.4
path	70.8,61.2	70.7,59.9	70.9,56.7
path	71.9,57.8	73.1,56.4	73.9,56.8
path	74.5,58.1	75.4,58.1	76.0,57.4
path	78.2,60.3	77.5,62.3	77.8,64.3
path	78.6,68.5	80.6,67.6	82.0,67.3
path	83.6,68.1	84.9,68.0	86.2,65.7
path	86.8,64.5	86.5,62.2	85.2,61.3
path	84.5,60.3	83.4,59.9	82.6,59.8
path	82.5,59.1	82.7,57.6	83.5,56.4
path	82.2,53.9	81.8,50.5	81.2,48.8
Kill and skin beasts from around the outlined area until 700 |goto Nagrand D 81.1,62.6 |tip Breezestrider Colts and Tenderhoof Meadowstompers cannot be skinned
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Fishing 600-700 Leveling Guide",[[
#include "Fishing_600-700"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Archaeology\\Archaeology 600-700 Leveling Guide",[[
#include "Archaeology_600-700"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Cooking 600-700 Leveling Guide",[[
#include "Cooking_600-700"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\First Aid\\First Aid 600-700 Leveling Guide",[[
description This guide will walk you through leveling First Aid from 600-700.
step
To unlock a maximum First Aid skill of 700, you you will need to loot First Aid in Draenor
These can drop off any mob, continue killing or questing until you get it
collect First Aid in Draenor##111364 |n
use First Aid in Draenor##111364
learn Healing Tonic##172540
step
#include "auctioneer"
buy 200 Sea Scorpion Segment##109142
#include go_farm,skill="Fishing",req="1",goto="fish"
step
label "fish"
Fish in the water here |goto Frostfire Ridge/0 41.5,65.4 |cast Fishing##131474
use Sea Scorpion Bait##110292
Use any _Sea Scorpion Bait_ you may have while fishing
collect Small Sea Scorpion##111658 |n
use Small Sea Scorpion##111658 |tip These can only be used in stacks of 20.
collect Sea Scorpion##111665 |n
use Sea Scorpion##111665 |tip These can only be used in stacks of 10.
collect Enormous Sea Scorpion##111672 |n
use Enormous Sea Scorpion##111672 |tip These can only be used in stacks of 5.
collect 200 Sea Scorpion Segments##109142
|next "craft"
step
label "craft"
create 20 Healing Tonic##172540,First Aid,700
]])
ZygorGuidesViewer:RegisterInclude("Profession Guides\\Alchemy\\A_Alchemy_Garrison",[[
step
use Mysterious Flask##113103 |tip This item was dropped by Karnoth while doing the quest "Shadows Awaken".
accept The Mysterious Flask##35342
step
talk Aenir##82466
turnin The Mysterious Flask##35342 |goto Lunarfall 47.64,45.51
accept The Young Alchemist##35343 |goto 47.61,45.46
step
talk Abatha##82497
turnin The Young Alchemist##35343 |goto 55.89,41.03
accept The Missing Father##35344 |goto 55.93,41.06
step
talk Telos##82496
turnin The Missing Father##35344 |goto 54.02,45.74
accept Shocking Assistance##35345 |goto 54.02,45.74
step
kill 1 Shockscale Eel##80653+
Collect 100 _Shockscales_ from Shockscale Eels  |q The King's Command##29547/1 |goto 53.99,45.72
step
talk Abatha##82497
turnin Shocking Assistance##35345 |goto 55.88,41.03
step
Use your Garrison Hearthstone |use Garrison Hearthstone##110560
Hearth back to your Garrison |goto Lunarfall 42.6,52.8 < 200
step
talk Baros Alexston##77209
accept Building for Professions##36100 |goto 41.23,49.30
step
Use _A Treatise on the Alchemy of Draenor_ and _Garrison Blueprint: Alchemy Lab, Level 1_ in your inventory |learn Secrets of Draenor Alchemy##175880
step
click Architect Table##
Use the Architect Table |q Building for Professions##36100/1 |goto 41.09,48.90
While using the table, _click the Small tab_ and _drag the Alchemy Lab_ to highlighted small empty plot
step
talk Baros Alexston##77209
turnin Building for Professions##36100 |goto 41.24,49.29
step
click Finalize Garrison Plot##3365
Finalize your garrison plot |goto Lunarfall 49.4,58.2
|confirm
step
talk Mary Kearie##77363
accept Your First Alchemy Work Order##36641 |goto 50.78,57.93
step
talk Peter Kearie##77791
Speak to Peter Kearie and start your first Alchemy work order |q Your First Alchemy Work Order##36641/1 |goto 50.44,58.15
]])
ZygorGuidesViewer:RegisterInclude("Profession Guides\\Blacksmithing\\A_Blacksmithing_Garrison",[[
step
use Haephest's Satchel##115343 |tip This item was dropped by Karnoth while doing the quest "Shadows Awaken".
accept The Strength of Iron##36309
step
_Follow_ the road |goto Shadowmoon Valley D 47.4,41.7 <20
talk Haephest##80827
turnin The Strength of Iron##36309 |goto 45.22,38.88
accept Father and Son##36311 |goto 45.22,38.88
step
_Follow_ the road |goto Shadowmoon Valley D 47.4,41.7 <20
talk Duna##85083
Talk to Duna  |q Father and Son##36311/1 |goto 51.09,36.93
step
_Follow_ the road |goto Shadowmoon Valley D 47.4,41.7 <20
talk Haephest##80827
turnin Father and Son##36311 |goto 45.22,38.87
step
Use your Garrison Hearthstone |use Garrison Hearthstone##110560
Hearth back to your Garrison |goto Lunarfall 42.6,52.8 < 200
step
talk Baros Alexston##77209
accept Building for Professions##36100 |goto 41.23,49.30
step
Use _Draenor Blacksmithing_ and _Garrison Blueprint: The Forge, Level 1_ in your inventory |learn Smoldering Helm##171691
step
click Architect Table##
Use the Architect Table |q Building for Professions##36100/1 |goto 41.09,48.90
While using the table, _click the Small tab_ and _drag the Forge_ to highlighted small empty plot
step
talk Baros Alexston##77209
turnin Building for Professions##36100 |goto 41.24,49.29
]])
ZygorGuidesViewer:RegisterInclude("Profession Guides\\Inscription\\A_Inscription_Garrison",[[
step
use Mysterious Satchel##114984 |tip This item was dropped by Karnoth while doing the quest "Shadows Awaken".
accept A Mysterious Satchel##36239
step
talk Sha'la##84724
turnin A Mysterious Satchel##36239 |goto Shadowmoon Valley D 57.9,21.7
accept Slow and Steady##36240 |goto 57.86,21.59
step
kill 1 Moonglow Sporebat##82323+
collect Toxic Umbrafen Herbs##114986 |q Slow and Steady##36240/1
Collect 6 Toxic Umbrafen Herbs |q Slow and Steady##36240/1 |goto 55.78,20.45
step
talk Sha'la##84724
turnin Slow and Steady##36240 |goto 57.90,21.63
accept The Power of Preservation##36241 |goto 57.88,21.61
step
talk Ardule D'na##84728
turnin The Power of Preservation##36241 |goto 58.31,20.84
step
Use your Garrison Hearthstone |use Garrison Hearthstone##110560
Hearth back to your Garrison |goto Lunarfall 42.6,52.8 < 100
step
talk Baros Alexston##77209
accept Building for Professions##36100 |goto 41.23,49.30
step
Use _A Treatise on the Inscription of Draenor_ and _Garrison Blueprint: Scribe's Quarters, Level 1_ in your inventory |q Building for Professions##36100/1
click Architect Table##
Use the Architect Table |q Building for Professions##36100/1 |goto 41.09,48.90
While using the table, _click the Small tab_ and _drag the Forge_ to highlighted small empty plot
step
talk Baros Alexston##77209
turnin Building for Professions##36100 |goto 41.24,49.29
]])
ZygorGuidesViewer:RegisterInclude("Profession Guides\\Jewelcrafting\\A_Jewelcrafting_Garrison",[[
step
use Drained Crystal Fragment##115507 |tip This item was dropped by Karnoth while doing the quest "Shadows Awaken".
accept A Power Lost##36408
step
talk Artificer Baleera##84830
turnin A Power Lost##36408 |goto Shadowmoon Valley D 47.0,38.6
accept Restoration##36409 |goto 47.0,38.6
step
kill 1 Morakh Chillwhisper##85394+
collect Empowered Crystal##115516 |q Restoration##36409/1
Retrieve the Empowered Crystal |q Restoration##36409/1 |goto 50.44,20.09
step
talk Artificer Baleera##84830
turnin Restoration##36409 |goto 46.96,38.63
step
Use your Garrison Hearthstone |use Garrison Hearthstone##110560
Hearth back to your Garrison |goto Lunarfall 42.6,52.8 < 100
step
talk Baros Alexston##77209
accept Building for Professions##36100 |goto 41.23,49.30
step
Use _Draenor Jewelcrafting_ and _Garrison Blueprint: Gem Boutique, Level 1_ in your inventory |learn Whispering Blackrock Band##170712
step
click Architect Table##
Use the Architect Table |q Building for Professions##36100/1 |goto 41.09,48.90
While using the table, _click the Small tab_ and _drag the Gem Boutique_ to highlighted small empty plot
step
talk Baros Alexston##77209
turnin Building for Professions##36100 |goto 41.24,49.29
]])
ZygorGuidesViewer:RegisterInclude("Profession Guides\\Leatherworking\\A_Leatherworking_Garrison",[[
step
use Dirty Note##114877 |tip This item was dropped by Karnoth while doing the quest "Shadows Awaken".
accept A Call for Huntsman##36176
step
talk Fanara##84385
turnin A Call for Huntsman##36176 |goto Shadowmoon Valley D 44.23,40.94
accept Friendly Competition##36177 |goto 44.23,40.94
step
kill 1 Shadowmoon Stalker##82308+
collect 12 Shadowmooon Hides##114900+ |q Friendly Competition##36177/1 |goto 41.62,44.76
Gather 12 Shadowmoon Hides from wolves in this area  |q Friendly Competition##36177/1
step
kill 1 Silverwing Kaliri##82175+
collect 6 Silverwing Talon##114901+ |q Friendly Competition##36177/2
Gather 6 Silverwing Talons from Kaliri in the area |q Friendly Competition##36177/2 |tip They fly around this area overhead.
step
talk Fanara##84385
turnin Friendly Competition##36177 |goto 44.23,40.94
accept Fair Trade##36185 |goto 44.23,40.94
step
talk Garaal##84492
turnin Fair Trade##36185 |goto 44.98,39.18
step
Use your Garrison Hearthstone |use Garrison Hearthstone##110560
Hearth back to your Garrison |goto Lunarfall 42.6,52.8 < 100
step
talk Baros Alexston##77209
accept Building for Professions##36100 |goto 41.23,49.30
step
Use _Draenor Leatherworking_ and _Garrison Blueprint: The Tannery, Level 1_ in your inventory |learn Burnished Leather##171713
step
click Architect Table##
Use the Architect Table |q Building for Professions##36100/1 |goto 41.09,48.90
While using the table, _click the Small tab_ and _drag the Tannery_ to highlighted small empty plot
step
talk Baros Alexston##77209
turnin Building for Professions##36100 |goto 41.24,49.29
]])
ZygorGuidesViewer:RegisterInclude("Profession Guides\\Tailoring\\A_Tailoring_Garrison",[[
step
use Cryptic Tome of Tailoring##114972 |tip This item was dropped by Karnoth while doing the quest "Shadows Awaken".
accept The Cryptic Tome of Tailoring##36236
step
Use your Garrison Hearthstone |use Garrison Hearthstone##110560
Hearth back to your Garrison |goto Lunarfall 42.6,52.8 < 100
step
talk Aerun##84776
turnin The Cryptic Tome of Tailoring##36236
accept Ameeka, Master Tailor##36262
step
talk Dungar Longdrink##81103
fpath _Player Name_ Outpost |goto Lunarfall 48.1,49.7
Fly to Embaari Village
step
talk Ameeka##84523
turnin Ameeka, Master Tailor##36262 |goto Shadowmoon Valley D 58.26,26.58
accept The Clothes on Their Backs##36266 |goto 58.26,26.56
step
kill 1 Shadowmoon Void Priestess##82196+
collect 10 Ceremonial Shadowmoon Robes##115013 |q The Clothes on Their Backs##36266/1
Collect Ceremonial Shadowmoon Robes from Shadowmoon Void Priestesses |q The Clothes on Their Backs##36266/1 |goto 45.09,58.36
step
talk Gotuun##76839
fpath _Twilight Glade_ |goto Shadowmoon Valley D 40.7,55.3
Fly to Elodor
step
talk Ameeka##84523
turnin The Clothes on Their Backs##36266 |goto 58.27,26.56
accept Hexcloth##36269 |goto 58.27,26.56
step
Use the Flytrap Ichor to create a Hexweave Swatch |q Hexcloth##36269/1 |goto 58.28,26.61
talk Ameeka##84523
turnin Hexcloth##36269 |goto 58.26,26.56
step
Use your Garrison Hearthstone |use Garrison Hearthstone##110560
Hearth back to your Garrison |goto Lunarfall 42.6,52.8 < 100
step
talk Baros Alexston##77209
accept Building for Professions##36100 |goto 41.23,49.30
step
Use _Draenor Tailoring_ and _Garrison Blueprint: Tailoring Emporium, Level 1_ in your inventory |learn Secrets of Draenor Tailoring##176058
step
click Architect Table##
Use the Architect Table |q Building for Professions##36100/1 |goto 41.09,48.90
While using the table, _click the Small tab_ and _drag the Tailoring Emporium_ to highlighted small empty plot
step
talk Baros Alexston##77209
turnin Building for Professions##36100 |goto 41.24,49.29
]])
ZygorGuidesViewer:RegisterInclude("Profession Guides\\Engineering\\A_Engineering_Garrison",[[
step
use Gnomish Location Transponder##115278 |tip This item was dropped by Karnoth while doing the quest "Shadows Awaken".
accept Transponder 047-B##36286
|only if skill("Engineering") >= 1
step
_Cross_ the bridge |goto Shadowmoon Valley D 52.7,39.6
fpath Fey Landing |goto 58.7,31.9
talk Goggles##84825
turnin Transponder 047-B##36286 |goto 60.75,32.69
accept Snatch 'n' Grab##36287 |goto 60.75,32.69
|only if skill("Engineering") >= 1
step
click Pilfered Parts##6478
collect 1 Pilfered Parts##115279 |n
Gather the pilfered parts |q Snatch 'n' Grab##36287/1 |goto 66.9,27.5
|only if skill("Engineering") >= 1
step
talk Goggles##84825
turnin Snatch 'n' Grab##36287 |goto 60.78,32.68
|only if skill("Engineering") >= 1
step
Use your Garrison Hearthstone |use Garrison Hearthstone##110560
Hearth back to your Garrison |goto Lunarfall 42.6,52.8 < 100
|only if skill("Engineering") >= 1
step
talk Baros Alexston##77209
accept Building for Professions##36100 |goto 41.23,49.30
|only if skill("Engineering") >= 1
step
Use _Secrets of Iron Horde Engineering_ and _Garrison Blueprint: Engineering Works, Level 1_ in your inventory |learn Secrets of Draenor Engineering##177054
|only if skill("Engineering") >= 1
step
click Architect Table##
Use the Architect Table |q Building for Professions##36100/1 |goto 41.09,48.90
While using the table, _click the Small tab_ and _drag the Engineering Works_ to highlighted small empty plot
|only if skill("Engineering") >= 1
step
talk Baros Alexston##77209
turnin Building for Professions##36100 |goto 41.24,49.29
|only if skill("Engineering") >= 1
]])
ZygorGuidesViewer:RegisterInclude("Profession Guides\\Enchanting\\A_Enchanting_Garrison",[[
step
use Enchanted Highmaul Bracer##115281 |tip This item was dropped by Karnoth while doing the quest "Shadows Awaken".
accept Enchanted Highmaul Bracer##36308
step
Use your Garrison Hearthstone |use Garrison Hearthstone##110560
Hearth back to your Garrison |goto Lunarfall 42.6,52.8 < 100
step
talk Eileese Shadowsong##83491
turnin Enchanted Highmaul Bracer##36308 |goto Lunarfall 49.34,41.03
accept The Arakkoan Enchanter##36310 |goto Lunarfall 49.34,41.03
step
talk Dungar Longdrink##81103 |goto Lunarfall 48.0,49.9
Fly to Embaari Village |goto Shadowmoon Valley D 45.7,39.0
talk Arcanist Delath##84966
turnin The Arakkoan Enchanter##36310 |goto 37.34,72.59
accept Failed Apprentice##36313 |goto 37.34,72.59
step
click Deema##84961
Locate the bubble containing Deema and open it |goto 35.70,73.79 |Deema's respawn timer is long, be patient.
turnin Failed Apprentice##36313 |goto 35.70,73.80
accept Oru'kai's Staff##36315 |goto 35.70,73.80
step
use Oru'kai's Ember Ring##115372
Use Oru'kai's Ember Ring to counter the time field |q Oru'kai's Staff##36315/1 |goto 35.85,72.79
step
talk Arcanist Delath##84966
turnin Oru'kai's Staff##36315 |goto 37.34,72.60
step
Use your Garrison Hearthstone |use Garrison Hearthstone##110560
Hearth back to your Garrison |goto Lunarfall 42.6,52.8 < 100
step
talk Baros Alexston##77209
accept Building for Professions##36100 |goto 41.23,49.30
step
Use _A Treatise on the Enchanting of Draenor_ and _Garrison Blueprint: Enchanter's Study, Level 1_ in your inventory |learn Secrets of Draenor Enchanting##177043
step
click Architect Table##
Use the Architect Table |q Building for Professions##36100/1 |goto 41.09,48.90
While using the table, _click the Small tab_ and _drag the Enchanter's Study_ to highlighted small empty plot
step
talk Baros Alexston##77209
turnin Building for Professions##36100 |goto 41.24,49.29
]])
