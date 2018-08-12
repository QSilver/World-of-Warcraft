
function Overachiever.SaveCache()
	Overachiever_Cache_CritAssets = Overachiever_Cache_CritAssets or {}
	local ver = GetAddOnMetadata("Overachiever", "Version")
	local build = select(2, GetBuildInfo())
	local versionData = { ver = ver, build = build }

	local lookupMeta, lookupMetaIncomplete = Overachiever.GetMetaCriteriaLookup(true)
	local lookupKill, lookupKillIncomplete = Overachiever.GetKillCriteriaLookup(true)
	if (not lookupMetaIncomplete) then  -- Don't save data to cache if lookup wasn't complete
		Overachiever_Cache_CritAssets.meta = lookupMeta
		if (Overachiever_Cache_CritAssets.meta_version and Overachiever_Cache_CritAssets.meta_version.build == "0") then
			-- Force rebuild next session. Doesn't just keep build at "0" (which would also force a rebuild) since the check above would be true every time,
			-- thus forcing a rebuild EVERY future session.
			Overachiever_Cache_CritAssets.meta_version = nil
		else
			Overachiever_Cache_CritAssets.meta_version = versionData
		end
	end
	if (not lookupKillIncomplete) then
		Overachiever_Cache_CritAssets.kill = lookupKill
		if (Overachiever_Cache_CritAssets.kill_version and Overachiever_Cache_CritAssets.kill_version.build == "0") then
			-- Force rebuild next session.
			Overachiever_Cache_CritAssets.kill_version = nil
		else
			Overachiever_Cache_CritAssets.kill_version = versionData
		end
	end
end

do
	--[[
	local function verCompatible(thisVer, cacheVer)
		return thisVer >= cacheVer -- Discard cache if it claims to be "from the future"
	end
	--]]

	function Overachiever.GetCache(name)
		if (Overachiever_Cache_CritAssets) then
			local tab = Overachiever_Cache_CritAssets[name]
			if (tab) then
				local ver = GetAddOnMetadata("Overachiever", "Version")
				local build = select(2, GetBuildInfo())
				local tabVersionData = Overachiever_Cache_CritAssets[name .. "_version"]
				--if (tabVersionData and tabVersionData.build == build and verCompatible(ver, tabVersionData.ver)) then
				if (tabVersionData and tabVersionData.build == build) then
					return tab
				elseif (Overachiever_Debug and tabVersionData) then
					Overachiever.chatprint("Ignoring "..name.." cache with old build. (WoW build: "..build..". Cache build: "..(tabVersionData.build or type(tabVersionData.build))..")")
				end
			end
		end
		return false
	end
end

if (Overachiever_Debug) then
	function Overachiever.InvalidateCache(name)
		if (Overachiever_Cache_CritAssets) then
			local tabVersionData = Overachiever_Cache_CritAssets[name .. "_version"]
			if (not tabVersionData) then
				Overachiever.chatprint("Cache for \"" .. name .. "\" not found.")
				return;
			end
			tabVersionData.build = "0"
			Overachiever.chatprint("Invalidated cache for \"" .. name .. "\".")
		else
			Overachiever.chatprint("Cache not found.")
		end
	end
end

--[[
/run Overachiever.InvalidateCache("meta")
/run Overachiever.InvalidateCache("kill")
/run Overachiever.GetKillCriteriaLookup(true)
--]]
