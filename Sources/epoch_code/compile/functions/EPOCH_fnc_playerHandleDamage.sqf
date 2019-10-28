private["_unit","_damage","_source","_ammo","_ply"];

_unit = 		_this select 0;
_damage = 		_this select 2;
_source = 		_this select 3;
_ammo = 		_this select 4;

if ((_source != "") && (_source != _unit) && ({isPlayer _x} count (crew _source) > 0)) then {
	_damage = 0;
	diag_log format["%1 tried to damage %2 with %3",name _source,name _unit,_ammo];
};

_damage
