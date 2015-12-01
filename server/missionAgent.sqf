diag_log format ["Starting mission agent."];

EAST setFriend [WEST, 0];
EAST setFriend [EAST, 1];
EAST setFriend [RESISTANCE, 0];
EAST setFriend [CIVILIAN, 1];
WEST setFriend [EAST, 0];
WEST setFriend [WEST, 1];
WEST setFriend [RESISTANCE, 0];
WEST setFriend [CIVILIAN, 1];
RESISTANCE setFriend [EAST, 0];
RESISTANCE setFriend [RESISTANCE, 1];
RESISTANCE setFriend [WEST, 0];
RESISTANCE setFriend [CIVILIAN, 1];
CIVILIAN setFriend [EAST, 0];
CIVILIAN setFriend [WEST, 0];
CIVILIAN setFriend [RESISTANCE, 0];

_lastMissionTime = time;
_lastMissionHandle = 0 spawn {};

_missions = [missions_fnc_simpleArmor, missions_fnc_simpleHeli, missions_fnc_townInvasion];

// systemChat "Starting Missions";
while {true} do
{
	// systemChat "Mission Check";
	if (scriptDone _lastMissionHandle) then
	{
		sleep 60;
		_mission = ([_missions] call util_fnc_pickOne) select 0;
		_lastMissionHandle = [] spawn _mission;
	};
	sleep 5;
};