/*
	Author: He-Man - EpochMod.com

    Contributors:

	Description:
	Custom A3 Epoch HandleDamage Eventhandler

    Licence:
    Arma Public License Share Alike (APL-SA) - https://www.bistudio.com/community/licenses/arma-public-license-share-alike

    Github:
    https://github.com/EpochModTeam/Epoch/tree/release/Sources/epoch_code/custom/EPOCH_custom_EH_HandleDamage.sqf
*/
params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint"];

if ((_projectile != "") && (_source != _unit) && ({isPlayer _x} count (crew _source) > 0)) then {
	_damage = 0;
	diag_log format["%1 tried to damage %2 with %3",name _source,name _unit,_projectile];
};

_damage
