_group = _this select 0;

diag_log "Tracking...";

_markers = [];

while {!([_group] call util_fnc_groupDead)} do
{
	{
		if (alive _x) then
		{
			if ((getMarkerColor str(_x)) == "") then
			{
				_spawnedM = createMarker [str(_x), getPos _x];
				_spawnedM setMarkerShape "ICON";
				_spawnedM setMarkerType "o_inf";
				_spawnedM setMarkerAlpha 0.5;
				// diag_log format ["Making marker for %1", _x];
				_markers pushBack str(_x);
			};
			// _spawnedM setMarkerText format ["%1", _title];
			str(_x) setMarkerColor "ColorRed";
			str(_x) setMarkerPos getPos _x;
		} else
		{
			// diag_log format ["Deleting marker for %1", _x];
			deleteMarker str(_x);
			[_x] join grpNull;
		};
		sleep 1;
	} forEach (units _group);
	sleep 1;
};

{
	// diag_log format ["Deleting marker for %1", _x];
	deleteMarker _x;
	[_x] join grpNull;
} forEach _markers;
deleteGroup _group;

diag_log "Ending tracking";