/*
	Author: Aaron Clark - EpochMod.com

    Contributors:

	Description:
	Epoch gamemode config for Zargabad

    Licence:
    Arma Public License Share Alike (APL-SA) - https://www.bistudio.com/community/licenses/arma-public-license-share-alike

    Github:
    https://github.com/EpochModTeam/Epoch/tree/release/Sources/epoch_config/Configs/CfgEpochClient/Tanoa.hpp
*/
class Tanoa {
	blockedArea[] = { //[POS],radius
			{ {10986.084,8502.8975,0}, 1000 }, //Temple
			{ {7036.1,9717.01,0}, 1000 } //Shrine
	};
	// main config
	TrashClasses[] = { "Trash", "TrashSmall", "TrashVehicle", "PumpkinPatch", "TrashFood", "HempFiber" };
};
