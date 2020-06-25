/*
	VGFE_fnc_client_retrieveVehicle
	Copyright 2020 by Ghostrider-GRG-
*/
params["_ctrl"];
private _display = uiNamespace getVariable["VirtualGarageDialog",""];
private _ctrl = (_display displayCtrl 1500);
private _index = lbCurSel 1500;
private _key = lbValue [1500,_index];
["retrieve",[MyVGFE,_key,player]] remoteExec["VGFE_fnc_handleClientRequest",2];
closeDialog 0;		
