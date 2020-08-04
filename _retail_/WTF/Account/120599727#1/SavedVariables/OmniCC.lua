
OmniCCDB = {
	["global"] = {
		["addonVersion"] = "8.3.5",
		["dbVersion"] = 5,
	},
	["profileKeys"] = {
		["Lachrymas - Silvermoon"] = "Default",
		["Qsilver - Silvermoon"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["rules"] = {
				{
					["patterns"] = {
						"LossOfControl", -- [1]
						"TotemFrame", -- [2]
					},
					["id"] = "Ignore",
					["priority"] = 1,
					["theme"] = "Ignore",
				}, -- [1]
				{
					["patterns"] = {
						"PlaterMainAuraIcon", -- [1]
						"PlaterSecondaryAuraIcon", -- [2]
						"ExtraIconRowIcon", -- [3]
					},
					["id"] = "Plater Nameplates Rule",
					["priority"] = 2,
					["theme"] = "Plater Nameplates Theme",
				}, -- [2]
			},
			["themes"] = {
				["Plater Nameplates Theme"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["soon"] = {
						},
						["minutes"] = {
						},
					},
					["enableText"] = false,
				},
				["Default"] = {
					["textStyles"] = {
						["soon"] = {
							["scale"] = 1.50000001490116,
						},
						["seconds"] = {
							["scale"] = 1.00000000745058,
						},
						["minutes"] = {
							["scale"] = 1.00000000745058,
						},
						["hours"] = {
							["scale"] = 0.700000002980232,
						},
						["charging"] = {
							["r"] = 1,
							["scale"] = 0.650000002235174,
							["g"] = 0.98,
							["b"] = 0.4,
						},
						["controlled"] = {
							["scale"] = 1.50000001490116,
						},
					},
					["tenthsDuration"] = 5,
					["fontOutline"] = "THICKOUTLINE",
					["minSize"] = 0,
					["mmSSDuration"] = 900,
					["spiralOpacity"] = 1.00999997742474,
					["minEffectDuration"] = 0,
					["fontSize"] = 15,
				},
				["Ignore"] = {
					["textStyles"] = {
						["soon"] = {
							["scale"] = 1.50000001490116,
						},
						["seconds"] = {
							["scale"] = 1.00000000745058,
						},
						["minutes"] = {
							["scale"] = 1.00000000745058,
						},
						["hours"] = {
							["scale"] = 0.700000002980232,
						},
						["charging"] = {
							["r"] = 1,
							["scale"] = 0.650000002235174,
							["g"] = 0.98,
							["b"] = 0.4,
						},
						["controlled"] = {
							["scale"] = 1.50000001490116,
						},
					},
					["tenthsDuration"] = 5,
					["fontOutline"] = "THICKOUTLINE",
					["mmSSDuration"] = 900,
					["enableText"] = false,
					["spiralOpacity"] = 1.00999997742474,
					["minEffectDuration"] = 0,
					["fontSize"] = 15,
				},
			},
		},
	},
}
OmniCC4Config = {
	["engine"] = "ScriptUpdater",
	["groups"] = {
		{
			["id"] = "Ignore",
			["rules"] = {
				"LossOfControl", -- [1]
				"TotemFrame", -- [2]
			},
			["enabled"] = true,
		}, -- [1]
	},
	["groupSettings"] = {
		["base"] = {
			["enabled"] = true,
			["fontFace"] = "Fonts\\FRIZQT__.TTF",
			["fontSize"] = 15,
			["effect"] = "pulse",
			["yOff"] = 0,
			["minEffectDuration"] = 0,
			["minSize"] = 0,
			["spiralOpacity"] = 1.00999997742474,
			["scaleText"] = true,
			["xOff"] = 0,
			["tenthsDuration"] = 5,
			["fontOutline"] = "THICKOUTLINE",
			["anchor"] = "CENTER",
			["mmSSDuration"] = 900,
			["minDuration"] = 2,
			["styles"] = {
				["soon"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1.50000001490116,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["seconds"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1.00000000745058,
					["g"] = 1,
					["b"] = 0.1,
				},
				["minutes"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1.00000000745058,
					["g"] = 1,
					["b"] = 1,
				},
				["hours"] = {
					["a"] = 1,
					["r"] = 0.7,
					["scale"] = 0.700000002980232,
					["g"] = 0.7,
					["b"] = 0.7,
				},
				["charging"] = {
					["a"] = 0.8,
					["r"] = 1,
					["scale"] = 0.650000002235174,
					["g"] = 0.98,
					["b"] = 0.4,
				},
				["controlled"] = {
					["scale"] = 1.50000001490116,
				},
			},
		},
		["Ignore"] = {
			["enabled"] = false,
			["fontFace"] = "Fonts\\FRIZQT__.TTF",
			["styles"] = {
				["seconds"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1.00000000745058,
					["g"] = 1,
					["b"] = 0.1,
				},
				["minutes"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1.00000000745058,
					["g"] = 1,
					["b"] = 1,
				},
				["soon"] = {
					["a"] = 1,
					["r"] = 1,
					["scale"] = 1.50000001490116,
					["g"] = 0.1,
					["b"] = 0.1,
				},
				["hours"] = {
					["a"] = 1,
					["r"] = 0.7,
					["scale"] = 0.700000002980232,
					["g"] = 0.7,
					["b"] = 0.7,
				},
				["charging"] = {
					["a"] = 0.8,
					["r"] = 1,
					["scale"] = 0.650000002235174,
					["g"] = 0.98,
					["b"] = 0.4,
				},
				["controlled"] = {
					["scale"] = 1.50000001490116,
				},
			},
			["effect"] = "pulse",
			["minDuration"] = 2,
			["mmSSDuration"] = 900,
			["anchor"] = "CENTER",
			["spiralOpacity"] = 1.00999997742474,
			["yOff"] = 0,
			["xOff"] = 0,
			["tenthsDuration"] = 5,
			["fontOutline"] = "THICKOUTLINE",
			["minSize"] = 0.5,
			["minEffectDuration"] = 0,
			["scaleText"] = true,
			["fontSize"] = 15,
		},
	},
	["version"] = "8.2.5",
}
