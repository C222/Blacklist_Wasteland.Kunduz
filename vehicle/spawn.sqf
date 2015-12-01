_iter = _this select 0;
_type = _this select 1;
_place = _this select 2;

_vehicles = [] call config_fnc_getVehicles select _type;
_towns = [] call config_fnc_getTowns select _place;

_chosenIdx = random ((count _towns) - 1);
_markerName = _towns select _chosenIdx;

_mPos = markerPos _markerName;
_mSize = markerSize _markerName;
_radius  = (_mSize select 0);

_chosenIdx = random ((count _vehicles) - 1);
_vehicle = _vehicles select _chosenIdx;

// diag_log format ["%1", _vehicle];
// diag_log format ["%1", _markerName];
_spawnPos = [];

while {(count _spawnPos) < 3} do
{
	_offset = [_radius] call util_fnc_randRadius;

	_xPos = (_mPos select 0) + (_offset select 0);
	_yPos = (_mPos select 1) + (_offset select 1);
	_mPos = [_xPos, _yPos, (_mPos select 2)];

	_spawnPos = _mPos findEmptyPosition [0, 50, _vehicle];
};
// _spawnPos = [_mPos, _radius, 20] call util_fnc_safeSpot;

_spawnedV = _vehicle createVehicle _spawnPos;
_spawnedV setDir random 360;
[_spawnedV] call vehicle_fnc_giveLoadout;
[_spawnedV, _type, _place] spawn server_fnc_vehicleWatcher;

// _spawnedM = createMarker [format ["Marker_%1_%2", _iter, _type], _spawnPos];
// _spawnedM setMarkerShape "ICON";
// _spawnedM setMarkerType (["hd_dot", "hd_end", "hd_destroy", "hd_flag"] select _type);
// _spawnedM setMarkerText format ["%1", _vehicle];

_spawnedV