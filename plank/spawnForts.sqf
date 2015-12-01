_iter = _this select 0;
_place = _this select 1;

_towns = [] call config_fnc_getTowns select _place;

_markerName = [_towns] call util_fnc_pickOne select 0;

_mPos = markerPos _markerName;
_mSize = markerSize _markerName;
_radius  = (_mSize select 0);

_fort = ([plank_deploy_fortData] call util_fnc_pickOne);
_idx = _fort select 1;
_fort = _fort select 0 select 1;

// diag_log format ["Spawning %1 %2", _fort, _idx];

_spawnPos = [];

while {(count _spawnPos) < 3} do
{
	_offset = [_radius] call util_fnc_randRadius;

	_xPos = (_mPos select 0) + (_offset select 0);
	_yPos = (_mPos select 1) + (_offset select 1);
	_mPos = [_xPos, _yPos, (_mPos select 2)];

	_spawnPos = _mPos findEmptyPosition [0, 50, _fort];
};
// _spawnPos = [_mPos, _radius, 20] call util_fnc_safeSpot;

_spawnedF = _fort createVehicle _spawnPos;
_spawnedF setDir random 360;
[_spawnedF, _idx] call plank_fnc_makePickupable;

// _spawnedM = createMarker [format ["Marker_%1_%2", _iter, _type], _spawnPos];
// _spawnedM setMarkerShape "ICON";
// _spawnedM setMarkerType (["hd_dot", "hd_end", "hd_destroy", "hd_flag"] select _type);
// _spawnedM setMarkerText format ["%1", _vehicle];

_spawnedF