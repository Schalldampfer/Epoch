/*
	VGFE_fnc_setVehicleLoadout 
	Copyright 2020 by Ghostrider-GRG-	
*/

params["_vehicle","_loadout"];

/* Clear vehicle weapons loadouts */
// turrets
{
	_x params["_magazine","_turretPath","_ammoCount"];		
	_vehicle removeMagazinesTurret [_magazine,_turretPath];
} forEach magazinesAllTurrets _vehicle;

// clear any loaded pylon ammo
private _pylonnames = "true" configClasses (configFile >> "CfgVehicles" >> typeOf _vehicle >> "Components" >> "TransportPylonsComponent" >> "pylons") apply {configName _x};

{
	_vehicle setPylonLoadOut [_x,""];
} forEach _pylonNames;

private _saveLoadout = getNumber(missionConfigFile >> "CfgVGFE" >> "saveWeaponLoadouts");
if (_saveLoadout == 1) then 
{
	_loadout params["_turretLoadout","_pylonLoadout"];

	// deal with turrets;
	{
		_x params["_magazine","_turretPath","_ammoCount"];
		_vehicle addMagazineTurret[_magazine,_turretPath,_ammoCount];
	} forEach _turretLoadout;

	private _pylonMagazines = getPylonMagazines _vehicle;
	// deal with pylons 
	{
		_x params["_pylonName","_pylonWeapon","_ammoCount"];
		_vehicle setPylonLoadOut [_pylonName,_pylonWeapon];
		_vehicle setAmmoOnPylon [_pylonName,_ammoCount];	
	} forEach _pylonLoadout;
};
