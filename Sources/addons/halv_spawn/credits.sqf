if(isServer)exitWith{};
/*
	Simple Credits script
	by Halv
*/
sleep 2.5; // sleep before the welcome message starts (in seconds)

_alltext = [
	[
		//Title
		"Welcome to",
		//Title Color
		"#71C700", //green light
		[
			//Sub Text(s)
			"   Epoch Mod",
			"- Tanoa Server -"
		]
	],
	[
		"Main Rules :",
		"#C80000", //Red dark
		[
			"No Shooting in/to SafeZones!"," ","Play fair!"," ","Dont be a douche!"
		]
	],
	[
		"Main Rules :",
		"#0096ff", //Blue Light
		[
			"[F10] to open your smartphone","Keep pressing [Space] to open 'Dyna Menu'"
		]
	],
	[
		"Server Mods :",
		"#0096ff", //Blue Light
		[
			"Respawn selection","Deploy Bike ([Space] -> 'Deploy Bike')","Teleport from Trader","Bank ATM at Trader","AI patrols","AI cities","",
			"And Much more ..."
		]
	],
	[
		"Server Restarts :",
		"#ffff00", //Yellow
		[
			"4 Hour Schedule"," "," (not set times)"
			//"00:00","04:00","08:00","12:00","16:00","20:00","GMT + 1"
		]
	]
];

{
	sleep 2;
	_memberFunction = _x select 0;
	_color = _x select 1;
	_memberNames = _x select 2;
	_finalText = format ["<t size='0.65'color='%2'align='left'shadow='1'>%1<br /></t><t size='0.1'><br /></t><t size='0.5'shadow='1'color='#EBEBEB'align='left'>", _memberFunction,_color];
	{_finalText =_finalText + format ["%1<br />", _x]} forEach _memberNames;
	_finalText = _finalText + "</t>";
	_onScreenTime = (count _memberNames) * 0.5;
	if(_onScreenTime < 6)then{_onScreenTime = 5};
	[_finalText,[safezoneX + safezoneW - 0.5,0.35],[safezoneY + safezoneH - 0.8,0.7],_onScreenTime,0.5] spawn BIS_fnc_dynamicText;
	sleep (_onScreenTime);
} forEach _alltext;