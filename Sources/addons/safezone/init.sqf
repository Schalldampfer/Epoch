private ["_zone","_SafeZones","_in","_players","_vehname","_index","_count","_markername","_warned","_warnedAI","_distanceAI"];
/* Safezone, Player Marker and Warning */
/* Created by Schalldampfer */

//Define Safezone position and area
_SafeZones = switch(toLower worldName)do{
	case "tanoa":{
		[
			[[11044.957,8471.4209],250,"Temple"],
			[[7039.79,9711.28,0],100,"Shrine"]
		]
	};
	case "malden":{
		[
			[[5551.48,7882.33,0],100,"Main Trader"],
			[[2538.51,5710.60,0],50,"Trader"],
			[[6262.85,4745.89,0],50,"Trader"]
		]
	};
	default{[]};
};

//Unlock vehicles in
if (isServer) then {
	private ["_pos","_dist"];
	{
		_pos = _x select 0;
		_dist = _x select 1;
		{
			_x lock false;
		} forEach (_pos nearObjects ["AllVehicles", _dist]);
	} forEach _SafeZones;
};
if (!hasInterface) exitWith {};

_distanceAI = 300;
_count = 0;
_markername = "playerMarker%1";
_players = []; //list of alive & commander player's vehicles
_warned = false;
_warnedAI = false;
EP_hasGPS = false;
EP_players = []; //list of player vehicles in view range

//Create Markers
{
	[_x select 0,_x select 0,"ELLIPSE","mil_dot","ColorGreen",[_x select 1, _x select 1],"Cross",0,_x select 2,1,_x select 2] call EPOCH_makeMarker;
} forEach _SafeZones;

//3D marker
addMissionEventHandler ['Draw3D', {
	{
		drawIcon3D ["\A3\ui_f\data\map\markers\nato\b_inf.paa", [0.2,1.0,0.2,1], ASLToAGL getPosASL _x, 0.35, 0.35, 0, _x getVariable["EP_playerName","Player"], 0, 0.03, "PuristaMedium"];
	} foreach EP_players;
}];

//Safezone Loop
_zone = objNull;
_in = false;
while {true} do {
	//delete marker
	for "_index" from 0 to (_count - 1) do {
		[format[_markername,_index]] call EPOCH_removeMarker;
	};

	//safezone
	if ({player distance (_x select 0) < (_x select 1)} count _SafeZones > 0) then {
		if (isNull _zone) then {
			_zone = "ProtectionZone_Invisible_F" createVehicle (getPos player);
			_zone setPos (getPos player);
			["TaskSucceeded",["","You are in a safe zone"]] call BIS_fnc_showNotification;
			_in = true;
		} else {
			_zone setPos (getPos player);
		};
	} else {
		deleteVehicle _zone;
		_zone = objNull;
		if (_in) then {
			["TaskFailed",["","You got out of the safe zone"]] call BIS_fnc_showNotification;
		};
		_in = false;
	};

	//marker and player warning
	EP_hasGPS = "ItemGPS" in (assignedItems player);
	EP_players = [];
	_count = 0;
	if (EP_hasGPS) then {
		_players = [];
		//set alive & commander player list
		{
			if (alive _x) then {
				_players pushBackUnique (vehicle _x);
			};
		} forEach allPlayers;
		_players = _players - [vehicle player];
		_count = count _players;

		//create marker
		{
			// Set group name
			if (_x == effectiveCommander _x) then {
				_vehname = name _x;
			} else {
				// Get vehicle name
				_vehname = gettext (configFile >> 'CfgVehicles' >> (typeof _x) >> 'displayName');
				// Get crew names
				{
					_vehname = _vehname + ", " + (name _x);
				} forEach (crew _x);
			};
			_vehname = format ["[%1]@%2m",_vehname,round(_x distance player)];
			_x setVariable["EP_playerName",_vehname,false];

			// Add Marker
			[_x,getpos _x,"ICON","b_inf","ColorGreen",[1,1],"",0,_vehname,1,format[_markername,_forEachIndex]] call EPOCH_makeMarker;
			
			//check distance
			if ((player distance _x) < viewDistance) then {
				EP_players pushBack _x;
			};
		} forEach _players;
		
		//Warning
		if (count EP_players > 0) then {
			if (!_warned) then {
				_warned = true;
				["Another player is in your view range.",5] call Epoch_message;
			};
		} else {
			_warned = false;
		};
		if (count (player nearEntities ["I_Soldier_EPOCH", _distanceAI]) > 0) then {
			if (!_warnedAI) then {
				_warnedAI = true;
				[format["Someone is within %1m around you",_distanceAI],4] call Epoch_message;
			};
		} else {
			_warnedAI = false;
		};
	};

	sleep 5;
};
