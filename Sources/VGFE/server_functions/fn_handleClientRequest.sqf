/*
	VGFE_fnc_handleClientRequest 
	Copyright 2020 by Ghostrider-GRG-	
*/

params["_requestId","_payload"];

switch (toLower _requestID) do 
{
	case "store": {
		_payload call VGFE_fnc_storeVehicle;
	};
	case "retrieve": {
		_payload  call VGFE_fnc_retrieveVehicle;
	};
	case "nickname": {
		_payload call VGFE_fnc_setVehicleNickname;
	};
	case "test": {
		diag_log format["running with test payload = %1",_payload];
	};
};