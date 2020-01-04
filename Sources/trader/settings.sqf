/*
	a3 epoch trader
	settings.sqf
	by Halv & Suppe
	
	Copyright (C) 2015  Halvhjearne & Suppe > README.md
*/
//this is to blacklist items you do not want in the blackmarket
_blacklist = [
	"B_mas_HMMWV_SOV_M2","CUP_arifle_M16A4GL","CUP_arifle_ksvk_PSO3","CUP_srifle_M15_Aim",
	"CUP_optic_AN_PVS_4","CUP_optic_AN_PVS_10","CUP_optic_CWS","CUP_optic_AN_PAS_13c1","CUP_optic_AN_PAS_13c2","CUP_optic_GOSHAWK","CUP_optic_NSPU","CUP_SMAW_HEAA_M",
	"I_MRAP_03_gmg_F","O_MRAP_02_gmg_F","B_MRAP_01_gmg_F","I_C_Offroad_02_LMG_F","B_T_LSV_01_armed_sand_F","B_T_LSV_01_armed_olive_F","B_T_LSV_01_armed_olive_F",
	"B_T_LSV_01_armed_black_F","B_LSV_01_armed_F","B_G_Offroad_01_armed_EPOCH","B_G_Offroad_01_armed_F","O_G_Offroad_01_armed_F","I_G_Offroad_01_armed_f",
	"O_Heli_Attack_02_black_F","O_Heli_Attack_02_F","O_Heli_Light_02_F","B_Heli_Attack_01_F","O_Heli_Light_02_v2_F","B_Heli_Light_01_armed_F",
	"B_Plane_CAS_01_F","I_Plane_Fighter_03_AA_F","I_Plane_Fighter_03_CAS_F","O_Plane_CAS_02_F",
	"B_APC_Tracked_01_rcws_F","O_APC_Wheeled_02_rcws_F","B_APC_Tracked_01_CRV_F","B_APC_Wheeled_01_cannon_F","I_APC_tracked_03_cannon_F",
	"B_APC_Wheeled_03_cannon_F","O_APC_Tracked_02_cannon_F","I_APC_Wheeled_03_cannon_F",
	"B_APC_Tracked_01_AA_F","O_APC_Tracked_02_AA_F",
	"B_MBT_01_cannon_F","B_MBT_01_TUSK_F","O_MBT_02_cannon_F","I_MBT_03_cannon_F",
	"B_MBT_01_arty_F","O_MBT_02_arty_F","B_MBT_01_mlrs_F",
	"B_Plane_CAS_01_dynamicLoadout_F","O_Plane_CAS_02_dynamicLoadout_F","I_Plane_Fighter_03_dynamicLoadout_F",
	"Item_FieldPack_blk",
	"Item_FieldPack_cbr",
	"Item_FieldPack_khk",
	"Item_FieldPack_ocamo",
	"Item_FieldPack_oli",
	"Item_FieldPack_oucamo",
	"Item_Kitbag_cbr",
	"Item_Kitbag_mcamo",
	"Item_Kitbag_rgr",
	"Item_Kitbag_sgg",
	"Item_TacticalPack_blk",
	"Item_TacticalPack_mcamo",
	"Item_TacticalPack_ocamo",
	"Item_TacticalPack_oli",
	"Item_TacticalPack_rgr",
	"Item_smallbackpack_red",
	"Item_smallbackpack_green",
	"Item_smallbackpack_teal",
	"Item_smallbackpack_pink",
	"ItemSafe_s",
	"KitPlotPole_M",
	"KitPlotPole_L",
	"KitPlotPole_XL",
	"KitPlotPole_XXL",
	"KitSolarChargerXL",
	"acc_pointer_IR",
	//"l85a2_epoch",
	"l85a2_pink_epoch",
	"l85a2_ugl_epoch",
	//"arifle_SDAR_F",
	//"arifle_TRG21_F",
	//"arifle_TRG20_F",
	"arifle_TRG21_GL_F",
	//"arifle_Mk20_F",
	//"arifle_Mk20C_F",
	"arifle_Mk20_GL_F",
	"arifle_Mk20_plain_F",
	"arifle_Mk20C_plain_F",
	"arifle_Mk20_GL_plain_F",
	"SMG_03_TR_black",
	"SMG_03_TR_camo",
	"SMG_03_TR_khaki",
	"SMG_03_TR_hex",
	"SMG_03C_TR_black",
	"SMG_03C_TR_camo",
	"SMG_03C_TR_khaki",
	"SMG_03C_TR_hex",
	"SMG_03_black",
	"SMG_03_camo",
	"SMG_03_khaki",
	"SMG_03_hex",
	//"SMG_03C_black",
	"SMG_03C_camo",
	"SMG_03C_khaki",
	"SMG_03C_hex",
	//"m16_EPOCH",
	"m16Red_EPOCH",
	"M14_EPOCH",
	"M14Grn_EPOCH",
	"m4a3_EPOCH",
	"a2_ak47s_gold_EPOCH",
	"a2_AK107_EPOCH",
	"a2_dmr_epoch",
	"a2_dmr_epoch_scoped",
	"a2_Mg36_epoch",
	"a2_m110_epoch",
	"a2_mk16_epoch",
	"a2_mk17_epoch",
	"a2_svd_epoch",
	"a2_VSS_vintorez_epoch",
	"a2_aks74un_EPOCH",
	"200Rnd_556x45_M249",
	"20Rnd_762x51_DMR",
	"20Rnd_762x51_FNFAL",
	"30Rnd_556x45_G36",
	"100Rnd_556x45_BetaCMag",
	"10Rnd_762x54_SVD",
	"10Rnd_9x39_SP5_VSS",
	"B_AssaultPack_cbr",
	"B_AssaultPack_dgtl",
	"B_AssaultPack_khk",
	"B_AssaultPack_mcamo",
	"B_AssaultPack_ocamo",
	"B_AssaultPack_rgr",
	"B_AssaultPack_sgg",
	"B_AssaultPack_blk",
	"B_FieldPack_blk",
	"B_FieldPack_cbr",
	"B_FieldPack_khk",
	"B_FieldPack_ocamo",
	"B_FieldPack_oli",
	"B_FieldPack_oucamo",
	"B_Kitbag_cbr",
	"B_Kitbag_mcamo",
	"B_Kitbag_rgr",
	"B_Kitbag_sgg",
	"B_TacticalPack_blk",
	"B_TacticalPack_mcamo",
	"B_TacticalPack_ocamo",
	"B_TacticalPack_oli",
	"B_TacticalPack_rgr",
	"smallbackpack_red_epoch",
	"smallbackpack_green_epoch",
	"smallbackpack_teal_epoch",
	"smallbackpack_pink_epoch",
	"I_UAV_01_backpack_F",
	"U_RadiationSuit_M_uniform",
	"U_RadiationSuit_F_uniform",
	//"C_Offroad_01_EPOCH",
	"C_Offroad_01_EPOCH1",
	"C_Offroad_01_EPOCH2",
	"C_Offroad_01_EPOCH3",
	"C_Offroad_01_EPOCH4",
	"C_Offroad_01_EPOCH5",
	"C_Quadbike_01_EPOCH",
	//"C_Hatchback_01_EPOCH",
	"C_Hatchback_01_EPOCH1",
	"C_Hatchback_01_EPOCH2",
	"C_Hatchback_01_EPOCH3",
	"C_Hatchback_01_EPOCH4",
	"C_Hatchback_02_EPOCH",
	"C_Hatchback_02_EPOCH1",
	"C_Hatchback_02_EPOCH2",
	"C_Hatchback_02_EPOCH3",
	"C_Hatchback_02_EPOCH4",
	//"C_SUV_01_EPOCH",
	"C_SUV_01_EPOCH1",
	"C_SUV_01_EPOCH2",
	"C_SUV_01_EPOCH3",
	"C_SUV_01_EPOCH4",
	"A2_Golf_EPOCH",
	"A2_HMMWV_EPOCH",
	"A2_HMMWV_load_EPOCH",
	"A2_Lada_EPOCH",
	"A2_SUV_EPOCH",
	"A2_SUV_load_EPOCH",
	"A2_SUV_armed_EPOCH",
	"A2_UAZ_EPOCH",
	"A2_UAZ_Open_EPOCH",
	"A2_Ural_EPOCH",
	"A2_Vodnik_EPOCH",
	"A2_Volha_EPOCH",
	"C_Rubberboat_EPOCH",
	"C_Rubberboat_02_EPOCH",
	"C_Rubberboat_03_EPOCH",
	"C_Rubberboat_04_EPOCH",
	"C_Van_01_box_EPOCH",
	"C_Van_01_box_EPOCH1",
	"C_Van_01_box_EPOCH2",
	"C_Van_01_box_EPOCH3",
	"C_Van_01_box_EPOCH4",
	"C_Van_01_transport_EPOCH",
	"C_Van_01_transport_EPOCH1",
	"C_Van_01_transport_EPOCH2",
	"C_Van_01_transport_EPOCH3",
	"C_Van_01_transport_EPOCH4",
	"C_Boat_Civil_01_EPOCH",
	"C_Boat_Civil_01_police_EPOCH",
	"C_Boat_Civil_01_rescue_EPOCH",
	//"B_Heli_Light_01_EPOCH",
	"B_SDV_01_EPOCH",
	//"B_MRAP_01_EPOCH",
	"B_MRAP_01_EPOCH1",
	"B_MRAP_01_EPOCH2",
	"B_MRAP_01_EPOCH3",
	"B_MRAP_01_EPOCH4",
	//"O_MRAP_02_EPOCH",
	"O_MRAP_02_EPOCH1",
	"O_MRAP_02_EPOCH2",
	"O_MRAP_02_EPOCH3",
	"O_MRAP_02_EPOCH4",
	//"I_MRAP_03_EPOCH",
	"I_MRAP_03_EPOCH1",
	"I_MRAP_03_EPOCH2",
	"I_MRAP_03_EPOCH3",
	"I_MRAP_03_EPOCH4",
	"B_G_Offroad_01_armed_EPOCH1",
	"B_G_Offroad_01_armed_EPOCH2",
	"B_G_Offroad_01_armed_EPOCH3",
	"B_G_Offroad_01_armed_EPOCH4",
	"B_Truck_01_mover_EPOCH",
	"B_Truck_01_mover_EPOCH1",
	"B_Truck_01_mover_EPOCH2",
	"B_Truck_01_mover_EPOCH3",
	"B_Truck_01_mover_EPOCH4",
	"B_Truck_01_transport_EPOCH",
	"B_Truck_01_transport_EPOCH1",
	"B_Truck_01_transport_EPOCH2",
	"B_Truck_01_transport_EPOCH3",
	"B_Truck_01_transport_EPOCH4",
	"B_Truck_01_covered_EPOCH",
	"B_Truck_01_covered_EPOCH1",
	"B_Truck_01_covered_EPOCH2",
	"B_Truck_01_covered_EPOCH3",
	"B_Truck_01_covered_EPOCH4",
	"B_Truck_01_box_EPOCH",
	"B_Truck_01_box_EPOCH1",
	"B_Truck_01_box_EPOCH2",
	"B_Truck_01_box_EPOCH3",
	"B_Truck_01_box_EPOCH4",
	"O_Truck_02_transport_EPOCH",
	"O_Truck_02_transport_EPOCH1",
	"O_Truck_02_transport_EPOCH2",
	"O_Truck_02_transport_EPOCH3",
	"O_Truck_02_transport_EPOCH4",
	"O_Truck_02_covered_EPOCH",
	"O_Truck_02_covered_EPOCH1",
	"O_Truck_02_covered_EPOCH2",
	"O_Truck_02_covered_EPOCH3",
	"O_Truck_02_covered_EPOCH4",
	"O_Truck_02_box_EPOCH",
	"O_Truck_02_box_EPOCH1",
	"O_Truck_02_box_EPOCH2",
	"O_Truck_02_box_EPOCH3",
	"O_Truck_02_box_EPOCH4",
	"O_Truck_03_transport_EPOCH",
	"O_Truck_03_transport_EPOCH1",
	"O_Truck_03_transport_EPOCH2",
	"O_Truck_03_transport_EPOCH3",
	"O_Truck_03_transport_EPOCH4",
	"O_Truck_03_covered_EPOCH",
	"O_Truck_03_covered_EPOCH1",
	"O_Truck_03_covered_EPOCH2",
	"O_Truck_03_covered_EPOCH3",
	"O_Truck_03_covered_EPOCH4",
	"uh1h_Epoch",
	"uh1h_armed_EPOCH",
	"uh1h_armed_plus_EPOCH",
	"a2_mi8_EPOCH",
	"a2_ch47f_EPOCH",
	"a2_ch47f_armed_EPOCH",
	"a2_ch47f_armed_plus_EPOCH",
	"C_Heli_Light_01_armed_EPOCH",
	"C_Heli_Light_01_armed_plus_EPOCH",
	"O_Heli_Light_02_unarmed_EPOCH",
	"I_Heli_Transport_02_EPOCH",
	"I_Heli_light_03_unarmed_EPOCH",
	//"C_Heli_Light_01_civil_EPOCH",
	//"C_Heli_Light_01_civil_2seat_EPOCH",
	//"C_Heli_Light_01_civil_4seat_EPOCH",
	"O_Heli_Transport_04_EPOCH",
	"O_Heli_Transport_04_bench_EPOCH",
	"O_Heli_Transport_04_box_EPOCH",
	"O_Heli_Transport_04_covered_EPOCH",
	"B_Heli_Transport_03_unarmed_EPOCH",
	"I_UAV_01_F",
	"jetski_epoch",
	//"mosquito_epoch",
	"C_Boat_Transport_02_F",
	"C_Scooter_Transport_01_F",
	//"C_Offroad_02_unarmed_F",
	"I_C_Offroad_02_unarmed_F",
	"B_T_LSV_01_unarmed_F",
	"B_LSV_01_armed_black_F",
	"O_LSV_02_unarmed_F",
	"O_T_LSV_02_unarmed_F",
	//"C_Plane_Civil_01_F",
	//"C_Plane_Civil_01_racing_F",
	"B_CTRG_LSV_01_light_F",
	"B_LSV_01_unarmed_F",
	"B_T_VTOL_01_vehicle_blue_EPOCH",
	"B_T_VTOL_01_infantry_olive_EPOCH",
	"O_T_VTOL_02_infantry_EPOCH",
	"O_T_VTOL_02_vehicle_grey_EPOCH",
	"B_UavTerminal",
	"O_UavTerminal",
	"arifle_AKM_F",
	"arifle_AKM_FL_F",
	"arifle_CTAR_blk_F",
	"arifle_CTAR_hex_F",
	"arifle_CTAR_ghex_F",
	"arifle_CTAR_GL_blk_F",
	"arifle_CTARS_blk_F",
	"arifle_CTARS_ghex_F",
	"arifle_CTARS_hex_F",
	"arifle_SPAR_01_blk_F",
	"arifle_SPAR_01_khk_F",
	"arifle_SPAR_01_snd_F",
	"arifle_SPAR_01_GL_blk_F",
	"arifle_SPAR_01_GL_khk_F",
	"arifle_SPAR_01_GL_snd_F",
	"arifle_SPAR_02_blk_F",
	"arifle_SPAR_02_khk_F",
	"arifle_SPAR_02_snd_F",
	"muzzle_snds_H_khk_F",
	"muzzle_snds_H_snd_F",
	"muzzle_snds_58_blk_F",
	"muzzle_snds_m_khk_F",
	"muzzle_snds_m_snd_F",
	"muzzle_snds_B_khk_F",
	"muzzle_snds_B_snd_F",
	"muzzle_snds_58_wdm_F",
	"muzzle_snds_65_TI_blk_F",
	"muzzle_snds_65_TI_hex_F",
	"muzzle_snds_65_TI_ghex_F",
	"muzzle_snds_H_MG_blk_F",
	"muzzle_snds_H_MG_khk_F",
	"optic_Arco_blk_F",
	"optic_Arco_ghex_F",
	"optic_DMS_ghex_F",
	"optic_Hamr_khk_F",
	"optic_ERCO_blk_F",
	"optic_ERCO_khk_F",
	"optic_ERCO_snd_F",
	"optic_Holosight_blk_F",
	"optic_Holosight_khk_F",
	"optic_Holosight_smg_blk_F",
	"100Rnd_580x42_Mag_F",
	"100Rnd_580x42_Mag_Tracer_F",
	"150Rnd_556x45_Drum_Mag_F",
	"150Rnd_556x45_Drum_Mag_Tracer_F",
	"200Rnd_556x45_Box_F",
	"200Rnd_556x45_Box_Red_F",
	"200Rnd_556x45_Box_Tracer_F",
	"200Rnd_556x45_Box_Tracer_Red_F",
	"B_AssaultPack_tna_F",
	"B_FieldPack_ghex_F",
	"CircuitParts",
	"ItemCoolerE",
	"JackKit",
	"ItemGPS",
	"EpochRadio0",
	"EpochRadio1",
	"EpochRadio2",
	"EpochRadio3",
	"EpochRadio4",
	"EpochRadio5",
	"EpochRadio6",
	"EpochRadio7",
	"EpochRadio8",
	"EpochRadio9",
	"NVG_EPOCH",
	"srifle_EBR_F",
	"srifle_GM6_F",
	"srifle_LRR_F",
	"srifle_DMR_01_F",
	"20Rnd_762x51_Mag",
	"5Rnd_127x108_Mag",
	"5Rnd_127x108_APDS_Mag",
	"7Rnd_408_Mag",
	"10Rnd_762x51_Mag",
	"10Rnd_338_Mag",
	"130Rnd_338_Mag",
	"10Rnd_93x64_DMR_05_Mag",
	"10Rnd_127x54_Mag",
	"PaintCanClear",
	"PaintCanBlk",
	"PaintCanBlu",
	"PaintCanBrn",
	"PaintCanGrn",
	"PaintCanOra",
	"PaintCanPur",
	"PaintCanRed",
	"PaintCanTeal",
	"PaintCanYel",
	"ItemDocument",
	"ItemDocumentMission",
	"spear_magazine",
	"WoodLog_EPOCH",
	"ItemTrout",
	"ItemSeaBass",
	"ItemTuna",
	"sr25_epoch",
	"arifle_Katiba_F",
	"arifle_Katiba_C_F",
	"arifle_Katiba_GL_F",
	"arifle_MXC_F",
	"arifle_MX_F",
	"arifle_MX_GL_F",
	"arifle_MXM_F",
	"arifle_MXM_Black_F",
	"arifle_MX_GL_Black_F",
	"arifle_MX_Black_F",
	"arifle_MXC_Black_F",
	"Rollins_F",
	"arifle_SPAR_03_blk_F",
	"arifle_SPAR_03_khk_F",
	"arifle_SPAR_03_snd_F",	
	"arifle_ARX_blk_F",
	"arifle_ARX_ghex_F",
	"arifle_ARX_hex_F",	
	"arifle_AK12_F",
	"arifle_AK12_GL_F",	
	"30Rnd_65x39_caseless_green",
	"30Rnd_65x39_caseless_green_mag_Tracer",
	"30Rnd_65x39_caseless_mag",
	"30Rnd_65x39_caseless_mag_Tracer",
	"20Rnd_556x45_UW_mag",
	//"30Rnd_556x45_Stanag",
	//"30Rnd_556x45_Stanag_Tracer_Red",
	//"30Rnd_556x45_Stanag_Tracer_Green",
	//"30Rnd_556x45_Stanag_Tracer_Yellow",
	//"30Rnd_45ACP_Mag_SMG_01",
	//"30Rnd_45ACP_Mag_SMG_01_Tracer_Green",
	"5Rnd_rollins_mag",
	"UGL_FlareWhite_F",
	"UGL_FlareGreen_F",
	"UGL_FlareRed_F",
	"UGL_FlareYellow_F",
	"UGL_FlareCIR_F",
	"1Rnd_Smoke_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeYellow_Grenade_shell",
	"1Rnd_SmokePurple_Grenade_shell",
	"1Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeOrange_Grenade_shell",
	"3Rnd_HE_Grenade_shell",
	"3Rnd_UGL_FlareWhite_F",
	"3Rnd_UGL_FlareGreen_F",
	"3Rnd_UGL_FlareRed_F",
	"3Rnd_UGL_FlareYellow_F",
	"3Rnd_UGL_FlareCIR_F",
	"3Rnd_Smoke_Grenade_shell",
	"3Rnd_SmokeRed_Grenade_shell",
	"3Rnd_SmokeGreen_Grenade_shell",
	"3Rnd_SmokeYellow_Grenade_shell",
	"3Rnd_SmokePurple_Grenade_shell",
	"3Rnd_SmokeBlue_Grenade_shell",
	"3Rnd_SmokeOrange_Grenade_shell",
	"LMG_Mk200_F",
	"arifle_MX_SW_F",
	"LMG_Zafir_F",
	"arifle_MX_SW_Black_F",
	"srifle_DMR_02_F",
	"srifle_DMR_02_camo_F",
	"srifle_DMR_02_sniper_F",
	"srifle_DMR_03_F",
	"srifle_DMR_03_khaki_F",
	"srifle_DMR_03_tan_F",
	"srifle_DMR_03_multicam_F",
	"srifle_DMR_03_woodland_F",
	"srifle_DMR_03_spotter_F",
	"srifle_DMR_04_Tan_F",
	"srifle_DMR_05_blk_F",
	"srifle_DMR_05_hex_F",
	"srifle_DMR_05_tan_f",
	"srifle_DMR_06_camo_F",
	"srifle_DMR_06_olive_F",
	"MMG_01_hex_F",
	"MMG_01_tan_F",
	"MMG_02_camo_F",
	"MMG_02_black_F",
	"MMG_02_sand_F",
	"m249_EPOCH",
	"m249Tan_EPOCH",
	"m107Tan_EPOCH",
	"m107_EPOCH",
	"30rnd_556_magazine",
	"20rnd_762_magazine",
	//"30Rnd_762x39_Mag",
	"200Rnd_65x39_cased_Box",
	"100Rnd_65x39_caseless_mag",
	"200Rnd_65x39_cased_Box_Tracer",
	"100Rnd_65x39_caseless_mag_Tracer",
	"150Rnd_762x54_Box",
	"150Rnd_762x54_Box_Tracer",
	"150Rnd_93x64_Mag",
	"Rangefinder",
	"Laserdesignator",
	"MultiGun",
	"MeleeSledge",
	"MeleeMaul",
	"WoodClub",
	"Plunger",
	"optic_SOS",
	"optic_MRCO",
	"optic_DMS",
	"optic_Yorris",
	"optic_MRD",
	"optic_tws",
	"optic_tws_mg",
	"optic_AMS",
	"optic_AMS_khk",
	"optic_AMS_snd",
	"optic_KHS_blk",
	"optic_KHS_hex",
	"optic_KHS_old",
	"optic_KHS_tan",
	"bipod_01_F_snd",
	"bipod_01_F_blk",
	"bipod_01_F_mtp",
	"bipod_02_F_blk",
	"bipod_02_F_tan",
	"bipod_02_F_hex",
	"bipod_03_F_blk",
	"bipod_03_F_oli",
	"Elcan_epoch",
	"Elcan_reflex_epoch",
	"muzzle_snds_H",
	"muzzle_snds_L",
	"muzzle_snds_M",
	"muzzle_snds_B",
	"muzzle_snds_H_MG",
	"muzzle_snds_acp",
	"Heal_EPOCH",
	"Defib_EPOCH",
	"Repair_EPOCH",
	"muzzle_snds_338_black",
	"muzzle_snds_338_green",
	"muzzle_snds_93mmg",
	"muzzle_snds_93mmg_tan",
	"muzzle_sr25S_epoch",
	"PartOreGold",
	"PartOreSilver",
	"PartOre",
	"ItemGoldBar",
	"ItemSilverBar",
	"ItemGoldBar10oz",
	"ItemTopaz",
	"ItemOnyx",
	"ItemSapphire",
	"ItemAmethyst",
	"ItemEmerald",
	"ItemCitrine",
	"ItemRuby",
	"ItemQuartz",
	"ItemJade",
	"ItemGarnet",
	"ItemKiloHemp",
	"PartPlankPack",
	"CinderBlocks",
	"ItemCorrugated",
	"ItemCorrugatedLg",
	"KitStudWall",
	"KitWoodFloor",
	"KitWoodStairs",
	"KitWoodRamp",
	"KitFirePlace",
	"KitTiPi",
	"KitShelf",
	"KitWoodFoundation",
	"KitFoundation",
	"KitCinderWall",
	"honey_epoch",
	"Pelt_EPOCH",
	"Venom_EPOCH",
	"DemoCharge_Remote_Mag",
	"B_Carryall_cbr",
	"B_Carryall_khk",
	"B_Carryall_mcamo",
	"B_Carryall_ocamo",
	"B_Carryall_oli",
	"B_Carryall_oucamo",
	"U_O_FullGhillie_lsh",
	"U_O_FullGhillie_sard",
	"U_O_FullGhillie_ard",
	"U_O_CombatUniform_ocamo",
	"U_O_GhillieSuit",
	"U_O_PilotCoveralls",
	"U_O_Wetsuit",
	"U_Wetsuit_uniform",
	"U_Wetsuit_White",
	"U_Wetsuit_Blue",
	"U_Wetsuit_Purp",
	"U_Wetsuit_Camo",
	"U_Camo_uniform",
	"U_ghillie1_uniform",
	"U_ghillie2_uniform",
	"U_ghillie3_uniform",
	"U_CamoBlue_uniform",
	"U_CamoBrn_uniform",
	"U_CamoRed_uniform",
	"V_1_EPOCH",
	"V_2_EPOCH",
	"V_3_EPOCH",
	"V_4_EPOCH",
	"V_5_EPOCH",
	"V_6_EPOCH",
	"V_7_EPOCH",
	"V_8_EPOCH",
	"V_9_EPOCH",
	"V_10_EPOCH",
	"V_11_EPOCH",
	"V_12_EPOCH",
	"V_13_EPOCH",
	"V_14_EPOCH",
	"V_15_EPOCH",
	"V_16_EPOCH",
	"V_17_EPOCH",
	"V_18_EPOCH",
	"V_19_EPOCH",
	"V_20_EPOCH",
	"V_21_EPOCH",
	"V_22_EPOCH",
	"V_23_EPOCH",
	"V_24_EPOCH",
	"V_25_EPOCH",
	"V_26_EPOCH",
	"V_27_EPOCH",
	"V_28_EPOCH",
	"V_29_EPOCH",
	"V_30_EPOCH",
	"V_31_EPOCH",
	"V_32_EPOCH",
	"V_33_EPOCH",
	"V_34_EPOCH",
	"V_35_EPOCH",
	"V_36_EPOCH",
	"V_37_EPOCH",
	"V_38_EPOCH",
	"V_39_EPOCH",
	"V_40_EPOCH",
	"H_1_EPOCH",
	"H_2_EPOCH",
	"H_3_EPOCH",
	"H_4_EPOCH",
	"H_5_EPOCH",
	"H_6_EPOCH",
	"H_7_EPOCH",
	"H_8_EPOCH",
	"H_9_EPOCH",
	"H_10_EPOCH",
	"H_11_EPOCH",
	"H_12_EPOCH",
	"H_13_EPOCH",
	"H_14_EPOCH",
	"H_15_EPOCH",
	"H_16_EPOCH",
	"H_17_EPOCH",
	"H_18_EPOCH",
	"H_19_EPOCH",
	"H_20_EPOCH",
	"H_21_EPOCH",
	"H_22_EPOCH",
	"H_23_EPOCH",
	"H_24_EPOCH",
	"H_25_EPOCH",
	"H_26_EPOCH",
	"H_27_EPOCH",
	"H_28_EPOCH",
	"H_29_EPOCH",
	"H_30_EPOCH",
	"H_31_EPOCH",
	"H_32_EPOCH",
	"H_33_EPOCH",
	"H_34_EPOCH",
	"H_35_EPOCH",
	"H_36_EPOCH",
	"H_37_EPOCH",
	"H_38_EPOCH",
	"H_39_EPOCH",
	"H_40_EPOCH",
	"H_41_EPOCH",
	"H_42_EPOCH",
	"H_43_EPOCH",
	"H_44_EPOCH",
	"H_45_EPOCH",
	"H_46_EPOCH",
	"H_47_EPOCH",
	"H_48_EPOCH",
	"H_49_EPOCH",
	"H_50_EPOCH",
	"H_51_EPOCH",
	"H_52_EPOCH",
	"H_53_EPOCH",
	"H_54_EPOCH",
	"H_55_EPOCH",
	"H_56_EPOCH",
	"H_57_EPOCH",
	"H_58_EPOCH",
	"H_59_EPOCH",
	"H_60_EPOCH",
	"H_61_EPOCH",
	"H_62_EPOCH",
	"H_63_EPOCH",
	"H_64_EPOCH",
	"H_65_EPOCH",
	"H_66_EPOCH",
	"H_67_EPOCH",
	"H_68_EPOCH",
	"H_69_EPOCH",
	"H_70_EPOCH",
	"H_71_EPOCH",
	"H_72_EPOCH",
	"H_73_EPOCH",
	"H_74_EPOCH",
	"H_75_EPOCH",
	"H_76_EPOCH",
	"H_77_EPOCH",
	"H_78_EPOCH",
	"H_79_EPOCH",
	"H_80_EPOCH",
	"H_81_EPOCH",
	"H_82_EPOCH",
	"H_83_EPOCH",
	"H_84_EPOCH",
	"H_85_EPOCH",
	"H_86_EPOCH",
	"H_87_EPOCH",
	"H_88_EPOCH",
	"H_89_EPOCH",
	"H_90_EPOCH",
	"H_91_EPOCH",
	"H_92_EPOCH",
	"H_93_EPOCH",
	"H_94_EPOCH",
	"H_95_EPOCH",
	"H_96_EPOCH",
	"H_97_EPOCH",
	"H_98_EPOCH",
	"H_99_EPOCH",
	"H_100_EPOCH",
	"H_101_EPOCH",
	"H_102_EPOCH",
	"H_103_EPOCH",
	"H_104_EPOCH",

	"LMG_03_F",
	"arifle_MX_khk_F",
	"arifle_MX_GL_khk_F",
	"arifle_MXC_khk_F",
	"arifle_MXM_khk_F",
	"srifle_LRR_tna_F",
	"srifle_GM6_ghex_F",
	"srifle_DMR_07_blk_F",
	"srifle_DMR_07_hex_F",
	"srifle_DMR_07_ghex_F",

	"optic_SOS_khk_F",
	"optic_LRPS_tna_F",
	"optic_LRPS_ghex_F",
	"bipod_01_F_khk",
	"20Rnd_650x39_Cased_Mag_F",
	"10Rnd_50BW_Mag_F",
	"30Rnd_762x39_Mag_F",
	"30Rnd_762x39_Mag_Green_F",
	"30Rnd_762x39_Mag_Tracer_F",
	"30Rnd_762x39_Mag_Tracer_Green_F",
	"B_Bergen_mcamo_F",
	"B_Bergen_dgtl_F",
	"B_Bergen_hex_F",
	"B_Bergen_tna_F",
	"B_Carryall_ghex_F",
	"B_ViperHarness_base_F",
	"B_ViperHarness_blk_F",
	"B_ViperHarness_ghex_F",
	"B_ViperHarness_hex_F",
	"B_ViperHarness_khk_F",
	"B_ViperHarness_oli_F",
	"B_ViperLightHarness_base_F",
	"B_ViperLightHarness_blk_F",
	"B_ViperLightHarness_ghex_F",
	"B_ViperLightHarness_hex_F",
	"B_ViperLightHarness_khk_F",
	"B_ViperLightHarness_oli_F",
	"ItemEmptyTin",
	"ItemSodaEmpty",
	"ItemSodaAlpineDude",
	"ItemHotwire",
	"ItemKeyKit",
	"ItemBarrelF",
	"ItemBarrelE",
	"ItemPipe",
	"ItemKey",
	"ItemKeyBlue",
	"ItemKeyGreen",
	"ItemKeyRed",
	"ItemKeyYellow",
	"ItemDoc1",
	"ItemDoc2",
	"ItemDoc3",
	"ItemDoc4",
	"ItemDoc5",
	"ItemDoc6",
	"ItemDoc7",
	"ItemDoc8",
	"ItemVehDoc1",
	"ItemVehDoc2",
	"ItemVehDoc3",
	"ItemVehDoc4",
	"ItemVehDocRara",
	"ItemBulb",
	"ItemBurlap",
	"SmeltingTools_EPOCH",
	"ItemBriefcaseE",
	"ItemBriefcaseGold100oz",
	"ItemBriefcaseSilver100oz",
	"ItemAluminumBar",
	"ItemAluminumBar10oz",
	"ItemCopperBar",
	"ItemCopperBar10oz",
	"ItemTinBar",
	"ItemTinBar10oz",
	"ItemPlywoodPack",
	"ItemComboLock",
	"Item_AssaultPack_cbr",
	"Item_AssaultPack_dgtl",
	"Item_AssaultPack_khk",
	"Item_AssaultPack_mcamo",
	"Item_AssaultPack_ocamo",
	"Item_AssaultPack_rgr",
	"Item_AssaultPack_sgg",
	"Item_AssaultPack_blk",
	"Item_Carryall_cbr",
	"Item_Carryall_khk",
	"Item_Carryall_mcamo",
	"Item_Carryall_ocamo",
	"Item_Carryall_oli",
	"Item_Carryall_oucamo",
	"ItemGeigerCounter_EPOCH",
	"SpareTire",
	"EngineParts",
	"EngineBlock",
	"ItemGlass",
	"ItemDuctTape",
	"ItemRotor",
	"FuelTank",
	"acc_flashlight_pistol",
	"10Rnd_762x54_Mag",
	"ItemFireExtinguisher",
	"Kit_Garden",
	"Poppy",
	"Goldenseal",
	"Pumpkin",
	"Hemp",
	"Sunflower",
	"SeedPacket_GoldenSeal",
	"SeedPacket_Hemp",
	"SeedPacket_Poppy",
	"SeedPacket_Pumpkin",
	"SeedPacket_Sunflower",
	"ChickenCarcass_EPOCH",
	"SnakeCarcass_EPOCH",
	"RabbitCarcass_EPOCH",
	"GoatCarcass_EPOCH",
	"DogCarcass_EPOCH",
	"SheepCarcass_EPOCH",
	"ItemTroutCooked",
	"ItemSeaBassCooked",
	"ItemTunaCooked",
	"ItemVitamins",
	"water_epoch",
	"adrenaline_epoch",
	"atropine_epoch",
	"morphine_epoch",
	"caffeinepills_epoch",
	"orlistat_epoch",
	"nanite_cream_epoch",
	"nanite_gun_epoch",
	"nanite_pills_epoch",
	"iodide_pills_epoch",
	"150Rnd_762x51_Box",
	"150Rnd_762x51_Box_Tracer",
	"MeleeSword",
	"Power_Sword",
	"MeleeRod",
	"6Rnd_BlueSignal_F",
	"6Rnd_PurpleSignal_F",
	"6Rnd_OrangeSignal_F",
	"muzzle_snds_338_sand",
	"ItemSilverBar10oz",
	"ItemCanvas",
	"ItemSeedBag",
	"KitWoodQuarterFloor",
	"KitWoodHalfFloor",
	"KitMetalQuarterFloor",
	"KitMetalHalfFloor",
	"KitMetalFloor",
	"KitCinderQuarterFloor",
	"KitCinderHalfFloor",
	"KitCinderFloor",
	"KitWoodTower",
	"KitMetalTower",
	"KitCinderTower",
	"KitSpikeTrap",
	"KitMetalTrap",
	"KitTankTrap",
	"KitHesco3",
	"KitWoodLadder",
	"KitTentA",
	"KitTentDome",
	"KitFieldToilet",
	"KitSandbagWall",
	"KitSandbagWallLong",
	"KitBurnBarrel",
	"KitLightPole",
	"KitPortableLight_Single",
	"KitPortableLight_Double",
	"KitScaffolding",
	"KitSink",
	"KitWatchTower",
	"KitSunShade",
	"KitBagBunker",
	"KitBarGate",
	"KitWaterPump",
	"KitWorkbench",
	"KitBarbedWire",
	"KitSolarGen",
	"ItemSolar",
	"ItemCables",
	"ItemBattery",
	"SmokeShellToxic",
	"SatchelCharge_Remote_Mag",
	"ATMine_Range_Mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"APERSMine_Range_Mag",
	"APERSBoundingMine_Range_Mag",
	"SLAMDirectionalMine_Wire_Mag",
	"APERSTripMine_Wire_Mag",
	"BarrelBomb_EPOCH_Remote_Mag",
	"BarrelBomb2_EPOCH_Remote_Mag",

	"V_F0_EPOCH",
	"V_F1_EPOCH",
	"V_F2_EPOCH",
	"V_F3_EPOCH",
	"V_F4_EPOCH",
	"V_F5_EPOCH",
	"H_105_EPOCH",
	"clown_mask_epoch",

	"500Rnd_127x99_mag",
	"500Rnd_127x99_mag_Tracer_Red",
	"500Rnd_127x99_mag_Tracer_Green",
	"500Rnd_127x99_mag_Tracer_Yellow",
	"200Rnd_127x99_mag",
	"200Rnd_127x99_mag_Tracer_Red",
	"200Rnd_127x99_mag_Tracer_Green",
	"200Rnd_127x99_mag_Tracer_Yellow",
	"100Rnd_127x99_mag",
	"100Rnd_127x99_mag_Tracer_Red",
	"100Rnd_127x99_mag_Tracer_Green",
	"100Rnd_127x99_mag_Tracer_Yellow",
	"2000Rnd_762x51_Belt",
	"200Rnd_40mm_G_belt",
	"32Rnd_40mm_G_belt",
	"64Rnd_40mm_G_belt",
	"96Rnd_40mm_G_belt",
	"200Rnd_20mm_G_belt",
	"40Rnd_20mm_G_belt",
	"60Rnd_CMFlare_Chaff_Magazine",
	"120Rnd_CMFlare_Chaff_Magazine",
	"240Rnd_CMFlare_Chaff_Magazine",
	"192Rnd_CMFlare_Chaff_Magazine",
	"168Rnd_CMFlare_Chaff_Magazine",
	"300Rnd_CMFlare_Chaff_Magazine",
	"SmokeLauncherMag",
	"SmokeLauncherMag_boat",
	"200Rnd_65x39_Belt",
	"200Rnd_65x39_Belt_Tracer_Red",
	"200Rnd_65x39_Belt_Tracer_Green",
	"200Rnd_65x39_Belt_Tracer_Yellow",
	"1000Rnd_65x39_Belt",
	"1000Rnd_65x39_Belt_Tracer_Red",
	"1000Rnd_65x39_Belt_Green",
	"1000Rnd_65x39_Belt_Tracer_Green",
	"1000Rnd_65x39_Belt_Yellow",
	"1000Rnd_65x39_Belt_Tracer_Yellow",
	"2000Rnd_65x39_Belt",
	"2000Rnd_65x39_Belt_Tracer_Red",
	"2000Rnd_65x39_Belt_Green",
	"2000Rnd_65x39_Belt_Tracer_Green",
	"2000Rnd_65x39_Belt_Tracer_Green_Splash",
	"2000Rnd_65x39_Belt_Yellow",
	"2000Rnd_65x39_Belt_Tracer_Yellow",
	"2000Rnd_65x39_Belt_Tracer_Yellow_Splash",
	"8Rnd_82mm_Mo_shells",
	"8Rnd_82mm_Mo_Flare_white",
	"8Rnd_82mm_Mo_Smoke_white",
	"8Rnd_82mm_Mo_guided",
	"8Rnd_82mm_Mo_LG",
	"24Rnd_PG_missiles",
	"12Rnd_PG_missiles",
	"24Rnd_missiles",
	"12Rnd_missiles",
	"60Rnd_40mm_GPR_shells",
	"60Rnd_40mm_GPR_Tracer_Red_shells",
	"60Rnd_40mm_GPR_Tracer_Green_shells",
	"60Rnd_40mm_GPR_Tracer_Yellow_shells",
	"40Rnd_40mm_APFSDS_shells",
	"40Rnd_40mm_APFSDS_Tracer_Red_shells",
	"40Rnd_40mm_APFSDS_Tracer_Green_shells",
	"40Rnd_40mm_APFSDS_Tracer_Yellow_shells",
	"140Rnd_30mm_MP_shells",
	"140Rnd_30mm_MP_shells_Tracer_Red",
	"140Rnd_30mm_MP_shells_Tracer_Green",
	"140Rnd_30mm_MP_shells_Tracer_Yellow",
	"60Rnd_30mm_APFSDS_shells",
	"60Rnd_30mm_APFSDS_shells_Tracer_Red",
	"60Rnd_30mm_APFSDS_shells_Tracer_Green",
	"60Rnd_30mm_APFSDS_shells_Tracer_Yellow",
	"U_IG_Guerilla1_1",
	"U_IG_leader",
	"U_IG_Guerilla2_1",
	"U_IG_Guerilla2_3",
	"U_IG_Guerilla2_2",
	"U_IG_Guerilla3_1",
	"U_IG_Guerrilla_6_1",
	"U_OG_Guerrilla_6_1",
	"U_I_CombatUniform",
	"U_I_CombatUniform_shortsleeve",
	"U_I_HeliPilotCoveralls",
	"U_I_pilotCoveralls",
	"U_I_OfficerUniform",
	"U_I_Wetsuit",
	"U_I_GhillieSuit",
	"U_I_CombatUniform_tshirt",
	"U_O_OfficerUniform_ocamo",
	"U_O_SpecopsUniform_ocamo",
	"U_O_CombatUniform_oucamo",
	"U_Marshal",
	"U_B_Protagonist_VR",
	"U_O_Protagonist_VR",
	"U_I_Protagonist_VR",
	"U_I_FullGhillie_lsh",
	"U_I_FullGhillie_sard",
	"U_I_FullGhillie_ard",
	"U_I_C_Soldier_Para_1_F",
	"U_I_C_Soldier_Para_2_F",
	"U_I_C_Soldier_Para_3_F",
	"U_I_C_Soldier_Para_4_F",
	"U_I_C_Soldier_Para_5_F",
	"U_I_C_Soldier_Bandit_1_F",
	"U_I_C_Soldier_Bandit_2_F",
	"U_I_C_Soldier_Bandit_3_F",
	"U_I_C_Soldier_Bandit_4_F",
	"U_I_C_Soldier_Bandit_5_F",
	"U_I_C_Soldier_Camo_F",
	"U_O_T_Soldier_F",
	"U_O_T_Officer_F",
	"U_O_T_Sniper_F",
	"U_O_T_FullGhillie_tna_F",
	"U_O_V_Soldier_Viper_F",
	"U_O_V_Soldier_Viper_hex_F",
	"radiation_mask_epoch",
	"revolver01",
	"VG_sawed_off_01",
	"Devastator_01",
	"in005_1Rnd_12Gauge_Pellets",
	"in005_1Rnd_12Gauge_Slug",
	"H_MM_Buzzard_Gasmask_01",
	"H_MM_Helmet_01",
	"V_MM_Vest_01"
];

//this is how vehicles spawn, 0 = player gets menu to decide, 1 = only allow saved vehicles, 2 = only allow rentals
_vehiclespawnmode = 0;

//restrict vehicle weaponry here
_restrictedvehicles = [
/*
	["vehicleclassname",["weaponclassname1","weaponclassname2","weaponclassname3"]],
*/
];

//this is to remove all ammo on any vehicle purchase
_clearammo = true;

//this is ammo excluded from above removal
_dontremove =
[
	"Laserbatteries","SmokeLauncherMag_boat","SmokeLauncherMag","300Rnd_CMFlare_Chaff_Magazine","168Rnd_CMFlare_Chaff_Magazine","192Rnd_CMFlare_Chaff_Magazine",
	"240Rnd_CMFlare_Chaff_Magazine","120Rnd_CMFlare_Chaff_Magazine","60Rnd_CMFlare_Chaff_Magazine","240Rnd_CMFlareMagazine","120Rnd_CMFlareMagazine",
	"60Rnd_CMFlareMagazine"
];

