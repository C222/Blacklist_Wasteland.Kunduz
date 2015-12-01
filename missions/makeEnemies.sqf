_size = _this select 0;
_pos = _this select 1;

_g = createGroup civilian;

_man1 = _g createUnit ["C_Driver_1_black_F", [(_pos select 0) + 5, _pos select 1, 0], [], 1, "FORM"];
_man1 addVest "V_PlateCarrier1_blk";
_man1 addBackpack "B_Bergen_blk";
_man1 addMagazine "rhs_rpg7_PG7VL_mag";
_man1 addMagazine "rhs_rpg7_PG7VL_mag";
_man1 addWeapon "rhs_weap_rpg7";
_man1 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man1 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man1 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man1 addWeapon "rhs_weap_ak74m_1p29";
_man1 allowFleeing 0;

if (_size >= 2) then {
_man2 = _g createUnit ["C_Driver_1_green_F", [(_pos select 0), (_pos select 1) + 5, 0], [], 1, "FORM"];
_man2 addVest "V_PlateCarrierGL_rgr";
_man2 addBackpack "B_AssaultPack_rgr";
_man2 addMagazine "rhs_10Rnd_762x54mmR_7N1";
_man2 addMagazine "rhs_10Rnd_762x54mmR_7N1";
_man2 addMagazine "rhs_10Rnd_762x54mmR_7N1";
_man2 addMagazine "rhs_10Rnd_762x54mmR_7N1";
_man2 addWeapon "rhs_weap_svds_pso1";
_man2 allowFleeing 0;
};

if (_size >= 3) then {
_man3 = _g createUnit ["C_Driver_1_red_F", [(_pos select 0) + 10, (_pos select 1), 0], [], 1, "FORM"];
_man3 addVest "V_TacVestIR_blk";
_man3 addBackpack "B_Kitbag_cbr";
_man3 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man3 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man3 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man3 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man3 addWeapon "rhs_weap_ak74m_dtk";
_man3 allowFleeing 0;
};

if (_size >= 4) then {
_man4 = _g createUnit ["C_Driver_1_white_F", [(_pos select 0), (_pos select 1) + 10, 0], [], 1, "FORM"];
_man4 addVest "V_TacVestIR_blk";
_man4 addBackpack "B_Kitbag_cbr";
_man4 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man4 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man4 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man4 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man4 addWeapon "rhs_weap_ak74m_dtk";
_man4 allowFleeing 0;
};

if (_size >= 5) then {
_man5 = _g createUnit ["C_Driver_1_yellow_F", [(_pos select 0) + 10, (_pos select 1) + 10, 0], [], 1, "FORM"];
_man5 addVest "V_TacVestIR_blk";
_man5 addBackpack "B_Kitbag_cbr";
_man5 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man5 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man5 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man5 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man5 addWeapon "rhs_weap_ak74m_dtk";
_man5 allowFleeing 0;
};

if (_size >= 6) then {
_man6 = _g createUnit ["C_Driver_1_orange_F", [(_pos select 0) + 5, (_pos select 1) + 10, 0], [], 1, "FORM"];
_man6 addVest "V_HarnessO_brn";
_man6 addBackpack "B_Carryall_cbr";
_man6 addMagazine "rhs_mag_rgd5";
_man6 addMagazine "rhs_mag_rgd5";
_man6 addMagazine "rhs_mag_rgd5";
_man6 addWeapon "rhs_weap_pkp_1p29";
_man6 allowFleeing 0;
};

if (_size >= 7) then {
_man7 = _g createUnit ["C_Driver_3_F", [(_pos select 0) + 5, (_pos select 1) + 5, 0], [], 1, "FORM"];
_man7 addVest "V_TacVest_blk";
_man7 addBackpack "B_FieldPack_blk";
_man7 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man7 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man7 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man7 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man7 addWeapon "rhs_weap_ak74m_gp25_1p63";
_man7 allowFleeing 0;
};

if (_size >= 8) then {
_man8 = _g createUnit ["C_Driver_3_F", [(_pos select 0) + 10, (_pos select 1) + 5, 0], [], 1, "FORM"];
_man8 addVest "V_TacVest_blk";
_man8 addBackpack "B_FieldPack_blk";
_man8 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man8 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man8 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man8 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man8 addWeapon "rhs_weap_ak74m_gp25_1p63";
_man8 allowFleeing 0;
};

if (_size >= 9) then {
_man9 = _g createUnit ["C_Driver_3_F", [(_pos select 0) + 15, (_pos select 1) + 15, 0], [], 1, "FORM"];
_man9 addVest "V_TacVest_blk";
_man9 addBackpack "B_FieldPack_blk";
_man9 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man9 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man9 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man9 addMagazine "rhs_30Rnd_545x39_7N10_AK";
_man9 addWeapon "rhs_weap_ak74m_gp25_1p63";
_man9 allowFleeing 0;
};

_g selectLeader _man1;
// [_g, _pos] call BIS_fnc_taskDefend;

// diag_log format ["%1", _g];
_g