/*
	VGFE_fnc_client_getLocalVehicles 
	Copyright 2020 by Ghostrider-GRG-
*/

params["_types","_object"];
private _vehicles = [];
private "_v";
private _searchDistance = getNumber(missionConfigfile >> "CfgVGFE" >> "vehicleSearchDistance");
private _vehicles = nearestObjects[getPosATL player,_types,_searchDistance] select {local _x};

_vehicles	