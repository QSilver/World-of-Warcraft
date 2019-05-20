local ZGV = ZygorGuidesViewer
if not ZGV then return end

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local ui = ZGV.UI

local PetBattle = {}
ZGV.PetBattle = PetBattle

PetBattle.PetJournal = {
	Icons = {},
	AvailGuides = {},
	}

local pet=PetBattle

local _G,assert,table,string,tinsert,tonumber,tostring,type,ipairs,pairs,setmetatable,math,wipe = _G,assert,table,string,tinsert,tonumber,tostring,type,ipairs,pairs,setmetatable,math,wipe

tinsert(ZGV.startups,{"PetBattle hooks",function(self)
	PetBattle:PetRegEvents()
	hooksecurefunc("TogglePetJournal",function() PetBattle.PetJournal.JournalIconSetup() end)
	-- ZGV:ScheduleTimer(function() PetBattle.PetJournal.JournalIconSetup() end, 2.0)
end})

PetBattle.petQuality = {
	[1]="|cff6D6968Poor",
	[2]="|cffFFFFFFCommon",
	[3]="|cff00FF00Uncommon",
	[4]="|cff0000FFRare",
	[5]="|cff893BFFEpic",
	[6]="|cffF88017Legendary"
}

--Damage type and pet type.
PetBattle.petType = {
	[1]="Humanoid",
	[2]="Dragonkin",
	[3]="Flying",
	[4]="Undead",
	[5]="Critter",
	[6]="Magic",
	[7]="Elemental",
	[8]="Beast",
	[9]="Aquatic",
	[10]="Mechanical"
}
--I know these could be done without listing out the 1-10, just easier to see which number corresponds to each type.

PetBattle.AbilityModifer = {
	--Human does 50% more damage to Dragonkin and 33% less to Beast
	[1]= { strong=2, weak=8, },
	[2]= { strong=6,  weak=4, },
	[3]= { strong=9, weak=2, },
	[4]= { strong=1, weak=9, },
	[5]= { strong=4, weak=1, },
	[6]= { strong=3, weak=10, },
	[7]= { strong=10, weak=5, },
	[8]= { strong=5, weak=3, },
	[9]= { strong=7, weak=6, },
	[10]= { strong=8, weak=7, },
}

PetBattle.TypeEffects = {
	--Human takes 50% more damage from Undead and 33% less damage from Critter
	[1]= { strong=4, weak=5, },
	[2]= { strong=1,  weak=3, },
	[3]= { strong=6, weak=8, },
	[4]= { strong=5, weak=2, },
	[5]= { strong=8, weak=7, },
	[6]= { strong=2, weak=9, },
	[7]= { strong=9, weak=10, },
	[8]= { strong=10, weak=1, },
	[9]= { strong=3, weak=4, },
	[10]= { strong=7, weak=6, },
}

--TODO should probably be localized
PetBattle.TypePassive = {
	[1] = "Recovers 5% life with every attack.",
	[2] = "Will deal 50% additional damage on the next round after bringing a target's health below 25%.",
	[3] = "Has 50% increased speed while above 50% health.",
	[4] = "Will return to life for one round after being killed.",
	[5] = "Breaks out of crowd control more quickly.",
	[6] = "Cannot take more than 50% of their life in 1 hit.",
	[7] = "Ignores all weather effects.",
	[8] = "Has 25% increased damage while below 50% health.",
	[9] = "The damge dealt by damage over time abilities is decreased by 25%.",
	[10] = "Comes back to life once per battle with 25% life.",
}

function PetBattle:GetAbilityText(id,maxHp,power,speed)
	FloatingPetBattleAbility_Show(id,maxHp,power,speed)
	FloatingPetBattleAbilityTooltip:Hide()
	return FloatingPetBattleAbilityTooltip.Description:GetText()
end

function PetBattle_MainFrameUpdateRound(round)
	local mainframe=PetBattle.BattleFrame.Main

	local enemyPet=C_PetBattles.GetActivePet(2)
	local allyPet=C_PetBattles.GetActivePet(1)

	if round then
		mainframe.Round.label:SetText(round+1)
	end

	local power=C_PetBattles.GetPower(2,enemyPet)
	local speed=C_PetBattles.GetSpeed(2,enemyPet)
	local maxHp=C_PetBattles.GetMaxHealth(2,enemyPet)

	mainframe.Speed.label:SetText(speed)
	mainframe.Power.label:SetText(power)

	-- Update the cooldown of enemy abilities
	C_PetBattles.GetAbilityState(owner,petindex,ability)
	for i=1, NUM_BATTLE_PET_ABILITIES do
		local ability=_G['ZygorPetBattleFrame_MainAbility'..i]

		local available,cdleft,_=C_PetBattles.GetAbilityState(2,enemyPet,i)
		local id, name, icon, maxCooldown, description, numTurns, abilityPetType, noStrongWeakHints = C_PetBattles.GetAbilityInfo(2, enemyPet, i)
		if id then
			local link = GetBattlePetAbilityHyperlink(id,maxHp,power,speed)

			if available then
				ability:SetText(link.."|cffff0000".." is available")
			elseif not available and cdleft>0 then
				ability:SetText(link.."|cff00ff00".." is on cooldown for "..cdleft.." turns")
			end
		end
	end
end

function PetBattle_EnemyFrameUpdateRound(round)
	local enemyframe=PetBattle.BattleFrame.Enemy

	if round then
		enemyframe.Round.label:SetText(round+1)
	end

	for i=1, NUM_BATTLE_PETS_IN_BATTLE do
		local name,creature=C_PetBattles.GetName(2,i)

		if name then
			local enemy=enemyframe[i]

			local health=C_PetBattles.GetHealth(2,i)

			enemy.Health.label:SetText(C_PetBattles.GetHealth(2,i))
		end
	end
end

local function GetExp(pet)
	local ally=PetBattle.BattleFrame.Ally[pet]

	local level=C_PetBattles.GetLevel(1,pet)
	local health=C_PetBattles.GetHealth(1,pet)
	local text=" "

	if level==25 then
		text="Max level already"
	elseif health==0 then
		text="|cffff0000Pet is dead"
	elseif ally.BeenActive then
		text="|cff00ff00Will get experience"
	else
		text="|cffff0000Will not get experience"
	end

	return text
end

function PetBattle_AllyFrameUpdateRound(round)
	local allyframe=PetBattle.BattleFrame.Ally

	if round then
		allyframe.Round.label:SetText(round+1)
	end

	for j=1, NUM_BATTLE_PETS_IN_BATTLE do
		local name,creature=C_PetBattles.GetName(1,j)

		local allyPet=j

		if name then
			local ally=allyframe[j]

			local health=C_PetBattles.GetHealth(1,allyPet)
			local power=C_PetBattles.GetPower(1,allyPet)
			local speed=C_PetBattles.GetSpeed(1,allyPet)
			local maxHp=C_PetBattles.GetMaxHealth(1,allyPet)
			local activePet=C_PetBattles.GetActivePet(1)

			if activePet==j then ally.BeenActive=true end

			ally.Health.label:SetText(health)
			ally.InBattle.label:SetText(GetExp(j))

			for i=1, NUM_BATTLE_PET_ABILITIES do
				local ability=_G['ZygorPetBattleFrame_Ally'..j..'Ability'..i]
				ability:SetText(" ") -- get rid of default

				local available,cdleft,_=C_PetBattles.GetAbilityState(1,allyPet,i)
				local id, name, icon, maxCooldown, description, numTurns, abilityPetType, noStrongWeakHints = C_PetBattles.GetAbilityInfo(1, allyPet, i)
				if id then
					local link = GetBattlePetAbilityHyperlink(id,maxHp,power,speed)
					local icon=icon:gsub("\ ","\\"):gsub(" ",""):gsub(".blp",":0:0:0:0|t")

					if available then
						ability:SetText("|T"..icon.." "..link.."|cff00ff00".." is available")
					elseif cdleft>0 then
						ability:SetText("|T"..icon.." "..link.."|cffff0000".." is on cooldown for "..cdleft.." turns")
					end
				else
					--Pet doesn't have this many abilities yet
					ability:SetText(" ")
				end
			end
		end
	end
end

function PetBattle:MainFrameUpdate()
	local p=self
	local pet=self.BattleFrame.Main

	local enemyPet=C_PetBattles.GetActivePet(2)
	local allyPet=C_PetBattles.GetActivePet(1)

	local allySpeed=C_PetBattles.GetSpeed(1,allyPet)

	local petTypeNum=C_PetBattles.GetPetType(2,enemyPet)
	local power=C_PetBattles.GetPower(2,enemyPet)
	local speed=C_PetBattles.GetSpeed(2,enemyPet)
	local name,creature=C_PetBattles.GetName(2,enemyPet)
	local level=C_PetBattles.GetLevel(2,enemyPet)
	local quality=C_PetBattles.GetBreedQuality(2,enemyPet)
	local maxHp=C_PetBattles.GetMaxHealth(2,enemyPet)
	local bigIcon=C_PetBattles.GetIcon(2,enemyPet):gsub("\ ","\\"):gsub(" ",""):gsub(".blp",":0:0:0:0|t") --always their pets.


	local ptype=p.petType
	local effects=p.TypeEffects[petTypeNum]

	pet.Name.label:SetText(name)
	pet.Level.label:SetText(level)
	pet.Quality.label:SetText(p.petQuality[quality])
	pet.Power.label:SetText(power)
	pet.Speed.label:SetText(speed)
	local speedAdv=allySpeed>speed and "|cff00ff00Ally" or "|cfff00000Enemy"
	pet.SpeedAdv.label:SetText(speedAdv)
	pet.Breed.label:SetText(ptype[petTypeNum])
	pet.Modifers.label:SetText("|cffffffffTakes extra damage from "..ptype[effects.strong]..".\nTakes reduced damage from "..ptype[effects.weak]..".|r")
	pet.Passive.label:SetText(p.TypePassive[petTypeNum]) pet.Passive:SetHeight(pet.Passive.label:GetStringHeight())
	pet.Icon:SetText("|T"..bigIcon)

	local enemyAbilities = {}

	local abilitylist=pet.Abilities
	abilitylist:SetHeight(12)--Gets reset below.

	for i=1, NUM_BATTLE_PET_ABILITIES do
		local ability=_G['ZygorPetBattleFrame_MainAbility'..i]
		local abilitylabel=_G['ZygorPetBattleFrame_MainAbility'..i..'Label']
		local abilityicon=_G['ZygorPetBattleFrame_MainAbilIcon'..i]
		local userTypeNum=C_PetBattles.GetPetType(1,allyPet)

		local available,cdleft,_=C_PetBattles.GetAbilityState(2,enemyPet,i)
		local id, name, icon, maxCooldown, description, numTurns, abilityPetType, noStrongWeakHints = C_PetBattles.GetAbilityInfo(2, enemyPet, i)
		if id then
			local text = PetBattle:GetAbilityText(id,maxHp,power,speed)
			local link = GetBattlePetAbilityHyperlink(id,maxHp,power,speed)

			icon=icon:gsub("\ ","\\"):gsub(" ",""):gsub(".blp",":0:0:0:0|t")

			if available then
				ability:SetText(link.."|cffff0000".." is available")
			elseif cdleft>0 then
				ability:SetText(link.."|cff00ff00".." is on cooldown for "..cdleft.." turns")
			else
				--Default at the start of a match.
				ability:SetText(link.."|cffff0000".." is available")
			end

			local modifers = p.AbilityModifer[abilityPetType]
			local strongcolor="|cffffffff"
			local weakcolor="|cffffffff"
			if modifers.strong==userTypeNum then strongcolor="|cffff0000" elseif modifers.weak==userTypeNum then weakcolor="|cff00ff00" end
			local effect=strongcolor.."\nExtra damage to "..ptype[modifers.strong].."."..weakcolor.."\nReduced damage to "..ptype[modifers.weak]..".|r"

			abilitylabel:SetText("|cffFFE87C"..text.."|r"..effect)

			abilityicon:SetText("|T"..icon)

			ability:SetScript("OnHyperlinkClick",function()
				FloatingPetBattleAbilityTooltip:Hide()--Hide any old ones
				FloatingPetBattleAbility_Show(id,maxHp,power,speed)
				FloatingPetBattleAbilityTooltip.zclicked=true
				end)

			ability:SetScript("OnHyperlinkEnter",function()
				if not FloatingPetBattleAbilityTooltip:IsVisible() then FloatingPetBattleAbilityTooltip.zclicked=false end -- If not visible at then it is not clicked.
				FloatingPetBattleAbility_Show(id,maxHp,power,speed)
				end)
			ability:SetScript("OnHyperlinkLeave",function() if not FloatingPetBattleAbilityTooltip.zclicked then FloatingPetBattleAbilityTooltip:Hide() end end)

			ability:SetHeight(12) abilitylabel:SetHeight(0) -- ability is only ever 1 line. Setting the fontstring height to 0 makes it set to the correct height
			abilitylist:SetHeight(abilitylist:GetHeight()+ abilitylabel:GetStringHeight()+ability:GetHeight()+3)

			local abil={ id=id,description=text,abiltype=abilityPetType,strong=modifers.strong,weak=modifers.weak }

			tinsert(enemyAbilities,abil)

		else
			--Pet doesn't have this many abilities yet
			ability:SetText(" ")
			abilitylabel:SetText(" ")
			abilityicon:SetText(" ")

			--abilitylist:SetHeight() -- Don't set any new height here since these line are invisible.
		end
	end

	local scores = PetBattle:ComparePets(petTypeNum,enemyAbilities,level,speed)
	PetBattle:UpdateSuggestedPets(scores,"Main")
	
	local bottomPoint
	if pet.Suggest3 then
		bottomPoint = pet.Suggest3:GetBottom()
	elseif pet.Suggest2 then
		bottomPoint = pet.Suggest2:GetBottom()
	else
		bottomPoint = pet.Suggest1:GetBottom()
	end
		
	--self.BattleFrame:SetHeight(pet.Close:GetTop() - pet.bottom:GetBottom() + 5)
	self.BattleFrame:SetHeight(pet.Close:GetTop() - bottomPoint + 10)
end

function PetBattle:EnemyFrameUpdate()
	local p=self
	local pet=self.BattleFrame.Enemy
	for j=1, NUM_BATTLE_PETS_IN_BATTLE do

		local enemyPet=j

		local petTypeNum=C_PetBattles.GetPetType(2,enemyPet)
		local power=C_PetBattles.GetPower(2,enemyPet)
		local health=C_PetBattles.GetHealth(2,enemyPet)
		local speed=C_PetBattles.GetSpeed(2,enemyPet)
		local name,creature=C_PetBattles.GetName(2,enemyPet)
		local level=C_PetBattles.GetLevel(2,enemyPet)
		local quality=C_PetBattles.GetBreedQuality(2,enemyPet)
		local maxHp=C_PetBattles.GetMaxHealth(2,enemyPet)
		local bigIcon=C_PetBattles.GetIcon(2,enemyPet):gsub("\ ","\\"):gsub(" ",""):gsub(".blp",":0:0:0:0|t") --always their pets.


		local pType=p.petType[petTypeNum]

		if name then

			pet[j].Name.label:SetText(name)
			pet[j].Level.label:SetText(level)
			pet[j].Health.label:SetText(health)
			pet[j].Quality.label:SetText(p.petQuality[quality])
			pet[j].Breed.label:SetText(pType)
			pet[j].Icon:SetText("|T"..bigIcon)

			local enemyAbilities = {}

			local abilitylist=pet[j].Abilities
			abilitylist:SetHeight(27)--2 lines + a space

			local ability=pet[j].Ability
			ability:SetText(" ") -- get rid of default

			for i=1, NUM_BATTLE_PET_ABILITIES do
				--local ability=_G['ZygorPetBattleFrame_Enemy'..j..'Ability1']

				local id, name, icon, maxCooldown, description, numTurns, abilityPetType, noStrongWeakHints = C_PetBattles.GetAbilityInfo(2, enemyPet, i)
				if id then
					local text = PetBattle:GetAbilityText(id,maxHp,power,speed)
					local link = GetBattlePetAbilityHyperlink(id,maxHp,power,speed)
					local icon=icon:gsub("\ ","\\"):gsub(" ",""):gsub(".blp",":0:0:0:0|t")

					if i~=1 then ability:SetText(ability:GetText().." " ) end

					ability:SetText(ability:GetText().." |T"..icon.." "..link)

					local modifers = p.AbilityModifer[abilityPetType]

					ability:SetScript("OnHyperlinkClick",function(self,link)
						FloatingPetBattleAbilityTooltip:Hide()--Hide any old ones

						local abilId,maxHp,powers,speeds=link:match("(%d+):(%d+):(%d+):(%d+)")
						abilId,maxHp,powers,speeds=tonumber(abilId),tonumber(maxHp),tonumber(powers),tonumber(speeds)
						FloatingPetBattleAbility_Show(abilId,maxHp,powers,speeds)

						FloatingPetBattleAbilityTooltip.zclicked=true
						end)

					ability:SetScript("OnHyperlinkEnter",function(self,link,...)
						if not FloatingPetBattleAbilityTooltip:IsVisible() then FloatingPetBattleAbilityTooltip.zclicked=false end -- If not visible at then it is not clicked.

						local abilId,maxHp,powers,speeds=link:match("(%d+):(%d+):(%d+):(%d+)")
						abilId,maxHp,powers,speeds=tonumber(abilId),tonumber(maxHp),tonumber(powers),tonumber(speeds)
						FloatingPetBattleAbility_Show(abilId,maxHp,powers,speeds)

						end)
					ability:SetScript("OnHyperlinkLeave",function() if not FloatingPetBattleAbilityTooltip.zclicked then FloatingPetBattleAbilityTooltip:Hide() end end)

					local abil={ id=id,description=text,abiltype=abilityPetType,strong=modifers.strong,weak=modifers.weak }

					tinsert(enemyAbilities,abil)

				else
					--Pet doesn't have this many abilities yet
					ability:SetText(ability:GetText().." ")
				end
			end

			local scores = PetBattle:ComparePets(petTypeNum,enemyAbilities,level,speed)
			PetBattle:UpdateSuggestedPets(scores,"Enemy"..j)
		else
			--no pet for this slot
			pet[j].Name:SetText(" ")
			pet[j].Icon:SetText(" ")
			pet[j].Level:SetText(" ")
			pet[j].Health:SetText(" ")
			pet[j].Quality:SetText(" ")
			pet[j].Breed:SetText(" ")
			pet[j].Abilities:SetText(" ")
			pet[j].Ability:SetText(" ")
			--pet[j].Ability1:SetText(" ")
			--pet[j].Ability2:SetText(" ")
			--pet[j].Ability3:SetText(" ")
			pet[j].Suggestions:SetText(" ")
			pet[j].Suggest1:SetText(" ")

			pet[j].Name.label:SetText(" ")
			pet[j].Level.label:SetText(" ")
			pet[j].Health.label:SetText(" ")
			pet[j].Quality.label:SetText(" ")
			pet[j].Breed.label:SetText(" ")
			pet[j].Suggest1.label:SetText(" ")
		end

	end
end

function PetBattle:AllyFrameUpdate()
	local p=self
	local pet=self.BattleFrame.Ally
	for j=1, NUM_BATTLE_PETS_IN_BATTLE do

		local allyPet=j

		local petTypeNum=C_PetBattles.GetPetType(1,allyPet)
		local power=C_PetBattles.GetPower(1,allyPet)
		local health=C_PetBattles.GetHealth(1,allyPet)
		local speed=C_PetBattles.GetSpeed(1,allyPet)
		local name,creature=C_PetBattles.GetName(1,allyPet)
		local level=C_PetBattles.GetLevel(1,allyPet)
		local quality=C_PetBattles.GetBreedQuality(1,allyPet)
		local maxHp=C_PetBattles.GetMaxHealth(1,allyPet)
		local bigIcon=C_PetBattles.GetIcon(1,allyPet):gsub("\ ","\\"):gsub(" ",""):gsub(".blp",":0:0:0:0|t") --always your pets.


		local pType=p.petType[petTypeNum]

		if name then
			pet[j].Name.label:SetText(name)
			pet[j].Level.label:SetText(level)
			pet[j].Health.label:SetText(health)
			pet[j].Breed.label:SetText(pType)
			pet[j].InBattle.label:SetText("|cffff0000Will not get experience")
			pet[j].Icon:SetText("|T"..bigIcon)

			local allyAbilities = {}

			local abilitylist=pet[j].Abilities
			abilitylist:SetHeight(15)--1 lines + a big space

			for i=1, NUM_BATTLE_PET_ABILITIES do
				local ability=_G['ZygorPetBattleFrame_Ally'..j..'Ability'..i]
				ability:SetText(" ") -- get rid of default

				local available,cdleft,_=C_PetBattles.GetAbilityState(1,allyPet,i)
				local id, name, icon, maxCooldown, description, numTurns, abilityPetType, noStrongWeakHints = C_PetBattles.GetAbilityInfo(1, allyPet, i)
				if id then
					local link = GetBattlePetAbilityHyperlink(id,maxHp,power,speed)
					local icon=icon:gsub("\ ","\\"):gsub(" ",""):gsub(".blp",":0:0:0:0|t")

					if available then
						ability:SetText("|T"..icon.." "..link.."|cffff0000".." is available")
					elseif cdleft>0 then
						ability:SetText("|T"..icon.." "..link.."|cff00ff00".." is on cooldown for "..cdleft.." turns")
					else
						--Default at the start of a match.
						ability:SetText("|T"..icon.." "..link.."|cffff0000".." is available")
					end

					ability:SetScript("OnHyperlinkClick",function()
						FloatingPetBattleAbilityTooltip:Hide()--Hide any old ones
						FloatingPetBattleAbility_Show(id,maxHp,power,speed)
						FloatingPetBattleAbilityTooltip.zclicked=true
						end)

					ability:SetScript("OnHyperlinkEnter",function()
						if not FloatingPetBattleAbilityTooltip:IsVisible() then FloatingPetBattleAbilityTooltip.zclicked=false end -- If not visible at then it is not clicked.
						FloatingPetBattleAbility_Show(id,maxHp,power,speed)
						end)
					ability:SetScript("OnHyperlinkLeave",function() if not FloatingPetBattleAbilityTooltip.zclicked then FloatingPetBattleAbilityTooltip:Hide() end end)

					ability:SetHeight(12) -- ability is only ever 1 line. Setting the fontstring height to 0 makes it set to the correct height
					abilitylist:SetHeight(abilitylist:GetHeight()+ability:GetHeight()+3)

				else
					--Pet doesn't have this many abilities yet
					ability:SetText(" ")
				end
			end
		else
			--no pet for this slot
			pet[j].Name:SetText(" ")
			pet[j].Level:SetText(" ")
			pet[j].Health:SetText(" ")
			pet[j].Icon:SetText(" ")
			pet[j].InBattle:SetText(" ")
			pet[j].Breed:SetText(" ")
			pet[j].Abilities:SetText(" ")
			pet[j].Ability1:SetText(" ")
			pet[j].Ability2:SetText(" ")
			pet[j].Ability3:SetText(" ")


			pet[j].Name.label:SetText(" ")
			pet[j].Level.label:SetText(" ")
			pet[j].Health.label:SetText(" ")
			pet[j].InBattle.label:SetText(" ")
			pet[j].Breed.label:SetText(" ")
		end

	end
end

local function IsDamageAbility(description,abilityType)
	local text=description

	if not text then return end

	--Damaging abilities all have "Number Type" in their name, so since the ability has "104 Critter" in it then it is a damaging ability.
	if text:match("%d+%s"..PetBattle.petType[abilityType]) then
		return true
	else
		return false
	end
end

--Compares the users pets against the current enemy pet and selects the best choice for that enemy
function PetBattle:ComparePets(enemytype,enemyAbilities,enemylevel,enemyspeed)
	PetBattle.PetScores={} --reset the scores everytime we switch enemys.

	--enemyAbilies={id=id,description,abiltype,strong,weak } strong and weak are which pet types the ability is good against

	for petnum=1, C_PetBattles.GetNumPets(1) do
		local allyPetType=C_PetBattles.GetPetType(1,petnum)
		local name,creature=C_PetBattles.GetName(1,petnum)
		local power=C_PetBattles.GetPower(1,petnum)
		local speed=C_PetBattles.GetSpeed(1,petnum)

		local level=C_PetBattles.GetLevel(1,petnum)

		local maxHp=C_PetBattles.GetMaxHealth(1,petnum)
		
		local bigIcon=C_PetBattles.GetIcon(1,petnum):gsub("\ ","\\"):gsub(" ",""):gsub(".blp",":0:0:0:0|t")


		PetBattle.PetScores[petnum]={ name=name,score=100, strongattack=-5, strongdefense=-5,speedadv=speed>enemyspeed,level=level,icon=bigIcon }
		local petscore=PetBattle.PetScores[petnum]
		--Score starts at 100 and we raise or lower it based on everything else
		--strongattack and strongdefense are 3 values -1,0,1. They should never be -5. -1 means we are weak to an ability, 1 means we are strong to all ability.

		--Factor in level
		petscore.score=petscore.score + (level-enemylevel)*10

		for k=1, #enemyAbilities do --Factor in enemy abilities.
			local ability=enemyAbilities[k]
			if IsDamageAbility(ability.description,ability.abiltype) then
				if enemyAbilities[k].strong==allyPetType then --They are supereffective!
					petscore.strongdefense=-1
				elseif enemyAbilities[k].weak==allyPetType then	--Not very effective!
					if petscore.strongdefense~=-1 and petscore.strongdefense~=0 then
						petscore.strongdefense=1
					end
				else --Ability is normal
					if petscore.strongdefense~=-1 then
						petscore.strongdefense=0
					end
				end
			end
		end

		if petscore.strongdefense==1 then petscore.score=petscore.score+10
		elseif petscore.strongdefense==-1 then petscore.score=petscore.score-20
		elseif petscore.strongdefense==0 then petscore.score=petscore.score-5 end

		for abil=1, NUM_BATTLE_PET_ABILITIES do while(1) do --How do our abilities do?
			local id, name, icon, maxCooldown, upparsedescription, numTurns, abilityPetType, noStrongWeakHints = C_PetBattles.GetAbilityInfo(1, petnum, abil)
			if not id then break end
			local text = PetBattle:GetAbilityText(id,maxHp,power,speed) --hp power and speed are always the same

			local modifer=PetBattle.AbilityModifer[abilityPetType]

			if IsDamageAbility(text,abilityPetType) then
				if modifer.strong==enemytype then --We are supereffective!
					petscore.strongattack=1
				elseif modifer.weak==enemytype then	--Not very effective!
					if petscore.strongattack~=1 and petscore.strongattack~=0 then
						petscore.strongattack=-1
					end
				else --Ability is normal
					if petscore.strongattack~=1 then
						petscore.strongattack=0
					end
				end
			end
		break end end
		if petscore.strongattack==1 then petscore.score=petscore.score+20
		elseif petscore.strongattack==-1 then petscore.score=petscore.score-10
		elseif petscore.strongattack==0 then petscore.score=petscore.score+5 end

	end
	return PetBattle.PetScores
end

local function SortScores(scores)
	local maxScore=0
	local scoretable={}
	local sortedScores={}
	for i=1, NUM_BATTLE_PETS_IN_BATTLE do
		if scores[i] and scores[i].score  then
			tinsert(scoretable,scores[i].score)
		end
	end
	sort(scoretable,function (a,b) return b<a end)
	for i=1,#scoretable do
		for k=1,NUM_BATTLE_PETS_IN_BATTLE do
			if scores[k] and scoretable[i]==scores[k].score then
				tinsert(sortedScores,scores[k])
				tremove(scores,k)--Prevents pets with the same score from showing up twice.
				break -- move to the next pet.
			end
		end
	end
	return sortedScores
end

function PetBattle:UpdateSuggestedPets(scores,frame)
	local scores=scores or PetBattle.PetScores
	if not scores then return end

	sortedScores = SortScores(scores)

	--scores= {name=name,score,strongattack,strongdefense,speedadv,level}
	for i=1, NUM_BATTLE_PETS_IN_BATTLE do
		local suggestion=_G['ZygorPetBattleFrame_'..frame..'Suggest'..i]
		local suglabel=_G['ZygorPetBattleFrame_'..frame..'Suggest'..i..'Label']
		if suggestion and  sortedScores[i] and sortedScores[i].name then
			local space="              "
			local icon=sortedScores[i].icon
			local text=sortedScores[i].name
			local atext=""
			local dtext=""
			local stext=sortedScores[i].speedadv and "|T"..ZGV.DIR.."\\Skins\\SpeedIcon:0:0:0:0|t" or "|TInterface\\PetBattles\\DeadPetIcon:0:0:0:0|t"
			local ltext=sortedScores[i].level


			if sortedScores[i].strongattack==1 then
				atext="|TInterface\\PetBattles\\BattleBar-AbilityBadge-Strong-Small:0:0:0:0|t"
			elseif sortedScores[i].strongattack==0 then
				atext="|TInterface\\PetBattles\\BattleBar-AbilityBadge-Neutral:0:0:0:0|t"
			elseif sortedScores[i].strongattack==-1 then
				atext="|TInterface\\PetBattles\\BattleBar-AbilityBadge-Weak-Small:0:0:0:0|t"
			else
				--Something went wrong!
			end

			if sortedScores[i].strongdefense==1 then
				dtext="|TInterface\\PetBattles\\BattleBar-AbilityBadge-Strong-Small:0:0:0:0|t"
			elseif sortedScores[i].strongdefense==0 then
				dtext="|TInterface\\PetBattles\\BattleBar-AbilityBadge-Neutral:0:0:0:0|t"
			elseif sortedScores[i].strongdefense==-1 then
				dtext="|TInterface\\PetBattles\\BattleBar-AbilityBadge-Weak-Small:0:0:0:0|t"
			else
				--Something went wrong!
			end

			suggestion:SetText(i..". |T"..icon.." |cff3090C7"..text.."|r")
			suglabel:SetText(atext..space..dtext..space..stext..space..ltext)

		elseif suggestion then
			--No pet for this slot
			suggestion:SetText(" ")
			suglabel:SetText(" ")
		end
	end
end

--Make there be Frames!
function PetBattle:MakeFontStrings(frame,name,text,point,x,y,label)
	local frame=frame

	local xPos = (x or 0)
	local yPos = -(y or 0)

	if not point then
		frame[name] = CHAIN(frame:CreateFontString(frame:GetName()..name,"ARTWORK"))
			:SetPoint("LEFT",frame,"TOPLEFT",xPos,yPos)
			:SetFont(FONT,12)
			:SetJustifyV("TOP")
			:SetJustifyH("LEFT")
			:SetParent(frame)
			:SetText("|cff4E9258"..text)
			.__END
	elseif point.GetName then
		frame[name] = CHAIN(frame:CreateFontString(frame:GetName()..name,"ARTWORK"))
			:SetPoint("TOPLEFT",point,"BOTTOMLEFT",0+xPos,-3+yPos)
			:SetFont(FONT,12)
			:SetJustifyV("TOP")
			:SetJustifyH("LEFT")
			:SetParent(frame)
			:SetText("|cff4E9258"..text)
			.__END
	else
		frame[name] = CHAIN(frame:CreateFontString(frame:GetName()..name,"ARTWORK"))
			:SetPoint("TOPLEFT",frame[point],"BOTTOMLEFT",0+xPos,-3+yPos)
			:SetFont(FONT,12)
			:SetJustifyV("TOP")
			:SetJustifyH("LEFT")
			:SetParent(frame)
			:SetText("|cff4E9258"..text)
			.__END
	end

	if label=="sug" then
		frame[name]:SetSize(125,12) -- Long names are bad!
		frame[name].label = CHAIN(frame:CreateFontString(frame:GetName()..name.."Label","ARTWORK"))
			:SetPoint("TOPLEFT",frame[name],"TOPLEFT",150,0)
			:SetFont(FONT,12)
			:SetJustifyV("TOP")
			:SetJustifyH("LEFT")
			:SetText("|cff7E2217".."None")
			.__END
	elseif label=="none" then
		--nothing
	elseif not label then
		frame[name].label = CHAIN(frame:CreateFontString(frame:GetName()..name.."Label","ARTWORK"))
			:SetPoint("TOPLEFT",frame[name],"TOPRIGHT",3,0)
			:SetFont(FONT,12)
			:SetWidth(290)
			:SetJustifyV("TOP")
			:SetJustifyH("LEFT")
			:SetWordWrap(true)
			:SetIndentedWordWrap(true)
			:SetText("|cff7E2217".."None")
			.__END
	end
end

function PetBattle:MakeEditBox(frame,name,text,point,labelpoint,x,y,label)
	local xPos = (x or 0)
	local yPos = -(y or 0)

	frame[name] = CHAIN(ui:Create("HyperEditBox",frame,frame:GetName()..name))
		:SetPoint("TOPLEFT",labelpoint and frame[point].label or frame[point],"BOTTOMLEFT",0+xPos,-3+yPos)
		:SetMaxWidth(frame:GetWidth()-15)
		:SetText("|cff4E9258"..text)
	.__END

	if label=="ability" then
		frame[name].label = CHAIN(frame:CreateFontString(frame:GetName()..name.."Label","ARTWORK"))
			:SetFont(FONT,12)
			:SetPoint("TOPLEFT",frame[name],"TOPLEFT",35,-12)
			:SetWidth(290)
			:SetJustifyV("TOP")
			:SetJustifyH("LEFT")
			:SetWordWrap(true)
			:SetIndentedWordWrap(true)
			:SetText("|cff7E2217".."None")
			.__END
	elseif label=="sug" then
		frame[name]:SetSize(125,12) -- Long names are bad!
		frame[name].label = CHAIN(frame:CreateFontString(frame:GetName()..name.."Label","ARTWORK"))
			:SetFont(FONT,12)
			:SetJustifyH("LEFT")
			:SetPoint("TOPLEFT",frame[name],"TOPLEFT",150,0)
			:SetText("|cff7E2217".."None")
			.__END
	elseif label=="none" then
		--Do nothing
	elseif not label then
		frame[name].label = CHAIN(frame:CreateFontString(frame:GetName()..name.."Label","ARTWORK"))
			:SetFont(FONT,12)
			:SetPoint("TOPLEFT",frame[name],"TOPRIGHT",3,0)
			:SetWidth(290)
			:SetJustifyV("TOP")
			:SetJustifyH("LEFT")
			:SetWordWrap(true)
			:SetIndentedWordWrap(true)
			:SetText("|cff7E2217".."None")
			.__END
	end
end

local function PetBattle_ToggleFrames(button)
	for name,data in pairs(PetBattle.BattleFrame) do
		if type(data)=="table" then
			if button ~= data.Toggle then
				data:Hide()
			else
				data:Show()
				SetHeightAllFrames(data.top:GetTop()+15-data.bottom:GetBottom())
			end
		end
	end
end

function SetHeightAllFrames(y)
	PetBattle.BattleFrame:SetHeight(y)
end

local function CreateMainFrames(self)
	self.BattleFrame = CHAIN(ui:Create("Frame",UIParent,"ZygorPetBattleFrame"))
		:SetSize(400,600)
		:SetPoint("TOPRIGHT",UIParent,"TOPRIGHT",-10,-125)
		:SetUserPlaced(true)
		:CanDrag(true)
		:Hide()
	.__END

	--self.BattleFrame.Logo= = CHAIN(self.BattleFrame:CreateFontString(parent:GetName().."Logo","ARTWORK","GameFontNormalLeft"))
	--	:SetPoint("TOP",parent,"TOP",0,-5)
	--	:SetText("|cffffffffPet Battle Information")
	--	.__END

	self.BattleFrame.Main = CHAIN(ui:Create("Frame",self.BattleFrame,"ZygorPetBattleFrame_Main"))
		:SetAllPoints()
		:CanDrag("parent")
	.__END

	self.BattleFrame.Enemy = CHAIN(ui:Create("Frame",self.BattleFrame,"ZygorPetBattleFrame_Enemy"))
		:SetAllPoints()
		:CanDrag("parent")
		:Hide()
	.__END


	for i=1,3 do
		self.BattleFrame.Enemy[i] = CHAIN(CreateFrame("Frame","ZygorPetBattleFrame_Enemy"..i,self.BattleFrame.Enemy))
			:SetAllPoints()
		.__END
	end


	self.BattleFrame.Ally = CHAIN(ui:Create("Frame",self.BattleFrame,"ZygorPetBattleFrame_Ally"))
		:SetAllPoints()
		:CanDrag("parent")
		:Hide()
	.__END

	for i=1,3 do
		self.BattleFrame.Ally[i] = CHAIN(CreateFrame("Frame","ZygorPetBattleFrame_Ally"..i,self.BattleFrame.Ally))
			:SetAllPoints()
		.__END
	end
end

local function CreateTabs(self)
	self.BattleFrame.Main.Toggle = CHAIN(ui:Create("Button", self.BattleFrame, "ZygorPetBattleFrame_ToggleMain"))
		:SetPoint("TOPLEFT",self.BattleFrame,"BOTTOMLEFT")
		:SetText("Current Enemy")
		:SetWidth(105)
		:SetScript("OnClick",PetBattle_ToggleFrames)
	.__END

	self.BattleFrame.Enemy.Toggle = CHAIN(ui:Create("Button", self.BattleFrame, "ZygorPetBattleFrame_ToggleEnemy"))
		:SetPoint("LEFT",self.BattleFrame.Main.Toggle,"RIGHT")
		:SetText("All Enemies")
		:SetWidth(105)
		:SetScript("OnClick",PetBattle_ToggleFrames)
	.__END

	self.BattleFrame.Ally.Toggle = CHAIN(ui:Create("Button", self.BattleFrame, "ZygorPetBattleFrame_ToggleAlly"))
		:SetPoint("LEFT",self.BattleFrame.Enemy.Toggle,"RIGHT")
		:SetText("All Friendly")
		:SetWidth(105)
		:SetScript("OnClick",PetBattle_ToggleFrames)
	.__END
end

local function CreateMainFrameText(self)
	local parent=self.BattleFrame.Main

	parent.Title = CHAIN(self.BattleFrame.Main:CreateFontString(parent:GetName().."Title","ARTWORK"))
		:SetPoint("TOP",parent,"TOP",0,-5)
		:SetFont(FONT,12)
		:SetText(L['static_caption'].."|cffffffffPet Battle Information")
	.__END

	parent.Close = CHAIN(CreateFrame("Button", parent:GetName().."Close", parent))
		:SetSize(15,15)
		:SetPoint("TOPRIGHT",parent,"TOPRIGHT",-5,-5)
		:RegisterForClicks("LeftButtonUp")
		:SetScript("OnClick",function() parent:GetParent():Hide() ZGV.db.profile.petbattleframe=false end)
	.__END
	ZGV.AssignButtonTexture(parent.Close,ui.SkinData("TitleButtons"),6,32)

	PetBattle:MakeFontStrings(parent,"Round","Round:",nil,175,70)

	PetBattle:MakeFontStrings(parent,"Name","Current Enemy:",nil,5,85)
	PetBattle:MakeFontStrings(parent,"Level","Level:","Name",10,0)

	PetBattle:MakeFontStrings(parent,"Icon","Enemy Icon","Name",300,15,"none")
	parent.Icon:SetTextHeight(50) parent.Icon:SetWidth(225)

	PetBattle:MakeFontStrings(parent,"Quality","Quality:","Level")
	PetBattle:MakeFontStrings(parent,"Power","Power:","Quality")
	PetBattle:MakeFontStrings(parent,"Speed","Speed:","Power")
	PetBattle:MakeFontStrings(parent,"SpeedAdv","Speed Advantage:","Speed")
	PetBattle:MakeFontStrings(parent,"Breed","Breed:","SpeedAdv")
	PetBattle:MakeFontStrings(parent,"Modifers","Damage Modifers:","Breed")
	PetBattle:MakeFontStrings(parent,"Passive","Breed Passive:","Modifers",0,12)

	PetBattle:MakeFontStrings(parent,"Abilities","Enemy Abilities","Passive",0,15,"none")

	PetBattle:MakeEditBox(parent,"Ability1","Ability 1","Abilities",false,10,0,"ability")
	parent.Ability1:ClearAllPoints() parent.Ability1:SetPoint("TOPLEFT",parent.Abilities,"TOPLEFT",10,-12)
	PetBattle:MakeEditBox(parent,"Ability2","Ability 2","Ability1",true,-35,0,"ability")
	PetBattle:MakeEditBox(parent,"Ability3","Ability 3","Ability2",true,-35,0,"ability")

	PetBattle:MakeFontStrings(parent,"AbilIcon1","Abil Icon","Ability1",5,5,"none")
	parent.AbilIcon1:SetTextHeight(25) parent.AbilIcon1:SetWidth(150)
	PetBattle:MakeFontStrings(parent,"AbilIcon2","Abil Icon","Ability2",5,5,"none")
	parent.AbilIcon2:SetTextHeight(25) parent.AbilIcon2:SetWidth(150)
	PetBattle:MakeFontStrings(parent,"AbilIcon3","Abil Icon","Ability3",5,5,"none")
	parent.AbilIcon3:SetTextHeight(25) parent.AbilIcon3:SetWidth(150)

	local suggestiontext="Pet Suggestions           Attack      Defense      Speed        Level"
	PetBattle:MakeFontStrings(parent,"Suggestions",suggestiontext,"Abilities",0,0,"none")

	PetBattle:MakeFontStrings(parent,"Suggest1","Suggest 1","Suggestions",10,0,"sug")
	PetBattle:MakeFontStrings(parent,"Suggest2","Suggest 2","Suggest1",0,0,"sug")
	PetBattle:MakeFontStrings(parent,"Suggest3","Suggest 3","Suggest2",0,0,"sug")

	parent.top=parent.Title
	parent.bottom=parent.Suggest3
end

local function MakeEnemys(parent)
	PetBattle:MakeFontStrings(parent,"Level","Level:","Name",50,0)

	PetBattle:MakeFontStrings(parent,"Icon","Enemy Icon","Name",10,15,"none")
	parent.Icon:SetTextHeight(30) parent.Icon:SetWidth(225)

	PetBattle:MakeFontStrings(parent,"Health","Health:","Level",0,0)
	PetBattle:MakeFontStrings(parent,"Quality","Quality:","Health")
	PetBattle:MakeFontStrings(parent,"Breed","Breed:","Quality")

	PetBattle:MakeFontStrings(parent,"Abilities","Enemy Abilities","Breed",-40,5,"none")

	PetBattle:MakeEditBox(parent,"Ability","Ability","Abilities",false,10,0,"none") --This point gets reset after the call. Because Abilities is a big block and need to anchor to the topleft not bottom left
	--PetBattle:MakeEditBox(parent,"Ability1","Ability 1","Abilities",false,10,0,"none")
	--PetBattle:MakeEditBox(parent,"Ability2","Ability 2","Ability1",false,0,0,"none")
	--PetBattle:MakeEditBox(parent,"Ability3","Ability 3","Ability2",false,0,0,"none")

	local suggestiontext="Pet Suggestion            Attack      Defense      Speed        Level"
	PetBattle:MakeFontStrings(parent,"Suggestions",suggestiontext,"Abilities",0,0,"none")

	PetBattle:MakeFontStrings(parent,"Suggest1","Suggest 1","Suggestions",10,0,"sug")
end

local function CreateEnemyFrameText(self)
	local parent=self.BattleFrame.Enemy

	parent.Title = CHAIN(parent:CreateFontString(parent:GetName().."Title","ARTWORK"))
		:SetPoint("TOP",parent,"TOP",0,-5)
		:SetFont(FONT,12)
		:SetText(L['static_caption'].."|cffffffffEnemy Pets")
	.__END

	parent.Close = CHAIN(CreateFrame("Button", parent:GetName().."Close", parent))
			:SetSize(15,15)
			:SetPoint("TOPRIGHT",parent,"TOPRIGHT",-5,-5)
			 :RegisterForClicks("LeftButtonUp")
			:SetScript("OnClick",function() parent:GetParent():Hide() ZGV.db.profile.petbattleframe=false end)
	.__END
	ZGV.AssignButtonTexture(parent.Close,ui.SkinData("TitleButtons"),6,32)

	PetBattle:MakeFontStrings(parent,"Round","Round:",nil,175,70)

 	PetBattle:MakeFontStrings(parent[1],"Name","Enemy: ",nil,5,85)
	MakeEnemys(parent[1])
	parent[1].Ability:ClearAllPoints() parent[1].Ability:SetPoint("TOPLEFT",parent[1].Abilities,"TOPLEFT",10,-16)
	--parent[1].Ability1:ClearAllPoints() parent[1].Ability1:SetPoint("TOPLEFT",parent[1].Abilities,"TOPLEFT",10,-12)

 	PetBattle:MakeFontStrings(parent[2],"Name","Enemy: ",parent[1].Suggest1,-20,5)
	MakeEnemys(parent[2])
	parent[2].Ability:ClearAllPoints() parent[2].Ability:SetPoint("TOPLEFT",parent[2].Abilities,"TOPLEFT",10,-16)
	--parent[2].Ability1:ClearAllPoints() parent[2].Ability1:SetPoint("TOPLEFT",parent[2].Abilities,"TOPLEFT",10,-12)

 	PetBattle:MakeFontStrings(parent[3],"Name","Enemy: ",parent[2].Suggest1,-20,5)
	MakeEnemys(parent[3])
	parent[3].Ability:ClearAllPoints() parent[3].Ability:SetPoint("TOPLEFT",parent[3].Abilities,"TOPLEFT",10,-16)
	--parent[3].Ability1:ClearAllPoints() parent[3].Ability1:SetPoint("TOPLEFT",parent[3].Abilities,"TOPLEFT",10,-12)

	parent.top=parent.Title
	parent.bottom=parent[3].Suggest1
end

local function MakeAllys(parent)
	PetBattle:MakeFontStrings(parent,"Level","Level:","Name",10,0)

	PetBattle:MakeFontStrings(parent,"Icon","Enemy Icon","Name",300,-10,"none")
	parent.Icon:SetTextHeight(50) parent.Icon:SetWidth(225)

	PetBattle:MakeFontStrings(parent,"Health","Health:","Level",0,0)
	PetBattle:MakeFontStrings(parent,"Breed","Breed:","Health")
	PetBattle:MakeFontStrings(parent,"InBattle","Recieving Experience:","Breed")

	PetBattle:MakeFontStrings(parent,"Abilities","Ally Abilities","InBattle",0,5,"none")

	PetBattle:MakeEditBox(parent,"Ability1","Ability 1","Abilities",false,10,0,"none") --This point gets reset after the call. Because Abilities is a big block and need to anchor to the topleft not bottom left
	PetBattle:MakeEditBox(parent,"Ability2","Ability 2","Ability1",false,0,0,"none")
	PetBattle:MakeEditBox(parent,"Ability3","Ability 3","Ability2",false,0,0,"none")
end

local function CreateAllyFrameText(self)
	local parent=self.BattleFrame.Ally

	parent.Title = CHAIN(parent:CreateFontString(parent:GetName().."Title","ARTWORK","GameFontNormal"))
		:SetPoint("TOP",parent,"TOP",0,-5)
		:SetFont(FONT,12)
		:SetText(L['static_caption'].."|cffffffffAllied Pets")
	.__END

	parent.Close = CHAIN(CreateFrame("Button", parent:GetName().."Close", parent))
			:SetSize(15,15)
			:SetPoint("TOPRIGHT",parent,"TOPRIGHT",-5,-5)
			 :RegisterForClicks("LeftButtonUp")
			:SetScript("OnClick",function() parent:GetParent():Hide() ZGV.db.profile.petbattleframe=false end)
	.__END
	ZGV.AssignButtonTexture(parent.Close,ui.SkinData("TitleButtons"),6,32)

	PetBattle:MakeFontStrings(parent,"Round","Round:",nil,175,70)

 	PetBattle:MakeFontStrings(parent[1],"Name","Ally: ",nil,5,85)
	MakeAllys(parent[1])
	parent[1].Ability1:ClearAllPoints() parent[1].Ability1:SetPoint("TOPLEFT",parent[1].Abilities,"TOPLEFT",10,-16)

 	PetBattle:MakeFontStrings(parent[2],"Name","Ally: ",parent[1].Abilities,-10,0)
	MakeAllys(parent[2])
	parent[2].Ability1:ClearAllPoints() parent[2].Ability1:SetPoint("TOPLEFT",parent[2].Abilities,"TOPLEFT",10,-16)

 	PetBattle:MakeFontStrings(parent[3],"Name","Ally: ",parent[2].Abilities,-10,0)
	MakeAllys(parent[3])
	parent[3].Ability1:ClearAllPoints() parent[3].Ability1:SetPoint("TOPLEFT",parent[3].Abilities,"TOPLEFT",10,-16)

	parent.top=parent.Title
	parent.bottom=parent[3].Ability3
end

function PetBattle:CreateFrame()
	CreateMainFrames(self)
	CreateTabs(self)
	CreateMainFrameText(self)
	CreateEnemyFrameText(self)
	CreateAllyFrameText(self)
end

--Zygor button for the pet Journal

function PetBattle.PetJournal.Icon_OnClick(self,but)
	local petbutton=self:GetParent()
	local specID = petbutton.speciesID
	if specID and PetBattle.PetJournal.AvailGuides[specID] then
		ZGV:SetGuide(PetBattle.PetJournal.AvailGuides[specID])
		return
	end
	ZGV:Error("How odd. We don't seem to have a guide for %s",C_PetJournal.GetPetInfoBySpeciesID(specID))
end

function PetBattle.PetJournal.ScheduleUpdate()
	ZGV:ScheduleTimer(function() PetBattle.PetJournal.UpdateIcons() end, 0.0001)
end

function PetBattle.PetJournal.UpdateIcons()
	for i,button in pairs(PetBattle.PetJournal.Icons) do

		local petbutton=button:GetParent()
		local specID = petbutton.speciesID

		if specID and PetBattle.PetJournal.AvailGuides[specID] --[[and not pet.owned]] and petbutton:IsShown() then
			ZGV:Debug("&petguides Showing icon for pet %d %s",specID,petbutton.name:GetText())
			button:Show()
		else
			if ZGV.db.profile.debug then
				if not petbutton:IsShown() then
					ZGV:Debug("&petguides Not showing icon for pet button %d... hidden",i)
				elseif not specID then
					ZGV:Debug("&petguides Not showing icon for pet %s... unknown??",petbutton.name:GetText())
				elseif not PetBattle.PetJournal.AvailGuides[specID] then
					ZGV:Debug("&petguides Not showing icon for pet %d %s: no guide",specID,petbutton.name:GetText())
				elseif petbutton.owned then
					ZGV:Debug("&petguides Not showing icon for pet %d %s: owned",specID,petbutton.name:GetText())
				end
			end
			button:Hide()
		end
	end
end

function PetBattle.PetJournal.RegisterGuide(speciesId,guide)
	if not (speciesId and guide) then return end

	if PetBattle.PetJournal.AvailGuides[speciesId] then
		ZGV:Debug("&petguides Multiple guides for speciesId: %s.",speciesId)
		return
	end

	PetBattle.PetJournal.AvailGuides[speciesId]=guide

end

function PetBattle.PetJournal.JournalIconSetup()
	if PetBattle.PetJournal.loaded then return end

	hooksecurefunc("HybridScrollFrame_Update",function(scrollframe) if scrollframe==PetJournal.listScroll then PetBattle.PetJournal.ScheduleUpdate() end end)  -- CRAZY and inefficient. But it's either this, or

	for i=1,1000 do --Max number of pets that can be shown at once. Bliz has it set to 12 currently as well. Other addons might mess with it, so increasing. ~sinus
		local prefix="PetJournalListScrollFrameButton"..i

		-- PetJournalEnhanced compatibility fix
		if _G["PetJournalEnhancedListScrollFrameButton"..i]~= nil then
			prefix="PetJournalEnhancedListScrollFrameButton"..i
		end

		local button=_G[prefix]
		if not button then break end

		local iconFrame = CreateFrame("Button", "ZygorPetIconFrame"..i, button,"OptionsButtonTemplate")
		iconFrame:SetSize(25,20)
		iconFrame:SetPoint("TOPRIGHT",button,"TOPRIGHT",-2,-5)
		iconFrame:SetScript("OnEnter",function(self)
			GameTooltip:ClearAllPoints()
			GameTooltip:ClearLines()
			GameTooltip:SetOwner(self,"ANCHOR_TOPLEFT")
			GameTooltip:AddLine(L['petframe_button']:format(self:GetParent().name:GetText()))
			GameTooltip:Show()
		end)
		iconFrame:SetScript("OnLeave",function() GameTooltip:Hide() end)
		iconFrame:SetScript("OnClick", function(...) ZGV.PetBattle.PetJournal.Icon_OnClick(...) end) -- Find the pet!

		iconFrame.tex=iconFrame:CreateTexture("ZygorTalentIconTexture"..i,"OVERLAY")
		iconFrame.tex:SetAllPoints(true)
		iconFrame.tex:SetTexture(ZGV.DIR.."\\ZygorTalentAdvisor\\Skin\\popout-button")

		button.zygorButton=iconFrame

		PetBattle.PetJournal.Icons[i]=iconFrame
	end

	local scroll=_G['PetJournalListScrollFrame']

	-- PetJournalEnhanced compatibility fix
	if _G["PetJournalEnhancedListScrollFrame"]~= nil then
		prefix="PetJournalEnhancedListScrollFrame"
	end

	scroll:HookScript("OnVerticalScroll",PetBattle.PetJournal.ScheduleUpdate)
	scroll:HookScript("OnMouseWheel",PetBattle.PetJournal.ScheduleUpdate)
	scroll.scrollDown:HookScript("OnClick",PetBattle.PetJournal.ScheduleUpdate)
	scroll.scrollUp:HookScript("OnClick",PetBattle.PetJournal.ScheduleUpdate)

	PetBattle.PetJournal.loaded=true
end

--EVENTS

local hits_per_round = {}

local function OnEvent(self,event,...)
	--print("Event Name: "..event.." Other Data: ",...)

	if event=="PET_JOURNAL_LIST_UPDATE" and PetBattle.PetJournal.loaded then
		PetBattle.PetJournal.ScheduleUpdate()
		-- schedule it to happen almost instantly, Info is not ready if ran otherwise.
	end

	if not ZGV.db.profile.petbattleframe then return end
	if not PetBattle.BattleFrame then PetBattle:CreateFrame() end
	local PetFrame=PetBattle.BattleFrame

	if event=="PLAYER_ENTERING_WORLD" and PetFrame then
		PetFrame:Hide()
		PetBattle.OpeningDone=false
	elseif event=="PET_BATTLE_OPENING_START" then
		if ZGV.Frame:IsVisible() then
			PetBattle.hideFrame=true
			ZGV:ToggleFrame()
		end
		PetBattle:MainFrameUpdate()
		PetBattle:EnemyFrameUpdate()
		PetBattle:AllyFrameUpdate()
		PetBattle.BattleFrame.Main.Round.label:SetText("1") --so that it is not set to 1 on pet swap
		PetBattle.BattleFrame.Enemy.Round.label:SetText("1")
		PetBattle.BattleFrame.Ally.Round.label:SetText("1")
		SetHeightAllFrames(PetBattle.BattleFrame.Main.top:GetTop()+15-PetBattle.BattleFrame.Main.bottom:GetBottom())
		PetFrame:Show()
	elseif event=="PET_BATTLE_OPENING_DONE" then
		PetBattle.OpeningDone=true
	elseif event=="PET_BATTLE_FINAL_ROUND" then
		PetFrame:Hide()
		PetBattle.OpeningDone=false
	elseif event=="PET_BATTLE_CLOSE" then
		if PetBattle.hideFrame then
			PetBattle.hideFrame=false
			ZGV:ToggleFrame()
		end
		PetFrame:Hide()
		PetBattle.OpeningDone=false
		for i=1,3 do PetFrame.Ally[i].BeenActive=nil end -- Reset active status each fight.
	elseif event=="PET_BATTLE_PET_ROUND_PLAYBACK_COMPLETE" then
		PetBattle_MainFrameUpdateRound(...)
		PetBattle_EnemyFrameUpdateRound(...)
		PetBattle_AllyFrameUpdateRound(...)
		wipe(hits_per_round)
	elseif event=="PET_BATTLE_PET_CHANGED" and PetBattle.OpeningDone then
		PetBattle:MainFrameUpdate()
		PetBattle:EnemyFrameUpdate()
		PetBattle:AllyFrameUpdate()
	elseif event=="PET_BATTLE_HEALTH_CHANGED" then
		local owner,pet,hp_delta = ...
		local maxhp = C_PetBattles.GetMaxHealth(owner,pet)
		hits_per_round[owner..pet] = (hits_per_round[owner..pet] or 0) + hp_delta

		--RaidNotice_AddMessage(RaidBossEmoteFrame,("%d (%d%%)"):format(hp_delta,hits_per_round[owner..pet]/maxhp*100),hp_delta>0 and ChatTypeInfo.GUILD or ChatTypeInfo.YELL,3)
	end
end

local ReviveJustCooled=true
local REVIVE_PETS=125439

function PetBattle:PetRegEvents()

	PetBattle.EventFrame=CreateFrame("Frame")

	local event=PetBattle.EventFrame

	event:RegisterEvent("PLAYER_ENTERING_WORLD")
	event:RegisterEvent("PET_BATTLE_CLOSE")
	event:RegisterEvent("PET_BATTLE_OPENING_DONE")
	event:RegisterEvent("PET_BATTLE_OPENING_START")
	event:RegisterEvent("PET_BATTLE_FINAL_ROUND")
	event:RegisterEvent("PET_BATTLE_PET_ROUND_PLAYBACK_COMPLETE")
	event:RegisterEvent("PET_BATTLE_PET_CHANGED")
	event:RegisterEvent("PET_JOURNAL_LIST_UPDATE")


	-- Sinus tinkering:

	-- Announce revive cooldown
	ZGV:ScheduleRepeatingTimer(function()
		if ZGV.db.profile.pet_notifyrevive then
			if InCombatLockdown() or PetBattleFrame:IsVisible() or not IsUsableSpell(REVIVE_PETS) then return end
			local cd = GetSpellCooldown(REVIVE_PETS)
			if cd>0 then
				ReviveJustCooled=false
				return
			end
			if cd==0 and not ReviveJustCooled then
				ReviveJustCooled=true
				RaidNotice_AddMessage(RaidBossEmoteFrame,"You can revive your pets now.",ChatTypeInfo.SYSTEM,5)
			end
		end
	end, 5)

	event:RegisterEvent("PET_BATTLE_HEALTH_CHANGED")


	--[[event:RegisterEvent("PET_BATTLE_ABILITY_CHANGED")
	event:RegisterEvent("PET_BATTLE_ACTION_SELECTED")
	event:RegisterEvent("PET_BATTLE_AURA_APPLIED")
	event:RegisterEvent("PET_BATTLE_AURA_CANCELED")
	event:RegisterEvent("PET_BATTLE_AURA_CHANGED")
	event:RegisterEvent("PET_BATTLE_CAPTURED")
	event:RegisterEvent("PET_BATTLE_HEALTH_CHANGED")
	event:RegisterEvent("PET_BATTLE_LEVEL_CHANGED")
	event:RegisterEvent("PET_BATTLE_MAX_HEALTH_CHANGED")
	event:RegisterEvent("PET_BATTLE_OVER")
	event:RegisterEvent("PET_BATTLE_PET_ROUND_RESULTS")
	event:RegisterEvent("PET_BATTLE_PVP_DUEL_REQUESTED")
	event:RegisterEvent("PET_BATTLE_PVP_DUEL_REQUEST_CANCEL")
	event:RegisterEvent("PET_BATTLE_QUEUE_PROPOSAL_ACCEPTED")
	event:RegisterEvent("PET_BATTLE_QUEUE_PROPOSAL_DECLINED")
	event:RegisterEvent("PET_BATTLE_QUEUE_PROPOSE_MATCH")
	event:RegisterEvent("PET_BATTLE_QUEUE_STATUS")
	event:RegisterEvent("PET_BATTLE_TURN_STARTED")
	event:RegisterEvent("PET_BATTLE_XP_CHANGED")--]]

	event:SetScript("OnEvent", OnEvent)
end

local petTypes = PetBattle.petType