/*
	VGFE_fnc_setVehicleCondition
	Copyright 2020 by Ghostrider-GRG-
*/

params["_vehicle","_condition"];
_vehicle allowDamage true;
_condition params["_fuel","_damage","_vehicleHitPoints"];
private _reapplyFuel = getNumber(missionConfigFile >> "CfgVGFE" >> "reapplyFuel");
if (_reapplyFuel == 1) then 
{
	_vehicle setFuel _fuel;
};

private _reapplyDamage = getNumber(missionConfigFile >> "CfgVGFE" >> "reapplyDamage"); 
if (_reapplyDamage == 1) then
{
	_vehicle setDamage _damage;
	{
		_vehicle setHitPointDamage [_x select 0, _x select 1];
	}forEach _vehicleHitPoints;
};
