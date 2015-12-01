_mName = _this select 0;

_mPos = markerPos _mName;
_mSize = markerSize _mName;
_radius  = (_mSize select 0);
_players = [_mPos, _radius] call util_fnc_playersWithin;

_sides = [];

// if ((count _players) > 0) then {diag_log format ["---Looking at %1:", _mName];};
{
	// diag_log format ["%1 is %2 in %3", name _x, side _x, typeOf vehicle _x];
	_sides = _sides + [side _x];
} forEach _players;

_sides = _sides arrayIntersect _sides;
// _sides = _sides - [civilian, sideUnknown];

_sides