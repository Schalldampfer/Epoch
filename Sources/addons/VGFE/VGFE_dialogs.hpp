





class VGFEDialog
{
    idd = 0720;
    onLoad = "uiNamespace setVariable ['VirtualGarageDialog', _this select 0]; []spawn VGFE_fnc_client_onVirtualGarageDialogLoad;";
    movingenable=false;
	#include "VGFE_defines.hpp"	
	class Controls
	{
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by Ghostrider, v1.063, #Mycero)
		////////////////////////////////////////////////////////

		class VGFE_background:RscBackground
		{
			idc = 1000;
			x = 0.242187 * safezoneW + safezoneX;
			y = 0.17 * safezoneH + safezoneY;
			w = 0.510469 * safezoneW;
			h = 0.561 * safezoneH;
			colorText[] = {0.1,0.1,0.1,1};
			colorBackground[] = {0.48,0.5,0.35,1};	
		};
		class VGFE_StoredVehicles: RscListBox
		{
			shadow = 0; // Shadow (0 - none, 1 - directional, color affected by colorShadow, 2 - black outline)
			colorBackground[] = {0,0,0,0.7};
			colorBackgroundActive[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			colorTextActive[] = {0,0,0,1};
			colorDisabled[] = {1,1,1,0.5}; // Disabled text color
			colorSelect[] = {1,1,1,1}; // Text selection color
			colorSelect2[] = {1,1,1,1}; // Text selection color (oscillates between this and colorSelect)
			colorShadow[] = {0,0,0,0.5}; // Text shadow color (used only when shadow is 1)
			pictureColor[] = {1,0.5,0,1}; // Picture color
			pictureColorSelect[] = {1,1,1,1}; // Selected picture color
			pictureColorDisabled[] = {1,1,1,0.5}; // Disabled picture color

			tooltip = "Select a Vehicle to Retrieve"; // Tooltip text
			tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
			tooltipColorText[] = {1,1,1,1}; // Tooltip text color
			tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

			period = 1; // Oscillation time between colorSelect/colorSelectBackground2 and colorSelect2/colorSelectBackground when selected

			rowHeight = 1.5 * GUI_GRID_CENTER_H; // Row height
			itemSpacing = 0; // Height of empty space between items
			maxHistoryDelay = 1; // Time since last keyboard type search to reset it
			canDrag = 1; // 1 (true) to allow item dragging

			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1}; // Sound played when an item is selected

			// Scrollbar configuration (applied only when LB_TEXTURES style is used)
			class ListScrollBar //In older games this class is "ScrollBar"
			{
				width = 0; // width of ListScrollBar
				height = 0; // height of ListScrollBar
				scrollSpeed = 0.01; // scroll speed of ListScrollBar
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa"; // Arrow
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa"; // Arrow when clicked on
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa"; // Slider background (stretched vertically)
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa"; // Dragging element (stretched vertically)

				color[] = {1,1,1,1}; // Scrollbar color
			};
			onLBSelChanged = "[] call VGFE_fnc_client_onLbSelChangedStoredVehicleList";
			idc = 1500;
			x = 0.247344 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.44 * safezoneH;

		};
		class VGFE_LocalVehicles: VGFE_StoredVehicles
		{
			idc = 1501;
			tooltip = "Select a Vehicle to Store"; // Tooltip text			
			onLBSelChanged = "[] call VGFE_fnc_client_onLbSelChangedLocalVehicleList";
			x = 0.5825 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.44 * safezoneH;
		};
		class VGFE__pictures: RscPicture
		{
			style = 48;//ST_PICTURE
			idc = 1200;
			// Update this as vehicles are selected and with either hanger or dock localizations
			//text = "\A3\EditorPreviews_F_Exp\Data\CfgVehicles\Land_Addon_05_F.jpg";
			text = "\A3\Soft_F_Exp\Offroad_01\Data\UI\map_Offroad_01_gen_CA.paa";
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.22 * safezoneH;
		};
		class VGFE_nickname: RscText
		{
			idc = 1009;
			x = 0.432969 * safezoneW + safezoneX;
			y = 0.555 * safezoneH + safezoneY;
			w = 0.134062 * safezoneW;
			h = 0.044 * safezoneH;
			text = "Vehicle Nickname";  // For the nickname
		};
		class VGFE_executeStoreRetrieve: RscButton
		{
			idc = 1600;
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.621 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.0449999 * safezoneH;
			colorText[] = {1,1,1,1};			
			text = "Action Button";	  			
		};
		class VGFE_ButtonMenuCancel: RscButtonMenuCancel
		{
			x = 0.670156 * safezoneW + safezoneX;
			y = 0.731 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,1};
			idc = 2;
		};
		class directions: RscStructuredText
		{
			idc = 1001;
			deletable = 0;
			fade = 0;
			access = 0;
			type = 13;
			style = 0;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,1};				
			text = ""; //--- ToDo: Localize;
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class progressLoading: RscProgress
		{
			idc = 1008;
			colorFrame[] = {0,0,0,1};
			colorBar[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.10])",
				"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.83])",
				"(profilenamespace getvariable ['GUI_BCG_RGB_B',1.0])",
				"(profilenamespace getvariable ['GUI_BCG_RGB_A',0.99])"
			};
			colorText[] = {0.1,0.83,1,0.8};
			colorBackground[] = {1,1,1,0.9999};
			x = 0.257656 * safezoneW + safezoneX;
			y = 0.126 * safezoneH + safezoneY;
			w = 0.469219 * safezoneW;
			h = 0.033 * safezoneH;

			shadow = 2;
			texture = "#(argb,8,8,3)color(1,1,1,1)";
		};		
		class topDecroative: RscText
		{
			idc = 1005;
			x = 0.247344 * safezoneW + safezoneX;
			y = 0.181 * safezoneH + safezoneY;
			w = 0.500156 * safezoneW;
			h = 0.055 * safezoneH;
			colorBackground[] = {1,1,1,1.0};
			shadow = 2;
		};
		class bottomDecorative: topDecroative
		{
			idc = 1006;
			x = 0.247344 * safezoneW + safezoneX;
			y = 0.698 * safezoneH + safezoneY;
			w = 0.500156 * safezoneW;
			h = 0.022 * safezoneH;		
		};	
		class Header: RscText
		{
			idc = 1007;
			style = 2;
			size = 1.5;

			text = "Virtual Vehicle Storage"; 
			x = 0.430907 * safezoneW + safezoneX;
			y = 0.1986 * safezoneH + safezoneY;
			w = 0.149531 * safezoneW;
			h = 0.034 * safezoneH;
			colorText[] = {0,0,0,1};
			colorBackground[] = {0,0,0,0};
			sizeEx = 1.5 * GUI_GRID_H;
			shadow = 2;			
		};
		class columnLabelGarage: Header
		{
			idc = 1010;

			text = "Garage"; 
			x = 0.297871 * safezoneW + safezoneX;
			y = 0.1986 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;		
		};
		class columnLabelBase: columnLabelGarage
		{
			idc = 1011;

			text = "Base";
			x = 0.635093 * safezoneW + safezoneX;	
		};		
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};
};