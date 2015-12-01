_veh = _this select 0;

if (_veh isKindOf "CAManBase") exitWith {"\a3\ui_f\data\gui\cfg\Hints\icon_text\b_inf_ca.paa"};
if (_veh isKindOf "Car") exitWith {"\a3\ui_f\data\gui\cfg\Hints\icon_text\b_motor_inf_ca.paa"};
if (_veh isKindOf "APC") exitWith {"\a3\ui_f\data\gui\cfg\Hints\icon_text\b_mech_inf_ca.paa"};
if (_veh isKindOf "Tank") exitWith {"\a3\ui_f\data\gui\cfg\Hints\icon_text\b_armor_ca.paa"};
if (_veh isKindOf "Air") exitWith {"\a3\ui_f\data\gui\cfg\Hints\icon_text\b_air_ca.paa"};

"\a3\ui_f\data\gui\cfg\Hints\icon_text\b_unknown_ca.paa"