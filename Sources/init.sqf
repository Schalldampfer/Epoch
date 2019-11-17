[] execVM "addons\halv_spawn\init.sqf";
[] execVM "trader\init.sqf";
[] execVM "trader\resetvehicleammo.sqf";
[] execVM "trader\HALV_takegive_crypto_init.sqf";
#include "addons\A3EAI_Client\A3EAI_initclient.sqf";
[] execVM "addons\blckClient.sqf";
[] execVM "scarCODE\VGS\functions_VGS\fn_vgsInitClient.sqf";
execVM "addons\taru_pods\taru_init.sqf";
[] execVM "addons\statusbar\fn_statusBar.sqf";
[] execVM "addons\safezone\init.sqf";
if(hasInterface) then{
	execVM "IgiLoad\IgiLoadInit.sqf";
};
Deploy_Type="hoverboard_epoch_1";

//Towing config
SA_MAX_TOWED_CARGO = 5;
SA_TOW_SUPPORTED_VEHICLES_OVERRIDE = ["Tank","Car","Ship","Air","ReammoBox","ReammoBox_F"];
SA_TOW_RULES_OVERRIDE = [
	["Tank","CAN_TOW","Tank"],
	["Tank","CAN_TOW","Car"],
	["Tank","CAN_TOW","Ship"],
	["Tank","CAN_TOW","Air"],
	["Tank","CAN_TOW","ReammoBox"],
	["Tank","CAN_TOW","ReammoBox_F"],
	["Car","CAN_TOW","Tank"],
	["Car","CAN_TOW","Car"],
	["Car","CAN_TOW","Ship"],
	["Car","CAN_TOW","Air"],
	["Car","CAN_TOW","ReammoBox"],
	["Car","CAN_TOW","ReammoBox_F"],
	["Air","CAN_TOW","Car"],
	["Air","CAN_TOW","ReammoBox"],
	["Air","CAN_TOW","ReammoBox_F"],
	["ReammoBox","CAN_TOW","ReammoBox"],
	["ReammoBox","CAN_TOW","ReammoBox_F"],
	["ReammoBox_F","CAN_TOW","ReammoBox"],
	["ReammoBox_F","CAN_TOW","ReammoBox_F"],
	["Ship","CAN_TOW","ReammoBox"],
	["Ship","CAN_TOW","ReammoBox_F"],
	["Ship","CAN_TOW","Ship"]
];
SA_TOW_LOCKED_VEHICLES_ENABLED = false;
SA_TOW_IN_EXILE_SAFEZONE_ENABLED = true;
