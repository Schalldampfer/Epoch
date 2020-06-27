/*
	VGFE_fnc_onPlayerJoined
	Copyright 2020 by Ghostrider-GRG-
*/

params["_id","_uid","_name","_jip","_owner"];
private _querry = (["VGFE_DATA", _uid] call EPOCH_fnc_server_hiveGETRANGE);
//diag_log format["_fnc_onPlayerJoined: _querry = %1",_querry];
private ["_status","_vgfe"];
if ((_querry select 0) == 1 && (_querry select 1) isEqualType []) then 
{
	MyVGFE = _querry select 1;
	if !(MyVGFE isEqualTo []) then 
	{
		/* The player has logged on so lets be sure we update the expiresAt time */
		private _expiresAt = getText(missionConfigFile >> "CfgVGFE" >> "vgfeExpiresAt");
		["VGFE_DATA",_uid,_expiresAt] call EPOCH_fnc_server_hiveEXPIRE;
	};
} else {
	/*  some sort of error occured */
	MyVGFE = [];
};

private _querry2 = (["VGFE_KEY",_uid] call EPOCH_fnc_server_hiveGETRANGE);

private ["_status","_vgfeKey"];
if ((_querry2 select 0) == 1 && (_querry2 select 1) isEqualType []) then 
{
	MyVGFEkey = if ((_querry2 select 1) isEqualTo []) then {0} else {(_querry2 select 1) select 0};
	if !(MyVGFEkey == 0) then 
	{
		/* The player has logged on so lets be sure we update the expiresAt time */
		private _expiresAt = getText(missionConfigFile >> "CfgVGFE" >> "vgfeExpiresAt");
		["VGFE_KEY",_uid,_expiresAt] call EPOCH_fnc_server_hiveEXPIRE;		
	};
} else {
	MyVGFEkey = 0;	
};

diag_log format["<Initialized> VGFE_Server for player named %1 | uid %2 at time %3 | MyVGFE %4 | MyVGFEkey %5",_name,_uid,diag_tickTime,MyVGFE,MyVGFEkey];

{
	_owner publicVariableClient _x;
} forEach [
	 "MyVGFE",
	 "MyVGFEkey",
	"VGFE_fnc_client_getLocalVehicles",
	"VGFE_fnc_client_getNearbyJammers",
	"VGFE_fnc_client_isBuildOwner",
	"VGFE_fnc_client_onLbSelChangedLocalVehicleList",
	"VGFE_fnc_client_onLbSelChangedStoredVehicleList",
	"VGFE_fnc_client_setFocusOnLocalVehicleList",
	"VGFE_fnc_client_setFocusOnStoredVehicleList",
	"VGFE_fnc_client_storeVehicle",
    "VGFE_fnc_client_displayVirtualVehicleStorage",
	"VGFE_fnc_client_init",
	"VGFE_fnc_client_log",
	"VGFE_fnc_client_retrieveVehicle",
	"VGFE_fnc_client_onVirtualGarageDialogLoad",
	"VGFE_fnc_client_accessVehicleGarage",
	"VGFE_fnc_client_vehicleRetrieved",
	"VGFE_fnc_client_canRetrieve"
];