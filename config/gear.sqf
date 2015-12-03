_side = _this select 0;
//CUP_U_B_GER_Ghillie
//CUP_U_B_USMC_Ghillie_WDL
//CUP_U_O_TK_Ghillie
//CUP_U_O_TK_Ghillie_Top
//"U_O_GhillieSuit"
//"U_I_GhillieSuit"
if (_side == east) exitWith
{
	[
	// Uniforms "U_O_CombatUniform_ocamo"
		["CUP_U_O_TK_Officer", "CUP_U_O_TK_Green", "CUP_U_O_TK_MixedCamo",
		"U_O_CombatUniform_ocamo",
		"U_O_SpecopsUniform_ocamo",
		"U_O_OfficerUniform_ocamo"],
	// Vests
		["CUP_V_O_TK_Vest_1", "CUP_V_O_TK_Vest_2",
		"CUP_V_O_TK_CrewBelt", "CUP_V_O_TK_OfficerBelt2",	"CUP_V_O_TK_OfficerBelt"]
	]
};

if (_side == west) exitWith
{
	[
	// Uniforms "U_B_CombatUniform_mcam"
		["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_1",
		"CUP_U_B_USMC_Officer",
		"CUP_U_B_USMC_MARPAT_WDL_RollUpKneepad", "CUP_U_B_USMC_MARPAT_WDL_RolledUp", "CUP_U_B_USMC_MARPAT_WDL_Kneepad", "CUP_U_B_USMC_MARPAT_WDL_TwoKneepads", "CUP_U_B_USMC_MARPAT_WDL_Sleeves",
		"CUP_B_USMC_Navy_Blue", "CUP_B_USMC_Navy_Brown", "CUP_B_USMC_Navy_Green", "CUP_B_USMC_Navy_Red", "CUP_B_USMC_Navy_Violet", "CUP_B_USMC_Navy_White", "CUP_B_USMC_Navy_Yellow",
		"CUP_U_B_FR_SpecOps", "CUP_U_B_FR_Officer", "CUP_U_B_FR_DirAction", "CUP_U_B_FR_DirAction2", "CUP_U_B_FR_Corpsman", "CUP_U_B_FR_Light", "CUP_U_B_FR_Scout1", "CUP_U_B_FR_Scout2", "CUP_U_B_FR_Scout3", "CUP_U_B_FR_Scout",
		"CUP_U_B_USMC_PilotOverall"],
	// Vests
		["CUP_V_B_GER_Carrier_Vest", "CUP_V_B_GER_Carrier_Rig",
		"CUP_V_B_RRV_DA2", "CUP_V_B_RRV_DA1"]
		// "CUP_V_B_MTV_Pouches", "CUP_V_B_MTV_PistolBlack", "CUP_V_B_MTV", "CUP_V_B_MTV_Mine", "CUP_V_B_MTV_LegPouch", "CUP_V_B_MTV_Marksman", "CUP_V_B_MTV_MG", "CUP_V_B_MTV_Patrol", "CUP_V_B_MTV_noCB", "CUP_V_B_MTV_TL",
		// "CUP_V_B_LHDVest_Blue", "CUP_V_B_LHDVest_Brown", "CUP_V_B_LHDVest_Green", "CUP_V_B_LHDVest_Red", "CUP_V_B_LHDVest_Violet", "CUP_V_B_LHDVest_White", "CUP_V_B_LHDVest_Yellow",
		// "CUP_V_B_PilotVest",
		// "CUP_V_B_RRV_MG", "CUP_V_B_RRV_Light", "CUP_V_B_RRV_Medic", "CUP_V_B_RRV_Officer", "CUP_V_B_RRV_Scout", "CUP_V_B_RRV_Scout2", "CUP_V_B_RRV_Scout3", "CUP_V_B_RRV_TL"]
	]
};

if (_side == resistance) exitWith
{
	[
	// Uniforms
		["U_I_CombatUniform", "U_I_CombatUniform_shortsleeve",
		"U_I_OfficerUniform",
		"U_I_pilotCoveralls",
		"U_I_HeliPilotCoveralls"],
	// Vests
		["V_PlateCarrierIA1_dgtl", "V_Press_F", "V_Rangemaster_belt", "V_Chestrig_khk", "V_TacVestIR_blk"]
	]
};