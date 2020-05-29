
PlaterDB = {
	["profileKeys"] = {
		["Qsilver - Silvermoon"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["script_data"] = {
				{
					["Enabled"] = true,
					["Revision"] = 156,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    --restore the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)    \n    \nend\n\n\n",
					["Icon"] = 135996,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1537884697,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can change the nameplate color\n    if (envTable.CanChangeNameplateColor) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n",
					["Name"] = "Unit - Important [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Highlight a nameplate of an important Add. Add the unit name or NpcID into the trigger box to add more.",
					["NpcNames"] = {
						"135029", -- [1]
						"134388", -- [2]
						"134612", -- [3]
						"133361", -- [4]
						"136330", -- [5]
						"130896", -- [6]
						"129758", -- [7]
						"Healing Tide Totem", -- [8]
						"131009", -- [9]
					},
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)    \n    --change the nameplate color to this if allowed\n    envTable.CanChangeNameplateColor = false --change to true to change the color\n    envTable.NameplateColor = \"pink\"\n    envTable.NameplateSizeOffset = 6 --increase the nameplate height by this value\n    envTable.GlowAlpha = 0.5 --amount of alpha in the outside glow effect\n    \n    --create a glow effect around the nameplate\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar, envTable.NameplateColor)\n    envTable.glowEffect:SetOffset (-27, 25, 9, -11)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() --\n    \n    --set the glow effect alpha\n    envTable.glowEffect:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n--[=[\nUsing spellIDs for multi-language support\n\n135029 - A Knot of Snakes (Temple of Sethraliss)\n135388 - A Knot of Snakes (Temple of Sethraliss)\n134612 - Grasping Tentacles (Shrine of the Storm)\n133361 - Wasting Servant (Waycrest Manor)\n136330 - Soul Thorns (Waycrest Manor)\n130896 - Blackout Barrel (Freehold)\n129758 - Irontide Grenadier (Freehold)\n131009 - Spirit of Gold (Atal`Dazar)\n--]=]",
				}, -- [1]
				{
					["Enabled"] = true,
					["Revision"] = 399,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Hide()\n    \nend",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.buffIconGlow:Show()\n    \nend",
					["ScriptType"] = 1,
					["Time"] = 1539013601,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \n    \nend",
					["Name"] = "Aura - Buff Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						275826, -- [1]
						272888, -- [2]
						272659, -- [3]
						267901, -- [4]
						267830, -- [5]
						265393, -- [6]
					},
					["Desc"] = "Add the buff name in the trigger box.",
					["NpcNames"] = {
					},
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.buffIconGlow = envTable.buffIconGlow or Plater.CreateIconGlow (self)\n    \nend",
				}, -- [2]
				{
					["Enabled"] = true,
					["Revision"] = 391,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Hide()\n    \n    envTable.BackgroundFlash:Stop()\n    \n    unitFrame:StopFrameShake (envTable.FrameShake)    \n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    \n    envTable.BackgroundFlash:Play()\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1561923707,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Very Important [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						257785, -- [1]
						267237, -- [2]
						266951, -- [3]
						267273, -- [4]
						267433, -- [5]
						263066, -- [6]
						255577, -- [7]
						255371, -- [8]
					},
					["Desc"] = "Highlight a very important cast applying several effects into the Cast Bar. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.8 --0.8\n    local CONFIG_BORDER_GLOW_ALPHA = 0.3 --0.3\n    local CONFIG_SHAKE_DURATION = 0.2 --0.2\n    local CONFIG_SHAKE_AMPLITUDE = 5 --5\n    \n    --create a glow effect in the border of the cast bar\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (self)\n    envTable.glowEffect:SetOffset (-32, 30, 7, -9)\n    envTable.glowEffect:SetAlpha (CONFIG_BORDER_GLOW_ALPHA)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+40, self:GetHeight()+20, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, 1)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, CONFIG_SHAKE_DURATION, CONFIG_SHAKE_AMPLITUDE, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))    \n    \n    \n    --update the config for the flash here so it wont need a /reload\n    fadeIn:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)\n    fadeOut:SetDuration (CONFIG_BACKGROUND_FLASH_DURATION/2)    \n    \n    --update the config for the skake here so it wont need a /reload\n    envTable.FrameShake.OriginalAmplitude = CONFIG_SHAKE_AMPLITUDE\n    envTable.FrameShake.OriginalDuration = CONFIG_SHAKE_DURATION  \n    \nend",
				}, -- [3]
				{
					["Enabled"] = true,
					["Revision"] = 324,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.glowEffect:Hide()\n    \n    envTable.overlaySpark:Hide()\n    envTable.topArrow:Hide()\n    \n    Plater.RefreshNameplateColor (unitFrame)\n    \n    envTable.smallScaleAnimation:Stop()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight)\nend\n\n\n",
					["Icon"] = 2175503,
					["Author"] = "Bombad�o-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.glowEffect:Show()\n    envTable.overlaySpark:Show()\n    \n    if (envTable.ShowArrow) then\n        envTable.topArrow:Show()\n    end\n    \n    Plater.FlashNameplateBorder (unitFrame, 0.05)   \n    Plater.FlashNameplateBody (unitFrame, \"\", 0.075)\n    \n    envTable.smallScaleAnimation:Play()\n    \n    --increase the nameplate size\n    local nameplateHeight = Plater.db.profile.plate_config.enemynpc.health_incombat [2]\n    unitFrame.healthBar:SetHeight (nameplateHeight + envTable.NameplateSizeOffset)\n    \n    envTable.overlaySpark.height = nameplateHeight + 32\n    \n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \n    \nend\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1540663131,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the percent\n    envTable.overlaySpark:SetPoint (\"left\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100)-16, 0)\n    \n    envTable.topArrow:SetPoint (\"bottomleft\", unitFrame.healthBar, \"topleft\", unitFrame.healthBar:GetWidth() * (envTable._CastPercent / 100) - 4, 2 )\n    \n    --forces the script to update on a 60Hz base\n    self.ThrottleUpdate = 0.016\n    \n    --update the health bar color coloring from yellow to red\n    --Plater.SetNameplateColor (unitFrame, max (envTable._CastPercent/100, .66), abs (envTable._CastPercent/100 - 1), 0, 1)\n    \n    Plater.SetNameplateColor (unitFrame, envTable.HealthBarColor)\n    envTable.glowEffect.Texture:SetAlpha (envTable.GlowAlpha)\n    \nend\n\n\n",
					["Name"] = "Explosion Affix M+ [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						240446, -- [1]
						273577, -- [2]
					},
					["Desc"] = "Apply several animations when the explosion orb cast starts on a Mythic Dungeon with Explosion Affix",
					["NpcNames"] = {
					},
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.NameplateSizeOffset = 3\n    envTable.GlowAlpha = .45\n    envTable.ShowArrow = true\n    envTable.ArrowAlpha = .45    \n    envTable.HealthBarColor = \"orange\"\n    \n    --custom frames\n    envTable.glowEffect = envTable.glowEffect or Plater.CreateNameplateGlow (unitFrame.healthBar)\n    --envTable.glowEffect:Show() --envTable.glowEffect:Hide() \n    envTable.glowEffect:SetOffset (-27, 25, 6, -8)\n    \n    --creates the spark to show the cast progress inside the health bar\n    envTable.overlaySpark = envTable.overlaySpark or Plater:CreateImage (unitFrame.healthBar)\n    envTable.overlaySpark:SetBlendMode (\"ADD\")\n    envTable.overlaySpark.width = 32\n    envTable.overlaySpark.height = 36\n    envTable.overlaySpark.alpha = .9\n    envTable.overlaySpark.texture = [[Interface\\CastingBar\\UI-CastingBar-Spark]]\n    \n    envTable.topArrow = envTable.topArrow or Plater:CreateImage (unitFrame.healthBar)\n    envTable.topArrow:SetBlendMode (\"ADD\")\n    envTable.topArrow.width = 8\n    envTable.topArrow.height = 8\n    envTable.topArrow.alpha = envTable.ArrowAlpha\n    envTable.topArrow.texture = [[Interface\\BUTTONS\\Arrow-Down-Up]]\n    \n    --scale animation\n    envTable.smallScaleAnimation = envTable.smallScaleAnimation or Plater:CreateAnimationHub (unitFrame.healthBar)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 1, 0.075, 1, 1, 1.08, 1.08)\n    Plater:CreateAnimation (envTable.smallScaleAnimation, \"SCALE\", 2, 0.075, 1, 1, 0.95, 0.95)    \n    --envTable.smallScaleAnimation:Play() --envTable.smallScaleAnimation:Stop()\n    \nend\n\n\n\n\n\n\n\n",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 232,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Hide()\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura",
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.debuffIconGlow:Show()\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1538429739,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Aura - Debuff Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add the debuff name in the trigger box.",
					["NpcNames"] = {
					},
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --creates a glow around the icon\n    envTable.debuffIconGlow = envTable.debuffIconGlow or Plater.CreateIconGlow (self)\n    \nend\n\n\n",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 574,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end    \n    \n    --restore the cast bar to its original height\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n        envTable.OriginalHeight = nil\n    end\n    \n    --stop the camera shake\n    unitFrame:StopFrameShake (envTable.FrameShake)\n    \n    envTable.FullBarFlash:Stop()\n    envTable.BackgroundFlash:Stop()\n    \nend\n\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --don't execute on battlegrounds and arenas\n    if (Plater.ZoneInstanceType == \"arena\" or Plater.ZoneInstanceType == \"pvp\") then\n        return\n    end\n    \n    --play flash animations\n    envTable.FullBarFlash:Play()\n    \n    --restoring the default size (not required since it already restore in the hide script)\n    if (envTable.OriginalHeight) then\n        self:SetHeight (envTable.OriginalHeight)\n    end\n    \n    --increase the cast bar size\n    local height = self:GetHeight()\n    envTable.OriginalHeight = height\n    \n    self:SetHeight (height + envTable.CastBarHeightAdd)\n    \n    Plater.SetCastBarBorderColor (self, 1, .2, .2, 0.4)\n    \n    unitFrame:PlayFrameShake (envTable.FrameShake)\n    \n    --set the color of the cast bar to dark orange (only if can be interrupted)\n    --Plater auto set this color to default when a new cast starts, no need to reset this value at OnHide.    \n    if (envTable._CanInterrupt) then\n        self:SetStatusBarColor (Plater:ParseColors (envTable.CastbarColor))\n    end\n    \n    envTable.BackgroundFlash:Play()\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1561924439,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Name"] = "Cast - Big Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						258153, -- [1]
						258313, -- [2]
						257069, -- [3]
						274569, -- [4]
						278020, -- [5]
						261635, -- [6]
						272700, -- [7]
						280404, -- [8]
						268030, -- [9]
						265368, -- [10]
						263891, -- [11]
						264520, -- [12]
						265407, -- [13]
						278567, -- [14]
						278602, -- [15]
						258128, -- [16]
						257791, -- [17]
						258938, -- [18]
						265089, -- [19]
						272183, -- [20]
						256060, -- [21]
						257397, -- [22]
						257899, -- [23]
						269972, -- [24]
						270901, -- [25]
						270492, -- [26]
						268129, -- [27]
						268709, -- [28]
						263215, -- [29]
						268797, -- [30]
						262540, -- [31]
						262554, -- [32]
						253517, -- [33]
						255041, -- [34]
						252781, -- [35]
						250368, -- [36]
						258777, -- [37]
					},
					["Desc"] = "Flash, Bounce and Red Color the CastBar border when when an important cast is happening. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --https://www.wowhead.com/spell=253583/fiery-enchant\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --castbar color (when can be interrupted)\n    envTable.CastbarColor = \"darkorange\"\n    --flash duration\n    local CONFIG_BACKGROUND_FLASH_DURATION = 0.4\n    --add this value to the cast bar height\n    envTable.CastBarHeightAdd = 5\n    \n    \n    \n    --create a fast flash above the cast bar\n    envTable.FullBarFlash = envTable.FullBarFlash or Plater.CreateFlash (self, 0.05, 1, \"white\")\n    \n    --create a camera shake for the nameplate\n    envTable.FrameShake = Plater:CreateFrameShake (unitFrame, 0.2, 5, 35, false, false, 0, 1, 0.05, 0.1, Plater.GetPoints (unitFrame))\n    \n    --create a texture to use for a flash behind the cast bar\n    local backGroundFlashTexture = Plater:CreateImage (self, [[Interface\\ACHIEVEMENTFRAME\\UI-Achievement-Alert-Glow]], self:GetWidth()+60, self:GetHeight()+50, \"background\", {0, 400/512, 0, 170/256})\n    backGroundFlashTexture:SetBlendMode (\"ADD\")\n    backGroundFlashTexture:SetPoint (\"center\", self, \"center\")\n    backGroundFlashTexture:Hide()\n    \n    --create the animation hub to hold the flash animation sequence\n    envTable.BackgroundFlash = envTable.BackgroundFlash or Plater:CreateAnimationHub (backGroundFlashTexture, \n        function()\n            backGroundFlashTexture:Show()\n        end,\n        function()\n            backGroundFlashTexture:Hide()\n        end\n    )\n    \n    --create the flash animation sequence\n    local fadeIn = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 1, CONFIG_BACKGROUND_FLASH_DURATION/2, 0, .75)\n    local fadeOut = Plater:CreateAnimation (envTable.BackgroundFlash, \"ALPHA\", 2, CONFIG_BACKGROUND_FLASH_DURATION/2, 1, 0)    \n    --envTable.BackgroundFlash:Play() --envTable.BackgroundFlash:Stop()        \n    \nend\n\n\n",
				}, -- [6]
				{
					["Enabled"] = true,
					["Revision"] = 376,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Stop()\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Tercioo-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.SmallFlashAnimationHub:Play()\n    \nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1539201768,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    \n    \nend\n\n\n",
					["Name"] = "Cast - Small Alert [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						275192, -- [1]
						265912, -- [2]
						274438, -- [3]
						268317, -- [4]
						268375, -- [5]
						276767, -- [6]
						264105, -- [7]
						265876, -- [8]
						270464, -- [9]
						266106, -- [10]
						272180, -- [11]
						278961, -- [12]
						278755, -- [13]
						265468, -- [14]
						256405, -- [15]
						256897, -- [16]
						264101, -- [17]
						280604, -- [18]
						268702, -- [19]
						281621, -- [20]
						262515, -- [21]
						255824, -- [22]
						253583, -- [23]
						250096, -- [24]
					},
					["Desc"] = "Flashes the Cast Bar when a spell in the trigger list is Cast. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (you may need /reload if some configs isn't applied immediately)\n    \n    --flash duration\n    local CONFIG_FLASH_DURATION = 0.6\n    \n    --manually create a new texture for the flash animation\n    if (not envTable.SmallFlashTexture) then\n        envTable.SmallFlashTexture = envTable.SmallFlashTexture or Plater:CreateImage (unitFrame.castBar)\n        envTable.SmallFlashTexture:SetColorTexture (1, 1, 1)\n        envTable.SmallFlashTexture:SetAllPoints()\n    end\n    \n    --manually create a flash animation using the framework\n    if (not envTable.SmallFlashAnimationHub) then \n        \n        local onPlay = function()\n            envTable.SmallFlashTexture:Show()\n        end\n        \n        local onFinished = function()\n            envTable.SmallFlashTexture:Hide()\n        end\n        \n        local animationHub = Plater:CreateAnimationHub (envTable.SmallFlashTexture, onPlay, onFinished)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 1, CONFIG_FLASH_DURATION/2, 0, .6)\n        Plater:CreateAnimation (animationHub, \"Alpha\", 2, CONFIG_FLASH_DURATION/2, 1, 0)\n        \n        envTable.SmallFlashAnimationHub = animationHub\n    end\n    \n    \n    \nend\n\n\n\n\n\n\n\n",
				}, -- [7]
				{
					["Enabled"] = true,
					["Revision"] = 106,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_invalid",
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1538256464,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --only change the nameplate color in combat\n    if (InCombatLockdown()) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    end\n    \nend\n\n\n\n\n\n\n",
					["Name"] = "Aura - Invalidate Unit [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						261265, -- [1]
						261266, -- [2]
						271590, -- [3]
					},
					["Desc"] = "When an aura makes the unit invulnarable and you don't want to attack it. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --color to set the nameplate\n    envTable.NameplateColor = \"gray\"\n    \nend\n\n\n",
				}, -- [8]
				{
					["Enabled"] = true,
					["Revision"] = 59,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --make plater refresh the nameplate color\n    Plater.RefreshNameplateColor (unitFrame)\n    \n        envTable.smallFlash:Stop()\n    \nend\n\n\n",
					["Icon"] = 135024,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can flash the nameplate\n    if (envTable.FlashNameplate) then\n        envTable.smallFlash:Play()\n    end\n    \nend\n\n\n\n\n\n\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1543253273,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --adjust the nameplate color\n    Plater.SetNameplateColor (unitFrame, envTable.Color)\n    \n    --check if can replace the health amount with the unit name\n    if (envTable.ReplaceHealthWithName) then\n        \n        local healthPercent = format (\"%.1f\", unitFrame.healthBar.CurrentHealth / unitFrame.healthBar.CurrentHealthMax *100)\n        \n        unitFrame.healthBar.lifePercent:SetText (unitFrame.namePlateUnitName .. \"  (\" .. healthPercent  .. \"%)\")\n        \n    end\n    \nend\n\n\n",
					["Name"] = "Color Change [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add a unitID or unit name in 'Add Trigger' entry. See the constructor script for options.",
					["NpcNames"] = {
						"141851", -- [1]
					},
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings:\n    do\n        \n        --change the nameplate color to this color\n        --can use color names: \"red\", \"yellow\"\n        --can use color hex: \"#FF0000\", \"#FFFF00\"\n        --con use color table: {1, 0, 0}, {1, 1, 0}\n        \n        envTable.Color = \"green\"\n        \n        --if true, it'll replace the health info with the unit name\n        envTable.ReplaceHealthWithName = false\n        \n        --use flash when the unit is shown in the screen\n        envTable.FlashNameplate = true\n        \n    end\n    \n    --private:\n    do\n        --create a flash for when the unit if shown\n        envTable.smallFlash = envTable.smallFlash or Plater.CreateFlash (unitFrame.healthBar, 0.15, 1, envTable.Color)\n        \n    end\n    \nend\n\n--[=[\n\nNpc IDS:\n\n141851: Spawn of G'Huun on Mythic Dungeons\n\n\n--]=]\n\n\n\n\n",
				}, -- [9]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Time"] = 1547991413,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings (require a /reload after editing any setting)\n    do\n        --blink and glow\n        envTable.BlinkEnabled = true --set to 'false' to disable blinks\n        envTable.GlowEnabled = true --set to 'false' to disable glows\n        envTable.ChangeNameplateColor = true; --set to 'true' to enable nameplate color change\n        envTable.TimeLeftToBlink = 4.5; --in seconds, affects the blink effect only\n        envTable.BlinkSpeed = 1.0; --time to complete a blink loop\n        envTable.BlinkColor = \"white\"; --color of the blink\n        envTable.BlinkMaxAlpha = 0.50; --max transparency in the animation loop (1.0 is full opaque)\n        envTable.NameplateColor = \"darkred\"; --nameplate color if ChangeNameplateColor is true\n        \n        --text color\n        envTable.TimerColorEnabled = true --set to 'false' to disable changes in the color of the time left text\n        envTable.TimeLeftWarning = 8.0; --in seconds, affects the color of the text\n        envTable.TimeLeftCritical = 3.0; --in seconds, affects the color of the text    \n        envTable.TextColor_Warning = \"yellow\"; --color when the time left entered in a warning zone\n        envTable.TextColor_Critical = \"red\"; --color when the time left is critical\n        \n        --list of spellIDs to ignore\n        envTable.IgnoredSpellID = {\n            [12] = true, --use a simple comma here\n            [13] = true,\n        }\n    end\n    \n    \n    --private\n    do\n        envTable.blinkTexture = Plater:CreateImage (self, \"\", 1, 1, \"overlay\")\n        envTable.blinkTexture:SetPoint ('center', 0, 0)\n        envTable.blinkTexture:Hide()\n        \n        local onPlay = function()\n            envTable.blinkTexture:Show() \n            envTable.blinkTexture.color = envTable.BlinkColor\n        end\n        local onStop = function()\n            envTable.blinkTexture:Hide()  \n        end\n        envTable.blinkAnimation = Plater:CreateAnimationHub (envTable.blinkTexture, onPlay, onStop)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 1, envTable.BlinkSpeed / 2, 0, envTable.BlinkMaxAlpha)\n        Plater:CreateAnimation (envTable.blinkAnimation, \"ALPHA\", 2, envTable.BlinkSpeed / 2, envTable.BlinkMaxAlpha, 0)\n        \n        envTable.glowEffect = envTable.glowEffect or Plater.CreateIconGlow (self)\n        --envTable.glowEffect:Show() --envTable.glowEffect:Hide()\n        \n    end\n    \nend\n\n\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_blink",
					["Enabled"] = true,
					["Revision"] = 157,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.blinkTexture:SetSize (self:GetSize())\n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    local timeLeft = envTable._RemainingTime\n    \n    --check if the spellID isn't being ignored\n    if (envTable.IgnoredSpellID [envTable._SpellID]) then\n        return\n    end\n    \n    --check the time left and start or stop the blink animation and also check if the time left is > zero\n    if ((envTable.BlinkEnabled or envTable.GlowEnabled) and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftToBlink) then\n            --blink effect\n            if (envTable.BlinkEnabled) then\n                if (not envTable.blinkAnimation:IsPlaying()) then\n                    envTable.blinkAnimation:Play()\n                end\n            end\n            --glow effect\n            if (envTable.GlowEnabled) then\n                envTable.glowEffect:Show()\n            end\n            --nameplate color\n            if (envTable.ChangeNameplateColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n            end\n        else\n            --blink effect\n            if (envTable.blinkAnimation:IsPlaying()) then\n                envTable.blinkAnimation:Stop()\n            end\n            --glow effect\n            if (envTable.GlowEnabled and envTable.glowEffect:IsShown()) then\n                envTable.glowEffect:Hide()\n            end\n        end\n    end\n    \n    --timer color\n    if (envTable.TimerColorEnabled and timeLeft > 0) then\n        if (timeLeft < envTable.TimeLeftCritical) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Critical)\n        elseif (timeLeft < envTable.TimeLeftWarning) then\n            Plater:SetFontColor (self.Cooldown.Timer, envTable.TextColor_Warning)        \n        else\n            Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\n        end\n    end\n    \nend",
					["Name"] = "Aura - Blink by Time Left [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Blink, change the number and nameplate color. Add the debuffs int he trigger box. Set settings on constructor script.",
					["NpcNames"] = {
					},
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.blinkAnimation:Stop()\n    envTable.blinkTexture:Hide()\n    envTable.blinkAnimation:Stop()\n    envTable.glowEffect:Stop()\n    Plater:SetFontColor (self.Cooldown.Timer, Plater.db.profile.aura_timer_text_color)\nend\n\n\n",
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 45,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the border color\n    self:SetBackdropBorderColor (0, 0, 0, 0)\n    \nend\n\n\n",
					["Icon"] = 133006,
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the aura name in lower case\n    local auraLowerName = string.lower (envTable._SpellName)\n    \n    --attempt to get a custom color added by the user in the constructor script\n    local hasCustomBorderColor = envTable.BorderColorByAura [auraLowerName] or envTable.BorderColorByAura [envTable._SpellName] or envTable.BorderColorByAura [envTable._SpellID]\n    \n    --save the custom color\n    envTable.CustomBorderColor = hasCustomBorderColor\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1543680853,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the custom color added by the user or the default color\n    local color = envTable.CustomBorderColor or envTable.DefaultBorderColor\n    --parse the color since it can be a color name, hex or color table\n    local r, g, b = DetailsFramework:ParseColors (color)\n    \n    --set the border color\n    self:SetBackdropBorderColor (r, g, b, envTable.BorderAlpha)\n    \nend\n\n\n\n\n",
					["Name"] = "Aura - Border Color [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Add a border to an aura icon. Add the aura into the Add Trigger entry. You can customize the icon color at the constructor script.",
					["NpcNames"] = {
					},
					["ConstructorCode"] = "--gray lines are comments and doesn't affect the code\n\n--1) add the aura you want by typing its name or spellID into the \"Add Trigger\" and click the \"Add\" button.\n--2) the border will use the default color set below, to a custom color type aura name and the color you want in the BorderColorByAura table.\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --default color if the aura name isn't found in the Color By Aura table below\n    envTable.DefaultBorderColor = \"orange\"\n    \n    --transparency, affect all borders\n    envTable.BorderAlpha = 1.0\n    \n    --add the aura name and the color, \n    envTable.BorderColorByAura = {\n        \n        --examples:\n        --[\"Aura Name\"] = \"yellow\", --using regular aura name | using the name of the color\n        --[\"aura name\"] = \"#FFFF00\", --using lower case in the aura name |using html #hex for the color\n        --[54214] = {1, 1, 0}, --using the spellID instead of the name | using rgb table (0 to 1) for the color\n        --color table uses zero to one values: 255 = 1.0, 127 = 0.5, orange color = {1, 0.7, 0}\n        \n        --add your custom border colors below:\n        \n        [\"Aura Name\"] = {1, .5, 0}, --example to copy/paste\n        \n    }\n    \n    \nend\n\n\n\n\n",
				}, -- [11]
				{
					["Enabled"] = true,
					["Revision"] = 131,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Hide()\nend\n\n\n",
					["Icon"] = 136048,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount:Show()\nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1539015649,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount.text = \"\" .. UnitPower (unitId);\nend\n\n\n",
					["Name"] = "UnitPower [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
					},
					["Desc"] = "Show the energy amount above the nameplate",
					["NpcNames"] = {
						"Guardian of Yogg-Saron", -- [1]
					},
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.EnergyAmount = Plater:CreateLabel (unitFrame, \"\", 16, \"silver\");\n    envTable.EnergyAmount:SetPoint (\"bottom\", unitFrame, \"top\", 0, 18);\nend\n\n--[=[\n\n\n--]=]",
				}, -- [12]
				{
					["Enabled"] = true,
					["Revision"] = 171,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Stop()\nend\n\n\n",
					["Icon"] = "Interface\\AddOns\\Plater\\images\\cast_bar",
					["Author"] = "Izimode-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.movingAnimation:Play()\nend\n\n\n",
					["ScriptType"] = 2,
					["Time"] = 1539201849,
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable)\n			\n		end\n	",
					["Name"] = "Cast - Frontal Cone [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						255952, -- [1]
						257426, -- [2]
						274400, -- [3]
						272609, -- [4]
						269843, -- [5]
						269029, -- [6]
						272827, -- [7]
						269266, -- [8]
						263912, -- [9]
						264923, -- [10]
						258864, -- [11]
						256955, -- [12]
						265540, -- [13]
						260793, -- [14]
						270003, -- [15]
						270507, -- [16]
						257337, -- [17]
						268415, -- [18]
						275907, -- [19]
						268865, -- [20]
						260669, -- [21]
						260280, -- [22]
						253239, -- [23]
						265541, -- [24]
						250258, -- [25]
					},
					["Desc"] = "Does an animation for casts that affect the frontal area of the enemy. Add spell in the Add Trigger field.",
					["NpcNames"] = {
					},
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.movingArrow = envTable.movingArrow or Plater:CreateImage (self, [[Interface\\PETBATTLES\\PetBattle-StatIcons]], 16, self:GetHeight(), \"background\", {0, 15/32, 18/32, 30/32})\n    \n    envTable.movingArrow:SetAlpha (0.275)\n    --envTable.movingArrow:SetDesaturated (true)\n    \n    envTable.movingAnimation = envTable.movingAnimation or Plater:CreateAnimationHub (envTable.movingArrow, \n        function() \n            envTable.movingArrow:Show() \n            envTable.movingArrow:SetPoint(\"left\", 0, 0)\n        end, \n        function() envTable.movingArrow:Hide() end)\n    \n    envTable.movingAnimation:SetLooping (\"REPEAT\")\n    \n    local animation = Plater:CreateAnimation (envTable.movingAnimation, \"translation\", 1, 0.2, self:GetWidth()-16, 0)\n    \n    \n    \nend\n\n\n",
				}, -- [13]
				{
					["Enabled"] = true,
					["Revision"] = 190,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Hide()\n    envTable.FixateIcon:Hide()\nend\n\n\n",
					["Icon"] = 1029718,
					["Author"] = "Celian-Sylvanas",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:Show();\n    envTable.FixateIcon:Show();\n    \nend\n\n\n",
					["ScriptType"] = 1,
					["Time"] = 1539187387,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    local targetName = UnitName (unitId .. \"target\");\n    if (targetName) then\n        local _, class = UnitClass (unitId .. \"target\");\n        targetName = Plater.SetTextColorByClass (unitId .. \"target\", targetName);\n        envTable.FixateTarget.text = targetName;\n    end    \nend\n\n\n",
					["Name"] = "Fixate [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						272584, -- [1]
						244653, -- [2]
					},
					["Desc"] = "Show above the nameplate who is the player fixated",
					["NpcNames"] = {
					},
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.BuffFrame, \"top\", 0, 10);    \n    \n    envTable.FixateIcon = Plater:CreateImage (unitFrame, 236188, 16, 16, \"overlay\");\n    envTable.FixateIcon:SetPoint (\"bottom\", envTable.FixateTarget, \"top\", 0, 4);    \n    \nend\n\n\n\n\n\n\n\n\n",
				}, -- [14]
				{
					["Enabled"] = true,
					["Revision"] = 194,
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    envTable.FixateTarget:SetText (\"\")\n    envTable.FixateTarget:Hide()\n    \n    envTable.IsFixated = false\n    \n    Plater.RefreshNameplateColor (unitFrame)\nend\n\n\n",
					["Icon"] = 841383,
					["Author"] = "Tecno-Azralon",
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \nend\n\n\n",
					["ScriptType"] = 3,
					["Time"] = 1543250950,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    --swap this to true when it is fixated\n    local isFixated = false\n    \n    --check the debuffs the player has and see if any of these debuffs has been placed by this unit\n    for debuffId = 1, 40 do\n        local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (\"player\", debuffId)\n        \n        --cancel the loop if there's no more debuffs on the player\n        if (not name) then \n            break \n        end\n        \n        --check if the owner of the debuff is this unit\n        if (envTable.FixateDebuffs [name] and caster and UnitIsUnit (caster, unitId)) then\n            --the debuff the player has, has been placed by this unit, set the name above the unit name\n            envTable.FixateTarget:SetText (envTable.TextAboveNameplate)\n            envTable.FixateTarget:Show()\n            Plater.SetNameplateColor (unitFrame,  envTable.NameplateColor)\n            isFixated = true\n            \n            if (not envTable.IsFixated) then\n                envTable.IsFixated = true\n                Plater.FlashNameplateBody (unitFrame, \"fixate\", .2)\n            end\n        end\n        \n    end\n    \n    --check if the nameplate color is changed but isn't fixated any more\n    if (not isFixated and envTable.IsFixated) then\n        --refresh the nameplate color\n        Plater.RefreshNameplateColor (unitFrame)\n        --reset the text\n        envTable.FixateTarget:SetText (\"\")\n        \n        envTable.IsFixated = false\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["Name"] = "Fixate On You [Plater]",
					["PlaterCore"] = 1,
					["SpellIds"] = {
						"spawn of g'huun", -- [1]
						"smuggled crawg", -- [2]
						"sergeant bainbridge", -- [3]
						"blacktooth scrapper", -- [4]
						"irontide grenadier", -- [5]
						"feral bloodswarmer", -- [6]
						"earthrager", -- [7]
						"crawler mine", -- [8]
						"rezan", -- [9]
					},
					["Desc"] = "When an enemy places a debuff and starts to chase you. This script changes the nameplate color and place your name above the nameplate as well.",
					["NpcNames"] = {
						"smuggled crawg", -- [1]
						"sergeant bainbridge", -- [2]
						"blacktooth scrapper", -- [3]
						"irontide grenadier", -- [4]
						"feral bloodswarmer", -- [5]
						"earthrager", -- [6]
						"crawler mine", -- [7]
						"rezan", -- [8]
						"136461", -- [9]
					},
					["ConstructorCode"] = "--todo: add npc ids for multilanguage support\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.TextAboveNameplate = \"** On You **\"\n    envTable.NameplateColor = \"green\"\n    \n    --label to show the text above the nameplate\n    envTable.FixateTarget = Plater:CreateLabel (unitFrame);\n    envTable.FixateTarget:SetPoint (\"bottom\", unitFrame.healthBar, \"top\", 0, 30);\n    \n    --the spell casted by the npc in the trigger list needs to be in the list below as well\n    local spellList = {\n        [268074] = \"Dark Purpose\", --G'huun Mythic Add\n        [260954] = \"Iron Gaze\", --Sergeant Bainbridge - Siege of Boralus\n        [257739] = \"Blind Rage\", --Blacktooth Scrapper - Freehold\n        [257314] = \"Black Powder Bomb\", --Irontide Grenadier - Freehold\n        [266107] = \"Thirst For Blood\", --Feral Bloodswarmer - The Underrot\n        [257582] = \"Raging Gaze\", --Earthrager - The MOTHERLODE!!\n        [262377] = \"Seek and Destroy\", --Crawler Mine - The MOTHERLODE!!\n        [257407] = \"Pursuit\", --Rezan - Atal'Dazar\n        --[] = \"\" --       \n        \n    }\n    \n    --build the list with localized spell names\n    envTable.FixateDebuffs = {}\n    for spellID, enUSSpellName in pairs (spellList) do\n        local localizedSpellName = GetSpellInfo (spellID)\n        envTable.FixateDebuffs [localizedSpellName or enUSSpellName] = true\n    end\n    \n    --debug - smuggled crawg\n    envTable.FixateDebuffs [\"Jagged Maw\"] = true\n    \nend\n\n--[=[\nNpcIDs:\n136461: Spawn of G'huun (mythic uldir G'huun)\n\n--]=]\n\n\n\n\n",
				}, -- [15]
				{
					["ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    \n    local healthBar = unitFrame.healthBar\n    \n    --create a glow \n    envTable.GlowEffect = envTable.GlowEffect or Plater.CreateNameplateGlow (healthBar)\n    envTable.GlowEffect:SetOffset (-27, 25, 6, -8)    \n    \nend\n\n\n\n\n\n\n\n\n",
					["OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    \n    envTable.GlowEffect:Hide() \n    \nend\n\n\n",
					["Temp_OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    Plater.FlashNameplateBody (unitFrame , \"- run -\" , 0.2)\n    \n    envTable.GlowEffect:Show() \n    \nend\n\n\n",
					["ScriptType"] = 3,
					["UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    \nend\n\n\n",
					["Time"] = 1582040374,
					["Temp_ConstructorCode"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    \n    local healthBar = unitFrame.healthBar\n    \n    --create a glow \n    envTable.GlowEffect = envTable.GlowEffect or Plater.CreateNameplateGlow (healthBar)\n    envTable.GlowEffect:SetOffset (-27, 25, 6, -8)    \n    \nend\n\n\n\n\n\n\n\n\n",
					["Icon"] = 135877,
					["Enabled"] = true,
					["Revision"] = 50,
					["NpcNames"] = {
						"161895", -- [1]
					},
					["Author"] = "Izimode-Azralon",
					["Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
					["Desc"] = "Create a glow in the Thing from Beyond npc nameplate",
					["Name"] = "Thing From Beyond",
					["Prio"] = 99,
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["OnShowCode"] = "function (self, unitId, unitFrame, envTable)\n    \n    Plater.FlashNameplateBody (unitFrame , \"- run -\" , 0.2)\n    \n    envTable.GlowEffect:Show() \n    \nend\n\n\n",
					["Temp_OnHideCode"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    \n    envTable.GlowEffect:Hide() \n    \nend\n\n\n",
					["Temp_UpdateCode"] = "function (self, unitId, unitFrame, envTable)\n    --insert code here\n    \nend\n\n\n",
					["Temp_Initialization"] = "function (scriptTable)\n    --insert code here\n    \nend\n\n\n",
				}, -- [16]
			},
			["plate_config"] = {
				["player"] = {
					["castbar_enabled"] = false,
					["power_percent_text_enabled"] = false,
					["healthbar_enabled"] = false,
					["power_enabled"] = false,
					["spellpercent_text_enabled"] = false,
					["percent_text_enabled"] = false,
				},
				["friendlyplayer"] = {
					["big_actorname_text_size"] = 9,
					["actorname_use_class_color"] = true,
					["cast"] = {
						112, -- [1]
						10, -- [2]
					},
					["castbar_enabled"] = false,
					["power_percent_text_enabled"] = false,
					["healthbar_enabled"] = false,
					["power_percent_text_alpha"] = 1,
					["big_actorname_text_shadow_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["quest_color"] = {
						0.5, -- [1]
						1, -- [2]
						0, -- [3]
					},
					["big_actorname_text_shadow_color_offset"] = {
						1, -- [1]
						-1, -- [2]
					},
					["power_percent_text_size"] = 9,
					["actorname_use_guild_color"] = false,
					["all_names"] = true,
					["actorname_text_outline"] = "THICKOUTLINE",
					["big_actortitle_text_color"] = {
						1, -- [1]
						0.8, -- [2]
						0, -- [3]
					},
					["big_actortitle_text_outline"] = "OUTLINE",
					["only_damaged"] = false,
					["power_percent_text_shadow_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["y_position_offset"] = -50,
					["power_percent_text_shadow_color_offset"] = {
						1, -- [1]
						-1, -- [2]
					},
					["quest_color_enemy"] = {
						1, -- [1]
						0.369, -- [2]
						0, -- [3]
					},
					["big_actorname_text_outline"] = "OUTLINE",
					["power_percent_text_anchor"] = {
						["y"] = 0,
						["x"] = 0,
						["side"] = 9,
					},
					["only_thename"] = true,
					["big_actortitle_text_font"] = "Arial Narrow",
					["big_actorname_text_color"] = {
						0.5, -- [1]
						1, -- [2]
						0.5, -- [3]
					},
					["healthbar_color"] = {
						0.564706, -- [1]
						0.933333, -- [2]
						0.564706, -- [3]
						1, -- [4]
					},
					["power_percent_text_outline"] = "OUTLINE",
					["big_actortitle_text_size"] = 8,
					["cast_incombat"] = {
						120, -- [1]
					},
					["actorname_use_friends_color"] = false,
					["big_actortitle_text_shadow_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["only_names"] = true,
					["quest_color_neutral"] = {
						1, -- [1]
						0.65, -- [2]
						0, -- [3]
					},
					["mana"] = {
						nil, -- [1]
						4, -- [2]
					},
					["big_actorname_text_font"] = "Arial Narrow",
					["power_percent_text_color"] = {
						0.9, -- [1]
						0.9, -- [2]
						0.9, -- [3]
						1, -- [4]
					},
					["pvp_always_incombat"] = true,
					["buff_frame_y_offset"] = 0,
					["quest_enabled"] = true,
					["power_enabled"] = false,
					["healthbar_color_by_hp"] = false,
					["relevance_state"] = 4,
					["health"] = {
						112, -- [1]
						12, -- [2]
					},
					["power_percent_text_font"] = "Arial Narrow",
					["health_incombat"] = {
						120, -- [1]
						16, -- [2]
					},
					["mana_incombat"] = {
						nil, -- [1]
						4, -- [2]
					},
					["big_actortitle_text_shadow_color_offset"] = {
						1, -- [1]
						-1, -- [2]
					},
				},
				["friendlynpc"] = {
					["big_actortitle_text_size"] = 8,
				},
				["enemyplayer"] = {
					["actorname_text_outline"] = "THICKOUTLINE",
				},
				["enemynpc"] = {
					["level_text_size"] = 10,
					["actorname_text_outline"] = "THICKOUTLINE",
					["level_text_alpha"] = 1,
				},
			},
			["use_ui_parent"] = true,
			["npc_cache"] = {
				[69134] = {
					"Kazra'jin", -- [1]
					"Throne of Thunder", -- [2]
				},
				[118518] = {
					"Priestess Lunaspyre", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[161745] = {
					"Hepthys", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155860] = {
					"Shirakess Voidreaper", -- [1]
					"The Eternal Palace", -- [2]
				},
				[156884] = {
					"Essence of Vita", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[161746] = {
					"Ossirat", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135903] = {
					"Manifestation of the Deep", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[155094] = {
					"Mechagon Trooper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[133345] = {
					"Feckless Assistant", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[146139] = {
					"Goldspine", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[136160] = {
					"King Dazar", -- [1]
					"Kings' Rest", -- [2]
				},
				[73742] = {
					"Thresher Turret", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[131812] = {
					"Heartsbane Soulcharmer", -- [1]
					"Waycrest Manor", -- [2]
				},
				[94724] = {
					"Bryanda", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[138465] = {
					"Ashvane Cannoneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[25840] = {
					"Entropius", -- [1]
					"The Sunwell", -- [2]
				},
				[121975] = {
					"Aggramar", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[155098] = {
					"Rexxar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[64458] = {
					"Kor'thik Warsinger", -- [1]
					"Heart of Fear", -- [2]
				},
				[69905] = {
					"Gurubashi Berserker", -- [1]
					"Throne of Thunder", -- [2]
				},
				[134629] = {
					"Scaled Krolusk Rider", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[151773] = {
					"Junkyard D.0.G.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[93830] = {
					"Iron Dragoon", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[416] = {
					"Rupyal", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[120697] = {
					"Worshiper of Elune", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[155612] = {
					"Azsh'ari Channeler", -- [1]
					"The Eternal Palace", -- [2]
				},
				[147936] = {
					"Azergem Shardback", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[136934] = {
					"Weapons Tester", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[141284] = {
					"Kul Tiran Wavetender", -- [1]
					"Siege of Boralus", -- [2]
				},
				[155869] = {
					"Shirakess Shadowcaster", -- [1]
					"The Eternal Palace", -- [2]
				},
				[131817] = {
					"Cragmaw the Infested", -- [1]
					"The Underrot", -- [2]
				},
				[144611] = {
					"Coralback Scuttler", -- [1]
					"The Eternal Palace", -- [2]
				},
				[161243] = {
					"Samh'rek, Beckoner of Chaos", -- [1]
					"Waycrest Manor", -- [2]
				},
				[141285] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[147938] = {
					"Azergem Crystalback", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[131818] = {
					"Marked Sister", -- [1]
					"Waycrest Manor", -- [2]
				},
				[127479] = {
					"The Sand Queen", -- [1]
					"Tol Dagor", -- [2]
				},
				[161244] = {
					"Blood of the Corruptor", -- [1]
					"Waycrest Manor", -- [2]
				},
				[155871] = {
					"Voidbound Terror", -- [1]
					"The Eternal Palace", -- [2]
				},
				[152033] = {
					"Inconspicuous Plant", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[131819] = {
					"Coven Diviner", -- [1]
					"Waycrest Manor", -- [2]
				},
				[155616] = {
					"Zanj'ir Brute", -- [1]
					"The Eternal Palace", -- [2]
				},
				[127480] = {
					"Stinging Parasite", -- [1]
					"Tol Dagor", -- [2]
				},
				[160990] = {
					"Image of Absolution", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[161502] = {
					"Ravenous Fleshfiend", -- [1]
					"Waycrest Manor", -- [2]
				},
				[155873] = {
					"Darkcast Annihilator", -- [1]
					"The Eternal Palace", -- [2]
				},
				[131821] = {
					"Faceless Maiden", -- [1]
					"Waycrest Manor", -- [2]
				},
				[156641] = {
					"Enthralled Weaponsmith", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[153059] = {
					"Aethanel", -- [1]
					"The Eternal Palace", -- [2]
				},
				[155618] = {
					"Zanj'ir Huntress", -- [1]
					"The Eternal Palace", -- [2]
				},
				[156130] = {
					"Lesser Zoatroid", -- [1]
					"The Eternal Palace", -- [2]
				},
				[92554] = {
					"Mek'barash", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[156642] = {
					"Enthralled Laborer", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[153060] = {
					"Cyranus", -- [1]
					"The Eternal Palace", -- [2]
				},
				[155619] = {
					"Zanj'ir Honor Guard", -- [1]
					"The Eternal Palace", -- [2]
				},
				[131311] = {
					"Unleashed Azerite", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[156131] = {
					"Zanj'ir Myrmidon", -- [1]
					"The Eternal Palace", -- [2]
				},
				[131823] = {
					"Sister Malady", -- [1]
					"Waycrest Manor", -- [2]
				},
				[158690] = {
					"Cultist Tormenter", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[135406] = {
					"Animated Gold", -- [1]
					"Kings' Rest", -- [2]
				},
				[156132] = {
					"Azsh'ari Witch", -- [1]
					"The Eternal Palace", -- [2]
				},
				[131824] = {
					"Sister Solena", -- [1]
					"Waycrest Manor", -- [2]
				},
				[129529] = {
					"Blacktooth Scrapper", -- [1]
					"Freehold", -- [2]
				},
				[24850] = {
					"Kalecgos", -- [1]
					"The Sunwell", -- [2]
				},
				[24882] = {
					"Brutallus", -- [1]
					"The Sunwell", -- [2]
				},
				[72981] = {
					"Aggron", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[131825] = {
					"Sister Briar", -- [1]
					"Waycrest Manor", -- [2]
				},
				[161251] = {
					"Cultist Sycophant", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133361] = {
					"Wasting Servant", -- [1]
					"Waycrest Manor", -- [2]
				},
				[69911] = {
					"Zandalari Warlord", -- [1]
					"Throne of Thunder", -- [2]
				},
				[150249] = {
					"Pistonhead Scrapper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[125436] = {
					"Thu'raya, Mother of the Cosmos", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[136688] = {
					"Fanatical Driller", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130298] = {
					"Water Elemental", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[150250] = {
					"Pistonhead Blaster", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[122366] = {
					"Varimathras", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[152809] = {
					"Alx'kov the Infested", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[153065] = {
					"Voidbound Ravager", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[137713] = {
					"Big Money Crab", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[150251] = {
					"Pistonhead Mechanic", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[127484] = {
					"Jes Howlis", -- [1]
					"Tol Dagor", -- [2]
				},
				[161510] = {
					"Mindrend Tentacle", -- [1]
					"Waycrest Manor", -- [2]
				},
				[137458] = {
					"Rotting Spore", -- [1]
					"The Underrot", -- [2]
				},
				[72983] = {
					"Corrupted Skullsplitter", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[162534] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134388] = {
					"A Knot of Snakes", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[126845] = {
					"Captain Jolly", -- [1]
					"Freehold", -- [2]
				},
				[131318] = {
					"Elder Leaxa", -- [1]
					"The Underrot", -- [2]
				},
				[150253] = {
					"Weaponized Crawler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[127485] = {
					"Bilge Rat Looter", -- [1]
					"Tol Dagor", -- [2]
				},
				[134389] = {
					"Venomous Ophidian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[129788] = {
					"Irontide Bonesaw", -- [1]
					"Freehold", -- [2]
				},
				[137204] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[137716] = {
					"Bottom Feeder", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[150254] = {
					"Scraphound", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[134390] = {
					"Sand-crusted Striker", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[155628] = {
					"Azsh'ari Oracle", -- [1]
					"The Eternal Palace", -- [2]
				},
				[127486] = {
					"Ashvane Officer", -- [1]
					"Tol Dagor", -- [2]
				},
				[121473] = {
					"Coercitor Nixa", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[155629] = {
					"Azsh'ari Stormbinder", -- [1]
					"The Eternal Palace", -- [2]
				},
				[121985] = {
					"Flame of Taeshalach", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[156653] = {
					"Coagulated Horror", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[126847] = {
					"Captain Raoul", -- [1]
					"Freehold", -- [2]
				},
				[74009] = {
					"Crawler Mine", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[134137] = {
					"Temple Attendant", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[152816] = {
					"Stormling", -- [1]
					"The Eternal Palace", -- [2]
				},
				[25363] = {
					"Sunblade Cabalist", -- [1]
					"The Sunwell", -- [2]
				},
				[72986] = {
					"Shanna Sparkfizz", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[93968] = {
					"Shadowfel Warden", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[126848] = {
					"Captain Eudora", -- [1]
					"Freehold", -- [2]
				},
				[69916] = {
					"Gurubashi Berserker", -- [1]
					"Throne of Thunder", -- [2]
				},
				[127488] = {
					"Ashvane Flamecaster", -- [1]
					"Tol Dagor", -- [2]
				},
				[138489] = {
					"Shadow of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[156145] = {
					"Burrowing Appendage", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[95632] = {
					"Sargerei Enforcer", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[155634] = {
					"Bound Storm", -- [1]
					"The Eternal Palace", -- [2]
				},
				[156146] = {
					"Voidbound Shieldbearer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[150773] = {
					"Shimmerskin Pufferfish", -- [1]
					"The Eternal Palace", -- [2]
				},
				[70557] = {
					"Zandalari Prophet", -- [1]
					"Throne of Thunder", -- [2]
				},
				[118022] = {
					"Infernal Chaosbringer", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[127106] = {
					"Irontide Officer", -- [1]
					"Freehold", -- [2]
				},
				[127490] = {
					"Knight Captain Valyri", -- [1]
					"Tol Dagor", -- [2]
				},
				[142587] = {
					"Devouring Maggot", -- [1]
					"Waycrest Manor", -- [2]
				},
				[159219] = {
					"Umbral Seer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135167] = {
					"Spectral Berserker", -- [1]
					"Kings' Rest", -- [2]
				},
				[87318] = {
					"Dungeoneer's Training Dummy", -- [1]
					"SMV Alliance Garrison Level 3", -- [2]
				},
				[103822] = {
					"Treant", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[134144] = {
					"Living Current", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[71454] = {
					"Malkorok", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[153335] = {
					"Potent Spark", -- [1]
					"The Eternal Palace", -- [2]
				},
				[131586] = {
					"Banquet Steward", -- [1]
					"Waycrest Manor", -- [2]
				},
				[156406] = {
					"Voidbound Honor Guard", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[72350] = {
					"Dragonmaw Elite Grunt", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[131587] = {
					"Bewitched Captain", -- [1]
					"Waycrest Manor", -- [2]
				},
				[152313] = {
					"Dreadcoil Hulk", -- [1]
					"The Eternal Palace", -- [2]
				},
				[25588] = {
					"Hand of the Deceiver", -- [1]
					"The Sunwell", -- [2]
				},
				[63570] = {
					"Sra'thik Pool-Tender", -- [1]
					"Heart of Fear", -- [2]
				},
				[123398] = {
					"Garothi Annihilator", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[72351] = {
					"Dragonmaw Flagbearer", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[137474] = {
					"King Timalji", -- [1]
					"Kings' Rest", -- [2]
				},
				[147965] = {
					"Volatile Azerite", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[130435] = {
					"Addled Thug", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[64338] = {
					"Instructor Kli'thak", -- [1]
					"Heart of Fear", -- [2]
				},
				[159224] = {
					"Gryth'ax the Executioner", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[71712] = {
					"Despair Spawn", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[72352] = {
					"Dragonmaw Ebon Stalker", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[62995] = {
					"Animated Protector", -- [1]
					"Terrace of Endless Spring", -- [2]
				},
				[155899] = {
					"Sak'ja", -- [1]
					"The Eternal Palace", -- [2]
				},
				[160249] = {
					"Spike Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[131847] = {
					"Waycrest Reveler", -- [1]
					"Waycrest Manor", -- [2]
				},
				[134150] = {
					"Runecarver Sorn", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[155900] = {
					"Zsal'iss", -- [1]
					"The Eternal Palace", -- [2]
				},
				[137989] = {
					"Embalming Fluid", -- [1]
					"Kings' Rest", -- [2]
				},
				[72353] = {
					"Dragonmaw Flameslinger", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[139269] = {
					"Gloom Horror", -- [1]
					"Waycrest Manor", -- [2]
				},
				[137478] = {
					"Queen Wasi", -- [1]
					"Kings' Rest", -- [2]
				},
				[146178] = {
					"Azurespine", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[64339] = {
					"Instructor Tak'thok", -- [1]
					"Heart of Fear", -- [2]
				},
				[147202] = {
					"Animated Azershard", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[126983] = {
					"Harlan Sweete", -- [1]
					"Freehold", -- [2]
				},
				[127111] = {
					"Irontide Oarsman", -- [1]
					"Freehold", -- [2]
				},
				[140038] = {
					"Abyssal Eel", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[72354] = {
					"Dragonmaw Bonecrusher", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[73250] = {
					"Kor'kron Wild Gun", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[157439] = {
					"Fury of N'Zoth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[163836] = {
					"Psychophage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[123402] = {
					"Garothi Decimator", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[70308] = {
					"Soul-Fed Construct", -- [1]
					"Throne of Thunder", -- [2]
				},
				[72483] = {
					"Sarok", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[156161] = {
					"Inquisitor Gnshal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[150276] = {
					"Heavy Scrapbot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[64340] = {
					"Instructor Maltik", -- [1]
					"Heart of Fear", -- [2]
				},
				[153091] = {
					"Serena Scarscale", -- [1]
					"The Eternal Palace", -- [2]
				},
				[26101] = {
					"Fire Fiend", -- [1]
					"The Sunwell", -- [2]
				},
				[151812] = {
					"Detect-o-Bot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[162303] = {
					"Aqir Swarmkeeper", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[94617] = {
					"Glynevere", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[134157] = {
					"Shadow-Borne Warrior", -- [1]
					"Kings' Rest", -- [2]
				},
				[72356] = {
					"Master Cannoneer Dagryn", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[72484] = {
					"Zazo", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[157442] = {
					"Gaze of Madness", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[137484] = {
					"King A'akul", -- [1]
					"Kings' Rest", -- [2]
				},
				[134158] = {
					"Shadow-Borne Champion", -- [1]
					"Kings' Rest", -- [2]
				},
				[137485] = {
					"Bloodsworn Agent", -- [1]
					"Kings' Rest", -- [2]
				},
				[162305] = {
					"Aqir Heartpiercer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[94618] = {
					"Cattwen", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[72357] = {
					"Lieutenant Krugruk", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[72485] = {
					"Goma", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[157700] = {
					"Agustus Moulaine", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[137486] = {
					"Queen Patlaa", -- [1]
					"Kings' Rest", -- [2]
				},
				[162306] = {
					"Aqir Drone", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[64341] = {
					"Instructor Zarik", -- [1]
					"Heart of Fear", -- [2]
				},
				[137487] = {
					"Skeletal Hunting Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				[69927] = {
					"Zandalari Prelate", -- [1]
					"Throne of Thunder", -- [2]
				},
				[131858] = {
					"Thornguard", -- [1]
					"Waycrest Manor", -- [2]
				},
				[138255] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[72358] = {
					"Kor'kron Cannon", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[64917] = {
					"Sra'thik Ambercaller", -- [1]
					"Heart of Fear", -- [2]
				},
				[136976] = {
					"T'zala", -- [1]
					"Kings' Rest", -- [2]
				},
				[126092] = {
					"Slitherblade Gladiator", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[134418] = {
					"Drowned Depthbringer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[153097] = {
					"Voidbound Shaman", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[157447] = {
					"Fanatical Cultist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155656] = {
					"Misha", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[129547] = {
					"Blacktooth Knuckleduster", -- [1]
					"Freehold", -- [2]
				},
				[72487] = {
					"Kozish", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[155657] = {
					"Huffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[126093] = {
					"Slitherblade Saurok", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[135699] = {
					"Ashvane Jailer", -- [1]
					"Tol Dagor", -- [2]
				},
				[118289] = {
					"Maiden of Vigilance", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[157449] = {
					"Sinister Soulcarver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[129548] = {
					"Blacktooth Brute", -- [1]
					"Freehold", -- [2]
				},
				[127757] = {
					"Reanimated Honor Guard", -- [1]
					"Atal'Dazar", -- [2]
				},
				[157450] = {
					"Spellbound Ritualist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[72744] = {
					"Kor'kron Skullsplitter", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[63191] = {
					"Garalon", -- [1]
					"Heart of Fear", -- [2]
				},
				[157451] = {
					"Iron-Willed Enforcer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139284] = {
					"Plague Doctor", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[131864] = {
					"Gorak Tul", -- [1]
					"Waycrest Manor", -- [2]
				},
				[136214] = {
					"Windspeaker Heldis", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[136470] = {
					"Refreshment Vendor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157452] = {
					"Nightmare Antigen", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[155917] = {
					"Azsh'ari Stormcaller", -- [1]
					"The Eternal Palace", -- [2]
				},
				[133912] = {
					"Bloodsworn Defiler", -- [1]
					"The Underrot", -- [2]
				},
				[71466] = {
					"Iron Juggernaut", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[135192] = {
					"Honored Raptor", -- [1]
					"Kings' Rest", -- [2]
				},
				[127119] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[127503] = {
					"Overseer Korgus", -- [1]
					"Tol Dagor", -- [2]
				},
				[72490] = {
					"Overseer Mojka", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[136984] = {
					"Reban", -- [1]
					"Kings' Rest", -- [2]
				},
				[25367] = {
					"Sunblade Arch Mage", -- [1]
					"The Sunwell", -- [2]
				},
				[155919] = {
					"Stormling", -- [1]
					"The Eternal Palace", -- [2]
				},
				[130318] = {
					"Slitherblade Prophet", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[158478] = {
					"Corruption Tumor", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[162828] = {
					"Corrosive Digester", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[161293] = {
					"Neglected Guild Bank", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[25591] = {
					"Painbringer", -- [1]
					"The Sunwell", -- [2]
				},
				[120851] = {
					"Hippogryph Lord Varah", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[155920] = {
					"Azsh'ari Galeblade", -- [1]
					"The Eternal Palace", -- [2]
				},
				[135706] = {
					"Bilge Rat Looter", -- [1]
					"Tol Dagor", -- [2]
				},
				[70060] = {
					"Shadowed Voodoo Spirit", -- [1]
					"Throne of Thunder", -- [2]
				},
				[150547] = {
					"Scrapbone Grunter", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[155665] = {
					"Bebri Coifcurl", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[130319] = {
					"Slitherblade Phalanx", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[150292] = {
					"Mechagon Cavalry", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[150293] = {
					"Mechagon Prowler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[72236] = {
					"Embodied Doubt", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[152852] = {
					"Pashmar the Fanatical", -- [1]
					"The Eternal Palace", -- [2]
				},
				[72492] = {
					"Shimra", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[61146] = {
					"Black Ox Statue", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134174] = {
					"Shadow-Borne Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				[152853] = {
					"Silivaz the Zealous", -- [1]
					"The Eternal Palace", -- [2]
				},
				[155156] = {
					"Jaina Proudmoore", -- [1]
					"The Eternal Palace", -- [2]
				},
				[133663] = {
					"Fanatical Headhunter", -- [1]
					"The Underrot", -- [2]
				},
				[150295] = {
					"Tank Buster MK1", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[72365] = {
					"Dragonmaw Cannoneer", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[72493] = {
					"Trak'gen", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[103326] = {
					"Spirit Beast", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[156949] = {
					"Armsmaster Terenson", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[155158] = {
					"First Arcanist Thalyssra", -- [1]
					"The Eternal Palace", -- [2]
				},
				[157461] = {
					"Mycelial Cyst", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[159764] = {
					"Jesh'ra", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[150297] = {
					"Mechagon Renormalizer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[25368] = {
					"Sunblade Slayer", -- [1]
					"The Sunwell", -- [2]
				},
				[152089] = {
					"Thrall", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[25592] = {
					"Doomfire Destroyer", -- [1]
					"The Sunwell", -- [2]
				},
				[127124] = {
					"Freehold Barhand", -- [1]
					"Freehold", -- [2]
				},
				[74158] = {
					"Kor'kron Gunner", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[72367] = {
					"Dragonmaw Tidal Shaman", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[155161] = {
					"Shandris Feathermoon", -- [1]
					"The Eternal Palace", -- [2]
				},
				[159767] = {
					"Sanguimar", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[122135] = {
					"Shatug", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[135971] = {
					"Faithless Conscript", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[155162] = {
					"Lor'themar Theron", -- [1]
					"The Eternal Palace", -- [2]
				},
				[159768] = {
					"Deresh of the Nothingness", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[123287] = {
					"Southsea Swashbuckler", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[125590] = {
					"Antoran Felguard", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[72496] = {
					"Overseer Thathung", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[151325] = {
					"Alarm-o-Bot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[151581] = {
					"Horrific Vision", -- [1]
					"The Eternal Palace", -- [2]
				},
				[122264] = {
					"Elder Spineshell", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[159514] = {
					"Blood of Ny'alotha", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[131112] = {
					"Cutwater Striker", -- [1]
					"Tol Dagor", -- [2]
				},
				[73904] = {
					"Kor'kron Iron Sentinel", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[123288] = {
					"Southsea Cannoneer", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[66100] = {
					"Apparition of Terror", -- [1]
					"Terrace of Endless Spring", -- [2]
				},
				[135975] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[71474] = {
					"Embodied Despair", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[137511] = {
					"Bilge Rat Cutthroat", -- [1]
					"Siege of Boralus", -- [2]
				},
				[162331] = {
					"Corrupted Neuron", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[121498] = {
					"Twilight Soul", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[72498] = {
					"Theramore Citizen", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[25369] = {
					"Sunblade Vindicator", -- [1]
					"The Sunwell", -- [2]
				},
				[122266] = {
					"Spineshell Turtle", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[130582] = {
					"Despondent Scallywag", -- [1]
					"Tol Dagor", -- [2]
				},
				[71475] = {
					"Rook Stonetoe", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[71603] = {
					"Sha Puddle", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[71859] = {
					"Earthbreaker Haromm", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[123290] = {
					"Sparkleshell Clacker", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[129559] = {
					"Cutwater Duelist", -- [1]
					"Freehold", -- [2]
				},
				[125977] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[71476] = {
					"Embodied Misery", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[123291] = {
					"Sparkleshell Crab", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[161312] = {
					"Crushing Tendril", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[137516] = {
					"Ashvane Invader", -- [1]
					"Siege of Boralus", -- [2]
				},
				[73012] = {
					"Klaxxi Skirmisher", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[71477] = {
					"Embodied Gloom", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[157475] = {
					"Synthesis Growth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135470] = {
					"Aka'ali the Conqueror", -- [1]
					"Kings' Rest", -- [2]
				},
				[133935] = {
					"Animated Guardian", -- [1]
					"Kings' Rest", -- [2]
				},
				[160291] = {
					"Ashwalker Assassin", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[71478] = {
					"Embodied Anguish", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[124828] = {
					"Argus the Unmaker", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[71734] = {
					"Sha of Pride", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[135472] = {
					"Zanazal the Wise", -- [1]
					"Kings' Rest", -- [2]
				},
				[140334] = {
					"Nightscale Coilfang", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[25370] = {
					"Sunblade Dusk Priest", -- [1]
					"The Sunwell", -- [2]
				},
				[140335] = {
					"Nightscale Screecher", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[71479] = {
					"He Softfoot", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[155688] = {
					"Azsh'ari Frostbinder", -- [1]
					"The Eternal Palace", -- [2]
				},
				[137521] = {
					"Irontide Powdershot", -- [1]
					"Siege of Boralus", -- [2]
				},
				[69944] = {
					"Sand Elemental", -- [1]
					"Throne of Thunder", -- [2]
				},
				[152874] = {
					"Vez'okk the Lightless", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[153130] = {
					"Greater Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[155689] = {
					"Zanj'ir Gladiator", -- [1]
					"The Eternal Palace", -- [2]
				},
				[135475] = {
					"Kula the Butcher", -- [1]
					"Kings' Rest", -- [2]
				},
				[140337] = {
					"Nightscale Hatchling", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[71480] = {
					"Sun Tenderheart", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[73783] = {
					"Danger Ahead", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[133685] = {
					"Befouled Spirit", -- [1]
					"The Underrot", -- [2]
				},
				[152364] = {
					"Radiance of Azshara", -- [1]
					"The Eternal Palace", -- [2]
				},
				[133430] = {
					"Venture Co. Mastermind", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[71481] = {
					"Embodied Sorrow", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[71865] = {
					"Garrosh Hellscream", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[133943] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[72249] = {
					"Galakras", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[159275] = {
					"Portal Keeper", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[70586] = {
					"Eternal Guardian", -- [1]
					"Throne of Thunder", -- [2]
				},
				[133432] = {
					"Venture Co. Alchemist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[130333] = {
					"Gritplate Basilisk", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[133944] = {
					"Aspix", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[71482] = {
					"Embodied Desperation", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[132921] = {
					"Tidemistress Sser'ah", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[157486] = {
					"Horrific Hemorrhage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[25371] = {
					"Sunblade Dawn Priest", -- [1]
					"The Sunwell", -- [2]
				},
				[155951] = {
					"Ruffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[130334] = {
					"Gritplate Gazer", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[136249] = {
					"Guardian Elemental", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[157231] = {
					"Shad'har the Insatiable", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[25595] = {
					"Chaos Gazer", -- [1]
					"The Sunwell", -- [2]
				},
				[155952] = {
					"Suffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[136250] = {
					"Hoodoo Hexer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[25851] = {
					"Volatile Fiend", -- [1]
					"The Sunwell", -- [2]
				},
				[155953] = {
					"C'Thuffer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[130335] = {
					"Gritplate Crystaleye", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[119205] = {
					"Moontalon", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[70589] = {
					"Cavern Burrower", -- [1]
					"Throne of Thunder", -- [2]
				},
				[122532] = {
					"Ember of Taeshalach", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[153141] = {
					"Endless Hunger Totem", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[156980] = {
					"Essence of Void", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135231] = {
					"Spectral Brute", -- [1]
					"Kings' Rest", -- [2]
				},
				[24892] = {
					"Sathrovarr the Corruptor", -- [1]
					"The Sunwell", -- [2]
				},
				[64353] = {
					"Set'thik Gale-Slicer", -- [1]
					"Heart of Fear", -- [2]
				},
				[151096] = {
					"Gara", -- [1]
					"Waycrest Manor", -- [2]
				},
				[157238] = {
					"Prophet Skitra", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[25372] = {
					"Sunblade Scout", -- [1]
					"The Sunwell", -- [2]
				},
				[130338] = {
					"Dustfang", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[158774] = {
					"Broken Citizen", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[124581] = {
					"Spineshell Snapper", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[153401] = {
					"K'thir Dominator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[135234] = {
					"Diseased Mastiff", -- [1]
					"Waycrest Manor", -- [2]
				},
				[129699] = {
					"Ludwig Von Tortollan", -- [1]
					"Freehold", -- [2]
				},
				[161334] = {
					"Gnashing Terror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135235] = {
					"Spectral Beastmaster", -- [1]
					"Kings' Rest", -- [2]
				},
				[148797] = {
					"Magus of the Dead", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[161335] = {
					"Void Horror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[62691] = {
					"Living Amber", -- [1]
					"Heart of Fear", -- [2]
				},
				[140354] = {
					"Brightscale Wind Serpent", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[151613] = {
					"Anti-Personnel Squirrel", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[136005] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[140355] = {
					"Brightscale Screecher", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[137029] = {
					"Ordnance Specialist", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136006] = {
					"Rowdy Reveler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[140356] = {
					"Brightscale Hatchling", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[70594] = {
					"Mist Lurker", -- [1]
					"Throne of Thunder", -- [2]
				},
				[135239] = {
					"Spectral Witch Doctor", -- [1]
					"Kings' Rest", -- [2]
				},
				[154174] = {
					"Horrific Summoner", -- [1]
					"The Eternal Palace", -- [2]
				},
				[64355] = {
					"Kor'thik Silentwing", -- [1]
					"Heart of Fear", -- [2]
				},
				[135240] = {
					"Soul Essence", -- [1]
					"Waycrest Manor", -- [2]
				},
				[131402] = {
					"Underrot Tick", -- [1]
					"The Underrot", -- [2]
				},
				[154175] = {
					"Horrific Summoner", -- [1]
					"The Eternal Palace", -- [2]
				},
				[72130] = {
					"Kor'jus", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[158781] = {
					"Shredded Psyche", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135241] = {
					"Bilge Rat Pillager", -- [1]
					"Siege of Boralus", -- [2]
				},
				[160061] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[128551] = {
					"Irontide Mastiff", -- [1]
					"Freehold", -- [2]
				},
				[73538] = {
					"Kor'kron War Wolf", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[25597] = {
					"Oblivion Mage", -- [1]
					"The Sunwell", -- [2]
				},
				[121003] = {
					"Rez the Tombwatcher", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[72131] = {
					"Blind Blademaster", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[70212] = {
					"Flaming Head", -- [1]
					"Throne of Thunder", -- [2]
				},
				[119724] = {
					"Tidal Surger", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[130087] = {
					"Irontide Raider", -- [1]
					"Tol Dagor", -- [2]
				},
				[73539] = {
					"Kor'kron Den Mother", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[73667] = {
					"Windreaver Tar'rath", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[129064] = {
					"Phoenix Mage Rhydras", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[72132] = {
					"Craven Drok", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[70341] = {
					"Tormented Spirit", -- [1]
					"Throne of Thunder", -- [2]
				},
				[32666] = {
					"Training Dummy", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[134990] = {
					"Charged Dust Devil", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[129065] = {
					"Phoenix Mage Ryleia", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[138061] = {
					"Venture Co. Longshoreman", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134991] = {
					"Sandfury Stonefist", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[14498] = {
					"Tosamina", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[135759] = {
					"Earthwall Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[64357] = {
					"Kor'thik Swarmer", -- [1]
					"Heart of Fear", -- [2]
				},
				[157253] = {
					"Ka'zir", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[127019] = {
					"Training Dummy", -- [1]
					"Freehold", -- [2]
				},
				[131666] = {
					"Coven Thornshaper", -- [1]
					"Waycrest Manor", -- [2]
				},
				[157254] = {
					"Tek'ris", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134993] = {
					"Mchimba the Embalmer", -- [1]
					"Kings' Rest", -- [2]
				},
				[151881] = {
					"Abyssal Commander Sivara", -- [1]
					"The Eternal Palace", -- [2]
				},
				[131667] = {
					"Soulbound Goliath", -- [1]
					"Waycrest Manor", -- [2]
				},
				[73414] = {
					"Kor'kron Reaper", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[157255] = {
					"Aqir Drone", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[73670] = {
					"Gate-Crasher Sav'ah", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[158279] = {
					"Haywire Clockwork Rocket Bot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[150859] = {
					"Za'qul", -- [1]
					"The Eternal Palace", -- [2]
				},
				[159303] = {
					"Monstrous Behemoth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[72903] = {
					"Kor'kron Siegemaster", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[131669] = {
					"Jagged Hound", -- [1]
					"Waycrest Manor", -- [2]
				},
				[133972] = {
					"Heavy Cannon", -- [1]
					"Tol Dagor", -- [2]
				},
				[64358] = {
					"Set'thik Tempest", -- [1]
					"Heart of Fear", -- [2]
				},
				[131670] = {
					"Heartsbane Vinetwister", -- [1]
					"Waycrest Manor", -- [2]
				},
				[152396] = {
					"Guardian of Azeroth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[159305] = {
					"Maddened Conscript", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135765] = {
					"Torrent Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[135254] = {
					"Irontide Raider", -- [1]
					"Tol Dagor", -- [2]
				},
				[133463] = {
					"Venture Co. War Machine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[152910] = {
					"Queen Azshara", -- [1]
					"The Eternal Palace", -- [2]
				},
				[158284] = {
					"Craggle Wobbletop", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[134232] = {
					"Hired Assassin", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[159308] = {
					"Zealous Adherent", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[158285] = {
					"Tinkered Shieldbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[159309] = {
					"Leeching Parasite", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[158286] = {
					"Reprogrammed Warbot", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[25599] = {
					"Cataclysm Hound", -- [1]
					"The Sunwell", -- [2]
				},
				[63592] = {
					"Set'thik Gustwing", -- [1]
					"Heart of Fear", -- [2]
				},
				[139097] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[131677] = {
					"Heartsbane Runeweaver", -- [1]
					"Waycrest Manor", -- [2]
				},
				[159312] = {
					"Living Blood", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[60586] = {
					"Elder Asani", -- [1]
					"Terrace of Endless Spring", -- [2]
				},
				[136541] = {
					"Bile Oozeling", -- [1]
					"Waycrest Manor", -- [2]
				},
				[94018] = {
					"Shadow Burster", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[158035] = {
					"Magister Umbric", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[157268] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[135007] = {
					"Orb Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[135263] = {
					"Ashvane Spotter", -- [1]
					"Siege of Boralus", -- [2]
				},
				[153942] = {
					"Annihilator Lak'hal", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[128434] = {
					"Feasting Skyscreamer", -- [1]
					"Atal'Dazar", -- [2]
				},
				[69455] = {
					"Zandalari Water-Binder", -- [1]
					"Throne of Thunder", -- [2]
				},
				[62442] = {
					"Tsulong", -- [1]
					"Terrace of Endless Spring", -- [2]
				},
				[153943] = {
					"Decimator Shiq'voth", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[160341] = {
					"Sewer Beastling", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[69712] = {
					"Ji-Kun", -- [1]
					"Throne of Thunder", -- [2]
				},
				[63594] = {
					"Coagulated Amber", -- [1]
					"Heart of Fear", -- [2]
				},
				[121399] = {
					"Inquisitor Sebilus", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[72655] = {
					"Fragment of Pride", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[131685] = {
					"Runic Disciple", -- [1]
					"Waycrest Manor", -- [2]
				},
				[138338] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				[71504] = {
					"Siegecrafter Blackfuse", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[158041] = {
					"N'Zoth the Corruptor", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[123191] = {
					"Fel Hound", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[162647] = {
					"Willing Sacrifice", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[121400] = {
					"Accusator Gnazh", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[72784] = {
					"Kor'kron Gunner", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[152669] = {
					"Void Globule", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[136549] = {
					"Ashvane Cannoneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[159578] = {
					"Exposed Synapse", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[159067] = {
					"Qsilver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[152159] = {
					"Zoatroid", -- [1]
					"The Eternal Palace", -- [2]
				},
				[130485] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136295] = {
					"Sunken Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[71378] = {
					"Quilen Guardian", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[132713] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[139110] = {
					"Spark Channeler", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[72658] = {
					"Amalgamated Hubris", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[151649] = {
					"Defense Bot Mk I", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[133482] = {
					"Crawler Mine", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[136297] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[126776] = {
					"Slobbering Fiend", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[164188] = {
					"Horrific Figment", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[134251] = {
					"Seneschal M'bara", -- [1]
					"Kings' Rest", -- [2]
				},
				[72787] = {
					"Blade of the Hundred Steps", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[164189] = {
					"Horrific Figment", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[136043] = {
					"Brackish", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[71380] = {
					"Animated Stone Mogu", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[163678] = {
					"Clotted Corruption", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139626] = {
					"Dredged Sailor", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[72276] = {
					"Amalgam of Corruption", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[130488] = {
					"Mech Jockey", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134766] = {
					"Wavespitter", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[121021] = {
					"Shadowsworn Invader", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[123452] = {
					"Fel Lord", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[63853] = {
					"Zar'thik Supplicant", -- [1]
					"Heart of Fear", -- [2]
				},
				[119742] = {
					"Felguard Invader", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[71382] = {
					"Burial Urn", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[72150] = {
					"Kor'kron Shadowmage", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[161124] = {
					"Urg'roth, Breaker of Heroes", -- [1]
					"Waycrest Manor", -- [2]
				},
				[72662] = {
					"Vanity", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[151657] = {
					"Bomb Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[25506] = {
					"Shadowsword Lifeshaper", -- [1]
					"The Sunwell", -- [2]
				},
				[134514] = {
					"Abyssal Cultist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[151658] = {
					"Strider Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[158567] = {
					"Tormented Kor'kron Annihilator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[68313] = {
					"Roaming Fog", -- [1]
					"Throne of Thunder", -- [2]
				},
				[153194] = {
					"Briny Bubble", -- [1]
					"The Eternal Palace", -- [2]
				},
				[72791] = {
					"Lingering Corruption", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[131445] = {
					"Block Warden", -- [1]
					"Tol Dagor", -- [2]
				},
				[160871] = {
					"Possessed Package", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[152939] = {
					"Boundless Corruption", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[69465] = {
					"Jin'rokh the Breaker", -- [1]
					"Throne of Thunder", -- [2]
				},
				[62511] = {
					"Amber-Shaper Un'sok", -- [1]
					"Heart of Fear", -- [2]
				},
				[134005] = {
					"Shalebiter", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[72408] = {
					"Anti-Air Turret", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[153196] = {
					"Scrapbone Grunter", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[162664] = {
					"Aqir Swarmer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[71385] = {
					"Sri'thik Bombardier", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[158315] = {
					"Eye of Chaos", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[163690] = {
					"Shath'Yar Scribe", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[71770] = {
					"Kor'kron Ironblade", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[137591] = {
					"Healing Tide Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[144244] = {
					"The Platinum Pummeler", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[129598] = {
					"Freehold Pack Mule", -- [1]
					"Freehold", -- [2]
				},
				[25315] = {
					"Kil'jaeden", -- [1]
					"The Sunwell", -- [2]
				},
				[163947] = {
					"Psychophage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[25507] = {
					"Sunblade Protector", -- [1]
					"The Sunwell", -- [2]
				},
				[71515] = {
					"General Nazgrim", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[71771] = {
					"Kor'kron Arcweaver", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[72155] = {
					"Cazul", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[129599] = {
					"Cutwater Knife Juggler", -- [1]
					"Freehold", -- [2]
				},
				[72411] = {
					"Kor'kron Provisioner", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[117957] = {
					"Tormented Soul", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[134012] = {
					"Taskmaster Askari", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[71388] = {
					"Amber-Encased Kunchong", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[71772] = {
					"Kor'kron Assassin", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[144248] = {
					"Head Machinist Sparkflux", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[129600] = {
					"Bilge Rat Brinescale", -- [1]
					"Freehold", -- [2]
				},
				[72412] = {
					"Kor'kron Grunt", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[155763] = {
					"Darkweaver Kar'dress", -- [1]
					"The Eternal Palace", -- [2]
				},
				[144249] = {
					"Omega Buster", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[71773] = {
					"Kor'kron Warshaman", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[162417] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[72157] = {
					"Hagrus", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[129601] = {
					"Cutwater Harpooner", -- [1]
					"Freehold", -- [2]
				},
				[127810] = {
					"Slobbering Fiend", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[157812] = {
					"Billibub Cogspinner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[157813] = {
					"Sprite Jumpsprocket", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[135552] = {
					"Deathtouched Slaver", -- [1]
					"Waycrest Manor", -- [2]
				},
				[72158] = {
					"Katis", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[129602] = {
					"Irontide Enforcer", -- [1]
					"Freehold", -- [2]
				},
				[161140] = {
					"Bwemba", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[155767] = {
					"Grul'taj", -- [1]
					"The Eternal Palace", -- [2]
				},
				[154744] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[155768] = {
					"Squallbinder Mal'ur", -- [1]
					"The Eternal Palace", -- [2]
				},
				[158327] = {
					"Crackling Shard", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[72159] = {
					"Muragus", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[162933] = {
					"Thought Harvester", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[139393] = {
					"Mirelurk Clutchguard", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[72927] = {
					"Kovok", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[158328] = {
					"Il'gynoth", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[150396] = {
					"Aerial Unit R-21/X", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[152699] = {
					"Voidbound Berserker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[71392] = {
					"Shadow Ritualist Phylactery", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[132741] = {
					"Flamescale Hydra", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[73951] = {
					"Commander Tik", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[150397] = {
					"King Mechagon", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[156794] = {
					"SI:7 Light-Hunter", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[132742] = {
					"Flamescale Strider", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[139395] = {
					"Mirelurk Bogtender", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[150142] = {
					"Scrapbone Trashtosser", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[73184] = {
					"Starved Yeti", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[156795] = {
					"SI:7 Informant", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[71393] = {
					"Mogu Shadow Ritualist", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[73696] = {
					"Grand Master Alchemist Ki'xen", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[150143] = {
					"Scrapbone Grinder", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[132744] = {
					"Frostscale Hydra", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[139397] = {
					"Mirelurk Lurker", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[72929] = {
					"Sra'thik Amber-Master", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[73185] = {
					"Enraged Mushan Beast", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[132745] = {
					"Frostscale Wanderer", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[135048] = {
					"Gorestained Piglet", -- [1]
					"Waycrest Manor", -- [2]
				},
				[139398] = {
					"Mirelurk Assassin", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[152704] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[140678] = {
					"Frostbeard Howler", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[135049] = {
					"Dreadwing Raven", -- [1]
					"Waycrest Manor", -- [2]
				},
				[139399] = {
					"Mirelurk Basher", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[154240] = {
					"Azshara's Devoted", -- [1]
					"The Eternal Palace", -- [2]
				},
				[25509] = {
					"Priestess of Torment", -- [1]
					"The Sunwell", -- [2]
				},
				[71395] = {
					"Modified Anima Golem", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[120651] = {
					"Explosives", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[163708] = {
					"Umbral Gatekeeper", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135562] = {
					"Venomous Ophidian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[136330] = {
					"Soul Thorns", -- [1]
					"Waycrest Manor", -- [2]
				},
				[135819] = {
					"Living Tornado", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[134284] = {
					"Fallen Deathspeaker", -- [1]
					"The Underrot", -- [2]
				},
				[93913] = {
					"Fel Scorcher", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[135052] = {
					"Blight Toad", -- [1]
					"Waycrest Manor", -- [2]
				},
				[157825] = {
					"Crazed Tormenter", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[136076] = {
					"Agitated Nimbus", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[70245] = {
					"Training Dummy", -- [1]
					"Throne of Thunder", -- [2]
				},
				[62837] = {
					"Grand Empress Shek'zeer", -- [1]
					"Heart of Fear", -- [2]
				},
				[161408] = {
					"Malicious Growth", -- [1]
					"Waycrest Manor", -- [2]
				},
				[162432] = {
					"Awakened Terror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[71397] = {
					"Zar'thik Amber Priest", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[133007] = {
					"Unbound Abomination", -- [1]
					"The Underrot", -- [2]
				},
				[70246] = {
					"Spirit Flayer", -- [1]
					"Throne of Thunder", -- [2]
				},
				[72421] = {
					"Kor'kron Overseer", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[154758] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[71398] = {
					"Zar'thik Swarmer", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[137103] = {
					"Blood Visage", -- [1]
					"The Underrot", -- [2]
				},
				[70247] = {
					"Venomous Head", -- [1]
					"Throne of Thunder", -- [2]
				},
				[72422] = {
					"Auctioneer Drezmit", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[155271] = {
					"Abyssal Spearhunter", -- [1]
					"The Eternal Palace", -- [2]
				},
				[63030] = {
					"Enslaved Bonesmasher", -- [1]
					"Heart of Fear", -- [2]
				},
				[150154] = {
					"Saurolisk Bonenipper", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[67177] = {
					"Zar'thik Supplicant", -- [1]
					"Heart of Fear", -- [2]
				},
				[69352] = {
					"Vampiric Cave Bat", -- [1]
					"Throne of Thunder", -- [2]
				},
				[155272] = {
					"Blackwater Oracle", -- [1]
					"The Eternal Palace", -- [2]
				},
				[116689] = {
					"Atrigan", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[129227] = {
					"Azerokk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[158343] = {
					"Organ of Corruption", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[70248] = {
					"Arcane Head", -- [1]
					"Throne of Thunder", -- [2]
				},
				[72423] = {
					"Auctioneer Fazdran", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[136083] = {
					"Forgotten Denizen", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[130635] = {
					"Stonefury", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[62711] = {
					"Amber Monstrosity", -- [1]
					"Heart of Fear", -- [2]
				},
				[160904] = {
					"Image of Absolution", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[72424] = {
					"Auctioneer Ralinza", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[161416] = {
					"Aqir Shadowcrafter", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[63031] = {
					"Set'thik Fanatic", -- [1]
					"Heart of Fear", -- [2]
				},
				[144785] = {
					"Nagtar Wolfsbane", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[71529] = {
					"Thok the Bloodthirsty", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[116691] = {
					"Belac", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[150159] = {
					"King Gobbamak", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[152718] = {
					"Alleria Windrunner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[72425] = {
					"Auctioneer Xifa", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[158092] = {
					"Fallen Heartpiercer", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[150160] = {
					"Scrapbone Bully", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[146834] = {
					"Necromancer Master", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[155278] = {
					"Shimmerskin Pufferfish", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134041] = {
					"Infected Peasant", -- [1]
					"Waycrest Manor", -- [2]
				},
				[63032] = {
					"Sra'thik Shield Master", -- [1]
					"Heart of Fear", -- [2]
				},
				[73194] = {
					"Kor'kron Iron Scorpion", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[130638] = {
					"Vicejaw Crocolisk", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[144789] = {
					"Ranah Saberclaw", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[126928] = {
					"Irontide Corsair", -- [1]
					"Freehold", -- [2]
				},
				[135322] = {
					"The Golden Serpent", -- [1]
					"Kings' Rest", -- [2]
				},
				[129231] = {
					"Rixxa Fluxflame", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[152722] = {
					"Fallen Voidspeaker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[72427] = {
					"Orgrimmar Peon", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[73195] = {
					"Kor'kron Jailer", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[136347] = {
					"Tidesage Initiate", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[146838] = {
					"Brittle Skeleton", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[159632] = {
					"Cultist Shadowblade", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[139418] = {
					"Stagnant One", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[129232] = {
					"Mogul Razdunk", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[74091] = {
					"Kor'kron Iron Sentinel", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[156818] = {
					"Wrathion", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[72428] = {
					"Horthus", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[159633] = {
					"Cultist Executioner", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[139419] = {
					"High Oracle Asayza", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[73452] = {
					"Harbinger of Y'Shaarj", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[130896] = {
					"Blackout Barrel", -- [1]
					"Freehold", -- [2]
				},
				[120789] = {
					"Lieutenant Silvermight", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[156820] = {
					"Dod", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[72429] = {
					"Olvia", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[72941] = {
					"Dragonmaw Grunt", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[150168] = {
					"Toxic Monstrosity", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[73197] = {
					"Lesser Sha Puddle", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[139422] = {
					"Scaled Krolusk Tamer", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[160404] = {
					"Angry Bear Rug Spirit", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[123477] = {
					"Antoran Doomguard", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[72430] = {
					"Shan'ti", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[135329] = {
					"Matron Bryndle", -- [1]
					"Waycrest Manor", -- [2]
				},
				[72942] = {
					"Dragonmaw Flagbearer", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[160405] = {
					"Angry Treant Chair Spirit", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[136353] = {
					"Colossal Tentacle", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[161173] = {
					"Abyssal Watcher", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[121138] = {
					"Tormented Fragment", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[131492] = {
					"Devout Blood Priest", -- [1]
					"The Underrot", -- [2]
				},
				[119950] = {
					"Brimstone Infernal", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[144286] = {
					"Asset Manager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[123478] = {
					"Antoran Felguard", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[135764] = {
					"Explosive Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[63049] = {
					"Set'thik Swiftblade", -- [1]
					"Heart of Fear", -- [2]
				},
				[120719] = {
					"Lunar Priestess", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[139425] = {
					"Crazed Incubator", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[72943] = {
					"Dragonmaw Proto-Drake", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[118523] = {
					"Huntress Kasparian", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[160663] = {
					"Essence of Nightmare", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[120721] = {
					"Lunar Archer", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[152987] = {
					"Faceless Willbreaker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[70587] = {
					"Shale Stalker", -- [1]
					"Throne of Thunder", -- [2]
				},
				[120720] = {
					"Lunar Guard", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[153755] = {
					"Naeno Megacrash", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[115844] = {
					"Goroth", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[71153] = {
					"Hisek the Swarmkeeper", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[94693] = {
					"Siegeworks Technician", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[130639] = {
					"Vicejaw Chomper", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[152988] = {
					"Faceless Shadowcaller", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[153244] = {
					"Oblivion Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[157594] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[63035] = {
					"Zar'thik Zealot", -- [1]
					"Heart of Fear", -- [2]
				},
				[113321] = {
					"Shambling Hungerer", -- [1]
					"The Nighthold", -- [2]
				},
				[120153] = {
					"Eonic Defender", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[154524] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[142324] = {
					"Bluefin Dolphin", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[69910] = {
					"Drakkari Frost Warden", -- [1]
					"Throne of Thunder", -- [2]
				},
				[70445] = {
					"Stormbringer Draz'kil", -- [1]
					"Throne of Thunder", -- [2]
				},
				[156577] = {
					"Therum Deepforge", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[70236] = {
					"Zandalari Storm-Caller", -- [1]
					"Throne of Thunder", -- [2]
				},
				[71921] = {
					"Darkfang", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[135846] = {
					"Sand-Crusted Striker", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[122847] = {
					"Umbral Priestess", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[140452] = {
					"Pikehorn the Sleeper", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[70230] = {
					"Zandalari Blade Initiate", -- [1]
					"Throne of Thunder", -- [2]
				},
				[158565] = {
					"Naros", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[131585] = {
					"Enthralled Guard", -- [1]
					"Waycrest Manor", -- [2]
				},
				[156133] = {
					"Dreadcoil Hulk", -- [1]
					"The Eternal Palace", -- [2]
				},
				[72945] = {
					"Dragonmaw Bonecrusher", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[156523] = {
					"Maut", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[71154] = {
					"Ka'roz the Locust", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[144246] = {
					"K.U.-J.0.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[156650] = {
					"Dark Manifestation", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[72893] = {
					"Orgrimmar Peon", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[128967] = {
					"Ashvane Sniper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[122969] = {
					"Zanchuli Witch-Doctor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[73530] = {
					"Dragonmaw Grunt", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[129366] = {
					"Bilge Rat Buccaneer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[162715] = {
					"Fanatical Cultist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[126918] = {
					"Irontide Crackshot", -- [1]
					"Freehold", -- [2]
				},
				[72434] = {
					"Treasury Guard", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[161229] = {
					"Aqir Venomweaver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[127233] = {
					"Flameweaver", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[153760] = {
					"Enthralled Footman", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[73226] = {
					"Lesser Sha Puddle", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[73098] = {
					"Kor'kron Overseer", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[71155] = {
					"Korven the Prime", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[61245] = {
					"Capacitor Totem", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[93955] = {
					"Delusional Zealot", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[161437] = {
					"Explosive Scarab", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[95640] = {
					"Sargerei Soul Cleaver", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[133379] = {
					"Adderis", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[71923] = {
					"Bloodclaw", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[158367] = {
					"Basher Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[162717] = {
					"Sinister Soulcarver", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140456] = {
					"Bramblefur Musken", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[130436] = {
					"Off-Duty Laborer", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[94604] = {
					"Gorebound Corruptor", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[138369] = {
					"Footbomb Hooligan", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[137473] = {
					"Guard Captain Atu", -- [1]
					"Kings' Rest", -- [2]
				},
				[72947] = {
					"Kor'kron Demolisher", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[130437] = {
					"Mine Rat", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[71156] = {
					"Kaz'tik the Manipulator", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[140457] = {
					"Bramblefur Grazer", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[158157] = {
					"Overlord Mathias Shaw", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[62397] = {
					"Wind Lord Mel'jarak", -- [1]
					"Heart of Fear", -- [2]
				},
				[139392] = {
					"Mirelurk Saurok", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[155810] = {
					"Frozen Sentry", -- [1]
					"The Eternal Palace", -- [2]
				},
				[158452] = {
					"Mindtwist Tendril", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[160416] = {
					"Angry Ale Barrel Spirit", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[162719] = {
					"Void Ascendant", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[140458] = {
					"Bramblefur Bull", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[129050] = {
					"Antoran Felguard", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[72564] = {
					"Doomlord", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[157602] = {
					"Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[63597] = {
					"Coagulated Amber", -- [1]
					"Heart of Fear", -- [2]
				},
				[131849] = {
					"Crazed Marksman", -- [1]
					"Waycrest Manor", -- [2]
				},
				[126333] = {
					"Felseeker Ritualist", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[71157] = {
					"Xaril the Poisoned Mind", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[131436] = {
					"Chosen Blood Matron", -- [1]
					"The Underrot", -- [2]
				},
				[134691] = {
					"Static-charged Dervish", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[145065] = {
					"Fledgling Nightwing", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[157603] = {
					"Void Globule", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[122972] = {
					"Dazar'ai Augur", -- [1]
					"Atal'Dazar", -- [2]
				},
				[127497] = {
					"Ashvane Warden", -- [1]
					"Tol Dagor", -- [2]
				},
				[92523] = {
					"Vazeel'fazag", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[144298] = {
					"Defense Bot Mk III", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[123533] = {
					"Tarneth", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[70249] = {
					"Focused Eye", -- [1]
					"Throne of Thunder", -- [2]
				},
				[155764] = {
					"Rak'sha the Swift", -- [1]
					"The Eternal Palace", -- [2]
				},
				[157604] = {
					"Crawling Corruption", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[155813] = {
					"Court Attendant", -- [1]
					"The Eternal Palace", -- [2]
				},
				[132491] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[139949] = {
					"Plague Doctor", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[71158] = {
					"Rik'kal the Dissector", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[129214] = {
					"Coin-Operated Crowd Pummeler", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[93931] = {
					"Gorebound Felcaster", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[71542] = {
					"Blood", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[163746] = {
					"Walkie Shockie X1", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[155814] = {
					"Eldritch Understudy", -- [1]
					"The Eternal Palace", -- [2]
				},
				[160458] = {
					"Thulman Flintcrag", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[129370] = {
					"Irontide Waveshaper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[144300] = {
					"Mechagon Citizen", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[25508] = {
					"Shadowsword Guardian", -- [1]
					"The Sunwell", -- [2]
				},
				[128969] = {
					"Ashvane Commander", -- [1]
					"Siege of Boralus", -- [2]
				},
				[155791] = {
					"Horrific Shrieker", -- [1]
					"The Eternal Palace", -- [2]
				},
				[133389] = {
					"Galvazzt", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[126969] = {
					"Trothak", -- [1]
					"Freehold", -- [2]
				},
				[32517] = {
					"Nox", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[151659] = {
					"Rocket Tonk", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[130522] = {
					"Freehold Shipmate", -- [1]
					"Freehold", -- [2]
				},
				[150222] = {
					"Gunker", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[129802] = {
					"Earthrager", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[71543] = {
					"Immerseus", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[157607] = {
					"Faceless Shadowcaller", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[138428] = {
					"Spitefin Myrmidon", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[130028] = {
					"Ashvane Priest", -- [1]
					"Tol Dagor", -- [2]
				},
				[158375] = {
					"Corruptor Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134056] = {
					"Aqu'sirr", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[64902] = {
					"Kor'thik Fleshrender", -- [1]
					"Heart of Fear", -- [2]
				},
				[132532] = {
					"Kul Tiran Marksman", -- [1]
					"Siege of Boralus", -- [2]
				},
				[132922] = {
					"Enslaved Murloc", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[157608] = {
					"Faceless Willbreaker", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[24207] = {
					"Army of the Dead", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[150146] = {
					"Scrapbone Shaman", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[158376] = {
					"Psychus", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[71160] = {
					"Iyyokuk the Lucid", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[153526] = {
					"Aqir Swarmer", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[131863] = {
					"Raal the Gluttonous", -- [1]
					"Waycrest Manor", -- [2]
				},
				[135761] = {
					"Thundering Totem", -- [1]
					"Kings' Rest", -- [2]
				},
				[157609] = {
					"K'thir Mindcarver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[35189] = {
					"Edison", -- [1]
					"Waycrest Manor", -- [2]
				},
				[73191] = {
					"Aqueous Defender", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[92526] = {
					"Zerik'shekor", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[134069] = {
					"Vol'zith the Whisperer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[62402] = {
					"Kor'thik Elite Blademaster", -- [1]
					"Heart of Fear", -- [2]
				},
				[134139] = {
					"Shrine Templar", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[157354] = {
					"Vexiona", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157610] = {
					"K'thir Dominator", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[72486] = {
					"Doyo'da", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[134994] = {
					"Spectral Headhunter", -- [1]
					"Kings' Rest", -- [2]
				},
				[150190] = {
					"HK-8 Aerial Oppression Unit", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[71161] = {
					"Kil'ruk the Wind-Reaver", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[160937] = {
					"Night Terror", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[129527] = {
					"Bilge Rat Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[93952] = {
					"Fel Raven", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[131383] = {
					"Sporecaller Zancha", -- [1]
					"The Underrot", -- [2]
				},
				[77942] = {
					"Primal Storm Elemental", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[157811] = {
					"Lilliam Sparkspindle", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[92527] = {
					"Dag'gorath", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[159266] = {
					"Portal Master", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[125535] = {
					"Riftworld Assistant", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[134338] = {
					"Tidesage Enforcer", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[152128] = {
					"Orgozoa", -- [1]
					"The Eternal Palace", -- [2]
				},
				[157612] = {
					"Eye of Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[153064] = {
					"Overzealous Hulk", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134423] = {
					"Abyss Dweller", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[141283] = {
					"Kul Tiran Halberd", -- [1]
					"Siege of Boralus", -- [2]
				},
				[139800] = {
					"Galecaller Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[130653] = {
					"Wanton Sapper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[156575] = {
					"Dark Inquisitor Xanesh", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[130909] = {
					"Fetid Maggot", -- [1]
					"The Underrot", -- [2]
				},
				[157613] = {
					"Maw of Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[145185] = {
					"Gnomercy 4.U.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[417] = {
					"Pryyzhum", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[123532] = {
					"Dark Keeper", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[72768] = {
					"Kor'kron War Wolf", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[68220] = {
					"Gastropod", -- [1]
					"Throne of Thunder", -- [2]
				},
				[129758] = {
					"Irontide Grenadier", -- [1]
					"Freehold", -- [2]
				},
				[68476] = {
					"Horridon", -- [1]
					"Throne of Thunder", -- [2]
				},
				[157614] = {
					"Tentacle of Drest'agath", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[128095] = {
					"Sister of the Lash", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[72954] = {
					"Kor'thik Honor Guard", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[150653] = {
					"Blackwater Behemoth", -- [1]
					"The Eternal Palace", -- [2]
				},
				[118244] = {
					"Tesla", -- [1]
					"Waycrest Manor", -- [2]
				},
				[73310] = {
					"Dragonmaw War Banner", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[120808] = {
					"Lylth the Silent", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[25483] = {
					"Shadowsword Manafiend", -- [1]
					"The Sunwell", -- [2]
				},
				[122850] = {
					"Umbral Guard", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[129550] = {
					"Bilge Rat Padfoot", -- [1]
					"Freehold", -- [2]
				},
				[163712] = {
					"Dying Voidspawn", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[150195] = {
					"Gnome-Eating Slime", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[134173] = {
					"Animated Droplet", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[134331] = {
					"King Rahu'ai", -- [1]
					"Kings' Rest", -- [2]
				},
				[161198] = {
					"Warpweaver Dushar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[152312] = {
					"Azsh'ari Witch", -- [1]
					"The Eternal Palace", -- [2]
				},
				[25867] = {
					"Sunblade Dragonhawk", -- [1]
					"The Sunwell", -- [2]
				},
				[123480] = {
					"Antoran Champion", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[120777] = {
					"Guardian Sentry", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[63508] = {
					"Xuen", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[25038] = {
					"Felmyst", -- [1]
					"The Sunwell", -- [2]
				},
				[130655] = {
					"Bobby Howlis", -- [1]
					"Tol Dagor", -- [2]
				},
				[71420] = {
					"Hungry Kunchong", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[73349] = {
					"Tormented Initiate", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[122851] = {
					"Umbral Archer", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[161286] = {
					"Dark Ritualist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[136735] = {
					"Ashvane Marine", -- [1]
					"Tol Dagor", -- [2]
				},
				[122984] = {
					"Dazar'ai Colossus", -- [1]
					"Atal'Dazar", -- [2]
				},
				[113128] = {
					"Withered Skulker", -- [1]
					"The Nighthold", -- [2]
				},
				[68222] = {
					"Bow Fly Swarm", -- [1]
					"Throne of Thunder", -- [2]
				},
				[133436] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[157158] = {
					"Cultist Slavedriver", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[130521] = {
					"Freehold Deckhand", -- [1]
					"Freehold", -- [2]
				},
				[72828] = {
					"Claw of Burning Anger", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[161218] = {
					"Aqir Crusher", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[130400] = {
					"Irontide Crusher", -- [1]
					"Freehold", -- [2]
				},
				[72770] = {
					"Kor'kron Dark Farseer", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[118374] = {
					"Captain Yathae Moonstrike", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[153090] = {
					"Lady Venomtongue", -- [1]
					"The Eternal Palace", -- [2]
				},
				[134701] = {
					"Blood Effigy", -- [1]
					"The Underrot", -- [2]
				},
				[145337] = {
					"Sandclaw Crab", -- [1]
					"The Eternal Palace", -- [2]
				},
				[88314] = {
					"Dungeoneer's Training Dummy", -- [1]
					"SMV Alliance Garrison Level 3", -- [2]
				},
				[72194] = {
					"Hellscream Demolisher", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[144293] = {
					"Waste Processing Unit", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[146843] = {
					"Spiked Ghoul", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[161217] = {
					"Aqir Skitterer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[89] = {
					"Infernal", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[150169] = {
					"Toxic Lurker", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[157620] = {
					"Prophet Skitra", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[72847] = {
					"Hellscream Annihilator", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[72964] = {
					"Goro'dan", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[137517] = {
					"Ashvane Destroyer", -- [1]
					"Siege of Boralus", -- [2]
				},
				[139799] = {
					"Ironhull Apprentice", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[150712] = {
					"Trixie Tazer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[127315] = {
					"Reanimation Totem", -- [1]
					"Atal'Dazar", -- [2]
				},
				[157365] = {
					"Crackling Stalker", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[153527] = {
					"Aqir Swarmleader", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[122468] = {
					"Noura, Mother of Flames", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[122773] = {
					"Decimator", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[160704] = {
					"Letter Encrusted Void Globule", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[26125] = {
					"Braincatcher", -- [1]
					"The Eternal Palace", -- [2]
				},
				[155276] = {
					"Bursting Cragfish", -- [1]
					"The Eternal Palace", -- [2]
				},
				[25373] = {
					"Shadowsword Soulbinder", -- [1]
					"The Sunwell", -- [2]
				},
				[157366] = {
					"Void Hunter", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[72958] = {
					"Dragonmaw Tidal Shaman", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[154663] = {
					"Gnome-Eating Droplet", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[122086] = {
					"Slitherblade Ironscale", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[73775] = {
					"War Master Kragg", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[25484] = {
					"Shadowsword Assassin", -- [1]
					"The Sunwell", -- [2]
				},
				[73342] = {
					"Fallen Pool Tender", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[123476] = {
					"Hulking Demolisher", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[153092] = {
					"Venna Seastorm", -- [1]
					"The Eternal Palace", -- [2]
				},
				[146118] = {
					"Territorial Needleback", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[144071] = {
					"Irontide Waveshaper", -- [1]
					"Siege of Boralus", -- [2]
				},
				[160182] = {
					"Void Initiate", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[73091] = {
					"Blackfuse Sellsword", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[72191] = {
					"Overlord Runthak", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[134058] = {
					"Galecaller Faye", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[162716] = {
					"Spellbound Ritualist", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[160183] = {
					"Void Fanatic", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[158136] = {
					"Inquisitor Darkspeak", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[144299] = {
					"Workshop Defender", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[156089] = {
					"Aqir Venomweaver", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[144295] = {
					"Mechagon Mechanic", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[144296] = {
					"Spider Tank", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[137233] = {
					"Plague Toad", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[136643] = {
					"Azerite Extractor", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[159416] = {
					"Spiked Tentacle", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[153531] = {
					"Aqir Bonecrusher", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[129369] = {
					"Irontide Raider", -- [1]
					"Siege of Boralus", -- [2]
				},
				[134060] = {
					"Lord Stormsong", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[128060] = {
					"Priestess of Delirium", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[151579] = {
					"Shield Generator", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[134063] = {
					"Brother Ironhull", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[123680] = {
					"Dark Keeper Aedis", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[159417] = {
					"Demented Knife-Twister", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[153532] = {
					"Aqir Mindhunter", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[135365] = {
					"Matron Alma", -- [1]
					"Waycrest Manor", -- [2]
				},
				[131527] = {
					"Lord Waycrest", -- [1]
					"Waycrest Manor", -- [2]
				},
				[130404] = {
					"Vermin Trapper", -- [1]
					"Freehold", -- [2]
				},
				[140455] = {
					"Bramblefur Calf", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[130011] = {
					"Irontide Buccaneer", -- [1]
					"Freehold", -- [2]
				},
				[161571] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[63053] = {
					"Garalon's Leg", -- [1]
					"Heart of Fear", -- [2]
				},
				[150165] = {
					"Slime Elemental", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[135366] = {
					"Blacktooth Arsonist", -- [1]
					"Tol Dagor", -- [2]
				},
				[71858] = {
					"Wavebinder Kardris", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[133870] = {
					"Diseased Lasher", -- [1]
					"The Underrot", -- [2]
				},
				[134828] = {
					"Aqualing", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[163841] = {
					"Amalgamation of Flesh", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134599] = {
					"Imbued Stormcaller", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[62543] = {
					"Blade Lord Ta'yak", -- [1]
					"Heart of Fear", -- [2]
				},
				[127482] = {
					"Sewer Vicejaw", -- [1]
					"Tol Dagor", -- [2]
				},
				[138281] = {
					"Faceless Corruptor", -- [1]
					"The Underrot", -- [2]
				},
				[122089] = {
					"Slitherblade Oracle", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[131785] = {
					"Buzzing Drone", -- [1]
					"Tol Dagor", -- [2]
				},
				[160699] = {
					"Angry Mailemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[136391] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[134600] = {
					"Sandswept Marksman", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[130661] = {
					"Venture Co. Earthshaper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[158140] = {
					"Frenzied Rat", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[129367] = {
					"Bilge Rat Tempest", -- [1]
					"Siege of Boralus", -- [2]
				},
				[25165] = {
					"Lady Sacrolash", -- [1]
					"The Sunwell", -- [2]
				},
				[153022] = {
					"Snang", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[152512] = {
					"Stormwraith", -- [1]
					"The Eternal Palace", -- [2]
				},
				[66181] = {
					"Zar'thik Supplicant", -- [1]
					"Heart of Fear", -- [2]
				},
				[144836] = {
					"Spikey", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[157605] = {
					"Burrowing Appendage", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[62980] = {
					"Imperial Vizier Zor'lok", -- [1]
					"Heart of Fear", -- [2]
				},
				[122605] = {
					"Petrified Foe", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[153377] = {
					"Goop", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[146116] = {
					"Needleback Forager", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[25485] = {
					"Shadowsword Deathbringer", -- [1]
					"The Sunwell", -- [2]
				},
				[135204] = {
					"Spectral Hex Priest", -- [1]
					"Kings' Rest", -- [2]
				},
				[134602] = {
					"Shrouded Fang", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[72728] = {
					"Kor'kron Blood Axe", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[122778] = {
					"Annihilator", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[139946] = {
					"Heart Guardian", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[144294] = {
					"Mechagon Tinkerer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[133835] = {
					"Feral Bloodswarmer", -- [1]
					"The Underrot", -- [2]
				},
				[25741] = {
					"M'uru", -- [1]
					"The Sunwell", -- [2]
				},
				[125545] = {
					"Blazing Imp", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[72451] = {
					"Kor'kron Dark Shaman", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[25837] = {
					"Shadowsword Commander", -- [1]
					"The Sunwell", -- [2]
				},
				[63593] = {
					"Set'thik Zephyrian", -- [1]
					"Heart of Fear", -- [2]
				},
				[122973] = {
					"Dazar'ai Confessor", -- [1]
					"Atal'Dazar", -- [2]
				},
				[157467] = {
					"Void Ascendant", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133836] = {
					"Reanimated Guardian", -- [1]
					"The Underrot", -- [2]
				},
				[136139] = {
					"Mechanized Peacekeeper", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[129015] = {
					"Southsea Third Mate", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[122263] = {
					"Spineshell Snapjaw", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[62405] = {
					"Sra'thik Amber-Trapper", -- [1]
					"Heart of Fear", -- [2]
				},
				[129000] = {
					"Southsea Brawler", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[130012] = {
					"Irontide Ravager", -- [1]
					"Freehold", -- [2]
				},
				[163612] = {
					"Voidspawn Annihilator", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[135474] = {
					"Thistle Acolyte", -- [1]
					"Waycrest Manor", -- [2]
				},
				[138187] = {
					"Grotesque Horror", -- [1]
					"The Underrot", -- [2]
				},
				[156866] = {
					"Ra-den", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[72452] = {
					"Kor'kron Dire Wolf", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[159425] = {
					"Occult Shadowmender", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[130024] = {
					"Soggy Shiprat", -- [1]
					"Freehold", -- [2]
				},
				[72661] = {
					"Zeal", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[158146] = {
					"Fallen Riftwalker", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[158588] = {
					"Gamon", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[71383] = {
					"Kor'thik Warcaller", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[73541] = {
					"Kor'kron Wolf Pup", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[69382] = {
					"Malignant Ooze", -- [1]
					"Throne of Thunder", -- [2]
				},
				[161241] = {
					"Voidweaver Mal'thir", -- [1]
					"Freehold", -- [2]
				},
				[153541] = {
					"Slavemaster Ul'rok", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[144303] = {
					"G.U.A.R.D.", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[127381] = {
					"Silt Crab", -- [1]
					"Tol Dagor", -- [2]
				},
				[158056] = {
					"Rat", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[154565] = {
					"Loyal Myrmidon", -- [1]
					"The Eternal Palace", -- [2]
				},
				[125547] = {
					"Feltouched Skitterer", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[144842] = {
					"Tide Crawler", -- [1]
					"The Eternal Palace", -- [2]
				},
				[162718] = {
					"Iron-Willed Enforcer", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[130025] = {
					"Irontide Thug", -- [1]
					"Tol Dagor", -- [2]
				},
				[155845] = {
					"Crushing Depths", -- [1]
					"The Eternal Palace", -- [2]
				},
				[129526] = {
					"Bilge Rat Swabby", -- [1]
					"Freehold", -- [2]
				},
				[25593] = {
					"Apocalypse Guard", -- [1]
					"The Sunwell", -- [2]
				},
				[157349] = {
					"Void Boar", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[122477] = {
					"F'harg", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[69383] = {
					"Quivering Blob", -- [1]
					"Throne of Thunder", -- [2]
				},
				[64453] = {
					"Set'thik Windblade", -- [1]
					"Heart of Fear", -- [2]
				},
				[69639] = {
					"Humming Crystal", -- [1]
					"Throne of Thunder", -- [2]
				},
				[151476] = {
					"Blastatron X-80", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[25166] = {
					"Grand Warlock Alythess", -- [1]
					"The Sunwell", -- [2]
				},
				[122450] = {
					"Garothi Worldbreaker", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[73152] = {
					"Storeroom Guard", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[144784] = {
					"Charg \"The Boisterous\"", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[71405] = {
					"Set'thik Wind Wielder", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[131850] = {
					"Maddened Survivalist", -- [1]
					"Waycrest Manor", -- [2]
				},
				[130026] = {
					"Bilge Rat Seaspeaker", -- [1]
					"Tol Dagor", -- [2]
				},
				[60999] = {
					"Sha of Fear", -- [1]
					"Terrace of Endless Spring", -- [2]
				},
				[152009] = {
					"Malfunctioning Scrapbot", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[73094] = {
					"Healing Tide Totem", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[25486] = {
					"Shadowsword Vanquisher", -- [1]
					"The Sunwell", -- [2]
				},
				[64916] = {
					"Kor'thik Swarmguard", -- [1]
					"Heart of Fear", -- [2]
				},
				[159405] = {
					"Aqir Scarab", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[133593] = {
					"Expert Technician", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133963] = {
					"Test Subject", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[133384] = {
					"Merektha", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[72810] = {
					"Staff of Resonating Water", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[67977] = {
					"Tortos", -- [1]
					"Throne of Thunder", -- [2]
				},
				[156143] = {
					"Voidcrazed Hulk", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[125549] = {
					"Hungering Stalker", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[72455] = {
					"Overseer Komak", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[138493] = {
					"Minion of Zul", -- [1]
					"Kings' Rest", -- [2]
				},
				[130027] = {
					"Ashvane Marine", -- [1]
					"Tol Dagor", -- [2]
				},
				[162764] = {
					"Twisted Appendage", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[136665] = {
					"Ashvane Spotter", -- [1]
					"Tol Dagor", -- [2]
				},
				[73095] = {
					"Blackfuse Engineer", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[73223] = {
					"Pterrordax", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[126764] = {
					"Bladesworn Ravager", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[134612] = {
					"Grasping Tentacles", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[64454] = {
					"Zar'thik Augurer", -- [1]
					"Heart of Fear", -- [2]
				},
				[157256] = {
					"Aqir Darter", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[58959] = {
					"Keple", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[134417] = {
					"Deepsea Ritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[152236] = {
					"Lady Ashvane", -- [1]
					"The Eternal Palace", -- [2]
				},
				[70153] = {
					"Fungal Growth", -- [1]
					"Throne of Thunder", -- [2]
				},
				[144301] = {
					"Living Waste", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[72456] = {
					"Korgra the Snake", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[71979] = {
					"Kor'kron Warbringer", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[62983] = {
					"Lei Shi", -- [1]
					"Terrace of Endless Spring", -- [2]
				},
				[71715] = {
					"Orgrimmar Faithful", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[158437] = {
					"Fallen Taskmaster", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[137940] = {
					"Safety Shark", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[134024] = {
					"Devouring Maggot", -- [1]
					"Waycrest Manor", -- [2]
				},
				[136186] = {
					"Tidesage Spiritualist", -- [1]
					"Shrine of the Storm", -- [2]
				},
				[71433] = {
					"Spark of Life", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[71152] = {
					"Skeer the Bloodseeker", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[73415] = {
					"Ichor of Y'Shaarj", -- [1]
					"Siege of Orgrimmar", -- [2]
				},
				[129016] = {
					"Southsea Musketeer", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[137830] = {
					"Pallid Gorger", -- [1]
					"Waycrest Manor", -- [2]
				},
				[158411] = {
					"Unstable Servant", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[132056] = {
					"Venture Co. Skyscorcher", -- [1]
					"The MOTHERLODE!!", -- [2]
				},
				[159510] = {
					"Eye of the Depths", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[137969] = {
					"Interment Construct", -- [1]
					"Kings' Rest", -- [2]
				},
				[123760] = {
					"Fel-Infused Destructor", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[155686] = {
					"Azsh'ari Venomwatcher", -- [1]
					"The Eternal Palace", -- [2]
				},
				[151900] = {
					"Horrific Summoner", -- [1]
					"The Eternal Palace", -- [2]
				},
				[131545] = {
					"Lady Waycrest", -- [1]
					"Waycrest Manor", -- [2]
				},
				[120158] = {
					"Volatile Corruption", -- [1]
					"Tomb of Sargeras", -- [2]
				},
				[69131] = {
					"Frost King Malakk", -- [1]
					"Throne of Thunder", -- [2]
				},
				[126424] = {
					"Coralback Surfcrawler", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[134616] = {
					"Krolusk Pup", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[62408] = {
					"Zar'thik Battle-Mender", -- [1]
					"Heart of Fear", -- [2]
				},
				[158371] = {
					"Zardeth of the Black Claw", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[123451] = {
					"Felguard", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[69899] = {
					"Farraki Sand Conjurer", -- [1]
					"Throne of Thunder", -- [2]
				},
				[129062] = {
					"Sunbringer Firasi", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[94697] = {
					"Siegeworks Technician", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[93858] = {
					"Hulking Berserker", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[134617] = {
					"Krolusk Hatchling", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[125569] = {
					"Riftworld Assistant", -- [1]
					"Antorus, the Burning Throne", -- [2]
				},
				[94873] = {
					"Felfire Flamebelcher", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[63048] = {
					"Kor'thik Slicer", -- [1]
					"Heart of Fear", -- [2]
				},
				[158158] = {
					"Forge-Guard Hurrul", -- [1]
					"Horrific Vision of Stormwind", -- [2]
				},
				[162508] = {
					"Anubisath Sentinel", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[69132] = {
					"High Priestess Mar'li", -- [1]
					"Throne of Thunder", -- [2]
				},
				[161895] = {
					"Thing From Beyond", -- [1]
					"Ny'alotha, the Waking City", -- [2]
				},
				[69388] = {
					"Zandalari Spear-Shaper", -- [1]
					"Throne of Thunder", -- [2]
				},
				[94008] = {
					"Dark Devourer", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[92514] = {
					"Shao'ghun", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[89890] = {
					"Fel Lord Zakuun", -- [1]
					"Hellfire Citadel", -- [2]
				},
				[64368] = {
					"Apparition of Fear", -- [1]
					"Terrace of Endless Spring", -- [2]
				},
				[60585] = {
					"Elder Regail", -- [1]
					"Terrace of Endless Spring", -- [2]
				},
				[60583] = {
					"Protector Kaolan", -- [1]
					"Terrace of Endless Spring", -- [2]
				},
				[63036] = {
					"Kor'thik Extremist", -- [1]
					"Heart of Fear", -- [2]
				},
				[60621] = {
					"Corrupted Waters", -- [1]
					"Terrace of Endless Spring", -- [2]
				},
				[63275] = {
					"Corrupted Protector", -- [1]
					"Terrace of Endless Spring", -- [2]
				},
				[153119] = {
					"Lesser Void Elemental", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[157904] = {
					"Aqir Scarab", -- [1]
					"Horrific Vision of Orgrimmar", -- [2]
				},
				[69390] = {
					"Zandalari Storm-Caller", -- [1]
					"Throne of Thunder", -- [2]
				},
				[133852] = {
					"Living Rot", -- [1]
					"The Underrot", -- [2]
				},
				[70448] = {
					"Ancient Python", -- [1]
					"Throne of Thunder", -- [2]
				},
				[134364] = {
					"Faithless Tender", -- [1]
					"Temple of Sethraliss", -- [2]
				},
				[155090] = {
					"Anodized Coilbearer", -- [1]
					"Operation: Mechagon", -- [2]
				},
				[69909] = {
					"Amani'shi Flame Chanter", -- [1]
					"Throne of Thunder", -- [2]
				},
				[69906] = {
					"Zandalari High Priest", -- [1]
					"Throne of Thunder", -- [2]
				},
				[69078] = {
					"Sul the Sandcrawler", -- [1]
					"Throne of Thunder", -- [2]
				},
				[123286] = {
					"Southsea Gambler", -- [1]
					"Jorundall (Islands 7)", -- [2]
				},
				[126919] = {
					"Irontide Stormcaller", -- [1]
					"Freehold", -- [2]
				},
				[69351] = {
					"Greater Cave Bat", -- [1]
					"Throne of Thunder", -- [2]
				},
				[88708] = {
					"Gara", -- [1]
					"Waycrest Manor", -- [2]
				},
				[70235] = {
					"Frozen Head", -- [1]
					"Throne of Thunder", -- [2]
				},
				[134802] = {
					"Razorback", -- [1]
					"The Rotting Mire (Islands 9)", -- [2]
				},
				[152311] = {
					"Zanj'ir Myrmidon", -- [1]
					"The Eternal Palace", -- [2]
				},
				[155859] = {
					"Vizja'ra", -- [1]
					"The Eternal Palace", -- [2]
				},
				[70238] = {
					"Unblinking Eye", -- [1]
					"Throne of Thunder", -- [2]
				},
				[68036] = {
					"Durumu the Forgotten", -- [1]
					"Throne of Thunder", -- [2]
				},
				[69017] = {
					"Primordius", -- [1]
					"Throne of Thunder", -- [2]
				},
			},
			["indicator_scale"] = 0.9999999403953552,
			["npc_colors"] = {
				[136214] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				[133436] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[137516] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				[131436] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[135167] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[132532] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				[127111] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[137517] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[135263] = {
					true, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				[136549] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[137486] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[122984] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[133835] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				[128969] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				[134629] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[129366] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				[136249] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				[133852] = {
					true, -- [1]
					false, -- [2]
					"olivedrab", -- [3]
				},
				[136186] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[122969] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[135329] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				[134599] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[139949] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[138187] = {
					true, -- [1]
					false, -- [2]
					"paleturquoise", -- [3]
				},
				[134012] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				[141283] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[130661] = {
					true, -- [1]
					false, -- [2]
					"lightgreen", -- [3]
				},
				[129788] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[133870] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[136934] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[137103] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				[141284] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[135204] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[135474] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				[131677] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[134232] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				[131585] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[125977] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				[134284] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[141285] = {
					true, -- [1]
					false, -- [2]
					"lightgreen", -- [3]
				},
				[127106] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[129547] = {
					true, -- [1]
					false, -- [2]
					"olivedrab", -- [3]
				},
				[127757] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[134364] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[131586] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[129559] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[134158] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[134174] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[133345] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				[131666] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[135365] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				[136470] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[131587] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[129369] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				[131492] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[137484] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[138255] = {
					true, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				[136295] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[135239] = {
					true, -- [1]
					false, -- [2]
					"paleturquoise", -- [3]
				},
				[139422] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[134137] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				[134144] = {
					true, -- [1]
					false, -- [2]
					"lightgreen", -- [3]
				},
				[137713] = {
					true, -- [1]
					false, -- [2]
					"paleturquoise", -- [3]
				},
				[122972] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				[133430] = {
					true, -- [1]
					false, -- [2]
					"cornflowerblue", -- [3]
				},
				[128967] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				[129600] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[133593] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[130488] = {
					true, -- [1]
					false, -- [2]
					"lightsalmon", -- [3]
				},
				[129370] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[137478] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[134331] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[133685] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				[137511] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[131685] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[134139] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[135241] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[128434] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				[133432] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[122973] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[136353] = {
					true, -- [1]
					false, -- [2]
					"royalblue", -- [3]
				},
				[131670] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				[127315] = {
					true, -- [1]
					false, -- [2]
					"plum", -- [3]
				},
				[126918] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[138465] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[137830] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[134417] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[129529] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				[134701] = {
					true, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				[134338] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[131858] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				[136139] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[129602] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[129367] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[134418] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				[134157] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[126919] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				[132491] = {
					true, -- [1]
					false, -- [2]
					"palegreen", -- [3]
				},
				[134990] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[133482] = {
					true, -- [1]
					false, -- [2]
					"maroon", -- [3]
				},
				[134514] = {
					true, -- [1]
					false, -- [2]
					"lightgreen", -- [3]
				},
				[134251] = {
					true, -- [1]
					false, -- [2]
					"honeydew", -- [3]
				},
				[144071] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[130404] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[136076] = {
					true, -- [1]
					false, -- [2]
					"lightcoral", -- [3]
				},
				[134600] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[135235] = {
					true, -- [1]
					false, -- [2]
					"goldenrod", -- [3]
				},
				[135007] = {
					true, -- [1]
					false, -- [2]
					"lightskyblue", -- [3]
				},
				[130485] = {
					true, -- [1]
					false, -- [2]
					"peru", -- [3]
				},
				[134150] = {
					true, -- [1]
					false, -- [2]
					"navajowhite", -- [3]
				},
				[133912] = {
					true, -- [1]
					false, -- [2]
					"dodgerblue", -- [3]
				},
				[137521] = {
					true, -- [1]
					false, -- [2]
					"cornflowerblue", -- [3]
				},
			},
			["hook_data"] = {
				{
					["Enabled"] = false,
					["Revision"] = 50,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Easy way to change the color of an unit. Open the constructor script and follow the examples.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.NpcColors = {\n        \n        --examples, using the unit name in lower case, regular unit name and the unitID:\n        \n        [\"Thunderlord Windreader\"] = \"red\", --using regular mob name and color it as red\n        [\"thunderlord crag-leaper\"] = {1, 1, 0}, --using lower case and coloring it yellow\n        [75790] = \"#00FF00\", --using the ID of the unit and using green as color\n        \n        --insert the new mobs here:\n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n        \n    } --close custom color bracket\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --attempt to get the color from the unit color list\n    local color = envTable.NpcColors [unitFrame.namePlateUnitNameLower] or envTable.NpcColors [unitFrame.namePlateUnitName] or envTable.NpcColors [unitFrame.namePlateNpcId]\n    \n    --if the color exists, set the health bar color\n    if (color) then\n        Plater.SetNameplateColor (unitFrame, color)\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1547392935,
					["PlaterCore"] = 1,
					["Name"] = "Color Automation [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\color_bar",
					["LastHookEdited"] = "",
				}, -- [1]
				{
					["Enabled"] = false,
					["Revision"] = 59,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Change the nameplate color when a nameplate does not have the auras set in the constructor script.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    --Important: lines starting with double dashes are comments and are not part of the script\n    \n    --set this to true if you are not using threat colors in the health bar\n    envTable.ForceRefreshNameplateColor = true\n    \n    --if the unit does not have any of the following auras, it will be painted with the color listed below\n    --list of spells to track, can be the spell name (case-sensitive) or the spellID\n    envTable.TrackingAuras = {\n        --[\"Nightblade\"] = true, --this is an example using the spell name\n        --[195452] = true, --this is an example using the spellID\n        \n    }\n    \n    --which color the nameplate wil be changed\n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    --you may also use /plater colors\n    envTable.NameplateColor = \"pink\"\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --do nothing if the player isn't in combat\n    if (not Plater.IsInCombat()) then\n        return \n    end\n    \n    --do nothing if the unit isn't in combat\n    if (not unitFrame.InCombat) then\n        return\n    end\n    \n    --do nothing if the unit is the player it self\n    if (unitFrame.IsSelf) then\n        return\n    end\n    \n    --check the auras\n    local hasAura = false\n    \n    for auraName, _ in pairs (envTable.TrackingAuras) do\n        if (Plater.NameplateHasAura (unitFrame, auraName)) then\n            hasAura = true\n            break\n        end\n    end\n    \n    if (not hasAura) then\n        Plater.SetNameplateColor (unitFrame, envTable.NameplateColor)\n    else\n        if (envTable.ForceRefreshNameplateColor) then\n            Plater.RefreshNameplateColor (unitFrame) \n        end\n    end    \n    \nend",
					},
					["Time"] = 1554138845,
					["PlaterCore"] = 1,
					["Name"] = "Don't Have Aura [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 136207,
					["LastHookEdited"] = "",
				}, -- [2]
				{
					["Enabled"] = false,
					["Revision"] = 176,
					["HooksTemp"] = {
					},
					["Author"] = "Tecno-Azralon",
					["Desc"] = "Add another border with more customizations. This border can also be manipulated by other scripts.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.IsEnabled) then\n        if (unitFrame.IsSelf) then\n            if (envTable.ShowOnPersonalBar) then\n                envTable.BorderFrame:Show()\n            else\n                envTable.BorderFrame:Hide() \n            end\n        else\n            envTable.BorderFrame:Show()\n        end   \n    end\n    \nend   \n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.BorderFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --border color\n    local borderColor = \"yellow\"\n    \n    --size of the border\n    local borderSize = 1\n    \n    --transparency\n    local borderAlpha = 1\n    \n    --enabled (set to false it you only want to use the extra border in other scripts)\n    local isEnabled = true\n    \n    --export border (allow the border to be used by other scripts)\n    --other scripts can use:\n    --unitFrame.healthBar.extraBorder:Show()\n    --unitFrame.healthBar.extraBorder:SetVertexColor (r, g, b)\n    --unitFrame.healthBar.extraBorder:SetBorderSizes (borderSize)\n    local canExportBorder = true\n    \n    --do not add the border to personal bar\n    local noPersonalBar = true\n    \n    --private\n    do\n        \n        local newBorder = CreateFrame (\"frame\", nil, unitFrame.healthBar, \"NamePlateFullBorderTemplate\")\n        envTable.BorderFrame = newBorder\n        \n        newBorder:SetBorderSizes (borderSize, borderSize, borderSize, borderSize)\n        newBorder:UpdateSizes()\n        \n        local r, g, b = DetailsFramework:ParseColors (borderColor)\n        newBorder:SetVertexColor (r, g, b, borderAlpha)\n        \n        envTable.ShowOnPersonalBar = not noPersonalBar\n        \n        if (canExportBorder) then\n            unitFrame.healthBar.extraBorder = newBorder\n        end\n        \n        if (not isEnabled) then\n            envTable.IsEnabled = false\n        else\n            envTable.IsEnabled = true\n        end\n    end\n    \nend\n\n\n",
					},
					["Time"] = 1547409079,
					["PlaterCore"] = 1,
					["Name"] = "Extra Border [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 133689,
					["LastHookEdited"] = "",
				}, -- [3]
				{
					["Enabled"] = false,
					["Revision"] = 73,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Hide neutral units, show when selected, see the constructor script for options.",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end\n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        envTable.HideNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat and InCombatLockdown()) then\n            return\n        end\n        \n        --check the unit reaction\n        if (unitFrame.namePlateIsTarget) then\n            envTable.ShowNameplate (unitFrame)\n            \n        else\n            envTable.HideNameplate (unitFrame)\n            \n        end    \n    end\n    \nend\n\n\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        envTable.ShowNameplate (unitFrame)\n    end\n    \nend\n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when plater finishes an update on the nameplate\n    --check within the envTable if the healthBar of this nameplate should be hidden\n    if (envTable.IsHidden) then\n        if (unitFrame.healthBar:IsShown()) then\n            envTable.HideNameplate (unitFrame)\n        end\n    end\n    \nend\n\n\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateUnitReaction == envTable.REACTION_NEUTRAL) then\n        \n        --plater already handle this\n        if (unitFrame.PlayerCannotAttack) then\n            return\n        end    \n        \n        --check if is only open world\n        if (envTable.OnlyInOpenWorld and Plater.ZoneInstanceType ~= \"none\") then\n            return \n        end\n        \n        --check for only in combat\n        if (envTable.ShowInCombat) then\n            envTable.ShowNameplate (unitFrame)\n        end\n    end\nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    envTable.OnlyInOpenWorld = true;\n    envTable.ShowInCombat = true;\n    \n    --consts\n    envTable.REACTION_NEUTRAL = 4;\n    \n    --functions to hide and show the healthBar\n    function envTable.HideNameplate (unitFrame)\n        Plater.HideHealthBar (unitFrame)\n        Plater.DisableHighlight (unitFrame)\n        envTable.IsHidden = true\n    end\n    \n    function envTable.ShowNameplate (unitFrame)\n        Plater.ShowHealthBar (unitFrame)\n        Plater.EnableHighlight (unitFrame)\n        envTable.IsHidden = false\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1541606242,
					["PlaterCore"] = 1,
					["Name"] = "Hide Neutral Units [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 1990989,
					["LastHookEdited"] = "",
				}, -- [4]
				{
					["Enabled"] = true,
					["Revision"] = 55,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for Stormwall Blockade encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.Colors.TemptingSiren) then\n            Plater.SetNameplateColor (unitFrame, envTable.Colors.TemptingSiren)\n        end\n        \n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.TemptingSiren) then\n        \n        if (envTable.NameplateHeight.TemptingSiren) then\n            \n            Plater.SetNameplateSize (unitFrame, nil, envTable.NameplateHeight.TemptingSiren)\n            \n        end\n        \n    end    \n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors.TemptingSiren = \"orange\"\n    \n    --npcID\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.TemptingSiren = 146436\n    \n    --nameplate height for each unit\n    envTable.NameplateHeight = {}\n    envTable.NameplateHeight.TemptingSiren = 18\n    \n    \n    \nend\n\n\n",
					},
					["Time"] = 1548117267,
					["PlaterCore"] = 1,
					["Name"] = "Stormwall Encounter [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2280, -- [1]
							["Enabled"] = true,
						},
						["spec"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_stormwall_blockade",
					["LastHookEdited"] = "",
				}, -- [5]
				{
					["Enabled"] = true,
					["Revision"] = 220,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Script for the Jaina encounter on Battle for Dazzar'alor",
					["Hooks"] = {
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Unexploded Ordinance\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.UnexplodedOrdinance) then\n        \n        --make the life percent be bigger than the regular size\n        --so it's better to see the health percent of the barrel\n        local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n        Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize + envTable.UnexplodedOrdinanceTextSizeIncrease)\n    end\n    \n    if (envTable.IncreaseSize [unitFrame.namePlateNpcId]) then\n        local currentHeight = unitFrame.healthBar:GetHeight()\n        Plater.SetNameplateSize (unitFrame, nil, currentHeight + envTable.IncreaseSize [unitFrame.namePlateNpcId])\n    end\n    \nend\n\n\n\n\n\n\n",
						["Cast Start"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame, nil, envTable.UnexplodedOrdinanceCastBarHeight)\n        Plater:SetFontSize (unitFrame.castBar.percentText, envTable.UnexplodedOrdinanceTimerSize)\n    end\nend\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --reset the health percent text size\n    local currentSize = Plater.db.profile.plate_config.enemynpc.percent_text_size\n    Plater:SetFontSize (unitFrame.healthBar.lifePercent, currentSize)    \n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --Override the color\n    if (envTable.Colors [unitFrame.namePlateNpcId]) then\n        Plater.SetNameplateColor (unitFrame, envTable.Colors [unitFrame.namePlateNpcId])\n    end    \n    \n    --Show the name of the unit in the Ice Block nameplate\n    if (unitFrame.namePlateNpcId == envTable.NpcIDs.IceBlock) then\n        --find which player this block are holding\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i\n            if (UnitExists (unit)) then\n                for debuffId = 1, 40 do\n                    local name, texture, count, debuffType, duration, expirationTime, caster = UnitDebuff (unit, debuffId)\n                    \n                    --cancel the loop if there's no more debuffs on the player\n                    if (not name) then \n                        break \n                    end                    \n                    \n                    --check if who casted this debuff is the unit shown on this nameplate\n                    if (UnitIsUnit (caster or \"\", unitId)) then\n                        local unitName = UnitName (unit)\n                        \n                        --color the text by the class\n                        unitName = Plater.SetTextColorByClass (unit, unitName)\n                        \n                        --add the role icon\n                        if (Details) then\n                            local role = UnitGroupRolesAssigned (unit)\n                            unitName = Details:AddRoleIcon (unitName, role, 12)\n                        end\n                        \n                        unitFrame.unitName:SetText (unitName)\n                        unitFrame.castBar.Text:SetText (unitName)\n                        break\n                    end\n                    \n                end\n            else\n                break\n            end\n        end\n    end\nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --nameplate colors for unit\n    envTable.Colors = {}\n    envTable.Colors [148631] = \"orange\" --Unexploded Ordinance\n    envTable.Colors [148522] = \"white\" --Ice Block\n    \n    --increase the nameplate height for these units\n    envTable.IncreaseSize = {}\n    envTable.IncreaseSize [148522] = 4 --Ice Block (increase in 4 pixels)\n    \n    --increase the size of the life percent for the nameplate of the barrel\n    envTable.UnexplodedOrdinanceTextSizeIncrease = 3\n    \n    --increase the castbar size for the unexploded ordinance explosion cast\n    envTable.UnexplodedOrdinanceCast = true\n    envTable.UnexplodedOrdinanceSpellID = 288221 --12058 --(debug)\n    envTable.UnexplodedOrdinanceCastBarHeight = 18\n    envTable.UnexplodedOrdinanceTimerSize = 18\n    \n    --npcIDs\n    envTable.NpcIDs = {}\n    envTable.NpcIDs.UnexplodedOrdinance = 148631\n    envTable.NpcIDs.IceBlock = 148522\nend\n\n--tests 126023 --harbor saurid - dazar'alor harbor\n--tests 3127 venomtail scorpid - durotar\n--tests 12058 dustwind storm witch - durotar\n--Load Condition: EncounterID 2281\n\n\n",
						["Cast Stop"] = "function (self, unitId, unitFrame, envTable)\n    if (envTable.UnexplodedOrdinanceCast and envTable._SpellID == envTable.UnexplodedOrdinanceSpellID) then\n        Plater.SetCastBarSize (unitFrame)\n        Plater:SetFontSize (unitFrame.castBar.percentText, Plater.db.profile.plate_config.enemynpc.spellpercent_text_size)\n    end\nend\n\n\n",
					},
					["Time"] = 1548612537,
					["PlaterCore"] = 1,
					["Name"] = "Jaina Encounter [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
							2281, -- [1]
							["Enabled"] = true,
						},
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\encounter_jaina",
					["LastHookEdited"] = "",
				}, -- [6]
				{
					["Enabled"] = false,
					["Revision"] = 84,
					["HooksTemp"] = {
					},
					["Author"] = "Ahwa-Azralon",
					["Desc"] = "Add extra effects to execute range. See the constructor script for options.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --execute detection, if true the script will handle the execute percent\n    --while false Plater will automatically trigger the execute range\n    --you only want to set this to true in case of Plater not detecting the execute range correctly\n    envTable.UseCustomExecutePercent = false\n    --execute percent, if not detecting automatic, this is the percent to active the execute range\n    --use from zero to one, 0.20 is equal to 20% of the unit life\n    envTable.ExecutePercent = 0.20\n    \n    --allow this script to change the nameplate color when the unit is in execute range\n    envTable.CanChangeColor = true\n    --change the health bar color to this color when the unit is in execute range\n    --color can be set as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}\n    envTable.ExecuteColor = \"green\"\n    \n    --border color\n    envTable.CanChangeBorderColor = false\n    envTable.BorderColor = \"red\"\n    \n    --hide the default health divisor and the health execute indicator\n    envTable.HideHealthDivisor = false\n    --if not hidden, adjust the health divisor settings and the health execute indicator\n    envTable.HealthDivisorAlpha = 0.5\n    envTable.HealthDivisorColor = \"white\"\n    envTable.HealthExecuteIndicatorAlpha = 0.15\n    envTable.HealthExecuteIndicatorColor = \"darkred\"\n    \n    \n    --private (internal functions)\n    do\n        function envTable.UnitInExecuteRange (unitFrame)\n            --check if can change the execute color\n            if (envTable.CanChangeColor) then\n                Plater.SetNameplateColor (unitFrame, envTable.ExecuteColor)\n            end\n            \n            if (envTable.CanChangeBorderColor) then\n                Plater.SetBorderColor (unitFrame, envTable.BorderColor)\n            end\n            \n            if (envTable.HideHealthDivisor) then\n                unitFrame.healthBar.healthCutOff:Hide() \n                unitFrame.healthBar.executeRange:Hide()\n                \n            else\n                envTable.UpdateHealthDivisor (unitFrame)\n                \n            end\n        end\n        \n        function envTable.UpdateHealthDivisor (unitFrame)\n            local healthBar = unitFrame.healthBar\n            \n            healthBar.healthCutOff:Show()\n            healthBar.healthCutOff:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthDivisorColor))\n            healthBar.healthCutOff:SetAlpha (envTable.HealthDivisorAlpha)\n            \n            healthBar.executeRange:Show()\n            healthBar.executeRange:SetVertexColor (DetailsFramework:ParseColors (envTable.HealthExecuteIndicatorColor))\n            healthBar.executeRange:SetAlpha (envTable.HealthExecuteIndicatorAlpha)\n            \n            if (envTable.UseCustomExecutePercent) then\n                healthBar.healthCutOff:ClearAllPoints()\n                healthBar.executeRange:ClearAllPoints()\n                \n                healthBar.healthCutOff:SetSize (healthBar:GetHeight(), healthBar:GetHeight())\n                healthBar.healthCutOff:SetPoint (\"center\", healthBar, \"left\", healthBar:GetWidth() * envTable.ExecutePercent, 0)\n                \n                healthBar.executeRange:SetTexCoord (0, envTable.ExecutePercent, 0, 1)\n                healthBar.executeRange:SetHeight (healthBar:GetHeight())\n                healthBar.executeRange:SetPoint (\"left\", healthBar, \"left\", 0, 0)\n                healthBar.executeRange:SetPoint (\"right\", healthBar.healthCutOff, \"center\")\n            end\n            \n        end\n    end\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (envTable.UseCustomExecutePercent) then\n        \n        --manual detection\n        local healthBar = unitFrame.healthBar\n        if (healthBar.CurrentHealth / healthBar.CurrentHealthMax <= envTable.ExecutePercent) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end        \n        \n    else\n        \n        --auto detection\n        if (unitFrame.InExecuteRange) then\n            envTable.UnitInExecuteRange (unitFrame)\n        end\n        \n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n",
					},
					["Time"] = 1547406548,
					["PlaterCore"] = 1,
					["Name"] = "Execute Range [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 135358,
					["LastHookEdited"] = "",
				}, -- [7]
				{
					["Enabled"] = false,
					["Revision"] = 88,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Function Plater.UpdatePlateSize from Plater.lua exported to scritps.",
					["Hooks"] = {
						["Nameplate Added"] = "\n\n-- exported function Plater.UpdatePlateSize() from Plater.lua\n--this is for advanced users which wants to reorder the nameplate frame at their desire\n\n\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --check if there's a type of unit on this nameplate\n    local plateFrame = unitFrame:GetParent()\n    if (not plateFrame.actorType) then\n        return\n    end\n    \n    --get all the frames and cache some variables\n    local ACTORTYPE_ENEMY_PLAYER = \"enemyplayer\"\n    local profile = Plater.db.profile\n    local DB_PLATE_CONFIG = profile.plate_config\n    local isInCombat = Plater.IsInCombat()\n    local actorType = plateFrame.actorType\n    \n    local unitFrame = plateFrame.unitFrame\n    local healthBar = unitFrame.healthBar\n    local castBar = unitFrame.castBar\n    local powerBar = unitFrame.powerBar\n    local buffFrame1 = unitFrame.BuffFrame\n    local buffFrame2 = unitFrame.BuffFrame2\n    \n    --use in combat bars when in pvp\n    if (plateFrame.actorType == ACTORTYPE_ENEMY_PLAYER) then\n        if ((Plater.ZoneInstanceType == \"pvp\" or Plater.ZoneInstanceType == \"arena\") and DB_PLATE_CONFIG.player.pvp_always_incombat) then\n            isInCombat = true\n        end\n    end\n    \n    --get the config for this actor type\n    local plateConfigs = DB_PLATE_CONFIG [actorType]\n    --get the config key based if the player is in combat\n    local castBarConfigKey, healthBarConfigKey, manaConfigKey = Plater.GetHashKey (isInCombat)\n    \n    --get the width and height from what the user set in the options panel\n    local healthBarWidth, healthBarHeight = unitFrame.customHealthBarWidth or plateConfigs [healthBarConfigKey][1], unitFrame.customHealthBarHeight or plateConfigs [healthBarConfigKey][2]\n    local castBarWidth, castBarHeight = unitFrame.customCastBarWidth or plateConfigs [castBarConfigKey][1], unitFrame.customCastBarHeight or plateConfigs [castBarConfigKey][2]\n    local powerBarWidth, powerBarHeight = unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][1], unitFrame.customPowerBarHeight or plateConfigs [manaConfigKey][2]\n    \n    --calculate the offset for the cast bar, this is done due to the cast bar be anchored to topleft and topright\n    local castBarOffSetX = (healthBarWidth - castBarWidth) / 2\n    local castBarOffSetY = plateConfigs.castbar_offset\n    \n    --calculate offsets for the power bar\n    local powerBarOffSetX = (healthBarWidth - powerBarWidth) / 2\n    local powerBarOffSetY = 0\n    \n    --calculate the size deviation for pets\n    local unitType = Plater.GetUnitType (plateFrame)\n    if (unitType == \"pet\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.pet_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.pet_width_scale\n        \n    elseif (unitType == \"minus\") then\n        healthBarHeight = healthBarHeight * Plater.db.profile.minor_height_scale\n        healthBarWidth = healthBarWidth * Plater.db.profile.minor_width_scale\n    end\n    \n    --unit frame - is set to be the same size as the plateFrame\n    unitFrame:ClearAllPoints()\n    unitFrame:SetAllPoints()\n    \n    --calculates the health bar anchor points\n    --it will always be placed in the center of the nameplate area (where it accepts mouse clicks) \n    local xOffSet = (plateFrame:GetWidth() - healthBarWidth) / 2\n    local yOffSet = (plateFrame:GetHeight() - healthBarHeight) / 2\n    \n    --set the health bar point\n    healthBar:ClearAllPoints()\n    PixelUtil.SetPoint (healthBar, \"topleft\", unitFrame, \"topleft\", xOffSet + profile.global_offset_x, -yOffSet + profile.global_offset_y)\n    PixelUtil.SetPoint (healthBar, \"bottomright\", unitFrame, \"bottomright\", -xOffSet + profile.global_offset_x, yOffSet + profile.global_offset_y)\n    \n    --set the cast bar point and size\n    castBar:ClearAllPoints()\n    PixelUtil.SetPoint (castBar, \"topleft\", healthBar, \"bottomleft\", castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetPoint (castBar, \"topright\", healthBar, \"bottomright\", -castBarOffSetX, castBarOffSetY)\n    PixelUtil.SetHeight (castBar, castBarHeight)\n    PixelUtil.SetSize (castBar.Icon, castBarHeight, castBarHeight)\n    PixelUtil.SetSize (castBar.BorderShield, castBarHeight * 1.4, castBarHeight * 1.4)\n    \n    --set the power bar point and size\n    powerBar:ClearAllPoints()\n    PixelUtil.SetPoint (powerBar, \"topleft\", healthBar, \"bottomleft\", powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetPoint (powerBar, \"topright\", healthBar, \"bottomright\", -powerBarOffSetX, powerBarOffSetY)\n    PixelUtil.SetHeight (powerBar, powerBarHeight)\n    \n    --power bar are hidden by default, show it if there's a custom size for it\n    if (unitFrame.customPowerBarWidth and unitFrame.customPowerBarHeight) then\n        powerBar:SetUnit (unitFrame.unit)\n    end\n    \n    --aura frames\n    buffFrame1:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame1, \"bottom\", unitFrame, \"top\", profile.aura_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura_y_offset)\n    \n    buffFrame2:ClearAllPoints()\n    PixelUtil.SetPoint (buffFrame2, \"bottom\", unitFrame, \"top\", profile.aura2_x_offset,  plateConfigs.buff_frame_y_offset + profile.aura2_y_offset)    \n    \nend\n\n\n",
					},
					["Time"] = 1548077443,
					["PlaterCore"] = 1,
					["Name"] = "Reorder Nameplate [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 574574,
					["LastHookEdited"] = "",
				}, -- [8]
				{
					["Enabled"] = false,
					["Revision"] = 222,
					["HooksTemp"] = {
					},
					["Author"] = "Kastfall-Azralon",
					["Desc"] = "Change the nameplate color if the unit is attacking a specific unit like Monk's Ox Statue or Druid's Treants. You may edit which units it track in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --get the GUID of the target of the unit\n    local targetGUID = UnitGUID (unitId .. \"target\")\n    \n    if (targetGUID) then\n        \n        --get the npcID of the target\n        local npcID = Plater.GetNpcIDFromGUID (targetGUID)\n        --check if the npcID of this unit is in the npc list \n        if (envTable.ListOfNpcs [npcID]) then\n            Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [npcID])\n            \n        else\n            --check if the name of ths unit is in the list\n            local unitName = UnitName (unitId .. \"target\")\n            if (envTable.ListOfNpcs [unitName]) then\n                Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])\n                \n            else\n                --check if the name of the unit in lower case is in the npc list\n                unitName = string.lower (unitName)\n                if (envTable.ListOfNpcs [unitName]) then\n                    Plater.SetNameplateColor (unitFrame, envTable.ListOfNpcs [unitName])                \n                    \n                end\n            end\n        end\n        \n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --list of npcs and their colors, can be inserted:\n    --name of the unit\n    --name of the unit in lower case\n    --npcID of the unit\n    \n    --color can be added as:\n    --color names: \"red\", \"yellow\"\n    --color hex: \"#FF0000\", \"#FFFF00\"\n    --color table: {1, 0, 0}, {1, 1, 0}    \n    \n    envTable.ListOfNpcs = {\n        [61146] = \"olive\", --monk statue npcID\n        [103822] = \"olive\", --druid treant npcID\n        \n    }\n    \n    \nend\n\n\n\n\n",
					},
					["Time"] = 1547993111,
					["PlaterCore"] = 1,
					["Name"] = "Attacking Specific Unit [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_attacking_unit",
					["LastHookEdited"] = "",
				}, -- [9]
				{
					["Enabled"] = true,
					["Revision"] = 37,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Tint nameplates of Reaping Soul units (Mythic Dungeon Affix) depending on its target and role of the player",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --can detect the reaping souls aggro?\n    if (envTable.detectAggro and Plater.IsInCombat()) then\n        \n        --is this npc a reaping soul?\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            \n            --check if the mob is attacking the player\n            if (UnitIsUnit (unitFrame.targetUnitID, \"player\")) then\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateAggroColor)\n                \n            else\n                Plater.SetNameplateColor (unitFrame, envTable.NameplateNoAggroColor)\n            end\n            \n        end\n        \n    end\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when the nameplate is added and the npcID matches, cache the color for the nameplate\n    if (envTable.detectAggro) then\n        if (envTable.npcIDs [unitFrame.namePlateNpcId]) then\n            local profile = Plater.db.profile\n            local role = Plater:GetPlayerRole()\n            \n            if (role == \"TANK\") then\n                envTable.NameplateAggroColor = profile.tank.colors.aggro\n                envTable.NameplateNoAggroColor = profile.tank.colors.noaggro\n            else\n                envTable.NameplateAggroColor = profile.dps.colors.aggro\n                envTable.NameplateNoAggroColor = profile.dps.colors.noaggro\n            end\n            \n        end\n    end\n    \n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --npcs affected by this script\n    \n    envTable.npcIDs = {\n        [148716] = true, --risen soul\n        [148893] = true, --tormented soul\n        [148894] = true, --lost soul\n        \n        [127278] = true, --skittering feeder (tests and debug, also need to disable the load conditions)\n    }\n    \n    --detect aggro, if true it will see which group member the soul is attacking and override the color\n    envTable.detectAggro = true\n    \n    \nend\n\n\n",
					},
					["Time"] = 1549827281,
					["PlaterCore"] = 1,
					["Name"] = "M+ Bwonsamdi Reaping",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
							["Enabled"] = true,
							["party"] = true,
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
							[117] = true,
							["Enabled"] = true,
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 2446016,
					["LastHookEdited"] = "",
				}, -- [10]
				{
					["Enabled"] = false,
					["Revision"] = 189,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show combo points above the nameplate for Druid Feral and Rogues.",
					["Hooks"] = {
						["Nameplate Created"] = "function (self, unitId, unitFrame, envTable)\n    \n    --run constructor!\n    --constructor is executed only once when any script of the hook runs.\n    \nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if need update the amount of combo points shown\n    if (envTable.LastPlayerTalentUpdate > envTable.LastUpdate) then\n        envTable.UpdateComboPointAmount()\n    end    \n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        envTable.UpdateComboPoints()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end    \n    \nend\n\n\n",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if this nameplate is the current target\n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.ComboPointFrame:Show()\n        \n    else\n        envTable.ComboPointFrame:Hide()\n    end\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["Player Power Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    if (unitFrame.namePlateIsTarget and not unitFrame.IsSelf) then\n        envTable.UpdateComboPoints()\n    end\n    \n    \nend\n\n\n\n\n\n\n",
						["Player Talent Update"] = "function (self, unitId, unitFrame, envTable)\n    \n    --update the amount of comboo points shown when the player changes talents or specialization\n    envTable.UpdateComboPointAmount()\n    \n    --save the time of the last talent change\n    envTable.LastPlayerTalentUpdate = GetTime()\n    \n    \nend\n\n\n",
						["Destructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n\n\n",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.ComboPointFrame:Hide()\n    \nend\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --settings\n    local anchors = {\n        {\"bottom\", unitFrame.healthBar, \"top\", 0, 24},\n    }\n    \n    local sizes = {\n        width = 12,\n        height = 12,\n        scale = 1,\n    }\n    \n    local textures = {\n        backgroundTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        backgroundTexCoords = {78/128, 98/128, 21/64, 41/64},\n        \n        comboPointTexture = [[Interface\\PLAYERFRAME\\ClassOverlayComboPoints]],\n        comboPointTexCoords = {100/128, 120/128, 21/64, 41/64},\n    }\n    \n    local frameLevel = 1000\n    local frameStrata = \"high\"    \n    \n    --private\n    do\n        --store combo points frames on this table\n        envTable.ComboPoints = {}\n        --save when the player changed talents or spec\n        envTable.LastPlayerTalentUpdate = GetTime()\n        --save when this nameplate got a combo point amount and alignment update        \n        \n        --build combo points frame anchor (combo point are anchored to this)\n        if (not unitFrame.PlaterComboPointFrame) then\n            local hostFrame = CreateFrame (\"frame\", nil, unitFrame)\n            hostFrame.ComboPointFramesPool = {}\n            unitFrame.PlaterComboPointFrame = hostFrame\n            envTable.ComboPointFrame = hostFrame\n            \n            --DetailsFramework:ApplyStandardBackdrop (envTable.ComboPointFrame) --debug anchor size\n            \n            --animations\n            local onPlayShowAnimation = function (animation)\n                --stop the hide animation if it's playing\n                if (animation:GetParent():GetParent().HideAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().HideAnimation:Stop()\n                end\n                \n                animation:GetParent():Show()\n            end\n            \n            local onPlayHideAnimation = function (animation)\n                --stop the show animation if it's playing\n                if (animation:GetParent():GetParent().ShowAnimation:IsPlaying()) then\n                    animation:GetParent():GetParent().ShowAnimation:Stop()\n                end\n            end        \n            local onStopHideAnimation = function (animation)\n                animation:GetParent():Hide()       \n            end\n            \n            local createAnimations = function (comboPoint)\n                --on show\n                comboPoint.ShowAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayShowAnimation, nil)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 1, 0.1, 0, 0, 1, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"alpha\", 1, 0.1, .5, 1)\n                Plater:CreateAnimation (comboPoint.ShowAnimation, \"scale\", 2, 0.1, 1.2, 1.2, 1, 1)\n                \n                --on hide\n                comboPoint.HideAnimation = Plater:CreateAnimationHub (comboPoint.comboPointTexture, onPlayHideAnimation, onStopHideAnimation)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"scale\", 1, 0.1, 1, 1, 0, 0)\n                Plater:CreateAnimation (comboPoint.HideAnimation, \"alpha\", 1, 0.1, 1, 0)\n            end\n            \n            --build combo point frame        \n            for i =1, 10 do \n                local f = CreateFrame (\"frame\", nil, envTable.ComboPointFrame)\n                f:SetSize (sizes.width, sizes.height)\n                tinsert (envTable.ComboPoints, f)\n                tinsert (unitFrame.PlaterComboPointFrame.ComboPointFramesPool, f)\n                \n                local backgroundTexture = f:CreateTexture (nil, \"background\")\n                backgroundTexture:SetTexture (textures.backgroundTexture)\n                backgroundTexture:SetTexCoord (unpack (textures.backgroundTexCoords))\n                backgroundTexture:SetSize (sizes.width, sizes.height)\n                backgroundTexture:SetPoint (\"center\")\n                \n                local comboPointTexture = f:CreateTexture (nil, \"artwork\")\n                comboPointTexture:SetTexture (textures.comboPointTexture)\n                comboPointTexture:SetTexCoord (unpack (textures.comboPointTexCoords))\n                \n                comboPointTexture:SetSize (sizes.width, sizes.height)\n                comboPointTexture:SetPoint (\"center\")\n                comboPointTexture:Hide()            \n                \n                f.IsActive = false\n                \n                f.backgroundTexture = backgroundTexture\n                f.comboPointTexture = comboPointTexture\n                \n                createAnimations (f)\n            end\n            \n        else\n            envTable.ComboPointFrame = unitFrame.PlaterComboPointFrame\n            envTable.ComboPointFrame:SetScale (sizes.scale)\n            envTable.ComboPoints = unitFrame.PlaterComboPointFrame.ComboPointFramesPool\n            \n        end            \n        \n        envTable.ComboPointFrame:SetFrameLevel (frameLevel)\n        envTable.ComboPointFrame:SetFrameStrata (frameStrata)\n        \n        function envTable.UpdateComboPoints()\n            local comboPoints = UnitPower (\"player\", Enum.PowerType.ComboPoints)\n            \n            for i = 1, envTable.TotalComboPoints do\n                local thisComboPoint = envTable.ComboPoints [i]\n                \n                if (i <= comboPoints ) then\n                    --combo point enabled\n                    if (not thisComboPoint.IsActive) then\n                        thisComboPoint.ShowAnimation:Play()\n                        thisComboPoint.IsActive = true\n                        \n                    end\n                    \n                else\n                    --combo point disabled\n                    if (thisComboPoint.IsActive) then\n                        thisComboPoint.HideAnimation:Play()\n                        thisComboPoint.IsActive = false\n                        \n                    end\n                end\n            end\n            \n            \n        end\n        \n        function envTable.UpdateComboPointAmount()\n            local namePlateWidth = Plater.db.profile.plate_config.enemynpc.health_incombat[1]\n            local comboPoints = UnitPowerMax (\"player\", Enum.PowerType.ComboPoints)\n            local reservedSpace = namePlateWidth / comboPoints\n            \n            --store the total amount of combo points\n            envTable.TotalComboPoints = comboPoints\n            \n            --update anchor frame\n            envTable.ComboPointFrame:SetWidth (namePlateWidth)\n            envTable.ComboPointFrame:SetHeight (20)\n            envTable.ComboPointFrame:ClearAllPoints()\n            for i = 1, #anchors do\n                local anchor = anchors[i]\n                envTable.ComboPointFrame:SetPoint (unpack (anchor))\n            end        \n            \n            --\n            for i = 1, #envTable.ComboPoints do\n                envTable.ComboPoints[i]:Hide()\n                envTable.ComboPoints[i]:ClearAllPoints()\n            end\n            \n            for i = 1, comboPoints do\n                local comboPoint = envTable.ComboPoints[i]\n                comboPoint:SetPoint (\"left\", envTable.ComboPointFrame, \"left\", reservedSpace * (i-1), 0)\n                comboPoint:Show()\n            end\n            \n            envTable.LastUpdate = GetTime()\n            \n            envTable.UpdateComboPoints()\n        end\n        \n        --initialize\n        envTable.UpdateComboPointAmount()\n        envTable.ComboPointFrame:Hide()\n    end\n    \n    \nend",
					},
					["Time"] = 1548354524,
					["PlaterCore"] = 1,
					["Name"] = "Combo Points [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
							["Enabled"] = true,
							["DRUID"] = true,
							["ROGUE"] = true,
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
							[103] = true,
							["Enabled"] = true,
						},
					},
					["Icon"] = 135426,
					["LastHookEdited"] = "",
				}, -- [11]
				{
					["Enabled"] = false,
					["Revision"] = 182,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Show how many raid members are targeting the unit",
					["Hooks"] = {
						["Leave Combat"] = "function (self, unitId, unitFrame, envTable)\n    envTable.CanShow = false;\n    envTable.TargetAmount:SetText (\"\")\nend\n\n\n",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    --when a nameplate is added to the screen check if the player is in combat\n    if (InCombatLockdown()) then\n        --player is in combat, check if can check amount of targets\n        envTable.CanShow = envTable.CanShowTargetAmount();\n        \n    else\n        envTable.CanShow = false; \n    end\n    \n    envTable.TargetAmount:SetText (\"\");\n    \nend",
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.TargetAmount:SetText (\"\");\n    envTable.CanShow = false;\n    \nend\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    --if the script is allowed to show the amount of targets\n    --also check if the unit is in combat\n    if (envTable.CanShow and UnitAffectingCombat (unitId)) then\n        \n        --check if can update the amount of targets following the cooldown set in the constructor script\n        --by default Plater updates the nameplate every 250ms, by default the cooldown is 2, so it'll update the amuont of target every 1/2 of a second\n        envTable.UpdateCooldown = envTable.UpdateCooldown + 1\n        if (envTable.UpdateCooldown < envTable.UpdateInterval) then\n            return\n        else\n            \n            --reset the cooldown interval to check the amount of target again\n            envTable.UpdateCooldown = 0\n            \n            --get the amount of targets\n            local amount;\n            if (envTable.InRaid) then\n                amount = envTable.NumTargetsInRaid (unitFrame)      \n                \n            elseif (envTable.InParty) then\n                amount = envTable.NumTargetsInParty (unitFrame)   \n                \n            else\n                envTable.TargetAmount:SetText (\"\")\n                return\n            end\n            \n            --update the amount text\n            if (amount == 0) then\n                envTable.TargetAmount:SetText (\"\")\n            else\n                envTable.TargetAmount:SetText (amount)\n            end\n            \n        end\n    end\nend\n\n\n",
						["Enter Combat"] = "function (self, unitId, unitFrame, envTable)\n    \n    --check if can show the amount of targets\n    envTable.CanShow = envTable.CanShowTargetAmount();\n    \n    if (not envTable.CanShow) then\n        envTable.TargetAmount:SetText (\"\") \n    end\nend\n\n\n\n\n",
						["Constructor"] = "--all gray text like this are comments and do not run as code\n--build the settings and basic functions for the hook\n\nfunction (self, unitId, unitFrame, envTable)\n    \n    --declare setting variables:\n    local textColor = \"orange\";\n    local textSize = 12;\n    \n    local showInRaid = true;\n    local showInDungeon = true;\n    local showInArena = false;\n    local showInBattleground = false;\n    local showInOpenWorld = true;\n    \n    envTable.UpdateInterval = 2; --each 2 updates in the nameplate it'll update the amount of targets\n    \n    local anchor = {\n        side = 6, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 4, --x offset\n        y = 0, --y offset\n    };\n    \n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    \n    --frames:\n    \n    --create the text that will show the amount of people targeting the unit\n    if (not  unitFrame.healthBar.TargetAmount) then\n        envTable.TargetAmount = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.TargetAmount, anchor);\n        unitFrame.healthBar.TargetAmount = envTable.TargetAmount\n    end\n    \n    --in case Plater wipes the envTable\n    envTable.TargetAmount = unitFrame.healthBar.TargetAmount\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --private variables (they will be used in the other scripts within this hook)\n    envTable.CanShow = false;\n    envTable.UpdateCooldown = 0;\n    envTable.InRaid = false;\n    envTable.InParty = false;\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    --update the InRaid or InParty proprieties\n    function envTable.UpdateGroupType()\n        if (IsInRaid()) then\n            envTable.InRaid = true;\n            envTable.InParty = false;     \n            \n        elseif (IsInGroup()) then\n            envTable.InRaid = false;\n            envTable.InParty = true;   \n            \n        else\n            envTable.InRaid = false;            \n            envTable.InParty = false;\n        end\n    end\n    \n    --this function controls if the amount of targets can show following the settings in the top of this script\n    function envTable.CanShowTargetAmount()\n        \n        local _, instanceType, difficultyID, _, _, _, _, instanceMapID, instanceGroupSize = GetInstanceInfo()\n        \n        if (showInRaid and instanceType == \"raid\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInDungeon and instanceType == \"party\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInArena and instanceType == \"arena\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInBattleground and instanceType == \"pvp\") then\n            envTable.UpdateGroupType()\n            return true\n        end\n        \n        if (showInOpenWorld and instanceType == \"none\") then\n            envTable.UpdateGroupType()\n            if (envTable.InRaid or envTable.InParty) then\n                return true\n            end\n        end\n        \n        return false\n    end\n    \n    --get the amount of player targetting the unit in raid or party\n    function envTable.NumTargetsInRaid (unitFrame)\n        local amount = 0\n        for i = 1, GetNumGroupMembers() do\n            local unit = \"raid\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        return amount\n    end\n    \n    function envTable.NumTargetsInParty()\n        local amount = 0\n        for i = 1, GetNumGroupMembers() - 1 do\n            local unit = \"party\" .. i .. \"target\"\n            if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n                amount = amount + 1\n            end\n        end\n        \n        local unit = \"playertarget\"\n        if (UnitGUID (unit) == unitFrame.namePlateUnitGUID) then\n            amount = amount + 1\n        end        \n        \n        return amount\n    end\n    \nend",
					},
					["Time"] = 1548278227,
					["PlaterCore"] = 1,
					["Name"] = "Players Targeting a Target [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["role"] = {
						},
					},
					["Icon"] = 1966587,
					["LastHookEdited"] = "",
				}, -- [12]
				{
					["Enabled"] = false,
					["Revision"] = 93,
					["HooksTemp"] = {
					},
					["Author"] = "Izimode-Azralon",
					["Desc"] = "Changes the target color to the color set in the constructor script.",
					["Hooks"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend",
						["Target Changed"] = "function (self, unitId, unitFrame, envTable)\n    envTable.UpdateColor (unitFrame)\nend\n\n\n\n\n\n\n\n\n\n\n",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --usage: color name e.g \"red\" \"yellow\"; color table e.g {1, 0, 0} {1, 1, 0}; hex string e.g. \"#FF0000\" \"FFFF00\"\n    \n    envTable.TargetColor = \"purple\"\n    --envTable.TargetColor = \"#FF00FF\"\n    --envTable.TargetColor = {252/255, 0/255, 254/255}\n    \n    function envTable.UpdateColor (unitFrame)\n        --do not change the color of the personal bar\n        if (not unitFrame.IsSelf) then\n            \n            --if this nameplate the current target of the player?\n            if (unitFrame.namePlateIsTarget) then\n                Plater.SetNameplateColor (unitFrame, envTable.TargetColor)  --rgb\n            else\n                --refresh the nameplate color\n                Plater.RefreshNameplateColor (unitFrame)\n            end\n        end\n    end\n    \nend\n\n\n\n\n",
					},
					["Time"] = 1552354619,
					["PlaterCore"] = 1,
					["Name"] = "Current Target Color [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["race"] = {
						},
						["pvptalent"] = {
						},
						["role"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
					["Icon"] = 878211,
					["LastHookEdited"] = "",
				}, -- [13]
				{
					["Enabled"] = false,
					["Revision"] = 272,
					["HooksTemp"] = {
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
					},
					["Author"] = "Ditador-Azralon",
					["Desc"] = "Reorder buffs and debuffs following the settings set in the constructor.",
					["Hooks"] = {
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    --ATTENTION: after enabling this script, you may have to adjust the anchor point at the Buff Settings tab\n    \n    --space between each aura icon\n    envTable.padding = 2\n    \n    --space between each row of icons\n    envTable.rowPadding = 12\n    \n    --amount of icons in the row, it'll breakline and start a new row after reach the threshold\n    envTable.maxAurasPerRow = 5\n    \n    --stack auras of the same name that arent stacked by default from the game\n    envTable.consolidadeRepeatedAuras = true    \n    \n    --which auras goes first, assign a value (any number), bigger value goes first\n    envTable.priority = {\n        [\"Vampiric Touch\"] = 50,\n        [\"Shadow Word: Pain\"] = 22,\n        [\"Mind Flay\"] = 5,\n    }\n    \nend \n\n\n\n\n",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    local auraContainers = {unitFrame.BuffFrame.PlaterBuffList}\n\n    if (Plater.db.profile.buffs_on_aura2) then\n        auraContainers [2] = unitFrame.BuffFrame2.PlaterBuffList\n    end\n    \n    for containerID = 1, #auraContainers do\n        \n        local auraContainer = auraContainers [containerID]\n        local aurasShown = {}\n        local aurasDuplicated = {}\n        \n        --build the list of auras shown in the buff frame and check for each aura priority\n        --also check if the consolidate (stack) auras with the same name is enabled\n        for index, auraIcon in ipairs (auraContainer) do\n            if (auraIcon:IsShown()) then\n                if (envTable.consolidadeRepeatedAuras) then\n                    --is this aura already shown?\n                    local iconShownIndex = aurasDuplicated [auraIcon.SpellName]\n                    if (iconShownIndex) then\n                        --get the table with information about the shown icon\n                        local auraShownTable = aurasShown [iconShownIndex]\n                        --get the icon already in the table\n                        local icon = auraShownTable[1]\n                        --increase the amount of stacks\n                        auraShownTable[3] = auraShownTable[3] + 1\n                        \n                        --check if the remaining time of the icon already added in the table is lower than the current\n                        if (auraIcon.RemainingTime > icon.RemainingTime) then\n                            --replace the icon for the icon with bigger duration\n                            auraShownTable[1] = auraIcon\n                            icon:Hide()\n                        else\n                            auraIcon:Hide()\n                        end\n                    else    \n                        local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                        tinsert (aurasShown, {auraIcon, priority, 1}) --icon frame, priority, stack amount\n                        aurasDuplicated [auraIcon.SpellName] = #aurasShown\n                    end\n                else\n                    --not stacking similar auras\n                    local priority = envTable.priority[auraIcon.SpellName] or envTable.priority[auraIcon.spellId] or 1\n                    tinsert (aurasShown, {auraIcon, priority})\n                    \n                end           \n            end\n        end\n        \n        --sort auras by priority\n        table.sort (aurasShown, DetailsFramework.SortOrder2)\n        \n        local growDirection\n        if (containerID == 1) then --debuff container\n            growDirection = Plater.db.profile.aura_grow_direction\n            --force to grow to right if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 3\n            end\n            -- \"Left\", \"Center\", \"Right\" - 1  2  3\n            \n        elseif (containerID == 2) then --buff container\n            growDirection = Plater.db.profile.aura2_grow_direction\n            --force to grow to left if it is anchored to center\n            if (growDirection == 2) then\n                growDirection = 1\n            end\n            \n        end\n        \n        local padding = envTable.padding\n        local framersPerRow = envTable.maxAurasPerRow + 1\n        \n        --first icon is where the row starts\n        local firstIcon = aurasShown[1] and aurasShown[1][1]\n        \n        if (firstIcon) then\n            local anchorPoint = firstIcon:GetParent() --anchor point is the BuffFrame\n            anchorPoint:SetSize (1, 1)\n            \n            firstIcon:ClearAllPoints()\n            firstIcon:SetPoint (\"center\", anchorPoint, \"center\", 0, 5)\n            \n            --check the consolidaded stacks, this is not the regular buff stacks\n            local firstIconStacks = aurasShown[1][3]\n            if (firstIconStacks and firstIconStacks > 1) then\n                firstIcon.StackText:SetText (firstIconStacks)\n                firstIcon.StackText:Show()\n            end\n            \n            --> left to right\n            if (growDirection == 3) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomleft\", firstIcon, \"topleft\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topleft\", aurasShown [i-1][1], \"topright\", padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                end        \n                \n                --right to left\n            elseif (growDirection == 1) then\n                --> iterate among all aura icons\n                for i = 2, #aurasShown do\n                    local auraIcon = aurasShown [i][1]\n                    auraIcon:ClearAllPoints()\n                    \n                    if (i == framersPerRow) then\n                        auraIcon:SetPoint (\"bottomright\", firstIcon, \"topright\", 0, envTable.rowPadding)\n                        framersPerRow = framersPerRow + framersPerRow\n                        \n                    else\n                        auraIcon:SetPoint (\"topright\", aurasShown [i-1][1], \"topleft\", -padding, 0)\n                    end\n                    \n                    local stacks = aurasShown[i][3]\n                    if (stacks and stacks > 1) then\n                        auraIcon.StackText:SetText (stacks)\n                        auraIcon.StackText:Show()\n                    end\n                    \n                end                    \n            end\n            \n        end\n    end\nend\n\n\n",
					},
					["Time"] = 1553450957,
					["PlaterCore"] = 1,
					["Name"] = "Aura Reorder [Plater]",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = "Interface\\AddOns\\Plater\\images\\icon_aura_reorder",
					["LastHookEdited"] = "",
				}, -- [14]
				{
					["Enabled"] = true,
					["Revision"] = 94,
					["HooksTemp"] = {
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    unitFrame.healthBar.ttdTextFrame:SetText(\"\")\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.updateUnit(unitId)\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.updateUnit(unitId)\n    \nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    -- Credit to Aethys for the algorithm: https://github.com/herotc/hero-lib\n    \n    --general settings:\n    envTable.onlyShowOnBoss = false\n    \n    -- text settings:\n    local textColor = \"white\";\n    local textSize = 12;\n    \n    -- positioning\n    local anchor = {\n        side = 1, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 2, --x offset\n        y = 0, --y offset\n    };\n    \n    -- TTD calculation config\n    envTable.config = {\n        historyCount = 100,\n        historyTime = 10,\n        duration = 600,\n        pctHP = 0,\n    }\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    --frames:\n    \n    --create the text frame that will show the TTD\n    if (not  unitFrame.healthBar.ttdTextFrame) then\n        envTable.ttdTextFrame = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.ttdTextFrame, anchor);\n        unitFrame.healthBar.ttdTextFrame = envTable.ttdTextFrame\n        envTable.ttdTextFrame:SetText(\"\")\n    end\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    envTable.cache = {}\n    envTable.units = {}\n    \n    function envTable.TTDRefresh(unit)\n        local currentTime = GetTime()\n        local historyCount = envTable.config.historyCount\n        local historyTime = envTable.config.historyTime\n        \n        if UnitExists(unit) then\n            local GUID = UnitGUID(unit)\n            local health = UnitHealth(unit)\n            local maxHealth = UnitHealthMax(unit)\n            local healthPercentage = health ~= -1 and maxHealth ~= -1 and health / maxHealth * 100\n            -- Check if it's a valid unit\n            if UnitCanAttack(\"player\", unit) and healthPercentage < 100 then\n                local unitTable = envTable.units[GUID]\n                -- Check if we have seen one time this unit, if we don't then initialize it.\n                if not unitTable or healthPercentage > unitTable[1][1][2] then\n                    unitTable = { {}, currentTime }\n                    envTable.units[GUID] = unitTable\n                end\n                local values = unitTable[1]\n                local time = currentTime - unitTable[2]\n                -- Check if the % HP changed since the last check (or if there were none)\n                if #values == 0 or healthPercentage ~= values[1][2] then\n                    local value\n                    local lastIndex = #envTable.cache\n                    -- Check if we can re-use a table from the cache -- Buds: i have doubt on the value of reusing table, with the high cost of tinsert on 1st index\n                    if lastIndex == 0 then\n                        value = { time, healthPercentage }\n                    else\n                        value = envTable.cache[lastIndex]\n                        envTable.cache[lastIndex] = nil\n                        value[1] = time\n                        value[2] = healthPercentage\n                    end\n                    table.insert(values, 1, value)\n                    local n = #values\n                    -- Delete values that are no longer valid\n                    while (n > historyCount) or (time - values[n][1] > historyTime) do\n                        envTable.cache[#envTable.cache + 1] = values[n]\n                        values[n] = nil\n                        n = n - 1\n                    end\n                end\n            end\n        end\n    end\n    \n    function envTable.TimeToX(guid, percentage, minSamples)\n        local seconds = 8888\n        local unitTable = envTable.units[guid]\n        -- Simple linear regression\n        -- ( E(x^2)  E(x) )  ( a )  ( E(xy) )\n        -- ( E(x)     n  )  ( b ) = ( E(y)  )\n        -- Format of the above: ( 2x2 Matrix ) * ( 2x1 Vector ) = ( 2x1 Vector )\n        -- Solve to find a and b, satisfying y = a + bx\n        -- Matrix arithmetic has been expanded and solved to make the following operation as fast as possible\n        if unitTable then\n            local values = unitTable[1]\n            local n = #values\n            if n > minSamples then\n                local a, b = 0, 0\n                local Ex2, Ex, Exy, Ey = 0, 0, 0, 0\n                \n                local value, x, y\n                for i = 1, n do\n                    value = values[i]\n                    x, y = value[1], value[2]\n                    \n                    Ex2 = Ex2 + x * x\n                    Ex = Ex + x\n                    Exy = Exy + x * y\n                    Ey = Ey + y\n                end\n                -- invariant to find matrix inverse\n                local invariant = 1 / (Ex2 * n - Ex * Ex)\n                -- Solve for a and b\n                a = (-Ex * Exy * invariant) + (Ex2 * Ey * invariant)\n                b = (n * Exy * invariant) - (Ex * Ey * invariant)\n                if b ~= 0 then\n                    -- Use best fit line to calculate estimated time to reach target health\n                    seconds = (percentage - a) / b\n                    -- Subtract current time to obtain \"time remaining\"\n                    seconds = math.min(7777, seconds - (GetTime() - unitTable[2]))\n                    if seconds < 0 then seconds = 9999 end\n                end\n            end\n        end\n        return seconds\n    end\n    \n    function envTable.updateUnit(unitId)\n        if UnitExists(unitId) and (not envTable.onlyShowOnBoss or UnitLevel(unitId) == -1) then\n            envTable.TTDRefresh(unitId)\n            local GUID = UnitGUID(unitId)\n            envTable.TTD = envTable.TimeToX(GUID, envTable.config.pctHP, 3)\n            if envTable.TTD < 7777 and envTable.TTD < envTable.config.duration then\n                envTable.show = true\n                envTable.updateText()\n            end            \n        end\n    end\n    \n    function envTable.updateText ( )\n        local ret = \"\"\n        local number = envTable.TTD\n        if not number  or number == 0 or not envTable.show then\n            unitFrame.healthBar.ttdTextFrame:SetText(\"\")\n            return \n        end\n        local H = floor(number/3600)\n        local M = floor((number - (floor(number/3600) * 3600)) / 60)\n        local S = number - math.floor(number/60)*60\n        if H>0 then\n            ret = (\"%02d:%02d:%02d\"):format(H, M, S)\n        elseif M>0 then\n            ret =  (\"%02d:%02d\"):format(M, S)\n        else\n            ret =  floor(S)\n        end\n        unitFrame.healthBar.ttdTextFrame:SetText(ret)\n    end\n    \nend",
					},
					["Author"] = "Viashi-Antonidas",
					["Desc"] = "",
					["Hooks"] = {
						["Nameplate Removed"] = "function (self, unitId, unitFrame, envTable)\n    \n    unitFrame.healthBar.ttdTextFrame:SetText(\"\")\n    \nend",
						["Nameplate Updated"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.updateUnit(unitId)\n    \nend",
						["Nameplate Added"] = "function (self, unitId, unitFrame, envTable)\n    \n    envTable.updateUnit(unitId)\n    \nend",
						["Constructor"] = "function (self, unitId, unitFrame, envTable)\n    \n    -- Credit to Aethys for the algorithm: https://github.com/herotc/hero-lib\n    \n    --general settings:\n    envTable.onlyShowOnBoss = false\n    \n    -- text settings:\n    local textColor = \"white\";\n    local textSize = 12;\n    \n    -- positioning\n    local anchor = {\n        side = 1, --1 = topleft 2 = left 3 = bottomleft 4 = bottom 5 = bottom right 6 = right 7 = topright 8 = top\n        x = 2, --x offset\n        y = 0, --y offset\n    };\n    \n    -- TTD calculation config\n    envTable.config = {\n        historyCount = 100,\n        historyTime = 10,\n        duration = 600,\n        pctHP = 0,\n    }\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------\n    \n    --frames:\n    \n    --create the text frame that will show the TTD\n    if (not  unitFrame.healthBar.ttdTextFrame) then\n        envTable.ttdTextFrame = Plater:CreateLabel (unitFrame.healthBar, \"\", textSize, textColor);\n        Plater.SetAnchor (envTable.ttdTextFrame, anchor);\n        unitFrame.healthBar.ttdTextFrame = envTable.ttdTextFrame\n        envTable.ttdTextFrame:SetText(\"\")\n    end\n    \n    ---------------------------------------------------------------------------------------------------------------------------------------------           \n    --functions\n    \n    envTable.cache = {}\n    envTable.units = {}\n    \n    function envTable.TTDRefresh(unit)\n        local currentTime = GetTime()\n        local historyCount = envTable.config.historyCount\n        local historyTime = envTable.config.historyTime\n        \n        if UnitExists(unit) then\n            local GUID = UnitGUID(unit)\n            local health = UnitHealth(unit)\n            local maxHealth = UnitHealthMax(unit)\n            local healthPercentage = health ~= -1 and maxHealth ~= -1 and health / maxHealth * 100\n            -- Check if it's a valid unit\n            if UnitCanAttack(\"player\", unit) and healthPercentage < 100 then\n                local unitTable = envTable.units[GUID]\n                -- Check if we have seen one time this unit, if we don't then initialize it.\n                if not unitTable or healthPercentage > unitTable[1][1][2] then\n                    unitTable = { {}, currentTime }\n                    envTable.units[GUID] = unitTable\n                end\n                local values = unitTable[1]\n                local time = currentTime - unitTable[2]\n                -- Check if the % HP changed since the last check (or if there were none)\n                if #values == 0 or healthPercentage ~= values[1][2] then\n                    local value\n                    local lastIndex = #envTable.cache\n                    -- Check if we can re-use a table from the cache -- Buds: i have doubt on the value of reusing table, with the high cost of tinsert on 1st index\n                    if lastIndex == 0 then\n                        value = { time, healthPercentage }\n                    else\n                        value = envTable.cache[lastIndex]\n                        envTable.cache[lastIndex] = nil\n                        value[1] = time\n                        value[2] = healthPercentage\n                    end\n                    table.insert(values, 1, value)\n                    local n = #values\n                    -- Delete values that are no longer valid\n                    while (n > historyCount) or (time - values[n][1] > historyTime) do\n                        envTable.cache[#envTable.cache + 1] = values[n]\n                        values[n] = nil\n                        n = n - 1\n                    end\n                end\n            end\n        end\n    end\n    \n    function envTable.TimeToX(guid, percentage, minSamples)\n        local seconds = 8888\n        local unitTable = envTable.units[guid]\n        -- Simple linear regression\n        -- ( E(x^2)  E(x) )  ( a )  ( E(xy) )\n        -- ( E(x)     n  )  ( b ) = ( E(y)  )\n        -- Format of the above: ( 2x2 Matrix ) * ( 2x1 Vector ) = ( 2x1 Vector )\n        -- Solve to find a and b, satisfying y = a + bx\n        -- Matrix arithmetic has been expanded and solved to make the following operation as fast as possible\n        if unitTable then\n            local values = unitTable[1]\n            local n = #values\n            if n > minSamples then\n                local a, b = 0, 0\n                local Ex2, Ex, Exy, Ey = 0, 0, 0, 0\n                \n                local value, x, y\n                for i = 1, n do\n                    value = values[i]\n                    x, y = value[1], value[2]\n                    \n                    Ex2 = Ex2 + x * x\n                    Ex = Ex + x\n                    Exy = Exy + x * y\n                    Ey = Ey + y\n                end\n                -- invariant to find matrix inverse\n                local invariant = 1 / (Ex2 * n - Ex * Ex)\n                -- Solve for a and b\n                a = (-Ex * Exy * invariant) + (Ex2 * Ey * invariant)\n                b = (n * Exy * invariant) - (Ex * Ey * invariant)\n                if b ~= 0 then\n                    -- Use best fit line to calculate estimated time to reach target health\n                    seconds = (percentage - a) / b\n                    -- Subtract current time to obtain \"time remaining\"\n                    seconds = math.min(7777, seconds - (GetTime() - unitTable[2]))\n                    if seconds < 0 then seconds = 9999 end\n                end\n            end\n        end\n        return seconds\n    end\n    \n    function envTable.updateUnit(unitId)\n        if UnitExists(unitId) and (not envTable.onlyShowOnBoss or UnitLevel(unitId) == -1) then\n            envTable.TTDRefresh(unitId)\n            local GUID = UnitGUID(unitId)\n            envTable.TTD = envTable.TimeToX(GUID, envTable.config.pctHP, 3)\n            if envTable.TTD < 7777 and envTable.TTD < envTable.config.duration then\n                envTable.show = true\n                envTable.updateText()\n            end            \n        end\n    end\n    \n    function envTable.updateText ( )\n        local ret = \"\"\n        local number = envTable.TTD\n        if not number  or number == 0 or not envTable.show then\n            unitFrame.healthBar.ttdTextFrame:SetText(\"\")\n            return \n        end\n        local H = floor(number/3600)\n        local M = floor((number - (floor(number/3600) * 3600)) / 60)\n        local S = number - math.floor(number/60)*60\n        if H>0 then\n            ret = (\"%02d:%02d:%02d\"):format(H, M, S)\n        elseif M>0 then\n            ret =  (\"%02d:%02d\"):format(M, S)\n        else\n            ret =  floor(S)\n        end\n        unitFrame.healthBar.ttdTextFrame:SetText(ret)\n    end\n    \nend",
					},
					["Prio"] = 99,
					["Time"] = 1582839715,
					["PlaterCore"] = 1,
					["Name"] = "Time to Die (TTD)",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["spec"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["race"] = {
						},
					},
					["Icon"] = 2125377,
					["LastHookEdited"] = "Constructor",
				}, -- [15]
			},
			["disable_omnicc_on_auras"] = true,
			["health_statusbar_bgcolor"] = {
				0.1137254901960784, -- [1]
				0.1137254901960784, -- [2]
				0.1137254901960784, -- [3]
				0.8900000005960464, -- [4]
			},
			["hook_data_trash"] = {
				{
					["Enabled"] = true,
					["Revision"] = 1,
					["HooksTemp"] = {
					},
					["Author"] = "Qsilver-Silvermoon",
					["Desc"] = "",
					["Hooks"] = {
					},
					["__TrashAt"] = 1582837235,
					["Name"] = "New Mod",
					["PlaterCore"] = 1,
					["Time"] = 1582837229,
					["LastHookEdited"] = "",
					["Icon"] = "",
					["LoadConditions"] = {
						["talent"] = {
						},
						["group"] = {
						},
						["class"] = {
						},
						["map_ids"] = {
						},
						["role"] = {
						},
						["pvptalent"] = {
						},
						["race"] = {
						},
						["affix"] = {
						},
						["encounter_ids"] = {
						},
						["spec"] = {
						},
					},
				}, -- [1]
			},
			["script_auto_imported"] = {
				["Cast - Small Alert"] = 4,
				["Aura - Invalidate Unit"] = 1,
				["Aura - Buff Alert"] = 4,
				["Unit - Important"] = 5,
				["Explosion Affix M+"] = 3,
				["Cast - Very Important"] = 2,
				["Aura Border Color"] = 1,
				["Color Change"] = 1,
				["Aura - Debuff Alert"] = 3,
				["Cast - Frontal Cone"] = 2,
				["Fixate"] = 3,
				["Aura - Blink Time Left"] = 1,
				["Unit Power"] = 1,
				["Cast - Big Alert"] = 5,
				["Fixate On You"] = 2,
			},
			["extra_icon_auras"] = {
				277242, -- [1]
			},
			["script_data_trash"] = {
				{
					["ConstructorCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["OnHideCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["Temp_OnShowCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["ScriptType"] = 1,
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["Time"] = 1582837238,
					["Temp_ConstructorCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 1,
					["Icon"] = "",
					["Author"] = "Qsilver-Silvermoon",
					["Initialization"] = "		function (scriptTable)\n			--insert code here\n			\n		end\n	",
					["Desc"] = "",
					["Name"] = "New Script",
					["Temp_UpdateCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Temp_OnHideCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["OnShowCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["Temp_Initialization"] = "		function (scriptTable)\n			--insert code here\n			\n		end\n	",
					["__TrashAt"] = 1582837244,
				}, -- [1]
				{
					["ConstructorCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["OnHideCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["Temp_OnShowCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["ScriptType"] = 1,
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["Time"] = 1582837280,
					["Temp_ConstructorCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 1,
					["Icon"] = "",
					["Author"] = "Qsilver-Silvermoon",
					["Initialization"] = "		function (scriptTable)\n			--insert code here\n			\n		end\n	",
					["Desc"] = "",
					["Name"] = "New Script",
					["Temp_UpdateCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["Temp_OnHideCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["OnShowCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["Temp_Initialization"] = "		function (scriptTable)\n			--insert code here\n			\n		end\n	",
					["__TrashAt"] = 1582837290,
				}, -- [2]
				{
					["ConstructorCode"] = "\n\n",
					["OnHideCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["Temp_OnShowCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["ScriptType"] = 1,
					["UpdateCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["Time"] = 1582837321,
					["Temp_ConstructorCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["NpcNames"] = {
					},
					["Enabled"] = true,
					["Revision"] = 3,
					["Temp_OnHideCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["Author"] = "Qsilver-Silvermoon",
					["Initialization"] = "		function (scriptTable)\n			--insert code here\n			\n		end\n	",
					["Desc"] = "",
					["Name"] = "New Script",
					["Prio"] = 99,
					["SpellIds"] = {
					},
					["PlaterCore"] = 1,
					["OnShowCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["Temp_UpdateCode"] = "		function (self, unitId, unitFrame, envTable, scriptTable)\n			--insert code here\n			\n		end\n	",
					["Temp_Initialization"] = "		function (scriptTable)\n			--insert code here\n			\n		end\n	",
					["__TrashAt"] = 1582837324,
				}, -- [3]
			},
			["auto_toggle_friendly"] = {
				["party"] = true,
				["arena"] = true,
				["raid"] = true,
			},
			["first_run3"] = true,
			["ui_parent_scale_tune"] = 1.538461594891974,
			["aura_tracker"] = {
				["buff_tracked"] = {
					[209859] = true,
				},
			},
			["hook_auto_imported"] = {
				["Reorder Nameplate"] = 3,
				["Dont Have Aura"] = 1,
				["Players Targetting Amount"] = 4,
				["Color Automation"] = 1,
				["Bwonsamdi Reaping"] = 1,
				["Blockade Encounter"] = 1,
				["Jaina Encounter"] = 6,
				["Execute Range"] = 1,
				["Extra Border"] = 2,
				["Combo Points"] = 3,
				["Attacking Specific Unit"] = 1,
				["Target Color"] = 3,
				["Aura Reorder"] = 1,
				["Hide Neutral Units"] = 1,
			},
			["update_throttle"] = 0.05000000074505806,
			["captured_spells"] = {
				[204598] = {
					["type"] = "DEBUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[167898] = {
					["type"] = "BUFF",
					["source"] = "Littlelovie",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269302] = {
					["type"] = "BUFF",
					["source"] = "Hired Assassin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134232,
				},
				[198589] = {
					["source"] = "Alphredo-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[300761] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278769] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276212] = {
					["encounterID"] = 2108,
					["source"] = "Mogul Razdunk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[279793] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5215] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[236060] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[527] = {
					["source"] = "Behis",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279029] = {
					["type"] = "BUFF",
					["source"] = "Fabioso",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274426] = {
					["type"] = "BUFF",
					["source"] = "Aqitus-TheMaelstrom",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281843] = {
					["type"] = "BUFF",
					["source"] = "Lpd-Pozzodell'Eternità",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315858] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[52174] = {
					["source"] = "Recklust",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[133] = {
					["source"] = "Otarion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[156779] = {
					["type"] = "BUFF",
					["source"] = "Fébri",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257161] = {
					["type"] = "BUFF",
					["source"] = "Void Assassin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 140482,
				},
				[308188] = {
					["type"] = "BUFF",
					["source"] = "Agaeon-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279033] = {
					["type"] = "BUFF",
					["source"] = "Fabioso",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260103] = {
					["type"] = "DEBUFF",
					["encounterID"] = 2107,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1079] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[58984] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[17] = {
					["type"] = "BUFF",
					["source"] = "Voidtorrent",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[136] = {
					["source"] = "Qsilver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288756] = {
					["type"] = "DEBUFF",
					["source"] = "Shadyshîft",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269831] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268810] = {
					["type"] = "BUFF",
					["source"] = "Test Subject",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133963,
				},
				[200389] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[265742] = {
					["source"] = "Recklust",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[276229] = {
					["encounterID"] = 2108,
					["source"] = "B.O.O.M.B.A.",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 141303,
				},
				[279810] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[87024] = {
					["type"] = "DEBUFF",
					["source"] = "Nkeo-Dentarg",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[214968] = {
					["type"] = "DEBUFF",
					["source"] = "Dànzic-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57994] = {
					["source"] = "Fabioso",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[113942] = {
					["type"] = "DEBUFF",
					["source"] = "Lukko-Trollbane",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313571] = {
					["type"] = "BUFF",
					["source"] = "Lukko-Trollbane",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5487] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8936] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274443] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[248473] = {
					["type"] = "BUFF",
					["source"] = "Durozar-TheMaelstrom",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[289277] = {
					["type"] = "BUFF",
					["source"] = "Remody-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303344] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[58506] = {
					["type"] = "BUFF",
					["source"] = "Moxie Lockspinner",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137024,
				},
				[303345] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[51505] = {
					["source"] = "Fabioso",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[117588] = {
					["source"] = "Primal Fire Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61029,
				},
				[259856] = {
					["encounterID"] = 2107,
					["source"] = "Rixxa Fluxflame",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129231,
				},
				[24394] = {
					["type"] = "DEBUFF",
					["source"] = "Gara",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 88708,
				},
				[267288] = {
					["source"] = "Earthen Ring Shaman",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 135671,
				},
				[207684] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203720] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[259474] = {
					["encounterID"] = 2107,
					["source"] = "Rixxa Fluxflame",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129231,
				},
				[290819] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267546] = {
					["source"] = "Rowdy Reveler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 144231,
				},
				[207685] = {
					["type"] = "DEBUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267547] = {
					["type"] = "BUFF",
					["source"] = "Coin-Operated Crowd Pummeler",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129214,
				},
				[206151] = {
					["type"] = "DEBUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264735] = {
					["type"] = "BUFF",
					["source"] = "Gara",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 88708,
				},
				[11366] = {
					["source"] = "Otarion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[301308] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[263202] = {
					["source"] = "Venture Co. Earthshaper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130661,
				},
				[204490] = {
					["type"] = "DEBUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22812] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267551] = {
					["source"] = "Coin-Operated Crowd Pummeler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129214,
				},
				[260372] = {
					["source"] = "Venture Co. Skyscorcher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133436,
				},
				[106785] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[253595] = {
					["type"] = "BUFF",
					["source"] = "Savickas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[131347] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[292361] = {
					["type"] = "BUFF",
					["source"] = "Chosenône-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[221883] = {
					["type"] = "BUFF",
					["source"] = "Skanor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300802] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281621] = {
					["source"] = "Mech Jockey",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130488,
				},
				[203981] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269090] = {
					["source"] = "Ordnance Specialist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 137029,
				},
				[292364] = {
					["type"] = "BUFF",
					["source"] = "Bigpal-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48438] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263209] = {
					["source"] = "Mine Rat",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130437,
				},
				[143625] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269092] = {
					["type"] = "DEBUFF",
					["source"] = "Ordnance Specialist",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 137029,
				},
				[257946] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297993] = {
					["source"] = "Dkv-Outland",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[235313] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280604] = {
					["source"] = "Refreshment Vendor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136470,
				},
				[263215] = {
					["type"] = "BUFF",
					["source"] = "Stonefury",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130635,
				},
				[198103] = {
					["source"] = "Fabioso",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[288024] = {
					["type"] = "BUFF",
					["source"] = "Doomcry-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118297] = {
					["source"] = "Primal Fire Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61029,
				},
				[155777] = {
					["type"] = "BUFF",
					["source"] = "Poachable-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77505] = {
					["type"] = "DEBUFF",
					["source"] = "Fabioso",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115804] = {
					["type"] = "DEBUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 162381,
				},
				[296211] = {
					["type"] = "BUFF",
					["source"] = "Spicychìcken-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16739] = {
					["type"] = "BUFF",
					["source"] = "Raejh-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2484] = {
					["source"] = "Fabioso",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[8921] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[272940] = {
					["type"] = "BUFF",
					["source"] = "Aurumz-DunModr",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294935] = {
					["type"] = "BUFF",
					["source"] = "Tirpitz-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[77762] = {
					["type"] = "BUFF",
					["source"] = "Fabioso",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[273453] = {
					["type"] = "BUFF",
					["source"] = "Fébri",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[192225] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188389] = {
					["source"] = "Fabioso",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313352] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[264760] = {
					["type"] = "BUFF",
					["source"] = "Zennarya",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264761] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[303380] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268854] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319237] = {
					["type"] = "BUFF",
					["source"] = "Geiasfuq-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288803] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264764] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[293664] = {
					["type"] = "BUFF",
					["source"] = "Nicanne-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2580] = {
					["type"] = "BUFF",
					["source"] = "Walkyrie-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[18562] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[318219] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5176] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[90361] = {
					["source"] = "Gara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 88708,
				},
				[278326] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314387] = {
					["type"] = "BUFF",
					["source"] = "Malicious Growth",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161408,
				},
				[289324] = {
					["type"] = "BUFF",
					["source"] = "Kakomoira-Wildhammer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[46012] = {
					["type"] = "BUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[287790] = {
					["type"] = "BUFF",
					["source"] = "Freddyone-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268865] = {
					["source"] = "Weapons Tester",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136934,
				},
				[287280] = {
					["type"] = "BUFF",
					["source"] = "Kherynaé-ChamberofAspects",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210391] = {
					["type"] = "BUFF",
					["source"] = "Saylisha",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[35079] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318227] = {
					["type"] = "BUFF",
					["source"] = "Fabioso",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[182387] = {
					["type"] = "DEBUFF",
					["source"] = "Fabioso",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[12654] = {
					["type"] = "DEBUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280121] = {
					["type"] = "BUFF",
					["source"] = "Raejh-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281400] = {
					["source"] = "Otarion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[192106] = {
					["type"] = "BUFF",
					["source"] = "Lippe-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[245686] = {
					["type"] = "BUFF",
					["source"] = "Jocon-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315161] = {
					["type"] = "DEBUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270661] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8690] = {
					["source"] = "Fabioso",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268362] = {
					["source"] = "Wanton Sapper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130653,
				},
				[196840] = {
					["source"] = "Fabioso",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190319] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[326419] = {
					["type"] = "BUFF",
					["source"] = "Istrelle",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257582] = {
					["encounterID"] = 2106,
					["source"] = "Earthrager",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129802,
				},
				[268877] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[294966] = {
					["type"] = "BUFF",
					["source"] = "Mekichka-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61391] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[293945] = {
					["type"] = "BUFF",
					["source"] = "Freddyone-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[34026] = {
					["source"] = "Qsilver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[155158] = {
					["type"] = "DEBUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271698] = {
					["encounterID"] = 2106,
					["source"] = "Azerokk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129227,
				},
				[315176] = {
					["type"] = "DEBUFF",
					["source"] = "Fabioso",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[252216] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313643] = {
					["type"] = "BUFF",
					["source"] = "Flyingslut-Auchindoun",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268887] = {
					["type"] = "BUFF",
					["source"] = "Fébri",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[276304] = {
					["source"] = "Rowdy Reveler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136005,
				},
				[314411] = {
					["source"] = "Voidweaver Mal'thir",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161241,
				},
				[267354] = {
					["type"] = "BUFF",
					["source"] = "Hired Assassin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134232,
				},
				[202602] = {
					["type"] = "BUFF",
					["source"] = "Xérin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280398] = {
					["type"] = "BUFF",
					["source"] = "Behis",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267612] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108271] = {
					["type"] = "BUFF",
					["source"] = "Fabioso",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[147362] = {
					["source"] = "Qsilver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[251836] = {
					["type"] = "BUFF",
					["source"] = "Aurumz-DunModr",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[296003] = {
					["type"] = "BUFF",
					["source"] = "Bossgedatsu-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288075] = {
					["type"] = "BUFF",
					["source"] = "Detondra-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272986] = {
					["type"] = "DEBUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[275544] = {
					["type"] = "BUFF",
					["source"] = "Kalisperas-Arathor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272987] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251837] = {
					["type"] = "BUFF",
					["source"] = "Daii-Ragnaros",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[16870] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268129] = {
					["source"] = "Refreshment Vendor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 136470,
				},
				[268130] = {
					["type"] = "BUFF",
					["source"] = "Refreshment Vendor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136470,
				},
				[246851] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271711] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257337] = {
					["encounterID"] = 2105,
					["source"] = "Coin-Operated Crowd Pummeler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129214,
				},
				[271456] = {
					["encounterID"] = 2108,
					["source"] = "Mogul Razdunk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[2908] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[246852] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260279] = {
					["type"] = "DEBUFF",
					["encounterID"] = 2108,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1459] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246853] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260280] = {
					["type"] = "BUFF",
					["source"] = "Mogul Razdunk",
					["encounterID"] = 2108,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129232,
				},
				[297035] = {
					["type"] = "BUFF",
					["source"] = "Omorfoulla",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193530] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246854] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2948] = {
					["source"] = "Otarion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297037] = {
					["type"] = "BUFF",
					["source"] = "Galahadsof",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[279902] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[370] = {
					["source"] = "Fabioso",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[740] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[157982] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313918] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[116011] = {
					["source"] = "Otarion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257597] = {
					["type"] = "BUFF",
					["source"] = "Azerokk",
					["encounterID"] = 2106,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129227,
				},
				[313663] = {
					["type"] = "DEBUFF",
					["source"] = "Fabioso",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1490] = {
					["type"] = "DEBUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262515] = {
					["source"] = "Venture Co. Skyscorcher",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133436,
				},
				[34477] = {
					["source"] = "Qsilver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258622] = {
					["encounterID"] = 2106,
					["source"] = "Azerokk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129227,
				},
				[8042] = {
					["source"] = "Fabioso",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[313923] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260669] = {
					["encounterID"] = 2107,
					["source"] = "Rixxa Fluxflame",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129231,
				},
				[298836] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[244813] = {
					["type"] = "DEBUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204021] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298837] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[217832] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[236502] = {
					["type"] = "BUFF",
					["source"] = "Tamerlane-Sylvanas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295258] = {
					["type"] = "BUFF",
					["source"] = "Fabioso",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[185736] = {
					["type"] = "BUFF",
					["source"] = "Aqitus-TheMaelstrom",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304722] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269429] = {
					["source"] = "Venture Co. War Machine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133463,
				},
				[116014] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316744] = {
					["type"] = "BUFF",
					["source"] = "Kakomoira-Wildhammer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[768] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262270] = {
					["type"] = "DEBUFF",
					["source"] = "Venture Co. Alchemist",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133432,
				},
				[231390] = {
					["type"] = "BUFF",
					["source"] = "Smallhunt-Hellscream",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[774] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[61684] = {
					["type"] = "BUFF",
					["source"] = "Gara",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151096,
				},
				[300893] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[781] = {
					["encounterID"] = 2105,
					["source"] = "Qsilver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5217] = {
					["type"] = "BUFF",
					["source"] = "Aqitus-TheMaelstrom",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[5221] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[5225] = {
					["type"] = "BUFF",
					["source"] = "Agaeon-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[783] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[154796] = {
					["type"] = "BUFF",
					["source"] = "Poachable-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186254] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[154797] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204157] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2139] = {
					["source"] = "Otarion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[298343] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[109304] = {
					["source"] = "Qsilver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[281209] = {
					["type"] = "BUFF",
					["source"] = "Dkv-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288882] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262540] = {
					["source"] = "Expert Technician",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133593,
				},
				[186257] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186258] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19574] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317020] = {
					["type"] = "BUFF",
					["source"] = "Lostwhisper",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278147] = {
					["type"] = "BUFF",
					["source"] = "Kherynaé-ChamberofAspects",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300142] = {
					["source"] = "Otarion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260811] = {
					["encounterID"] = 2108,
					["source"] = "Mogul Razdunk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[259533] = {
					["type"] = "DEBUFF",
					["encounterID"] = 2107,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207744] = {
					["type"] = "DEBUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314467] = {
					["source"] = "Explosive Scarab",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161437,
				},
				[313445] = {
					["type"] = "DEBUFF",
					["source"] = "Brutal Spire of Ny'alotha",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 160984,
				},
				[260813] = {
					["encounterID"] = 2108,
					["source"] = "Mogul Razdunk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[262092] = {
					["type"] = "BUFF",
					["source"] = "Addled Thug",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130435,
				},
				[298357] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[191634] = {
					["type"] = "BUFF",
					["source"] = "Fabioso",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57723] = {
					["type"] = "DEBUFF",
					["source"] = "Nightmate-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[186265] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["encounterID"] = 2107,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[280205] = {
					["type"] = "BUFF",
					["source"] = "Fabioso",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316522] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268953] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33907] = {
					["type"] = "BUFF",
					["source"] = "Broll Bearmantle",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 142294,
				},
				[272790] = {
					["source"] = "Qsilver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[268954] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[163505] = {
					["type"] = "DEBUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268955] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57724] = {
					["type"] = "DEBUFF",
					["source"] = "Harlqin-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268956] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[281744] = {
					["type"] = "BUFF",
					["source"] = "Myridie-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263586] = {
					["source"] = "Taskmaster Askari",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134012,
				},
				[185245] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[275351] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268702] = {
					["type"] = "BUFF",
					["source"] = "Stonefury",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130635,
				},
				[279956] = {
					["type"] = "DEBUFF",
					["source"] = "Enzacx-TwistingNether",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188443] = {
					["source"] = "Fabioso",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314483] = {
					["type"] = "DEBUFF",
					["source"] = "Samh'rek, Beckoner of Chaos",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161243,
				},
				[29166] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[315763] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2383] = {
					["type"] = "BUFF",
					["source"] = "Dreamwàlker",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3408] = {
					["type"] = "BUFF",
					["source"] = "Nightmate-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267685] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268709] = {
					["source"] = "Venture Co. Earthshaper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130661,
				},
				[257371] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267433] = {
					["source"] = "Mech Jockey",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130488,
				},
				[295310] = {
					["type"] = "BUFF",
					["source"] = "Fabioso",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271526] = {
					["encounterID"] = 2106,
					["source"] = "Earthrager",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129802,
				},
				[203538] = {
					["type"] = "BUFF",
					["source"] = "Thetemplar-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[43308] = {
					["type"] = "BUFF",
					["source"] = "Yorus-Pozzodell'Eternità",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[274598] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263601] = {
					["type"] = "BUFF",
					["source"] = "Taskmaster Askari",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134012,
				},
				[299662] = {
					["type"] = "BUFF",
					["source"] = "Deathpinky-Stormscale",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[61882] = {
					["source"] = "Fabioso",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203539] = {
					["type"] = "BUFF",
					["source"] = "Thetemplar-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203795] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279715] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[299664] = {
					["type"] = "BUFF",
					["source"] = "Fébri",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102793] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[16827] = {
					["source"] = "Gara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 88708,
				},
				[260189] = {
					["type"] = "BUFF",
					["source"] = "Mogul Razdunk",
					["encounterID"] = 2108,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129232,
				},
				[225919] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[883] = {
					["source"] = "Qsilver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260190] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129232,
				},
				[260318] = {
					["encounterID"] = 2108,
					["source"] = "Mogul Razdunk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[316036] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[232698] = {
					["type"] = "BUFF",
					["source"] = "Tomsigg",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300693] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271538] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256739] = {
					["type"] = "BUFF",
					["source"] = "Agaeon-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8143] = {
					["source"] = "Fabioso",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269493] = {
					["type"] = "BUFF",
					["source"] = "Coin-Operated Crowd Pummeler",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129214,
				},
				[202137] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[80353] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269239] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202138] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[315787] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290468] = {
					["type"] = "BUFF",
					["source"] = "Antarnis-ChamberofAspects",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263103] = {
					["type"] = "BUFF",
					["source"] = "Feckless Assistant",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133345,
				},
				[297118] = {
					["type"] = "BUFF",
					["source"] = "Edrington",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3600] = {
					["type"] = "DEBUFF",
					["source"] = "Earthbind Totem",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 2630,
				},
				[274357] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["encounterID"] = 2107,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[80354] = {
					["type"] = "DEBUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[311186] = {
					["source"] = "Taikova-Ravencrest",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[36213] = {
					["source"] = "Primal Earth Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61056,
				},
				[295842] = {
					["type"] = "BUFF",
					["source"] = "Geiasfuq-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316814] = {
					["type"] = "BUFF",
					["source"] = "Katnis-Boulderfist",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[155722] = {
					["type"] = "DEBUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[57984] = {
					["source"] = "Primal Fire Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61029,
				},
				[178740] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298146] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207640] = {
					["type"] = "BUFF",
					["source"] = "Katnis-Boulderfist",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[1822] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[127797] = {
					["type"] = "DEBUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[242551] = {
					["type"] = "BUFF",
					["source"] = "Azmodian-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2641] = {
					["source"] = "Merador-Forscherliga",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2643] = {
					["source"] = "Qsilver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2645] = {
					["type"] = "BUFF",
					["source"] = "Fabioso",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260838] = {
					["type"] = "DEBUFF",
					["encounterID"] = 2108,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[258920] = {
					["type"] = "BUFF",
					["source"] = "Alphredo-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285719] = {
					["type"] = "BUFF",
					["source"] = "Nebezpieczna-BurningLegion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[307026] = {
					["source"] = "Kanjuro-Kazzak",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1850] = {
					["type"] = "BUFF",
					["source"] = "Nephdudu-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[251838] = {
					["type"] = "BUFF",
					["source"] = "Gwiz-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262347] = {
					["encounterID"] = 2105,
					["source"] = "Coin-Operated Crowd Pummeler",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129214,
				},
				[102351] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[157644] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[90328] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 151148,
				},
				[262348] = {
					["type"] = "DEBUFF",
					["source"] = "Crawler Mine",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133482,
				},
				[316823] = {
					["type"] = "BUFF",
					["source"] = "Lpd-Pozzodell'Eternità",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268998] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[65081] = {
					["type"] = "BUFF",
					["source"] = "Voidtorrent",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[6788] = {
					["type"] = "DEBUFF",
					["source"] = "Voidtorrent",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263628] = {
					["type"] = "BUFF",
					["source"] = "Mechanized Peacekeeper",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130485,
				},
				[269279] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263275] = {
					["type"] = "BUFF",
					["source"] = "Taskmaster Askari",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134012,
				},
				[69369] = {
					["type"] = "BUFF",
					["source"] = "Aqitus-TheMaelstrom",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[54149] = {
					["type"] = "BUFF",
					["source"] = "Lpd-Pozzodell'Eternità",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[3714] = {
					["type"] = "BUFF",
					["source"] = "Dànzic-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[256493] = {
					["type"] = "BUFF",
					["source"] = "Azerite Footbomb",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129246,
				},
				[48107] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[102352] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[300714] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[207386] = {
					["type"] = "BUFF",
					["source"] = "Chosenône-Kazzak",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260202] = {
					["encounterID"] = 2108,
					["source"] = "Mogul Razdunk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129232,
				},
				[275907] = {
					["encounterID"] = 2106,
					["source"] = "Azerokk",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 129227,
				},
				[263276] = {
					["type"] = "DEBUFF",
					["source"] = "Taskmaster Askari",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134012,
				},
				[300971] = {
					["type"] = "BUFF",
					["source"] = "Lpd-Pozzodell'Eternità",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298152] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[288146] = {
					["type"] = "BUFF",
					["source"] = "Inscene-Stormscale",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198793] = {
					["source"] = "Lostwhisper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[118337] = {
					["type"] = "BUFF",
					["source"] = "Primal Earth Elemental",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 61056,
				},
				[297941] = {
					["type"] = "BUFF",
					["source"] = "Antarnis-ChamberofAspects",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[19577] = {
					["source"] = "Qsilver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[227723] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[83243] = {
					["source"] = "Merador-Forscherliga",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[284275] = {
					["type"] = "BUFF",
					["source"] = "Quantumice",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[267367] = {
					["type"] = "BUFF",
					["source"] = "Mechanized Peacekeeper",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130485,
				},
				[288800] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[304056] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[266091] = {
					["type"] = "BUFF",
					["source"] = "Jbzd",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[93402] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[187827] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[225921] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[317065] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263636] = {
					["source"] = "Addled Thug",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130435,
				},
				[113858] = {
					["type"] = "BUFF",
					["source"] = "Jbzd",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[165961] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314531] = {
					["source"] = "Ravenous Fleshfiend",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161502,
				},
				[263637] = {
					["source"] = "Addled Thug",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130435,
				},
				[87840] = {
					["type"] = "BUFF",
					["source"] = "Moonshouter-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204843] = {
					["type"] = "DEBUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[48108] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[228477] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[193455] = {
					["source"] = "Qsilver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[260734] = {
					["type"] = "BUFF",
					["source"] = "Fabioso",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212800] = {
					["type"] = "BUFF",
					["source"] = "Alphredo-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[316835] = {
					["type"] = "DEBUFF",
					["source"] = "Twisted Appendage",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 162764,
				},
				[277181] = {
					["type"] = "BUFF",
					["source"] = "Shadyshîft",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164273] = {
					["type"] = "BUFF",
					["source"] = "Myridie-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[277706] = {
					["type"] = "BUFF",
					["source"] = "Jbzd",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[317859] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[193456] = {
					["type"] = "BUFF",
					["source"] = "Glaivemaiden-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118455] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319241] = {
					["type"] = "DEBUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195072] = {
					["source"] = "Lillidãn",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[273104] = {
					["type"] = "BUFF",
					["source"] = "Fabioso",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[119085] = {
					["type"] = "BUFF",
					["source"] = "Kakomoira-Wildhammer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[24858] = {
					["type"] = "BUFF",
					["source"] = "Remire",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263642] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[290372] = {
					["type"] = "BUFF",
					["source"] = "Tomsigg",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[117828] = {
					["type"] = "BUFF",
					["source"] = "Lukko-Trollbane",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[44457] = {
					["source"] = "Otarion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[262268] = {
					["source"] = "Venture Co. Alchemist",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133432,
				},
				[6673] = {
					["type"] = "BUFF",
					["source"] = "Naferius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[115008] = {
					["source"] = "Kakomoira-Wildhammer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[258674] = {
					["source"] = "Off-Duty Laborer",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130436,
				},
				[240447] = {
					["type"] = "DEBUFF",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[153561] = {
					["source"] = "Otarion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[257544] = {
					["type"] = "DEBUFF",
					["source"] = "Earthrager",
					["encounterID"] = 2106,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129802,
				},
				[314392] = {
					["type"] = "DEBUFF",
					["source"] = "Malicious Growth",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161408,
				},
				[280412] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[269298] = {
					["type"] = "DEBUFF",
					["source"] = "Hired Assassin",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 134232,
				},
				[108366] = {
					["type"] = "BUFF",
					["source"] = "Lukko-Trollbane",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[2823] = {
					["type"] = "BUFF",
					["source"] = "Nightmate-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270576] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[22568] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280413] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[278736] = {
					["type"] = "BUFF",
					["source"] = "Azmodian-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[204262] = {
					["type"] = "BUFF",
					["source"] = "Valkhala-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[290121] = {
					["type"] = "BUFF",
					["source"] = "Bossgedatsu-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[318378] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314397] = {
					["source"] = "Urg'roth, Breaker of Heroes",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161124,
				},
				[263648] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[295248] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118905] = {
					["source"] = "Capacitor Totem",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61245,
				},
				[217200] = {
					["source"] = "Qsilver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[316826] = {
					["source"] = "Twisted Appendage",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 162764,
				},
				[11426] = {
					["type"] = "BUFF",
					["source"] = "Zeunna",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[272679] = {
					["source"] = "Qsilver",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[178906] = {
					["type"] = "BUFF",
					["source"] = "Detondra-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212182] = {
					["source"] = "Aurumz-DunModr",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295367] = {
					["type"] = "DEBUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[203819] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271579] = {
					["encounterID"] = 2105,
					["source"] = "Venture Co. Earthshaper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130661,
				},
				[314478] = {
					["type"] = "DEBUFF",
					["source"] = "Samh'rek, Beckoner of Chaos",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161243,
				},
				[268415] = {
					["type"] = "BUFF",
					["source"] = "Azerite Extractor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 136643,
				},
				[279913] = {
					["type"] = "BUFF",
					["source"] = "Lukko-Trollbane",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[122] = {
					["source"] = "Otarion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[20473] = {
					["source"] = "Kherynaé-ChamberofAspects",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[25771] = {
					["type"] = "DEBUFF",
					["source"] = "Thetemplar-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[250878] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264420] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297412] = {
					["type"] = "BUFF",
					["source"] = "Holybeef-Sylvanas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262412] = {
					["type"] = "BUFF",
					["source"] = "Mechanized Peacekeeper",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130485,
				},
				[312107] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[285721] = {
					["type"] = "BUFF",
					["source"] = "Zennarya",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[319919] = {
					["type"] = "BUFF",
					["source"] = "Futureseer",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[217694] = {
					["type"] = "DEBUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[297034] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[260829] = {
					["type"] = "DEBUFF",
					["source"] = "Unknown",
					["encounterID"] = 2108,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 132338,
				},
				[295368] = {
					["type"] = "DEBUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[198067] = {
					["source"] = "Fabioso",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269313] = {
					["source"] = "Wanton Sapper",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 130653,
				},
				[262377] = {
					["source"] = "Crawler Mine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133482,
				},
				[29893] = {
					["source"] = "Zionns",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[1966] = {
					["type"] = "BUFF",
					["source"] = "Cabs-Thunderhorn",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[259853] = {
					["type"] = "DEBUFF",
					["source"] = "Rixxa Fluxflame",
					["encounterID"] = 2107,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 129231,
				},
				[275429] = {
					["type"] = "BUFF",
					["source"] = "Jbzd",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314585] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262513] = {
					["type"] = "DEBUFF",
					["source"] = "Venture Co. Skyscorcher",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133436,
				},
				[192058] = {
					["source"] = "Fabioso",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[296138] = {
					["type"] = "BUFF",
					["source"] = "Katnis-Boulderfist",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[188196] = {
					["source"] = "Fabioso",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[297039] = {
					["type"] = "BUFF",
					["source"] = "Zeratius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[255996] = {
					["encounterID"] = 2105,
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[279028] = {
					["type"] = "BUFF",
					["source"] = "Fabioso",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[271843] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[30449] = {
					["source"] = "Otarion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[204255] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[145205] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295373] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[269099] = {
					["source"] = "Venture Co. War Machine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133463,
				},
				[318391] = {
					["type"] = "DEBUFF",
					["source"] = "Great Worm From Beyond",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 152550,
				},
				[164812] = {
					["type"] = "DEBUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298197] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268815] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 133963,
				},
				[260881] = {
					["type"] = "BUFF",
					["source"] = "Fabioso",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[262383] = {
					["source"] = "Venture Co. War Machine",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 133463,
				},
				[273286] = {
					["type"] = "DEBUFF",
					["source"] = "Бульдозерик-Гордунни",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[313148] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[21562] = {
					["type"] = "BUFF",
					["source"] = "Tomsigg",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[298841] = {
					["type"] = "BUFF",
					["source"] = "Zeratius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[164815] = {
					["type"] = "DEBUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[246152] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263583] = {
					["source"] = "Taskmaster Askari",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134012,
				},
				[290467] = {
					["type"] = "BUFF",
					["source"] = "Bloodybella-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[33763] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[270058] = {
					["type"] = "BUFF",
					["source"] = "Edrington",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[118345] = {
					["source"] = "Primal Earth Elemental",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 61056,
				},
				[108853] = {
					["source"] = "Otarion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[295378] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[202164] = {
					["type"] = "BUFF",
					["source"] = "Recklust",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[8004] = {
					["encounterID"] = 2106,
					["source"] = "Fabioso",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[2983] = {
					["type"] = "BUFF",
					["source"] = "Alleyèzonme-Ravencrest",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[264689] = {
					["type"] = "DEBUFF",
					["source"] = "Durozar-TheMaelstrom",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[314565] = {
					["type"] = "DEBUFF",
					["source"] = "Blood of the Corruptor",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 161244,
				},
				[268905] = {
					["type"] = "BUFF",
					["source"] = "Lpd-Pozzodell'Eternità",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[31661] = {
					["source"] = "Otarion",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[190784] = {
					["source"] = "Skanor",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[81262] = {
					["type"] = "BUFF",
					["source"] = "Efflorescence",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 47649,
				},
				[88423] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[51490] = {
					["source"] = "Fabioso",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[203277] = {
					["type"] = "BUFF",
					["source"] = "Bragdetned-Frostmane",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[224001] = {
					["type"] = "BUFF",
					["source"] = "Zeratius",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268712] = {
					["type"] = "BUFF",
					["source"] = "Unknown",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130653,
				},
				[102342] = {
					["source"] = "Feskmås",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[312915] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[183752] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[314308] = {
					["source"] = "Urg'roth, Breaker of Heroes",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161124,
				},
				[271784] = {
					["encounterID"] = 2105,
					["source"] = "Footbomb Hooligan",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 138369,
				},
				[204596] = {
					["source"] = "Dèvona",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 0,
				},
				[280602] = {
					["type"] = "BUFF",
					["source"] = "Mech Jockey",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 130488,
				},
				[314309] = {
					["source"] = "Urg'roth, Breaker of Heroes",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161124,
				},
				[118922] = {
					["type"] = "BUFF",
					["source"] = "Qsilver",
					["encounterID"] = 2105,
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[195901] = {
					["type"] = "DEBUFF",
					["source"] = "Savickas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[40120] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[23161] = {
					["type"] = "BUFF",
					["source"] = "Jbzd",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[212653] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[268856] = {
					["type"] = "BUFF",
					["source"] = "Dèvona",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[108446] = {
					["type"] = "BUFF",
					["source"] = "Rinnvazul",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 17252,
				},
				[314592] = {
					["source"] = "Mindrend Tentacle",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 161510,
				},
				[201754] = {
					["source"] = "Gara",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 88708,
				},
				[270657] = {
					["type"] = "BUFF",
					["source"] = "Otarion",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[257410] = {
					["type"] = "BUFF",
					["source"] = "Valkhala-Outland",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[210320] = {
					["type"] = "BUFF",
					["source"] = "Holybeef-Sylvanas",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
				[263262] = {
					["encounterID"] = 2105,
					["source"] = "Shalebiter",
					["event"] = "SPELL_CAST_SUCCESS",
					["npcID"] = 134005,
				},
				[72968] = {
					["type"] = "BUFF",
					["source"] = "Feskmås",
					["event"] = "SPELL_AURA_APPLIED",
					["npcID"] = 0,
				},
			},
			["saved_cvars"] = {
				["ShowClassColorInNameplate"] = "1",
				["nameplateOverlapV"] = "0.39999997615814",
				["ShowNamePlateLoseAggroFlash"] = "1",
				["nameplateShowEnemyMinus"] = "1",
				["nameplatePersonalShowAlways"] = "0",
				["nameplateMotionSpeed"] = "0.05",
				["nameplateSelfTopInset"] = "0.5",
				["nameplateShowFriendlyTotems"] = "0",
				["nameplateShowEnemyMinions"] = "1",
				["nameplateShowFriendlyPets"] = "0",
				["nameplateShowFriendlyNPCs"] = "1",
				["nameplateSelectedScale"] = "1.15",
				["nameplatePersonalShowInCombat"] = "0",
				["nameplatePersonalShowWithTarget"] = "0",
				["nameplateShowSelf"] = "0",
				["nameplateShowFriendlyMinions"] = "0",
				["nameplateResourceOnTarget"] = "0",
				["nameplateMotion"] = "0",
				["nameplateSelfAlpha"] = "0.75",
				["nameplateMinScale"] = "1",
				["nameplateMaxDistance"] = "100",
				["nameplateOtherTopInset"] = "0.085",
				["nameplateSelfScale"] = "1.0",
				["nameplateSelfBottomInset"] = "0.2",
				["NamePlateHorizontalScale"] = "1",
				["nameplateShowFriendlyGuardians"] = "0",
				["nameplateOccludedAlphaMult"] = "1",
				["nameplateShowAll"] = "1",
				["nameplatePersonalHideDelaySeconds"] = "0.2",
				["nameplateGlobalScale"] = "1.0",
				["NamePlateVerticalScale"] = "1",
			},
			["login_counter"] = 1090,
			["patch_version"] = 9,
			["aura_timer_text_size"] = 14,
			["number_region_first_run"] = true,
			["OptionsPanelDB"] = {
				["PlaterOptionsPanelFrame"] = {
					["scale"] = 1.200000047683716,
				},
			},
			["stacking_nameplates_enabled"] = false,
			["border_color"] = {
				nil, -- [1]
				nil, -- [2]
				nil, -- [3]
				0.8400000035762787, -- [4]
			},
			["auto_toggle_friendly_enabled"] = true,
		},
	},
}
