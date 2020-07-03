
#include "VGFE_dialogs.hpp"
class CfgVGFE {
	useDynamenu = 0;  // set to 1 to use the dynamenu to access specific vehicles, or 0 to open a dialog with vehicles in VG and locally listed.
	requirePlotpolNearby = 0;  //  Applies to use of virtual garage but not virtual hanger or virtual boat rack
	vehicleSearchDistance = 250;
	preciseSpawnLocation = 0;  // set to 0 to spawn the retrieved vehicle where it was left; set to 1 to allow the server to find a safe spot to spawn the vehicle within 20 meters. 
	vgfeExpiresAt = "999999";  //  4 weeks where 1 week = "604048";
	virtualGargageObject = "";
	virtualHangerObject = "Land_JetEngineStarter_01_F";
	virtualDockObject = "Land_Destroyer_01_Boat_Rack_01_F";	
	use3Dmarker = 1;
	3DmarkerDisplayTime = 15;
	lockOnRetrieval = 0;
	movePlayerToDriver = 0;
	maxStorage = 20; // Want to encourage use of VG to save server performance.
	storageCost = 0;  // set to 0 to disable requirment for cypto for storage
	reapplyFuel = 1;
	reapplyDamage = 1;	
	saveIventory = 1;
	saveWeaponLoadouts = 1;

	/*
	 These set a maximum range from the access point at which vehicles can be spawned.
	 This should prevent players spawning a vehicle 10,000 meters from their location and being moved into the driver's seat 
	 I have a separate value for each access point 
	*/
	maxDistFromJammer = 150;
	maxDistFromHanger = 250;
	maxDistFromDryDock = 450;  
};
