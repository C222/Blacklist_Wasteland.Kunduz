params ["_building"];

_poses = [];
_pos = [-1,-1,-1];
_i = 0;
while {_pos select 0 != 0} do
{
	_pos = _building buildingPos _i;
	_i = _i + 1;
	if (_pos select 0 != 0) then
	{
		_poses pushBack _pos;
	};
};
_poses