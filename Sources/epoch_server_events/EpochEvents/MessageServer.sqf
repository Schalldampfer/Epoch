// Random Messages
/*
_messages = [
"Message 1",
"Message 2",
"Message 3",
"Message 4",
];
["message", _messages param [floor(random (count _messages))]] call EPOCH_serverCommand;
*/
if (count allPlayers < 1) exitWith {};
// Restart time
private _restartIn = round((EPOCH_forceRestartTime-diag_tickTime)/360)/10;
["message", format["This server wlll restart in %1 hours - or at 16:00 JST on Monday and Friday",_restartIn]] call EPOCH_serverCommand;
