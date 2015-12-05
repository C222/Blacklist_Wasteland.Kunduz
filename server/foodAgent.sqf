diag_log "Starting lootAgent";
// _towns = [] call config_fnc_getTowns select 0;
private _loot = [] call config_fnc_getLoot select 4;

private _pos = markerPos "whole_map";
private _mSize = markerSize "whole_map";
private _radius  = (_mSize select 0);

private _houses = (nearestObjects [_pos, ["House"], _radius]);

private _poses = [];

{
	_poses = _poses + ([_x] call util_fnc_getPoses);
} forEach _houses;

diag_log format ["%1 loot spawns found.", count _poses];

for "_x" from 1 to 1000 do
{
	private _lpos = (([_poses] call util_fnc_pickOne) select 0);
	
	private _item = (([_loot] call util_fnc_pickOne) select 0);
	private _type = _item select 0;
	private _varname = _item select 1;
	private _veh = _type createVehicle [0, 0, 0];
	_veh setPos _lpos;
	_veh setVariable [_varname, 1, true];
	
	sleep .1;
};

/*while {true} do
{
	private _lpos = (([_poses] call util_fnc_pickOne) select 0);
	
	private _item = (([_loot] call util_fnc_pickOne) select 0);
	private _type = _item select 0;
	private _varname = _item select 1;
	private _veh = _type createVehicle [0, 0, 0];
	_veh setPos _lpos;
	// _veh setVariable [_varname, 1, true];
	
	sleep 1;
};*/