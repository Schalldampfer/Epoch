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


private _date = getText(configFile >> "CfgBuild" >> "VVS" >> "test1");
diag_log format["VGFE: test1 = %1",_date];

uiSleep 5;
private _timeCheck = "123456789123456";
private _value=["its a beautiful day"];
private _key = "silly";
["VGFE_SILLY",_key,_timeCheck,_value] call EPOCH_fnc_server_hiveSETEX;

uiSleep 5;
_value = ["Its a beautiful MORNING"];
{
    private _timeCheck = _x;
    ["VGFE_SILLY",format["%1",_forEachIndex],_timeCheck,_value] call EPOCH_fnc_server_hiveSETEX;
    private _result = ["VGFE_SILLY",format["%1",_forEachIndex]] call EPOCH_fnc_server_hiveGETRANGE;
    diag_log format["for _timeCheck = %1 | _index = %2 | _result = %3",_x,_forEachIndex,_result];
    uiSleep 1;
} forEach ["12","123","1234","12345","123456","1234567","12345678","1234567890","12345678900"];

_value = ["Its a beautiful AFTERNOON"];
private _timeCheck = 0;
{
    if (isNumber(missionConfigFile >> "CfgVGFE" >> _x)) then 
    {
        _timeCheck = getNumber(missionConfigFile >> "CfgVGFE" >> _x);
        diag_log format["_timeCheck is Number with value = %1",_timeCheck];
    };
	if (isText(missionConfigFile >> "CfgVGFE" >> _x)) then 
	{
        _timeCheck = getText(missionConfigFile >> "CfgVGFE" >> _x);
		diag_log format["_timeCheck is text and = %1",_timeCheck];
        diag_log format["parsed value for _timeCheck = %1",parseNumber _timeCheck];
    };
    ["VGFE_SILLY",format["%1",_forEachIndex + 20],_timeCheck,_value] call EPOCH_fnc_server_hiveSETEX;
    private _result = ["VGFE_SILLY",format["%1",_forEachIndex + 20]] call EPOCH_fnc_server_hiveGETRANGE;
    diag_log format["for _x = %1 | _timeCheck = %2 |_index = %3 | _result = %4",_x,_timeCheck,_forEachIndex + 20,_result,_x];
    uiSleep 1;    
} forEach ["vgfeExpiresAt"];




