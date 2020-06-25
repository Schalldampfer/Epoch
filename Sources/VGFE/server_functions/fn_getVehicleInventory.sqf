/*
	VGFE_fnc_getVehicleInventory
	Copyright 2020 by Ghostrider-GRG-
*/

params["_vehicle"];
private "_inventory";
private _saveInventory = getNumber(missionConfigFile >> "CfgVGFE" >> "saveIventory");
if (_saveInventory == 1) then {
	_inventory = [_vehicle] call EPOCH_server_CargoSave;
} else {
	_inventory = [];
};

_inventory
