/*
	VGFE_fnc_setVehicleInventory
	Copyright 2020 by Ghostrider-GRG-
*/

params["_vehicle","_inventory"];
private _saveInventory = getNumber(missionConfigFile >> "CfgVGFE" >> "saveIventory"); 
if (_saveInventory == 1) then 
{
	[_vehicle,_inventory] call EPOCH_server_cargoFill;
} else {
	clearWeaponCargoGlobal    _vehicle;
	clearMagazineCargoGlobal  _vehicle;
	clearBackpackCargoGlobal  _vehicle;
	clearItemCargoGlobal      _vehicle;
};