private ["_group","_vehname","_index","_players","_count","_unitGroup","_veh","_mName","_mPos"];

if (isDedicated) exitWith {};

_players = +(allPlayers);
_count = count _players;

while {true} do {
	//delete marker
	for "_index" from 0 to (_count - 1) do {
		deleteMarkerLocal format["playerMarker%1",_index];
	};

	if ("ItemGPS" in (assignedItems player)) then {
		//set player list
		{
			_players pushBackUnique _x;
		} forEach allPlayers;
		{
			if (isNull _x) then {
				_players = _players - [_x];
			};
		} forEach _players;
		_count = count _players;

		//create marker
		_group = units group player;
		{
			_veh = vehicle _x;
			if ((alive _x) && !(_x in _group) && (effectiveCommander _veh == _x)) then {
				// Set group name
				if (_veh == _x) then {
					_vehname = name _x;
				} else {
					// Get vehicle name
					_vehname = gettext (configFile >> 'CfgVehicles' >> (typeof _veh) >> 'displayName');
					// Get crew names
					{
						_vehname = _vehname + ", " + (name _x);
					} forEach (crew _veh);
				};
				_vehname = format ["[%1]@%2m",_vehname,round(_veh distance player)];

				// Add Marker
				_mName = format["playerMarker%1",_forEachIndex];
				_mPos = getpos _x;
				_marker = createMarkerLocal [_mName, _mPos];
				_marker setMarkerColorLocal "ColorGreen";
				_marker setMarkerTypeLocal "b_inf";
				_marker setMarkerTextLocal _vehname;
			};
		} forEach _players;
	};

	sleep 5;
};
