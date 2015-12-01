_group = _this select 0;

_anyAlive = false;
{
	_anyAlive = _anyAlive or (alive _x);
} forEach (units _group);

!_anyAlive