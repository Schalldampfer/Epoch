/*
	spawn dialog location settings
	By Halv
	
	Copyright (C) 2015  Halvhjearne > README.md
*/

//allow spawn near players jammer? only one is registered, so no point in multiple jammers
//I have had reports about players not loading when using this, so if you have problems, try to set this to false
_spawnNearJammer = true;
//this is the area to search for jammers, reduce if you do not want players spawning on the edge of the map
//Increas with care as it can increase load times with high numbers default: 10000
_jamarea = 10000;

//This will allow spawn near group leader, but group system in epoch is bugged
_spawnNearGroup = true;

//adds the default spawns locations
_adddefaultspawns = false;

Halv_spawns = switch(toLower worldName)do{
//altis spawns
	case "altis":{
		[
/*
		[
			[20548.4,8888.25],
			2,
			"My custom spawn name for panagia"
		],	// 'Panagia' donor lvl 2 required to spawn here
		[
			[20548.4,8888.25]
		],	//minimal array for 'Panagia', name is found by the script and no donor / lvl requirements to spawn here
*/
			[[20548.4,8888.25],2],	// 'Panagia'" //donor
			[[20788.2,6733.91]],	// 'Selakano'
			[[20241.1,11659.6],1],	// 'Chalkeia' //reg
			[[16786.2,12619.4]],	// 'Pyrgos'
			[[18111.2,15242.3],2],	// 'Charkia'
			[[21358.5,16361]],	// 'Kalochori'" //donor
			[[23211.4,19957.7]],	// 'Ioannina'
			[[25696.9,21348.6],2],	// 'Sofia' //donor
			[[26990.8,23202.2]],	// 'Molos'
			[[16278.7,17267.4],1],	// 'Telos' //reg
			[[14039.2,18730.9]],	// 'Athira'
			[[14602.8,20791.3]],	// 'Frini'
			[[9436.79,20304.4]],	// 'Abdera'
			[[4559.19,21406.7],2],	// 'Oreokastro' //donor
			[[4040.33,17281.3]],	// 'Agios Konstantinos'
			[[9275.09,15899.8],1],	// 'Agios Dionysios' //reg
			[[12477.4,14316.7]],	// 'Neochori'
			[[3529.11,13054.8]],	// 'Kavala'
			[[9045.54,11960.8]],	// 'Zaros'
			[[9259.52,8062.07],1]	//'Sfaka' //reg

		]
	};
//stratis spawns
	case "stratis":{
		[
			[[1949.69,5522.03]],
			[[3024.14,5973.37]],
			[[3725.39,7114.48]],
			[[5008.42,5907.77]],
			[[6429.73,5395.64]],
			[[5356.9,3792.62]],
			[[4362.02,3831.27]],
			[[3292.59,2934.25]],
			[[2778.96,1746.92]],
			[[2625.43,608.782]],
			[[2424.63,1142.45]],
			[[2120.67,1920.52]],
			[[2005.55,2702.73]],
			[[1922.96,3569.01]],
			[[1983.26,4178.85]]
		]
	};
	case "chernarus":
	{
		[
//these are old a2 positions taken directly from ebays essv2 (thanks ebay) 
//... Richie says they will work, so ill leave them here for now ...
			//Chernarus
			[[4932,1989]],		//"Balota",
			[[12048,8352]],		//"Berezino",
			[[6901,2509]],		//"Chernogorsk",
			[[10294,2191]],		//"Elektrozavodsk",
			[[2236,1923]],		//"Kamenka",
			[[12071,3591]],		//"Kamyshovo",
			[[3608,2152]],		//"Komarovo",
			[[7952,3205]],		//"Prigorodky",
			[[9153,3901]],		//"Pusta",
			[[13510,5249]],		//"Solnichny",
			// Above are defaults
			[[7068,11221],1],	//"Devil's Castle",
			[[9711,8962],1],	//"Gorka",
			[[5939,10195],2],	//"Grishino",
			[[8421,6643],2],	//"Guglovo",
			[[8812,11642],2],	//"Gvozdno",
			[[5301,8548],2],	//"Kabanino",
			[[11053,12361],2],	//"Krasnostav",
			[[13407,4175],2],	//"Krutoy",
			[[2718,10094],1],	//"Lopatino",
			[[4984,12492],2],	//"Petrovka",
			[[4582,6457],2],	//"Pogorevka",
			[[3626,8976],2],	//"Vybor",
			[[6587,6026],2],	//"Vyshnoye",
			[[2692,5284],1],	//"Zelenogorsk",
			// still viable?
			[[1607,7804,0],2,"Bandit Base"],	//"Bandit Base",
			[[12944,12767,0],2,"Hero Hideout"]//"Hero Hideout",
		]
	};
	case "bornholm":{
		[
			[[4238.39,19928.1]],	//Sandvig
			[[6320.51,17166.1],2],	//Tejn
			[[11500,14697.5],1],	//Gudhjem
			[[17798.6,9953]],		//Svaneke
			[[17989.7,7962.99]],	//Aarsdale
			[[17380.4,5070.29],1],	//Nexøe
			[[16711.7,2652.2]],		//Snogebæk
//			[[15368.7,390.873]],	//Dueodde
			[[11191.5,1591.41]],	//Sømarken
			[[4251.74,4553.86]],	//Arnager
			[[1521.58,7508.99]],	//Rønne
			[[1634,12926.4]],		//Hasle
//			[[19687.1,22105],2],		//Christians ø, not working, player will most likely spawn in map center.
			[[2884.57,17167.5],1]	//Vang
		]
	};
	case "tanoa":{
		[
			//SE
			[[11122.5,5342.93],0,'Harcourt'],	//NameCity
			[[9407.35,4133.13],0,'Moddergat'],	//NameCity
			[[12861.9,4691.10],0,'Doodstil'],	//NameCity
			[[13069.4,2117.94],0,'Rereki'],	//NameVillage
			[[10255.9,2738.07],0,'Blerick'],	//NameVillage
			[[12715.1,3309.17],0,'Port-Boise'],	//NameVillage
			//SW
			[[5684.68,3993.67],0,'Katkoula'],	//NameCity
			[[1347.24,2968.37],0,'Koumac'],	//NameVillage
			[[3627.54,2208.85],0,'Lailai'],	//NameVillage
			[[2131.95,4589.63],0,'Cerebu'],	//NameVillage
			//West
			[[2677.42,7441.56],0,'Balavu'],	//NameCity
			[[974.490,7654.05],0,'Tavu'],	//NameVillage
			[[2824.25,5700.17],0,'Namuvaka'],	//NameVillage
			//NW
			[[1579.49,11937.8],0,'Tuvanaka'],	//NameCity
			[[3132.55,10977.1],0,'Belfort'],	//NameVillage
			[[1954.62,10727.0],0,'Nani'],	//NameVillage
			//main island
			[[5808.60,11213.3],0,'Saint-Julien'], //City
			[[6164.67,12864.7],0,'Nicolet'],
			[[7080.21,8004.08],0,'Lifou'],
			[[9014.23,10214.2],0,'Tanouka'],
			[[12984.3,7321.96],0,'Oumere'],
			[[9549.78,13673.4],0,'La Rochelle'],
			[[4919.70,8728.68],0,'Regina'], //Village
			[[8939.47,6627.97],0,'cocoa plantations'],
			[[14040.9,8308.29],0,'Luganville'],
			[[14057.4,9955.55],0,'Vatukoulo'],
			[[14295.2,11680.3],0,'Ba'],
			[[12401.7,12787.8],0,'Ovau'],
			[[7829.41,13599.8],0,'Saint-Paul'],
			[[10974.5,6232.58],0,'Kotomo'],
			[[8114.07,11957.2],0,'Galili'],
			[[10487.6,10613.7],0,'Imone'],
			[[9213.60,8741.29],0,'Lakatoro'],
			[[5396.22,10334.7],0,'Georgetown'] //Capital
		]
	};
	case "lythium":{
		[
			[[4263.67,14309.5],0,"Karift"],  //   Karift
			[[4263.67,9940.22],0,"Mafaraz"],  //   Mafaraz
			[[5161.21,3183.88],0,"Bernamir"],  //   Bernamair
			[[8261.17,17563],0,"Kandar"],  	//   Kandar
			[[14137.1,14253.1],0,"Ramir"],  //   Ramir
			[[8881.34,12362.2],0,"Kunara"],  //   Kunara
			[[17780.4,19468.5],0,"Afarat"],  //   Afarat
			[[17549.4,10166.3],0,"Razbula"],  //   Razbula
			[[17937.3,15337.1],0,"Zarath"],  //   Zarath
			[[12972.5,10037],0,"PuestoCrow"],  	//   PuestoCrow
			[[16230.6,6701.87],0,"Arobster"],  //   Arobster
			[[8632.09,8400.49],0,"Morut"],  //   Morut
			[[8978.99,4251.17],0,"Kindul"],  //   Kindul
			[[12165.7,6774.39],0,"Orcaif"],  //   Orcaif
			//[[14223.5,3879.85],0,"Iban Base"],  //   Iban Base
			[[14354.6,738.269],0,"Kinduff Factory"],  //   Kinduff Factory
			[[18570.6,2287.82],0,"Offar"]  //   Offar
			//[[10237,12396.3]],  
			//[[10045.4,17769.8]], 
			//[[3476.9,15955.9]],  
			//[[17780.4,19468.5]],  
			//[[13334.5,8563.35]],  
			//[[15713.5,14380.5]],  
			//[[2788.05,10753.2]],  
			//[[7194.75,5000.93]],  
			//[[17639.7,6088.34]],
			//[[10575.8,9284.92]],
			//[[14325.1,18769.7]],
			//[[12313.85,1129.99]]
			//[[210.55,0,20152.5]],  //   debug_box
			//[[9305.75,0,15320.2]],  //   respawn_north
			//[[8859.85,0,6356.99]],  //   respawn_south
			//[[4489.75,0,11967.3]],  //   respawn_west
			//[[18040.1,0,12909.7]]  	//   respawn_east		
		]
	};	
/* //create new world spawns, use lower case letters only or it will not be detected (only [x,y] needed)
	case "myworldname":{
		[
			[[0,0],2,"customname"],	//spawn locked for everyone but lvl 2, customname is "customname"
			[[0,0],1],				//spawn locked for everyone but lvl 1
			[[0,0],0,"customname"],	//spawn open for all, customname is "customname"
			[[0,0]]					//minimal spawn, open for all
		]
	};
*/
	default{[]};
};
