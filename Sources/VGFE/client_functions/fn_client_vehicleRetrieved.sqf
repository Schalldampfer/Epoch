

params["_vehicle"];
VGFE_show3Dicon = 0;
waitUntil{isNil "VGVE_3DiconHandle"};
VGFE_Vehicle = _vehicle;
VGFE_displayName = getText(configFile >> "CFgVehicles" >> typeOf _vehicle >> "displayName");
private _show3DMarker = getNumber (missionconfigfile >> "CfgVGFE" >> "use3Dmarker");

if(_show3DMarker == 1) then
{
	VGFE_show3Dicon = 1;
	VGFE_3DmarkerDisplayTime = getNumber (missionconfigfile >> "CfgVGFE" >> "3DmarkerDisplayTime");
	VGFE_3DmarkerStartTime = diag_tickTime;
	_bbr = boundingBoxReal _vehicle;
	private _p1 = _bbr select 0;
	private _p2 = _bbr select 1;

	private _maxHeight = abs ((_p2 select 2) - (_p1 select 2));	
	VGFE_pos = getPosATL _vehicle;
	VGFE_pos set[2, (VGFE_pos select 2) + _maxHeight];
	//diag_log format["_fnc_client_vehicleRetrieved: VGFE_3DmarkerDisplayTime = %1",VGFE_3DmarkerDisplayTime];
	VGVE_3DiconHandle = addMissionEventHandler ["Draw3D", {
		if ((diag_tickTime - VGFE_3DmarkerStartTime) > VGFE_3DmarkerDisplayTime || (VGFE_show3Dicon == 0)) then {
			removeMissionEventHandler ["Draw3D", VGVE_3DiconHandle];
			VGFE_show3Dicon = 0;
			VGVE_3DiconHandle = nil;
			//_m = format["3D Marker cleared for %1 at %2",getText(configFile >> "CfgVehicles" >> typeOf _VGFE_Vehicle >> "displayName"),diag_tickTime];
			//systemChat _m;
			//diag_log _m;
		};
		drawIcon3D ["\A3\ui_f\data\map\Markers\Military\arrow2_ca.paa", [0,0.8,0,1], VGFE_pos, 1, 1, 180, VGFE_displayName, 1, 0.05];
	}];
};
