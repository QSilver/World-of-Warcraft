-- file generated automatically
local buildTimeTarget = 20190123023201
local waBuildTime = tonumber(WeakAuras.buildTime)

if waBuildTime and waBuildTime < buildTimeTarget then
  WeakAurasCompanion = nil
else
  local loadedFrame = CreateFrame("FRAME")
  loadedFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
  loadedFrame:SetScript("OnEvent", function()
    local count = WeakAuras.CountWagoUpdates()
    if count and count > 0 then
      WeakAuras.prettyPrint(WeakAuras.L["There are %i updates to your auras ready to be installed!"]:format(count))
    end
  end)
end