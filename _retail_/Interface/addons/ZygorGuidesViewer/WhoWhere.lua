local name,ZGV=...

local WW={}
ZGV.WhoWhere=WW

local Astrolabe = DongleStub("Astrolabe-ZGV")

function WW:CreateFrame()
	if self.F then return end
	self.F=CreateFrame("FRAME")
	self.F:Show()
end

local function CalcStep()
	if WW.thread then
		coroutine.resume(WW.thread)
		if coroutine.status(WW.thread)=="dead" then
			WW.thread=nil
			WW.F:SetScript("OnUpdate",nil)
		end
	end
end


local function CalcThread()
	local typ,m,f,x,y=WW.typ,WW.m,WW.f,WW.x,WW.y
	if not m then m,f,x,y = Astrolabe:GetCurrentPlayerPosition() end
	local parse=ZGV.NPCData.parseNPC
	local mindist,minid,minm,minf,minx,miny=999999
	local count=0
	for id,data in ZGV.NPCData:iterate(typ) do
		local npc=parse(data)
		if npc.m>0 then
			npc.x=npc.x*0.01
			npc.y=npc.y*0.01
			if npc.m==321 and npc.f == nil then npc.f = 1 end -- Orgrimmar fix
			-- Don't try to fix it by setting it to "npc.f or 1", that breaks Stormwind. ~~ Jeremiah
			local dist = Astrolabe:ComputeDistance(m,f,x,y,npc.m,npc.f or 0,npc.x,npc.y)
			if dist and dist<mindist then
				mindist=dist
				minid,minm,minf,minx,miny=tonumber(id),npc.m,npc.f,npc.x,npc.y
			end
		end
		count=count+1
		if count%100==0 then coroutine.yield() end
	end
	if minid then
		ZGV.Pointer:SetWaypoint(minm,minf,minx,miny,{title=ZGV.Localizers:GetTranslatedNPC(minid),arrow=true,findpath=true,type="manual"},true)
	end

end

function WW:FindNPC(typ,m,f,x,y)
	if typ == "I" or ZGV.db.profile.findastro or not ZGV.db.profile.pathfinding then
		WW:FindNPC_Astro(typ)
	else 
		WW:FindNPC_Rover(typ)
	end
end

function WW:FindNPC_Astro(typ,m,f,x,y)
	if not WW.F then WW:CreateFrame() end
	self.typ,self.m,self.f,self.x,self.y=typ,m,f,x,y

	self.F:SetScript("OnUpdate",CalcStep)
	self.thread = coroutine.create(CalcThread)
end

function WW:FindNPC_Rover(typ)
	local parse=ZGV.NPCData.parseNPC
	local allnpcdata = ZGV.NPCData.raw
	local foundnpcs = {}
	local npcid, npcdata, npcrawdata

	local npccounter = 1

	for id,data in ZGV.NPCData:iterate(typ) do
		temp = parse(data)
		foundnpcs[npccounter] = {m=temp.m, x=temp.x/100, y=temp.y/100, id=tonumber(id)}
		npccounter = npccounter + 1
	end

	b = foundnpcs[1]
	if not b then return false end

	local more_points = {}
	for i=1,#foundnpcs do
		local w=foundnpcs[i]
		more_points[#more_points+1]={m=w.m,f=w.f,x=w.x,y=w.y,title=w.title}
	end

	LibRover:FindPath(0,0,0,0, b.m,0,b.x,b.y, ZGV.Pointer.PathFoundHandler, {foundnpcs=foundnpcs, direct=not ZGV.db.profile.pathfinding, multiple_ends=more_points })
	LibRover:UpdateNow(true)
end

--------------------------------------------------------------------------------

local function CalcMailboxThread()
	local typ,m,f,x,y=WW.typ,WW.m,WW.f,WW.x,WW.y
	if not m then m,f,x,y = Astrolabe:GetCurrentPlayerPosition() end
	local parse=ZGV.MailboxData.parseMailbox
	local mindist,minid,minm,minf,minx,miny=999999
	local count=0
	for id,data in ZGV.MailboxData:iterate(typ) do
		local mailbox=parse(data)
		if mailbox.m>0 then
			mailbox.x=mailbox.x*0.01
			mailbox.y=mailbox.y*0.01
			local dist = Astrolabe:ComputeDistance(m,f,x,y,mailbox.m,mailbox.f or 0,mailbox.x,mailbox.y)
			if dist and dist<mindist then
				mindist=dist
				minid,minm,minf,minx,miny=tonumber(id),mailbox.m,mailbox.f,mailbox.x,mailbox.y
			end
		end
		count=count+1
		if count%100==0 then coroutine.yield() end
	end
	if minid then
		ZGV.Pointer:SetWaypoint(minm,minf,minx,miny,{title="Mailbox",arrow=true,findpath=true,type="manual"},true)
	end

end



function WW:FindMailbox(typ,m,f,x,y)
	if not WW.F then WW:CreateFrame() end
	self.typ,self.m,self.f,self.x,self.y=typ,m,f,x,y

	self.typ="M"
	self.F:SetScript("OnUpdate",CalcStep)
	self.thread = coroutine.create(CalcMailboxThread)
end


