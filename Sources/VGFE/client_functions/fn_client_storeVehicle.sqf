/*
	VGFE_fnc_client_storeVehicle 
	Copyright 2020 by Ghostrider-GRG-
*/
try {
	private _storageCost = getNumber(missionConfigFile >> "CfgVGFE" >> "storageCost");
	if ((_storageCost > 0) && (_storageCost > EPOCH_playerCrypto) ) throw 1; 

	private _maxStorage = getNumber(missionConfigFile >> "CfgVGFE" >> "maxStorage");
	if (_maxStorage >= 0 && (count MyVGFE >= _maxStorage)) exitWith 
	{
		private _m = "Virtual Vehicle Storage Full";
		systemChat _m;
		[_m,5] call EPOCH_Message;		
	};

	private _index = lbCurSel 1501;
	private _netIDveh = lbData [1501,_index];
	private _veh = objectFromNetId _netIDveh;
	private _slot = _veh getVariable["VEHICLE_SLOT","ABORT"];
	if (_slot isEqualTo "ABORT") throw 2;

	["store",[MyVGFE,MyVGFEkey,MyVGFE_accessPoint,_veh,player]] remoteExec["VGFE_fnc_handleClientRequest",2];
	closeDialog 0;
}

catch {
	switch (_exception) do 
	{
		case 1: { // insufficient funds 
			private _m = "Insufficient Crypto to store vehicle";
			systemChat _m;
			[_m,5] call EPOCH_Message;
		};
		case 2: { // Not a permenant vehicle 
			private _m = "Temporary vehicle may not be stored";
			systemChat _m;
			[_m,5] call EPOCH_Message;		
		};
	};
}
 