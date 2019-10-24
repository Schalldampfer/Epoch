private ["_zone","_SafeZones","_in"];

//Define Safezone position and area
_SafeZones = switch(toLower worldName)do{
	case "tanoa":{
		[
			[[11044.957,8471.4209],250,"Temple"],
			[[7039.79,9711.28,0],100,"Shrine"]
		]
	};
	default{[]};
};

//Create Markers
{
	_mPos = _x select 0;
	_mName = _x select 2;
	_mShape = "ELLIPSE";
	createMarkerLocal [_mName, _mPos];
	_mName setMarkerColorLocal "ColorGreen";
	_mName setMarkerShapeLocal _mShape;
	_mName setMarkerBrushLocal "Cross";
	_mName setMarkerSizeLocal [_x select 1, _x select 1];
	_mName setMarkerTextLocal _mName;
} forEach _SafeZones;

//Safezone Loop
_zone = objNull;
_in = false;
while {true} do {
	if ({player distance (_x select 0) < (_x select 1)} count _SafeZones > 0) then {
		if (isNull _zone) then {
			_zone = "ProtectionZone_Invisible_F" createVehicle (getPos player);
			_zone setPos (getPos player);
			["TaskSucceeded",["","You are in a safe zone"]] call BIS_fnc_showNotification;
			_in = true;
		} else {
			_zone setPos (getPos player);
		};
	} else {
		deleteVehicle _zone;
		_zone = objNull;
		if (_in) then {
			["TaskFailed",["","You got out of the safe zone"]] call BIS_fnc_showNotification;
		};
		_in = false;
	};
	sleep 5;
};
