/*
	Author: Aaron Clark - EpochMod.com

    Contributors:

	Description:
	Epoch gamemode server Side map specific configs for Malden.

    Licence:
    Arma Public License Share Alike (APL-SA) - https://www.bistudio.com/community/licenses/arma-public-license-share-alike

    Github:
    https://github.com/EpochModTeam/Epoch/tree/release/Sources/epoch_server_settngs/configs/maps/Malden.h
*/
class Malden : Default
{
	worldSize = 0; // 0 = default to worldSize command
	plantLimit = 8;
	vehicleSpawnTypes[] = {
        {"FlatAreaCity",1},
		{"FlatAreaCitySmall",1},
		{"NameLocal",1},
		{"NameCity",2},
		{"NameVillage",1},
		{"NameCityCapital",4},
		{"Airport",5}
	};
	telePos[] = {
		// N [-0.286865,8.17383,-10.3098, 0]
		// S [-0.415527,-7.05298,-10.3098, 180]
		// E [13.5127,0.410156,-10.3098, 90]
		// W [-14.4316,0.112793,-10.3098, -90]
			{ "TP_Booth_n_EPOCH", { -0.286865, 8.17383, -10.3098, 0}, "", { 3074.63,8474.27,0.00150394 } },
			{ "TP_Booth_w_EPOCH", { -14.4316, 0.112793, -10.3098, -90}, "", { 2335.17, 3394.12, 0.000732422 } },
			{ "TP_Booth_c_EPOCH", { -0.286865,8.17383,-10.3098, 0}, "", { 5027.48,5210.25,0 } },
			{ "TP_Booth_e_EPOCH", { 13.5127,0.410156,-10.3098, 90}, "", { 8224.4,8756.69,0.00099802 } }
	};
propsPos[] = {
	// Phones and ATMs
	{ "Land_ATM_02_malden_F", {3225.01,6276.43,0}, {{0.951241,-0.30845,0},{0,0,1}}, true },
    { "Land_PhoneBooth_01_malden_F", {3746.04,3256.26,0.161957}, {{-0.967747,-0.251925,0},{0,0,1}}, true },
    { "Land_ATM_01_malden_F", {5103,9074.26,0.508453}, {{0.595228,0.803557,0},{0,0,1}}, true },
    { "Land_PhoneBooth_01_malden_F", {5354.97,2805.33,0}, {{-0.384161,-0.923266,0},{0,0,1}}, true },
    { "Land_PhoneBooth_01_malden_F", {5495.61,7005.75,0.166534}, {{0.448686,-0.893689,0},{0,0,1}}, true },
    { "Land_PhoneBooth_02_malden_F", {5490.94,7003.29,0.169525}, {{0.440054,-0.897971,0},{0,0,1}}, true },
    { "Land_ATM_02_malden_F", {5507.85,3484.96,0}, {{0.984902,-0.173111,0},{0,0,1}}, true },
    { "Land_PhoneBooth_01_malden_F", {6028.37,8621.77,0}, {{-0.21328,-0.976991,0},{0,0,1}}, true },
    { "Land_PhoneBooth_01_malden_F", {6636.54,8819.84,-7.62939e-006}, {{-0.150817,0.988562,0},{0,0,1}}, true },
    { "Land_PhoneBooth_01_malden_F", {6639.32,8820.08,0}, {{-0.0954069,0.995438,0},{0,0,1}}, true },
    { "Land_PhoneBooth_01_malden_F", {6637.91,8819.96,0}, {{-0.103969,0.994581,0},{0,0,1}}, true },
    { "Land_PhoneBooth_02_malden_F", {7053.47,7058.09,0}, {{0.999621,-0.027522,0},{0,0,1}}, true },
    { "Land_PhoneBooth_02_malden_F", {7150.51,6003.52,0}, {{-0.0176981,0.999843,0},{0,0,1}}, true },
    { "Land_ATM_01_malden_F", {7211.19,7791.62,0.101868}, {{0.857566,0.514374,0},{0,0,1}}, true },
    { "Land_ATM_01_malden_F", {8057.78,4054.92,0.233646}, {{0.753691,-0.657229,0},{0,0,1}}, true },
	//Traders
	{ "Campfire_burning_F", {5564.68,7881.48,0}, {{0.44771,-0.8941,-0.0118181},{0.0263875,0,0.999652}}, true },
	{ "Land_VR_Target_MBT_01_cannon_F", {5563.68,7896.94,0.644562}, {{-0.662166,0.746885,0.0608202},{0.0365365,-0.0488878,0.998136}}, true },
	{ "Land_VR_Target_MRAP_01_F", {5571.42,7888.14,0.671997}, {{-0.65974,0.751494,0},{0,0,1}}, true },
	{ "Land_Sign_WarningNoWeapon_F", {5561.1,7854.21,0}, {{0.0621855,0.998065,0},{0,0,1}}, true },
	{ "Land_Map_Malden_F", {5547.77,7867.54,0.247253}, {{0,-1,0},{0,0,1}}, true },
	{ "Land_HelipadCircle_F", {5551.62,7884.56,0}, {{-0.41382,0.910317,0.00873843},{0,-0.00959889,0.999954}}, true },
	{ "Land_HelipadCircle_F", {2522.66,5720.46,0}, {{0,1,-0.00077204},{-0.0383704,0.000771472,0.999263}}, true },
	{ "Land_HelipadCircle_F", {6236.17,4743.30,0}, {{0,0.993961,0.109734},{0.126183,-0.108856,0.986016}}, true },
	{ "ProtectionZone_Invisible_F", {5551.48,7882.33,0}, {{0,1,0},{0,0,1}}, true },
	{ "ProtectionZone_Invisible_F", {2538.51,5710.60,0}, {{0,1,0},{0,0.112093,0.993698}}, true },
	{ "ProtectionZone_Invisible_F", {6262.85,4745.89,0}, {{0,1,0},{0.0829128,0.035857,0.995911}}, true },
    { "Transport_EPOCH", {5546.39,7859.88,0.195068}, {{-0.993269,0.115813,-0.00197006},{0,0,1}}, true },
    { "Transport_EPOCH", {2544.01,5693.72,0.230835}, {{-0.308903,0.951093,0},{0,0,1}}, true },
    { "Transport_EPOCH", {6273.26,4748.2,0.164856}, {{-0.000149552,1,0},{0,0,1}}, true }

};
	staticNpcPos[] = {
		// Traders
		{ "C_man_hunter_1_F", { 5544.98,7867.11,0.259827 }, 46.271 },
		{ "C_man_w_worker_F", { 5532.42,7889.58,0 }, 83.596 }
	};
};
