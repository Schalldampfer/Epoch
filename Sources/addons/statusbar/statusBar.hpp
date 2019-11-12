#define ST_RIGHT 0x01

class osefStatusBar {
	idd = -1;
	onLoad = "uiNamespace setVariable ['osefStatusBar', _this select 0]";
	onUnload = "uiNamespace setVariable ['osefStatusBar', objNull]";
	onDestroy = "uiNamespace setVariable ['osefStatusBar', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 1000;
			x = safezoneX + safezoneW - 1.80;
			y = safezoneY + safezoneH - 0.06;
			w = 1.75;
			h = 0.06;
			shadow = 1;
			colorBackground[] = { 0, 0.3, 1, 0.0 };
			font = "PuristaSemibold";
			size = 0.05;
			type = 13;
			style = 0;
			text="Loading player stats ...";
			class Attributes {
				align="right";
				color = "#58FAAC";
			};
		};
	};
};