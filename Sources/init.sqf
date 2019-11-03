[] execVM "addons\halv_spawn\init.sqf";
[] execVM "addons\safezone\init.sqf";
[] execVM "R3F_LOG\init.sqf";
[] execVM "trader\init.sqf";
[] execVM "trader\resetvehicleammo.sqf";
[] execVM "trader\HALV_takegive_crypto_init.sqf";
#include "addons\A3EAI_Client\A3EAI_initclient.sqf";
[] execVM "addons\blckClient.sqf";

if (!(hasInterface)) exitWith {};
[] execVM "addons\safezone\showplayer.sqf";
//player marker
addMissionEventHandler ['Draw3D', {
	private ["_vehname","_veh"];
	if ("ItemGPS" in (assignedItems player)) exitWith {
		{
			if ((alive _x) && (_x distance player) < viewDistance) then {
				_veh = vehicle _x;
				//only vehicle leader
				if (_x == effectiveCommander _veh) then {
					// Set group name
					if (_veh == _x) then {
						_vehname = name _x;
					} else {
						_vehname = typeOf _veh;
						// Get crew names
						{
							_vehname = _vehname + ", " + (name _x);
						} forEach (crew _veh);
					};
				
					//draw Icon
					drawIcon3D ["\A3\ui_f\data\map\markers\nato\b_inf.paa", [0.2,1.0,0.2,1], ASLToAGL getPosASL _x, 0.35, 0.35, 0, _vehname, 0, 0.05, "PuristaMedium"];
				};
			};
		} foreach allPlayers;
	};
}];