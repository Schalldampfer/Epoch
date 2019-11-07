private ["_vehname","_index","_count","_unitGroup","_veh","_markername","_mName","_mPos","_warned"];

if (!hasInterface) exitWith {};

EP_players = [];
_count = 0;
_warned = false;
EP_hasGPS = false;
_markername = "playerMarker%1";

//3D marker
addMissionEventHandler ['Draw3D', {
	if (EP_hasGPS) exitWith {
		{
			drawIcon3D ["\A3\ui_f\data\map\markers\nato\b_inf.paa", [0.2,1.0,0.2,1], ASLToAGL getPosASL _x, 0.35, 0.35, 0, _x getVariable["EP_playerName","Player"], 0, 0.05, "PuristaMedium"];
		} foreach EP_players;
	};
}];

//Marker and updates
while {true} do {
	//delete marker
	for "_index" from 0 to (_count - 1) do {
		deleteMarkerLocal format[_markername,_index];
	};

	EP_hasGPS = "ItemGPS" in (assignedItems player);
	if (EP_hasGPS) then {
		//set alive & commander player list
		EP_players = [];
		{
			_veh = vehicle _x;
			if ((alive _x) && (effectiveCommander _veh == _x)) then {
				EP_players pushBack _veh;
			};
		} forEach allPlayers;
		EP_players = EP_players - [player];
		_count = count EP_players;

		//create marker
		{
			// Set group name
			if (effectiveCommander _x == _x) then {
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
			_mName = format[_markername,_forEachIndex];
			_mPos = getpos _x;
			_marker = createMarkerLocal [_mName, _mPos];
			_marker setMarkerColorLocal "ColorGreen";
			_marker setMarkerTypeLocal "b_inf";
			_marker setMarkerTextLocal _vehname;
		} forEach EP_players;
		
		if ({(alive _x) && (player distance _x < viewDistance)} count EP_players > 0) then {
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
