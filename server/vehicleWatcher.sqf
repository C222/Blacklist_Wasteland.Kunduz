_vehicle = _this select 0;
_type = _this select 1;
_place = _this select 2;

_startPos = getPos _vehicle;

while {true} do
{
	if (isNull _vehicle) exitWith {};

	_nearEmpty = ((fuel _vehicle) < 0.1);
	_hasMoved = ((_startPos distance (getPos _vehicle)) > 20);
	_damaged = ((damage _vehicle) > 0.9);
	_isEmpty = (count crew (_vehicle)) == 0;
	
	if (((_hasMoved and _nearEmpty) or _damaged) and _isEmpty) then
	{
		diag_log format ["Respawning %1.", _vehicle];
		deleteVehicle _vehicle;
		_new = [(random 100) + 1000, _type, _place] call vehicle_fnc_spawn;
		diag_log format ["%1", getPos _new];
		
	};
	
	sleep 60 + (random 5);
};