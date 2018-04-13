--Loot-SellItemsPopup.lua
-- The amount of code in the popup was getting to be large, too large to be a
-- part of the normal Loot.lua.

local ZGV = ZygorGuidesViewer
if not ZGV then return end
Loot = ZGV.Loot 
local CHAIN = ZGV.ChainCall

Loot.SellItemsPopup = {}
local SIP = Loot.SellItemsPopup
SIP.availableFrames={}
SIP.items={}
SIP.itemCount=0
SIP.textSize = 7
SIP.textSpacing = 5
SIP.verticalAdjust=72 -- humm, off by about 70 with 24 items? Calculated I'm off by about 3 per row.
SIP.fudgePerRow=6 -- Theoretically not needed, but my equation for dialog box size insists on being off.
SIP.textAdjust=20
SIP.horizontalAdjust=24
SIP.minWidth=300
SIP.longestLine = SIP.minWidth

tinsert(ZGV.startups,{"Loot-SellItemsPopup startup",function(self) SIP:InitDialog() end})

local Events = CreateFrame("Frame")
Events:RegisterEvent("MERCHANT_CLOSED")

local function OnEvent(self, event)
	if event == "MERCHANT_CLOSED" then
		SIP:Hide()
	else
		error("No handler made for event: "..event..". Create a new handler in Loot-SellItemsPopup.lua.")
	end
end

Events:SetScript("OnEvent", OnEvent)

local SkinData = ZGV.UI.SkinData

function SIP:SetItems(unusable)
	self:CreateUIItems(unusable)
	self:SetHooks()
end
	
function SIP:CreateUIItems(unusable)
	local SIP = Loot.SellItemsPopup
	assert(SIP.itemCount)
	
	local removeTable = {} -- pairs(SIP.items) and table.remove(SIP.items, i) interfere with each other
	if SIP.items and SIP.itemCount > 0 then -- hide any existing items
		for i,v in pairs(SIP.items) do
			if type(v)=="table" and v.Hide then
				v:Hide()
				v.listRemove:Hide()
				table.insert(availableFrames,SIP.items[i])
				table.insert(removeTable,i)
				SIP.itemCount = SIP.itemCount - 1
			end
		end
	end

	for i, v in pairs(removeTable) do
		table.remove(SIP.items, i)
	end
	
	SIP.items={}
	SIP.itemCount=0
	
	if availableFrames == nil then availableFrames = {} end
	
	local numAvailableFrames=0
	for i,v in pairs(availableFrames) do
		numAvailableFrames=numAvailableFrames+1
	end
	
	SIP.longestLine = SIP.minWidth
	for i,inventoryItem in pairs(unusable) do
		if numAvailableFrames > 0 then -- recycle the frame
			recycledItem = table.remove(availableFrames)
			numAvailableFrames = numAvailableFrames - 1
			assert(recycledItem ~= nil)
			SIP.items[i] = CHAIN(recycledItem)
				:SetHeight(SIP.textSize)
				:SetFont(ZGV.Font,SIP.textSize)
				:SetBackdrop(SkinData("Backdrop"))
				--:SetBackdropColor(1,0,0,0.5)
				:SetBackdropColor(0,0,0,0)
				--:SetBackdropColor(unpack(SkinData("BackdropColor")))
				:SetBackdropBorderColor(nil)
				:SetFrameStrata("DIALOG")
				:Hide()
				--:Show()
			.__END
			SIP.items[i].ID = inventoryItem.ID

			SIP.items[i].listRemove:SetScript("OnClick", function(self)
				IM:addKeptItem(unusable[i].ID,unusable[i])
				SIP:Hide()
				SIP:CreateUIItems(IM:GetUnusableItems())
				SIP:Show()
			end)
		else
			SIP.items[i]=CHAIN(ZGV.UI:Create("HyperEditBox",nil,SIP.Popup.frame))
				:SetHeight(SIP.textSize)
				:SetFont(ZGV.Font,SIP.textSize)
				:SetBackdrop(SkinData("Backdrop"))
				:SetBackdropColor(0,0,0,0)
				--:SetBackdropColor(unpack(SkinData("BackdropColor")))
				:SetBackdropBorderColor(nil)
				:SetFrameStrata("DIALOG")
				:Hide()
			.__END

			SIP.items[i].ID = inventoryItem.ID
			
			SIP.items[i].listRemove = {}
			SIP.items[i].listRemove=CHAIN(CreateFrame("Button",nil,self.Popup.frame))
				:SetHeight(8)
				:SetWidth(8)
				:SetPoint("LEFT",SIP.items[i],"RIGHT",0,0)
				:SetFrameStrata("DIALOG")
				:Hide()
			.__END
			
			SIP.items[i].listRemoveIcon = {}
			SIP.items[i].listRemoveIcon=CHAIN(SIP.items[i].listRemove:CreateTexture())
				:SetPoint("CENTER",SIP.items[i].listRemove,"CENTER",0,0)
				:SetSize(7,7)
				:SetTexture(ZGV.DIR.."\\Skins\\ban")
				--:SetTexCoord(0.125,0.25,0,0.5)
			.__END
			
			SIP.items[i].listRemove:SetScript("OnClick", function(self)
				IM:addKeptItem(unusable[i].ID,unusable[i])
				SIP:Hide()
				SIP:CreateUIItems(IM:GetUnusableItems())
				SIP:Show()
			end)
		end
		
		if not SIP.text1 then 
			SIP.text1=CHAIN(SIP.Popup:CreateFontString(nil,"ARTWORK"))
				:SetPoint("TOP",SIP.Popup,"TOP", 0, -4)
				--:SetWidth(MAXWIDTH)
				:SetFont(ZGV.FontBold,16)
				:SetText("Zygor Inventory Manager")
			.__END		
			
			SIP.text2=CHAIN(SIP.Popup:CreateFontString(nil,"ARTWORK"))
				:SetPoint("TOP",SIP.Popup,"TOP", 0, -26)
				--:SetWidth(MAXWIDTH)
				:SetFont(ZGV.Font,12)
				:SetText("The following items can be sold:")
			.__END
		end

		if SIP.items[i]:GetWidth() > SIP.longestLine then
			SIP.longestLine = SIP.items[i]:GetWidth()
		end
		SIP.items[i]:ClearAllPoints()
		newPoint = {self.Popup:GetPoint()}
		newPoint[1]="TOPLEFT"
		newPoint[2]=SIP.Popup
		newPoint[3]="TOPLEFT"
		newPoint[4]=newPoint[4]+2
		newPoint[5]=newPoint[5]-SIP.itemCount*(SIP.textSize+SIP.textSpacing)+SIP.textAdjust
		SIP.items[i]:SetPoint(unpack(newPoint)) --Move the text to the top
		SIP.items[i]:SetText(unusable[i].itemLink)
		SIP.itemCount=SIP.itemCount+1
		
	end
	
	SIP.Popup:SetHeight(SIP.itemCount*(SIP.textSize+SIP.textSpacing+SIP.fudgePerRow)+SIP.verticalAdjust)
	
	if not oldHide then
		oldHide = SIP.Popup.Hide
		SIP.Popup.Hide = function(...)
			oldHide(...)
			SIP:Hide()
		end
	end
	
	if not oldShow then
		oldShow = SIP.Popup.SavedShow
		SIP.Popup.SavedShow = function(...)
			oldShow(...)
			SIP:InnerShow()
		end
	end
end


function SIP:Show()
	if SIP.itemCount==0 then return end -- No need to display dialog if there's nothing to sell.
	local SIP = Loot.SellItemsPopup
	SIP.InitDialog()
	SIP.Popup:Show()
end

function SIP:InnerShow()
	local SIP = Loot.SellItemsPopup
	assert(SIP.items)
	for i,v in pairs(SIP.items) do
		SIP.items[i]:Show()
		SIP.items[i].listRemove:Show()
	end

end


function SIP:Hide()
	local SIP = Loot.SellItemsPopup
	for i,v in pairs(SIP.items) do
		SIP.items[i]:Hide()
		SIP.items[i].listRemove:Hide()
	end
	
	if SIP.Popup:IsShown() then
		SIP.Popup:Hide()
	end
end
	
function SIP:InitDialog()
	local SIP = Loot.SellItemsPopup
	if SIP.Popup then return end
	-- Don't add to notification center. It's not relevant outside of talking to the vendor.
	SIP.Popup = ZGV.PopupHandler:NewPopup("ZygorSellPopup","loot")
	SIP.Popup.noMinimize = 1
	SIP.Popup.logo:Hide() --No logo
	SIP.Popup.text:SetPoint(self.Popup.logo:GetPoint(1)) --Move the text to the top
	--SIP.Popup:SetText("Zygor Inventory Manager","The following items can be safely sold:")
	SIP.Popup:SetText("","")

	function SIP.Popup:OnDecline()
		local SIP = Loot.SellItemsPopup
		SIP:Hide()
	end
	
	function SIP.Popup:OnAccept()
		-- Destroy trash.
		local unusable = IM:GetUnusableItems()
		local totalprice=0
		local numItems=0
		local bag, slot
		for i, v in pairs(unusable) do
			bag = v.bagID
			slot = v.bagSlotID
			local item=GetContainerItemID(bag,slot)
			if item  then
				local name, link, quality=GetItemInfo(item)
				local price=select(11,GetItemInfo(item))
				if price > 0 then
					local count=select(2,GetContainerItemInfo(bag,slot))
					UseContainerItem(bag,slot) -- Will use an item and since vendor is open, will sell the item.
					totalprice=totalprice+price*count
				end
			end
		end
	end

end

function SIP:SetHooks()
	local SIP = Loot.SellItemsPopup
	self.Popup.AdjustSize = function(self)
		self:SetHeight(SIP.itemCount*(SIP.textSize+SIP.textSpacing+SIP.fudgePerRow)+SIP.verticalAdjust)
		self:SetWidth(SIP.longestLine+SIP.horizontalAdjust)
	end
	
end
