if((random 100) < 6)then{
[] execFSM "\x\addons\a3_epoch_code\System\Event_Air_Drop.fsm";
["Air Drop Incoming !", 5,[[0,0,0,0.5],[1,0.5,0,1]]] call Epoch_message;
}else{
["Sorry, None Available!", 5,[[0,0,0,0.5],[1,0.5,0,1]]] call Epoch_message;
};