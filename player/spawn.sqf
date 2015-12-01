_thePlayer = _this select 0;

_thePlayer setPos [-20000 - (random 10000), 5000 + random 15000, 0];

removeGoggles _thePlayer;
removeAllWeapons _thePlayer;
removeAllContainers _thePlayer;
// removeAllAssignedItems _thePlayer;
removeHeadgear _thePlayer;

player setVariable ["parachuteIn", false];
player setVariable ["friendlySpawn", "false"];
_ok = createDialog "SPAWN_DIALOG";

while {dialog} do
{
	_fTowns = ([_thePlayer] call player_fnc_friendlyTowns);// + ["debug", "kamenka"];
	
	lbClear 1602;
	{
		_idx = lbAdd [1602, markerText _x];
		lbSetData [1602, _idx, _x];
	} forEach _fTowns;
	sleep 1;
};

_towns = [] call config_fnc_getTowns select 0;
_gear = [side _thePlayer] call config_fnc_getGear;
_uniforms = _gear select 0;
_vests = _gear select 1;

_markerName = "";
if ((player getVariable "friendlySpawn") != "false") then
{
	_markerName = (player getVariable "friendlySpawn");
} else
{
	_chosenIdx = random ((count _towns) - 1);
	_markerName = _towns select _chosenIdx;
};
_mPos = markerPos _markerName;
_mSize = markerSize _markerName;

_radius  = (_mSize select 0);

// hint ["%1, %2, %3", spawnTown, _mPos, _radius];

// _spawnPos = [_mPos, _radius, 10] call util_fnc_safeSpot;

_offset = [_radius] call util_fnc_randRadius;

_xPos = (_mPos select 0) + (_offset select 0);
_yPos = (_mPos select 1) + (_offset select 1);
_mPos = [_xPos, _yPos, (_mPos select 2)];

_spawnPos = _mPos findEmptyPosition [0, 10, "CAManBase"];

_thePlayer enableFatigue false;

[_thePlayer] call player_fnc_addActions;

_uniform = _uniforms select floor(random(count _uniforms));
_vest = _vests select floor(random(count _vests));

_thePlayer forceAddUniform _uniform;
_thePlayer addVest _vest;

if (player getVariable "parachuteIn") then
{
	_spawnPos set [2, 1000];
	_thePlayer addBackpack "B_Parachute";
};

_thePlayer setPos _spawnPos;
_thePlayer setVariable ["waterStat", 100];
_thePlayer setVariable ["foodStat", 100];

_now = date;
_year = _now select 0;
_month = _now select 1;
_day = _now select 2;
_hour = _now select 3;
_min  = _now select 4;

// [_thePlayer, [2, 1, 2, 2, 0, 2, 0, 0]] call plank_api_fnc_forceAddFortifications;

// hint format ["Spawning at %1", markerText _markerName];
[
	markerText _markerName,
	"Chernarus",
	format ["%1-%2-%3 | %4:%5", _year, _month, _day, _hour, _min]
] spawn BIS_fnc_infoText;

// diag_log format["%1", [_thePlayer] call player_fnc_friendlyTowns];

// _veh = createVehicle ["Steerable_Parachute_F", _spawnPos, [], 0, "FLY"];
// player moveInDriver _veh;