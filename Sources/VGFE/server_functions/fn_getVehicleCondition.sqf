/*
	VGFE_fnc_getVehicleCondition
	Copyright 2020 by Ghostrider-GRG-
*/
params["_vehicle"];
private _fuel = fuel _vehicle;
private _hitpoints = getAllHitPointsDamage _vehicle;
private _vehicleHitpoints = [];
if!(_hitpoints isEqualTo [])then
{
	{
		_vehicleHitpoints pushBack [_x ,_vehicle getHitPointDamage _x];
	}forEach (_hitpoints select 0);
};
private _damage = damage _vehicle;
private _condition = [_fuel,_damage,_vehicleHitpoints];

_condition

