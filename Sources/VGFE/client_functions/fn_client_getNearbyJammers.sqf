/*
	VGFE_fnc_client_getNearbyJammers
	Copyright 2020 by Ghostrider-GRG-
*/
private _jammerRange = getnumber (missionConfigFile >> "CfgEpochClient" >> "buildingJammerRange");

private _freqJammers = nearestObjects[
	getPosATL player,
	[] call EPOCH_JammerClasses, 
	200
];

private _jammer = objNull;
{
	if ([player, _x] call VGFE_fnc_client_isBuildOwner) exitWith 
	{
		_jammer = _x;
		_jammerRange = getNumber(missionConfigFile >> "CfgEpochClient" >> typeOf _jammer >>  "buildingJammerRange");
	};
} forEach _freqJammers;
private "_return";
if (isNull _jammer) then 
{
	_return = -1;
} else {
	_return = [_jammer,_jammerRange];	
};

_return