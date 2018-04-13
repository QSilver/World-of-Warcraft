
famBags = {
	["profileKeys"] = {
		["Qsilver - Silvermoon"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["categories"] = {
				["14.Keys"] = {
					["Criterias"] = {
						{
							["name"] = "Key",
							["criterias"] = {
								[".: All :."] = ".: All :.",
							},
							["operator"] = "AND",
						}, -- [1]
					},
					["Types"] = {
					},
				},
				["08.Consumables"] = {
					["Criterias"] = {
					},
					["Types"] = {
						["Consumable"] = {
							[".: All :."] = ".: All :.",
						},
					},
				},
				["10.Recipes"] = {
					["Criterias"] = {
					},
					["Types"] = {
						["Recipe"] = {
							[".: All :."] = ".: All :.",
						},
					},
				},
				["07.Meat"] = {
					["Criterias"] = {
					},
					["Types"] = {
						["Trade Goods"] = {
							["Meat"] = true,
						},
					},
				},
				["13.Others"] = {
					["Criterias"] = {
						{
							["criterias"] = {
								[".: All :."] = ".: All :.",
							},
							["name"] = "Others",
							["operator"] = "AND",
						}, -- [1]
						{
							["name"] = "Key",
							["criterias"] = {
								[".: All :."] = ".: All :.",
							},
							["operator"] = "AND NOT",
						}, -- [2]
					},
					["Types"] = {
					},
				},
				["01.Equipment"] = {
					["Criterias"] = {
						{
							["criterias"] = {
								[".: All :."] = ".: All :.",
							},
							["name"] = "Equipment Set",
							["operator"] = "AND",
						}, -- [1]
					},
					["Types"] = {
						["Armor"] = {
							[".: All :."] = ".: All :.",
						},
						["Weapon"] = {
							[".: All :."] = ".: All :.",
						},
					},
				},
				["04.Tabards"] = {
					["Criterias"] = {
						{
							["name"] = "Equipment Slot",
							["criterias"] = {
								["Tabard"] = true,
							},
							["operator"] = "AND",
						}, -- [1]
					},
					["Types"] = {
					},
				},
				["11.Junk"] = {
					["Criterias"] = {
						{
							["name"] = "Quality",
							["criterias"] = {
								["1.Common"] = true,
								[".: Unknown :."] = true,
								["0.Poor"] = true,
							},
							["operator"] = "AND",
						}, -- [1]
						{
							["criterias"] = {
								[".: All :."] = ".: All :.",
							},
							["name"] = "Usable",
							["operator"] = "AND NOT",
						}, -- [2]
					},
					["Types"] = {
						["Armor"] = {
							[".: All :."] = ".: All :.",
						},
						["Miscellaneous"] = {
							["Junk"] = true,
						},
						["Weapon"] = {
							["One-Handed Axes"] = true,
							["Fishing Poles"] = true,
							["Two-Handed Maces"] = true,
							["Polearms"] = true,
							["One-Handed Swords"] = true,
							["Bows"] = true,
							["Two-Handed Swords"] = true,
							["Thrown"] = true,
							["Crossbows"] = true,
							["Staves"] = true,
							["Guns"] = true,
							["Fist Weapons"] = true,
							["Daggers"] = true,
							["Wands"] = true,
							["One-Handed Maces"] = true,
							["Two-Handed Axes"] = true,
						},
					},
				},
				["06.Food & Drink"] = {
					["Criterias"] = {
					},
					["Types"] = {
						["Consumable"] = {
							["Food & Drink"] = true,
						},
					},
				},
				["02.Weapons"] = {
					["Criterias"] = {
						{
							["name"] = "Quality",
							["criterias"] = {
								["7.Heirloom"] = true,
								["5.Legendary"] = true,
								["4.Epic"] = true,
								["2.Uncommon"] = true,
								["3.Rare"] = true,
								["6.Artifact"] = true,
							},
							["operator"] = "AND",
						}, -- [1]
					},
					["Types"] = {
						["Weapon"] = {
							[".: All :."] = ".: All :.",
						},
					},
				},
				["03.Armor"] = {
					["Criterias"] = {
						{
							["name"] = "Quality",
							["criterias"] = {
								["7.Heirloom"] = true,
								["5.Legendary"] = true,
								["4.Epic"] = true,
								["2.Uncommon"] = true,
								["3.Rare"] = true,
								["6.Artifact"] = true,
							},
							["operator"] = "AND",
						}, -- [1]
						{
							["name"] = "Equipment Slot",
							["criterias"] = {
								["Tabard"] = true,
							},
							["operator"] = "AND NOT",
						}, -- [2]
					},
					["Types"] = {
						["Armor"] = {
							[".: All :."] = ".: All :.",
						},
					},
				},
				["09.Cloth"] = {
					["Criterias"] = {
					},
					["Types"] = {
						["Trade Goods"] = {
							["Cloth"] = true,
						},
					},
				},
				["12.Materials"] = {
					["Criterias"] = {
					},
					["Types"] = {
						["Trade Goods"] = {
							["Materials"] = true,
							["Parts"] = true,
							["Herb"] = true,
							["Metal & Stone"] = true,
							["Enchanting"] = true,
						},
						["Gem"] = {
							[".: All :."] = ".: All :.",
						},
					},
				},
				["05.Quest"] = {
					["Criterias"] = {
						{
							["criterias"] = {
								[".: All :."] = ".: All :.",
							},
							["name"] = "Quest",
							["operator"] = "OR",
						}, -- [1]
					},
					["Types"] = {
						["Quest"] = {
							[".: All :."] = ".: All :.",
						},
					},
				},
			},
			["sections"] = {
				["12.Materials"] = {
					["bg"] = {
						["color2"] = {
							0.3450980392156863, -- [1]
							0.6392156862745098, -- [2]
							1, -- [3]
							0.7000000178813934, -- [4]
						},
						["type"] = 1,
						["br_texture"] = "None",
						["color1"] = {
							0.4627450980392157, -- [1]
							0.4156862745098039, -- [2]
							0.3254901960784314, -- [3]
							0.7000000178813934, -- [4]
						},
						["br_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["inset"] = 0,
						["br_size"] = 10,
					},
					["title"] = {
						["inset"] = 0,
						["text"] = {
							["flags"] = {
								["MONOCHROME"] = false,
								["OUTLINE"] = false,
								["THICKOUTLINE"] = false,
								["SHADOW"] = true,
							},
							["font"] = "Friz Quadrata TT",
							["size"] = 8,
							["color"] = {
								1, -- [1]
								0.9607843137254902, -- [2]
								0.3607843137254902, -- [3]
							},
							["padding"] = 2,
							["valign"] = "CENTER",
							["halign"] = "LEFT",
						},
						["bg"] = {
							["color2"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5400000214576721, -- [4]
							},
							["type"] = 2,
							["br_texture"] = "None",
							["color1"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["br_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["inset"] = 0,
							["br_size"] = 10,
						},
						["is_inset"] = true,
					},
				},
				["14.Keys"] = {
					["bg"] = {
						["color2"] = {
							0.3450980392156863, -- [1]
							0.6392156862745098, -- [2]
							1, -- [3]
							0.7000000178813934, -- [4]
						},
						["type"] = 1,
						["br_texture"] = "None",
						["color1"] = {
							0.3803921568627451, -- [1]
							0.392156862745098, -- [2]
							0.392156862745098, -- [3]
							0.7000000178813934, -- [4]
						},
						["br_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["inset"] = 0,
						["br_size"] = 10,
					},
					["title"] = {
						["inset"] = 0,
						["text"] = {
							["flags"] = {
								["MONOCHROME"] = false,
								["OUTLINE"] = false,
								["THICKOUTLINE"] = false,
								["SHADOW"] = true,
							},
							["font"] = "Friz Quadrata TT",
							["size"] = 8,
							["color"] = {
								1, -- [1]
								0.9607843137254902, -- [2]
								0.3607843137254902, -- [3]
							},
							["padding"] = 2,
							["valign"] = "CENTER",
							["halign"] = "LEFT",
						},
						["bg"] = {
							["color2"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5400000214576721, -- [4]
							},
							["type"] = 2,
							["br_texture"] = "None",
							["color1"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["br_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["inset"] = 0,
							["br_size"] = 10,
						},
						["is_inset"] = true,
					},
				},
				["13.Others"] = {
					["bg"] = {
						["color2"] = {
							0.3450980392156863, -- [1]
							0.6392156862745098, -- [2]
							1, -- [3]
							0.7000000178813934, -- [4]
						},
						["type"] = 1,
						["br_texture"] = "None",
						["color1"] = {
							0.4196078431372549, -- [1]
							0.615686274509804, -- [2]
							0.592156862745098, -- [3]
							0.9000000059604645, -- [4]
						},
						["br_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["inset"] = 0,
						["br_size"] = 10,
					},
					["title"] = {
						["inset"] = 0,
						["text"] = {
							["flags"] = {
								["MONOCHROME"] = false,
								["OUTLINE"] = false,
								["THICKOUTLINE"] = false,
								["SHADOW"] = true,
							},
							["font"] = "Friz Quadrata TT",
							["size"] = 8,
							["color"] = {
								1, -- [1]
								0.9607843137254902, -- [2]
								0.3607843137254902, -- [3]
							},
							["padding"] = 2,
							["valign"] = "CENTER",
							["halign"] = "LEFT",
						},
						["bg"] = {
							["color2"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5300000011920929, -- [4]
							},
							["type"] = 2,
							["br_texture"] = "None",
							["color1"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["br_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["inset"] = 0,
							["br_size"] = 10,
						},
						["is_inset"] = true,
					},
				},
				["08.Consumables"] = {
					["bg"] = {
						["color2"] = {
							0.3450980392156863, -- [1]
							0.6392156862745098, -- [2]
							1, -- [3]
							0.7000000178813934, -- [4]
						},
						["type"] = 1,
						["br_texture"] = "None",
						["color1"] = {
							0.4117647058823529, -- [1]
							0.2941176470588235, -- [2]
							0.5176470588235294, -- [3]
							0.9100000038743019, -- [4]
						},
						["br_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["inset"] = 0,
						["br_size"] = 10,
					},
					["title"] = {
						["inset"] = 0,
						["text"] = {
							["flags"] = {
								["MONOCHROME"] = false,
								["OUTLINE"] = false,
								["THICKOUTLINE"] = false,
								["SHADOW"] = true,
							},
							["font"] = "Friz Quadrata TT",
							["size"] = 8,
							["color"] = {
								1, -- [1]
								0.9607843137254902, -- [2]
								0.3607843137254902, -- [3]
							},
							["padding"] = 2,
							["valign"] = "CENTER",
							["halign"] = "LEFT",
						},
						["bg"] = {
							["color2"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5400000214576721, -- [4]
							},
							["type"] = 2,
							["br_texture"] = "None",
							["color1"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["br_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["inset"] = 0,
							["br_size"] = 10,
						},
						["is_inset"] = true,
					},
				},
				["07.Meat"] = {
					["bg"] = {
						["color2"] = {
							0.3450980392156863, -- [1]
							0.6392156862745098, -- [2]
							1, -- [3]
							0.7000000178813934, -- [4]
						},
						["type"] = 1,
						["br_texture"] = "None",
						["color1"] = {
							0.09019607843137255, -- [1]
							0.4352941176470588, -- [2]
							0.4862745098039216, -- [3]
							0.8299999982118607, -- [4]
						},
						["br_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["inset"] = 0,
						["br_size"] = 10,
					},
					["title"] = {
						["inset"] = 0,
						["text"] = {
							["flags"] = {
								["MONOCHROME"] = false,
								["OUTLINE"] = false,
								["THICKOUTLINE"] = false,
								["SHADOW"] = true,
							},
							["font"] = "Friz Quadrata TT",
							["size"] = 8,
							["color"] = {
								1, -- [1]
								0.9607843137254902, -- [2]
								0.3607843137254902, -- [3]
							},
							["padding"] = 2,
							["valign"] = "CENTER",
							["halign"] = "LEFT",
						},
						["bg"] = {
							["color2"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5400000214576721, -- [4]
							},
							["type"] = 2,
							["br_texture"] = "None",
							["color1"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["br_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["inset"] = 0,
							["br_size"] = 10,
						},
						["is_inset"] = true,
					},
				},
				["10.Recipes"] = {
					["bg"] = {
						["color2"] = {
							0.3450980392156863, -- [1]
							0.6392156862745098, -- [2]
							1, -- [3]
							0.7000000178813934, -- [4]
						},
						["type"] = 1,
						["br_texture"] = "None",
						["color1"] = {
							0.4235294117647059, -- [1]
							0.4235294117647059, -- [2]
							0.4235294117647059, -- [3]
							0.9100000038743019, -- [4]
						},
						["br_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["inset"] = 0,
						["br_size"] = 10,
					},
					["title"] = {
						["inset"] = 0,
						["text"] = {
							["flags"] = {
								["MONOCHROME"] = false,
								["OUTLINE"] = false,
								["THICKOUTLINE"] = false,
								["SHADOW"] = true,
							},
							["font"] = "Friz Quadrata TT",
							["size"] = 8,
							["color"] = {
								1, -- [1]
								0.9607843137254902, -- [2]
								0.3607843137254902, -- [3]
							},
							["padding"] = 2,
							["valign"] = "CENTER",
							["halign"] = "LEFT",
						},
						["bg"] = {
							["color2"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5400000214576721, -- [4]
							},
							["type"] = 2,
							["br_texture"] = "None",
							["color1"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["br_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["inset"] = 0,
							["br_size"] = 10,
						},
						["is_inset"] = true,
					},
				},
				["01.trinkets"] = {
					["bg"] = {
						["color2"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							0.7, -- [4]
						},
						["type"] = 1,
						["br_texture"] = "None",
						["color1"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							0.7, -- [4]
						},
						["br_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["inset"] = 0,
						["br_size"] = 10,
					},
					["title"] = {
						["inset"] = 0,
						["text"] = {
							["flags"] = {
								["MONOCHROME"] = false,
								["OUTLINE"] = false,
								["THICKOUTLINE"] = false,
								["SHADOW"] = true,
							},
							["font"] = "",
							["size"] = 11,
							["color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
							},
							["padding"] = 1,
							["valign"] = "CENTER",
							["halign"] = "LEFT",
						},
						["bg"] = {
							["color2"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								0.7, -- [4]
							},
							["type"] = 1,
							["br_texture"] = "None",
							["color1"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								0.7, -- [4]
							},
							["br_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["inset"] = 0,
							["br_size"] = 10,
						},
						["is_inset"] = false,
					},
				},
				["bags"] = {
					["bg"] = {
						["color2"] = {
							0.3450980392156863, -- [1]
							0.6392156862745098, -- [2]
							1, -- [3]
							0.7000000178813934, -- [4]
						},
						["br_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							0.7, -- [4]
						},
						["color1"] = {
							0.2274509803921569, -- [1]
							0.4627450980392157, -- [2]
							0.8117647058823529, -- [3]
							0.7000000178813934, -- [4]
						},
					},
					["title"] = {
						["text"] = {
							["font"] = "Friz Quadrata TT",
							["color"] = {
								nil, -- [1]
								0.9607843137254902, -- [2]
								0.3607843137254902, -- [3]
							},
							["padding"] = 2,
							["size"] = 8,
						},
						["bg"] = {
							["color2"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5400000214576721, -- [4]
							},
							["type"] = 2,
							["br_color"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								0.7, -- [4]
							},
							["color1"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
						},
						["is_inset"] = true,
					},
				},
				["04.Tabards"] = {
					["bg"] = {
						["color2"] = {
							0.3450980392156863, -- [1]
							0.6392156862745098, -- [2]
							1, -- [3]
							0.7000000178813934, -- [4]
						},
						["type"] = 1,
						["br_texture"] = "None",
						["color1"] = {
							0.6, -- [1]
							0.3372549019607843, -- [2]
							0.3019607843137255, -- [3]
							0.7000000178813934, -- [4]
						},
						["br_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["inset"] = 0,
						["br_size"] = 10,
					},
					["title"] = {
						["inset"] = 0,
						["text"] = {
							["flags"] = {
								["MONOCHROME"] = false,
								["OUTLINE"] = false,
								["THICKOUTLINE"] = false,
								["SHADOW"] = true,
							},
							["font"] = "Friz Quadrata TT",
							["size"] = 8,
							["color"] = {
								1, -- [1]
								0.9607843137254902, -- [2]
								0.3607843137254902, -- [3]
							},
							["padding"] = 2,
							["valign"] = "CENTER",
							["halign"] = "LEFT",
						},
						["bg"] = {
							["color2"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5300000011920929, -- [4]
							},
							["type"] = 2,
							["br_texture"] = "None",
							["color1"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["br_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["inset"] = 0,
							["br_size"] = 10,
						},
						["is_inset"] = true,
					},
				},
				["11.Junk"] = {
					["bg"] = {
						["color2"] = {
							0.3450980392156863, -- [1]
							0.6392156862745098, -- [2]
							1, -- [3]
							0.7000000178813934, -- [4]
						},
						["type"] = 1,
						["br_texture"] = "None",
						["color1"] = {
							0.3215686274509804, -- [1]
							0.3254901960784314, -- [2]
							0.3294117647058824, -- [3]
							0.9100000038743019, -- [4]
						},
						["br_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["inset"] = 0,
						["br_size"] = 10,
					},
					["title"] = {
						["inset"] = 0,
						["text"] = {
							["flags"] = {
								["MONOCHROME"] = false,
								["OUTLINE"] = false,
								["THICKOUTLINE"] = false,
								["SHADOW"] = true,
							},
							["font"] = "Friz Quadrata TT",
							["size"] = 8,
							["color"] = {
								1, -- [1]
								0.9607843137254902, -- [2]
								0.3607843137254902, -- [3]
							},
							["padding"] = 2,
							["valign"] = "CENTER",
							["halign"] = "LEFT",
						},
						["bg"] = {
							["color2"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5400000214576721, -- [4]
							},
							["type"] = 2,
							["br_texture"] = "None",
							["color1"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["br_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["inset"] = 0,
							["br_size"] = 10,
						},
						["is_inset"] = true,
					},
				},
				["06.Food & Drink"] = {
					["bg"] = {
						["color2"] = {
							0.3450980392156863, -- [1]
							0.6392156862745098, -- [2]
							1, -- [3]
							0.7000000178813934, -- [4]
						},
						["type"] = 1,
						["br_texture"] = "None",
						["color1"] = {
							0.1607843137254902, -- [1]
							0.2509803921568627, -- [2]
							0.4862745098039216, -- [3]
							0.9400000013411045, -- [4]
						},
						["br_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["inset"] = 0,
						["br_size"] = 10,
					},
					["title"] = {
						["inset"] = 0,
						["text"] = {
							["flags"] = {
								["MONOCHROME"] = false,
								["OUTLINE"] = false,
								["THICKOUTLINE"] = false,
								["SHADOW"] = true,
							},
							["font"] = "Friz Quadrata TT",
							["size"] = 8,
							["color"] = {
								1, -- [1]
								0.9607843137254902, -- [2]
								0.3607843137254902, -- [3]
							},
							["padding"] = 2,
							["valign"] = "CENTER",
							["halign"] = "LEFT",
						},
						["bg"] = {
							["color2"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5300000011920929, -- [4]
							},
							["type"] = 2,
							["br_texture"] = "None",
							["color1"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["br_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["inset"] = 0,
							["br_size"] = 10,
						},
						["is_inset"] = true,
					},
				},
				["02.Weapons"] = {
					["bg"] = {
						["color2"] = {
							0.3450980392156863, -- [1]
							0.6392156862745098, -- [2]
							1, -- [3]
							0.7000000178813934, -- [4]
						},
						["type"] = 1,
						["br_texture"] = "None",
						["color1"] = {
							0.4352941176470588, -- [1]
							0.1529411764705883, -- [2]
							0.1490196078431373, -- [3]
							0.7000000178813934, -- [4]
						},
						["br_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["inset"] = 0,
						["br_size"] = 10,
					},
					["title"] = {
						["inset"] = 0,
						["text"] = {
							["flags"] = {
								["MONOCHROME"] = false,
								["OUTLINE"] = false,
								["THICKOUTLINE"] = false,
								["SHADOW"] = true,
							},
							["font"] = "Friz Quadrata TT",
							["size"] = 8,
							["color"] = {
								1, -- [1]
								0.9607843137254902, -- [2]
								0.3607843137254902, -- [3]
							},
							["padding"] = 2,
							["valign"] = "CENTER",
							["halign"] = "LEFT",
						},
						["bg"] = {
							["color2"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5400000214576721, -- [4]
							},
							["type"] = 2,
							["br_texture"] = "None",
							["color1"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["br_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["inset"] = 0,
							["br_size"] = 10,
						},
						["is_inset"] = true,
					},
				},
				["03.Armor"] = {
					["bg"] = {
						["color2"] = {
							0.3450980392156863, -- [1]
							0.6392156862745098, -- [2]
							1, -- [3]
							0.7000000178813934, -- [4]
						},
						["type"] = 1,
						["br_texture"] = "None",
						["color1"] = {
							0.4549019607843137, -- [1]
							0.1686274509803922, -- [2]
							0.2901960784313725, -- [3]
							0.7000000178813934, -- [4]
						},
						["br_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["inset"] = 0,
						["br_size"] = 10,
					},
					["title"] = {
						["inset"] = 0,
						["text"] = {
							["flags"] = {
								["MONOCHROME"] = false,
								["OUTLINE"] = false,
								["THICKOUTLINE"] = false,
								["SHADOW"] = true,
							},
							["font"] = "Friz Quadrata TT",
							["size"] = 8,
							["color"] = {
								1, -- [1]
								0.9607843137254902, -- [2]
								0.3607843137254902, -- [3]
							},
							["padding"] = 2,
							["valign"] = "CENTER",
							["halign"] = "LEFT",
						},
						["bg"] = {
							["color2"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5300000011920929, -- [4]
							},
							["type"] = 2,
							["br_texture"] = "None",
							["color1"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["br_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["inset"] = 0,
							["br_size"] = 10,
						},
						["is_inset"] = true,
					},
				},
				["09.Cloth"] = {
					["bg"] = {
						["color2"] = {
							0.3450980392156863, -- [1]
							0.6392156862745098, -- [2]
							1, -- [3]
							0.7000000178813934, -- [4]
						},
						["type"] = 1,
						["br_texture"] = "None",
						["color1"] = {
							0.5725490196078431, -- [1]
							0.5882352941176471, -- [2]
							0.3333333333333333, -- [3]
							0.7000000178813934, -- [4]
						},
						["br_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["inset"] = 0,
						["br_size"] = 10,
					},
					["title"] = {
						["inset"] = 0,
						["text"] = {
							["flags"] = {
								["MONOCHROME"] = false,
								["OUTLINE"] = false,
								["THICKOUTLINE"] = false,
								["SHADOW"] = true,
							},
							["font"] = "Friz Quadrata TT",
							["size"] = 8,
							["color"] = {
								1, -- [1]
								0.9607843137254902, -- [2]
								0.3607843137254902, -- [3]
							},
							["padding"] = 2,
							["valign"] = "CENTER",
							["halign"] = "LEFT",
						},
						["bg"] = {
							["color2"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5400000214576721, -- [4]
							},
							["type"] = 2,
							["br_texture"] = "None",
							["color1"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["br_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["inset"] = 0,
							["br_size"] = 10,
						},
						["is_inset"] = true,
					},
				},
				["01.Equipment"] = {
					["bg"] = {
						["color2"] = {
							0.3450980392156863, -- [1]
							0.6392156862745098, -- [2]
							1, -- [3]
							0.7000000178813934, -- [4]
						},
						["type"] = 1,
						["br_texture"] = "None",
						["br_size"] = 10,
						["br_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["inset"] = 0,
						["color1"] = {
							0.5019607843137255, -- [1]
							0.2941176470588235, -- [2]
							0.3254901960784314, -- [3]
							0.880000002682209, -- [4]
						},
					},
					["title"] = {
						["bg"] = {
							["color2"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5400000214576721, -- [4]
							},
							["type"] = 2,
							["br_texture"] = "None",
							["br_size"] = 10,
							["br_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["inset"] = 0,
							["color1"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
						},
						["text"] = {
							["flags"] = {
								["MONOCHROME"] = false,
								["SHADOW"] = true,
								["THICKOUTLINE"] = false,
								["OUTLINE"] = false,
							},
							["font"] = "Friz Quadrata TT",
							["halign"] = "LEFT",
							["color"] = {
								1, -- [1]
								0.9607843137254902, -- [2]
								0.3607843137254902, -- [3]
							},
							["padding"] = 2,
							["valign"] = "CENTER",
							["size"] = 8,
						},
						["inset"] = 0,
						["is_inset"] = true,
					},
				},
				["05.Quest"] = {
					["bg"] = {
						["color2"] = {
							0.3450980392156863, -- [1]
							0.6392156862745098, -- [2]
							1, -- [3]
							0.7000000178813934, -- [4]
						},
						["type"] = 1,
						["br_texture"] = "None",
						["color1"] = {
							0, -- [1]
							0.5137254901960784, -- [2]
							0.1803921568627451, -- [3]
							0.7000000178813934, -- [4]
						},
						["br_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["inset"] = 0,
						["br_size"] = 10,
					},
					["title"] = {
						["inset"] = 0,
						["text"] = {
							["flags"] = {
								["MONOCHROME"] = false,
								["OUTLINE"] = false,
								["THICKOUTLINE"] = false,
								["SHADOW"] = true,
							},
							["font"] = "Friz Quadrata TT",
							["size"] = 8,
							["color"] = {
								1, -- [1]
								0.9607843137254902, -- [2]
								0.3607843137254902, -- [3]
							},
							["padding"] = 2,
							["valign"] = "CENTER",
							["halign"] = "LEFT",
						},
						["bg"] = {
							["color2"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0.5400000214576721, -- [4]
							},
							["type"] = 2,
							["br_texture"] = "None",
							["color1"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								0, -- [4]
							},
							["br_color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["inset"] = 0,
							["br_size"] = 10,
						},
						["is_inset"] = true,
					},
				},
			},
			["money"] = {
				["text"] = {
					["font"] = "Friz Quadrata TT",
					["color"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						1, -- [4]
					},
					["padding"] = 7,
					["size"] = 12,
					["halign"] = "RIGHT",
				},
				["bg"] = {
					["br_texture"] = "pHishBorder3",
					["color1"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						0.800000011920929, -- [4]
					},
					["br_color"] = {
						0.9372549019607843, -- [1]
						0.9176470588235294, -- [2]
						0.8901960784313725, -- [3]
					},
					["inset"] = 3,
					["br_size"] = 16,
				},
			},
			["layout"] = {
				["sections"] = {
					["hpadding"] = 8,
					["compact"] = false,
					["vspacing"] = 0,
					["vpadding"] = 0,
					["hspacing"] = 0,
				},
				["general"] = {
					["strata"] = "BACKGROUND",
					["update_time"] = 0.3,
				},
				["buttons"] = {
					["indicators_size"] = 0.73,
					["vpadding"] = 3,
					["quality_glow_alpha"] = 0.5,
					["indicators_offset"] = 3,
					["hspacing"] = 0,
					["quality_glow_inset"] = 2,
					["vspacing"] = 0,
					["hpadding"] = 3,
					["size"] = 0.9,
				},
				["skins"] = {
					["bags"] = {
						["gloss"] = 1,
						["backdrop"] = true,
						["colors"] = {
						},
						["skinID"] = "Blizzard",
					},
				},
				["empties"] = {
					["vpadding"] = 0,
					["bg"] = {
						["type"] = 2,
						["color1"] = {
							0.3372549019607843, -- [1]
							0.3372549019607843, -- [2]
							0.3372549019607843, -- [3]
							0.7000000178813934, -- [4]
						},
					},
				},
				["counts"] = {
					["flags"] = {
						["OUTLINE"] = true,
						["SHADOW"] = false,
					},
					["font"] = "Arial Narrow",
					["color"] = {
						0.996078431372549, -- [1]
						[3] = 0.9490196078431372,
					},
					["valign"] = "BOTTOM",
					["size"] = 20,
					["halign"] = "RIGHT",
				},
				["order"] = {
					["customs"] = {
						{
							["order"] = "ORDER_ILEVEL",
							["sorting"] = "ORDER_ASCENDING",
						}, -- [1]
						{
							["order"] = "ORDER_QUALITY",
							["sorting"] = "ORDER_ASCENDING",
						}, -- [2]
					},
					["default"] = false,
				},
			},
			["mainwindow"] = {
				["search"] = {
					["vpadding"] = -5.5,
					["bg"] = {
						["color2"] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							1, -- [4]
						},
						["type"] = 2,
						["texture"] = "Blizzard Parchment",
						["br_texture"] = "pHishBorder3",
						["color1"] = {
							nil, -- [1]
							nil, -- [2]
							nil, -- [3]
							0.8500000089406967, -- [4]
						},
						["br_color"] = {
							0.7764705882352941, -- [1]
							0.7843137254901961, -- [2]
							0.803921568627451, -- [3]
						},
						["inset"] = 4,
						["br_size"] = 16,
					},
					["width"] = 0.5,
				},
				["layout"] = {
					["vspacing"] = 10.46460260801079,
					["hspacing"] = 663.5988328966409,
				},
				["bg"] = {
					["color2"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						1, -- [4]
					},
					["type"] = 2,
					["texture"] = "Blizzard Parchment",
					["br_texture"] = "pHishBorder3",
					["color1"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						0.8500000089406967, -- [4]
					},
					["br_color"] = {
						0.7764705882352941, -- [1]
						0.7843137254901961, -- [2]
						0.803921568627451, -- [3]
					},
					["inset"] = 4,
					["br_size"] = 16,
				},
				["title"] = {
					["inset"] = 4,
					["text"] = {
						["font"] = "Friz Quadrata TT",
						["color"] = {
							0.8705882352941177, -- [1]
							0.9490196078431372, -- [2]
						},
						["padding"] = 3,
						["size"] = 14,
					},
					["bg"] = {
						["color2"] = {
							0.9647058823529412, -- [1]
							0.9568627450980392, -- [2]
							1, -- [3]
							0.550000011920929, -- [4]
						},
						["type"] = 2,
						["color1"] = {
							0.984313725490196, -- [1]
							1, -- [2]
							1, -- [3]
							0, -- [4]
						},
					},
					["is_inset"] = true,
				},
			},
			["bankwindow"] = {
				["bg"] = {
					["br_texture"] = "pHishBorder3",
					["color1"] = {
						0.1333333333333333, -- [1]
						0.1058823529411765, -- [2]
						0.07843137254901961, -- [3]
						0.7800000011920929, -- [4]
					},
					["br_color"] = {
						nil, -- [1]
						0.8862745098039215, -- [2]
						0.7764705882352941, -- [3]
					},
					["inset"] = 4,
					["br_size"] = 16,
				},
			},
			["stackmode"] = 1,
			["bank"] = {
				["search"] = {
					["vpadding"] = -5.5,
					["bg"] = {
						["color2"] = {
							0.5529411764705883, -- [1]
							0.4705882352941176, -- [2]
							0.3764705882352941, -- [3]
							0.760000005364418, -- [4]
						},
						["type"] = 2,
						["br_texture"] = "pHishBorder3",
						["color1"] = {
							0.07450980392156863, -- [1]
							0.06274509803921569, -- [2]
							0.04705882352941176, -- [3]
							0.8500000089406967, -- [4]
						},
						["br_color"] = {
							nil, -- [1]
							0.9058823529411765, -- [2]
							0.7647058823529411, -- [3]
						},
						["inset"] = 4,
						["br_size"] = 16,
					},
					["width"] = 0.5,
				},
				["bg"] = {
					["color2"] = {
						0.5529411764705883, -- [1]
						0.4705882352941176, -- [2]
						0.3764705882352941, -- [3]
						0.760000005364418, -- [4]
					},
					["type"] = 2,
					["br_texture"] = "pHishBorder3",
					["color1"] = {
						0.07450980392156863, -- [1]
						0.06274509803921569, -- [2]
						0.04705882352941176, -- [3]
						0.8500000089406967, -- [4]
					},
					["br_color"] = {
						nil, -- [1]
						0.9058823529411765, -- [2]
						0.7647058823529411, -- [3]
					},
					["inset"] = 4,
					["br_size"] = 16,
				},
				["title"] = {
					["inset"] = 4,
					["text"] = {
						["font"] = "Friz Quadrata TT",
						["padding"] = 4,
						["size"] = 15,
					},
					["bg"] = {
						["color2"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							0.6100000143051148, -- [4]
						},
						["type"] = 2,
						["color1"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							0, -- [4]
						},
					},
					["is_inset"] = true,
				},
			},
			["bagswindow"] = {
				["bg"] = {
					["color2"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						0.9700000006705523, -- [4]
					},
					["type"] = 2,
					["br_texture"] = "pHishBorder3",
					["color1"] = {
						nil, -- [1]
						nil, -- [2]
						nil, -- [3]
						0.800000011920929, -- [4]
					},
					["br_color"] = {
						0.803921568627451, -- [1]
						0.803921568627451, -- [2]
						0.803921568627451, -- [3]
					},
					["inset"] = 4,
					["br_size"] = 16,
				},
			},
		},
	},
}
