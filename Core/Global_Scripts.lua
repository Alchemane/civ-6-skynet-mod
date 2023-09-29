-- Global_Scripts
-- Author: Safeguard
-- Special Thanks: Sailor Cat, WildW!
-- DateCreated: 1/13/2023 10:53:31 PM
--------------------------------------------------------------
print("Global_Scripts.lua has loaded.")

-- T800
local iProject  = GameInfo.Projects["PROJECT_SGA_SKYNET_GLOBAL_HACK_T800"].Index;
local sUnit     = "UNIT_SGA_SKYNET_T800";
local iDistrict    = GameInfo.Districts["DISTRICT_THEATER"].Index;
function Project_T800_Global_Hack(playerID, cityID, projectID, buildingIndex, iX, iY, bCancelled)
    if bCancelled or iProject ~= projectID then
        return;
    end
    local pCities   = Players[playerID]:GetCities();
    local pCity     = pCities:FindID(cityID);
    local x, y        = pCity:GetX(), pCity:GetY();
    local pCityDistricts    = pCity:GetDistricts();

    for i = 0, pCityDistricts:GetNumDistricts() - 1 do
		local district = pCityDistricts:GetDistrictByIndex(i);
		if district:GetType() == iDistrict then
            x, y = district:GetX(), district:GetY();
        end
    end        
    if pCity then
        UnitManager.InitUnit(playerID, sUnit, x, y);
    end
end
Events.CityProjectCompleted.Add(Project_T800_Global_Hack);

-- HK AERIAL
local iProject1  = GameInfo.Projects["PROJECT_SGA_SKYNET_GLOBAL_HACK_HK_AERIAL"].Index;
local sUnit1     = "UNIT_SGA_SKYNET_HK_AERIAL";
local iDistrict1    = GameInfo.Districts["DISTRICT_THEATER"].Index;
function Project_HK_Aerial_Global_Hack(playerID, cityID, projectID, buildingIndex, iX, iY, bCancelled)
    if bCancelled or iProject1 ~= projectID then
        return;
    end
    local pCities   = Players[playerID]:GetCities();
    local pCity     = pCities:FindID(cityID);
    local x, y        = pCity:GetX(), pCity:GetY();
    local pCityDistricts    = pCity:GetDistricts();

    for i = 0, pCityDistricts:GetNumDistricts() - 1 do
		local district = pCityDistricts:GetDistrictByIndex(i);
		if district:GetType() == iDistrict1 then
            x, y = district:GetX(), district:GetY();
        end
    end        
    if pCity then
        UnitManager.InitUnit(playerID, sUnit1, x, y);
    end
end
Events.CityProjectCompleted.Add(Project_HK_Aerial_Global_Hack);

-- HK TANK
local iProject2  = GameInfo.Projects["PROJECT_SGA_SKYNET_GLOBAL_HACK_HK_TANK"].Index;
local sUnit2     = "UNIT_SGA_SKYNET_HK_TANK";
local iDistrict2    = GameInfo.Districts["DISTRICT_THEATER"].Index;
function Project_HK_Tank_Global_Hack(playerID, cityID, projectID, buildingIndex, iX, iY, bCancelled)
    if bCancelled or iProject2 ~= projectID then
        return;
    end
    local pCities   = Players[playerID]:GetCities();
    local pCity     = pCities:FindID(cityID);
    local x, y        = pCity:GetX(), pCity:GetY();
    local pCityDistricts    = pCity:GetDistricts();

    for i = 0, pCityDistricts:GetNumDistricts() - 1 do
		local district = pCityDistricts:GetDistrictByIndex(i);
		if district:GetType() == iDistrict2 then
            x, y = district:GetX(), district:GetY();
        end
    end        
    if pCity then
        UnitManager.InitUnit(playerID, sUnit2, x, y);
    end
end
Events.CityProjectCompleted.Add(Project_HK_Tank_Global_Hack);