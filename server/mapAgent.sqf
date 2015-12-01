diag_log "Starting mapAgent";
_towns = [] call config_fnc_getTowns select 0;

while {true} do
{
	{
		_mName = _x;
		// _mPos = markerPos _mName;
		// _mSize = markerSize _mName;
		// _radius  = (_mSize select 0);
		// _players = [_mPos, _radius] call util_fnc_playersWithin;
		
		// _sides = [];
		
		// if ((count _players) > 0) then {diag_log format ["---Looking at %1:", _mName];};
		// {
			// diag_log format ["%1 is %2 in %3", name _x, side _x, typeOf vehicle _x];
			// _sides = _sides + [side _x];
			// sleep 0.0001;
		// } forEach _players;
		
		// _sides = _sides arrayIntersect _sides;
		
		_sides = [_mName] call util_fnc_getSidesIn;
		_sides = _sides - [civilian, sideUnknown];
		
		if ((count _sides) > 1) then
		{
			_mName setMarkerAlpha 0.5;
			_mName setMarkerColor "ColorOrange";
		} else
		{
			if ((count _sides) == 1) then
			{
				_side = _sides select 0;
				if (_side == resistance) then
				{
					_mName setMarkerAlpha 0.5;
					_mName setMarkerColor "ColorGUER";
				};
				if (_side == east) then
				{
					_mName setMarkerAlpha 0.5;
					_mName setMarkerColor "ColorEAST";
				};
				if (_side == west) then
				{
					_mName setMarkerAlpha 0.5;
					_mName setMarkerColor "ColorWEST";
				};
			} else
			{
				_mName setMarkerAlpha 0;
			};
		};
		sleep 0.0001;
	} forEach _towns;
	sleep 1;
};