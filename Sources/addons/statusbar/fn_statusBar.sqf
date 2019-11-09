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
		sleep 2;
		((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetText format[
			"DAMAGE: %1 | Body Temp. %2°C | HUNGER: %3 | THIRST: %4 | Crypto: %5 | FPS: %6",
			damage player,
			EPOCH_playerTemp call EPOCH_convertTemp,
			EPOCH_playerHunger,
			EPOCH_playerThirst,
			EPOCH_playerCrypto,
			round diag_fps
		];
	};
};
