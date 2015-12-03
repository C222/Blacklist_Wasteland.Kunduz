_size = _this select 0;
_pos = _this select 1;

_g = createGroup civilian;

_man1 = _g createUnit ["C_Driver_1_black_F", [(_pos select 0) + 5, _pos select 1, 0], [], 1, "FORM"];
_man1 addVest "V_PlateCarrier1_blk";
_man1 addBackpack "CUP_B_RPGPack_Khaki";
_man1 addWeapon "CUP_arifle_AK74M";
_man1 addWeapon "CUP_launch_RPG7V";
_man1 addItemToBackpack "CUP_PG7V_M";
for "_i" from 1 to 3 do {_man1 addItemToVest "CUP_30Rnd_545x39_AK_M";};
_man1 addPrimaryWeaponItem "CUP_optic_PSO_1";
_man1 allowFleeing 0;

if (_size >= 2) then {
_man2 = _g createUnit ["C_Driver_1_green_F", [(_pos select 0), (_pos select 1) + 5, 0], [], 1, "FORM"];
_man2 addVest "V_Chestrig_rgr";
_man2 addBackpack "CUP_B_USMC_AssaultPack";
for "_i" from 1 to 2 do {_man2 addItemToVest "CUP_1Rnd_HE_GP25_M";};
for "_i" from 1 to 3 do {_man2 addItemToVest "CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M";};
for "_i" from 1 to 3 do {_man2 addItemToVest "CUP_30Rnd_545x39_AK_M";};
_man2 addWeapon "CUP_arifle_AK107_GL";
_man2 addPrimaryWeaponItem "CUP_optic_Kobra";
_man2 allowFleeing 0;
};

if (_size >= 3) then {
_man3 = _g createUnit ["C_Driver_1_red_F", [(_pos select 0) + 10, (_pos select 1), 0], [], 1, "FORM"];
_man3 addVest "V_TacVestIR_blk";
for "_i" from 1 to 5 do {_man3 addItemToVest "CUP_20Rnd_556x45_Stanag";};
_man3 addBackpack "CUP_B_AlicePack_Khaki";
_man3 addWeapon "CUP_srifle_Mk12SPR";
_man3 addPrimaryWeaponItem "optic_AMS";
_man3 allowFleeing 0;
};

if (_size >= 4) then {
_man4 = _g createUnit ["C_Driver_1_white_F", [(_pos select 0), (_pos select 1) + 10, 0], [], 1, "FORM"];
_man4 addVest "V_PlateCarrierL_CTRG";
for "_i" from 1 to 6 do {_man4 addItemToVest "CUP_30Rnd_556x45_Stanag";};
_man4 addBackpack "CUP_B_Bergen_BAF";
_man4 addItemToBackpack "CUP_IED_V1_M";
_man4 addWeapon "CUP_arifle_M16A4_Base";
_man4 addPrimaryWeaponItem "CUP_optic_CompM4";
_man4 allowFleeing 0;
};

if (_size >= 5) then {
_man5 = _g createUnit ["C_Driver_1_yellow_F", [(_pos select 0) + 10, (_pos select 1) + 10, 0], [], 1, "FORM"];
_man5 addVest "V_PlateCarrierL_CTRG";
for "_i" from 1 to 6 do {_man5 addItemToVest "CUP_30Rnd_556x45_Stanag";};
_man5 addBackpack "CUP_B_Bergen_BAF";
_man5 addItemToBackpack "ToolKit";
_man5 addWeapon "CUP_arifle_M16A4_Base";
_man5 addPrimaryWeaponItem "CUP_optic_CompM4";
_man5 allowFleeing 0;
};

if (_size >= 6) then {
_man6 = _g createUnit ["C_Driver_3_F", [(_pos select 0) + 15, (_pos select 1) + 15, 0], [], 1, "FORM"];
_man6 addVest "CUP_V_O_TK_Vest_1";
for "_i" from 1 to 10 do {_man6 addItemToVest "CUP_5x_22_LR_17_HMR_M";};
_man6 addWeapon "CUP_srifle_CZ550";
_man6 allowFleeing 0;
};

if (_size >= 7) then {
_man7 = _g createUnit ["C_Driver_3_F", [(_pos select 0) + 5, (_pos select 1) + 5, 0], [], 1, "FORM"];
_man7 addVest "V_Chestrig_rgr";
for "_i" from 1 to 7 do {_man7 addItemToVest "CUP_30Rnd_762x39_AK47_M";};
_man7 addWeapon "CUP_arifle_AKM";
_man7 addPrimaryWeaponItem "CUP_optic_Kobra";
_man7 allowFleeing 0;
};

if (_size >= 8) then {
_man8 = _g createUnit ["C_Driver_3_F", [(_pos select 0) + 10, (_pos select 1) + 5, 0], [], 1, "FORM"];
_man8 addVest "V_Chestrig_rgr";
for "_i" from 1 to 7 do {_man8 addItemToVest "CUP_30Rnd_762x39_AK47_M";};
_man8 addWeapon "CUP_arifle_AKM";
_man8 addPrimaryWeaponItem "CUP_optic_Kobra";
_man8 allowFleeing 0;
};

if (_size >= 9) then {
_man9 = _g createUnit ["C_Driver_1_orange_F", [(_pos select 0) + 5, (_pos select 1) + 10, 0], [], 1, "FORM"];
_man9 addVest "V_PlateCarrier2_blk";
for "_i" from 1 to 4 do {_man9 addItemToVest "FirstAidKit";};
for "_i" from 1 to 2 do {_man9 addItemToVest "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";};
_man9 addBackpack "CUP_B_Bergen_BAF";
_man9 addItemToBackpack "Medikit";
for "_i" from 1 to 3 do {_man9 addItemToBackpack "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";};
_man9 addWeapon "CUP_lmg_PKM";
_man9 allowFleeing 0;
};

_g selectLeader _man1;
// [_g, _pos] call BIS_fnc_taskDefend;

// diag_log format ["%1", _g];
_g