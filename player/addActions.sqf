params ["_player"];

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

_player addAction ["Drink (+40)",
	{
		player playActionNow "Medic";
		_water_level = player getVariable "waterStat";
		_water_level = 100 min (_water_level + 40);
		player setVariable ["waterStat", _water_level];
		deleteVehicle (cursorTarget);
	},
	"",
	1,
	false,
	true,
	"",
	"(vehicle player == player)
	and ((cursorTarget getVariable [""isDrink"", -1]) >= 0)
	and ((player distance cursorTarget) < 5)"
];

_player addAction ["Eat (+40)",
	{
		player playActionNow "Medic";
		_food_level = player getVariable "foodStat";
		_food_level = 100 min (_food_level + 40);
		player setVariable ["foodStat", _food_level];
		deleteVehicle (cursorTarget);
	},
	"",
	1,
	false,
	true,
	"",
	"(vehicle player == player)
	and ((cursorTarget getVariable [""isFood"", -1]) >= 0)
	and ((player distance cursorTarget) < 5)"
];
