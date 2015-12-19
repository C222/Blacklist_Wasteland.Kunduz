 ////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by C222, v1.063, #Qugube)
////////////////////////////////////////////////////////
class SPAWN_DIALOG
{
	idd = 1992;
	movingenable = true;
	onLoad="uiNamespace setVariable ['SPAWN_DIALOG', _this select 0]";
	class Controls
	{
		class SPAWN_DIALOG_box: BOX
		{
			idc = 1801;
			x = 0.25 * safezoneW + safezoneX;
			y = 0.25 * safezoneH + safezoneY;
			w = 0.5 * safezoneW;
			h = 0.5 * safezoneH;
		};
		class SPAWN_DIALOG_frame: RscFrame
		{
			idc = 1800;
			text = "Spawn"; //--- ToDo: Localize;
			x = 0.25 * safezoneW + safezoneX;
			y = 0.25 * safezoneH + safezoneY;
			w = 0.5 * safezoneW;
			h = 0.5 * safezoneH;
		};
		class SPAWN_DIALOG_ground: RscButton
		{
			idc = 1600;
			text = "Random Ground"; //--- ToDo: Localize;
			x = 0.252 * safezoneW + safezoneX;
			y = 0.696 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.05 * safezoneH;
			action = "closeDialog 0;";
		};
		class SPAWN_DIALOG_parachute: RscButton
		{
			idc = 1601;
			text = "Random Parachute"; //--- ToDo: Localize;
			x = 0.252 * safezoneW + safezoneX;
			y = 0.642 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.05 * safezoneH;
			action="closeDialog 0; player setVariable [""parachuteIn"", true];";
		};
		class SPAWN_DIALOG_droplist: RscListbox
		{
			idc = 1602;
			text = ""; //--- ToDo: Localize;
			x = 0.35 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.1 * safezoneW;
			h = 0.45 * safezoneH;
			onLBDblClick = "closeDialog 0; _idx = _this select 1; player setVariable [""friendlySpawn"", lbData [1602, _idx]];";
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};

class PLAYER_MENU
{
	idd = 1993;
	movingenable = true;
	onLoad="";
	class Controls
	{
		class PLAYER_MENU_box: BOX
		{
			idc = 1901;
			x = 0.05 * safezoneW + safezoneX;
			y = 0.25 * safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.5 * safezoneH;
		};
		class PLAYER_MENU_frame: RscFrame
		{
			idc = 1900;
			text = "Player Menu"; //--- ToDo: Localize;
			x = 0.05 * safezoneW + safezoneX;
			y = 0.25 * safezoneH + safezoneY;
			w = 0.13 * safezoneW;
			h = 0.5 * safezoneH;
		};
		class PLAYER_MENU_eat: RscButton
		{
			idc = 2000;
			text = "Eat Food (+40)"; //--- ToDo: Localize;
			x = 0.052 * safezoneW + safezoneX;
			y = 0.696 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.05 * safezoneH;
			action="if (player getVariable ""foods"" > 0) then {player playActionNow ""Medic""; player setVariable [""foods"", (player getVariable ""foods"") - 1]; _food_level = player getVariable ""foodStat""; _food_level = 100 min (_food_level + 40); player setVariable [""foodStat"", _food_level]; [1993] spawn util_fnc_updatePlayerMenu;};";
		};
		class PLAYER_MENU_drink: RscButton
		{
			idc = 2001;
			text = "Drink Water (+40)"; //--- ToDo: Localize;
			x = 0.052 * safezoneW + safezoneX;
			y = 0.642 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.05 * safezoneH;
			action="if (player getVariable ""drinks"" > 0) then {player playActionNow ""Medic""; player setVariable [""drinks"", (player getVariable ""drinks"") - 1]; _water_level = player getVariable ""waterStat""; _water_level = 100 min (_water_level + 40); player setVariable [""waterStat"", _water_level]; [1993] spawn util_fnc_updatePlayerMenu;};";
		};
		class PLAYER_MENU_vd_close: RscButton
		{
			idc = 2002;
			text = "Close"; //--- ToDo: Localize;
			x = 0.052 * safezoneW + safezoneX;
			y = 0.3 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.0167 * safezoneH;
			action="setViewDistance 500;";
		};
		class PLAYER_MENU_vd_med: RscButton
		{
			idc = 2003;
			text = "Medium"; //--- ToDo: Localize;
			x = 0.052 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.0167 * safezoneH;
			action="setViewDistance 1000;";
		};
		class PLAYER_MENU_vd_far: RscButton
		{
			idc = 2004;
			text = "Far"; //--- ToDo: Localize;
			x = 0.052 * safezoneW + safezoneX;
			y = 0.336 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.0167 * safezoneH;
			action="setViewDistance 2000;";
		};
		class PLAYER_MENU_vd_farthest: RscButton
		{
			idc = 2005;
			text = "Farthest"; //--- ToDo: Localize;
			x = 0.052 * safezoneW + safezoneX;
			y = 0.354 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.0167 * safezoneH;
			action="setViewDistance 3000;";
		};
		class PLAYER_MENU_vd_title:RscText
		{
			idc = 2006;
			type = CT_STRUCTURED_TEXT;
			size = 0.030;
			// x = safeZoneX + (safeZoneW * (1 - (0.16 / SafeZoneW)));
			// y = safeZoneY + (safeZoneH * (1 - (0.20 / SafeZoneH)));
			x = 0.052 * safezoneW + safezoneX;
			y = 0.282 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.0167 * safezoneH;
			colorText[] = {1,1,1,1};
			lineSpacing = 3;
			colorBackground[] = {0,0,0,0};
			text = "View Distance";
			shadow = 2;
			class Attributes {
				align = "center";
			};
		};
		class PLAYER_MENU_cons_title:RscText
		{
			idc = 2009;
			type = CT_STRUCTURED_TEXT;
			size = 0.030;
			// x = safeZoneX + (safeZoneW * (1 - (0.16 / SafeZoneW)));
			// y = safeZoneY + (safeZoneH * (1 - (0.20 / SafeZoneH)));
			x = 0.052 * safezoneW + safezoneX;
			y = 0.624 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.0167 * safezoneH;
			colorText[] = {1,1,1,1};
			lineSpacing = 3;
			colorBackground[] = {0,0,0,0};
			text = "Consumables";
			shadow = 2;
			class Attributes {
				align = "center";
			};
		};
		class PLAYER_MENU_food:RscText
		{
			idc = 2007;
			type = CT_STRUCTURED_TEXT;
			size = 0.080;
			// x = safeZoneX + (safeZoneW * (1 - (0.16 / SafeZoneW)));
			// y = safeZoneY + (safeZoneH * (1 - (0.20 / SafeZoneH)));
			x = 0.127 * safezoneW + safezoneX;
			y = 0.696 * safezoneH + safezoneY;
			w = 0.14; h = 0.20;
			colorText[] = {1,1,1,1};
			lineSpacing = 3;
			colorBackground[] = {0,0,0,0};
			text = "0 <img size='1' image='images\food.paa'/><br/>";
			shadow = 2;
			class Attributes {
				align = "left";
			};
		};
		class PLAYER_MENU_water:RscText
		{
			idc = 2008;
			type = CT_STRUCTURED_TEXT;
			size = 0.080;
			// x = safeZoneX + (safeZoneW * (1 - (0.16 / SafeZoneW)));
			// y = safeZoneY + (safeZoneH * (1 - (0.20 / SafeZoneH)));
			x = 0.127 * safezoneW + safezoneX;
			y = 0.642 * safezoneH + safezoneY;
			w = 0.14; h = 0.20;
			colorText[] = {1,1,1,1};
			lineSpacing = 3;
			colorBackground[] = {0,0,0,0};
			text = "0 <img size='1' image='\a3\ui_f\data\IGUI\Cfg\Actions\ico_cpt_thtl_idl_ca.paa'/><br/>";
			shadow = 2;
			class Attributes {
				align = "left";
			};
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};

class API_STORE {
	idd = 1013;
	class Controls
	{
		class API_CONTROL: RscHTML {
			idc = 1014;
			text = "Loading....";
			font = "EtelkaNarrowMediumPro";
			sizeEx = 0.023;

			colorBackground[] = { 1, 1, 1, 0.3 };
			colorText[] = { 0, 0, 0, 1 };

			x = 0.8;
			y = 0.1;
			w = 0.2;
			h = 0.05;
		};
	};
};

class RscTitles
{
	class player_HUD
	{
		idd = -1;
		fadeout=0;
		fadein=0;
		duration = 20;
		name= "player_HUD";
		onLoad = "uiNamespace setVariable ['player_HUD', _this select 0]";
		
		class controlsBackground {
			class health_HUD:RscText
			{
				idc = 1700;
				type = CT_STRUCTURED_TEXT;
				size = 0.040;
				x = safeZoneX + (safeZoneW * (1 - (0.16 / SafeZoneW)));
				y = safeZoneY + (safeZoneH * (1 - (0.20 / SafeZoneH)));
				w = 0.14; h = 0.20;
				colorText[] = {1,1,1,1};
				lineSpacing = 3;
				colorBackground[] = {0,0,0,0};
				text = "--- <img size='1' image='\a3\ui_f\data\IGUI\Cfg\Actions\heal_ca.paa'/><br/>";
				shadow = 2;
				class Attributes {
					align = "right";
				};
			};
			class water_HUD:RscText
			{
				idc = 1701;
				type = CT_STRUCTURED_TEXT;
				size = 0.040;
				x = safeZoneX + (safeZoneW * (1 - (0.16 / SafeZoneW)));
				y = safeZoneY + (safeZoneH * (1 - (0.163 / SafeZoneH)));
				w = 0.14; h = 0.20;
				colorText[] = {1,1,1,1};
				lineSpacing = 3;
				colorBackground[] = {0,0,0,0};
				text = "--- <img size='1' image='\a3\ui_f\data\IGUI\Cfg\Actions\ico_cpt_thtl_idl_ca.paa'/><br/>";
				shadow = 2;
				class Attributes {
					align = "right";
				};
			};
			class food_HUD:RscText
			{
				idc = 1702;
				type = CT_STRUCTURED_TEXT;
				size = 0.040;
				x = safeZoneX + (safeZoneW * (1 - (0.16 / SafeZoneW)));
				y = safeZoneY + (safeZoneH * (1 - (0.126 / SafeZoneH)));
				w = 0.14; h = 0.20;
				colorText[] = {1,1,1,1};
				lineSpacing = 3;
				colorBackground[] = {0,0,0,0};
				text = "--- <img size='1' image='images\food.paa'/><br/>";
				shadow = 2;
				class Attributes {
					align = "right";
				};
			};
			class money_HUD:RscText
			{
				idc = 1703;
				type = CT_STRUCTURED_TEXT;
				size = 0.040;
				x = safeZoneX + (safeZoneW * (1 - (0.16 / SafeZoneW)));
				y = safeZoneY + (safeZoneH * (1 - (0.089 / SafeZoneH)));
				w = 0.14; h = 0.20;
				colorText[] = {0,1,0,1};
				lineSpacing = 3;
				colorBackground[] = {0,0,0,0};
				text = "$ 0<br/>";
				shadow = 2;
				class Attributes {
					align = "right";
				};
			};
		};
	};
};