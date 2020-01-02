/*
	Author: Aaron Clark - EpochMod.com

    Contributors:

	Description:
	Epoch gamemode server Side map specific configs for altis.

    Licence:
    Arma Public License Share Alike (APL-SA) - https://www.bistudio.com/community/licenses/arma-public-license-share-alike

    Github:
    https://github.com/EpochModTeam/Epoch/tree/release/Sources/epoch_server_settngs/configs/maps/altis.h
*/
class Tanoa : Default
{
	worldSize = 5600; // 0 = default to worldSize command
	plantLimit = 10;
	// vehicles - Max vehicle slots is calculated from per vehicle limits below. Warning! Higher the number lower the performance.
	vehicleSpawnTypes[] = {
		{"FlatAreaCity",1},
		{"FlatAreaCitySmall",1},
		{"NameLocal",1},
		{"NameCity",2},
		{"NameVillage",1},
		{"NameCityCapital",4},
		{"Airport",4}
	};

	allowedVehiclesList[] = {
		{"C_Offroad_01_EPOCH",6},
		{"C_Quadbike_01_EPOCH",6},
		{"C_Hatchback_01_EPOCH",8},
		{"C_Hatchback_02_EPOCH",8},
		{"C_SUV_01_EPOCH",8},
		{"C_Rubberboat_EPOCH",1},
		{"C_Rubberboat_02_EPOCH",1},
		{"C_Rubberboat_03_EPOCH",1},
		{"C_Rubberboat_04_EPOCH",1},
		{"C_Van_01_box_EPOCH",6},
		{"C_Van_01_transport_EPOCH",6},
		{"C_Boat_Civil_01_EPOCH",5},
		{"C_Boat_Civil_01_police_EPOCH",1},
		{"C_Boat_Civil_01_rescue_EPOCH",1},
		{"B_Heli_Light_01_EPOCH",2},
		{"B_SDV_01_EPOCH",2},
		{"B_MRAP_01_EPOCH",3},
		{"I_MRAP_03_EPOCH", 3},
		{"B_Truck_01_transport_EPOCH",1},
		{"B_Truck_01_covered_EPOCH",2},
		{"B_Truck_01_mover_EPOCH",1},
		{"B_Truck_01_box_EPOCH",1},
		{"O_Truck_02_covered_EPOCH",2},
		{"O_Truck_02_transport_EPOCH",1},
		{"O_Truck_03_covered_EPOCH",1},
		{"O_Truck_02_box_EPOCH",1},
		{"I_Heli_light_03_unarmed_EPOCH",1},
		{"O_Heli_Light_02_unarmed_EPOCH",1},
		{"I_Heli_Transport_02_EPOCH",1},
		{"O_Heli_Transport_04_EPOCH",1},
		{"O_Heli_Transport_04_bench_EPOCH",1},
		{"O_Heli_Transport_04_box_EPOCH",1},
		{"O_Heli_Transport_04_covered_EPOCH",1},
		{"B_Heli_Transport_03_unarmed_EPOCH",1},
		//{"jetski_epoch",5},
		{"K01",1},
		{"K02",1},
		{"K03",1},
		{"K04",1},
		{"ebike_epoch",5},
		{"mosquito_epoch",4},
		{"C_Heli_Light_01_civil_EPOCH",3},
		// apex
		//{"C_Boat_Transport_02_F",1},
		{"C_Scooter_Transport_01_F",3},
		{"C_Offroad_02_unarmed_F",2},
		{"I_C_Offroad_02_unarmed_F",2},
		{"B_T_LSV_01_unarmed_F",2},
		{"O_LSV_02_unarmed_F",2},
		{"O_T_LSV_02_unarmed_F",2},
		{"C_Plane_Civil_01_F",3},
		{"C_Plane_Civil_01_racing_F",1},
		{"B_CTRG_LSV_01_light_F",2},
		{"B_LSV_01_unarmed_F",2},
		{"B_T_VTOL_01_infantry_F",1},
		{"B_T_VTOL_01_vehicle_F",1},

		{"MBK_01_EPOCH",2},
		{"hoverboard_epoch_1",1},
		{"hoverboard_epoch_cargo",1},
		{"hoverboard_epoch_bttf",1},
		{"hoverboard_epoch_a3",1},
		{"A2_Golf_EPOCH",3},
		{"A2_HMMWV_EPOCH",3},
		{"A2_HMMWV_load_EPOCH",3},
		{"A2_Lada_EPOCH",3},
		{"A2_SUV_EPOCH",3},
		{"A2_SUV_load_EPOCH",3},
		{"A2_UAZ_EPOCH",3},
		{"A2_UAZ_Open_EPOCH",3},
		{"A2_Ural_EPOCH",3},
		{"A2_Vodnik_EPOCH",3},
		{"A2_Volha_EPOCH",3},
		{"I_MRAP_03_EPOCH",1}
	};
	allowedVehiclesList_CUP[] = {
		{"C_Offroad_01_EPOCH",4},
		{"C_Quadbike_01_EPOCH",4},
		{"C_Hatchback_01_EPOCH",5},
		{"C_Hatchback_02_EPOCH",5},
		{"C_SUV_01_EPOCH",5},
		{"C_Rubberboat_EPOCH",2},
		{"C_Rubberboat_02_EPOCH",2},
		{"C_Rubberboat_03_EPOCH",2},
		{"C_Rubberboat_04_EPOCH",2},
		{"C_Van_01_box_EPOCH",4},
		{"C_Van_01_transport_EPOCH",4},
		{"C_Boat_Civil_01_EPOCH",5},
		{"C_Boat_Civil_01_police_EPOCH",2},
		{"C_Boat_Civil_01_rescue_EPOCH",2},
		{"B_Heli_Light_01_EPOCH",2},
		{"B_SDV_01_EPOCH",2},
		{"B_MRAP_01_EPOCH",2},
		{"I_MRAP_03_EPOCH", 2},
		{"B_Truck_01_transport_EPOCH",1},
		{"B_Truck_01_covered_EPOCH",2},
		{"B_Truck_01_mover_EPOCH",1},
		{"B_Truck_01_box_EPOCH",1},
		{"O_Truck_02_covered_EPOCH",2},
		{"O_Truck_02_transport_EPOCH",1},
		{"O_Truck_03_covered_EPOCH",1},
		{"O_Truck_02_box_EPOCH",1},
		{"I_Heli_light_03_unarmed_EPOCH",1},
		{"O_Heli_Light_02_unarmed_EPOCH",1},
		{"I_Heli_Transport_02_EPOCH",1},
		{"O_Heli_Transport_04_EPOCH",1},
		{"O_Heli_Transport_04_bench_EPOCH",1},
		{"O_Heli_Transport_04_box_EPOCH",1},
		{"O_Heli_Transport_04_covered_EPOCH",1},
		{"B_Heli_Transport_03_unarmed_EPOCH",1},
		{"jetski_epoch",3},
		{"K01",1},
		{"K02",1},
		{"K03",1},
		{"K04",1},
		{"ebike_epoch",3},
		{"mosquito_epoch",3},
		{"C_Heli_Light_01_civil_EPOCH",2},
		{"CUP_C_Fishing_Boat_Chernarus",2},
		{"CUP_C_LR_Transport_CTK",2},
		{"CUP_B_Zodiac_USMC",2},
		{"CUP_C_Skoda_Red_CIV",2},
		{"CUP_C_Skoda_White_CIV",2},
		{"CUP_C_Skoda_Blue_CIV",2},
		{"CUP_C_Skoda_Green_CIV",2},
		{"CUP_C_SUV_CIV",2},
		{"CUP_B_HMMWV_Transport_USA",2},
		{"CUP_B_HMMWV_Unarmed_USA",2},
		{"CUP_C_SUV_TK",2},
		{"CUP_B_LR_Transport_CZ_D",2},
		{"CUP_C_Datsun_Covered",2},
		{"CUP_C_Datsun_Plain",2},
		{"CUP_C_Datsun_Tubeframe",2},
		{"CUP_C_Datsun_4seat",2},
		{"CUP_C_Datsun",2},
		{"CUP_C_Golf4_green_Civ",2},
		{"CUP_C_Golf4_red_Civ",2},
		{"CUP_C_Golf4_blue_Civ",2},
		{"CUP_C_Golf4_black_Civ",2},
		{"CUP_C_Golf4_kitty_Civ",2},
		{"CUP_C_Golf4_reptile_Civ",2},
		{"CUP_C_Golf4_camodigital_Civ",2},
		{"CUP_C_Golf4_camodark_Civ",2},
		{"CUP_C_Golf4_camo_Civ",2},
		{"CUP_B_M1030",2},
		{"CUP_C_Ural_Civ_03",2},
		{"CUP_C_Ural_Open_Civ_03",2},
		{"CUP_C_Ural_Civ_02",2},
		{"CUP_B_TowingTractor_USMC",2},
		{"CUP_C_C47_CIV",2},
		{"CUP_B_LR_Transport_CZ_W",2},
		{"CUP_C_Golf4_white_Civ",2},
		{"CUP_C_Golf4_whiteblood_Civ",2},
		{"CUP_C_Golf4_yellow_Civ",2},
		{"CUP_C_Octavia_CIV",2},
		{"CUP_C_Ural_Civ_01",2},
		{"CUP_C_Ural_Open_Civ_01",2},
		{"CUP_B_Ural_CDF",2},
		{"CUP_B_Ural_Open_CDF",2},
		{"CUP_C_Ural_Open_Civ_02",2},
		{"CUP_B_HMMWV_Ambulance_USA",2},
		{"CUP_C_UAZ_Unarmed_TK_CIV",2},
		{"CUP_C_UAZ_Open_TK_CIV",2},
		{"CUP_B_UAZ_Unarmed_CDF",2},
		{"CUP_B_Ural_Empty_CDF",2},
		{"CUP_C_DC3_CIV",2},
		//apex
		{"C_Boat_Transport_02_F",1},
		{"C_Scooter_Transport_01_F",3},
		{"C_Offroad_02_unarmed_F",2},
		{"I_C_Offroad_02_unarmed_F",2},
		{"B_T_LSV_01_unarmed_F",2},
		{"O_LSV_02_unarmed_F",2},
		{"O_T_LSV_02_unarmed_F",2},
		{"C_Plane_Civil_01_F",3},
		{"C_Plane_Civil_01_racing_F",1},
		{"B_CTRG_LSV_01_light_F",2},
		{"B_LSV_01_unarmed_F",2},
		{"B_T_VTOL_01_infantry_F",1},
		{"B_T_VTOL_01_vehicle_F",1}
	};
	telePos[] = {
		// N [-0.286865,8.17383,-10.3098, 0]
		// S [-0.415527,-7.05298,-10.3098, 180]
		// E [13.5127,0.410156,-10.3098, 90]
		// W [-14.4316,0.112793,-10.3098, -90]
		{ "TP_Booth_n_EPOCH", { -0.286865, 8.17383, -10.3098, 0}, "", { 8649.86,6146.53,0 } },
        { "TP_Booth_w_EPOCH", { -14.4316,0.112793,-10.3098, -90}, "", { 2015.21,10659.6,0 } },
        { "TP_Booth_c_EPOCH", { -0.286865,8.17383,-10.3098, 0}, "", { 5027.48,5210.25,0 } },
        { "TP_Booth_e_EPOCH", { 13.5127,0.410156,-10.3098, 90}, "", { 11779.6,13056.5,0 } }
	};
	propsPos[] = {
		// Temple Trader
        { "Transport_EPOCH", {11068.167,8479.7549,0}, {{-0.000149552,1,0},{0,0,1}}, true },
        { "ProtectionZone_Invisible_F", {11068.813,8473.416,0}, {{-0.000149552,1,0},{0,0,1}}, true },
        { "ProtectionZone_Invisible_F", {10986.084,8502.8975,0}, {{-0,6.2830358,0},{0,0,1}}, true },
        //{ "ProtectionZone_Invisible_F", {10945,8424.7,0}, {{0.986009,-0.163005,0.0348656},{-0.047946,-0.0770124,0.995877}}, true },
        //{ "ProtectionZone_Invisible_F", {11115.3,8413.95,0}, {{-0.816928,0.208585,-0.537699},{-0.527758,0.105632,0.842801}}, true },
        //{ "ProtectionZone_Invisible_F", {11032.8,8398.94,0}, {{-0.330782,-0.872144,-0.360482},{-0.384094,-0.224494,0.895586}}, true },
        { "FirePlaceOn_EPOCH", {11071.8,8472.71,0.837112}, {{0,0.998078,-0.0619733},{0.191072,0.0608315,0.979689}}, false, true },
        { "Land_Atm_01_F", {11020.3,8517.89,0}, {{-0.016737,-0.99986,0},{0,0,1}}, true },
        { "Land_PhoneBooth_02_F", {11023.5,8518.31,0}, {{0.558135,-0.82975,0},{0,0,1}}, true },
        { "Land_HelipadEmpty_F", {10981.035,8497.8994,0}, {{0,1,0},{0,0,1}}, true },
		// Shrine
        { "ProtectionZone_Invisible_F", {7036.1,9717.01,0}, {{0.0449526,-0.998989,0},{0,0,1}}, true },
        { "Transport_EPOCH", {7038.15,9717.19,0}, {{-0.000149552,1,0},{0,0,1}}, true },
        { "FirePlaceOn_EPOCH", {7038.17,9724.09,0.431274}, {{0,0.998575,0.0533578},{0.116975,-0.0529915,0.99172}}, false, true },
        { "Land_Atm_02_F", {7013.44,9721.81,0}, {{-0.233954,0.972248,0},{0,0,1}}, true },
        { "Land_HelipadEmpty_F", {7035.4111,9717.4375,0}, {{0,1,0},{0,0,1}}, true },
		// Roadblocks
        { "Land_CncBarrierMedium4_F", {11306.7,5895.17,0}, {{0.119186,-0.992872,0},{0,0,1}}, true },
        { "Land_CncBarrierMedium4_F", {11314.1,5896.04,0}, {{0.099447,-0.995043,0},{0,0,1}}, true },
        { "Land_CncBarrierMedium4_F", {11386.8,5299.14,0}, {{0.112248,-0.993680,0},{0,0,1}}, true },
        { "Land_CncBarrierMedium4_F", {11379.5,5298.22,0}, {{-0.119333,0.992854,0},{0,0,1}}, true },
        { "RoadBarrier_F", {11383.7,5295.61,0}, {{0.131223,-0.989946,-0.0527968},{0,-0.0532574,0.998581}}, true },
        { "RoadBarrier_F", {11269.9,5918.07,0}, {{0.999732,-0.0141415,0.018327},{-0.0186628,-0.0239892,0.999538}}, true },
        { "RoadBarrier_F", {11310.7,5961.84,0}, {{0.0461306,-0.998838,0.0139325},{-0.0133317,0.0133305,0.999822}}, true },
		// additional
		{ "Land_PillboxBunker_01_rectangle_F", {7307.18,12804.9,0}, {{-0.45233,0.889688,-0.0620667},{-0.0479448,0.0452348,0.997825}}, true },
        // ATMs
        { "Land_Atm_01_F", {1888.53,12125.3,0.284561}, {{0.99453,-0.104452,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {2104.35,3439.8,0.221501}, {{0.966741,0.255759,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {2457.53,7448.89,0.257828}, {{0.319877,0.947459,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {3029.85,11331.5,0.520308}, {{0.928958,0.370186,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {5176.31,8823.1,0.10381}, {{0.185896,0.982569,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {5379.75,4080.59,0.595273}, {{-0.971422,0.237357,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {5410.69,9928.31,0.277559}, {{0,1,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {5602.78,12501.4,0.149943}, {{0.616564,-0.787305,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {5676.73,10191.7,0.239613}, {{0.156531,0.987673,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {5809.5,10855.2,0.389958}, {{-0.432223,0.901767,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {6569.07,13095.4,0.0477333}, {{-0.916388,0.40029,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {7993.48,7428.29,0.172792}, {{0.179962,-0.983674,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {8333.46,9700.11,0.563959}, {{-0.483228,-0.875495,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {8506.92,12429.8,0.4888}, {{0.181498,-0.983391,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {8959.09,10338.2,0}, {{-0.855434,0.517912,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {8947,13662.5,0.27055}, {{-0.00939054,-0.999956,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {9971.03,13451.9,0.27755}, {{-0.036167,-0.999346,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {10811,6482.04,0.277501}, {{-0.906308,-0.422618,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {10944.1,9870.03,0.487091}, {{0.997449,-0.0713866,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {11178.2,5146.3,0.457275}, {{0.0413349,-0.999145,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {11634.5,13017.3,0.277599}, {{-0.314614,-0.94922,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {11674.7,2258.52,0.33217}, {{-0.887499,-0.460809,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {12624.9,7603.27,0.253271}, {{0.513825,0.857895,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {14252.6,11504.5,0.165345}, {{-0.762126,-0.647429,0},{0,0,1}}, true },
        { "Land_Atm_01_F", {14349.2,8747.38,0.588572}, {{0.0485784,0.998819,0},{0,0,1}}, true }
	};
	staticNpcPos[] = {
		// Temple Trader
        { "C_man_polo_2_F_asia", { 11071.1, 8468.06, 0 }, 142.262 },
        { "C_man_p_fugitive_F_asia", { 11060.9, 8475.17, 0 }, 286 },
        { "C_man_shorts_1_F_asia", { 11063.5, 8467.39, 0 }, 221.15 },
        { "C_man_hunter_1_F", { 11072.7, 8475.57, 0 }, 57.446 },
		// Shrine
		{ "C_man_shorts_4_F_asia", { 7031.77,9714.42,0 }, 44.484 }
	};
	// Prefered locations for vehicles
	class whitelistedVehiclePos {};
};
