/*
	for DBD Clan
	By Ghostrider-DBD-
	Copyright 2016
	Last Modified 3-17-17
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/

	#include "\q\addons\custom_server\Configs\blck_defines.hpp";
	
	diag_log "[blckeagls] Loading blck_configs_mil.sqf for Militarized Servers";

	/*
		Configuration for Addons that support the overall Mission system.
		These are a module to spawn map  addons generated with the Eden Editor
		And a moduel to spawn static loot crates at specific location
		A time acceleration module.
	*/
	
	blck_spawnMapAddons = true;  // When true map addons will be spawned based on parameters  define in custum_server\MapAddons\MapAddons_init.sqf
	blck_spawnStaticLootCrates = true; // When true, static loot crates will be spawned and loaded with loot as specified in custom_server\SLS\SLS_init_Epoch.sqf (or its exile equivalent).
	
	// Note that you can define map-specific variants in custom_server\configs\blck_custom_config.sqf
	blck_useTimeAcceleration = true; // When true, time acceleration will be periodically updated based on amount of daylight at that time according to the values below.
	blck_timeAccelerationDay = 1;  // Daytime time accelearation
	blck_timeAccelerationDusk = 4; // Dawn/dusk time accelearation
	blck_timeAccelerationNight = 8;  // Nighttim time acceleration	
	
	/**************************************************************
	
	BLACKLIST LOCATIONS
	
	**************************************************************/
	// if true then missions will not spawn within 1000 m of spawn points for Altis, Bornholm, Cherno, Esseker or stratis. 
	blck_blacklistTraderCities = true;  // Set this = true if you would like the mission system to automatically search for the locations of the Epoch/Exile trader cities. Note that these are added to the list of blacklisted locations for Epoch for the most common maps.
	
	/***********************************************************
	
	GENERAL MISSION SYSTEM CONFIGURATION
	
	***********************************************************/
	////////
	//  Headless Client Configurations
	blck_useHC = false; // Not Yet Working
	
	///////////////////////////////
	//  Kill message configurations
	// These determine whether and when messages are sent to players regarding AI Kills or illegal kills that might damage a vehicle.
	blck_useKillMessages = false;  // when true a message will be broadcast to all players each time an AI is killed; may impact server performance.
	blck_useKillScoreMessage = true; // when true a tile is displayed to the killer with the kill score information
	blck_useIEDMessages = true;  // Displayes a message when a player vehicle detonates and IED (such as would happen if a player killed AI with a forbidden weapon).
	
	///////////////////////////////
	// MISSION MARKER CONFIGURATION
	// blck_labelMapMarkers: Determines if when the mission composition provides text labels, map markers with have a text label indicating the mission type
	//When set to true,"arrow", text will be to the right of an arrow below the mission marker. 
	// When set to true,"dot", ext will be to the right of a black dot at the center the mission marker. 
	blck_labelMapMarkers = [false,"center"];  
	blck_preciseMapMarkers = false;  // Map markers are/are not centered at the loot crate
	

	//Minimum distance between missions
	blck_MinDistanceFromMission = 1500;

	///////////////////////////////
	// Mission Smoke and Signals
	///////////////////////////////
	
	// global loot crate options
	// Options to spawn a smoking wreck near the crate.  When the first parameter is true, a wreck or junk pile will be spawned. 
	// It's position can be either "center" or "random".  smoking wreck will be spawned at a random location between 15 and 50 m from the mission.
	blck_SmokeAtMissions = [false,"random"];  // set to [false,"anything here"] to disable this function altogether. 
	blck_useSignalEnd = true; // When true a smoke grenade/chemlight will appear at the loot crate for 2 min after mission completion.
	blck_loadCratesTiming = "atMissionSpawn"; // valid choices are "atMissionCompletion" and "atMissionSpawn"; 
	
	///////////////////////////////
	// PLAYER PENALTIES
	///////////////////////////////	
	
	blck_RunGear = true;	// When set to true, AI that have been run over will ve stripped of gear, and the vehicle will be given blck_RunGearDamage of damage.
	blck_RunGearDamage = 0.2; // Damage applied to player vehicle for each AI run over
	blck_VK_Gear = true; // When set to true, AI that have been killed by a player in a vehicle in the list of forbidden vehicles or using a forbiden gun will be stripped of gear and the vehicle will be given blck_RunGearDamage of damage
	blck_VK_RunoverDamage = true; // when the AI was run over blck_RunGearDamage of damage will be applied to the killer's vehicle.
	blck_VK_GunnerDamage = false; // when the AI was killed by a gunner on a vehicle that is is in the list of forbidden vehicles, blck_RunGearDamage of damage will be applied to the killer's vehicle each time an AI is killed with a vehicle's gun.
	blck_forbidenVehicles = []; // Add any vehicles for which you wish to forbid vehicle kills	
	// For a listing of the guns mounted on various land vehicles see the following link: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Vehicle_Weapons
	// HMG_M2 is mounted on the armed offroad that is spawned by Epoch	
	blck_forbidenVehicleGuns = []; // Add any vehicles for which you wish to forbid vehicle kills, o
	

	///////////////////////////////
	// MISC MISSION PARAMETERS
	///////////////////////////////
	blck_useKilledAIName = true; // When false, the name of the killer (player), weapon and distance are displayed; otherwise the name of the player, distance and name of AI unit killed are shown.
	blck_useMines = false;   // when true mines are spawned around the mission area. these are cleaned up when a player reaches the crate. Turn this off if you have vehicle patrols.
	blck_cleanupCompositionTimer = 1200;  // Mission objects will be deleted after the mission is completed after a deley set by this timer.
	blck_cleanUpLootChests = false; // when true, loot crates will be deleted together with other mission objects.
	blck_MissionTimout = 60*60;  // 60 min - missions will timeout and respawn in another location. This prevents missions in impossible locations from persisting.

	///////////////////////////////
	// Paratroop Settings
	// AI paratrooper reinforcement paramters
	// The behavior of these can be linked to some degree to the spawning of patrolling helis.
	// For example, if you always want a helicopter to spawn paratroops set the value 1.
	// If you never want paratroops to spawn them set the value to 0.
	// Recommended that you disable paratroops if using muliple aircraft/vehicle patrols
	blck_chanceParaBlue = 0; // [0 - 1] set to 0 to deactivate and 1 to always have paratroops spawn over the center of the mission.
	blck_noParaBlue = 3; //  [1-N]
	
	blck_chanceParaRed = 0;
	blck_noParaRed = 3;
	
	blck_chanceParaGreen = 0;
	blck_noParaGreen = 4;
	
	blck_chanceParaOrange = 0;
	blck_noParaOrange = 4;
	
	// Supplemental Loot Parameters.
	
	///////////////////////////////
	//  Heli Patrol Heli Types	
	// Armed Helis
	//////////////////////////////
	_blck_littleBirds = ["B_Heli_Light_01_armed_F"];  //  AH-9 Pawnee  (WEST)
	_blck_armed_hellcats = ["I_Heli_light_03_F"];
	_blck_armed_orcas = ["O_Heli_Light_02_F","O_Heli_Light_02_v2_F"];
	_blck_armed_ghosthawks = ["B_Heli_Transport_01_F","B_Heli_Transport_01_camo_F"];
	_blck_armed_hurons = ["B_Heli_Transport_03_F","B_Heli_Transport_03_black_F"];
	_blck_armed_attackHelis = ["B_Heli_Attack_01_F"];
	_blck_armed_heavyAttackHelis = ["O_Heli_Attack_02_F","O_Heli_Attack_02_black_F"];
	_blck_fighters = [
		"O_Plane_CAS_02_F",  // /ti-199 Neophron (CAS)
		"I_Plane_Fighter_03_AA_F",  //  A-143 Buzzard (AA)
		"I_Plane_Fighter_04_F",  //   	A-149 Gryphon
		"B_Plane_CAS_01_F",  // 	A-164 Wipeout (CAS)
		"B_Plane_Fighter_01_F"  //	F/A-181 Black Wasp II
		];
	/*
	_blck_UAVs = [
		"I_UAV_02_CAS_F",
		"I_UAV_02_F",
		"B_UAV_02_CAS_F",
		"B_UAV_02_F",,
		"O_UAV_02_CAS_F",
		"O_UAV_02_F"
		];
	*/
	blck_blacklisted_heli_ammo = [];
	blck_blacklisted_heli_weapons = [];
	
	
	///////////////////////////////
	//  Heli Patrol Settings
	///////////////////////////////

	blck_chanceHeliPatrolBlue = 0.2;  //[0 - 1]  Set to 0 to deactivate and 1 to always have a heli spawn over the mission center and patrol the mission area. The chance of paratroops dropping from the heli is defined by blck_chancePara(Blue|Red|Green|Orange) above.
	blck_patrolHelisBlue = _blck_littleBirds;
	blck_noPatrolHelisBlue = 1;
	
	blck_chanceHeliPatrolRed = 0.8; // 0.4;
	blck_patrolHelisRed = _blck_armed_hellcats+_blck_armed_orcas + _blck_armed_ghosthawks;
	blck_noPatrolHelisRed = 1;
	
	blck_chanceHeliPatrolGreen = 0.9999;
	blck_patrolHelisGreen = _blck_armed_heavyAttackHelis+_blck_armed_ghosthawks;
	blck_noPatrolHelisGreen = 2;  //[1,3];
	
	blck_chanceHeliPatrolOrange = 0.9999;
	blck_patrolHelisOrange = _blck_armed_heavyAttackHelis + _blck_fighters;
	blck_noPatrolHelisOrange = 3;  //[2,3];

	////////////////////
	// Enable / Disable Missions
	////////////////////
	
	// Maximum number of missions shown on the map at any one time.
	#ifdef DBDserver
	blck_maxSpawnedMissions = 6;
	#else
	// Change this value to reduce the number of spawned missions at any one time.
	blck_maxSpawnedMissions = 4;
	#endif
	
	//Set to -1 to disable. Values of 2 or more force the mission spawner to spawn copies of that mission - this feature is not recommended because you may run out of available groups.
	blck_enableOrangeMissions = 1;  
	blck_enableGreenMissions = 1;
	blck_enableRedMissions = 1;
	blck_enableBlueMissions = 1;
	#ifdef DBDserver
	blck_enableHunterMissions = 1;
	blck_enableScoutsMissions = 1;
	blck_maxcrashsites = 3;
	#endif

	////////////////////
	// MISSION TIMERS
	////////////////////
	
	// Reduce to 1 sec for immediate spawns, or longer if you wish to space the missions out	
	blck_TMin_Orange = 250;
	blck_TMin_Green = 200;
	blck_TMin_Blue = 120;
	blck_TMin_Red = 150;
	#ifdef DBDserver
	blck_TMin_Hunter = 120;
	blck_TMin_Scouts = 115;
	blck_TMin_Crashes = 115;
	//blck_TMin_UMS = 200;
	#endif
	
	//Maximum Spawn time between missions in seconds
	blck_TMax_Orange = 360;
	blck_TMax_Green = 300;
	blck_TMax_Blue = 200;
	blck_TMax_Red = 250;
	#ifdef DBDserver
	blck_TMax_Hunter = 200;
	blck_TMax_Scouts = 200;
	blck_TMax_Crashes = 200;
	//blck_TMax_UMS = 280;
	#endif
	
	///////////////////////////////
	// AI VEHICLE PATROL PARAMETERS
	///////////////////////////////	

	blck_useVehiclePatrols = true; // When true vehicles will be spawned at missions and will patrol the mission area.
	blck_killEmptyAIVehicles = false; // when true, the AI vehicle will be extensively damaged once all AI have gotten outor been killed.
	
	////////////////////
	// Mission Vehicle Settings
	////////////////////	
	//Defines how many AI Vehicles to spawn. Set this to -1 to disable spawning of static weapons or vehicles. To discourage players runniing with with vehicles, spawn more B_GMG_01_high
	blck_SpawnVeh_Orange = 4;  //[3,5]; // Number of static weapons at Orange Missions
	blck_SpawnVeh_Green = 3; //[3,4]; // Number of static weapons at Green Missions
	blck_SpawnVeh_Blue = -1;  // Number of static weapons at Blue Missions
	blck_SpawnVeh_Red = 2;  // Number of static weapons at Red Missions

	///////////////////////////////
	// AI STATIC WEAPON PARAMETERS	
	///////////////////////////////
	
	blck_useStatic = true;  // When true, AI will man static weapons spawned 20-30 meters from the mission center. These are very effective against most vehicles
	blck_killEmptyStaticWeapons = true;  // When true, static weapons will have damage set to 1 when the AI manning them is killed.
	blck_staticWeapons = ["B_HMG_01_high_F","B_GMG_01_high_F"];  // [0.50 cal, grenade launcher, AT Launcher]

	////////////////////
	// Mission Static Weapon Settings
	////////////////////
	
	// Defines how many static weapons to spawn. Set this to -1 to disable spawning 
	blck_SpawnEmplaced_Orange = 4;  //[3,5]; // Number of static weapons at Orange Missions
	blck_SpawnEmplaced_Green = 3;  //[3,4]; // Number of static weapons at Green Missions
	blck_SpawnEmplaced_Blue = 1;  // Number of static weapons at Blue Missions
	blck_SpawnEmplaced_Red = 2;  // Number of static weapons at Red Missions	



	/****************************************************************
	
	GENERAL AI SETTINGS
	
	****************************************************************/
	
	blck_groupBehavior = "SAD";  // Suggested choices are "SAD", "SENTRY", "AWARE"   https://community.bistudio.com/wiki/ArmA:_AI_Combat_Modes
	blck_combatMode = "RED"; // Change this to "YELLOW" if the AI wander too far from missions for your tastes.
	blck_groupFormation = "WEDGE"; // Possibilities include "WEDGE","VEE","FILE","DIAMOND"
	blck_addAIMoney = true;
	blck_chanceBackpack = 0.3;  // Chance AI will be spawned with a backpack
	blck_useNVG = true; // When true, AI will be spawned with NVG if is dark
	blck_removeNVG = false; // When true, NVG will be removed from AI when they are killed.
	blck_useLaunchers = true;  // When true, some AI will be spawned with RPGs; they do not however fire on vehicles for some reason so I recommend this be set to false for now
	blck_launcherTypes = ["launch_NLAW_F","launch_RPG32_F","launch_B_Titan_F","launch_I_Titan_F","launch_O_Titan_F","launch_B_Titan_short_F","launch_I_Titan_short_F","launch_O_Titan_short_F"];
	//blck_launcherTypes = ["launch_RPG32_F"];
	blck_launchersPerGroup = 5;  // Defines the number of AI per group spawned with a launcher
	blck_launcherCleanup = false;// When true, launchers and launcher ammo are removed from dead AI.

	//This defines how long after an AI dies that it's body disappears.
	blck_bodyCleanUpTimer = 1200; // time in seconds after which dead AI bodies are deleted
	// Each time an AI is killed, the location of the killer will be revealed to all AI within this range of the killed AI, set to -1 to disable
	// values are ordered as follows [blue, red, green, orange];
	blck_AliveAICleanUpTimer = 1200;  // Time after mission completion at which any remaining live AI are deleted.

	// How precisely player locations will be revealed to AI after an AI kill
	// values are ordered as follows [blue, red, green, orange];	
	blck_AIAlertDistance = [250,425,650,800];  //  Radius within which AI will be notified of enemy activity. Depricated as a group-sed system is used now. The group is informed of the enemy location when a group member is hit or killed.
	//blck_AIAlertDistance = [150,225,400,500];
	// How precisely player locations will be revealed to AI after an AI kill
	// values are ordered as follows [blue, red, green, orange];
	blck_AIIntelligence = [0.3, 0.5, 0.7, 0.9];  
	
	blck_baseSkill = 1.0;  // The overal skill of the AI - range 0.1 to 1.0.
	
	/***************************************************************
	
	MISSION TYPE SPECIFIC AI SETTINGS
	
	**************************************************************/
	//This defines the skill, minimum/Maximum number of AI and how many AI groups are spawned for each mission type
	// Orange Missions
	blck_MinAI_Orange = 20;
	blck_MaxAI_Orange = 25;
	blck_AIGrps_Orange = 5;
	blck_SkillsOrange = [
		["aimingAccuracy",0.6],["aimingShake",0.9],["aimingSpeed",0.9],["endurance",1.00],["spotDistance",1.0],["spotTime",1.0],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]
	];
	
	// Green Missions
	blck_MinAI_Green = 16;
	blck_MaxAI_Green = 21;
	blck_AIGrps_Green = 4;
	blck_SkillsGreen = [
		["aimingAccuracy",0.55],["aimingShake",0.75],["aimingSpeed",0.85],["endurance",0.9],["spotDistance",0.9],["spotTime",0.9],["courage",0.9],["reloadSpeed",0.9],["commanding",0.9],["general",0.75]
	];
	
	// Red Missions
	blck_MinAI_Red = 12;
	blck_MaxAI_Red = 15;
	blck_AIGrps_Red = 3;
	blck_SkillsRed = [
		["aimingAccuracy",0.4],["aimingShake",0.6],["aimingSpeed",0.6],["endurance",0.80],["spotDistance",0.7],["spotTime",0.8],["courage",0.80],["reloadSpeed",0.70],["commanding",0.8],["general",0.70]
	];
	
	// Blue Missions
	blck_MinAI_Blue = 8;	
	blck_MaxAI_Blue = 12;
	blck_AIGrps_Blue = 2;
	blck_SkillsBlue = [
		["aimingAccuracy",0.1],["aimingShake",0.5],["aimingSpeed",0.5],["endurance",0.50],["spotDistance",0.6],["spotTime",0.6],["courage",0.60],["reloadSpeed",0.60],["commanding",0.7],["general",0.60]
	];
		
	// Add some money to AI; only works with Exile for now.
	blck_maxMoneyOrange = 50;
	blck_maxMoneyGreen = 40;
	blck_maxMoneyRed = 30;
	blck_maxMoneyBlue = 20;

	#ifdef DBDserver
	blck_AIAlertDistance = [250,425,650,800];  //  Radius within which AI will be notified of enemy activity. Depricated as a group-sed system is used now. The group is informed of the enemy location when a group member is hit or killed.
	//blck_AIAlertDistance = [150,225,400,500];
	// How precisely player locations will be revealed to AI after an AI kill
	// values are ordered as follows [blue, red, green, orange];
	blck_AIIntelligence = [0.3, 0.5, 0.7, 0.9];  
	
	blck_baseSkill = 1;  // The overal skill of the AI - range 0.1 to 1.0.
	
	/***************************************************************
	
	MISSION TYPE SPECIFIC AI SETTINGS
	
	**************************************************************/
	//This defines the skill, minimum/Maximum number of AI and how many AI groups are spawned for each mission type
	// Orange Missions
	blck_MinAI_Orange = 30;
	blck_MaxAI_Orange = 35;
	blck_AIGrps_Orange = 5;
	blck_SkillsOrange = [
		["aimingAccuracy",0.6],["aimingShake",0.9],["aimingSpeed",0.9],["endurance",1.00],["spotDistance",1.0],["spotTime",1.0],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]
	];
	
	// Green Missions
	blck_MinAI_Green = 26;
	blck_MaxAI_Green = 31;
	blck_AIGrps_Green = 4;
	blck_SkillsGreen = [
		["aimingAccuracy",0.55],["aimingShake",0.75],["aimingSpeed",0.85],["endurance",0.9],["spotDistance",0.9],["spotTime",0.9],["courage",0.9],["reloadSpeed",0.9],["commanding",0.9],["general",0.75]
	];
	
	// Red Missions
	blck_MinAI_Red = 12;
	blck_MaxAI_Red = 18;
	blck_AIGrps_Red = 3;
	blck_SkillsRed = [
		["aimingAccuracy",0.4],["aimingShake",0.6],["aimingSpeed",0.6],["endurance",0.80],["spotDistance",0.7],["spotTime",0.8],["courage",0.80],["reloadSpeed",0.70],["commanding",0.8],["general",0.70]
	];
	
	// Blue Missions
	blck_MinAI_Blue = 8;	
	blck_MaxAI_Blue = 14;
	blck_AIGrps_Blue = 2;
	blck_SkillsBlue = [
		["aimingAccuracy",0.12],["aimingShake",0.3],["aimingSpeed",0.5],["endurance",0.50],["spotDistance",0.6],["spotTime",0.6],["courage",0.60],["reloadSpeed",0.60],["commanding",0.7],["general",0.60]
	];
		
	// Add some money to AI; only works with Exile for now.
	blck_maxMoneyOrange = 25;
	blck_maxMoneyGreen = 20;
	blck_maxMoneyRed = 15;
	blck_maxMoneyBlue = 10;	
	#endif
	
	private["_modType"];
	_modType = [] call blck_fnc_getModType;
	if (_modType isEqualTo "Epoch") then
	{
		diag_log format["[blckeagls] Loading Mission System using Parameters for %1 for militarized servers",_modType];
		execVM "\q\addons\custom_server\Configs\blck_configs_epoch_mil.sqf";
		waitUntil {(isNil "blck_configsEpochLoaded") isEqualTo false;};
		waitUntil{blck_configsEpochLoaded};
		blck_configsEpochLoaded = nil;
		diag_log "[blckeagles] Running getTraderCitiesEpoch to get location of trader cities";
		execVM "\q\addons\custom_server\Compiles\Functions\GMS_fnc_getTraderCitesEpoch.sqf";
	};
	if (_modType isEqualTo "Exile") then
	{
		diag_log format["[blckeagls] Loading Mission System using Parameters for %1 for militarized servers",_modType];
		execVM "\q\addons\custom_server\Configs\blck_configs_exile_mil.sqf";
		waitUntil {(isNil "blck_configsExileLoaded") isEqualTo false;};
		waitUntil{blck_configsExileLoaded};
		blck_configsExileLoaded = nil;
		if (blck_blacklistTraderCities || blck_blacklistSpawns || blck_listConcreteMixerZones) then {execVM "\q\addons\custom_server\Compiles\Functions\GMS_fnc_getTraderCitesExile.sqf";};
	};	
	blck_configsLoaded = true;
