waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
/*
	File: fn_statusBar.sqf
	Author: Osef (Ported to EpochMod by piX)
	Edited by: [piX]
	Description: Puts a small bar in the bottom centre of screen to display in-game information
	
	PLEASE KEEP CREDITS - THEY ARE DUE TO THOSE WHO PUT IN THE EFFORT!

*/
_rscLayer = "osefStatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["osefStatusBar","PLAIN"];
systemChat format["statusBar Loading player info...", _rscLayer];

[] spawn {
	sleep 5;
	while {true} do {
		sleep 2.5;
		((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetText format[
			"HEALTH: %2%1 | Body Temp. %3°C | HUNGER: %4%1 | THIRST: %5%1 | Crypto: %6 | FPS: %7",
			"%",
			100 - round ((damage player) * 100),
			EPOCH_playerTemp call EPOCH_convertTemp,
			round (EPOCH_playerHunger / 50),
			round (EPOCH_playerThirst / 25),
			EPOCH_playerCrypto,
			round diag_fps
		];
	};
};
