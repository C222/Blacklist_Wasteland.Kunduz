_side = _this select 0;

if (_side == east) exitWith
{
	[
	// Uniforms
		["U_O_CombatUniform_ocamo"],
	// Vests
		["V_HarnessO_brn"]
	]
};

if (_side == west) exitWith
{
	[
	// Uniforms
		["U_B_CombatUniform_mcam"],
	// Vests
		["V_PlateCarrier1_rgr"]
	]
};

if (_side == resistance) exitWith
{
	[
	// Uniforms
		["U_I_HeliPilotCoveralls"],
	// Vests
		["V_PlateCarrierIA1_dgtl"]
	]
};