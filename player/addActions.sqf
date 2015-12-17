params ["_player"];

if (_player getVariable["hasActions", -1] < 0) then
{
	_player addAction ["Pick Up",
		{
			player playActionNow "MedicOther";
			_item = (cursorTarget getVariable ["pickupableIdx", -1]);
			[player, 1, _item] call plank_deploy_fnc_addFortificationAction;
			deleteVehicle (cursorTarget);
		},
		"",
		1,
		false,
		true,
		"",
		"(vehicle player == player)
		and ((cursorTarget getVariable [""pickupableIdx"", -1]) >= 0)
		and ((player distance cursorTarget) < 10)"
	];

	_player addAction ["Take Drink",
		{
			_drink_count = player getVariable "drinks";
			player setVariable ["drinks", _drink_count + 1];
			deleteVehicle (cursorTarget);
			/*player playActionNow "Medic";
			_water_level = player getVariable "waterStat";
			_water_level = 100 min (_water_level + 40);
			player setVariable ["waterStat", _water_level];
			deleteVehicle (cursorTarget);*/
		},
		"",
		1,
		false,
		true,
		"",
		"(vehicle player == player)
		and ((cursorTarget getVariable [""isDrink"", -1]) >= 0)
		and ((player distance cursorTarget) < 5)
		and(((player getVariable ""foods"") + (player getVariable ""drinks"")) < 4)"
	];

	_player addAction ["Take Food",
		{
			_food_count = player getVariable "foods";
			player setVariable ["foods", _food_count + 1];
			deleteVehicle (cursorTarget);
			/*player playActionNow "Medic";
			_food_level = player getVariable "foodStat";
			_food_level = 100 min (_food_level + 40);
			player setVariable ["foodStat", _food_level];
			deleteVehicle (cursorTarget);*/
		},
		"",
		1,
		false,
		true,
		"",
		"(vehicle player == player)
		and ((cursorTarget getVariable [""isFood"", -1]) >= 0)
		and ((player distance cursorTarget) < 5)
		and(((player getVariable ""foods"") + (player getVariable ""drinks"")) < 4)"
	];

	_player addAction ["Player Menu",
		{
			_drink_count = player getVariable "drinks";
			_food_count = player getVariable "foods";
			_ok = createDialog "PLAYER_MENU";
			_ui = findDisplay 1993;
			_drink_hud = _ui displayCtrl 2003;
			_drink_hud ctrlSetStructuredText parseText format ["%1 <img size='1' image='\a3\ui_f\data\IGUI\Cfg\Actions\ico_cpt_thtl_idl_ca.paa'/><br/>", _drink_count];
			_eat_hud = _ui displayCtrl 2002;
			_eat_hud ctrlSetStructuredText parseText format ["%1 <img size='1' image='images\food.paa'/><br/>", _food_count];
		},
		"",
		-80,
		false,
		true,
		"User1",
		""
	];

	_player setVariable ["hasActions", 1];
};
