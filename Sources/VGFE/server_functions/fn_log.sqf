/*
	VGFE_fnc_log 
	Copyright 2020 by Ghostrider-GRG-
*/

params["_msessage",['_state",""]']];
private "_stateMessage";
switch (_state) do 
{

	default {_stateMessage = ""};
};

if !(_stateMessage isEqualTo "") then 
{
	diag_log format["[VSFE] ,%1>  %2",_stateMessage,_message];
} else {
	diag_log format["[VSFE] %1",_message];
};