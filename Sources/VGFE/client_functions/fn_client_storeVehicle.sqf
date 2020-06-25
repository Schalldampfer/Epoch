/*
	VGFE_fnc_client_storeVehicle 
	Copyright 2020 by Ghostrider-GRG-
*/
private _storageCost = getNumber(missionConfigFile >> "CfgVGFE" >> "storageCost");
if ((_storageCost > 0) && (_storageCost > EPOCH_playerCrypto) ) exitWith 
{
		private _m = "Insufficient Crypto to store vehicle";
		systemChat _m;
		[_m,5] call EPOCH_Message;
};

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

["store",[MyVGFE,MyVGFEkey,MyVGFE_accessPoint,_veh,player]] remoteExec["VGFE_fnc_handleClientRequest",2];
closeDialog 0;
 