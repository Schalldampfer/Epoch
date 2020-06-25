/*
	VGFE_fnc_retrieveVehicle 
	Copyright 2020 by Ghostrider-GRG-
*/

params["_vgfe","_key","_player"];
//diag_log format["_fnc_retriveVehicle: _player = %1 | _key = %2 | _vgfe = %3",_player,_key,_vgfe];
/* we can only process one client request at a time so add a check for a pendiing request to access VG */

private _vgfeSlot = [];
private _index = -1;
if !(EPOCH_VehicleSlots isEqualTo []) then 
{
	/* Get vehicle data from VG */
	{
		if (_key == (_x select 0)) exitWith {_vgfeSlot = _x; _index = _forEachIndex};
	} forEach _vgfe;
	private _vgfeSlot = _vgfe select _index;
	_vgfeSlot params["_key","_accessPoint","_vehicleData"];
	_vehicleData params ["_className","_location","_condition","_inventory","_textures","_loadout","_nickname","_vehicleLockState"];

	/*
		The code below was adapted from files in epoch_server.
		Credit: EpodhMod Development Team 
		https://github.com/EpochModTeam/Epoch
	*/	
		/* Spawn and configure the vehicle */
	
	// [type, position, markers, placement, special]: 
	private _vehicle = createVehicle[_classname,[0,0,0],[],20,"NONE"];

	if !(isNull _vehicle) then 
	{
		_vehicle allowDamage false;
		_vehicle call EPOCH_server_setVToken;
		[_vehicle,_location] call VGFE_fnc_setVehicleLocation;

		// set fuel, damage and hitpoints
		[_vehicle,_condition] call VGFE_fnc_setVehicleCondition;
		_vehicle allowDamage false;

		// Setup vehicle inventory
		[_vehicle,_inventory] call VGFE_fnc_setVehicleInventory;

		// Set vehicle textures and EPOCH texture variable
		[_vehicle,_textures] call VGFE_fnc_setVehicleTextures;
		
		// reload turrets / pylons here so that any epoch cleanup occurs AFTER we do that (just in case)
		[_vehicle,_loadout] call VGFE_fnc_setVehicleLoadout;

		// Restore any nickname information on license plate 
		_vehicle setPlateNumber _nickname;

		//  Handle some special conditions like moving player into drivers seat and vehicle lock state
		private _moveIntoVehicle = getNumber(missionConfigFile >> "CfgVGFE" >> "movePlayerToDriver");
		private _lockOnRetrieval = getNumber(missionConfigFile >> "CfgVGFE" >> "lockOnRetrieval");
		//diag_log format["_fnc_retrieveVehicle: _moveIntoVehicle = %1 | _lockOnRetrieval = %2 | _vehicleLockState = %3",_moveIntoVehicle,_lockOnRetrieval,_vehicleLockState];
		if (_moveIntoVehicle == 1) then 
		{
			_vehicle lock 0;
			_vehicleLockState = 0;			
			//_vehicle setOwner (owner _player);
			[_player,_vehicle] remoteExec["moveInDriver", (owner _player)];
		} else {
			if (_lockOnRetrieval == 1) then 
			{
				_vehicle lock 2;
				_vehicleLockState = 2;
			} else {
				_vehicle lock _vehicleLockState;
			};
		};

		// Lock vehicle for owner
		private _lockOwner = getPlayerUID _player;
		private _playerGroup = _player getVariable["GROUP", ""];
		if (_playerGroup isEqualTo "") then {
			_lockOwner = _playerGroup;
		};	

		/*
			Deal with turrets and turret ammo according to EPOCH configs.
		*/
		private _serverSettingsConfig = configFile >> "CfgEpochServer";
		// Remove restricted weapons 
		private _removeweapons = [_serverSettingsConfig, "removevehweapons", []] call EPOCH_fnc_returnConfigEntry;
		if !(_removeweapons isequalto []) then {
			{
				_vehicle removeWeaponGlobal _x;
			} foreach _removeweapons;
		};

		//Remove restricted magazines
		private _removemagazinesturret = [_serverSettingsConfig, "removevehmagazinesturret", []] call EPOCH_fnc_returnConfigEntry;
		if !(_removemagazinesturret isequalto []) then {
			{
				_vehicle removeMagazinesTurret _x;
			} foreach _removemagazinesturret;
		};

		// Disable Termal Equipment
		private _disableVehicleTIE = [_serverSettingsConfig, "disableVehicleTIE", true] call EPOCH_fnc_returnConfigEntry;
		if (_disableVehicleTIE) then {
			_vehicle disableTIEquipment true;
		};

		/*
			Take care of some EPOCH bookkeeping for vehicles, save the vehicle to the HIVE, etc.
		*/
		private _slot = EPOCH_VehicleSlots deleteAt 0;
		missionNamespace setVariable ['EPOCH_VehicleSlotCount', count EPOCH_VehicleSlots, true];	

		// Set slot used by vehicle
		_vehicle setVariable["VEHICLE_SLOT", _slot, true];
		// SAVE VEHICLE
		_vehicle call EPOCH_server_save_vehicle;

		// Event Handlers
		_vehicle call EPOCH_server_vehicleInit;

		// save lock state information to the HIVE	
		private _locked = _vehicleLockState in [1,2,3];
		if (_locked && _lockOwner != "") then {
			private _vehLockHiveKey = format["%1:%2", (call EPOCH_fn_InstanceID), _slot];
			["VehicleLock", _vehLockHiveKey, EPOCH_vehicleLockTime, [_lockOwner]] call EPOCH_fnc_server_hiveSETEX;
		} else {
			private _vehLockHiveKey = format["%1:%2", (call EPOCH_fn_InstanceID), _slot];
			["VehicleLock", _vehLockHiveKey] call EPOCH_fnc_server_hiveDEL;
		};

		// Add to A3 remains collector
		addToRemainsCollector[_vehicle];	

		_vehicle allowDamage true;

		// new Dynamicsimulation
		if([configFile >> "CfgEpochServer", "vehicleDynamicSimulationSystem", true] call EPOCH_fnc_returnConfigEntry)then
		{
			_vehicle enableSimulationGlobal false; // turn it off until activated by dynamicSim
			_vehicle enableDynamicSimulation true;
		};

		waitUntil{MyVGFEstate == 1};

		/* Tell the server a request is pending */
		MyVGFEstate = 0;

		/* Vehicle successfully spawned, update the VG */
		_vgfe deleteAt _index;
		MyVGFE = _vgfe;
		(owner _player) publicvariableclient "MyVGFE";
		private _playerUID = getPlayerUID _player;

		/* pull this from configs */ 
		private _expiresAt = getNumber(missionConfigFile >> "CfgVGFE" >> "vgfeExpiresAt");
		["VGFE_DATA",_playerUID,_expiresAt,_vgfe] call EPOCH_fnc_server_hiveSETEX;

		/* Tell the server a request can be processed */
		MyVGFEstate = 1;

		/* tell the player the vehicle was retrieved successfully */
		private _displayName = getText(configFile >> "CfgVehicles" >> _className >> "displayName");
		private _m = format["%1 has been retrieved from storage",_displayName];
		[_m] remoteExec["systemChat",owner _player];
		//[_m] remoteExec["diag_log",owner _player];
		[_m,5] remoteExec["EPOCH_Message",owner _player];
		[_vehicle] remoteExec["VGFE_fnc_client_vehicleRetrieved",owner _player];
	} else {
		/* tell the player something went wrong */
		private _displayName = getText(configFile >> "CfgVehicles" >> _className >> "displayName");
		_m = format["Unable to retrieve %1 from storage",_displayName];
		[_m] remoteExec["systemChat",owner _player];
		[_m] remoteExec["diag_log",owner _player];
		[_m] remoteExec["EPOCH_Message",owner _player];		
	};
} else {
	/*
		Tell the player there were nsufficient slots to spawn permenant vehicle
	*/
	["Insufficient Room on Server to Retrieve Vehicle"] remoteExec["systemChat",owner _player];
	["Insufficient Room on Server to Retrieve Vehicle: Contact Server Owner",5] remoteExec["Epoch_Message",owner player];
	["Insufficient Room on Server to Retrieve Vehicle: Contact Server Owner"] remoteExec["diag_log",owner _player];
};

MyVGFEstate = 1;

