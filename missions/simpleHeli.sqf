//BEGIN SETUP
_missions = [] call config_fnc_getTowns select 1;
_missionSpot = [_missions] call util_fnc_pickOne select 0;

_mPos = markerPos _missionSpot;
_mSize = markerSize _missionSpot;
_radius  = (_mSize select 0);

_offset = [_radius] call util_fnc_randRadius;

_xPos = (_mPos select 0) + (_offset select 0);
_yPos = (_mPos select 1) + (_offset select 1);
_mPos = [_xPos, _yPos, (_mPos select 2)];

_spawnPos = _mPos findEmptyPosition [0, 50, "B_Heli_Light_01_armed_F"];

_vehicle = "B_Heli_Light_01_armed_F" createVehicle _spawnPos;
_vehicle setFuel 0.25;
_vehicle lock true;

_picture = getText (configFile >> "cfgVehicles" >> typeOf _vehicle >> "picture");
_vehicleName = getText (configFile >> "cfgVehicles" >> typeOf _vehicle >> "displayName");
_hint = parseText format ["<t align='center'><img size='5' image='images\blacklist_icon.paa'/></t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>Enemies are taking delivery of a<t color='%4'> %3</t>.</t>", "AH-9 Delivery", _picture, _vehicleName, "#52bf90", "#FFFFFF"];
hint _hint;
[_hint,"hint",true,false] call BIS_fnc_MP;
// [nil,nil,rHINT,_hint] call RE;

_spawnedM = createMarker ["missionMarker", markerPos _missionSpot];
_spawnedM setMarkerShape "ICON";
_spawnedM setMarkerType "hd_destroy";
_spawnedM setMarkerText format ["%1", "AH-9 Delivery"];
_spawnedM setMarkerColor "ColorRed";

_group = [7, _spawnPos] call missions_fnc_makeEnemies;
[_group] spawn util_fnc_groupTrack;
[_group, _spawnPos] call BIS_fnc_taskDefend;
//END SETUP

//BEGIN IN PROGRESS
_done = false;
while{!_done} do
{
	if ([_group] call util_fnc_groupDead) then
	{
		_vehicle lock false;
	};
	if (!(isNull (driver _vehicle))) then
	{
		_done = true;
		_hint = parseText format ["<t align='center'><img size='5' image='images\blacklist_icon.paa'/></t><br/><t align='center' color='%4' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'><t color='%4'>%3</t> has been captured.</t>", "AH-9 Delivery", _picture, _vehicleName, "#52bf90", "#FFFFFF"];
		hint _hint;
		[_hint,"hint",true,false] call BIS_fnc_MP;
	};
	if ((damage _vehicle) > 0.9) then
	{
		_done = true;
		_hint = parseText format ["<t align='center'><img size='5' image='images\blacklist_icon.paa'/></t><br/><t align='center' color='%4' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'><t color='%4'>%3</t> has been destroyed.</t>", "AH-9 Delivery", _picture, _vehicleName, "#bf5252", "#FFFFFF"];
		hint _hint;
		[_hint,"hint",true,false] call BIS_fnc_MP;
	};
	sleep 1;
};
//END IN PROGRESS

//BEGIN TEARDOWN
deleteMarker _spawnedM;
//END TEARDOWN