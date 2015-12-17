_thePlayer = _this select 0;

call compile preprocessFileLineNumbers "plank\plank_init.sqf";
player execVM "scripts\simpleEP.sqf";

// titleText ["Please wait for your player to setup", "BLACK", 0];
// waitUntil {_thePlayer == _thePlayer};
// [_thePlayer] call player_fnc_spawn;
// titleFadeOut 1;

titleText ["Waiting for Server", "BLACK", 0];
waitUntil{readyForSpawn};
titleText ["", "BLACK", 0];
waitUntil {alive _thePlayer};
[_thePlayer] call player_fnc_spawn;
titleFadeOut 1;

_hint = parseText format ["<t align='center'><img size='5' image='images\blacklist_icon.paa'/></t><br/><t align='center' color='#FFFFFF' size='1.25'>Blacklist Wasteland</t><br/><br/><t align='left' color='#FFFFFF'>Bind User Action 1 for the Player Menu.</t><br/><br/><t align='center' size='0.75' color='#FFFFFF'>Please report bugs at https://github.com/C222/Blacklist_Wasteland.Kunduz/issues</t><br/><t align='center' size='0.75' color='#FFFFFF'>Version %1</t>", getText (missionConfigFile >> "version")];
hint _hint;

[] spawn client_fnc_iconAgent;
[] spawn client_fnc_ratingAgent;
[] spawn client_fnc_hudAgent;