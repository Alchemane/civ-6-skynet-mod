-- Global_Projects
-- Author: Safeguard
-- DateCreated: 3/31/2023 7:34:04 PM
--------------------------------------------------------------
INSERT INTO Types (Type, Kind)
VALUES	('PROJECT_SGA_SKYNET_GLOBAL_HACK_T800', 'KIND_PROJECT'),
		('PROJECT_SGA_SKYNET_GLOBAL_HACK_HK_TANK', 'KIND_PROJECT'),
		('PROJECT_SGA_SKYNET_GLOBAL_HACK_HK_AERIAL', 'KIND_PROJECT');

INSERT INTO Projects (ProjectType,
						Name,
						ShortName,
						Description,
						Cost,
						AdvisorType,
						PrereqTech,
						PrereqDistrict,
						CostProgressionModel,
						CostProgressionParam1)
VALUES	('PROJECT_SGA_SKYNET_GLOBAL_HACK_T800', -- ProjectType
		'LOC_PROJECT_SGA_SKYNET_GLOBAL_HACK_T800_NAME', -- Name
		'LOC_PROJECT_SGA_SKYNET_GLOBAL_HACK_T800_SHORT_NAME', -- ShortName
		'LOC_PROJECT_SGA_SKYNET_GLOBAL_HACK_T800_DESCRIPTION', -- Description
		'750', -- Cost
		'ADVISOR_CONQUEST', -- AdvisorType
		'TECH_COMPUTERS', -- PrereqTech
		'DISTRICT_THEATER', -- PrereqDistrict
		'NO_COST_PROGRESSION', -- CostProgressionModel
		'0'), -- CostProgressionParam1
--------------------------------------------------------------
		('PROJECT_SGA_SKYNET_GLOBAL_HACK_HK_TANK', -- ProjectType
		'LOC_PROJECT_SGA_SKYNET_GLOBAL_HACK_HK_TANK_NAME', -- Name
		'LOC_PROJECT_SGA_SKYNET_GLOBAL_HACK_HK_TANK_SHORT_NAME', -- ShortName
		'LOC_PROJECT_SGA_SKYNET_GLOBAL_HACK_HK_TANK_DESCRIPTION', -- Description
		'750', -- Cost
		'ADVISOR_CONQUEST', -- AdvisorType
		'TECH_COMPUTERS', -- PrereqTech
		'DISTRICT_THEATER', -- PrereqDistrict
		'NO_COST_PROGRESSION', -- CostProgressionModel
		'0'), -- CostProgressionParam1
--------------------------------------------------------------
		('PROJECT_SGA_SKYNET_GLOBAL_HACK_HK_AERIAL', -- ProjectType
		'LOC_PROJECT_SGA_SKYNET_GLOBAL_HACK_HK_AERIAL_NAME', -- Name
		'LOC_PROJECT_SGA_SKYNET_GLOBAL_HACK_HK_AERIAL_SHORT_NAME', -- ShortName
		'LOC_PROJECT_SGA_SKYNET_GLOBAL_HACK_HK_AERIAL_DESCRIPTION', -- Description
		'750', -- Cost
		'ADVISOR_CONQUEST', -- AdvisorType
		'TECH_COMPUTERS', -- PrereqTech
		'DISTRICT_THEATER', -- PrereqDistrict
		'NO_COST_PROGRESSION', -- CostProgressionModel
		'0'); -- CostProgressionParam1