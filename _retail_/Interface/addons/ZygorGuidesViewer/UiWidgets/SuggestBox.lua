-- rename to SuggestBox?

-- SimpleListFrame
-- Because all I needed was a simple list . . .

local ZGV = ZygorGuidesViewer
local ui = ZGV.UI
local SkinData = ui.SkinData

local CHAIN = ZGV.ChainCall
--Spoo(nil, nil, ZGV)

tinsert(ZGV.startups,function(self)
	-- Nothing yet.
end)

local SuggestBox = {
}

-- Note that this table is sparse - the # operator won't work.
--SuggestBox.itemList = {}
--SuggestBox.lastIndex = 1

-- "SIMPLELISTFRME is not a valid ui type."
-- Wait, what? We're hacking things into all caps? Sigh.
ZGV.UI:RegisterWidget("SuggestBox",SuggestBox)

function SuggestBox:New()
	SkinData = ZGV.CurrentSkinStyle.SkinData
	self.itemList = {}
	self.lastIndex = 1
	self.button =  CHAIN(ui:Create("Button",Zygor_Mail_Sender))
		:SetSize(15,15)
		:SetFrameStrata("HIGH")
		:SetFrameLevel(1)
		:SetClampedToScreen(true)
		:SetText("")
		:SetScript("OnClick",function()
		--Spoo(nil, nil, self)
			if self.frame:IsVisible() then
				self.button:Show()
				self.frame:Hide()
			else
				if (next(self.itemList)) then -- don't show dropdown if list is empty
					self.frame:Show()
				end
			end
		end)
		:Show()
	.__END
	
	self.frame =  CHAIN(ui:Create("Frame",self.button))
		:SetSize(50,10)
		:SetFrameStrata("HIGH")
		:SetFrameLevel(1)
		:SetClampedToScreen(true)
		:Hide()
	.__END	
	
	for k, v in pairs(SuggestBox) do
		self.frame[k]=v
	end
	
	return self.frame
end

-- To avoid confusion with existing Hide and Show functions.
function SuggestBox:HideAll()
	self.frame:Hide()
	self.button:Hide()
end

function SuggestBox:HideFrame()
	self.frame:Hide()
end

function SuggestBox:ShowAll()
	self.frame:Show()
	self.button:Show()
end

function SuggestBox:IsShown()
	return self.button:IsShown()
end

function SuggestBox:ClearButtonPoint()
	self.button:ClearPoint()
end

function SuggestBox:SetButtonPoint(...)
	self.button:SetPoint(...)
end


function SuggestBox:arrangeItems()
	local position = 0
	--Spoo(nil, nil, self.itemList)
	for index, item in pairs(self.itemList) do
		item.text:ClearAllPoints()
		item.text:SetPoint("TOPLEFT",self.frame,"TOPLEFT",2,-position*12-2)
		position = position + 1
	end
end

-- SuggestBox[addTextItem](self, text)
function SuggestBox:addTextItem(text, OnClickCallback)
	assert(OnClickCallback~=nil)
	local myCallback = OnClickCallback
	local font = CHAIN(self:CreateFontString("SuggestBoxFontString", nil, self))
		:SetFont(ZGV.Font,12)
		:SetText(text)
		:SetPoint("TOPLEFT",self.frame,"TOPLEFT")
		:Show()
	.__END
	
	local clickBox = CHAIN(CreateFrame("Frame", font, self))
		:SetPoint("TOPLEFT",font,"TOPLEFT")
		:SetPoint("BOTTOMRIGHT",font,"BOTTOMRIGHT")
		:SetScript("OnMouseUp",function(...)
			myCallback(...)
		end)
	.__END
	
	clickBox.clickCallback = OnClickCallback
	return font
end

function SuggestBox:addItem(item, OnClickCallback)
	--Spoo(nil, nil, self)
	assert(item, "Syntax: addItem(item)")
	assert(type(self.lastIndex)=="number")
	self.itemList[self.lastIndex+1]={}
	self.itemList[self.lastIndex+1].item=item
	
	self.itemList[self.lastIndex+1].text=self:addTextItem(item, OnClickCallback)
	self:arrangeItems()
	self.lastIndex = self.lastIndex + 1
	return self.lastIndex-1
end

function SuggestBox:removeItem(index)
	assert(index, "Syntax: removeItem(index)")
	assert(index > 0, "Index must be greather than 0.")
	assert(self.itemList[index], "Index " .. index .. " not found.")
	
	self.itemList[index].text:Hide()
	self.itemList[index].text = nil
	self.itemList[index] = nil
end

function SuggestBox:removeAllItems()
	for index, item in pairs(self.itemList) do
		self:removeItem(index)
	end
end

-- Yes, totally borrowing from the Java Swing syntax (except calling it a callback instead of a listener).
-- (Should we call them listeners instead of callbacks?)
function SuggestBox:addClickCallback(callback)
	if not self.clickCallbacks then
		self.clickCallbacks={}
	end
	tinsert(self.clickCallbacks, callback)
end

ZGV.SuggestBox = SuggestBox
