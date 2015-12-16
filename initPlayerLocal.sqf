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


[] spawn client_fnc_iconAgent;
[] spawn client_fnc_ratingAgent;
[] spawn client_fnc_hudAgent;