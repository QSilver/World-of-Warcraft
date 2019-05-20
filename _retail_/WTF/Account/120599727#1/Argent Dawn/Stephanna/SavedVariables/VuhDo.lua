
VUHDO_CONFIG = {
	["SMARTCAST_CLEANSE"] = true,
	["RANGE_SPELL"] = "",
	["SHOW_OVERHEAL"] = true,
	["OMIT_DFT_MTS"] = false,
	["BLIZZ_UI_HIDE_PLAYER"] = 2,
	["DIRECTION"] = {
		["isAlways"] = false,
		["isDistanceText"] = false,
		["enable"] = true,
		["isDeadOnly"] = false,
		["scale"] = 75,
	},
	["STANDARD_TOOLTIP"] = false,
	["SHOW_SPELL_TRACE"] = false,
	["AOE_ADVISOR"] = {
		["subInc"] = true,
		["config"] = {
			["poh"] = {
				["enable"] = true,
				["thresh"] = 20000,
			},
			["coh"] = {
				["enable"] = true,
				["thresh"] = 15000,
			},
			["lod"] = {
				["enable"] = true,
				["thresh"] = 8000,
			},
			["cb"] = {
				["enable"] = false,
				["thresh"] = 10000,
			},
			["hr"] = {
				["enable"] = false,
				["thresh"] = 10000,
			},
			["wg"] = {
				["enable"] = true,
				["thresh"] = 15000,
			},
			["tq"] = {
				["enable"] = true,
				["thresh"] = 15000,
			},
			["ch"] = {
				["enable"] = true,
				["thresh"] = 15000,
			},
		},
		["knownOnly"] = true,
		["subIncOnlyCastTime"] = true,
		["isCooldown"] = true,
		["refresh"] = 800,
		["animate"] = true,
		["isGroupWise"] = false,
	},
	["LOCK_PANELS"] = false,
	["DEBUFF_TOOLTIP"] = true,
	["RANGE_PESSIMISTIC"] = true,
	["SMARTCAST_RESURRECT"] = true,
	["BLIZZ_UI_HIDE_PET"] = 2,
	["DETECT_DEBUFFS_REMOVABLE_ONLY_ICONS"] = true,
	["HIDE_PANELS_PARTY"] = false,
	["SHOW_PANELS"] = true,
	["HIDE_EMPTY_PANELS"] = false,
	["RANGE_CHECK_DELAY"] = 260,
	["SHOW_MINIMAP"] = true,
	["DETECT_DEBUFFS_IGNORE_MOVEMENT"] = true,
	["IS_SCAN_TALENTS"] = true,
	["OMIT_OWN_GROUP"] = false,
	["MODE"] = 1,
	["BLIZZ_UI_HIDE_RAID"] = 2,
	["DETECT_DEBUFFS_REMOVABLE_ONLY"] = true,
	["IS_READY_CHECK_DISABLED"] = false,
	["CLUSTER"] = {
		["CONE_DEGREES"] = 360,
		["CHAIN_MAX_JUMP"] = 3,
		["RANGE_JUMP"] = 11,
		["BELOW_HEALTH_PERC"] = 85,
		["DISPLAY_DESTINATION"] = 2,
		["COOLDOWN_SPELL"] = "",
		["REFRESH"] = 180,
		["IS_NUMBER"] = true,
		["MODE"] = 1,
		["DISPLAY_SOURCE"] = 2,
		["TEXT"] = {
			["X_ADJUST"] = 40,
			["USE_MONO"] = false,
			["Y_ADJUST"] = 22,
			["ANCHOR"] = "BOTTOMRIGHT",
			["USE_OUTLINE"] = true,
			["SCALE"] = 85,
			["COLOR"] = {
				["TG"] = 1,
				["R"] = 0,
				["TB"] = 1,
				["G"] = 0,
				["TR"] = 1,
				["TO"] = 1,
				["B"] = 0,
				["useText"] = true,
				["useBackground"] = true,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
			["USE_SHADOW"] = false,
		},
		["THRESH_GOOD"] = 5,
		["ARE_TARGETS_RANDOM"] = true,
		["RANGE"] = 30,
		["THRESH_FAIR"] = 3,
	},
	["OMIT_MAIN_ASSIST"] = false,
	["HIDE_PANELS_PET_BATTLE"] = true,
	["RES_ANNOUNCE_TEXT"] = "Come to life, vuhdo, you b00n!",
	["LOCK_IN_FIGHT"] = true,
	["IS_CLIQUE_COMPAT_MODE"] = false,
	["VERSION"] = 4,
	["DETECT_DEBUFFS_IGNORE_DURATION"] = true,
	["RES_ANNOUNCE_MASS_TEXT"] = "Casting mass resurrection!",
	["SCAN_RANGE"] = "2",
	["PARSE_COMBAT_LOG"] = true,
	["ON_MOUSE_UP"] = false,
	["OMIT_TARGET"] = false,
	["IS_SHOW_GCD"] = false,
	["BLIZZ_UI_HIDE_FOCUS"] = 2,
	["DETECT_DEBUFFS_IGNORE_NO_HARM"] = true,
	["DETECT_DEBUFFS_IGNORE_BY_CLASS"] = true,
	["SMARTCAST_BUFF"] = false,
	["OMIT_MAIN_TANKS"] = false,
	["EMERGENCY_TRIGGER"] = 100,
	["SHOW_SHIELD_BAR"] = true,
	["CUSTOM_DEBUFF"] = {
		["point"] = "TOPRIGHT",
		["scale"] = 0.8,
		["STORED"] = {
			"122760", -- [1]
			"123812", -- [2]
			"122740", -- [3]
			"122706", -- [4]
			"122949", -- [5]
			"123474", -- [6]
			"124783", -- [7]
			"123180", -- [8]
			"122835", -- [9]
			"123081", -- [10]
			"122774", -- [11]
			"123423", -- [12]
			"121881", -- [13]
			"122055", -- [14]
			"122064", -- [15]
			"121949", -- [16]
			"122784", -- [17]
			"125390", -- [18]
			"123707", -- [19]
			"123788", -- [20]
			"124097", -- [21]
			"125824", -- [22]
			"124777", -- [23]
			"124821", -- [24]
			"124827", -- [25]
			"124849", -- [26]
			"124863", -- [27]
			"123845", -- [28]
			"123184", -- [29]
			"125283", -- [30]
			"123417", -- [31]
			"123422", -- [32]
			"123434", -- [33]
			"123436", -- [34]
			"123497", -- [35]
			"123420", -- [36]
			"125081", -- [37]
			"125490", -- [38]
			"126901", -- [39]
			"126912", -- [40]
			"118562", -- [41]
			"116596", -- [42]
			"116970", -- [43]
			"121087", -- [44]
			"120670", -- [45]
			"116606", -- [46]
			"130395", -- [47]
			"130774", -- [48]
			"116038", -- [49]
			"115861", -- [50]
			"116060", -- [51]
			"116281", -- [52]
			"125206", -- [53]
			"116008", -- [54]
			"131788", -- [55]
			"116040", -- [56]
			"116942", -- [57]
			"116784", -- [58]
			"102464", -- [59]
			"116417", -- [60]
			"116364", -- [61]
			"116374", -- [62]
			"131792", -- [63]
			"122151", -- [64]
			"117723", -- [65]
			"116260", -- [66]
			"116278", -- [67]
			"117708", -- [68]
			"118303", -- [69]
			"118048", -- [70]
			"118135", -- [71]
			"118047", -- [72]
			"118163", -- [73]
			"117878", -- [74]
			"117949", -- [75]
			"117945", -- [76]
			"132222", -- [77]
			"116835", -- [78]
			"132425", -- [79]
			"116525", -- [80]
			"116778", -- [81]
			"117485", -- [82]
			"116550", -- [83]
			"116829", -- [84]
			"119626", -- [85]
			"119488", -- [86]
			"119610", -- [87]
			"117519", -- [88]
			"111850", -- [89]
			"117436", -- [90]
			"118191", -- [91]
			"117986", -- [92]
			"117235", -- [93]
			"117283", -- [94]
			"117353", -- [95]
			"122768", -- [96]
			"122777", -- [97]
			"122752", -- [98]
			"122789", -- [99]
			"123012", -- [100]
			"123036", -- [101]
			"122858", -- [102]
			"123121", -- [103]
			"123705", -- [104]
			"119414", -- [105]
			"129147", -- [106]
			"119983", -- [107]
			"120669", -- [108]
			"75683", -- [109]
			"120629", -- [110]
			"120394", -- [111]
			"129189", -- [112]
			"119086", -- [113]
			"119775", -- [114]
			"138006", -- [115]
			"137399", -- [116]
			"138732", -- [117]
			"138349", -- [118]
			"137371", -- [119]
			"136769", -- [120]
			"136767", -- [121]
			"136708", -- [122]
			"136723", -- [123]
			"136587", -- [124]
			"136710", -- [125]
			"136670", -- [126]
			"136573", -- [127]
			"136512", -- [128]
			"136719", -- [129]
			"136654", -- [130]
			"140946", -- [131]
			"136922", -- [132]
			"137084", -- [133]
			"137641", -- [134]
			"136878", -- [135]
			"136857", -- [136]
			"137650", -- [137]
			"137359", -- [138]
			"137972", -- [139]
			"136860", -- [140]
			"134030", -- [141]
			"134920", -- [142]
			"136751", -- [143]
			"136753", -- [144]
			"137633", -- [145]
			"139822", -- [146]
			"134396", -- [147]
			"137731", -- [148]
			"136892", -- [149]
			"139909", -- [150]
			"137746", -- [151]
			"139843", -- [152]
			"139840", -- [153]
			"140179", -- [154]
			"138309", -- [155]
			"138319", -- [156]
			"140571", -- [157]
			"134372", -- [158]
			"133768", -- [159]
			"133767", -- [160]
			"136932", -- [161]
			"134122", -- [162]
			"134123", -- [163]
			"134124", -- [164]
			"133795", -- [165]
			"133597", -- [166]
			"133732", -- [167]
			"133677", -- [168]
			"133738", -- [169]
			"133737", -- [170]
			"133675", -- [171]
			"134626", -- [172]
			"140546", -- [173]
			"136180", -- [174]
			"136181", -- [175]
			"136182", -- [176]
			"136183", -- [177]
			"136184", -- [178]
			"136185", -- [179]
			"136186", -- [180]
			"136187", -- [181]
			"136050", -- [182]
			"138569", -- [183]
			"138659", -- [184]
			"138609", -- [185]
			"138691", -- [186]
			"136962", -- [187]
			"138480", -- [188]
			"134647", -- [189]
			"136193", -- [190]
			"135147", -- [191]
			"134691", -- [192]
			"135145", -- [193]
			"136520", -- [194]
			"137669", -- [195]
			"137668", -- [196]
			"137654", -- [197]
			"136577", -- [198]
			"136192", -- [199]
			"137440", -- [200]
			"137417", -- [201]
			"138306", -- [202]
			"137408", -- [203]
			"137360", -- [204]
			"137375", -- [205]
			"136722", -- [206]
			"135695", -- [207]
			"136295", -- [208]
			"135000", -- [209]
			"136543", -- [210]
			"134821", -- [211]
			"136326", -- [212]
			"137176", -- [213]
			"136853", -- [214]
			"135153", -- [215]
			"136914", -- [216]
			"135001", -- [217]
			"143828", -- [218]
			"146452", -- [219]
			"143436", -- [220]
			"143298", -- [221]
			"143962", -- [222]
			"144397", -- [223]
			"143009", -- [224]
			"143198", -- [225]
			"1776", -- [226]
			"144365", -- [227]
			"144176", -- [228]
			"147383", -- [229]
			"143424", -- [230]
			"144358", -- [231]
			"144574", -- [232]
			"147200", -- [233]
			"146763", -- [234]
			"147705", -- [235]
			"147029", -- [236]
			"144459", -- [237]
			"144467", -- [238]
			"144498", -- [239]
			"146325", -- [240]
			"17153", -- [241]
			"144215", -- [242]
			"144089", -- [243]
			"143993", -- [244]
			"144331", -- [245]
			"144328", -- [246]
			"143494", -- [247]
			"143638", -- [248]
			"143480", -- [249]
			"143882", -- [250]
			"142990", -- [251]
			"142862", -- [252]
			"142861", -- [253]
			"143919", -- [254]
			"145993", -- [255]
			"144853", -- [256]
			"142524", -- [257]
			"146217", -- [258]
			"145712", -- [259]
			"143766", -- [260]
			"143428", -- [261]
			"143445", -- [262]
			"143780", -- [263]
			"143773", -- [264]
			"143800", -- [265]
			"143767", -- [266]
			"143783", -- [267]
			"143385", -- [268]
			"145444", -- [269]
			"143856", -- [270]
			"144466", -- [271]
			"142931", -- [272]
			"34940", -- [273]
			"142315", -- [274]
			"142929", -- [275]
			"142668", -- [276]
			"143974", -- [277]
			"143735", -- [278]
			"143275", -- [279]
			"143278", -- [280]
			"143339", -- [281]
			"142948", -- [282]
			"143702", -- [283]
			"143358", -- [284]
			"142808", -- [285]
			"175915", -- [286]
			"167615", -- [287]
			"167650", -- [288]
			"176004", -- [289]
			"163241", -- [290]
			"159250", -- [291]
			"159947", -- [292]
			"162497", -- [293]
			"162186", -- [294]
			"162185", -- [295]
			"156225", -- [296]
			"158605", -- [297]
			"157801", -- [298]
			"157763", -- [299]
			"162346", -- [300]
			"162370", -- [301]
			"162892", -- [302]
			"156151", -- [303]
			"167200", -- [304]
			"158241", -- [305]
			"163372", -- [306]
			"156096", -- [307]
			"157000", -- [308]
			"154960", -- [309]
			"155061", -- [310]
			"154981", -- [311]
			"155030", -- [312]
			"155236", -- [313]
			"155078", -- [314]
			"155326", -- [315]
			"155506", -- [316]
			"157139", -- [317]
			"154932", -- [318]
			"163284", -- [319]
			"154952", -- [320]
			"155074", -- [321]
			"156766", -- [322]
			"156297", -- [323]
			"158345", -- [324]
			"155196", -- [325]
			"155192", -- [326]
			"176121", -- [327]
			"175104", -- [328]
			"164271", -- [329]
			"156214", -- [330]
			"156007", -- [331]
			"158315", -- [332]
			"157950", -- [333]
			"155921", -- [334]
			"155864", -- [335]
			"159481", -- [336]
			"164004", -- [337]
			"164005", -- [338]
			"164006", -- [339]
			"164176", -- [340]
			"164178", -- [341]
			"164191", -- [342]
			"156743", -- [343]
			"156047", -- [344]
			"155049", -- [345]
			"155277", -- [346]
			"156112", -- [347]
			"182001", -- [348]
			"181306", -- [349]
			"181321", -- [350]
			"184358", -- [351]
			"180372", -- [352]
			"182159", -- [353]
			"179978", -- [354]
			"179909", -- [355]
			"179202", -- [356]
			"181956", -- [357]
			"182323", -- [358]
			"182173", -- [359]
			"181753", -- [360]
			"179218", -- [361]
			"182635", -- [362]
			"181508", -- [363]
			"179620", -- [364]
			"186490", -- [365]
			"186546", -- [366]
			"180128", -- [367]
			"180526", -- [368]
			"181099", -- [369]
			"181597", -- [370]
			"185590", -- [371]
			"183864", -- [372]
			"183828", -- [373]
			"184931", -- [374]
			"187664", -- [375]
			"187668", -- [376]
			"184449", -- [377]
			"184450", -- [378]
			"184676", -- [379]
			"185065", -- [380]
			"185066", -- [381]
			"184124", -- [382]
			"189030", -- [383]
			"189031", -- [384]
			"189032", -- [385]
			"180164", -- [386]
			"180166", -- [387]
			"203096", -- [388]
			"203646", -- [389]
			"209469", -- [390]
			"208697", -- [391]
			"208929", -- [392]
			"215128", -- [393]
			"215307", -- [394]
			"218519", -- [395]
			"210228", -- [396]
			"204859", -- [397]
			"198006", -- [398]
			"205611", -- [399]
			"207681", -- [400]
			"203787", -- [401]
			"204044", -- [402]
			"210315", -- [403]
			"211507", -- [404]
			"211471", -- [405]
			"216516", -- [406]
			"206005", -- [407]
			"208431", -- [408]
			"206651", -- [409]
			"211802", -- [410]
			"209158", -- [411]
			"205612", -- [412]
			"210451", -- [413]
			"227959", -- [414]
			"228915", -- [415]
			"228030", -- [416]
			"228228", -- [417]
			"228250", -- [418]
			"232450", -- [419]
			"193367", -- [420]
			"228519", -- [421]
			"228918", -- [422]
			"228914", -- [423]
			"228932", -- [424]
			"227811", -- [425]
			"228253", -- [426]
			"232488", -- [427]
			"204766", -- [428]
			"211659", -- [429]
			"206607", -- [430]
			"206609", -- [431]
			"206615", -- [432]
			"212587", -- [433]
			"206480", -- [434]
			"212795", -- [435]
			"208230", -- [436]
			"216024", -- [437]
			"216040", -- [438]
			"218502", -- [439]
			"219049", -- [440]
			"218424", -- [441]
			"206585", -- [442]
			"206388", -- [443]
			"205649", -- [444]
			"206965", -- [445]
			"207143", -- [446]
			"212568", -- [447]
			"206883", -- [448]
			"206222", -- [449]
			"206221", -- [450]
			"208802", -- [451]
			"219964", -- [452]
			"219965", -- [453]
			"219966", -- [454]
			"231363", -- [455]
			"230345", -- [456]
			"233062", -- [457]
			"231998", -- [458]
			"230201", -- [459]
			"230920", -- [460]
			"230139", -- [461]
			"232754", -- [462]
			"230276", -- [463]
			"236550", -- [464]
			"237561", -- [465]
			"239264", -- [466]
			"236519", -- [467]
			"233263", -- [468]
			"236596", -- [469]
			"236515", -- [470]
			"236459", -- [471]
			"235621", -- [472]
			"236011", -- [473]
			"238442", -- [474]
			"235924", -- [475]
			"236131", -- [476]
			"236138", -- [477]
			"235117", -- [478]
			"239739", -- [479]
			"236494", -- [480]
			"242017", -- [481]
			"240728", -- [482]
			"234310", -- [483]
			"245509", -- [484]
			"243624", -- [485]
		},
		["isIcon"] = true,
		["selected"] = "",
		["TIMER_TEXT"] = {
			["X_ADJUST"] = 20,
			["USE_MONO"] = false,
			["Y_ADJUST"] = 26,
			["ANCHOR"] = "BOTTOMRIGHT",
			["USE_OUTLINE"] = false,
			["SCALE"] = 85,
			["COLOR"] = {
				["TG"] = 1,
				["R"] = 0,
				["TB"] = 1,
				["G"] = 0,
				["TR"] = 1,
				["TO"] = 1,
				["B"] = 0,
				["useText"] = true,
				["useBackground"] = true,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
			["USE_SHADOW"] = true,
		},
		["STORED_SETTINGS"] = {
			["179620"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["75683"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143298"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["212568"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["219966"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["181956"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["182173"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["181753"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["180166"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136587"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["117986"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136543"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["189032"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136185"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["206222"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["142862"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143424"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["228914"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["186546"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["155049"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["138732"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["164004"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["138659"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137375"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136751"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["117945"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116778"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["219964"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["139822"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136520"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136860"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["155326"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["118047"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["124849"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["133677"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["144089"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["245509"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["134691"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["206965"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["240728"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["242017"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["236494"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["239739"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["119983"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["235117"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["125283"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["236138"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["236131"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["122949"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["140946"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["235924"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["238442"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136853"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["121949"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["118191"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136914"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["142808"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["236459"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["230920"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["117353"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["236596"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["155236"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["159481"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["1776"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["233263"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143278"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137408"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["146325"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["185066"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["239264"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["237561"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["155921"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["147383"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["125490"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["236550"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["144397"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["230276"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["118303"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["232754"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["142315"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["139843"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["167615"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["134821"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["230139"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["236515"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["230201"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["157950"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["132425"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["155506"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["204859"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["231998"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["140571"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["130774"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137633"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["180128"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["233062"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["134122"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123812"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116260"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["132222"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["230345"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["175104"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["204766"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["209469"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["156214"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["133597"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["155192"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["208431"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["179978"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137668"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["164006"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["204044"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["206221"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["124821"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["125824"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["163372"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123036"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["163284"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["216040"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["207143"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143638"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116596"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["209158"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["234310"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["138349"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["167200"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143702"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["147029"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123707"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["164271"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["138006"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116040"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["206585"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["181597"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["124827"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123422"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["162370"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["236011"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["218502"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136512"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137440"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["206615"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["228918"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136878"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143767"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["207681"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["124863"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["216024"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["155864"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["208230"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123845"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["176004"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137669"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["212587"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["184931"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["206609"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["117723"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["206607"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["211659"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["133767"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["232488"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["131788"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["227811"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["228932"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116008"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["156225"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["145712"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136719"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136187"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116278"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["232450"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["164005"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["228250"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["17153"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["122774"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["133737"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["228228"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["185065"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["228030"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["206388"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["135000"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["205611"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["135695"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["184676"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143993"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136192"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["205612"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["118135"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["211802"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["206651"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136769"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["206005"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123417"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["216516"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["215128"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116970"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["117436"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["122706"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["117708"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["211507"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["119610"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["180164"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["203787"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["227959"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116525"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143358"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["218519"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["135145"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["156297"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["125206"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["205649"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["156112"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116942"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["117235"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["208929"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["125390"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["208697"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["203646"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["182001"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["156766"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["164178"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["210315"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["189031"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136186"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["189030"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["118163"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["158315"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["140546"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["122760"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["156096"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["144331"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143828"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["138691"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["144574"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116364"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["147200"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["122752"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["206883"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136050"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["157139"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["181306"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["122151"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["134647"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["187664"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["183828"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136181"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["140179"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143974"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["175915"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["120669"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["185590"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["139840"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["218424"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["145444"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["129189"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143275"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["181099"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["155030"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["144358"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["34940"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116550"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["186490"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["179909"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["182323"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["179218"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["182635"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["179202"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["181508"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["134396"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["122784"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["125081"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["134123"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["228519"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143783"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116374"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["118048"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136182"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["181321"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["155277"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143436"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["156743"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["164191"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["156007"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["203096"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["118562"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["210451"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["119086"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["184124"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137399"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["231363"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116606"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["228915"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["176121"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136722"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["208802"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136892"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["120394"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["158345"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["163241"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["162346"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["142931"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137359"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["187668"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["155061"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["122064"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["155078"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["154932"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143339"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["159250"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116835"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["243624"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["180526"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["154981"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["154960"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["142668"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["157000"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["184450"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["158241"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["144176"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["121087"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["215307"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["134124"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["144459"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["156151"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136723"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["157763"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["133732"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["157801"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123474"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["119488"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["158605"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["180372"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["124783"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["142524"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["198006"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["156047"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["162497"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["126912"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["121881"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["115861"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["159947"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["155074"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["206480"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["117283"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["167650"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["133738"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["183864"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136184"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["134920"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123081"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["235621"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137417"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["210228"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143480"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143735"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123436"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["124777"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["135153"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["154952"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137746"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["130395"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143198"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136326"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["122789"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143385"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136753"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136708"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["212795"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["138319"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143800"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136962"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["219049"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143445"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["122055"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["146763"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137641"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143766"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["122858"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["144853"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["146217"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["120629"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["145993"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143919"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["142861"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["164176"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123180"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["144365"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143882"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["144328"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["142948"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123705"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["134626"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["138609"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136710"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116281"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["119626"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["122740"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["184358"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["129147"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["134372"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143494"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136183"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136670"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136654"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123434"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136180"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["134030"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["162185"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["133675"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["144215"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136573"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123788"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["122835"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123012"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["119775"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143428"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["236519"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["144498"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["144467"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["182159"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["219965"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["142990"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["162892"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["122777"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["138309"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["119414"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136577"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123184"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123420"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["184449"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116784"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136295"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143773"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["124097"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143856"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136922"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143009"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["122768"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136857"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["139909"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143962"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["162186"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["131792"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["146452"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["147705"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137084"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123121"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["138480"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["120670"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136932"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["143780"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["135001"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["193367"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["126901"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123497"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137360"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137371"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["138306"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["135147"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["117949"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137650"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116060"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136193"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["133768"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["111850"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["138569"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["117485"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["117519"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["211471"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["133795"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["123423"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["117878"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["136767"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["144466"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137654"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137176"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116038"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116417"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["142929"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["155196"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137731"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["228253"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["137972"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["116829"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["102464"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
		},
		["version"] = 36,
		["isColor"] = false,
		["isNoRangeFade"] = false,
		["max_num"] = 3,
		["yAdjust"] = -34,
		["COUNTER_TEXT"] = {
			["X_ADJUST"] = -10,
			["USE_MONO"] = false,
			["Y_ADJUST"] = -15,
			["ANCHOR"] = "TOPLEFT",
			["USE_OUTLINE"] = false,
			["SCALE"] = 70,
			["COLOR"] = {
				["TG"] = 1,
				["R"] = 0,
				["TB"] = 0,
				["G"] = 0,
				["TR"] = 0,
				["TO"] = 1,
				["B"] = 0,
				["useText"] = true,
				["useBackground"] = true,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
			["USE_SHADOW"] = true,
		},
		["animate"] = true,
		["timer"] = true,
		["isName"] = false,
		["xAdjust"] = -2,
		["isStacks"] = false,
	},
	["OMIT_FOCUS"] = false,
	["SHOW_PLAYER_TAGS"] = true,
	["BLIZZ_UI_HIDE_PARTY"] = 2,
	["UPDATE_HOTS_MS"] = 250,
	["BLIZZ_UI_HIDE_TARGET"] = 2,
	["BLIZZ_UI_HIDE_RAID_MGR"] = 2,
	["HIDE_PANELS_SOLO"] = false,
	["CURRENT_PROFILE"] = "",
	["AUTO_PROFILES"] = {
	},
	["SHOW_INCOMING"] = true,
	["IS_ALWAYS_OVERWRITE_PROFILE"] = false,
	["IS_SHARE"] = true,
	["SPELL_TRACE"] = {
		["isOthers"] = false,
		["STORED_SETTINGS"] = {
			["596"] = {
				["duration"] = 2,
				["isMine"] = true,
				["isOthers"] = false,
			},
			["194509"] = {
				["duration"] = 2,
				["isMine"] = true,
				["isOthers"] = false,
			},
			["34861"] = {
				["duration"] = 2,
				["isMine"] = true,
				["isOthers"] = false,
			},
			["1064"] = {
				["duration"] = 2,
				["isMine"] = true,
				["isOthers"] = false,
			},
		},
		["version"] = 1,
		["SELECTED"] = "",
		["duration"] = 2,
		["showTrailOfLight"] = false,
		["isMine"] = true,
		["STORED"] = {
			"1064", -- [1]
			"34861", -- [2]
			"596", -- [3]
			"194509", -- [4]
		},
	},
	["IS_CLIQUE_PASSTHROUGH"] = false,
	["OMIT_SELF"] = false,
	["OMIT_PLAYER_TARGETS"] = false,
	["MAX_EMERGENCIES"] = 5,
	["LOCK_CLICKS_THROUGH"] = false,
	["HIDE_EMPTY_BUTTONS"] = false,
	["THREAT"] = {
		["AGGRO_USE_TEXT"] = false,
		["AGGRO_TEXT_LEFT"] = ">>",
		["IS_TANK_MODE"] = false,
		["AGGRO_TEXT_RIGHT"] = "<<",
		["AGGRO_REFRESH_MS"] = 300,
	},
	["SHOW_TEXT_OVERHEAL"] = true,
	["IS_USE_BUTTON_FACADE"] = false,
	["SHOW_OWN_INCOMING"] = true,
	["IS_DC_SHIELD_DISABLED"] = false,
	["RES_IS_SHOW_TEXT"] = false,
}
VUHDO_PANEL_SETUP = {
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 650,
			["x"] = 130,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "TOPLEFT",
			["height"] = 67,
			["growth"] = "TOPLEFT",
			["width"] = 90,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["groups"] = {
				1, -- [1]
				2, -- [2]
				3, -- [3]
				4, -- [4]
				5, -- [5]
				6, -- [6]
				7, -- [7]
				8, -- [8]
				40, -- [9]
			},
			["sort"] = 0,
			["ordering"] = 0,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.35,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 8,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0.46,
				["insets"] = 1,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 40,
		},
		["SCALING"] = {
			["headerHeight"] = 12,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 10,
			["borderGapY"] = 5,
			["barWidth"] = 80,
			["columnSpacing"] = 5,
			["targetSpacing"] = 3,
			["sideRightWidth"] = 6,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = false,
			["targetOrientation"] = 1,
			["sideLeftWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["manaBarHeight"] = 6,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = true,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 40,
			["isTarClassColText"] = true,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "CENTER+CENTER",
			["_spacing"] = 18,
			["yAdjust"] = 1.0e-006,
			["xAdjust"] = 1.0e-006,
			["showPetOwners"] = true,
		},
	}, -- [1]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 885,
			["x"] = 130,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "TOPLEFT",
			["height"] = 234.999969482422,
			["growth"] = "TOPLEFT",
			["width"] = 174.999984741211,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["groups"] = {
				42, -- [1]
				44, -- [2]
			},
			["sort"] = 0,
			["ordering"] = 0,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.35,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 8,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0.46,
				["insets"] = 1,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 40,
		},
		["SCALING"] = {
			["headerHeight"] = 12,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 10,
			["borderGapY"] = 5,
			["barWidth"] = 80,
			["columnSpacing"] = 5,
			["targetSpacing"] = 3,
			["sideRightWidth"] = 6,
			["ommitEmptyWhenStructured"] = false,
			["showTarget"] = false,
			["targetOrientation"] = 1,
			["sideLeftWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["manaBarHeight"] = 6,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = true,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 40,
			["isTarClassColText"] = true,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "CENTER+CENTER",
			["_spacing"] = 17.9999923706055,
			["yAdjust"] = 1.0e-006,
			["xAdjust"] = 1.0e-006,
			["showPetOwners"] = true,
		},
	}, -- [2]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 425,
			["x"] = 355,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "TOPLEFT",
			["height"] = 200,
			["growth"] = "TOPLEFT",
			["width"] = 200,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["sort"] = 0,
			["ordering"] = 0,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.35,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 8,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0.46,
				["insets"] = 1,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 40,
		},
		["SCALING"] = {
			["headerHeight"] = 12,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 10,
			["borderGapY"] = 5,
			["barWidth"] = 80,
			["columnSpacing"] = 5,
			["targetSpacing"] = 3,
			["sideRightWidth"] = 6,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = false,
			["targetOrientation"] = 1,
			["sideLeftWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["manaBarHeight"] = 6,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = true,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 40,
			["isTarClassColText"] = true,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "CENTER+CENTER",
			["yAdjust"] = 1.0e-006,
			["xAdjust"] = 1.0e-006,
			["showPetOwners"] = true,
		},
	}, -- [3]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 350,
			["x"] = 430,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "TOPLEFT",
			["height"] = 200,
			["growth"] = "TOPLEFT",
			["width"] = 200,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["sort"] = 0,
			["ordering"] = 0,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.35,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 8,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0.46,
				["insets"] = 1,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 40,
		},
		["SCALING"] = {
			["headerHeight"] = 12,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 10,
			["borderGapY"] = 5,
			["barWidth"] = 80,
			["columnSpacing"] = 5,
			["targetSpacing"] = 3,
			["sideRightWidth"] = 6,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = false,
			["targetOrientation"] = 1,
			["sideLeftWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["manaBarHeight"] = 6,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = true,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 40,
			["isTarClassColText"] = true,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "CENTER+CENTER",
			["yAdjust"] = 1.0e-006,
			["xAdjust"] = 1.0e-006,
			["showPetOwners"] = true,
		},
	}, -- [4]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 275,
			["x"] = 505,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "TOPLEFT",
			["height"] = 200,
			["growth"] = "TOPLEFT",
			["width"] = 200,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["sort"] = 0,
			["ordering"] = 0,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.35,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 8,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0.46,
				["insets"] = 1,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 40,
		},
		["SCALING"] = {
			["headerHeight"] = 12,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 10,
			["borderGapY"] = 5,
			["barWidth"] = 80,
			["columnSpacing"] = 5,
			["targetSpacing"] = 3,
			["sideRightWidth"] = 6,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = false,
			["targetOrientation"] = 1,
			["sideLeftWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["manaBarHeight"] = 6,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = true,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 40,
			["isTarClassColText"] = true,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "CENTER+CENTER",
			["yAdjust"] = 1.0e-006,
			["xAdjust"] = 1.0e-006,
			["showPetOwners"] = true,
		},
	}, -- [5]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 200,
			["x"] = 580,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "TOPLEFT",
			["height"] = 200,
			["growth"] = "TOPLEFT",
			["width"] = 200,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["sort"] = 0,
			["ordering"] = 0,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.35,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 8,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0.46,
				["insets"] = 1,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 40,
		},
		["SCALING"] = {
			["headerHeight"] = 12,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 10,
			["borderGapY"] = 5,
			["barWidth"] = 80,
			["columnSpacing"] = 5,
			["targetSpacing"] = 3,
			["sideRightWidth"] = 6,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = false,
			["targetOrientation"] = 1,
			["sideLeftWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["manaBarHeight"] = 6,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = true,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 40,
			["isTarClassColText"] = true,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "CENTER+CENTER",
			["yAdjust"] = 1.0e-006,
			["xAdjust"] = 1.0e-006,
			["showPetOwners"] = true,
		},
	}, -- [6]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 125,
			["x"] = 655,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "TOPLEFT",
			["height"] = 200,
			["growth"] = "TOPLEFT",
			["width"] = 200,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["sort"] = 0,
			["ordering"] = 0,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.35,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 8,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0.46,
				["insets"] = 1,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 40,
		},
		["SCALING"] = {
			["headerHeight"] = 12,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 10,
			["borderGapY"] = 5,
			["barWidth"] = 80,
			["columnSpacing"] = 5,
			["targetSpacing"] = 3,
			["sideRightWidth"] = 6,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = false,
			["targetOrientation"] = 1,
			["sideLeftWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["manaBarHeight"] = 6,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = true,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 40,
			["isTarClassColText"] = true,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "CENTER+CENTER",
			["yAdjust"] = 1.0e-006,
			["xAdjust"] = 1.0e-006,
			["showPetOwners"] = true,
		},
	}, -- [7]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 50,
			["x"] = 730,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "TOPLEFT",
			["height"] = 200,
			["growth"] = "TOPLEFT",
			["width"] = 200,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["sort"] = 0,
			["ordering"] = 0,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.35,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 8,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0.46,
				["insets"] = 1,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 40,
		},
		["SCALING"] = {
			["headerHeight"] = 12,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 10,
			["borderGapY"] = 5,
			["barWidth"] = 80,
			["columnSpacing"] = 5,
			["targetSpacing"] = 3,
			["sideRightWidth"] = 6,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = false,
			["targetOrientation"] = 1,
			["sideLeftWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["manaBarHeight"] = 6,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = true,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 40,
			["isTarClassColText"] = true,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "CENTER+CENTER",
			["yAdjust"] = 1.0e-006,
			["xAdjust"] = 1.0e-006,
			["showPetOwners"] = true,
		},
	}, -- [8]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = -25,
			["x"] = 805,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "TOPLEFT",
			["height"] = 200,
			["growth"] = "TOPLEFT",
			["width"] = 200,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["sort"] = 0,
			["ordering"] = 0,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.35,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 8,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0.46,
				["insets"] = 1,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 40,
		},
		["SCALING"] = {
			["headerHeight"] = 12,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 10,
			["borderGapY"] = 5,
			["barWidth"] = 80,
			["columnSpacing"] = 5,
			["targetSpacing"] = 3,
			["sideRightWidth"] = 6,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = false,
			["targetOrientation"] = 1,
			["sideLeftWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["manaBarHeight"] = 6,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = true,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 40,
			["isTarClassColText"] = true,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "CENTER+CENTER",
			["yAdjust"] = 1.0e-006,
			["xAdjust"] = 1.0e-006,
			["showPetOwners"] = true,
		},
	}, -- [9]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = -100,
			["x"] = 880,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "TOPLEFT",
			["height"] = 200,
			["growth"] = "TOPLEFT",
			["width"] = 200,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["sort"] = 0,
			["ordering"] = 0,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.35,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 8,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0.46,
				["insets"] = 1,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 40,
		},
		["SCALING"] = {
			["headerHeight"] = 12,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 10,
			["borderGapY"] = 5,
			["barWidth"] = 80,
			["columnSpacing"] = 5,
			["targetSpacing"] = 3,
			["sideRightWidth"] = 6,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = false,
			["targetOrientation"] = 1,
			["sideLeftWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["manaBarHeight"] = 6,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = true,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 40,
			["isTarClassColText"] = true,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "CENTER+CENTER",
			["yAdjust"] = 1.0e-006,
			["xAdjust"] = 1.0e-006,
			["showPetOwners"] = true,
		},
	}, -- [10]
	["RAID_ICON_FILTER"] = {
		true, -- [1]
		true, -- [2]
		true, -- [3]
		true, -- [4]
		true, -- [5]
		true, -- [6]
		true, -- [7]
		true, -- [8]
	},
	["PANEL_COLOR"] = {
		["TEXT"] = {
			["TR"] = 1,
			["TO"] = 1,
			["TB"] = 0,
			["useText"] = true,
			["TG"] = 0.82,
		},
		["HEALTH_TEXT"] = {
			["TR"] = 1,
			["TO"] = 1,
			["TB"] = 0,
			["useText"] = false,
			["TG"] = 0,
		},
		["BARS"] = {
			["useOpacity"] = true,
			["R"] = 0.7,
			["B"] = 0.7,
			["G"] = 0.7,
			["O"] = 1,
			["useBackground"] = true,
		},
		["classColorsName"] = false,
	},
	["HOTS"] = {
		["iconRadioValue"] = 1,
		["SLOTS"] = {
			[10] = "BOUQUET_AOE Advice",
		},
		["BARS"] = {
			["radioValue"] = 1,
			["width"] = 25,
		},
		["TIMER_TEXT"] = {
			["X_ADJUST"] = 25,
			["SCALE"] = 60,
			["USE_MONO"] = false,
			["Y_ADJUST"] = 0,
			["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
			["USE_SHADOW"] = false,
			["ANCHOR"] = "BOTTOMRIGHT",
			["USE_OUTLINE"] = true,
		},
		["radioValue"] = 13,
		["SLOTCFG"] = {
			["1"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = false,
			},
			["3"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = false,
			},
			["2"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = false,
			},
			["5"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = false,
			},
			["4"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = false,
			},
			["7"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = false,
			},
			["6"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = false,
			},
			["9"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = false,
			},
			["8"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = false,
			},
			["10"] = {
				["scale"] = 1.5,
				["mine"] = true,
				["others"] = false,
			},
		},
		["stacksRadioValue"] = 2,
		["COUNTER_TEXT"] = {
			["X_ADJUST"] = -25,
			["SCALE"] = 66,
			["USE_MONO"] = false,
			["Y_ADJUST"] = 0,
			["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
			["USE_SHADOW"] = false,
			["ANCHOR"] = "TOP",
			["USE_OUTLINE"] = true,
		},
	},
	["BAR_COLORS"] = {
		["OVERHEAL_TEXT"] = {
			["useOpacity"] = true,
			["TO"] = 1,
			["TB"] = 0.8,
			["TG"] = 1,
			["useText"] = true,
			["TR"] = 0.8,
		},
		["HOT7"] = {
			["useBackground"] = true,
			["R"] = 1,
			["B"] = 1,
			["O"] = 0.75,
			["G"] = 1,
		},
		["TARGET"] = {
			["TG"] = 1,
			["R"] = 0,
			["TB"] = 1,
			["G"] = 1,
			["modeText"] = 2,
			["TR"] = 1,
			["B"] = 0,
			["TO"] = 1,
			["useOpacity"] = true,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["modeBack"] = 1,
		},
		["HOT1"] = {
			["TG"] = 0.6,
			["countdownMode"] = 1,
			["R"] = 1,
			["TB"] = 0.6,
			["G"] = 0.3,
			["B"] = 0.3,
			["useOpacity"] = false,
			["O"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["useBackground"] = true,
			["useText"] = true,
			["isFullDuration"] = false,
			["TR"] = 1,
		},
		["useDebuffIconBossOnly"] = true,
		["DIRECTION"] = {
			["useBackground"] = true,
			["R"] = 1,
			["B"] = 0.4,
			["O"] = 1,
			["G"] = 0.4,
		},
		["EMERGENCY"] = {
			["TG"] = 0.82,
			["R"] = 1,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["BAR_FRAMES"] = {
			["useOpacity"] = true,
			["R"] = 0,
			["B"] = 0,
			["G"] = 0,
			["O"] = 0.7,
			["useBackground"] = true,
		},
		["RAID_ICONS"] = {
			["1"] = {
				["TG"] = 1,
				["R"] = 1,
				["TB"] = 0.607,
				["G"] = 0.976,
				["TR"] = 0.98,
				["TO"] = 1,
				["B"] = 0.305,
				["useText"] = true,
				["useBackground"] = true,
				["O"] = 1,
				["useOpacity"] = false,
			},
			["filterOnly"] = false,
			["3"] = {
				["TG"] = 0.674,
				["R"] = 0.788,
				["TB"] = 0.921,
				["G"] = 0.29,
				["TR"] = 1,
				["TO"] = 1,
				["B"] = 0.8,
				["useText"] = true,
				["useBackground"] = true,
				["O"] = 1,
				["useOpacity"] = false,
			},
			["2"] = {
				["TG"] = 0.827,
				["R"] = 1,
				["TB"] = 0.419,
				["G"] = 0.513,
				["TR"] = 1,
				["TO"] = 1,
				["B"] = 0.039,
				["useText"] = true,
				["useBackground"] = true,
				["O"] = 1,
				["useOpacity"] = false,
			},
			["enable"] = false,
			["4"] = {
				["TG"] = 1,
				["R"] = 0,
				["TB"] = 0.698,
				["G"] = 0.8,
				["TR"] = 0.698,
				["TO"] = 1,
				["B"] = 0.015,
				["useText"] = true,
				["useBackground"] = true,
				["O"] = 1,
				["useOpacity"] = false,
			},
			["7"] = {
				["TG"] = 0.627,
				["R"] = 0.8,
				["TB"] = 0.619,
				["G"] = 0.184,
				["TR"] = 1,
				["TO"] = 1,
				["B"] = 0.129,
				["useText"] = true,
				["useBackground"] = true,
				["O"] = 1,
				["useOpacity"] = false,
			},
			["6"] = {
				["TG"] = 0.831,
				["R"] = 0.121,
				["TB"] = 1,
				["G"] = 0.69,
				["TR"] = 0.662,
				["TO"] = 1,
				["B"] = 0.972,
				["useText"] = true,
				["useBackground"] = true,
				["O"] = 1,
				["useOpacity"] = false,
			},
			["8"] = {
				["TG"] = 0.231,
				["R"] = 0.847,
				["TB"] = 0.231,
				["G"] = 0.866,
				["TR"] = 0.231,
				["TO"] = 1,
				["B"] = 0.89,
				["useText"] = true,
				["useBackground"] = true,
				["O"] = 1,
				["useOpacity"] = false,
			},
			["5"] = {
				["TG"] = 0.87,
				["R"] = 0.466,
				["TB"] = 1,
				["G"] = 0.717,
				["TR"] = 0.725,
				["TO"] = 1,
				["B"] = 0.8,
				["useText"] = true,
				["useBackground"] = true,
				["O"] = 1,
				["useOpacity"] = false,
			},
		},
		["IRRELEVANT"] = {
			["TG"] = 0.82,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0.4,
			["useBackground"] = false,
			["useText"] = false,
			["O"] = 0.2,
			["useOpacity"] = true,
		},
		["HOT9"] = {
			["TG"] = 1,
			["countdownMode"] = 1,
			["R"] = 0.3,
			["TB"] = 1,
			["G"] = 1,
			["B"] = 1,
			["useOpacity"] = false,
			["O"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["useBackground"] = true,
			["useText"] = true,
			["isFullDuration"] = false,
			["TR"] = 0.6,
		},
		["TAPPED"] = {
			["TG"] = 0.4,
			["R"] = 0.4,
			["TB"] = 0.4,
			["G"] = 0.4,
			["TR"] = 0.4,
			["TO"] = 1,
			["B"] = 0.4,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["HOT_CHARGE_3"] = {
			["TG"] = 1,
			["R"] = 0.3,
			["TB"] = 0.6,
			["G"] = 1,
			["TR"] = 0.6,
			["TO"] = 1,
			["B"] = 0.3,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = false,
		},
		["CLUSTER_GOOD"] = {
			["TG"] = 1,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 0.8,
			["TR"] = 0,
			["TO"] = 1,
			["B"] = 0,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = false,
		},
		["DEBUFF3"] = {
			["TG"] = 0.957,
			["R"] = 0.4,
			["TB"] = 1,
			["G"] = 0.4,
			["TR"] = 0.329,
			["TO"] = 1,
			["B"] = 0.8,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["INCOMING"] = {
			["TG"] = 0.82,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0,
			["useBackground"] = false,
			["useText"] = false,
			["O"] = 0.33,
			["useOpacity"] = true,
		},
		["HOT6"] = {
			["useBackground"] = true,
			["R"] = 1,
			["B"] = 1,
			["O"] = 0.75,
			["G"] = 1,
		},
		["TARGET_ENEMY"] = {
			["TG"] = 0,
			["R"] = 1,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["DEBUFF4"] = {
			["TG"] = 0,
			["R"] = 0.7,
			["TB"] = 1,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0.7,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["DEBUFF6"] = {
			["TG"] = 0.5,
			["R"] = 0.6,
			["TB"] = 0,
			["G"] = 0.3,
			["TR"] = 0.8,
			["TO"] = 1,
			["B"] = 0,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["TARGET_NEUTRAL"] = {
			["TG"] = 1,
			["R"] = 1,
			["TB"] = 0,
			["G"] = 1,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["TARGET_FRIEND"] = {
			["TG"] = 1,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 1,
			["TR"] = 0,
			["TO"] = 1,
			["B"] = 0,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["NO_EMERGENCY"] = {
			["TG"] = 0.82,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0.4,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["HOTS"] = {
			["useColorText"] = true,
			["useColorBack"] = true,
			["isPumpDivineAegis"] = false,
			["isFadeOut"] = false,
			["isFlashWhenLow"] = false,
			["showShieldAbsorb"] = true,
			["WARNING"] = {
				["enabled"] = false,
				["lowSecs"] = 3,
				["R"] = 0.5,
				["TB"] = 0.6,
				["G"] = 0.2,
				["TR"] = 1,
				["TO"] = 1,
				["B"] = 0.2,
				["useBackground"] = true,
				["useText"] = true,
				["O"] = 1,
				["TG"] = 0.6,
			},
		},
		["SHIELD"] = {
			["TG"] = 0.52,
			["R"] = 0.35,
			["TB"] = 1,
			["G"] = 0.52,
			["TR"] = 0.35,
			["TO"] = 1,
			["B"] = 1,
			["useBackground"] = true,
			["useText"] = false,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["HOT5"] = {
			["TG"] = 0.6,
			["countdownMode"] = 1,
			["R"] = 1,
			["TB"] = 1,
			["G"] = 0.3,
			["B"] = 1,
			["useOpacity"] = false,
			["O"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["useBackground"] = true,
			["useText"] = true,
			["isFullDuration"] = false,
			["TR"] = 1,
		},
		["GCD_BAR"] = {
			["useBackground"] = true,
			["R"] = 0.4,
			["B"] = 0.4,
			["O"] = 0.5,
			["G"] = 0.4,
		},
		["HOT2"] = {
			["TG"] = 1,
			["countdownMode"] = 1,
			["R"] = 1,
			["TB"] = 0.6,
			["G"] = 1,
			["B"] = 0.3,
			["useOpacity"] = false,
			["O"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["useBackground"] = true,
			["useText"] = true,
			["isFullDuration"] = false,
			["TR"] = 1,
		},
		["DEAD"] = {
			["TG"] = 0.5,
			["R"] = 0.3,
			["TB"] = 0.5,
			["G"] = 0.3,
			["TR"] = 0.5,
			["TO"] = 1,
			["B"] = 0.3,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 0.5,
			["useOpacity"] = true,
		},
		["CHARMED"] = {
			["TG"] = 0.31,
			["R"] = 0.51,
			["TB"] = 0.31,
			["G"] = 0.082,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0.263,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["OFFLINE"] = {
			["TG"] = 0.576,
			["R"] = 0.298,
			["TB"] = 0.576,
			["G"] = 0.298,
			["TR"] = 0.576,
			["TO"] = 0.58,
			["B"] = 0.298,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 0.21,
			["useOpacity"] = true,
		},
		["OUTRANGED"] = {
			["TG"] = 0,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 0,
			["TO"] = 0.5,
			["B"] = 0,
			["useBackground"] = false,
			["useText"] = false,
			["O"] = 0.25,
			["useOpacity"] = true,
		},
		["HOT3"] = {
			["TG"] = 1,
			["countdownMode"] = 1,
			["R"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["B"] = 1,
			["useOpacity"] = false,
			["O"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["useBackground"] = true,
			["useText"] = true,
			["isFullDuration"] = false,
			["TR"] = 1,
		},
		["HOT4"] = {
			["TG"] = 0.6,
			["countdownMode"] = 1,
			["R"] = 0.3,
			["TB"] = 1,
			["G"] = 0.3,
			["B"] = 1,
			["useOpacity"] = false,
			["O"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["useBackground"] = true,
			["useText"] = true,
			["isFullDuration"] = false,
			["TR"] = 0.6,
		},
		["HOT_CHARGE_4"] = {
			["TG"] = 1,
			["R"] = 0.8,
			["TB"] = 1,
			["G"] = 0.8,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0.8,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = false,
		},
		["DEBUFF2"] = {
			["TG"] = 0,
			["R"] = 0.8,
			["TB"] = 0,
			["G"] = 0.4,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0.4,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["DEBUFF0"] = {
			["useBackground"] = false,
			["useText"] = false,
			["useOpacity"] = false,
		},
		["HOT8"] = {
			["useBackground"] = true,
			["R"] = 1,
			["B"] = 1,
			["O"] = 0.75,
			["G"] = 1,
		},
		["HOT10"] = {
			["TG"] = 1,
			["countdownMode"] = 1,
			["R"] = 0.3,
			["TB"] = 0.3,
			["G"] = 1,
			["B"] = 0.3,
			["useOpacity"] = false,
			["O"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["useBackground"] = true,
			["useText"] = true,
			["isFullDuration"] = false,
			["TR"] = 0.6,
		},
		["THREAT"] = {
			["LOW"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 1,
				["O"] = 1,
				["G"] = 1,
			},
			["HIGH"] = {
				["useBackground"] = true,
				["R"] = 1,
				["B"] = 1,
				["O"] = 1,
				["G"] = 0,
			},
		},
		["useDebuffIcon"] = false,
		["CLUSTER_FAIR"] = {
			["TG"] = 1,
			["R"] = 0.8,
			["TB"] = 0,
			["G"] = 0.8,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = false,
		},
		["DEBUFF1"] = {
			["TG"] = 1,
			["R"] = 0,
			["TB"] = 0.686,
			["G"] = 0.592,
			["TR"] = 0,
			["TO"] = 1,
			["B"] = 0.8,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["LIFE_LEFT"] = {
			["GOOD"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["O"] = 1,
				["G"] = 1,
			},
			["LOW"] = {
				["useBackground"] = true,
				["R"] = 1,
				["B"] = 0,
				["O"] = 1,
				["G"] = 0,
			},
			["FAIR"] = {
				["useBackground"] = true,
				["R"] = 1,
				["B"] = 0,
				["O"] = 1,
				["G"] = 1,
			},
		},
		["HOT_CHARGE_2"] = {
			["TG"] = 1,
			["R"] = 1,
			["TB"] = 0.6,
			["G"] = 1,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0.3,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = false,
		},
	},
}
VUHDO_SPELL_ASSIGNMENTS = {
	["1"] = {
		"", -- [1]
		"1", -- [2]
		"target", -- [3]
	},
	["3"] = {
		"", -- [1]
		"3", -- [2]
		"focus", -- [3]
	},
	["2"] = {
		"", -- [1]
		"2", -- [2]
		"assist", -- [3]
	},
	["5"] = {
		"", -- [1]
		"5", -- [2]
		"menu", -- [3]
	},
	["4"] = {
		"", -- [1]
		"4", -- [2]
		"menu", -- [3]
	},
}
VUHDO_HOSTILE_SPELL_ASSIGNMENTS = {
}
VUHDO_MM_SETTINGS = {
	["position"] = 0,
	["drag"] = "CIRCLE",
}
VUHDO_PLAYER_TARGETS = {
}
VUHDO_MAINTANK_NAMES = {
}
VUHDO_BUFF_SETTINGS = {
	["Lethal Poisons"] = {
		["missingColor"] = {
			["TG"] = 1,
			["R"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["show"] = false,
			["useOpacity"] = true,
			["TO"] = 1,
			["useBackground"] = true,
			["useText"] = true,
			["TR"] = 1,
			["O"] = 1,
			["B"] = 1,
		},
		["enabled"] = false,
		["filter"] = {
			[999] = true,
		},
	},
	["Tricks of the Trade"] = {
		["missingColor"] = {
			["TG"] = 1,
			["R"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["show"] = false,
			["useOpacity"] = true,
			["TO"] = 1,
			["useBackground"] = true,
			["useText"] = true,
			["TR"] = 1,
			["O"] = 1,
			["B"] = 1,
		},
		["enabled"] = false,
		["filter"] = {
			[999] = true,
		},
	},
	["Non-lethal Poisons"] = {
		["missingColor"] = {
			["TG"] = 1,
			["R"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["show"] = false,
			["useOpacity"] = true,
			["TO"] = 1,
			["useBackground"] = true,
			["useText"] = true,
			["TR"] = 1,
			["O"] = 1,
			["B"] = 1,
		},
		["enabled"] = false,
		["filter"] = {
			[999] = true,
		},
	},
	["CONFIG"] = {
		["SWATCH_COLOR_BUFF_OUT"] = {
			["TG"] = 0,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 0.8,
			["TO"] = 1,
			["B"] = 0,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["SHOW_LABEL"] = false,
		["REFRESH_SECS"] = 1,
		["SWATCH_COLOR_BUFF_COOLDOWN"] = {
			["TG"] = 0.6,
			["R"] = 0.3,
			["TB"] = 0.6,
			["G"] = 0.3,
			["TR"] = 0.6,
			["TO"] = 1,
			["B"] = 0.3,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["SWATCH_COLOR_BUFF_OKAY"] = {
			["TG"] = 0.8,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 0,
			["TO"] = 1,
			["B"] = 0,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["SHOW"] = true,
		["PANEL_BG_COLOR"] = {
			["useBackground"] = true,
			["R"] = 0,
			["B"] = 0,
			["O"] = 0.5,
			["G"] = 0,
		},
		["SWATCH_COLOR_BUFF_LOW"] = {
			["TG"] = 0.7,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["VERSION"] = 4,
		["SCALE"] = 1,
		["BAR_COLORS_TEXT"] = true,
		["BAR_COLORS_IN_FIGHT"] = false,
		["HIGHLIGHT_COOLDOWN"] = true,
		["HIDE_CHARGES"] = false,
		["COMPACT"] = true,
		["PANEL_BORDER_COLOR"] = {
			["useBackground"] = true,
			["R"] = 0,
			["B"] = 0,
			["O"] = 0.5,
			["G"] = 0,
		},
		["BAR_COLORS_BACKGROUND"] = true,
		["SWATCH_BG_COLOR"] = {
			["useBackground"] = true,
			["R"] = 0,
			["B"] = 0,
			["O"] = 1,
			["G"] = 0,
		},
		["POSITION"] = {
			["y"] = -130,
			["x"] = 130,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_MAX_BUFFS"] = 5,
		["SWATCH_BORDER_COLOR"] = {
			["useBackground"] = true,
			["R"] = 0.8,
			["B"] = 0.8,
			["O"] = 0,
			["G"] = 0.8,
		},
		["REBUFF_AT_PERCENT"] = 25,
		["REBUFF_MIN_MINUTES"] = 3,
		["WHEEL_SMART_BUFF"] = false,
	},
}
VUHDO_POWER_TYPE_COLORS = {
	{
		["TG"] = 0,
		["R"] = 1,
		["TB"] = 0,
		["G"] = 0,
		["TR"] = 1,
		["TO"] = 1,
		["B"] = 0,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useOpacity"] = true,
	}, -- [1]
	{
		["TG"] = 0.5,
		["R"] = 1,
		["TB"] = 0.25,
		["G"] = 0.5,
		["TR"] = 1,
		["TO"] = 1,
		["B"] = 0.25,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useOpacity"] = true,
	}, -- [2]
	{
		["TG"] = 1,
		["R"] = 1,
		["TB"] = 0,
		["G"] = 1,
		["TR"] = 1,
		["TO"] = 1,
		["B"] = 0,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useOpacity"] = true,
	}, -- [3]
	{
		["TG"] = 1,
		["R"] = 0,
		["TB"] = 1,
		["G"] = 1,
		["TR"] = 0,
		["TO"] = 1,
		["B"] = 1,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useOpacity"] = true,
	}, -- [4]
	[0] = {
		["TG"] = 0,
		["R"] = 0,
		["TB"] = 1,
		["G"] = 0,
		["TR"] = 0,
		["TO"] = 1,
		["B"] = 1,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useOpacity"] = true,
	},
	[17] = {
		["TG"] = 0.09,
		["R"] = 0.54,
		["TB"] = 0.69,
		["G"] = 0.09,
		["TR"] = 0.54,
		["TO"] = 1,
		["B"] = 0.69,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useOpacity"] = true,
	},
	[8] = {
		["TG"] = 0.95,
		["R"] = 0.87,
		["TB"] = 1,
		["G"] = 0.95,
		["TR"] = 0.87,
		["TO"] = 1,
		["B"] = 1,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useOpacity"] = true,
	},
	[18] = {
		["TG"] = 0.09,
		["R"] = 0.54,
		["TB"] = 0.69,
		["G"] = 0.09,
		["TR"] = 0.54,
		["TO"] = 1,
		["B"] = 0.69,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useOpacity"] = true,
	},
	[11] = {
		["TG"] = 0.56,
		["R"] = 0.09,
		["TB"] = 1,
		["G"] = 0.56,
		["TR"] = 0.09,
		["TO"] = 1,
		["B"] = 1,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useOpacity"] = true,
	},
	[6] = {
		["TG"] = 0.5,
		["R"] = 0.5,
		["TB"] = 0.5,
		["G"] = 0.5,
		["TR"] = 0.5,
		["TO"] = 1,
		["B"] = 0.5,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useOpacity"] = true,
	},
	[13] = {
		["TG"] = 0.97,
		["R"] = 0.15,
		["TB"] = 1,
		["G"] = 0.97,
		["TR"] = 0.15,
		["TO"] = 1,
		["B"] = 1,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useOpacity"] = true,
	},
}
VUHDO_SPELLS_KEYBOARD = {
	["SPELL15"] = "",
	["SPELL6"] = "",
	["SPELL13"] = "",
	["HOSTILE_WHEEL"] = {
		["1"] = {
			"", -- [1]
			"-w1", -- [2]
			"", -- [3]
		},
		["altctrl2"] = {
			"ALT-CTRL-", -- [1]
			"-w10", -- [2]
			"", -- [3]
		},
		["ctrl1"] = {
			"CTRL-", -- [1]
			"-w5", -- [2]
			"", -- [3]
		},
		["2"] = {
			"", -- [1]
			"-w2", -- [2]
			"", -- [3]
		},
		["ctrl2"] = {
			"CTRL-", -- [1]
			"-w6", -- [2]
			"", -- [3]
		},
		["shift2"] = {
			"SHIFT-", -- [1]
			"-w8", -- [2]
			"", -- [3]
		},
		["altshift1"] = {
			"ALT-SHIFT-", -- [1]
			"-w11", -- [2]
			"", -- [3]
		},
		["ctrlshift2"] = {
			"CTRL-SHIFT-", -- [1]
			"-w14", -- [2]
			"", -- [3]
		},
		["altctrl1"] = {
			"ALT-CTRL-", -- [1]
			"-w9", -- [2]
			"", -- [3]
		},
		["altctrlshift2"] = {
			"ALT-CTRL-SHIFT-", -- [1]
			"-w16", -- [2]
			"", -- [3]
		},
		["altshift2"] = {
			"ALT-SHIFT-", -- [1]
			"-w12", -- [2]
			"", -- [3]
		},
		["alt2"] = {
			"ALT-", -- [1]
			"-w4", -- [2]
			"", -- [3]
		},
		["altctrlshift1"] = {
			"ALT-CTRL-SHIFT-", -- [1]
			"-w15", -- [2]
			"", -- [3]
		},
		["ctrlshift1"] = {
			"CTRL-SHIFT-", -- [1]
			"-w13", -- [2]
			"", -- [3]
		},
		["alt1"] = {
			"ALT-", -- [1]
			"-w3", -- [2]
			"", -- [3]
		},
		["shift1"] = {
			"SHIFT-", -- [1]
			"-w7", -- [2]
			"", -- [3]
		},
	},
	["SPELL3"] = "",
	["SPELL4"] = "",
	["SPELL2"] = "",
	["SPELL16"] = "",
	["INTERNAL"] = {
	},
	["SPELL7"] = "",
	["SPELL12"] = "",
	["SPELL5"] = "",
	["SPELL9"] = "",
	["SPELL10"] = "",
	["SPELL14"] = "",
	["SPELL11"] = "",
	["SPELL8"] = "",
	["SPELL1"] = "",
	["WHEEL"] = {
		["1"] = {
			"", -- [1]
			"-w1", -- [2]
			"", -- [3]
		},
		["altctrl2"] = {
			"ALT-CTRL-", -- [1]
			"-w10", -- [2]
			"", -- [3]
		},
		["ctrl1"] = {
			"CTRL-", -- [1]
			"-w5", -- [2]
			"", -- [3]
		},
		["2"] = {
			"", -- [1]
			"-w2", -- [2]
			"", -- [3]
		},
		["ctrl2"] = {
			"CTRL-", -- [1]
			"-w6", -- [2]
			"", -- [3]
		},
		["shift2"] = {
			"SHIFT-", -- [1]
			"-w8", -- [2]
			"", -- [3]
		},
		["altshift1"] = {
			"ALT-SHIFT-", -- [1]
			"-w11", -- [2]
			"", -- [3]
		},
		["ctrlshift2"] = {
			"CTRL-SHIFT-", -- [1]
			"-w14", -- [2]
			"", -- [3]
		},
		["altctrl1"] = {
			"ALT-CTRL-", -- [1]
			"-w9", -- [2]
			"", -- [3]
		},
		["altctrlshift2"] = {
			"ALT-CTRL-SHIFT-", -- [1]
			"-w16", -- [2]
			"", -- [3]
		},
		["altshift2"] = {
			"ALT-SHIFT-", -- [1]
			"-w12", -- [2]
			"", -- [3]
		},
		["alt2"] = {
			"ALT-", -- [1]
			"-w4", -- [2]
			"", -- [3]
		},
		["altctrlshift1"] = {
			"ALT-CTRL-SHIFT-", -- [1]
			"-w15", -- [2]
			"", -- [3]
		},
		["ctrlshift1"] = {
			"CTRL-SHIFT-", -- [1]
			"-w13", -- [2]
			"", -- [3]
		},
		["alt1"] = {
			"ALT-", -- [1]
			"-w3", -- [2]
			"", -- [3]
		},
		["shift1"] = {
			"SHIFT-", -- [1]
			"-w7", -- [2]
			"", -- [3]
		},
	},
}
VUHDO_SPELL_CONFIG = {
	["IS_FIRE_OUT_FIGHT"] = false,
	["IS_LOAD_HOTS"] = false,
	["IS_FIRE_HOT"] = false,
	["smartCastModi"] = "all",
	["IS_FIRE_GLOVES"] = false,
	["IS_AUTO_FIRE"] = true,
	["IS_FIRE_CUSTOM_2"] = false,
	["IS_FIRE_TRINKET_2"] = false,
	["IS_FIRE_TRINKET_1"] = false,
	["IS_AUTO_TARGET"] = false,
	["FIRE_CUSTOM_2_SPELL"] = "",
	["FIRE_CUSTOM_1_SPELL"] = "",
	["autoBattleRez"] = true,
	["IS_CANCEL_CURRENT"] = false,
	["IS_FIRE_CUSTOM_1"] = false,
	["IS_TOOLTIP_INFO"] = false,
}
VUHDO_BUFF_ORDER = {
	["Lethal Poisons"] = 1,
	["Tricks of the Trade"] = 2,
	["Non-lethal Poisons"] = 3,
}
VUHDO_SPEC_LAYOUTS = {
	["1"] = "",
	["3"] = "",
	["2"] = "",
	["selected"] = "",
	["4"] = "",
}
VUHDO_GROUP_SIZE = 1
VUHDO_RAID = {
	["player"] = {
		["zone"] = "Northshire",
		["baseRange"] = true,
		["class"] = "ROGUE",
		["role"] = 61,
		["sortMaxHp"] = 154,
		["map"] = "Northshire",
		["threat"] = 0,
		["powermax"] = 100,
		["threatPerc"] = 0,
		["isPet"] = false,
		["name"] = "Stephanna",
		["number"] = 1,
		["isVehicle"] = false,
		["group"] = 1,
		["classId"] = 21,
		["range"] = true,
		["unit"] = "player",
		["powertype"] = 3,
		["healthmax"] = 154,
		["dead"] = false,
		["charmed"] = false,
		["fullName"] = "Stephanna",
		["power"] = 100,
		["aggro"] = false,
		["visible"] = true,
		["targetUnit"] = "target",
		["health"] = 154,
		["className"] = "Rogue",
		["afk"] = false,
		["debuff"] = 0,
		["connected"] = true,
		["petUnit"] = "pet",
	},
}
VUHDO_INDICATOR_CONFIG = {
	["BOUQUETS"] = {
		["THREAT_BAR"] = "",
		["MOUSEOVER_HIGHLIGHT"] = "",
		["AGGRO_BAR"] = "",
		["BACKGROUND_BAR"] = "Background: Solid",
		["DAMAGE_FLASH_BAR"] = "",
		["INCOMING_BAR"] = "",
		["HEALTH_BAR_PANEL"] = {
			"", -- [1]
			"", -- [2]
			"", -- [3]
			"", -- [4]
			"", -- [5]
			"", -- [6]
			"", -- [7]
			"", -- [8]
			"", -- [9]
			"", -- [10]
		},
		["SIDE_LEFT"] = "",
		["THREAT_MARK"] = "",
		["MANA_BAR"] = "Manabars: Mana only",
		["BAR_BORDER"] = "Border: Multi + Aggro",
		["SIDE_RIGHT"] = "",
		["HEALTH_BAR"] = "Health (generic, class col)",
		["SWIFTMEND_INDICATOR"] = "Role Icon",
		["CLUSTER_BORDER"] = "",
	},
	["CUSTOM"] = {
		["THREAT_BAR"] = {
			["invertGrowth"] = false,
			["turnAxis"] = false,
			["HEIGHT"] = 4,
			["WARN_AT"] = 85,
			["TEXTURE"] = "VuhDo - Polished Wood",
		},
		["MOUSEOVER_HIGHLIGHT"] = {
			["TEXTURE"] = "VuhDo - Aluminium",
		},
		["AGGRO_BAR"] = {
			["TEXTURE"] = "VuhDo - Polished Wood",
		},
		["BACKGROUND_BAR"] = {
			["TEXTURE"] = "VuhDo - Minimalist",
		},
		["CLUSTER_BORDER"] = {
			["WIDTH"] = 2,
			["FILE"] = "Interface\\AddOns\\VuhDo\\Images\\white_square_16_16",
		},
		["MANA_BAR"] = {
			["turnAxis"] = false,
			["invertGrowth"] = false,
			["TEXTURE"] = "VuhDo - Pipe, light",
		},
		["SWIFTMEND_INDICATOR"] = {
			["SCALE"] = 1,
		},
		["BAR_BORDER"] = {
			["FILE"] = "Interface\\AddOns\\VuhDo\\Images\\white_square_16_16",
			["ADJUST"] = 1.0e-006,
			["WIDTH"] = 1,
		},
		["HOT_BARS"] = {
			["turnAxis"] = false,
			["vertical"] = false,
			["invertGrowth"] = false,
		},
		["HEALTH_BAR"] = {
			["turnAxis"] = false,
			["vertical"] = false,
			["invertGrowth"] = false,
		},
		["SIDE_LEFT"] = {
			["turnAxis"] = false,
			["vertical"] = true,
			["invertGrowth"] = false,
			["TEXTURE"] = "VuhDo - Plain White",
		},
		["SIDE_RIGHT"] = {
			["turnAxis"] = false,
			["vertical"] = true,
			["invertGrowth"] = false,
			["TEXTURE"] = "VuhDo - Plain White",
		},
	},
	["TEXT_INDICATORS"] = {
		["OVERHEAL_TEXT"] = {
			["TEXT_PROVIDER"] = {
				"OVERHEAL_KILO_PLUS_N_K", -- [1]
				"OVERHEAL_KILO_PLUS_N_K", -- [2]
				"OVERHEAL_KILO_PLUS_N_K", -- [3]
				"OVERHEAL_KILO_PLUS_N_K", -- [4]
				"OVERHEAL_KILO_PLUS_N_K", -- [5]
				"OVERHEAL_KILO_PLUS_N_K", -- [6]
				"OVERHEAL_KILO_PLUS_N_K", -- [7]
				"OVERHEAL_KILO_PLUS_N_K", -- [8]
				"OVERHEAL_KILO_PLUS_N_K", -- [9]
				"OVERHEAL_KILO_PLUS_N_K", -- [10]
			},
		},
		["SIDE_RIGHT"] = {
			["TEXT_PROVIDER"] = {
				[0] = "",
			},
			["TEXT"] = {
				["X_ADJUST"] = 4,
				["USE_MONO"] = false,
				["Y_ADJUST"] = 0,
				["ANCHOR"] = "BOTTOM",
				["USE_OUTLINE"] = true,
				["SCALE"] = 18,
				["COLOR"] = {
					["TG"] = 1,
					["R"] = 0,
					["TB"] = 1,
					["G"] = 0,
					["TR"] = 1,
					["TO"] = 1,
					["B"] = 0,
					["useText"] = true,
					["useBackground"] = true,
					["O"] = 1,
					["useOpacity"] = true,
				},
				["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
				["USE_SHADOW"] = false,
			},
		},
		["SIDE_LEFT"] = {
			["TEXT_PROVIDER"] = {
				[0] = "",
			},
			["TEXT"] = {
				["X_ADJUST"] = 3,
				["USE_MONO"] = false,
				["Y_ADJUST"] = 0,
				["ANCHOR"] = "BOTTOM",
				["USE_OUTLINE"] = true,
				["SCALE"] = 18,
				["COLOR"] = {
					["TG"] = 1,
					["R"] = 0,
					["TB"] = 1,
					["G"] = 0,
					["TR"] = 1,
					["TO"] = 1,
					["B"] = 0,
					["useText"] = true,
					["useBackground"] = true,
					["O"] = 1,
					["useOpacity"] = true,
				},
				["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
				["USE_SHADOW"] = false,
			},
		},
		["MANA_BAR"] = {
			["TEXT_PROVIDER"] = {
				[0] = "",
			},
			["TEXT"] = {
				["X_ADJUST"] = 7,
				["USE_MONO"] = false,
				["Y_ADJUST"] = 2,
				["ANCHOR"] = "RIGHT",
				["USE_OUTLINE"] = false,
				["SCALE"] = 20,
				["COLOR"] = {
					["TG"] = 0.55,
					["R"] = 0,
					["TB"] = 1,
					["G"] = 0,
					["TR"] = 0.36,
					["TO"] = 1,
					["B"] = 0,
					["useText"] = true,
					["useBackground"] = true,
					["O"] = 1,
					["useOpacity"] = true,
				},
				["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
				["USE_SHADOW"] = true,
			},
		},
		["THREAT_BAR"] = {
			["TEXT_PROVIDER"] = {
				[0] = "",
			},
			["TEXT"] = {
				["X_ADJUST"] = 7,
				["USE_MONO"] = false,
				["Y_ADJUST"] = 2,
				["ANCHOR"] = "RIGHT",
				["USE_OUTLINE"] = false,
				["SCALE"] = 20,
				["COLOR"] = {
					["TG"] = 0,
					["R"] = 0,
					["TB"] = 0,
					["G"] = 0,
					["TR"] = 1,
					["TO"] = 1,
					["B"] = 0,
					["useText"] = true,
					["useBackground"] = true,
					["O"] = 1,
					["useOpacity"] = true,
				},
				["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
				["USE_SHADOW"] = true,
			},
		},
	},
}
