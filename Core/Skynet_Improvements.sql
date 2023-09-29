-- Skynet_Improvements
-- Author: Safeguard
-- DateCreated: 3/31/2023 6:48:06 PM
--------------------------------------------------------------
/*
CREATE TABLE "ExcludedImprovements" (
		"ImprovementType" TEXT NOT NULL,
		"TraitType" TEXT NOT NULL,
		PRIMARY KEY(ImprovementType, TraitType),
		FOREIGN KEY (ImprovementType) REFERENCES Improvements(ImprovementType) ON DELETE CASCADE ON UPDATE CASCADE,
		FOREIGN KEY (TraitType) REFERENCES Traits(TraitType) ON DELETE CASCADE ON UPDATE CASCADE);

INSERT INTO NavigationProperties("BaseTable", "PropertyName", "TargetTable", "IsCollection", "Query") 
VALUES	
		("Improvements", "ExclusionReference", "ExcludedImprovements", 1,"SELECT T1.rowid from ExcludedImprovements as T1 inner join Improvements as T2 on T2.ImprovementType = T1.ImprovementType where T2.rowid = ? ORDER BY T1.rowid ASC");

INSERT INTO NavigationProperties("BaseTable", "PropertyName", "TargetTable", "IsCollection", "Query") 
VALUES
		("ExcludedImprovements", "TraitReference", "Traits", 0,"SELECT T1.rowid from Traits as T1 inner join ExcludedImprovements as T2 on T2.TraitType = T1.TraitType where T2.rowid = ? ORDER BY T1.rowid ASC LIMIT 1");

INSERT OR IGNORE INTO ExcludedImprovements (ImprovementType, TraitType)
VALUES
		('IMPROVEMENT_FARM', 'TRAIT_SGA_LEADER_SKYNET_SUPERINTELLIGENCE');
*/
-- ^^WIP?

INSERT INTO Types (Type, Kind)
VALUES	('IMPROVEMENT_SGA_SKYNET_OUTPOST', 'KIND_IMPROVEMENT');

INSERT INTO Improvements (ImprovementType, 
							Name, 
							Description,
							Icon,
							PlunderType,
							PlunderAmount,
							Buildable,
							SameAdjacentValid,
							Housing,
							TilesRequired,
							TraitType,
							Appeal,
							GrantFortification,
							PrereqTech)
VALUES	('IMPROVEMENT_SGA_SKYNET_OUTPOST', -- ImprovementType
		'LOC_IMPROVEMENT_SGA_SKYNET_OUTPOST_NAME', -- Name
		'LOC_SGA_SKYNET_OUTPOST_DESCRIPTION', -- Description
		'ICON_IMPROVEMENT_SGA_SKYNET_OUTPOST', -- Icon
		'PLUNDER_SCIENCE', -- PlunderType
		'250', -- PlunderAmount
		'1', -- Buildable
		'0', -- SameAdjacentValid
		'0', -- Housing
		'1', -- TilesRequired
		'TRAIT_CIVILIZATION_SGA_SKYNET_BUILDING_FACILITIES', -- TraitType
		'-3', -- Appeal
		'1',  -- GrantFortification
		'TECH_CONSTRUCTION'); -- PrereqTech

INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType)
VALUES	('IMPROVEMENT_SGA_SKYNET_OUTPOST', 'TERRAIN_GRASS'),
		('IMPROVEMENT_SGA_SKYNET_OUTPOST', 'TERRAIN_GRASS_HILLS'),
		('IMPROVEMENT_SGA_SKYNET_OUTPOST', 'TERRAIN_PLAINS'),
		('IMPROVEMENT_SGA_SKYNET_OUTPOST', 'TERRAIN_PLAINS_HILLS'),
		('IMPROVEMENT_SGA_SKYNET_OUTPOST', 'TERRAIN_DESERT'),
		('IMPROVEMENT_SGA_SKYNET_OUTPOST', 'TERRAIN_DESERT_HILLS'),
		('IMPROVEMENT_SGA_SKYNET_OUTPOST', 'TERRAIN_TUNDRA'),
		('IMPROVEMENT_SGA_SKYNET_OUTPOST', 'TERRAIN_TUNDRA_HILLS'),
		('IMPROVEMENT_SGA_SKYNET_OUTPOST', 'TERRAIN_SNOW'),
		('IMPROVEMENT_SGA_SKYNET_OUTPOST', 'TERRAIN_SNOW_HILLS');

INSERT INTO Improvement_ValidBuildUnits (ImprovementType, UnitType)
VALUES	('IMPROVEMENT_SGA_SKYNET_OUTPOST', 'UNIT_BUILDER');

INSERT INTO Improvement_YieldChanges (ImprovementType, YieldType, YieldChange)
VALUES	('IMPROVEMENT_SGA_SKYNET_OUTPOST', 'YIELD_PRODUCTION', '3'),
		('IMPROVEMENT_SGA_SKYNET_OUTPOST', 'YIELD_GOLD', '2'),
		('IMPROVEMENT_SGA_SKYNET_OUTPOST', 'YIELD_SCIENCE', '1');

INSERT INTO Modifiers (ModifierId, ModifierType)
VALUES	('MODIFIER_SGA_SKYNET_PLASMA_POWER', 'MODIFIER_SINGLE_CITY_ADJUST_FREE_POWER');

INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES	('MODIFIER_SGA_SKYNET_PLASMA_POWER', 'Amount', '1');

INSERT INTO ImprovementModifiers (ImprovementType, ModifierId)
VALUES	('IMPROVEMENT_SGA_SKYNET_OUTPOST', 'MODIFIER_SGA_SKYNET_PLASMA_POWER');