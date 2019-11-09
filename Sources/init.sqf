[] execVM "addons\halv_spawn\init.sqf";
[] execVM "trader\init.sqf";
[] execVM "trader\resetvehicleammo.sqf";
[] execVM "trader\HALV_takegive_crypto_init.sqf";
#include "addons\A3EAI_Client\A3EAI_initclient.sqf";
[] execVM "addons\blckClient.sqf";
[] execVM "scarCODE\VGS\functions_VGS\fn_vgsInitClient.sqf";
[] execVM "addons\statusbar\fn_statusBar.sqf";
if(hasInterface) then{
	execVM "addons\safezone\init.sqf";
	execVM "addons\safezone\showplayer.sqf";
	execVM "IgiLoad\IgiLoadInit.sqf";
};
