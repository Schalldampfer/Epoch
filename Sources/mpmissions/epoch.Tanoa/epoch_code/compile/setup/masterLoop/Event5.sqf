_position = getPosATL player;

_nearestLocations = nearestLocations[player, _radioactiveLocations, 300];
EPOCH_nearestLocations = _nearestLocations;
_powerSources = nearestObjects[player, _energyPowerSources, _energyRange];

// TODO: add more sources and config based check instead of global var
// _nearestLocations removed as they don't support getVariable
// All sources used as a temp solution, please re-use as much as you can.
_allSources = nearestObjects[player, ["All"], _radiatedObjMaxRange];
_nearbyRadioactiveObjects = _allSources select {(_x getVariable ["EPOCH_Rads", []]) select 0 > 0};

// check if player is out of map bounds.
_radsLevel = 0;
_worldSize = worldSize/2;
_outOfBounds = !(player inArea [[_worldSize,_worldSize,0], _worldSize, _worldSize, 0, true ]);

{
	_location = [];
	_LocName = (_x select 0) joinString " ";
	{
		if( (str _x) == _LocName ) exitwith { _location = _x; };
	} foreach _nearestLocations;
	if !(_location isEqualTo []) then {
		_x select 1 params ["_str","_intensity"];
		_dist = player distance getPos _location;
		_radIntensity = if (_dist <= _intensity) then {
			_str / _dist
		} else {
			0
		};
		_radsLevel = _radsLevel + _radIntensity;
	};
}foreach EPOCH_radioactiveLocations; 

if (_outOfBounds) then {
	// player is out of map bounds, give ten times background rads
	 ["You are out of the play area!", 5] call Epoch_message;
	 _radsLevel = _outOfBoundsRadiation;
} else {
	// radiated objects or locations nearby
	if !(_nearbyRadioactiveObjects isEqualTo []) then {
		{
			_x getVariable "EPOCH_Rads" params ["_str","_intensity"];
			_dist = player distance _x;
			_radIntensity = if (_dist <= _intensity) then {
				_str / _dist
			} else {
				0
			};
			_radsLevel = _radsLevel + _radIntensity;
		}forEach _nearbyRadioactiveObjects;
	};
};

//Reduce radiation by 90%
if ("radiation_mask_epoch" in assignedItems player) then {
	_radsLevel = _radsLevel - (90 / 100 * _radsLevel);
};

//Reduce radiation by 50% for respirators (easy to find loot in construction sites?)
if ("respirator_placeholder" in assignedItems player) then {
	_radsLevel = _radsLevel / 2;
};

//Reduce % radiation from max armor value possible
_maxArmor = (missionNamespace getVariable ["EPOCH_MAX_ARMOR",[0,0,0,2300]]) select 3;
_currentArmor = ((uniform player) call EPOCH_uniformArmorCalc) + ((vest player) call EPOCH_gearArmorCalc) + ((headgear player) call EPOCH_gearArmorCalc); 
_currentArmorPercent = 100 - (_currentArmor / _maxArmor * 100);
_radsLevel = _currentArmorPercent / 100 * _radsLevel;

//Reduce radiation by 100% TODO: move this to top, no point in doing all this calc if hazmat is on.
if (uniform player in ["Epoch_RadiationSuit_F","Epoch_RadiationSuit_M"]) then {
    _radsLevel = 0;
};

// Radiation Handler
_playerRadiation = missionNamespace getVariable [_playerRadiationKey, _playerRadiationDefault];
_playerImmunity = missionNamespace getVariable [_playerImmunityKey, _playerImmunityDefault];

if (_radsLevel > 0) then { // increase rads based on radiation levels
    _playerRadiation = [_playerRadiationKey,_radsLevel,_playerRadiationMax,_playerRadiationMin] call EPOCH_fnc_setVariableLimited;
} else { //Decrease rad level, but at a cost of immunity loss
    if (_playerRadiation  > 0) then {
		_playerRadiation = [_playerRadiationKey,(_baseRadiationLoss * _playerImmunity / 100),_playerRadiationMax,_playerRadiationMin] call EPOCH_fnc_setVariableLimited;
        _playerImmunity = [_playerImmunityKey,_baseRadiationLossImmunityPenalty,_playerImmunityMax,_playerImmunityMin] call EPOCH_fnc_setVariableLimited;
    };
};
if !(surfaceIsWater _position) then {
	if (_nearestLocations isEqualTo []) then{
		if (count(player nearEntities["Animal_Base_F", 800]) < 2) then {
			call EPOCH_client_loadAnimalBrain;
		};
	};
} else {
	// spawn shark if player is deep water and not in vehicle
	if !(_isOnFoot) then{
		_offsetZ = ((_position vectorDiff getPosASL player) select 2);
		if (_offsetZ > 50) then {
			["GreatWhite_F", player, true] call EPOCH_unitSpawn;
		};
	};
};

// default power state
_chargeRate = 0;

// energy Charge from nearby power plants
if !(_powerSources isEqualTo[]) then {
	_totalCapacity = 0;
	{
		_powerClass = typeOf _x;
		_powerCap = getNumber(_cfgBaseBuilding >> _powerClass >> "powerCapacity");
		_powerType = getNumber(_cfgBaseBuilding >> _powerClass >> "powerType");
		if (_powerCap == 0) then {
			_powerCap = 100;
		};
		_powerCap = switch _powerType do {
			case 1: {if (sunOrMoon == 1) then {_powerCap * (1-overcast)} else {(_powerCap * (1 - overcast))/2}};
			case 2: {_powerCap * windstr};
			case 3: {_powerCap * (1 - ((player distance _x) / _energyRange))};
			default {_powerCap};
		};
		_totalCapacity = _totalCapacity + _powerCap;
	} forEach _powerSources;
	if (_totalCapacity > 0) then {
		_players = player nearEntities[["Epoch_Male_F", "Epoch_Female_F"], _energyRange];
		if (_players isEqualTo []) then {
			_chargeRate = round _totalCapacity;
		} else {
			_chargeRate = round (_totalCapacity / (count _players));
		};
	};
};

// alive time handler
_playerAliveTime = round(_playerAliveTime + (_tickTime - _clientAliveTimer));
missionNamespace setVariable [_playerAliveTimeKey, _playerAliveTime];
_clientAliveTimer = _tickTime;

// force update after 60 seconds
_forceUpdate = true;
