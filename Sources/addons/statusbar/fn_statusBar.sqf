waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
/*
	File: fn_statusBar.sqf
	Author: Osef (Ported to EpochMod by piX)
	Edited by: [piX]
	Description: Puts a small bar in the bottom centre of screen to display in-game information
	
	PLEASE KEEP CREDITS - THEY ARE DUE TO THOSE WHO PUT IN THE EFFORT!

	Modified by: [piX] & Schalldampfer
*/
_rscLayer = "osefStatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["osefStatusBar","PLAIN"];
systemChat format["statusBar Loading player info...", _rscLayer];

[] spawn {
	sleep 5;
	while {true} do {
		sleep 2.5;
		((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetStructuredText parseText format[
			"
			<t> Health %2%1 |</t>
			<t> Body Temp. %3°C |</t>
			<t> <img size='1.6'  shadowColor='#000000' image='addons\statusbar\images\hunger.paa'  color='#DAADAD'/> %4%1 |</t>
			<t> <img size='1.6'  shadowColor='#000000' image='addons\statusbar\images\thirst.paa' color='#ADADDA'/> %5%1 |</t>
			<t> <img size='1.6'  shadowColor='#000000' image='addons\statusbar\images\krypto.paa' color='#DADAAD'/> %6 |</t>
			<t> <img size='1.6'  shadowColor='#000000' image='addons\statusbar\images\energy.paa' color='#ADDAAD'/> %7%1 |</t>
			<t> FPS: %8</t>
			",
			"%",
			100 - round ((damage player) * 100),
			EPOCH_playerTemp call EPOCH_convertTemp,
			round (EPOCH_playerHunger / 50),
			round (EPOCH_playerThirst / 25),
			EPOCH_playerCrypto,
			round (EPOCH_playerEnergy / 25),
			round diag_fps
		];
	};
};
