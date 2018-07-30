﻿--
--	ClassMods Options - target bar panel
--

local L = LibStub("AceLocale-3.0"):GetLocale("ClassMods")

function ClassMods.Options:Panel_TargetBar(ord)
	local DB = _G.ClassMods.Options.DB
	return {
		order = ord,
		type = "group",
		name = L["Target Bar"],
		childGroups = "tab",
		args = {
			maintab = {
				order = 1,
				type = "group",
				name = L["Target Bar"],
				args = {
					enabled = {
						type = "toggle",
						order = 2,
						name = L["Enable"],
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) ClassMods.Options:CollapseAll(); DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					incomingheals = {
						type = "toggle",
						order = 4,
						name = L["Incoming heals"],
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					smoothbar = {
						type = "toggle",
						order = 6,
						name = L["Bar smoothing"],
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					healthnumber = {
						type = "toggle",
						order = 8,
						name = L["Current health number"],
						desc = L["RESOURCEBARNUMBERDESC_ENABLE"],
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					abbreviatenumber = {
						type = "toggle",
						order = 9,
						name = L["Abbreviate number"],
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					targethealth = {
						type = "toggle",
						order = 10,
						name = L["Target health percentage"],
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					targettype = {
						type = "toggle",
						order = 12,
						name = L["Target creature type"],
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					resource = {
						type = "toggle",
						order = 14,
						name = L["Target resource"],
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					spacer17 = { order = 17, type = "description", name = " ", desc = "", width = "full"},
					updateinterval = {
						type = "range",
						order = 18,
						name = L["Set update interval"],
						desc = L["CLASSMODSUPDATEINTERVAL_DESC"],
						disabled = function(info) return (not DB.targetbar["enabled"] or DB.overrideinterval) end,
						isPercent = false,
						min = 0.01, max = 1, step = 0.01,
						get = function(info) return(DB.targetbar[info[#info] ]) end,
						set = function(info, size) DB.targetbar[info[#info] ] = (size);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					width = {
						type = "range",
						order = 22,
						name = L["Width"],
						min = 6, softMax = 600, max = 1000, step = 1,
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return (DB.targetbar[info[#info] ]) end,
						set = function(info, size) DB.targetbar[info[#info] ] = (size);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					height = {
						type = "range",
						order = 26,
						name = L["Height"],
						min = 6, softMax = 600, max = 1000, step = 1,
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return (DB.targetbar[info[#info] ]) end,
						set = function(info, size) DB.targetbar[info[#info] ] = (size);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					spacer27 = { order = 27, type = "description", name = " ", desc = "", width = "full" },
					bartexture = {
						type = "select",
						width = "double",
						dialogControl = 'LSM30_Statusbar',
						order = 28,
						name = L["Texture"],
						values = AceGUIWidgetLSMlists.statusbar,
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					spacer29 = { order = 29, type = "description", name = " ", desc = "", width = "full" },
					reactioncolored = {
						type = "toggle",
						order = 30,
						name = L["Use target reaction colors for the bar"],
						width = "double",
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					barcolor = {
						type = "color",
						order = 32,
						name = L["Normal color"],
						desc = L["RESOURCEBARCOLORNORM_DESC"],
						hasAlpha = true,
						hidden = function(info) return (DB.targetbar.reactioncolored) end,
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return unpack(DB.targetbar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.targetbar[info[#info] ] = {r, g, b, a};ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					classcolored = {
						type = "toggle",
						order = 34,
						name = L["Use class colors for the bar"],
						width = "double",
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					playersonly = {
						type = "toggle",
						order = 36,
						name = L["Players only"],
						hidden = function(info) return (not DB.targetbar.classcolored) end,
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					spacer37 = { order = 37, type = "description", name = " ", desc = "", width = "full"},
					lowwarn = {
						type = "toggle",
						order = 38,
						name = L["Low resource change"],
						desc = L["RESOURCEBARLOWWARNDESC_ENABLE"],
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					lowwarnthreshold = {
						type = "range",
						order = 40,
						name = L["Low warning %"],
						desc = L["RESOURCEBARHIGHWARNTHRESHOLD_DESC"],
						hidden = function(info) return(not DB.targetbar.lowwarn) end,
						disabled = function(info) return not DB.targetbar["enabled"] end,
						isPercent = true,
						min = .1, max = 1, step = .05,
						get = function(info) return(DB.targetbar[info[#info] ]) end,
						set = function(info, size) DB.targetbar[info[#info] ] = (size);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					barcolorlow = {
						type = "color",
						order = 42,
						name = L["Low color"],
						desc = L["RESOURCEBARCOLORNORM_DESC"],
						hasAlpha = true,
						hidden = function(info) return not DB.targetbar.lowwarn end,
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return unpack(DB.targetbar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.targetbar[info[#info] ] = {r, g, b, a};ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					spacer43 = { order = 43, type = "description", name = " ", desc = "", width = "full"},
					classification = {
						type = "toggle",
						order = 44,
						width = "full",
						name = L["Target classification"],
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					iconsize = {
						type = "range",
						order = 46,
						name = L["Icon size"],
						min = 10, max = 100, step = 1,
						disabled = function(info) return (not DB.targetbar.enabled) end,
						get = function(info) return (DB.targetbar[info[#info] ]) end,
						set = function(info, size) DB.targetbar[info[#info] ] = (size);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					xoffset = {
						type = "range",
						order = 48,
						name = L["X offset"],
						min = -900, softMin = -200, softMax = 200, max = 900, step = 1,
						get = function(info) return (DB.targetbar[info[#info] ]) end,
						set = function(info, size) DB.targetbar[info[#info] ] = (size);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					yoffset = {
						type = "range",
						order = 50,
						name = L["Y offset"],
						min = -900, softMin = -200, softMax = 200, max = 900, step = 1,
						get = function(info) return (DB.targetbar[info[#info] ]) end,
						set = function(info, size) DB.targetbar[info[#info] ] = (size);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
				},
			},
			alphastuff = {
				order = 6,
				type = "group",
				name = L["Bar alpha"],
				disabled = function(info) return not DB.targetbar["enabled"] end,
				args = {
					activealpha = {
						type = "range",
						order = 24,
						name = L["Active alpha"],
						desc = L["RESOURCEBARACTIVEALPHA_DESC"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return (DB.targetbar[info[#info] ]) end,
						set = function(info, value) DB.targetbar[info[#info] ] = (value);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					inactivealpha = {
						type = "range",
						order = 26,
						name = L["Inactive alpha"],
						desc = L["RESOURCEBARINACTIVEALPHA_DESC"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return (DB.targetbar[info[#info] ]) end,
						set = function(info, value) DB.targetbar[info[#info] ] = (value);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					spacer27 = { order = 27, type = "description", name = " ", desc = "", width = "full"},
					oocoverride = {
						type = "toggle",
						order = 28,
						name = L["OOC override"],
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					mountoverride = {
						type = "toggle",
						order = 32,
						name = L["Mounted override"],
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					deadoverride = {
						type = "toggle",
						order = 34,
						name = L["Dead override"],
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					spacer36 = { order = 36, type = "description", name = " ", desc = "", width = "full"},
					oocoverridealpha = {
						type = "range",
						order = 38,
						name = L["OOC alpha"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info)
							if not DB.targetbar["oocoverride"] then return true end
							if not DB.targetbar["enabled"] then return true end
							return false end,
						get = function(info) return (DB.targetbar[info[#info] ]) end,
						set = function(info, value) DB.targetbar[info[#info] ] = (value);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					mountoverridealpha = {
						type = "range",
						order = 40,
						name = L["Mounted alpha"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info)
							if not DB.targetbar["mountoverride"] then return true end
							if not DB.targetbar["enabled"] then return true end
							return false end,
						get = function(info) return (DB.targetbar[info[#info] ]) end,
						set = function(info, value) DB.targetbar[info[#info] ] = (value);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					deadoverridealpha = {
						type = "range",
						order = 42,
						name = L["Dead alpha"],
						desc = L["RESOURCEBARDEADALPHA_DESC"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info)
							if not DB.targetbar["deadoverride"] then return true end
							if not DB.targetbar["enabled"] then return true end
							return false end,
						get = function(info) return (DB.targetbar[info[#info] ]) end,
						set = function(info, value) DB.targetbar[info[#info] ] = (value);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					notargetoverride = {
						type = "toggle",
						order = 44,
						name = L["No target override"],
						disabled = function(info) return not DB.targetbar["enabled"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					notargetoverridealpha = {
						type = "range",
						order = 46,
						name = L["No target alpha"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info)
							if not DB.targetbar["deadoverride"] then return true end
							if not DB.targetbar["enabled"] then return true end
							return false end,
						get = function(info) return (DB.targetbar[info[#info] ]) end,
						set = function(info, value) DB.targetbar[info[#info] ] = (value);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
				},
			},
			fonts = {
				type = "group",
				order = 18,
				name = L["Fonts"],
				disabled = function(info) return not DB.targetbar["enabled"] end,
				args = {
					healthfont = {
						type = "group",
						order = 26,
						name = L["Health font"],
						guiInline = true,
						args = {
							font = {
								type = "select",
								width = "double",
								dialogControl = "LSM30_Font",
								order = 2,
								name = L["Font face"],
								values = AceGUIWidgetLSMlists.font,
								get = function(info) return DB.targetbar[info[#info-1] ][1] end,
								set = function(info, font) DB.targetbar[info[#info-1] ][1] = font;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
							healthfontcolor = {
								type = "color",
								order = 4,
								name = L["Color"],
								hasAlpha = true,
								get = function(info) return unpack(DB.targetbar[info[#info] ]) end,
								set = function(info, r, g, b, a) DB.targetbar[info[#info] ] = {r, g, b, a};ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
							spacer5 = { order = 5, type = "description", name = " ", desc = "" },
							size = {
								type = "range",
								order = 6,
								name = L["Font size"],
								min = 6, max = 40, step = 1,
								get = function(info) return (DB.targetbar[info[#info-1] ][2]) end,
								set = function(info, size) DB.targetbar[info[#info-1] ][2] = (size);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
							healthfontoffset = {
								type = "range",
								order = 8,
								name = L["Font offset"],
								desc = L["DESC_FONTOFFSET"],
								min = -900, softMin = -200, softMax = 200, max = 900, step = 1,
								get = function(info) return (DB.targetbar[info[#info] ]) end,
								set = function(info, size) DB.targetbar[info[#info] ] = (size);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
							flags = {
								type = "multiselect",
								order = 10,
								name = L["Font flags"],
								values = ClassMods.Options.fontFlagTable,
								get = function(info, key) return(tContains({strsplit(",", DB.targetbar[info[#info-1] ][3])}, key) and true or false) end,
								set = function(info, keyname, state) ClassMods.Options:SetupFontFlags(DB.targetbar[info[#info-1] ], keyname, state);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
						},
					},
					percentfont = {
						type = "group",
						order = 26,
						name = L["Percent Health font"],
						guiInline = true,
						args = {
							font = {
								type = "select",
								width = "double",
								dialogControl = "LSM30_Font",
								order = 2,
								name = L["Font face"],
								values = AceGUIWidgetLSMlists.font,
								get = function(info) return DB.targetbar[info[#info-1] ][1] end,
								set = function(info, font) DB.targetbar[info[#info-1] ][1] = font;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
							percentfontcolor = {
								type = "color",
								order = 4,
								name = L["Color"],
								hasAlpha = true,
								get = function(info) return unpack(DB.targetbar[info[#info] ]) end,
								set = function(info, r, g, b, a) DB.targetbar[info[#info] ] = {r, g, b, a};ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
							spacer5 = { order = 5, type = "description", name = " ", desc = "" },
							size = {
								type = "range",
								order = 6,
								name = L["Font size"],
								min = 6, max = 40, step = 1,
								get = function(info) return (DB.targetbar[info[#info-1] ][2]) end,
								set = function(info, size) DB.targetbar[info[#info-1] ][2] = (size);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
							percentfontoffset = {
								type = "range",
								order = 8,
								name = L["Font offset"],
								desc = L["DESC_FONTOFFSET"],
								min = -900, softMin = -200, softMax = 200, max = 900, step = 1,
								get = function(info) return (DB.targetbar[info[#info] ]) end,
								set = function(info, size) DB.targetbar[info[#info] ] = (size);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
							flags = {
								type = "multiselect",
								order = 10,
								name = L["Font flags"],
								values = ClassMods.Options.fontFlagTable,
								get = function(info, key) return(tContains({strsplit(",", DB.targetbar[info[#info-1] ][3])}, key) and true or false) end,
								set = function(info, keyname, state) ClassMods.Options:SetupFontFlags(DB.targetbar[info[#info-1] ], keyname, state);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
						},
					},
					typefont = {
						type = "group",
						order = 28,
						name = L["Creature type font"],
						guiInline = true,
						args = {
							font = {
								type = "select",
								width = "double",
								dialogControl = "LSM30_Font",
								order = 2,
								name = L["Font face"],
								values = AceGUIWidgetLSMlists.font,
								get = function(info) return DB.targetbar[info[#info-1] ][1] end,
								set = function(info, font) DB.targetbar[info[#info-1] ][1] = font;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
							typefontcolor = {
								type = "color",
								order = 4,
								name = L["Color"],
								hasAlpha = true,
								get = function(info) return unpack(DB.targetbar[info[#info] ]) end,
								set = function(info, r, g, b, a) DB.targetbar[info[#info] ] = {r, g, b, a};ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
							spacer5 = { order = 5, type = "description", name = " ", desc = "" },
							size = {
								type = "range",
								order = 6,
								name = L["Font size"],
								min = 6, max = 40, step = 1,
								get = function(info) return (DB.targetbar[info[#info-1] ][2]) end,
								set = function(info, size) DB.targetbar[info[#info-1] ][2] = (size);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
							typefontoffset = {
								type = "range",
								order = 8,
								name = L["Font offset"],
								desc = L["DESC_FONTOFFSET"],
								min = -900, softMin = -200, softMax = 200, max = 900, step = 1,
								get = function(info) return (DB.targetbar[info[#info] ]) end,
								set = function(info, size) DB.targetbar[info[#info] ] = (size);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
							flags = {
								type = "multiselect",
								order = 10,
								name = L["Font flags"],
								values = ClassMods.Options.fontFlagTable,
								get = function(info, key) return(tContains({strsplit(",", DB.targetbar[info[#info-1] ][3])}, key) and true or false) end,
								set = function(info, keyname, state) ClassMods.Options:SetupFontFlags(DB.targetbar[info[#info-1] ], keyname, state);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
						},
					},
				},
			},
			backdrop = {
				type = "group",
				order = 22,
				name = L["Backdrop"],
				disabled = function(info) return not DB.targetbar["enabled"] end,
				args = {
					enablebackdrop = {
						type = "toggle",
						order = 1,
						name = L["Enable"],
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					backdroptexture = {
						type = "select",
						width = "double",
						dialogControl = 'LSM30_Background',
						order = 2,
						name = L["Backdrop texture"],
						values = AceGUIWidgetLSMlists.background,
						disabled = function(info) return not DB.targetbar["enablebackdrop"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					colorbackdrop = {
						type = "toggle",
						order = 3,
						name = L["Color the backdrop"],
						disabled = function(info) return not DB.targetbar["enablebackdrop"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					backdropcolor = {
						type = "color",
						order = 5,
						name = L["Backdrop color"],
						hasAlpha = true,
						disabled = function(info) return not DB.targetbar["enablebackdrop"] end,
						hidden = function(info) return not DB.targetbar.colorbackdrop end,
						get = function(info) return unpack(DB.targetbar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.targetbar[info[#info] ] = {r, g, b, a};ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					spacer6 = { order = 6, type = "description", name = " ", desc = "", width = "half", hidden = function(info) return not DB.targetbar.colorbackdrop end },
					tile = {
						type = "toggle",
						order = 7,
						name = L["Tile the backdrop"],
						disabled = function(info) return not DB.targetbar["enablebackdrop"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					tilesize = {
						type = "range",
						order = 8,
						name = L["Tile size"],
						min = -100, softMin = -30, softMax = 30, max = 100, step = 1,
						disabled = function(info) return not DB.targetbar["enablebackdrop"] end,
						hidden = function(info) return not DB.targetbar.tile end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					spacer = { order = 11, type = "description", name = "", desc = "", width = "full"},
					backdropoffsets = {
						type = "group",
						order = 14,
						name = L["Offsets"],
						guiInline = true,
						args = {
							offsetX1 = {
								type = "range",
								order = 1,
								name = L["Top-left X"],
								min = -50, softMin = -10, softMax = 0, max = 50, step = 1,
								disabled = function(info) return not DB.targetbar["enablebackdrop"] end,
								get = function(info) return (DB.targetbar[info[#info-1] ][1]) end,
								set = function(info, offset) DB.targetbar[info[#info-1] ][1] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
							offsetY1 = {
								type = "range",
								order = 2,
								name = L["Top-left Y"],
								min = -50, softMin = 0, softMax = 10, max = 50, step = 1,
								disabled = function(info) return not DB.targetbar["enablebackdrop"] end,
								get = function(info) return (DB.targetbar[info[#info-1] ][2]) end,
								set = function(info, offset) DB.targetbar[info[#info-1] ][2] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
							spacer6 = { order = 6, type = "description", name = "", desc = "", width = "half"},
							offsetX2 = {
								type = "range",
								order = 8,
								name = L["Bottom-right X"],
								min = -50, softMin = 0, softMax = 10, max = 50, step = 1,
								disabled = function(info) return not DB.targetbar["enablebackdrop"] end,
								get = function(info) return (DB.targetbar[info[#info-1] ][3]) end,
								set = function(info, offset) DB.targetbar[info[#info-1] ][3] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
							offsetY2 = {
								type = "range",
								order = 10,
								name = L["Bottom-right Y"],
								min = -50, softMin = -10, softMax = 0, max = 50, step = 1,
								disabled = function(info) return not DB.targetbar["enablebackdrop"] end,
								get = function(info) return (DB.targetbar[info[#info-1] ][4]) end,
								set = function(info, offset) DB.targetbar[info[#info-1] ][4] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
						},
					},
					spacer = { order = 16, type = "description", name = "", desc = "", width = "full"},
				},
			},
			border = {
				type = "group",
				order = 24,
				name = L["Border"],
				disabled = function(info) return not DB.targetbar["enabled"] end,
				args = {
					enableborder = {
						type = "toggle",
						order = 1,
						name = L["Enable"],
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					bordertexture = {
						type = "select",
						width = "double",
						dialogControl = 'LSM30_Border',
						order = 2,
						name = L["Border texture"],
						values = AceGUIWidgetLSMlists.border,
						disabled = function(info) return not DB.targetbar["enableborder"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					bordercolor = {
						type = "color",
						order = 3,
						name = L["Border color"],
						hasAlpha = true,
						disabled = function(info) return not DB.targetbar["enableborder"] end,
						get = function(info) return unpack(DB.targetbar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.targetbar[info[#info] ] = {r, g, b, a};ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					edgesize = {
						type = "range",
						order = 4,
						name = L["Edge size"],
						min = -100, softMin = -16, softMax = 16, max = 100, step = 1,
						disabled = function(info) return not DB.targetbar["enableborder"] end,
						get = function(info) return DB.targetbar[info[#info] ] end,
						set = function(info, value) DB.targetbar[info[#info] ] = value;ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
					},
					spacer = { order = 7, type = "description", name = "", desc = "", width = "full"},
					backdropinsets = {
						type = "group",
						order = 10,
						name = L["Insets"],
						guiInline = true,
						args = {
							left = {
								type = "range",
								order = 1,
								name = L["Left"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.targetbar["enableborder"] end,
								get = function(info) return (DB.targetbar[info[#info-1] ][1]) end,
								set = function(info, offset) DB.targetbar[info[#info-1] ][1] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
							right = {
								type = "range",
								order = 2,
								name = L["Right"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.targetbar["enableborder"] end,
								get = function(info) return (DB.targetbar[info[#info-1] ][2]) end,
								set = function(info, offset) DB.targetbar[info[#info-1] ][2] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
							spacer3 = { order = 3, type = "description", name = "", desc = "", width = "half"},
							top = {
								type = "range",
								order = 4,
								name = L["Top"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.targetbar["enableborder"] end,
								get = function(info) return (DB.targetbar[info[#info-1] ][3]) end,
								set = function(info, offset) DB.targetbar[info[#info-1] ][3] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
							bottom = {
								type = "range",
								order = 5,
								name = L["Bottom"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.targetbar["enableborder"] end,
								get = function(info) return (DB.targetbar[info[#info-1] ][4]) end,
								set = function(info, offset) DB.targetbar[info[#info-1] ][4] = (offset);ClassMods.Options:LockDown(ClassMods.SetupTargetBar) end,
							},
						},
					},
				},
			},
		},
	}
end