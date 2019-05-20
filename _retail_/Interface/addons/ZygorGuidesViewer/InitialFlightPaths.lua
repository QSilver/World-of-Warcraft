local function loadFlightPaths()
	if not ZGV.db.char.initialFlightPathsLoaded then
		local initialPaths = {
			["Human"] = {
				["Darnassus"] = true,
				["Goldshire"] = true,
				["Ironforge"] = true,
				["The Exodar"] = true,
				["Gol'Bolar Quarry"] = true,
				["Moonglade"] = true,
				["Lor'danel"] = true,
				["Dolanaar"] = true,
				["Azure Watch"] = true,
				["Kharanos"] = true,
				["Rut'theran Village"] = true,
				["Eastvale Logging Camp"] = true,
				["Stormwind"] = true,
			},
			["Dwarf"] = {
				["Darnassus"] = true,
				["Goldshire"] = true,
				["Ironforge"] = true,
				["The Exodar"] = true,
				["Gol'Bolar Quarry"] = true,
				["Moonglade"] = true,
				["Lor'danel"] = true,
				["Dolanaar"] = true,
				["Azure Watch"] = true,
				["Kharanos"] = true,
				["Rut'theran Village"] = true,
				["Eastvale Logging Camp"] = true,
				["Stormwind"] = true,
			},
			["NightElf"] = {
				["Darnassus"] = true,
				["The Exodar"] = true,
				["Moonglade"] = true,
				["Lor'danel"] = true,
				["Dolanaar"] = true,
				["Azure Watch"] = true,
				["Rut'theran Village"] = true,
			},
			["Gnome"] = {
				["Darnassus"] = true,
				["Goldshire"] = true,
				["Ironforge"] = true,
				["The Exodar"] = true,
				["Gol'Bolar Quarry"] = true,
				["Moonglade"] = true,
				["Lor'danel"] = true,
				["Dolanaar"] = true,
				["Azure Watch"] = true,
				["Kharanos"] = true,
				["Rut'theran Village"] = true,
				["Eastvale Logging Camp"] = true,
				["Stormwind"] = true,
			},
			["Draenei"] = {
				["Darnassus"] = true,
				["The Exodar"] = true,
				["Moonglade"] = true,
				["Lor'danel"] = true,
				["Dolanaar"] = true,
				["Azure Watch"] = true,
				["Rut'theran Village"] = true,
			},
			["Worgen"] = {
				["Darnassus"] = true,
				["The Exodar"] = true,
				["Moonglade"] = true,
				["Lor'danel"] = true,
				["Dolanaar"] = true,
				["Azure Watch"] = true,
				["Rut'theran Village"] = true,
			},
			["Orc"] = {
				["Orgrimmar"] = true,
				["Sen'jin Village"] = true,
				["Razor Hill"] = true,
				["Thunder Bluff"] = true,
				["Bloodhoof Village"] = true,
			},
			["Scourge"] = { -- Undead
				["Undercity"] = true,
				["The Bulwark"] = true,
				["Brill"] = true,
			},
			["Tauren"] = {
				["Orgrimmar"] = true,
				["Sen'jin Village"] = true,
				["Razor Hill"] = true,
				["Thunder Bluff"] = true,
				["Bloodhoof Village"] = true,
			},
			["Troll"] = {
				["Orgrimmar"] = true,
				["Sen'jin Village"] = true,
				["Razor Hill"] = true,
				["Thunder Bluff"] = true,
				["Bloodhoof Village"] = true,
			},
			["BloodElf"] = {
				["Silvermoon City"] = true,
				["Falconwing Square"] = true,
				["Fairbreeze Village"] = true,
			},
			["Goblin"] = {
				["Orgrimmar"] = true,
				["Sen'jin Village"] = true,
				["Razor Hill"] = true,
				["Thunder Bluff"] = true,
				["Bloodhoof Village"] = true,
			},
			-- Nothing set for Pandaren because they are a special case.
		}
		
		local classDisplayName, class, classID = UnitClass("player")
		local raceName, raceID = UnitRace("player")
		local englishFaction, localizedFaction = UnitFactionGroup("player")
		
		-- Special handling for Pandaren: They start neutral, and select a faction later.
		if raceID == "Pandaren" then
			if englishFaction == "Neutral" then
				-- Wait for player to select the Pandaren's faction.
				ZGV:DelayedRun(function()
					local englishFaction, localizedFaction = UnitFactionGroup("player")
					
					-- Assuming Pandaren start similar to Worgen and Goblins.
					if englishFaction == "Alliance" then
						initialPaths["Pandaren"]= {
							["Darnassus"] = true,
							["Goldshire"] = true,
							["Ironforge"] = true,
							["The Exodar"] = true,
							["Gol'Bolar Quarry"] = true,
							["Moonglade"] = true,
							["Lor'danel"] = true,
							["Dolanaar"] = true,
							["Azure Watch"] = true,
							["Kharanos"] = true,
							["Rut'theran Village"] = true,
							["Eastvale Logging Camp"] = true,
							["Stormwind"] = true,
						}
					elseif englishFaction == "Horde" then
						initialPaths["Pandaren"] = {
							["Orgrimmar"] = true,
							["Sen'jin Village"] = true,
							["Razor Hill"] = true,
							["Thunder Bluff"] = true,
							["Bloodhoof Village"] = true,
							["Undercity"] = true,
							["The Bulwark"] = true,
							["Brill"] = true,
						}
					else
						-- TODO: This actually happens, figure out the proper way to handle this. ~~Jeremiah
						--error("Setting up initial flight points for Pandaren failed, please report to dev team (InitialFlightPaths.lua). (faction: "..englishFaction..")")
					end
				end, "NEUTRAL_FACTION_SELECT_RESULT")
			elseif englishFaction == "Alliance" then
				initialPaths["Pandaren"] = {
					["Darnassus"] = true,
					["Goldshire"] = true,
					["Ironforge"] = true,
					["The Exodar"] = true,
					["Gol'Bolar Quarry"] = true,
					["Moonglade"] = true,
					["Lor'danel"] = true,
					["Dolanaar"] = true,
					["Azure Watch"] = true,
					["Kharanos"] = true,
					["Rut'theran Village"] = true,
					["Eastvale Logging Camp"] = true,
					["Stormwind"] = true,
				}
			elseif englishFaction == "Horde" then
				initialPaths["Pandaren"] = {
					["Orgrimmar"] = true,
					["Sen'jin Village"] = true,
					["Razor Hill"] = true,
					["Thunder Bluff"] = true,
					["Bloodhoof Village"] = true,
					["Undercity"] = true,
					["The Bulwark"] = true,
					["Brill"] = true,
				}
			end
		end
		
		if class == "DEATHKNIGHT" then
			-- Death knights have their own starting experience
			-- Currently assuming Death Knights start similar to pandaren ~~ Jeremiah
			if englishFaction == "Alliance" then
				initialPaths[raceID] = {
					["Darnassus"] = true,
					["Goldshire"] = true,
					["Ironforge"] = true,
					["The Exodar"] = true,
					["Gol'Bolar Quarry"] = true,
					["Moonglade"] = true,
					["Lor'danel"] = true,
					["Dolanaar"] = true,
					["Azure Watch"] = true,
					["Kharanos"] = true,
					["Rut'theran Village"] = true,
					["Eastvale Logging Camp"] = true,
					["Stormwind"] = true,
				}
			elseif englishFaction == "Horde" then
				initialPaths[raceID] = {
					["Orgrimmar"] = true,
					["Sen'jin Village"] = true,
					["Razor Hill"] = true,
					["Thunder Bluff"] = true,
					["Bloodhoof Village"] = true,
					["Undercity"] = true,
					["The Bulwark"] = true,
					["Brill"] = true,
				}
			end
		end

		if initialPaths[raceID] then
			for i,v in pairs(initialPaths[raceID]) do
				ZGV.db.char.taxis[i] = true
			end
			ZGV.db.char.initialFlightPathsLoaded = true
		else
			ZGV:Debug("Missing initial flight paths for race: "..raceID)
		end

		initialPaths = nil
	end
end

tinsert(ZGV.startups, {"InitialFlightPaths loading",loadFlightPaths})
