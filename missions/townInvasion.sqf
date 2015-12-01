//BEGIN SETUP
_missions = [] call config_fnc_getTowns select 0;
_missionSpot = [_missions] call util_fnc_pickOne select 0;

_title = "Town Invasion";

_mPos = markerPos _missionSpot;
_mSize = markerSize _missionSpot;
_radius  = (_mSize select 0);

_picture = "\a3\ui_f\data\gui\cfg\Hints\TGuide\fireteam2_ca.paa";
_hint = parseText format [
"<t align='center'><img size='5' image='images\blacklist_icon.paa'/></t><br/>
<t align='center' color='%5' size='1.25'>%1</t><br/>
<t align='center'><img size='5' image='%2'/></t><br/>
<t align='center' color='%5'>Enemies have invaded<t color='%4'> %3</t>.</t>",
_title, _picture, markerText _missionSpot, "#52bf90", "#FFFFFF"];

hint _hint;
[_hint,"hint",true,false] call BIS_fnc_MP;
// [nil,nil,rHINT,_hint] call RE;

_spawnedM = createMarker ["missionMarker", markerPos _missionSpot];
_spawnedM setMarkerShape "ICON";
_spawnedM setMarkerType "hd_destroy";
_spawnedM setMarkerText format ["%1", _title];
_spawnedM setMarkerColor "ColorRed";

_offset = [_radius] call util_fnc_randRadius;

_xPos = (_mPos select 0) + (_offset select 0);
_yPos = (_mPos select 1) + (_offset select 1);
_mPos = [_xPos, _yPos, (_mPos select 2)];

_spawnPos = _mPos findEmptyPosition [0, 50, "B_Heli_Light_01_armed_F"];
_group1 = [5, _spawnPos] call missions_fnc_makeEnemies;
// _group1 move _mPos;
[_group1, _mPos] call BIS_fnc_taskDefend;
[_group1] spawn util_fnc_groupTrack;

_offset = [_radius] call util_fnc_randRadius;

_xPos = (_mPos select 0) + (_offset select 0);
_yPos = (_mPos select 1) + (_offset select 1);
_mPos = [_xPos, _yPos, (_mPos select 2)];

_spawnPos = _mPos findEmptyPosition [0, 50, "B_Heli_Light_01_armed_F"];
_group2 = [5, _spawnPos] call missions_fnc_makeEnemies;
// _group2 move _mPos;
[_group2, _mPos] call BIS_fnc_taskDefend;
[_group2] spawn util_fnc_groupTrack;

_offset = [_radius] call util_fnc_randRadius;

_xPos = (_mPos select 0) + (_offset select 0);
_yPos = (_mPos select 1) + (_offset select 1);
_mPos = [_xPos, _yPos, (_mPos select 2)];

_spawnPos = _mPos findEmptyPosition [0, 50, "B_Heli_Light_01_armed_F"];
_group3 = [5, _spawnPos] call missions_fnc_makeEnemies;
// _group3 move _mPos;
[_group3, _mPos] call BIS_fnc_taskDefend;
[_group3] spawn util_fnc_groupTrack;
//END SETUP

//BEGIN IN PROGRESS
_done = false;
while{!_done} do
{
	if (([_group1] call util_fnc_groupDead) and ([_group2] call util_fnc_groupDead) and ([_group3] call util_fnc_groupDead)) then
	{
		_done = true;
		_hint = parseText format ["<t align='center'><img size='5' image='images\blacklist_icon.paa'/></t><br/>
<t align='center' color='%4' size='1.25'>%1</t><br/>
<t align='center'><img size='5' image='%2'/></t><br/>
<t align='center' color='%5'>Enemies in <t color='%4'>%3</t> have been neutralized.</t>",
		_title, _picture, markerText _missionSpot, "#52bf90", "#FFFFFF"];
		hint _hint;
		[_hint,"hint",true,false] call BIS_fnc_MP;
	};
	// diag_log ([_group1] call util_fnc_groupDead);
	// diag_log ([_group2] call util_fnc_groupDead);
	// diag_log ([_group3] call util_fnc_groupDead);
	sleep 10;
};
//END IN PROGRESS

//BEGIN TEARDOWN
deleteMarker _spawnedM;
//END TEARDOWN