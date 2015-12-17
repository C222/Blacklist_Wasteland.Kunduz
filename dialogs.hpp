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
			x = 0.25 * safezoneW + safezoneX;
			y = 0.25 * safezoneH + safezoneY;
			w = 0.5 * safezoneW;
			h = 0.5 * safezoneH;
		};
		class PLAYER_MENU_frame: RscFrame
		{
			idc = 1900;
			text = "Player Menu"; //--- ToDo: Localize;
			x = 0.25 * safezoneW + safezoneX;
			y = 0.25 * safezoneH + safezoneY;
			w = 0.5 * safezoneW;
			h = 0.5 * safezoneH;
		};
		class PLAYER_MENU_eat: RscButton
		{
			idc = 2000;
			text = "Eat Food (+40)"; //--- ToDo: Localize;
			x = 0.252 * safezoneW + safezoneX;
			y = 0.696 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.05 * safezoneH;
			action = "closeDialog 0;";
		};
		class PLAYER_MENU_drink: RscButton
		{
			idc = 2001;
			text = "Drink Water (+40)"; //--- ToDo: Localize;
			x = 0.252 * safezoneW + safezoneX;
			y = 0.642 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.05 * safezoneH;
			action="closeDialog 0;";
		};
		class PLAYER_MENU_food:RscText
		{
			idc = 2002;
			type = CT_STRUCTURED_TEXT;
			size = 0.120;
			// x = safeZoneX + (safeZoneW * (1 - (0.16 / SafeZoneW)));
			// y = safeZoneY + (safeZoneH * (1 - (0.20 / SafeZoneH)));
			x = 0.327 * safezoneW + safezoneX;
			y = 0.696 * safezoneH + safezoneY;
			w = 0.14; h = 0.20;
			colorText[] = {1,1,1,1};
			lineSpacing = 3;
			colorBackground[] = {0,0,0,0};
			text = "0";
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
			/*class WastelandHud_Vehicle:RscText
			{
				idc = hud_vehicle_idc;
				type = CT_STRUCTURED_TEXT;
				size = 0.040;
				x = safeZoneX + (safeZoneW * (1 - (0.42 / SafeZoneW)));
							y = safeZoneY + (safeZoneH * (1 - (0.30 / SafeZoneH)));
				w = 0.4; h = 0.65;
				colorText[] = {1,1,1,1};
				lineSpacing = 3;
				colorBackground[] = {0,0,0,0};
				text = "";
				shadow = 2;
				class Attributes {
					align = "right";
				};
			};*/
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
		};
	};
};

/*class player_HUD
{
	idd = 1700;
	name= "player_HUD";
	onLoad = "uiNamespace setVariable ['player_HUD', _this select 0]";
	class Controls
	{
		class health_txt: RscText
		{
			idc = 1701;
			text = "100"; //--- ToDo: Localize;
			x = 0.953907 * safezoneW + safezoneX;
			y = 0.938889 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class health_img: RscPicture
		{
			idc = 1702;
			text = "\a3\ui_f\data\IGUI\Cfg\Cursors\unithealer_ca.paa";
			x = 0.895311 * safezoneW + safezoneX;
			y = 0.940974 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.055 * safezoneH;
		};
	};
};*/