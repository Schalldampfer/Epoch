private ["_zone","_SafeZones","_in"];

//Define Safezone position and area
_SafeZones = switch(toLower worldName)do{
	case "tanoa":{
		[
			[[11044.957,8471.4209],150,"Temple"]
		]
	};
	default{[]};
};

//Create Markers
{
	_marker = createMarkerLocal [_x select 2, _x select 0];
	_marker setMarkerColorLocal "ColorGreen";
	_marker setMarkerShapeLocal "ELLIPSE";
	_marker setMarkerBrushLocal "Cross";
	_marker setMarkerSizeLocal [_x select 1, _x select 1];
	_marker setMarkerTextLocal (_x select 2);
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
