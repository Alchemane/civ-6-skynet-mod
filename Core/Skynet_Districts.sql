-- Skynet_Districts
-- Author: Safeguard
-- DateCreated: 3/31/2023 5:02:26 PM
--------------------------------------------------------------
INSERT INTO Types (Type, Kind)
VALUES	('DISTRICT_SGA_SKYNET_CENTRAL', 'KIND_DISTRICT'),
		('DISTRICT_SGA_SKYNET_RESEARCH_FACILITIES', 'KIND_DISTRICT'),
		('DISTRICT_SGA_SKYNET_DEVELOPMENT_FACILITIES', 'KIND_DISTRICT'),
		('DISTRICT_SGA_SKYNET_ENCAMPMENT_FACILITIES', 'KIND_DISTRICT');

INSERT INTO Districts (DistrictType,
						Name,
						Description,
						PlunderType,
						PlunderAmount,
						AdvisorType,
						Cost,
						HitPoints,
						CanAttack,
						CostProgressionModel,
						CostProgressionParam1,
						Maintenance,
						RequiresPlacement,
						RequiresPopulation,
						AllowsHolyCity,
						ZOC,
						CaptureRemovesBuildings,
						CaptureRemovesCityDefenses,
						MilitaryDomain,
						Appeal,
						CityStrengthModifier,
						TraitType,
						CaptureRemovesDistrict,
						MaxPerPlayer,
						CitizenSlots,
						AirSlots,
						PrereqTech,
						NoAdjacentCity,
						Aqueduct,
						InternalOnly)
VALUES	('DISTRICT_SGA_SKYNET_CENTRAL', -- DistrictType
		'LOC_DISTRICT_SGA_SKYNET_CENTRAL_NAME', -- Name
		'LOC_DISTRICT_SGA_SKYNET_CENTRAL_DESCRIPTION', -- Description
		'PLUNDER_SCIENCE', -- PlunderType
		'3000', -- PlunderAmount
		'ADVISOR_TECHNOLOGY', -- AdvisorType
		'75', -- Cost
		'500', -- HitPoints
		'1', -- CanAttack
		'NO_COST_PROGRESSION', -- CostProgressionModel
		'0', -- CostProgressionParam1
		'0', -- Maintenance
		'1', -- RequiresPlacement
		'0', -- RequiresPopulation
		'0', -- AllowsHolyCity
		'1', -- ZOC
		'1', -- CaptureRemovesBuildings
		'1', -- CaptureRemovesCityDefenses
		'DOMAIN_LAND', -- MilitaryDomain
		'-5', -- Appeal
		'5', -- CityStrengthModifier
		'TRAIT_CIVILIZATION_DISTRICT_SGA_SKYNET_CENTRAL', -- TraitType
		'0', -- CaptureRemovesDistrict
		'1', -- MaxPerPlayer
		'7', -- CitizenSlots
		'2', -- AirSlots
		'TECH_WRITING', -- PrereqTech
		'0', -- Aqueduct
		'0', -- NoAdjacentCity
		'0'), -- InternalOnly
--------------------------------------------------------------
		('DISTRICT_SGA_SKYNET_RESEARCH_FACILITIES', -- DistrictType
		'LOC_DISTRICT_SGA_SKYNET_RESEARCH_FACILITIES_NAME', -- Name
		'LOC_DISTRICT_SGA_SKYNET_RESEARCH_FACILITIES_DESCRIPTION', -- Description
		'PLUNDER_SCIENCE', -- PlunderType
		'1000', -- PlunderAmount
		'ADVISOR_TECHNOLOGY', -- AdvisorType
		'25', -- Cost
		'150', -- HitPoints
		'1', -- CanAttack
		'NO_COST_PROGRESSION', -- CostProgressionModel
		'0', -- CostProgressionParam1
		'0', -- Maintenance
		'1', -- RequiresPlacement
		'0', -- RequiresPopulation
		'0', -- AllowsHolyCity
		'1', -- ZOC
		'1', -- CaptureRemovesBuildings
		'1', -- CaptureRemovesCityDefenses
		'DOMAIN_LAND', -- MilitaryDomain
		'-5', -- Appeal
		'1', -- CityStrengthModifier
		'TRAIT_CIVILIZATION_DISTRICT_SGA_SKYNET_RESEARCH_FACILITIES', -- TraitType
		'0', -- CaptureRemovesDistrict
		'-1', -- MaxPerPlayer
		'8', -- CitizenSlots
		'0', -- AirSlots
		'TECH_WRITING', -- PrereqTech
		'0', -- Aqueduct
		'0', -- NoAdjacentCity
		'0'), -- InternalOnly
--------------------------------------------------------------
		('DISTRICT_SGA_SKYNET_DEVELOPMENT_FACILITIES', -- DistrictType
		'LOC_DISTRICT_SGA_SKYNET_DEVELOPMENT_FACILITIES_NAME', -- Name
		'LOC_DISTRICT_SGA_SKYNET_DEVELOPMENT_FACILITIES_DESCRIPTION', -- Description
		'PLUNDER_GOLD', -- PlunderType
		'1500', -- PlunderAmount
		'ADVISOR_CONQUEST', -- AdvisorType
		'25', -- Cost
		'300', -- HitPoints
		'1', -- CanAttack
		'NO_COST_PROGRESSION', -- CostProgressionModel
		'0', -- CostProgressionParam1
		'0', -- Maintenance
		'1', -- RequiresPlacement
		'0', -- RequiresPopulation
		'0', -- AllowsHolyCity
		'1', -- ZOC
		'1', -- CaptureRemovesBuildings
		'1', -- CaptureRemovesCityDefenses
		'DOMAIN_LAND', -- MilitaryDomain
		'-10', -- Appeal
		'3', -- CityStrengthModifier
		'TRAIT_CIVILIZATION_DISTRICT_SGA_SKYNET_DEVELOPMENT_FACILITIES', -- TraitType
		'0', -- CaptureRemovesDistrict
		'-1', -- MaxPerPlayer
		'10', -- CitizenSlots
		'0', -- AirSlots
		'TECH_CONSTRUCTION', -- PrereqTech
		'0', -- Aqueduct
		'0', -- NoAdjacentCity
		'0'), -- InternalOnly
--------------------------------------------------------------
		('DISTRICT_SGA_SKYNET_ENCAMPMENT_FACILITIES', -- DistrictType
		'LOC_DISTRICT_SGA_SKYNET_ENCAMPMENT_FACILITIES_NAME', -- Name
		'LOC_DISTRICT_SGA_SKYNET_ENCAMPMENT_FACILITIES_DESCRIPTION', -- Description
		'PLUNDER_GOLD', -- PlunderType
		'1000', -- PlunderAmount
		'ADVISOR_CONQUEST', -- AdvisorType
		'100', -- Cost
		'300', -- HitPoints
		'1', -- CanAttack
		'NO_COST_PROGRESSION', -- CostProgressionModel
		'0', -- CostProgressionParam1
		'0', -- Maintenance
		'1', -- RequiresPlacement
		'0', -- RequiresPopulation
		'0', -- AllowsHolyCity
		'1', -- ZOC
		'1', -- CaptureRemovesBuildings
		'1', -- CaptureRemovesCityDefenses
		'DOMAIN_LAND', -- MilitaryDomain
		'-10', -- Appeal
		'3', -- CityStrengthModifier
		'TRAIT_CIVILIZATION_DISTRICT_SGA_SKYNET_ENCAMPMENT_FACILITIES', -- TraitType
		'0', -- CaptureRemovesDistrict
		'-1', -- MaxPerPlayer
		'5', -- CitizenSlots
		'0', -- AirSlots
		'TECH_BRONZE_WORKING', -- PrereqTech
		'0', -- Aqueduct
		'0', -- NoAdjacentCity
		'0'); -- InternalOnly

INSERT INTO DistrictReplaces (CivUniqueDistrictType, ReplacesDistrictType)
VALUES	('DISTRICT_SGA_SKYNET_CENTRAL', 'DISTRICT_SPACEPORT'),
		('DISTRICT_SGA_SKYNET_RESEARCH_FACILITIES', 'DISTRICT_CAMPUS'),
		('DISTRICT_SGA_SKYNET_DEVELOPMENT_FACILITIES', 'DISTRICT_INDUSTRIAL_ZONE'),
		('DISTRICT_SGA_SKYNET_ENCAMPMENT_FACILITIES', 'DISTRICT_ENCAMPMENT');

INSERT INTO District_CitizenYieldChanges (DistrictType, YieldType, YieldChange)
VALUES	('DISTRICT_SGA_SKYNET_CENTRAL', 'YIELD_SCIENCE', '9'),
		('DISTRICT_SGA_SKYNET_CENTRAL', 'YIELD_PRODUCTION', '5'),
		('DISTRICT_SGA_SKYNET_RESEARCH_FACILITIES', 'YIELD_SCIENCE', '6'),
		('DISTRICT_SGA_SKYNET_RESEARCH_FACILITIES', 'YIELD_PRODUCTION', '2'),
		('DISTRICT_SGA_SKYNET_DEVELOPMENT_FACILITIES', 'YIELD_PRODUCTION', '6'),
		('DISTRICT_SGA_SKYNET_DEVELOPMENT_FACILITIES', 'YIELD_GOLD', '5'),
		('DISTRICT_SGA_SKYNET_ENCAMPMENT_FACILITIES', 'YIELD_PRODUCTION', '2'),
		('DISTRICT_SGA_SKYNET_ENCAMPMENT_FACILITIES', 'YIELD_GOLD', '4');
		
INSERT INTO Adjacency_YieldChanges (ID,
									Description, 
									YieldType, 
									YieldChange, 
									TilesRequired, 
									AdjacentDistrict)
VALUES	
-------------------------------------------------------------- SCIENCE --------------------------------------------------------------
		('SKYNET_ADJACENT_CENTRAL_SCIENCE',
		'LOC_DISTRICT_SGA_SKYNET_ADJACENT_CENTRAL_SCIENCE_DESCRIPTION',
		'YIELD_SCIENCE',
		'9',
		'1',
		'DISTRICT_SGA_SKYNET_CENTRAL'),
--------------------------------------------------------------
		('SKYNET_ADJACENT_RESEARCH_FACILITIES_SCIENCE',
		'LOC_DISTRICT_SGA_SKYNET_ADJACENT_RESEARCH_FACILITIES_SCIENCE_DESCRIPTION',
		'YIELD_SCIENCE',
		'5',
		'1',
		'DISTRICT_SGA_SKYNET_RESEARCH_FACILITIES'),
--------------------------------------------------------------
		('SKYNET_ADJACENT_DEVELOPMENT_FACILITIES_SCIENCE',
		'LOC_DISTRICT_SGA_SKYNET_ADJACENT_DEVELOPMENT_FACILITIES_SCIENCE_DESCRIPTION',
		'YIELD_SCIENCE',
		'2',
		'1',
		'DISTRICT_SGA_SKYNET_DEVELOPMENT_FACILITIES'),
-------------------------------------------------------------- PRODUCTION --------------------------------------------------------------
		('SKYNET_ADJACENT_CENTRAL_PRODUCTION',
		'LOC_DISTRICT_SGA_SKYNET_ADJACENT_CENTRAL_PRODUCTION_DESCRIPTION',
		'YIELD_PRODUCTION',
		'7',
		'1',
		'DISTRICT_SGA_SKYNET_CENTRAL'),
--------------------------------------------------------------
		('SKYNET_ADJACENT_DEVELOPMENT_FACILITIES_PRODUCTION',
		'LOC_DISTRICT_SGA_SKYNET_ADJACENT_DEVELOPMENT_FACILITIES_PRODUCTION_DESCRIPTION',
		'YIELD_PRODUCTION',
		'5',
		'1',
		'DISTRICT_SGA_SKYNET_DEVELOPMENT_FACILITIES'),
--------------------------------------------------------------
		('SKYNET_ADJACENT_RESEARCH_FACILITIES_PRODUCTION',
		'LOC_DISTRICT_SGA_SKYNET_ADJACENT_RESEARCH_FACILITIES_PRODUCTION_DESCRIPTION',
		'YIELD_PRODUCTION',
		'2',
		'1',
		'DISTRICT_SGA_SKYNET_RESEARCH_FACILITIES'),
-------------------------------------------------------------- GOLD --------------------------------------------------------------
		('SKYNET_ADJACENT_CENTRAL_GOLD',
		'LOC_DISTRICT_SGA_SKYNET_ADJACENT_CENTRAL_GOLD_DESCRIPTION',
		'YIELD_GOLD',
		'7',
		'1',
		'DISTRICT_SGA_SKYNET_CENTRAL'),
--------------------------------------------------------------
		('SKYNET_ADJACENT_DEVELOPMENT_FACILITIES_GOLD',
		'LOC_DISTRICT_SGA_SKYNET_ADJACENT_DEVELOPMENT_FACILITIES_GOLD_DESCRIPTION',
		'YIELD_GOLD',
		'5',
		'1',
		'DISTRICT_SGA_SKYNET_DEVELOPMENT_FACILITIES');

INSERT INTO District_Adjacencies (DistrictType, YieldChangeId)
VALUES	
-------------------------------------------------------------- SKYNET CENTRAL ADJACENCIES
		('DISTRICT_SGA_SKYNET_CENTRAL', 'SKYNET_ADJACENT_RESEARCH_FACILITIES_SCIENCE'),
		('DISTRICT_SGA_SKYNET_CENTRAL', 'SKYNET_ADJACENT_DEVELOPMENT_FACILITIES_SCIENCE'),
		('DISTRICT_SGA_SKYNET_CENTRAL', 'SKYNET_ADJACENT_DEVELOPMENT_FACILITIES_PRODUCTION'),
		('DISTRICT_SGA_SKYNET_CENTRAL', 'SKYNET_ADJACENT_RESEARCH_FACILITIES_PRODUCTION'),
		('DISTRICT_SGA_SKYNET_CENTRAL', 'SKYNET_ADJACENT_DEVELOPMENT_FACILITIES_GOLD'),
-------------------------------------------------------------- SKYNET RESEARCH FACILITIES ADJACENCIES
		('DISTRICT_SGA_SKYNET_RESEARCH_FACILITIES', 'SKYNET_ADJACENT_CENTRAL_SCIENCE'),
		('DISTRICT_SGA_SKYNET_RESEARCH_FACILITIES', 'SKYNET_ADJACENT_DEVELOPMENT_FACILITIES_PRODUCTION'),
-------------------------------------------------------------- SKYNET DEVELOPMENT FACILITIES ADJACENCIES
		('DISTRICT_SGA_SKYNET_DEVELOPMENT_FACILITIES', 'SKYNET_ADJACENT_CENTRAL_PRODUCTION'),
		('DISTRICT_SGA_SKYNET_DEVELOPMENT_FACILITIES', 'SKYNET_ADJACENT_CENTRAL_GOLD'),
		('DISTRICT_SGA_SKYNET_DEVELOPMENT_FACILITIES', 'SKYNET_ADJACENT_RESEARCH_FACILITIES_SCIENCE'),
-------------------------------------------------------------- OTHER ADJACENCIES
		('DISTRICT_CITY_CENTER', 'SKYNET_ADJACENT_CENTRAL_SCIENCE'),
		('DISTRICT_CITY_CENTER', 'SKYNET_ADJACENT_CENTRAL_PRODUCTION'),
		('DISTRICT_CITY_CENTER', 'SKYNET_ADJACENT_CENTRAL_GOLD'),
		('DISTRICT_CITY_CENTER', 'SKYNET_ADJACENT_DEVELOPMENT_FACILITIES_GOLD'),
		('DISTRICT_CITY_CENTER', 'SKYNET_ADJACENT_RESEARCH_FACILITIES_SCIENCE'),
		('DISTRICT_SGA_SKYNET_ENCAMPMENT_FACILITIES', 'SKYNET_ADJACENT_DEVELOPMENT_FACILITIES_PRODUCTION'),
		('DISTRICT_SGA_SKYNET_ENCAMPMENT_FACILITIES', 'SKYNET_ADJACENT_DEVELOPMENT_FACILITIES_GOLD'),
		('DISTRICT_COMMERCIAL_HUB', 'SKYNET_ADJACENT_CENTRAL_GOLD'),
		('DISTRICT_COMMERCIAL_HUB', 'SKYNET_ADJACENT_DEVELOPMENT_FACILITIES_GOLD'),
		('DISTRICT_HARBOR', 'SKYNET_ADJACENT_CENTRAL_GOLD'),
		('DISTRICT_HARBOR', 'SKYNET_ADJACENT_CENTRAL_SCIENCE'),
		('DISTRICT_HARBOR', 'SKYNET_ADJACENT_DEVELOPMENT_FACILITIES_GOLD'),
		('DISTRICT_HARBOR', 'SKYNET_ADJACENT_DEVELOPMENT_FACILITIES_PRODUCTION');

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
VALUES	('SKYNET_GRANT_T800', 'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_CITY', '1', '1'),
		('SKYNET_GRANT_CULTURE_BOMB_CENTRAL', 'MODIFIER_PLAYER_ADD_CULTURE_BOMB_TRIGGER', '1', '1'),
		('SKYNET_GRANT_CULTURE_BOMB_DEV_FACILITIES', 'MODIFIER_PLAYER_ADD_CULTURE_BOMB_TRIGGER', '1', '1'),
		('SKYNET_GEOMETRIC_LEARNING', 'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_MODIFIER', '0', '1'),
		('SKYNET_CAPITAL_OFFENSE', 'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_UNIT_PRODUCTION', '0', '1'),
		('SKYNET_GRANT_CULTURE_BOMB_ENC_FACILITIES', 'MODIFIER_PLAYER_ADD_CULTURE_BOMB_TRIGGER', '1', '1');

INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES	('SKYNET_GRANT_T800', 'UnitType', 'UNIT_SGA_SKYNET_T800'),
		('SKYNET_GRANT_T800', 'Amount', '1'),
		('SKYNET_GRANT_CULTURE_BOMB_CENTRAL', 'DistrictType', 'DISTRICT_SGA_SKYNET_CENTRAL'),
		('SKYNET_GRANT_CULTURE_BOMB_DEV_FACILITIES', 'DistrictType', 'DISTRICT_SGA_SKYNET_DEVELOPMENT_FACILITIES'),
		('SKYNET_GEOMETRIC_LEARNING', 'YieldType', 'YIELD_SCIENCE'),
		('SKYNET_GEOMETRIC_LEARNING', 'Amount', '100'),
		('SKYNET_CAPITAL_OFFENSE', 'Amount', '50'),
		('SKYNET_GRANT_CULTURE_BOMB_ENC_FACILITIES', 'DistrictType', 'DISTRICT_SGA_SKYNET_ENCAMPMENT_FACILITIES');

INSERT INTO DistrictModifiers (DistrictType, ModifierId)
VALUES	('DISTRICT_SGA_SKYNET_CENTRAL', 'SKYNET_GRANT_T800'),
		('DISTRICT_SGA_SKYNET_CENTRAL', 'SKYNET_GRANT_CULTURE_BOMB_CENTRAL'),
		('DISTRICT_SGA_SKYNET_DEVELOPMENT_FACILITIES', 'SKYNET_GRANT_CULTURE_BOMB_DEV_FACILITIES'),
		('DISTRICT_SGA_SKYNET_RESEARCH_FACILITIES', 'SKYNET_GEOMETRIC_LEARNING'),
		('DISTRICT_SGA_SKYNET_DEVELOPMENT_FACILITIES', 'SKYNET_CAPITAL_OFFENSE'),
		('DISTRICT_SGA_SKYNET_ENCAMPMENT_FACILITIES', 'SKYNET_GRANT_CULTURE_BOMB_ENC_FACILITIES');