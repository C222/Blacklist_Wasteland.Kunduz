_thePlayer = _this select 0;

titleText ["Waiting for Server", "BLACK", 0];
waitUntil{readyForSpawn};
titleText ["", "BLACK", 0];
waitUntil {alive _thePlayer};
[_thePlayer] call player_fnc_spawn;
titleFadeOut 1;