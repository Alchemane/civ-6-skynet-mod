-- HK_Aerial_Ability
-- Author: Safeguard
-- DateCreated: 4/1/2023 11:53:49 PM
--------------------------------------------------------------
print("HK_Aerial_Ability.lua has loaded.")

local tUnit = "UNIT_SGA_SKYNET_HK_AERIAL";
local iUnit = "UNIT_SGA_SKYNET_HK_SPIDER_TANK";
function HK_Aerial_Ability(playerID, unitID)
	local pNotification
    if unitID:getType() == tUnit then
		UnitManager.InitUnitValidAdjacentHex(iUnit);
end
Events.UnitRemovedFromMap.Add(HK_Aerial_Ability);




-- [WIP] HK AERIAL INITIALIZES HK SPIDER TANK ON UNIT DEATH