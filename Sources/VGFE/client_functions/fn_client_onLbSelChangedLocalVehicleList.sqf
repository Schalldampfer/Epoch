/*
	VGFE_fnc_client_onLbSelChangedLocalVehicleList 
	Copyright Ghostrider-GRG-
*/
private _display = uiNamespace getVariable["VirtualGarageDialog",""];	
private _ctrl = (_display displayCtrl 1501);
private _index = lbCurSel 1501;
private _netID = _ctrl lbData _index;  //  object
private _vehicle = objectFromNetId _netId;
private _className = typeOf (_vehicle);  //  description based on classname
private _m = format["_netId = %1 | _vehicle = %2 | _className = %3",_netID,_vehicle,_className];
private _ctrlVehDescription = (_display displayCtrl 1001);
private _ctrlVehicleNickname = (_display displayCtrl 1009);
_ctrlVehDescription ctrlSetStructuredText parseText getText(conifgFile >> "CfgVehicles" >> _className >> "displayName");
_ctrlVehicleNickname ctrlSetText format["Plate: %1",getPlateNumber(objectFromNetId _netID)];
private _picture = getText(configFile >> "CfgVehicles" >> _className >> "editorPreview");
private _ctrl = (_display displayCtrl 1200);  // Where we display pictures of things
_ctrl ctrlSetText _picture;		
if !(VGFE_activeList isEqualTo "local") then 
{
	VGFE_activeList = "local";
	private _ctrl = (_display displayCtrl 1600);
	_ctrl ctrlSetText "STORE";
	_ctrl ctrlSetToolTip "Press to Store the Selected Vehicle";
	_ctrl buttonSetAction "[] call VGFE_fnc_client_StoreVehicle;";

	{
		ctrlShow[_x,true];					
	} forEach [1009,1600];
};