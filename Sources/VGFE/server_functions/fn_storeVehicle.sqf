/*
	VGFE_fnc_storeVehicle 
	Copyright 2020 by Ghostrider-GRG-
*/

params["_vgfe","_vgfeKey","_accessPoint","_vehicle","_player"];

private _vehSlot = _vehicle getVariable ["VEHICLE_SLOT", "ABORT"];
if !(_vehSlot isEqualTo "ABORT") then 
{  //  So we do not store temporary vehicles
	_vgfeKey = _vgfeKey + 1;

	private _expiresAt = getNumber(missionConfigFile >> "CfgVGFE" >> "vgfeExpires");
	//private _inventory = [_vehicle] call VGFE_fnc_getVehicleInventory;
	private _vehicleData = [
		typeOf _vehicle,
		[getPosATL _vehicle,[vectordir _vehicle,vectorup _vehicle]],
		[_vehicle] call VGFE_fnc_getVehicleCondition,
		[_vehicle] call VGFE_fnc_getVehicleInventory,
		getObjectTextures _vehicle,
		[_vehicle] call VGFE_fnc_getVehicleLoadout,
		getPlateNumber _vehicle,
		locked _vehicle
	];

	/* we can only process one client request at a time so add a check for a pendiing request to access VG */
	waitUntil{MyVGFEstate == 1};

	/* Tell the server a request is pending */
	MyVGFEstate = 0;

	_vgfe pushBack [_vgfeKey,_accessPoint,_vehicleData];
	MyVGFE = _vgfe;
	MyVGFEkey = _vgfeKey;
	(owner _player) publicVariableClient "MyVGFE";
	(owner _player) publicVariableClient "MyVGFEkey";
	private _expiresAt = getNumber(missionConfigFile >> "CfgVGFE" >> "vgfeExpiresAt");
	["VGFE_DATA", getPlayerUID _player, _expiresAt, MyVGFE] call EPOCH_fnc_server_hiveSETEX;
	["VGFE_KEY",getPlayerUID _player,_expiresAt,[MyVGFEkey]] call EPOCH_fnc_server_hiveSETEX;

	/* It is now safe to go ahead with other operations using MyVGFE / MyVGFEkey */
	MyVGFEstate = 1;

	deleteVehicle _vehicle;	

	private _storageCost = getNumber(missionConfigFile >> "CfgVGFE" >> "storageCost");
	if (_storageCost > 0) then 
	{
		[_player,(_storageCost * -1)] call EPOCH_server_effectCrypto;
	};

	/*
		The code below was adapted from files in epoch_server.
		Credit: EpodhMod Development Team 
		https://github.com/EpochModTeam/Epoch
	*/

	private _vehHiveKey = format ["%1:%2", (call EPOCH_fn_InstanceID), _vehSlot];
	["Vehicle", _vehHiveKey] call EPOCH_fnc_server_hiveDEL;
	EPOCH_VehicleSlots pushBackUnique _vehSlot;
	missionNamespace setVariable ['EPOCH_VehicleSlotCount', count EPOCH_VehicleSlots, true];
	[format["Vehicle Stored"]] remoteExec["systemChat",owner _player];
	["Vehicle Stored",5] remoteExec["Epoch_Message",owner player];
	//[format["Vehicle Stored | _key updated to %1",MyVGFEkey]] remoteExec["diag_log",owner _player];
} else {
	private _error = format["ERROR: %1 is a temporary vehicle and can not be stored",getText(configFile >> "CfgVehicles" >> typeOf _vehicle >> "displayName")];
	[_error] remoteExec["systemChat",(owner _player)];
	[_error,5] remoteExec["EPOCH_Message",(owner _player)];
	[_error] remoteExec["diag_log",(owner _player)];
};

/*  TODO: Add error condition when vehicle can not be stored - message player  */

/* tell the server the VG is ready to handle other requests */
MyVGFEstate = 1;


