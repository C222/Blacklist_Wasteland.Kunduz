#include "config\globalConfig.sqf"

diag_log format ["############################# %1 #############################", missionName];
diag_log format ["T%1,DT%2,F%3", time, diag_tickTime, diag_frameno];
diag_log format ["WASTELAND SERVER - Initilizing Server"];
diag_log format ["Towns are: %1", [] call config_fnc_getTowns select 0];

call compile preprocessFileLineNumbers "plank\plank_init.sqf";
call compile preprocessFileLineNumbers "plank\arma3_fortifications.sqf";

{
	// diag_log format ["Hiding: %1", _x];
	_x setMarkerAlpha 0;
} forEach ([] call config_fnc_getTowns select 0) + ([] call config_fnc_getTowns select 1) + ([] call config_fnc_getTowns select 2);

diag_log format ["Spawning Vehicles"];

for "_spawnCounter" from 1 to (vehicleCount select 0) do
{
	// diag_log format ["%1", _spawnCounter];
	[_spawnCounter, 0, 0] call vehicle_fnc_spawn;
};
for "_spawnCounter" from 1 to (vehicleCount select 1) do
{
	// diag_log format ["%1", _spawnCounter];
	[_spawnCounter, 1, 0] call vehicle_fnc_spawn;
};
for "_spawnCounter" from 1 to (vehicleCount select 2) do
{
	// diag_log format ["%1", _spawnCounter];
	[_spawnCounter, 2, 0] call vehicle_fnc_spawn;
};
for "_spawnCounter" from 1 to (vehicleCount select 3) do
{
	// diag_log format ["%1", _spawnCounter];
	[_spawnCounter, 3, 2] call vehicle_fnc_spawn;
};
for "_spawnCounter" from 1 to 300 do
{
	// diag_log format ["%1", _spawnCounter];
	[_spawnCounter, 0] call plank_fnc_spawnForts;
};

diag_log format ["Spawning server agents."];
[] spawn server_fnc_mapAgent;
[] spawn server_fnc_missionAgent;
// [] spawn server_fnc_foodAgent;

sleep 5;
readyForSpawn = true;
publicVariable "readyForSpawn";
diag_log format ["Done"];