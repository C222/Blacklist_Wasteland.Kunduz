_center = _this select 0;
_radius = _this select 1;
_threshold = _this select 2;

_safety = 0;

while {_safety < _threshold} do
{
	_offset = [_radius] call util_fnc_randRadius;

	_xPos = (_center select 0) + (_offset select 0);
	_yPos = (_center select 1) + (_offset select 1);
	
	_finalPos = [_xPos, _yPos, (_center select 2)];

	_safety = (nearestObject [_finalPos, "Building"]) distance _finalPos; //(nearestBuilding thePlayer) distance thePlayer;
};

_finalPos