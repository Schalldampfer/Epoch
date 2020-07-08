/*
	VGFE_fnc_log 
	Copyright 2020 by Ghostrider-GRG-
*/

params["_message",["_state",""]];
private "_stateMessage";

if (_state isEqualTo "") then 
{
	diag_log format["[VGFE] %1",_message];
} else {
	diag_log format["[VGFE] <%1>  %2",_stateMessage,_message];
};