/*
	VGFE_fnc_client_canRetrieve
	Copyright 2020 by Ghostrider-GRG-
*/

params["_storagePoint","_allowedStoragePoint","_vehicleData"];
private _result = 0;
private _maxRange = 150;


switch(_storagePoint) do 
{
	case "VJ": {
		_maxRange = getNumber(missionConfigFile >> "CfgVGFE" >> "maxDistFromJammer");
		if (_maxRange == 0) then {_maxRange = 150};
	};
	case "VH": {
		_maxRange = getNumber(missionConfigFile >> "CfgVGFE" >> "maxDistFromHanger");
		if (_maxRange == 0) then {_maxRange = 250};		
	};
	case "VDD": {
		_maxRange = getNumber(missionConfigFile >> "CfgVGFE" >> "maxDistFromDryDock");
		if (_maxRange == 0) then {_maxRange = 350};
	};
	default {
		_maxRange = -1;
		diag_log format["[VGFE] <ERROR> Invalid Storage Point %1 used for Garage Slot %1",_storagePoint,_vehicleData];
	};
};

_vehicleData params ["_className","_location"];
private _posATL = _location select 0;
private _distance = player distance _posATL;
if (isNil "_maxRange") then {_maxrange = 75};
if (_maxRange == 0) then {_maxRange = 75};
private _inRange = if (_distance <= _maxRange) then {true} else {false};

if ((player distance _posATL) <= _maxRange && (_storagePoint isEqualTo _allowedStoragePoint)) then {_result = 1};

_result
