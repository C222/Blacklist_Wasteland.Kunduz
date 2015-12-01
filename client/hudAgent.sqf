diag_log "Starting hudAgent";

disableSerialization;

while {true} do
{
	1000 cutRsc ["player_HUD","PLAIN"];
	_ui = uiNameSpace getVariable "player_HUD";
	_health_hud = _ui displayCtrl 1700;
	_water_hud = _ui displayCtrl 1701;
	_food_hud = _ui displayCtrl 1702;
	// _hudVehicle = _ui displayCtrl 1701;

	//Calculate Health 0 - 100
	_decimalPlaces = 3;
	
	_water_level = player getVariable ["waterStat", 75];
	_food_level = player getVariable ["foodStat", 75];
	
	_water_level = 0 max (_water_level - 0.015);
	_food_level = 0 max (_food_level - 0.005);
	
	player setVariable ["waterStat", _water_level];
	player setVariable ["foodStat", _food_level];
	
	_heal_factor = 0;
	
	if (_water_level > 80) then {_heal_factor = _heal_factor + 0.00015};
	if (_food_level > 80) then {_heal_factor = _heal_factor + 0.00015};
	
	if (_water_level < 40) then {_heal_factor = _heal_factor - 0.00015};
	if (_food_level < 40) then {_heal_factor = _heal_factor - 0.00015};
	
	if (_water_level < 20) then {_heal_factor = _heal_factor - 0.0015};
	if (_food_level < 20) then {_heal_factor = _heal_factor - 0.0015};
	
	if (_water_level < 10) then {_heal_factor = _heal_factor - 0.0015};
	if (_food_level < 10) then {_heal_factor = _heal_factor - 0.0015};
	
	if (_water_level == 0) then {_heal_factor = _heal_factor - 0.015};
	if (_food_level == 0) then {_heal_factor = _heal_factor - 0.015};
	
	_south_of = (getPos player select 1) < 0;
	_east_of = (getPos player select 0) < 0;
	_north_of = (getPos player select 1) > 5120;
	_west_of = (getPos player select 0) > 5120;
	
	if (!dialog and (_south_of or _north_of or _west_of or _east_of)) then
	{
		_heal_factor = -.01;
		1869 cutText ["Return to map!", "PLAIN", 0, true];
	} else {
		1869 cutFadeOut 0;
	};
	
	player setDamage (damage player) - _heal_factor;
	
	_health = damage player;
	_health = round (_health * (10 ^ _decimalPlaces)) / (10 ^ _decimalPlaces);
	_health = 100 - (_health * 100);
	_water_level = round (_water_level * (10 ^ 1)) / (10 ^ 1);
	// _water_level = 100 - (_water_level * 100);
	_food_level = round (_food_level * (10 ^ 1)) / (10 ^ 1);
	// _food_level = 100 - (_food_level * 100);
	
	_health_hud ctrlSetStructuredText parseText format ["%1 <img size='1' image='\a3\ui_f\data\IGUI\Cfg\Actions\heal_ca.paa'/><br/>", _health];
	_health_hud ctrlSetTextColor [(damage player), 1 - (damage player), 0, 1];
	_health_hud ctrlCommit 0;
	
	_water_hud ctrlSetStructuredText parseText format ["%1 <img size='1' image='\a3\ui_f\data\IGUI\Cfg\Actions\ico_cpt_thtl_idl_ca.paa'/><br/>", _water_level];
	_water_hud ctrlSetTextColor [1 - (_water_level/100), (_water_level/100), 0, 1];
	_water_hud ctrlCommit 0;
	
	_food_hud ctrlSetStructuredText parseText format ["%1 <img size='1' image='images\food.paa'/><br/>", _food_level];
	_food_hud ctrlSetTextColor [1- (_food_level/100), (_food_level/100), 0, 1];
	_food_hud ctrlCommit 0;
	
	sleep 1;
};