-- TechAndCivicUnlockables_Skynet
-- Author: Safeguard
-- DateCreated: 7/26/2023 1:01:34 AM
--------------------------------------------------------------
function RemoveReplacedUnlockables(unlockables, playerId) 
	local has_trait = GetTraitMapForPlayer(playerId);
	
	local unlock_map = {};
	for i,v in ipairs(unlockables) do
		unlock_map[v[2]] = v;
	end


	for row in GameInfo.ExcludedUnits() do
		if(has_trait[row.TraitType]) then
			unlock_map[row.UnitType] = nil;
		end
	end
	
	local results = {};
	for k,v in pairs(unlockables) do
		if(unlock_map[v[2]])then
			table.insert(results, v);
		end
	end

	return results;
end
-- WIP