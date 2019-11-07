private ["_players","_vehname","_index","_count","_markername","_warned"];

if (!hasInterface) exitWith {};

_count = 0;
_markername = "playerMarker%1";
_players = []; //list of alive & commander player's vehicles
_warned = false;
EP_hasGPS = false;
EP_players = []; //list of player vehicles in view range

//3D marker
addMissionEventHandler ['Draw3D', {
	{
		drawIcon3D ["\A3\ui_f\data\map\markers\nato\b_inf.paa", [0.2,1.0,0.2,1], ASLToAGL getPosASL _x, 0.35, 0.35, 0, _x getVariable["EP_playerName","Player"], 0, 0.05, "PuristaMedium"];
	} foreach EP_players;
}];

//Marker and updates
while {true} do {
	//delete marker
	for "_index" from 0 to (_count - 1) do {
		[format[_markername,_index]] call EPOCH_removeMarker;
	};

	EP_hasGPS = "ItemGPS" in (assignedItems player);
	EP_players = [];
	_players = [];
	if (EP_hasGPS) then {
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
		
		if (count EP_players > 0) then {
			if (!_warned) then {
				_warned = true;
				["Another player is in your view range.",5] call Epoch_message;
			};
		} else {
			_warned = false;
		};
	};

	sleep 5;
};
