
OmniCC4Config = {
	["groupSettings"] = {
		["base"] = {
			["enabled"] = true,
			["fontFace"] = "Fonts\\FRIZQT__.TTF",
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
			["effect"] = "pulse",
			["minDuration"] = 2.00000002980232,
			["mmSSDuration"] = 900.000012516975,
			["anchor"] = "CENTER",
			["spiralOpacity"] = 1.00999997742474,
			["yOff"] = 0,
			["xOff"] = 0,
			["tenthsDuration"] = 5.00000007450581,
			["fontOutline"] = "THICKOUTLINE",
			["minSize"] = 0,
			["minEffectDuration"] = 0,
			["scaleText"] = true,
			["fontSize"] = 15,
		},
		["Ignore"] = {
			["enabled"] = false,
			["fontFace"] = "Fonts\\FRIZQT__.TTF",
			["fontSize"] = 15,
			["effect"] = "pulse",
			["scaleText"] = true,
			["minEffectDuration"] = 0,
			["minSize"] = 0.5,
			["spiralOpacity"] = 1.00999997742474,
			["minDuration"] = 2,
			["xOff"] = 0,
			["tenthsDuration"] = 5,
			["fontOutline"] = "THICKOUTLINE",
			["anchor"] = "CENTER",
			["mmSSDuration"] = 900,
			["yOff"] = 0,
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
		},
	},
	["version"] = "8.0.1",
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
	["engine"] = "ScriptUpdater",
}
