_vehicle = _this select 0;

clearItemCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearWeaponCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;

_primaries = ([] call config_fnc_getLoot) select 0;
_pistols = ([] call config_fnc_getLoot) select 1;
_loots = ([] call config_fnc_getLoot) select 2;
_backpacks = ([] call config_fnc_getLoot) select 5;

_chosenIdx = random ((count _primaries) - 1);
_primary = _primaries select _chosenIdx;

_mags = [_primary] call util_fnc_magazinesFor;
_chosenIdx = random ((count _mags) - 1);
_magP = _mags select _chosenIdx;

_chosenIdx = random ((count _pistols) - 1);
_pistol = _pistols select _chosenIdx;

_mags = [_pistol] call util_fnc_magazinesFor;
_chosenIdx = random ((count _mags) - 1);
_magS = _mags select _chosenIdx;

_vehicle addWeaponCargoGlobal [_primary, 1];
_vehicle addWeaponCargoGlobal [_pistol, 1];
_vehicle addMagazineCargoGlobal [_magP, 1 + (random 5)];
_vehicle addMagazineCargoGlobal [_magS, 1 + (random 5)];

for "_x" from 1 to 5 do
{
	_chosenIdx = random ((count _loots) - 1);
	_loot = _loots select _chosenIdx;
	_vehicle addItemCargoGlobal [_loot, 1];
};

if (floor(random 2) == 1) then
{
	_bp = ([_backpacks] call util_fnc_pickOne) select 0;
	_vehicle addBackpackCargoGlobal [_bp, 1];
};