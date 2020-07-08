//diag_log "VGFE: post-Initialization for Virtual VehicleStorage for Epoch";

onPlayerConnected {}; // seems this is needed or addMissionEventHandler "PlayerConnected" does not work. as of A3 1.60
addMissionEventHandler ["PlayerConnected", 
{
    _this call VGFE_fnc_onPlayerJoined;
}];
MyVGFEstate = 1;

private _ver = getNumber(configFile >> "CfgBuild" >> "VVS" >> "version");
private _bld = getNumber(configFile >> "CfgBuild" >> "VVS" >> "build");
private _date = getText(configFile >> "CfgBuild" >> "VVS" >> "date");
diag_log format["VGFE: Initialized Version %1 Build %2 Date %3",_ver,_bld,_date];






