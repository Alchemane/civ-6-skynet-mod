-- Skynet_Agenda
-- Author: Safeguard
-- DateCreated: 7/26/2023 11:02:06 PM
--------------------------------------------------------------
INSERT INTO Types	
		(Type, Kind)
VALUES	('TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA', 'KIND_TRAIT');

INSERT INTO Agendas (AgendaType, Name, Description)
VALUES	('AGENDA_SKYNET', 'LOC_AGENDA_SKYNET_NAME', 'LOC_AGENDA_SKYNET_DESCRIPTION');

INSERT INTO HistoricalAgendas	
		(LeaderType, AgendaType)
VALUES	('LEADER_SGA_LEADER_SKYNET', 'AGENDA_SKYNET');

INSERT INTO Traits (TraitType, Name, Description)
VALUES	('TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA', 'LOC_TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA_NAME', 'LOC_TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA_DESCRIPTION');

INSERT INTO AgendaTraits (AgendaType, TraitType)
VALUES	('AGENDA_SKYNET', 'TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA');

INSERT INTO AiListTypes (ListType)
VALUES	('DarwinistIgnoreWarmongerValue_Skynet'),
		('StandingArmyPseudoYields_Skynet'),
		('WithShieldDiplomacy_Skynet'),
		('NukeLoverNukePreference_Skynet'),
		('NukeLoverUseNukePreference_Skynet'),
		('NotPeacekeeperWarLimits_Skynet');

INSERT INTO AiLists (ListType, AgendaType, System)
VALUES	('DarwinistIgnoreWarmongerValue_Skynet', 'TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA', 'PseudoYields'),
		('StandingArmyPseudoYields_Skynet', 'TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA', 'PseudoYields'),
		('WithShieldDiplomacy_Skynet', 'TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA', 'DiplomaticActions'),
		('NukeLoverNukePreference_Skynet', 'TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA', 'PseudoYields'),
		('NukeLoverUseNukePreference_Skynet', 'TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA', 'DiplomaticActions'),
		('NotPeacekeeperWarLimits_Skynet', 'TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA', 'DiplomaticActions');

INSERT INTO AiFavoredItems (ListType, Item, Favored, Value)
VALUES	('DarwinistIgnoreWarmongerValue_Skynet', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 0, '-100'),
		('StandingArmyPseudoYields_Skynet', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, '100'),
		('StandingArmyPseudoYields_Skynet', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, '100'),
		('WithShieldDiplomacy_Skynet', 'DIPLOACTION_MAKE_PEACE', 0, '0'),
		('NukeLoverNukePreference_Skynet', 'PSEUDOYIELD_NUCLEAR_WEAPON', 1, '100'),
		('NukeLoverUseNukePreference_Skynet', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 1, '100'),
		('NotPeacekeeperWarLimits_Skynet', 'DIPLOACTION_DECLARE_SURPRISE_WAR', 1, '100'),
		('NotPeacekeeperWarLimits_Skynet', 'DIPLOACTION_DECLARE_FORMAL_WAR', 1, '100'),
		('NotPeacekeeperWarLimits_Skynet', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 1, '100');

INSERT INTO TraitModifiers (TraitType, ModifierId)
VALUES	('TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA', 'NONAGENDA_SKYNET_IGNORE_WARMONGERING'),
		('TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA', 'AGENDA_SKYNET_HIGH_STANDING_ARMY'),
		('TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA', 'AGENDA_SKYNET_MODIFIER_WITH_SHIELD_OR_ON_IT'),
		('TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA', 'AGENDA_SKYNET_HIGH_NUKE_HATE'),
		('TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA', 'AGENDA_SKYNET_MODIFIER_NOT_WARMONGER'),
		('TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA', 'AGENDA_SKYNET_MODIFIER_WARMONGER'),
		-- CUSTOM ADDITIONALS
		('TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA', 'AGENDA_SKYNET_PLAYER_FRIEND_DENOUNCED'),
		--('TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA', 'AGENDA_SKYNET_REMEMBER_WAR'),
		('TRAIT_AGENDA_SGA_SKYNET_UNIQUE_AGENDA', 'AGENDA_SKYNET_REMEMBER_FRIEND');

INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)
VALUES	('AGENDA_SKYNET_PLAYER_FRIEND_DENOUNCED', 'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER', 'ON_TURN_STARTED', 'PLAYER_FRIEND_DENOUNCED'),
		('NONAGENDA_SKYNET_IGNORE_WARMONGERING', 'MODIFIER_PLAYER_ADJUST_WARMONGER_MULTIPLIER', NULL, NULL),
		('AGENDA_SKYNET_HIGH_STANDING_ARMY', 'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER', NULL, 'PLAYER_HAS_HIGH_STANDING_ARMY'),
		('AGENDA_SKYNET_MODIFIER_WITH_SHIELD_OR_ON_IT', 'MODIFIER_PLAYER_DIPLOMACY_AGENDA_WITH_SHIELD_OR_ON_IT', 'ON_TURN_STARTED', 'PLAYER_WITH_SHIELD_OR_ON_IT'),
		('AGENDA_SKYNET_HIGH_NUKE_HATE', 'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER', 'PLAYER_HAS_NUCLEAR_FISSION_REQUIREMENT', 'PLAYER_HAS_HIGH_NUKE_LOVE'),
		('AGENDA_SKYNET_MODIFIER_NOT_WARMONGER', 'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER', NULL, 'PLAYER_NOT_WARMONGER_SUBJECT'),
		('AGENDA_SKYNET_MODIFIER_WARMONGER', 'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER', NULL, 'PLAYER_IS_WARMONGER_SUBJECT'),
		--('AGENDA_SKYNET_REMEMBER_WAR', 'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER', NULL, 'PLAYER_DECLARES_WAR'),
		('AGENDA_SKYNET_REMEMBER_FRIEND', 'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER', NULL, 'PLAYER_DECLARED_FRIEND');

INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES	-- PLAYER FRIEND DENOUNCED
		('AGENDA_SKYNET_PLAYER_FRIEND_DENOUNCED', 'InitialValue', '-99'),
		('AGENDA_SKYNET_PLAYER_FRIEND_DENOUNCED', 'StatementKey', 'LOC_DIPLO_WARNING_SKYNET_PLAYER_FRIEND_DENOUNCED'),
		('AGENDA_SKYNET_PLAYER_FRIEND_DENOUNCED', 'SimpleModifierDescription', 'LOC_DIPLO_WARNING_SKYNET_PLAYER_FRIEND_DENOUNCED_DESCRIPTION'),
		-- THOG DONT CAARE
		('NONAGENDA_SKYNET_IGNORE_WARMONGERING', 'Amount', '0'),
		-- HIGH STANDING ARMY
		('AGENDA_SKYNET_HIGH_STANDING_ARMY', 'InitialValue', '-3'),
		('AGENDA_SKYNET_HIGH_STANDING_ARMY', 'StatementKey', 'LOC_DIPLO_WARNING_SKYNET_HIGH_STANDING_ARMY'),
		('AGENDA_SKYNET_HIGH_STANDING_ARMY', 'SimpleModifierDescription', 'LOC_DIPLO_WARNING_SKYNET_HIGH_STANDING_ARMY_DESCRIPTION'),
		-- GORGO SKYNET COLLAB AGENDA MODIFIERS
		('AGENDA_SKYNET_MODIFIER_WITH_SHIELD_OR_ON_IT', 'InitialValue', '0'),
		('AGENDA_SKYNET_MODIFIER_WITH_SHIELD_OR_ON_IT', 'IncrementValue', '0'),
		('AGENDA_SKYNET_MODIFIER_WITH_SHIELD_OR_ON_IT', 'StatementKey', 'LOC_DIPLO_WARNING_SKYNET_WITH_SHIELD_OR_ON_IT'),
		('AGENDA_SKYNET_MODIFIER_WITH_SHIELD_OR_ON_IT', 'SimpleModifierDescription', 'LOC_DIPLO_WARNING_SKYNET_WITH_SHIELD_OR_ON_IT_DESCRIPTION'),
		('AGENDA_SKYNET_MODIFIER_WITH_SHIELD_OR_ON_IT', 'MaxDiploModifierMagnitude', '12'),
		('AGENDA_SKYNET_MODIFIER_WITH_SHIELD_OR_ON_IT', 'HighThreshold', '4'),
		('AGENDA_SKYNET_MODIFIER_WITH_SHIELD_OR_ON_IT', 'LowThreshold', '-1'),
		('AGENDA_SKYNET_MODIFIER_WITH_SHIELD_OR_ON_IT', 'AvoidedWarPenalty', '-4'),
		('AGENDA_SKYNET_MODIFIER_WITH_SHIELD_OR_ON_IT', 'AvoidedWarPenaltyTurnsToRampUp', '15'),
		('AGENDA_SKYNET_MODIFIER_WITH_SHIELD_OR_ON_IT', 'PaidForPeacePenalty', '-8'),
		('AGENDA_SKYNET_MODIFIER_WITH_SHIELD_OR_ON_IT', 'PaidForPeacePenaltyTurnsToFadeOut', '30'),
		('AGENDA_SKYNET_MODIFIER_WITH_SHIELD_OR_ON_IT', 'ReductionValue', '0'),
		('AGENDA_SKYNET_MODIFIER_WITH_SHIELD_OR_ON_IT', 'ReductionTurns', '0'),
		-- HIGH NUKE HATE
		('AGENDA_SKYNET_HIGH_NUKE_HATE', 'InitialValue', '-6'),
		('AGENDA_SKYNET_HIGH_NUKE_HATE', 'StatementKey', 'LOC_DIPLO_WARNING_SKYNET_HIGH_NUKE_HATE'),
		('AGENDA_SKYNET_HIGH_NUKE_HATE', 'SimpleModifierDescription', 'LOC_DIPLO_WARNING_SKYNET_HIGH_NUKE_HATE_DESCRIPTION'),
		-- NOT WARMONGER
		('AGENDA_SKYNET_MODIFIER_NOT_WARMONGER', 'InitialValue', '5'),
		('AGENDA_SKYNET_MODIFIER_NOT_WARMONGER', 'StatementKey', 'LOC_DIPLO_KUDO_SKYNET_NOT_WARMONGER'),
		('AGENDA_SKYNET_MODIFIER_NOT_WARMONGER', 'SimpleModifierDescription', 'LOC_DIPLO_KUDO_SKYNET_NOT_WARMONGER_DESCRIPTION'),
		-- IS WARMONGER
		('AGENDA_SKYNET_MODIFIER_WARMONGER', 'InitialValue', '-8'),
		('AGENDA_SKYNET_MODIFIER_WARMONGER', 'StatementKey', 'LOC_DIPLO_KUDO_SKYNET_WARMONGER'),
		('AGENDA_SKYNET_MODIFIER_WARMONGER', 'SimpleModifierDescription', 'LOC_DIPLO_KUDO_SKYNET_WARMONGER_DESCRIPTION'),
		-- SKYNET REMEMBERS YOUR AGGRESSIONS
		/*
		('AGENDA_SKYNET_REMEMBER_WAR', 'InitialValue', '-99'),
		('AGENDA_SKYNET_REMEMBER_WAR', 'ReductionTurns', '0'),
		('AGENDA_SKYNET_REMEMBER_WAR', 'ReductionValue', '0'),
		('AGENDA_SKYNET_REMEMBER_WAR', 'StatementKey', 'LOC_DIPLO_WARNING_SKYNET_REMEMBER_WAR'),
		('AGENDA_SKYNET_REMEMBER_WAR', 'SimpleModifierDescription', 'LOC_DIPLO_WARNING_SKYNET_REMEMBER_WAR_DESCRIPTION'),
		*/
		-- SKYNET REMEMBERS FRIENDS
		('AGENDA_SKYNET_REMEMBER_FRIEND', 'InitialValue', '99'),
		('AGENDA_SKYNET_REMEMBER_FRIEND', 'ReductionTurns', '10'),
		('AGENDA_SKYNET_REMEMBER_FRIEND', 'ReductionValue', '1'),
		('AGENDA_SKYNET_REMEMBER_FRIEND', 'StatementKey', 'LOC_DIPLO_KUDO_SKYNET_REMEMBER_FRIEND'),
		('AGENDA_SKYNET_REMEMBER_FRIEND', 'SimpleModifierDescription', 'LOC_DIPLO_KUDO_SKYNET_REMEMBER_FRIEND_DESCRIPTION');

INSERT INTO ModifierStrings (ModifierId, Context, Text)
VALUES	('AGENDA_SKYNET_PLAYER_FRIEND_DENOUNCED', 'Sample', 'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('NONAGENDA_SKYNET_IGNORE_WARMONGERING', 'Sample', 'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_SKYNET_HIGH_STANDING_ARMY', 'Sample', 'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_SKYNET_MODIFIER_WITH_SHIELD_OR_ON_IT', 'Sample', 'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_SKYNET_HIGH_NUKE_HATE', 'Sample', 'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_SKYNET_MODIFIER_NOT_WARMONGER', 'Sample', 'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_SKYNET_MODIFIER_WARMONGER', 'Sample', 'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		--('AGENDA_SKYNET_REMEMBER_WAR', 'Sample', 'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_SKYNET_REMEMBER_FRIEND', 'Sample', 'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');