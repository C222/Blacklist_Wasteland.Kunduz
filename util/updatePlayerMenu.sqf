params ["_ui"];

disableSerialization;

_drink_hud = _ui displayCtrl 2003;
_drink_hud ctrlSetStructuredText parseText format ["%1 <img size='1' image='\a3\ui_f\data\IGUI\Cfg\Actions\ico_cpt_thtl_idl_ca.paa'/><br/>", _drink_count];
_eat_hud = _ui displayCtrl 2002;
_eat_hud ctrlSetStructuredText parseText format ["%1 <img size='1' image='images\food.paa'/><br/>", _food_count];