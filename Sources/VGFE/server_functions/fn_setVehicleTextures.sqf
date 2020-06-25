
/*
	VGFE_fnc_setVehicleTextures
	Copyright 2020 by Ghostrider-GRG-
*/

params["_vehicle","_textures"];
_vehicle setVariable ["BIS_enableRandomization", false];
_vehicle setVariable["VEHICLE_TEXTURE", _textures];
{
	_vehicle setObjectTextureGlobal [ _forEachIndex, format["%1",_textures select _forEachIndex] ];
}forEach _textures;
