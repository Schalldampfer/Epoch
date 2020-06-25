/*
	VGFE_fnc_setVehicleLocation
	Copyright 2020 by Ghostrider-GRG-
*/

params["_vehicle","_locationData"];
_locationData params["_posATL","_vectorDirUp"];	
_vehicle setPosATL _posATL;
_vehicle setVectorDirAndUp _vectorDirUp;