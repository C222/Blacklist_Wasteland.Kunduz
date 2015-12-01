diag_log "Starting lootAgent";
// _towns = [] call config_fnc_getTowns select 0;
_loot = [] call config_fnc_getLoot select 4;

_pos = markerPos "whole_map";
_mSize = markerSize "whole_map";
_radius  = (_mSize select 0);

_houses = (nearestObjects [_pos, ["House"], _radius]);

_poses = [];

{
	_poses = _poses + ([_x] call util_fnc_getPoses);
} forEach _houses;

{
	_item = (([_loot] call util_fnc_pickOne) select 0);
	_type = _item select 0;
	_varname = _item select 1;
	_veh = _type createVehicle [0, 0, 0];
	_veh setPos _x;
	_veh setVariable [_varname, 1];
} forEach _poses;

while {true} do
{
	_pos = (([_poses] call util_fnc_pickOne) select 0);
	
	_item = (([_loot] call util_fnc_pickOne) select 0);
	_type = _item select 0;
	_varname = _item select 1;
	_veh = _type createVehicle [0, 0, 0];
	_veh setPos _pos;
	_veh setVariable [_varname, 1];
	
	sleep 1;
};