-- Skynet_Units
-- Author: Safeguard
-- DateCreated: 3/29/2023 6:01:34 PM
--------------------------------------------------------------

-- EXCLUDE UNITS BY TRAIT FOR SKYNET
/*
CREATE TABLE "ExcludedUnits" (
		"UnitType" TEXT NOT NULL,
		"TraitType" TEXT NOT NULL,
		PRIMARY KEY(UnitType, TraitType),
		FOREIGN KEY (UnitType) REFERENCES Units(UnitType) ON DELETE CASCADE ON UPDATE CASCADE,
		FOREIGN KEY (TraitType) REFERENCES Traits(TraitType) ON DELETE CASCADE ON UPDATE CASCADE);

INSERT INTO NavigationProperties("BaseTable", "PropertyName", "TargetTable", "IsCollection", "Query") 
VALUES
		("Units", "ExclusionReference", "ExcludedUnits", 1,"SELECT T1.rowid from ExcludedUnits as T1 inner join Units as T2 on T2.UnitType = T1.UnitType where T2.rowid = ? ORDER BY T1.rowid ASC");

INSERT INTO NavigationProperties("BaseTable", "PropertyName", "TargetTable", "IsCollection", "Query") 
VALUES
		("ExcludedUnits", "TraitReference", "Traits", 0, "SELECT T1.rowid from Traits as T1 inner join ExcludedUnits as T2 on T2.TraitType = T1.TraitType where T2.rowid = ? ORDER BY T1.rowid ASC LIMIT 1");

INSERT OR IGNORE INTO ExcludedUnits (UnitType, TraitType)
VALUES
		('UNIT_SPEC_OPS', 'TRAIT_SGA_LEADER_SKYNET_SUPERINTELLIGENCE');
*/
-- ^^WIP?

INSERT INTO Types (Type, Kind)
VALUES	
-------------------------------------------------------------- UNITS
		('UNIT_SGA_SKYNET_T600', 'KIND_UNIT'),
		('UNIT_SGA_SKYNET_T800', 'KIND_UNIT'),
		('UNIT_SGA_SKYNET_T900', 'KIND_UNIT'),
		('UNIT_SGA_SKYNET_T810', 'KIND_UNIT'),
		('UNIT_SGA_SKYNET_T825', 'KIND_UNIT'),
		('UNIT_SGA_SKYNET_HK_TANK', 'KIND_UNIT'),
		('UNIT_SGA_SKYNET_HK_SPIDER_TANK', 'KIND_UNIT'),
		('UNIT_SGA_SKYNET_HK_FIGHTER', 'KIND_UNIT'),
		('UNIT_SGA_SKYNET_HK_BOMBER', 'KIND_UNIT'),
		('UNIT_SGA_SKYNET_HK_AERIAL', 'KIND_UNIT'),
-------------------------------------------------------------- ABILITIES
		('ABILITY_SGA_SKYNET_T900_ANTI_GDR', 'KIND_ABILITY'),
-------------------------------------------------------------- PROMOTIONS
		-- HK PROMOTION CLASS
		('PROMOTION_CLASS_SGA_SKYNET_HK_PROMOTIONS', 'KIND_PROMOTION_CLASS'),
		-- 1
		('PROMOTION_SGA_SKYNET_HK_ATTACK_AND_MOVE', 'KIND_PROMOTION'),
		('PROMOTION_SGA_SKYNET_HK_SIEGE', 'KIND_PROMOTION'),
		-- 2
		('PROMOTION_SGA_SKYNET_HK_BLITZ', 'KIND_PROMOTION'),
		('PROMOTION_SGA_SKYNET_HK_MOVEMENT', 'KIND_PROMOTION'),
		-- 3
		('PROMOTION_SGA_SKYNET_HK_SUPPORT', 'KIND_PROMOTION'),
		('PROMOTION_SGA_SKYNET_HK_FLANK', 'KIND_PROMOTION'),
		-- 4
		('PROMOTION_SGA_SKYNET_HK_WMD_RESISTANCE', 'KIND_PROMOTION'),
		('PROMOTION_SGA_SKYNET_HK_PLASMA', 'KIND_PROMOTION'),
		-- HK SPIDER TANK GENISYS PROMOTION CLASS
		('PROMOTION_CLASS_SGA_SKYNET_SPIDER_PROMOTIONS', 'KIND_PROMOTION_CLASS'),
		-- 1
		('PROMOTION_SGA_SKYNET_SPIDER_NH101', 'KIND_PROMOTION'),
		('PROMOTION_SGA_SKYNET_SPIDER_ATTACK_AND_MOVE', 'KIND_PROMOTION'),
		-- 2
		('PROMOTION_SGA_SKYNET_SPIDER_NH107', 'KIND_PROMOTION'),
		('PROMOTION_SGA_SKYNET_SPIDER_SIEGE', 'KIND_PROMOTION'),
		-- 3
		('PROMOTION_SGA_SKYNET_SPIDER_NH201', 'KIND_PROMOTION'),
		('PROMOTION_SGA_SKYNET_SPIDER_BLITZ', 'KIND_PROMOTION'),
		-- 4
		('PROMOTION_SGA_SKYNET_SPIDER_NH207', 'KIND_PROMOTION'),
		('PROMOTION_SGA_SKYNET_SPIDER_PLASMA', 'KIND_PROMOTION'),
		-- 5
		('PROMOTION_SGA_SKYNET_SPIDER_NH301', 'KIND_PROMOTION'),
		('PROMOTION_SGA_SKYNET_SPIDER_WMD_RESISTANCE', 'KIND_PROMOTION'),
		-- T810 GENISYS PROMOTION CLASS
		('PROMOTION_CLASS_SGA_SKYNET_T810_PROMOTIONS', 'KIND_PROMOTION_CLASS'),
		-- 1
		('PROMOTION_SGA_SKYNET_T810_T833', 'KIND_PROMOTION'),
		('PROMOTION_SGA_SKYNET_T810_SIEGE', 'KIND_PROMOTION'),
		-- 2
		('PROMOTION_SGA_SKYNET_T810_T883', 'KIND_PROMOTION'),
		('PROMOTION_SGA_SKYNET_T810_BLITZ', 'KIND_PROMOTION'),
		-- 3
		('PROMOTION_SGA_SKYNET_T810_T897', 'KIND_PROMOTION'),
		('PROMOTION_SGA_SKYNET_T810_WMD_RESISTANCE', 'KIND_PROMOTION');

INSERT INTO Tags (Tag, Vocabulary)
VALUES	('CLASS_SGA_SKYNET_T600', 'ABILITY_CLASS'),
		('CLASS_SGA_SKYNET_T800', 'ABILITY_CLASS'),
		('CLASS_SGA_SKYNET_T900', 'ABILITY_CLASS'),
		('CLASS_SGA_SKYNET_T810', 'ABILITY_CLASS'),
		('CLASS_SGA_SKYNET_T825', 'ABILITY_CLASS'),
		('CLASS_SGA_SKYNET_HK_TANK', 'ABILITY_CLASS'),
		('CLASS_SGA_SKYNET_HK_SPIDER_TANK', 'ABILITY_CLASS'),
		('CLASS_SGA_SKYNET_HK_FIGHTER', 'ABILITY_CLASS'),
		('CLASS_SGA_SKYNET_HK_BOMBER', 'ABILITY_CLASS'),
		('CLASS_SGA_SKYNET_HK_AERIAL', 'ABILITY_CLASS');

INSERT INTO TypeTags (Type, Tag)
VALUES	('UNIT_SGA_SKYNET_T600', 'CLASS_MELEE'),
		('UNIT_SGA_SKYNET_T800', 'CLASS_MELEE'),
		('UNIT_SGA_SKYNET_T900', 'CLASS_MELEE'),
		('UNIT_SGA_SKYNET_T810', 'CLASS_MELEE'),
		('UNIT_SGA_SKYNET_T810', 'CLASS_RANGED'),
		('UNIT_SGA_SKYNET_T825', 'CLASS_RANGED'),
		('UNIT_SGA_SKYNET_HK_TANK', 'CLASS_HEAVY_CHARIOT'),
		('UNIT_SGA_SKYNET_HK_TANK', 'CLASS_HEAVY_CAVALRY'),
		('UNIT_SGA_SKYNET_HK_TANK', 'CLASS_RANGED'),
		('UNIT_SGA_SKYNET_HK_SPIDER_TANK', 'CLASS_HEAVY_CHARIOT'),
		('UNIT_SGA_SKYNET_HK_SPIDER_TANK', 'CLASS_HEAVY_CAVALRY'),
		('UNIT_SGA_SKYNET_HK_FIGHTER', 'CLASS_AIRCRAFT'),
		('UNIT_SGA_SKYNET_HK_FIGHTER', 'CLASS_AIR_FIGHTER'),
		('UNIT_SGA_SKYNET_HK_BOMBER', 'CLASS_AIRCRAFT'),
		('UNIT_SGA_SKYNET_HK_BOMBER', 'CLASS_AIR_BOMBER'),
		('UNIT_SGA_SKYNET_HK_AERIAL', 'CLASS_LIGHT_CAVALRY'),
		('UNIT_SGA_SKYNET_HK_AERIAL', 'CLASS_HELICOPTER'),
		--
		('UNIT_SGA_SKYNET_T600', 'CLASS_SGA_SKYNET_T600'),
		('UNIT_SGA_SKYNET_T800', 'CLASS_SGA_SKYNET_T800'),
		('UNIT_SGA_SKYNET_T900', 'CLASS_SGA_SKYNET_T900'),
		('UNIT_SGA_SKYNET_T810', 'CLASS_SGA_SKYNET_T810'),
		('UNIT_SGA_SKYNET_T825', 'CLASS_SGA_SKYNET_T825'),
		('UNIT_SGA_SKYNET_HK_TANK', 'CLASS_SGA_SKYNET_HK_TANK'),
		('UNIT_SGA_SKYNET_HK_SPIDER_TANK', 'CLASS_SGA_SKYNET_HK_SPIDER_TANK'),
		('UNIT_SGA_SKYNET_HK_FIGHTER', 'CLASS_SGA_SKYNET_HK_FIGHTER'),
		('UNIT_SGA_SKYNET_HK_BOMBER', 'CLASS_SGA_SKYNET_HK_BOMBER'),
		('UNIT_SGA_SKYNET_HK_AERIAL', 'CLASS_SGA_SKYNET_HK_AERIAL'),
-------------------------------------------------------------- ABILITIES
		('ABILITY_SGA_SKYNET_T900_ANTI_GDR', 'CLASS_SGA_SKYNET_T900');

INSERT INTO Units (UnitType,
					Combat,
					BaseMoves,
					Maintenance,
					Cost,
					AdvisorType,
					BaseSightRange,
					ZoneOfControl,
					Domain,
					FormationClass,
					Name,
					Description,
					PrereqTech,
					PromotionClass,
					TraitType,
					PurchaseYield,
					CanTargetAir,
					CanTrain,
					AllowBarbarians,
					Range,
					RangedCombat,
					Bombard,
					PrereqDistrict,
					Stackable,
					WMDCapable,
					IgnoreMoves,
					MandatoryObsoleteTech,
					PseudoYieldType)
VALUES	
-------------------------------------------------------------- TERMINATORS --------------------------------------------------------------
		('UNIT_SGA_SKYNET_T600', -- UnitType
		'90', -- Combat
		'2', -- BaseMoves
		'2', -- Maintenance
		'200', -- Cost
		'ADVISOR_CONQUEST', -- AdvisorType
		'3', -- BaseSightRange
		'1', -- ZoneOfControl
		'DOMAIN_LAND', -- Domain
		'FORMATION_CLASS_LAND_COMBAT', -- FormationClass
		'LOC_UNIT_SGA_SKYNET_T600_NAME', -- Name
		'LOC_SGA_SKYNET_T600_DESCRIPTION', -- Description
		'TECH_REPLACEABLE_PARTS', -- PrereqTech
		'PROMOTION_CLASS_SGA_SKYNET_HK_PROMOTIONS', -- PromotionClass
		'TRAIT_CIVILIZATION_SGA_SKYNET_HUNTER_KILLERS', -- TraitType
		'YIELD_GOLD', -- PurchaseYield
		'1', -- CanTargetAir
		'1', -- CanTrain
		'1', -- AllowBarbarians
		'0', -- Range
		'0', -- RangedCombat
		'0', -- Bombard
		NULL, -- PrereqDistrict
		'0', -- Stackable
		'0', -- WMDCapable
		'0', -- IgnoreMoves
		'TECH_LASERS', -- MandatoryObsoleteTech
		NULL), -- PseudoYieldType
--------------------------------------------------------------
		('UNIT_SGA_SKYNET_T800', -- UnitType
		'130', -- Combat
		'4', -- BaseMoves
		'4', -- Maintenance
		'400', -- Cost
		'ADVISOR_CONQUEST', -- AdvisorType
		'4', -- BaseSightRange
		'1', -- ZoneOfControl
		'DOMAIN_LAND', -- Domain
		'FORMATION_CLASS_LAND_COMBAT', -- FormationClass
		'LOC_UNIT_SGA_SKYNET_T800_NAME', -- Name
		'LOC_SGA_SKYNET_T800_DESCRIPTION', -- Description
		'TECH_LASERS', -- PrereqTech
		'PROMOTION_CLASS_SGA_SKYNET_HK_PROMOTIONS', -- PromotionClass
		'TRAIT_CIVILIZATION_SGA_SKYNET_HUNTER_KILLERS', -- TraitType
		'YIELD_GOLD', -- PurchaseYield
		'1', -- CanTargetAir
		'1', -- CanTrain
		'0', -- AllowBarbarians
		'0', -- Range
		'0', -- RangedCombat
		'0', -- Bombard
		NULL, -- PrereqDistrict
		'0', -- Stackable
		'0', -- WMDCapable
		'0', -- IgnoreMoves
		NULL, -- MandatoryObsoleteTech
		NULL), -- PseudoYieldType
--------------------------------------------------------------
		('UNIT_SGA_SKYNET_T900', -- UnitType
		'135', -- Combat
		'6', -- BaseMoves
		'6', -- Maintenance
		'800', -- Cost
		'ADVISOR_CONQUEST', -- AdvisorType
		'6', -- BaseSightRange
		'1', -- ZoneOfControl
		'DOMAIN_LAND', -- Domain
		'FORMATION_CLASS_LAND_COMBAT', -- FormationClass
		'LOC_UNIT_SGA_SKYNET_T900_NAME', -- Name
		'LOC_SGA_SKYNET_T900_DESCRIPTION', -- Description
		'TECH_ROBOTICS', -- PrereqTech
		'PROMOTION_CLASS_SGA_SKYNET_HK_PROMOTIONS', -- PromotionClass
		'TRAIT_CIVILIZATION_SGA_SKYNET_HUNTER_KILLERS', -- TraitType
		'YIELD_GOLD', -- PurchaseYield
		'1', -- CanTargetAir
		'1', -- CanTrain
		'0', -- AllowBarbarians
		'0', -- Range
		'0', -- RangedCombat
		'0', -- Bombard
		NULL, -- PrereqDistrict
		'0', -- Stackable
		'0', -- WMDCapable
		'0', -- IgnoreMoves
		NULL, -- MandatoryObsoleteTech
		NULL), -- PseudoYieldType
--------------------------------------------------------------
		('UNIT_SGA_SKYNET_T810', -- UnitType
		'130', -- Combat
		'3', -- BaseMoves
		'5', -- Maintenance
		'700', -- Cost
		'ADVISOR_CONQUEST', -- AdvisorType
		'4', -- BaseSightRange
		'1', -- ZoneOfControl
		'DOMAIN_LAND', -- Domain
		'FORMATION_CLASS_LAND_COMBAT', -- FormationClass
		'LOC_UNIT_SGA_SKYNET_T810_NAME', -- Name
		'LOC_SGA_SKYNET_T810_DESCRIPTION', -- Description
		'TECH_ROBOTICS', -- PrereqTech
		'PROMOTION_CLASS_SGA_SKYNET_T810_PROMOTIONS', -- PromotionClass
		'TRAIT_CIVILIZATION_SGA_SKYNET_HUNTER_KILLERS', -- TraitType
		'YIELD_GOLD', -- PurchaseYield
		'1', -- CanTargetAir
		'1', -- CanTrain
		'0', -- AllowBarbarians
		'2', -- Range
		'120', -- RangedCombat
		'0', -- Bombard
		NULL, -- PrereqDistrict
		'0', -- Stackable
		'0', -- WMDCapable
		'0', -- IgnoreMoves
		NULL, -- MandatoryObsoleteTech
		NULL), -- PseudoYieldType
--------------------------------------------------------------
		('UNIT_SGA_SKYNET_T825', -- UnitType
		'120', -- Combat
		'4', -- BaseMoves
		'5', -- Maintenance
		'400', -- Cost
		'ADVISOR_CONQUEST', -- AdvisorType
		'5', -- BaseSightRange
		'1', -- ZoneOfControl
		'DOMAIN_LAND', -- Domain
		'FORMATION_CLASS_LAND_COMBAT', -- FormationClass
		'LOC_UNIT_SGA_SKYNET_T825_NAME', -- Name
		'LOC_SGA_SKYNET_T825_DESCRIPTION', -- Description
		'TECH_LASERS', -- PrereqTech
		'PROMOTION_CLASS_SGA_SKYNET_HK_PROMOTIONS', -- PromotionClass
		'TRAIT_CIVILIZATION_SGA_SKYNET_HUNTER_KILLERS', -- TraitType
		'YIELD_GOLD', -- PurchaseYield
		'1', -- CanTargetAir
		'1', -- CanTrain
		'0', -- AllowBarbarians
		'2', -- Range
		'125', -- RangedCombat
		'0', -- Bombard
		NULL, -- PrereqDistrict
		'0', -- Stackable
		'0', -- WMDCapable
		'0', -- IgnoreMoves
		NULL, -- MandatoryObsoleteTech
		NULL), -- PseudoYieldType
--------------------------------------------------------------
		('UNIT_SGA_SKYNET_HK_TANK', -- UnitType
		'120', -- Combat
		'2', -- BaseMoves
		'5', -- Maintenance
		'500', -- Cost
		'ADVISOR_CONQUEST', -- AdvisorType
		'5', -- BaseSightRange
		'1', -- ZoneOfControl
		'DOMAIN_LAND', -- Domain
		'FORMATION_CLASS_LAND_COMBAT', -- FormationClass
		'LOC_UNIT_SGA_SKYNET_HK_TANK_NAME', -- Name
		'LOC_SGA_SKYNET_HK_TANK_DESCRIPTION', -- Description
		'TECH_COMBUSTION', -- PrereqTech
		'PROMOTION_CLASS_SGA_SKYNET_HK_PROMOTIONS', -- PromotionClass
		'TRAIT_CIVILIZATION_SGA_SKYNET_HUNTER_KILLERS', -- TraitType
		'YIELD_GOLD', -- PurchaseYield
		'1', -- CanTargetAir
		'1', -- CanTrain
		'0', -- AllowBarbarians
		'3', -- Range
		'125', -- RangedCombat
		'0', -- Bombard
		NULL, -- PrereqDistrict
		'0', -- Stackable
		'0', -- WMDCapable
		'0', -- IgnoreMoves
		'TECH_COMPOSITES', -- MandatoryObsoleteTech
		NULL), -- PseudoYieldType
--------------------------------------------------------------
		('UNIT_SGA_SKYNET_HK_SPIDER_TANK', -- UnitType
		'145', -- Combat
		'8', -- BaseMoves
		'8', -- Maintenance
		'1300', -- Cost
		'ADVISOR_CONQUEST', -- AdvisorType
		'6', -- BaseSightRange
		'1', -- ZoneOfControl
		'DOMAIN_LAND', -- Domain
		'FORMATION_CLASS_LAND_COMBAT', -- FormationClass
		'LOC_UNIT_SGA_SKYNET_HK_SPIDER_TANK_NAME', -- Name
		'LOC_SGA_SKYNET_HK_SPIDER_TANK_DESCRIPTION', -- Description
		'TECH_COMPOSITES', -- PrereqTech
		'PROMOTION_CLASS_SGA_SKYNET_SPIDER_PROMOTIONS', -- PromotionClass
		'TRAIT_CIVILIZATION_SGA_SKYNET_HUNTER_KILLERS', -- TraitType
		'YIELD_GOLD', -- PurchaseYield
		'1', -- CanTargetAir
		'1', -- CanTrain
		'0', -- AllowBarbarians
		'0', -- Range
		'0', -- RangedCombat
		'0', -- Bombard
		NULL, -- PrereqDistrict
		'0', -- Stackable
		'0', -- WMDCapable
		'0', -- IgnoreMoves
		NULL, -- MandatoryObsoleteTech
		NULL), -- PseudoYieldType
--------------------------------------------------------------
		('UNIT_SGA_SKYNET_HK_FIGHTER', -- UnitType
		'125', -- Combat
		'15', -- BaseMoves
		'5', -- Maintenance
		'400', -- Cost
		'ADVISOR_CONQUEST', -- AdvisorType
		'7', -- BaseSightRange
		'0', -- ZoneOfControl
		'DOMAIN_AIR', -- Domain
		'FORMATION_CLASS_AIR', -- FormationClass
		'LOC_UNIT_SGA_SKYNET_HK_FIGHTER_NAME', -- Name
		'LOC_SGA_SKYNET_HK_FIGHTER_DESCRIPTION', -- Description
		'TECH_STEALTH_TECHNOLOGY', -- PrereqTech
		'PROMOTION_CLASS_AIR_FIGHTER', -- PromotionClass
		'TRAIT_CIVILIZATION_SGA_SKYNET_HUNTER_KILLERS', -- TraitType
		'YIELD_GOLD', -- PurchaseYield
		'1', -- CanTargetAir
		'1', -- CanTrain
		'0', -- AllowBarbarians
		'15', -- Range
		'130', -- RangedCombat
		'0', -- Bombard
		'DISTRICT_AERODROME', -- PrereqDistrict
		'1', -- Stackable
		'0', -- WMDCapable
		'1', -- IgnoreMoves
		NULL, -- MandatoryObsoleteTech
		'PSEUDOYIELD_UNIT_AIR_COMBAT'), -- PseudoYieldType
--------------------------------------------------------------
		('UNIT_SGA_SKYNET_HK_BOMBER', -- UnitType
		'145', -- Combat
		'20', -- BaseMoves
		'7', -- Maintenance
		'800', -- Cost
		'ADVISOR_CONQUEST', -- AdvisorType
		'15', -- BaseSightRange
		'0', -- ZoneOfControl
		'DOMAIN_AIR', -- Domain
		'FORMATION_CLASS_AIR', -- FormationClass
		'LOC_UNIT_SGA_SKYNET_HK_BOMBER_NAME', -- Name
		'LOC_SGA_SKYNET_HK_BOMBER_DESCRIPTION', -- Description
		'TECH_STEALTH_TECHNOLOGY', -- PrereqTech
		'PROMOTION_CLASS_AIR_BOMBER', -- PromotionClass
		'TRAIT_CIVILIZATION_SGA_SKYNET_HUNTER_KILLERS', -- TraitType
		'YIELD_GOLD', -- PurchaseYield
		'1', -- CanTargetAir
		'1', -- CanTrain
		'0', -- AllowBarbarians
		'20', -- Range
		'135', -- RangedCombat
		'160', -- Bombard
		'DISTRICT_AERODROME', -- PrereqDistrict
		'1', -- Stackable
		'1', -- WMDCapable
		'1', -- IgnoreMoves
		NULL, -- MandatoryObsoleteTech
		'PSEUDOYIELD_UNIT_AIR_COMBAT'), -- PseudoYieldType
--------------------------------------------------------------
		('UNIT_SGA_SKYNET_HK_AERIAL', -- UnitType
		'140', -- Combat
		'9', -- BaseMoves
		'7', -- Maintenance
		'900', -- Cost
		'ADVISOR_CONQUEST', -- AdvisorType
		'10', -- BaseSightRange
		'1', -- ZoneOfControl
		'DOMAIN_LAND', -- Domain
		'FORMATION_CLASS_LAND_COMBAT', -- FormationClass
		'LOC_UNIT_SGA_SKYNET_HK_AERIAL_NAME', -- Name
		'LOC_SGA_SKYNET_HK_AERIAL_DESCRIPTION', -- Description
		'TECH_STEALTH_TECHNOLOGY', -- PrereqTech
		'PROMOTION_CLASS_SGA_SKYNET_HK_PROMOTIONS', -- PromotionClass
		'TRAIT_CIVILIZATION_SGA_SKYNET_HUNTER_KILLERS', -- TraitType
		'YIELD_GOLD', -- PurchaseYield
		'1', -- CanTargetAir
		'1', -- CanTrain
		'0', -- AllowBarbarians
		'2', -- Range
		'125', -- RangedCombat
		'0', -- Bombard
		NULL, -- PrereqDistrict
		'0', -- Stackable
		'1', -- WMDCapable
		'0', -- IgnoreMoves
		NULL, -- MandatoryObsoleteTech
		NULL); -- PseudoYieldType

INSERT INTO Unit_BuildingPrereqs (Unit, PrereqBuilding)
VALUES	-- TERMINATOR UNITS
		('UNIT_SGA_SKYNET_T600', 'BUILDING_SGA_SKYNET_TIER_1_TERMINATOR_FACTORY'),
		('UNIT_SGA_SKYNET_T800', 'BUILDING_SGA_SKYNET_TIER_2_TERMINATOR_FACTORY'),
		('UNIT_SGA_SKYNET_T900', 'BUILDING_SGA_SKYNET_TIER_3_TERMINATOR_FACTORY'),
		('UNIT_SGA_SKYNET_T810', 'BUILDING_SGA_SKYNET_TIER_3_TERMINATOR_FACTORY'),
		('UNIT_SGA_SKYNET_T825', 'BUILDING_SGA_SKYNET_TIER_2_TERMINATOR_FACTORY'),
		-- NON TERMINATOR UNITS
		('UNIT_SGA_SKYNET_HK_TANK', 'BUILDING_SGA_SKYNET_TIER_1_HK_GROUND_FACTORY'),
		('UNIT_SGA_SKYNET_HK_SPIDER_TANK', 'BUILDING_SGA_SKYNET_TIER_2_HK_GROUND_FACTORY'),
		('UNIT_SGA_SKYNET_HK_FIGHTER', 'BUILDING_SGA_SKYNET_TIER_1_HK_AERIAL_FACTORY'),
		('UNIT_SGA_SKYNET_HK_BOMBER', 'BUILDING_SGA_SKYNET_TIER_2_HK_AERIAL_FACTORY'),
		('UNIT_SGA_SKYNET_HK_AERIAL', 'BUILDING_SGA_SKYNET_TIER_2_HK_AERIAL_FACTORY');

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType)
VALUES	-- TERMINATOR UNITS
		('UNIT_SGA_SKYNET_T600', 'UNIT_INFANTRY'),
		('UNIT_SGA_SKYNET_T800', 'UNIT_MECHANIZED_INFANTRY'),
		('UNIT_SGA_SKYNET_T900', 'UNIT_MODERN_AT'),
		('UNIT_SGA_SKYNET_T810', 'UNIT_ROCKET_ARTILLERY'),
		('UNIT_SGA_SKYNET_T825', 'UNIT_MACHINE_GUN'),
		-- NON TERMINATOR UNITS
		('UNIT_SGA_SKYNET_HK_TANK', 'UNIT_TANK'),
		('UNIT_SGA_SKYNET_HK_SPIDER_TANK', 'UNIT_MODERN_ARMOR'),
		('UNIT_SGA_SKYNET_HK_FIGHTER', 'UNIT_JET_FIGHTER'),
		('UNIT_SGA_SKYNET_HK_BOMBER', 'UNIT_JET_BOMBER'),
		('UNIT_SGA_SKYNET_HK_AERIAL', 'UNIT_HELICOPTER');

INSERT INTO UnitAiInfos (UnitType, AiType)
VALUES	
-------------------------------------------------------------- TERMINATOR UNITS -------------------------------------------------------------- 
		('UNIT_SGA_SKYNET_T600', 'UNITAI_COMBAT'),
		('UNIT_SGA_SKYNET_T600', 'UNITAI_EXPLORE'),
		('UNIT_SGA_SKYNET_T600', 'UNITTYPE_MELEE'),
		('UNIT_SGA_SKYNET_T600', 'UNITTYPE_LAND_COMBAT'),
--------------------------------------------------------------
		('UNIT_SGA_SKYNET_T800', 'UNITAI_COMBAT'),
		('UNIT_SGA_SKYNET_T800', 'UNITAI_EXPLORE'),
		('UNIT_SGA_SKYNET_T800', 'UNITTYPE_MELEE'),
		('UNIT_SGA_SKYNET_T800', 'UNITTYPE_SIEGE'),
		('UNIT_SGA_SKYNET_T800', 'UNITTYPE_SIEGE_ALL'),
		('UNIT_SGA_SKYNET_T800', 'UNITTYPE_LAND_COMBAT'),
--------------------------------------------------------------
		('UNIT_SGA_SKYNET_T900', 'UNITAI_COMBAT'),
		('UNIT_SGA_SKYNET_T900', 'UNITAI_EXPLORE'),
		('UNIT_SGA_SKYNET_T900', 'UNITTYPE_MELEE'),
		('UNIT_SGA_SKYNET_T900', 'UNITTYPE_SIEGE'),
		('UNIT_SGA_SKYNET_T900', 'UNITTYPE_SIEGE_ALL'),
		('UNIT_SGA_SKYNET_T900', 'UNITTYPE_LAND_COMBAT'),
--------------------------------------------------------------
		('UNIT_SGA_SKYNET_T810', 'UNITAI_COMBAT'),
		('UNIT_SGA_SKYNET_T810', 'UNITAI_EXPLORE'),
		('UNIT_SGA_SKYNET_T810', 'UNITTYPE_MELEE'),
		('UNIT_SGA_SKYNET_T810', 'UNITTYPE_RANGED'),
		('UNIT_SGA_SKYNET_T810', 'UNITTYPE_SIEGE'),
		('UNIT_SGA_SKYNET_T810', 'UNITTYPE_SIEGE_ALL'),
		('UNIT_SGA_SKYNET_T810', 'UNITTYPE_LAND_COMBAT'),
--------------------------------------------------------------
		('UNIT_SGA_SKYNET_T825', 'UNITAI_COMBAT'),
		('UNIT_SGA_SKYNET_T825', 'UNITAI_EXPLORE'),
		('UNIT_SGA_SKYNET_T825', 'UNITTYPE_RANGED'),
		('UNIT_SGA_SKYNET_T825', 'UNITTYPE_LAND_COMBAT'),
-------------------------------------------------------------- NON TERMINATOR UNITS --------------------------------------------------------------
		('UNIT_SGA_SKYNET_HK_TANK', 'UNITAI_COMBAT'),
		('UNIT_SGA_SKYNET_HK_TANK', 'UNITAI_EXPLORE'),
		('UNIT_SGA_SKYNET_HK_TANK', 'UNITTYPE_MELEE'),
		('UNIT_SGA_SKYNET_HK_TANK', 'UNITTYPE_CAVALRY'),
		('UNIT_SGA_SKYNET_HK_TANK', 'UNITTYPE_SIEGE'),
		('UNIT_SGA_SKYNET_HK_TANK', 'UNITTYPE_SIEGE_ALL'),
		('UNIT_SGA_SKYNET_HK_TANK', 'UNITTYPE_LAND_COMBAT'),
--------------------------------------------------------------
		('UNIT_SGA_SKYNET_HK_SPIDER_TANK', 'UNITAI_COMBAT'),
		('UNIT_SGA_SKYNET_HK_SPIDER_TANK', 'UNITAI_EXPLORE'),
		('UNIT_SGA_SKYNET_HK_SPIDER_TANK', 'UNITTYPE_MELEE'),
		('UNIT_SGA_SKYNET_HK_SPIDER_TANK', 'UNITTYPE_CAVALRY'),
		('UNIT_SGA_SKYNET_HK_SPIDER_TANK', 'UNITTYPE_SIEGE'),
		('UNIT_SGA_SKYNET_HK_SPIDER_TANK', 'UNITTYPE_SIEGE_ALL'),
		('UNIT_SGA_SKYNET_HK_SPIDER_TANK', 'UNITTYPE_LAND_COMBAT'),
--------------------------------------------------------------
		('UNIT_SGA_SKYNET_HK_FIGHTER', 'UNITAI_COMBAT'),
		('UNIT_SGA_SKYNET_HK_FIGHTER', 'UNITAI_EXPLORE'),
		('UNIT_SGA_SKYNET_HK_FIGHTER', 'UNITTYPE_AIR'),
		('UNIT_SGA_SKYNET_HK_FIGHTER', 'UNITTYPE_AIR_SIEGE'),
--------------------------------------------------------------
		('UNIT_SGA_SKYNET_HK_BOMBER', 'UNITAI_COMBAT'),
		('UNIT_SGA_SKYNET_HK_BOMBER', 'UNITAI_EXPLORE'),
		('UNIT_SGA_SKYNET_HK_BOMBER', 'UNITTYPE_NUCLEAR'),
		('UNIT_SGA_SKYNET_HK_BOMBER', 'UNITTYPE_AIR_SIEGE'),
--------------------------------------------------------------
		('UNIT_SGA_SKYNET_HK_AERIAL', 'UNITAI_COMBAT'),
		('UNIT_SGA_SKYNET_HK_AERIAL', 'UNITAI_EXPLORE'),
		('UNIT_SGA_SKYNET_HK_AERIAL', 'UNITTYPE_MELEE'),
		('UNIT_SGA_SKYNET_HK_AERIAL', 'UNITTYPE_CAVALRY'),
		('UNIT_SGA_SKYNET_HK_AERIAL', 'UNITTYPE_SIEGE'),
		('UNIT_SGA_SKYNET_HK_AERIAL', 'UNITTYPE_SIEGE_ALL'),
		('UNIT_SGA_SKYNET_HK_AERIAL', 'UNITTYPE_LAND_COMBAT');

-------------------------------------------------------------- ABILITIES
INSERT INTO UnitAbilities (UnitAbilityType, Name, Description, Inactive)
VALUES	('ABILITY_SGA_SKYNET_T900_ANTI_GDR', 'LOC_ABILITY_SGA_SKYNET_T900_ANTI_GDR_NAME', 'LOC_ABILITY_SGA_SKYNET_T900_ANTI_GDR_DESCRIPTION', 0);

INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId)
VALUES	('ABILITY_SGA_SKYNET_T900_ANTI_GDR', 'T900_ANTI_GDR');

-------------------------------------------------------------- PROMOTIONS
INSERT INTO UnitPromotionClasses (PromotionClassType, Name)
VALUES	('PROMOTION_CLASS_SGA_SKYNET_HK_PROMOTIONS', 'PROMOTION_CLASS_SGA_SKYNET_HK_NAME'),
		('PROMOTION_CLASS_SGA_SKYNET_SPIDER_PROMOTIONS', 'PROMOTION_CLASS_SGA_SKYNET_SPIDER_NAME'),
		('PROMOTION_CLASS_SGA_SKYNET_T810_PROMOTIONS', 'PROMOTION_CLASS_SGA_SKYNET_T810_NAME');

INSERT INTO UnitPromotions (UnitPromotionType, Name, Description, Level, Column, PromotionClass)
VALUES	
-------------------------------------------------------------- HUNTER KILLER PROMOTION CLASS --------------------------------------------------------------
		-- 1
		('PROMOTION_SGA_SKYNET_HK_ATTACK_AND_MOVE', 'LOC_PROMOTION_SGA_SKYNET_HK_ATTACK_AND_MOVE_NAME', 'LOC_PROMOTION_SGA_SKYNET_HK_ATTACK_AND_MOVE_DESCRIPTION', 1, 1, 'PROMOTION_CLASS_SGA_SKYNET_HK_PROMOTIONS'),
		('PROMOTION_SGA_SKYNET_HK_SIEGE', 'LOC_PROMOTION_SGA_SKYNET_HK_SIEGE_NAME', 'LOC_PROMOTION_SGA_SKYNET_HK_SIEGE_DESCRIPTION', 1, 3, 'PROMOTION_CLASS_SGA_SKYNET_HK_PROMOTIONS'),
		-- 2
		('PROMOTION_SGA_SKYNET_HK_BLITZ', 'LOC_PROMOTION_SGA_SKYNET_HK_BLITZ_NAME', 'LOC_PROMOTION_SGA_SKYNET_HK_BLITZ_DESCRIPTION', 2, 1, 'PROMOTION_CLASS_SGA_SKYNET_HK_PROMOTIONS'),
		('PROMOTION_SGA_SKYNET_HK_MOVEMENT', 'LOC_PROMOTION_SGA_SKYNET_HK_MOVEMENT_NAME', 'LOC_PROMOTION_SGA_SKYNET_HK_MOVEMENT_DESCRIPTION', 2, 3, 'PROMOTION_CLASS_SGA_SKYNET_HK_PROMOTIONS'),
		-- 3
		('PROMOTION_SGA_SKYNET_HK_SUPPORT', 'LOC_PROMOTION_SGA_SKYNET_HK_SUPPORT_NAME', 'LOC_PROMOTION_SGA_SKYNET_HK_SUPPORT_DESCRIPTION', 3, 1, 'PROMOTION_CLASS_SGA_SKYNET_HK_PROMOTIONS'),
		('PROMOTION_SGA_SKYNET_HK_FLANK', 'LOC_PROMOTION_SGA_SKYNET_HK_FLANK_NAME', 'LOC_PROMOTION_SGA_SKYNET_HK_FLANK_DESCRIPTION', 3, 3, 'PROMOTION_CLASS_SGA_SKYNET_HK_PROMOTIONS'),
		-- 4
		('PROMOTION_SGA_SKYNET_HK_WMD_RESISTANCE', 'LOC_PROMOTION_SGA_SKYNET_HK_WMD_RESISTANCE_NAME', 'LOC_PROMOTION_SGA_SKYNET_HK_WMD_RESISTANCE_DESCRIPTION', 4, 1, 'PROMOTION_CLASS_SGA_SKYNET_HK_PROMOTIONS'),
		('PROMOTION_SGA_SKYNET_HK_PLASMA', 'LOC_PROMOTION_SGA_SKYNET_HK_PLASMA_NAME', 'LOC_PROMOTION_SGA_SKYNET_HK_PLASMA_DESCRIPTION', 4, 3, 'PROMOTION_CLASS_SGA_SKYNET_HK_PROMOTIONS'),
-------------------------------------------------------------- HK SPIDER TANK PROMOTION CLASS --------------------------------------------------------------
		-- 1
		('PROMOTION_SGA_SKYNET_SPIDER_NH101', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_NH101_NAME', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_NH101_DESCRIPTION', 1, 1, 'PROMOTION_CLASS_SGA_SKYNET_SPIDER_PROMOTIONS'),
		('PROMOTION_SGA_SKYNET_SPIDER_ATTACK_AND_MOVE', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_ATTACK_AND_MOVE_NAME', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_ATTACK_AND_MOVE_DESCRIPTION', 1, 3, 'PROMOTION_CLASS_SGA_SKYNET_SPIDER_PROMOTIONS'),
		-- 2
		('PROMOTION_SGA_SKYNET_SPIDER_NH107', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_NH107_NAME', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_NH107_DESCRIPTION', 2, 1, 'PROMOTION_CLASS_SGA_SKYNET_SPIDER_PROMOTIONS'),
		('PROMOTION_SGA_SKYNET_SPIDER_SIEGE', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_SIEGE_NAME', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_SIEGE_DESCRIPTION', 2, 3, 'PROMOTION_CLASS_SGA_SKYNET_SPIDER_PROMOTIONS'),
		-- 3
		('PROMOTION_SGA_SKYNET_SPIDER_NH201', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_NH201_NAME', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_NH201_DESCRIPTION', 3, 1, 'PROMOTION_CLASS_SGA_SKYNET_SPIDER_PROMOTIONS'),
		('PROMOTION_SGA_SKYNET_SPIDER_BLITZ', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_BLITZ_NAME', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_BLITZ_DESCRIPTION', 3, 3, 'PROMOTION_CLASS_SGA_SKYNET_SPIDER_PROMOTIONS'),
		-- 4
		('PROMOTION_SGA_SKYNET_SPIDER_NH207', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_NH207_NAME', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_NH207_DESCRIPTION', 4, 1, 'PROMOTION_CLASS_SGA_SKYNET_SPIDER_PROMOTIONS'),
		('PROMOTION_SGA_SKYNET_SPIDER_PLASMA', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_PLASMA_NAME', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_PLASMA_DESCRIPTION', 4, 3, 'PROMOTION_CLASS_SGA_SKYNET_SPIDER_PROMOTIONS'),
		-- 5
		('PROMOTION_SGA_SKYNET_SPIDER_NH301', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_NH301_NAME', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_NH301_DESCRIPTION', 5, 1, 'PROMOTION_CLASS_SGA_SKYNET_SPIDER_PROMOTIONS'),
		('PROMOTION_SGA_SKYNET_SPIDER_WMD_RESISTANCE', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_WMD_RESISTANCE_NAME', 'LOC_PROMOTION_SGA_SKYNET_SPIDER_WMD_RESISTANCE_DESCRIPTION', 5, 3, 'PROMOTION_CLASS_SGA_SKYNET_SPIDER_PROMOTIONS'),
-------------------------------------------------------------- T810 PROMOTION CLASS --------------------------------------------------------------
		-- 1
		('PROMOTION_SGA_SKYNET_T810_T833', 'LOC_PROMOTION_SGA_SKYNET_T810_T833_NAME', 'LOC_PROMOTION_SGA_SKYNET_T810_T833_DESCRIPTION', 1, 1, 'PROMOTION_CLASS_SGA_SKYNET_T810_PROMOTIONS'),
		('PROMOTION_SGA_SKYNET_T810_SIEGE', 'LOC_PROMOTION_SGA_SKYNET_T810_SIEGE_NAME', 'LOC_PROMOTION_SGA_SKYNET_T810_SIEGE_DESCRIPTION', 1, 3, 'PROMOTION_CLASS_SGA_SKYNET_T810_PROMOTIONS'),
		-- 2
		('PROMOTION_SGA_SKYNET_T810_T883', 'LOC_PROMOTION_SGA_SKYNET_T810_T883_NAME', 'LOC_PROMOTION_SGA_SKYNET_T810_T883_DESCRIPTION', 2, 1, 'PROMOTION_CLASS_SGA_SKYNET_T810_PROMOTIONS'),
		('PROMOTION_SGA_SKYNET_T810_BLITZ', 'LOC_PROMOTION_SGA_SKYNET_T810_BLITZ_NAME', 'LOC_PROMOTION_SGA_SKYNET_T810_BLITZ_DESCRIPTION', 2, 3, 'PROMOTION_CLASS_SGA_SKYNET_T810_PROMOTIONS'),
		-- 3
		('PROMOTION_SGA_SKYNET_T810_T897', 'LOC_PROMOTION_SGA_SKYNET_T810_T897_NAME', 'LOC_PROMOTION_SGA_SKYNET_T810_T897_DESCRIPTION', 3, 1, 'PROMOTION_CLASS_SGA_SKYNET_T810_PROMOTIONS'),
		('PROMOTION_SGA_SKYNET_T810_WMD_RESISTANCE', 'LOC_PROMOTION_SGA_SKYNET_T810_WMD_RESISTANCE_NAME', 'LOC_PROMOTION_SGA_SKYNET_T810_WMD_RESISTANCE_DESCRIPTION', 3, 3, 'PROMOTION_CLASS_SGA_SKYNET_T810_PROMOTIONS');

INSERT INTO UnitPromotionPrereqs (UnitPromotion, PrereqUnitPromotion)
VALUES	
-------------------------------------------------------------- HUNTER KILLER PROMOTION CLASS --------------------------------------------------------------
		('PROMOTION_SGA_SKYNET_HK_WMD_RESISTANCE', 'PROMOTION_SGA_SKYNET_HK_PLASMA'),
		('PROMOTION_SGA_SKYNET_HK_PLASMA', 'PROMOTION_SGA_SKYNET_HK_SUPPORT'),
		('PROMOTION_SGA_SKYNET_HK_PLASMA', 'PROMOTION_SGA_SKYNET_HK_FLANK'),
		('PROMOTION_SGA_SKYNET_HK_SUPPORT', 'PROMOTION_SGA_SKYNET_HK_MOVEMENT'),
		('PROMOTION_SGA_SKYNET_HK_SUPPORT', 'PROMOTION_SGA_SKYNET_HK_BLITZ'),
		('PROMOTION_SGA_SKYNET_HK_FLANK', 'PROMOTION_SGA_SKYNET_HK_MOVEMENT'),
		('PROMOTION_SGA_SKYNET_HK_FLANK', 'PROMOTION_SGA_SKYNET_HK_BLITZ'),
		('PROMOTION_SGA_SKYNET_HK_MOVEMENT', 'PROMOTION_SGA_SKYNET_HK_SIEGE'),
		('PROMOTION_SGA_SKYNET_HK_MOVEMENT', 'PROMOTION_SGA_SKYNET_HK_ATTACK_AND_MOVE'),
		('PROMOTION_SGA_SKYNET_HK_BLITZ', 'PROMOTION_SGA_SKYNET_HK_SIEGE'),
		('PROMOTION_SGA_SKYNET_HK_BLITZ', 'PROMOTION_SGA_SKYNET_HK_ATTACK_AND_MOVE'),
-------------------------------------------------------------- HK SPIDER TANK PROMOTION CLASS --------------------------------------------------------------
		-- PATH 1
		('PROMOTION_SGA_SKYNET_SPIDER_NH301', 'PROMOTION_SGA_SKYNET_SPIDER_NH207'),
		('PROMOTION_SGA_SKYNET_SPIDER_NH207', 'PROMOTION_SGA_SKYNET_SPIDER_NH201'),
		('PROMOTION_SGA_SKYNET_SPIDER_NH201', 'PROMOTION_SGA_SKYNET_SPIDER_NH107'),
		('PROMOTION_SGA_SKYNET_SPIDER_NH107', 'PROMOTION_SGA_SKYNET_SPIDER_NH101'),
		-- PATH 2
		('PROMOTION_SGA_SKYNET_SPIDER_WMD_RESISTANCE', 'PROMOTION_SGA_SKYNET_SPIDER_PLASMA'),
		('PROMOTION_SGA_SKYNET_SPIDER_WMD_RESISTANCE', 'PROMOTION_SGA_SKYNET_SPIDER_NH207'),
		('PROMOTION_SGA_SKYNET_SPIDER_PLASMA', 'PROMOTION_SGA_SKYNET_SPIDER_BLITZ'),
		('PROMOTION_SGA_SKYNET_SPIDER_PLASMA', 'PROMOTION_SGA_SKYNET_SPIDER_NH201'),
		('PROMOTION_SGA_SKYNET_SPIDER_BLITZ', 'PROMOTION_SGA_SKYNET_SPIDER_SIEGE'),
		('PROMOTION_SGA_SKYNET_SPIDER_BLITZ', 'PROMOTION_SGA_SKYNET_SPIDER_NH107'),
		('PROMOTION_SGA_SKYNET_SPIDER_SIEGE', 'PROMOTION_SGA_SKYNET_SPIDER_ATTACK_AND_MOVE'),
		('PROMOTION_SGA_SKYNET_SPIDER_SIEGE', 'PROMOTION_SGA_SKYNET_SPIDER_NH101'),
-------------------------------------------------------------- T810 PROMOTION CLASS --------------------------------------------------------------
		-- PATH 1
		('PROMOTION_SGA_SKYNET_T810_T897', 'PROMOTION_SGA_SKYNET_T810_T883'),
		('PROMOTION_SGA_SKYNET_T810_T883', 'PROMOTION_SGA_SKYNET_T810_T833'),
		-- PATH 2
		('PROMOTION_SGA_SKYNET_T810_WMD_RESISTANCE', 'PROMOTION_SGA_SKYNET_T810_BLITZ'),
		('PROMOTION_SGA_SKYNET_T810_WMD_RESISTANCE', 'PROMOTION_SGA_SKYNET_T810_T883'),
		('PROMOTION_SGA_SKYNET_T810_BLITZ', 'PROMOTION_SGA_SKYNET_T810_SIEGE'),
		('PROMOTION_SGA_SKYNET_T810_BLITZ', 'PROMOTION_SGA_SKYNET_T810_T883');

INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
VALUES	-- ABILITIES
		('T900_ANTI_GDR', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'T900_ANTI_GDR_REQUIREMENT'),
-------------------------------------------------------------- PROMOTIONS
-------------------------------------------------------------- HUNTER KILLER PROMOTION CLASS --------------------------------------------------------------
		('HK_ATTACK_PLUS_MOVE', 'MODIFIER_PLAYER_UNIT_ADJUST_ATTACK_AND_MOVE', NULL),
		('HK_SIEGE', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'SHELLS_REQUIREMENTS'),
		('HK_BLITZ', 'MODIFIER_UNIT_ADJUST_NUM_ATTACKS', NULL),
		('HK_MOVEMENT', 'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT', NULL),
		('HK_SUPPORT', 'MODIFIER_PLAYER_UNIT_ADJUST_SUPPORT_BONUS_MODIFIER', NULL),
		('HK_FLANK', 'MODIFIER_PLAYER_UNIT_ADJUST_FLANKING_BONUS_MODIFIER', NULL),
		('HK_WMD_RESISTANCE', 'MODIFIER_PLAYER_UNIT_ADJUST_WMD_RESISTANCE', NULL),
		('HK_PLASMA', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', NULL),
-------------------------------------------------------------- HK SPIDER TANK PROMOTION CLASS --------------------------------------------------------------
		('SPIDER_NH101', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', NULL),
		('SPIDER_ATTACK_AND_MOVE', 'MODIFIER_PLAYER_UNIT_ADJUST_ATTACK_AND_MOVE', NULL),
		('SPIDER_NH107', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', NULL),
		('SPIDER_SIEGE', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'SHELLS_REQUIREMENTS'),
		('SPIDER_NH201', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', NULL),
		('SPIDER_BLITZ', 'MODIFIER_UNIT_ADJUST_NUM_ATTACKS', NULL),
		('SPIDER_NH207', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', NULL),
		('SPIDER_PLASMA', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', NULL),
		('SPIDER_NH301', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', NULL),
		('SPIDER_WMD_RESISTANCE', 'MODIFIER_PLAYER_UNIT_ADJUST_WMD_RESISTANCE', NULL),
-------------------------------------------------------------- T810 PROMOTION CLASS --------------------------------------------------------------
		('T810_T833', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', NULL),
		('T810_SIEGE', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'SHELLS_REQUIREMENTS'),
		('T810_T883', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', NULL),
		('T810_BLITZ', 'MODIFIER_UNIT_ADJUST_NUM_ATTACKS', NULL),
		('T810_T897', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', NULL),
		('T810_WMD_RESISTANCE', 'MODIFIER_PLAYER_UNIT_ADJUST_WMD_RESISTANCE', NULL);

INSERT INTO UnitPromotionModifiers (UnitPromotionType, ModifierId)
VALUES	
-------------------------------------------------------------- HUNTER KILLER PROMOTION CLASS --------------------------------------------------------------
		('PROMOTION_SGA_SKYNET_HK_ATTACK_AND_MOVE', 'HK_ATTACK_PLUS_MOVE'),
		('PROMOTION_SGA_SKYNET_HK_SIEGE', 'HK_SIEGE'),
		('PROMOTION_SGA_SKYNET_HK_BLITZ', 'HK_BLITZ'),
		('PROMOTION_SGA_SKYNET_HK_MOVEMENT', 'HK_MOVEMENT'),
		('PROMOTION_SGA_SKYNET_HK_SUPPORT', 'HK_SUPPORT'),
		('PROMOTION_SGA_SKYNET_HK_FLANK', 'HK_FLANK'),
		('PROMOTION_SGA_SKYNET_HK_WMD_RESISTANCE', 'HK_WMD_RESISTANCE'),
		('PROMOTION_SGA_SKYNET_HK_PLASMA', 'HK_PLASMA'),
-------------------------------------------------------------- HK SPIDER TANK PROMOTION CLASS --------------------------------------------------------------
		('PROMOTION_SGA_SKYNET_SPIDER_NH101', 'SPIDER_NH101'),
		('PROMOTION_SGA_SKYNET_SPIDER_ATTACK_AND_MOVE', 'SPIDER_ATTACK_AND_MOVE'),
		('PROMOTION_SGA_SKYNET_SPIDER_NH107', 'SPIDER_NH107'),
		('PROMOTION_SGA_SKYNET_SPIDER_SIEGE', 'SPIDER_SIEGE'),
		('PROMOTION_SGA_SKYNET_SPIDER_NH201', 'SPIDER_NH201'),
		('PROMOTION_SGA_SKYNET_SPIDER_BLITZ', 'SPIDER_BLITZ'),
		('PROMOTION_SGA_SKYNET_SPIDER_NH207', 'SPIDER_NH207'),
		('PROMOTION_SGA_SKYNET_SPIDER_PLASMA', 'SPIDER_PLASMA'),
		('PROMOTION_SGA_SKYNET_SPIDER_NH301', 'SPIDER_NH301'),
		('PROMOTION_SGA_SKYNET_SPIDER_WMD_RESISTANCE', 'SPIDER_WMD_RESISTANCE'),
-------------------------------------------------------------- T810 PROMOTION CLASS --------------------------------------------------------------
		('PROMOTION_SGA_SKYNET_T810_T833', 'T810_T833'),
		('PROMOTION_SGA_SKYNET_T810_SIEGE', 'T810_SIEGE'),
		('PROMOTION_SGA_SKYNET_T810_T883', 'T810_T883'),
		('PROMOTION_SGA_SKYNET_T810_BLITZ', 'T810_BLITZ'),
		('PROMOTION_SGA_SKYNET_T810_T897', 'T810_T897'),
		('PROMOTION_SGA_SKYNET_T810_WMD_RESISTANCE', 'T810_WMD_RESISTANCE');

INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES	-- ABILITIES
		('T900_ANTI_GDR', 'Amount', '25'),
-------------------------------------------------------------- PROMOTIONS
-------------------------------------------------------------- HUNTER KILLER PROMOTION CLASS --------------------------------------------------------------
		('HK_ATTACK_PLUS_MOVE', 'CanMove', '1'),
		('HK_SIEGE', 'Amount', '30'),
		('HK_BLITZ', 'Amount', '1'),
		('HK_MOVEMENT', 'CanMove', '1'),
		('HK_FLANK', 'Percent', '100'),
		('HK_SUPPORT', 'Percent', '100'),
		('HK_WMD_RESISTANCE', 'Blast', '50'),
		('HK_WMD_RESISTANCE', 'Fallout', '100'),
		('HK_PLASMA', 'Amount', '11'),
-------------------------------------------------------------- HK SPIDER TANK PROMOTION CLASS --------------------------------------------------------------
		('SPIDER_NH101', 'Amount', '1'),
		('SPIDER_ATTACK_AND_MOVE', 'CanMove', '1'),
		('SPIDER_NH107', 'Amount', '2'),
		('SPIDER_SIEGE', 'Amount', '50'),
		('SPIDER_NH201', 'Amount', '4'),
		('SPIDER_BLITZ', 'Amount', '1'),
		('SPIDER_NH207', 'Amount', '7'),
		('SPIDER_PLASMA', 'Amount', '5'),
		('SPIDER_NH301', 'Amount', '11'),
		('SPIDER_WMD_RESISTANCE', 'Blast', '50'),
		('SPIDER_WMD_RESISTANCE', 'Fallout', '100'),
-------------------------------------------------------------- T810 PROMOTION CLASS --------------------------------------------------------------
		('T810_T833', 'Amount', '5'),
		('T810_SIEGE', 'Amount', '40'),
		('T810_T883', 'Amount', '8'),
		('T810_BLITZ', 'Amount', '1'),
		('T810_T897', 'Amount', '13'),
		('T810_WMD_RESISTANCE', 'Blast', '50'),
		('T810_WMD_RESISTANCE', 'Fallout', '100');

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)
VALUES	('T900_ANTI_GDR_REQUIREMENT', 'REQUIREMENTSET_TEST_ANY');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId)
VALUES	('T900_ANTI_GDR_REQUIREMENT', 'REQUIREMENT_ANTI_GDR_OPPONENT');

INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType)
VALUES	('REQUIREMENT_ANTI_GDR_OPPONENT', 'REQUIREMENT_OPPONENT_UNIT_TAG_MATCHES');

INSERT OR IGNORE INTO RequirementArguments (RequirementId, Name, Value)
VALUES	('REQUIREMENT_ANTI_GDR_OPPONENT', 'Tag', 'CLASS_GIANT_DEATH_ROBOT');

INSERT INTO ModifierStrings(ModifierId, Context, Text)
VALUES	('T900_ANTI_GDR', 'Preview', 'LOC_T900_ANTI_GDR_DESCRIPTION');