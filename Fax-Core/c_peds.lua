--[[
Fax Core, made by FAXES
Change blacklisted peds in config.lua, Do not edit this file unless you know what your doing.
]]
function ManageRestrictPeds()
	local ped_l = GetPlayerPed(-1)
	local plymodel = GetEntityModel(ped_l)	

    if curAuthLvlRank < authLvlRank["Admin"] and plteam ~= "Team-Admin" then
        for i = 1, #restrictedPedsStaff, 1 do
			local rstmodel = GetHashKey(restrictedPedsStaff[i])
			if plymodel == rstmodel then
				RequestModel(newdmodel)
				while not HasModelLoaded(newdmodel) do
					Citizen.Wait(400)
				end
				SetPlayerstModel(PlayerId(), newdmodel)
				SetModelAsNoLongerNeeded(newdmodel)
				ShowInfo("~r~Restricted Ped Model.")
				print("(WARNING) Attempted to spawn restricted staff player model.")
            end
        end
    end
    if curAuthLvlRank < authLvlRank["Owner"] then
		for i = 1, #restrictedPedsAll, 1 do
			local rstmodel = GetHashKey(restrictedPedsAll[i])
			if plymodel == rstmodel then
				RequestModel(newdmodel)
				while not HasModelLoaded(newdmodel) do
					Citizen.Wait(400)
				end
				SetPlayerstModel(PlayerId(), newdmodel)
				SetModelAsNoLongerNeeded(newdmodel)
				ShowInfo("~r~Restricted Ped Model.")
				print("(WARNING) Attempted to spawn restricted player model.")
			end
		end
    end
    
	if curAuthLvlRank < authLvlRank["M3"] then
		for i = 1, #restrictedPedsM3, 1 do
			local rstmodel = GetHashKey(restrictedPedsM3[i])
			if plymodel == rstmodel then
				RequestModel(newdmodel)
				while not HasModelLoaded(newdmodel) do
					Citizen.Wait(400)
				end
				SetPlayerstModel(PlayerId(), newdmodel)
				SetModelAsNoLongerNeeded(newdmodel)
				ShowInfo("~r~Restricted Ped Model.")
				print("(WARNING) Attempted to spawn restricted player model.")
			end
		end
	end

	if curAuthLvlRank < authLvlRank["M2"] then
		for i = 1, #restrictedPedsM2, 1 do
			local rstmodel = GetHashKey(restrictedPedsM2[i])
			if plymodel == rstmodel then
				RequestModel(newdmodel)
				while not HasModelLoaded(newdmodel) do
					Citizen.Wait(400)
				end
				SetPlayerstModel(PlayerId(), newdmodel)
				SetModelAsNoLongerNeeded(newdmodel)
				ShowInfo("~r~Restricted Ped Model.")
				print("(WARNING) Attempted to spawn restricted player model.")
			end
		end
	end
	
	if curAuthLvlRank < authLvlRank["M1"] then
		for i = 1, #restrictedPedsM1, 1 do
			local rstmodel = GetHashKey(restrictedPedsM1[i])
			if plymodel == rstmodel then
				RequestModel(newdmodel)
				while not HasModelLoaded(newdmodel) do
					Citizen.Wait(400)
				end
				SetPlayerstModel(PlayerId(), newdmodel)
				SetModelAsNoLongerNeeded(newdmodel)
				ShowInfo("~r~Restricted Ped Model.")
				print("(WARNING) Attempted to spawn restricted player model.")
			end
		end
	end
end