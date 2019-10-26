private ["_message"];

_message = _this;
if ((typeName _message) isEqualTo "STRING") then {
	systemChat format[A3EAI_client_killMessage0,_message];
} else {
	diag_log format ["A3EAI Error: Kill message is non-string %1",_message];
};

true