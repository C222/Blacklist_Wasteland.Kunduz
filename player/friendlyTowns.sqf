_player = _this select 0;

_side = side _player;
_towns = [] call config_fnc_getTowns select 0;
_fTowns = [];

{
	_sides = [_x] call util_fnc_getSidesIn;
	_sides = _sides - [civilian, sideUnknown];
	
	if (((count _sides) == 1) and ((_sides select 0) == (side _player))) then
	{
		_fTowns pushBack _x;
	};
	
}forEach _towns;

_fTowns