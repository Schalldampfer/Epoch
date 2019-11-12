

/*
	CfgCrafting Recipies
	Extended Bases for Epoch
	by Ghostider-GRG
	7/21/18
*/

	class PaintCanClear : Part
	{
		usedIn[] = {"KitCargo10_white_EB4E"};
		previewPosition[] = {0.8,1,0.26};
		previewScale = 1;
		previewVector = 1;
	};

	class PaintCanBlu : Part
	{
		usedIn[] = {"KitToolTrollyBlue_EB4E","KitCargo10_blue_EB4E"};
		previewPosition[] = {0.8,1,0.26};
		previewScale = 1;
		previewVector = 1;
	};

	class PaintCanGrn : Part
	{
		usedIn[] = {"KitCargo10_military_green_EB4E"};
		previewPosition[] = {0.8,1,0.26};
		previewScale = 1;
		previewVector = 1;
	};

	class PaintCanOra : Part
	{
		usedIn[] = {"KitCargo10_orange_EB4E","KitCargo10_brick_red_EB4E"};
		previewPosition[] = {0.8,1,0.26};
		previewScale = 1;
		previewVector = 1;
	};

	class PaintCanRed : Part
	{
		usedIn[] = {"KitToolTrollyRed_EB4E","KitCargo10_red_EB4E","KitCargo10_brick_red_EB4E"};
		previewPosition[] = {0.8,1,0.26};
		previewScale = 1;
		previewVector = 1;
	};

	class PaintCanTeal : Part
	{
		usedIn[] = {"KitCargo10_cyan_EB4E"};
		previewPosition[] = {0.8,1,0.26};
		previewScale = 1;
		previewVector = 1;
	};

	class PaintCanYel : Part
	{
		usedIn[] = {"KitCargo10_yellow_EB4E"};
		previewPosition[] = {0.8,1,0.26};
		previewScale = 1;
		previewVector = 1;
	};

    class KitMetalRack_EB4E : Kit
    {
        recipe[] = {{"PartPlankPack",2},{"ItemCorrugatedLg",1}};
		model = "\A3\Structures_F\Furniture\Metal_rack_F.p3d";
        nearby[] = {{"Workbench","","workbench",{1,{"WorkBench_EPOCH"}},3,1,0,1}};
        previewPosition[] = {0.803749,1,0.448515};
        previewScale = 0.17;
        previewVector = 0;
		descriptionShort = "Metal Rack (4 Shelves)";
		descriptionFull = "Storage Space";
    };
	class KitMetalRackTall_EB4E : Kit
    {
        recipe[] = {{"PartPlankPack",2},{"ItemCorrugatedLg",2}};
		model = "\A3\Structures_F\Furniture\Metal_rack_Tall_F.p3d";
        nearby[] = {{"Workbench","","workbench",{1,{"WorkBench_EPOCH"}},3,1,0,1}};
        previewPosition[] = {0.803749,1,0.448515};
        previewScale = 0.17;
        previewVector = 0;
		descriptionShort = "Metal Rack (5 Shelves)";
		descriptionFull = "Storage Space";
    };
	class KitWoodenRack_EB4E : Kit
    {
        recipe[] = {{"PartPlankPack",2},{"ItemPlywoodPack",1}};
		model = "\A3\Structures_F\Furniture\Rack_F.p3d";
        nearby[] = {{"Workbench","","workbench",{1,{"WorkBench_EPOCH"}},3,1,0,1}};
        previewPosition[] = {0.803749,1,0.448515};
        previewScale = 0.17;
        previewVector = 0;
		descriptionShort = "Wood Shelf";
		descriptionFull = "Storage Space";
    };
	class KitToolTrollyRed_EB4E : Kit
    {
        recipe[] = {{"PartPlankPack",2},{"PaintCanRed",1},{"ItemCorrugatedLg",1}};
		model = "\A3\Structures_F_Heli\Civ\Constructions\ToolTrolley_01_F.p3d";
        nearby[] = {{"Workbench","","workbench",{1,{"WorkBench_EPOCH"}},3,1,0,1}};
        previewPosition[] = {0.803749,1,0.448515};
        previewScale = 0.17;
        previewVector = 0;
		descriptionShort = "Tool Cart on Trolley (Red)";
		descriptionFull = "Storage Space";
    };	
	class KitToolTrollyBlue_EB4E : Kit
    {
        recipe[] = {{"PartPlankPack",2},{"PaintCanBlu",1},{"ItemCorrugatedLg",1}};
		model = "\A3\Structures_F_Heli\Civ\Constructions\ToolTrolley_02_F.p3d";
        nearby[] = {{"Workbench","","workbench",{1,{"WorkBench_EPOCH"}},3,1,0,1}};
        previewPosition[] = {0.803749,1,0.448515};
        previewScale = 0.17;
        previewVector = 0;
		descriptionShort = "Tool Cart on Trolley (Blue)";
		descriptionFull = "Storage Space";
    };
	class KitIcebox_EB4E : Kit
    {
        recipe[] = {{"ItemCables",1},{"ItemBattery",1},{"ItemCorrugatedLg",1},{"CircuitParts",1}};
		model = "\A3\Structures_F\Furniture\Icebox_F.p3d";
        nearby[] = {{"Workbench","","workbench",{1,{"WorkBench_EPOCH"}},3,1,0,1}};
        previewPosition[] = {0.803749,1,0.448515};
        previewScale = 0.17;
        previewVector = 0;
		descriptionShort = "Icebox";
		descriptionFull = "Storage Space";
    };
	class KitWoodenShelves_EB4E : Kit
    {
        recipe[] = {{"PartPlankPack",2}};
		model = "\A3\Structures_F_EPB\Furniture\ShelvesWooden_F.p3d";
        nearby[] = {{"Workbench","","workbench",{1,{"WorkBench_EPOCH"}},3,1,0,1}};
        previewPosition[] = {0.803749,1,0.448515};
        previewScale = 0.17;
        previewVector = 0;
		descriptionShort = "Shelves (Wooden)";
		descriptionFull = "Storage Space";
    };
	class KitWoodenShelvesBlue_EB4E : Kit
    {
        recipe[] = {{"PartPlankPack",2},{"PaintCanBlu",1}};
		model = "\A3\Structures_F\Furniture\ShelvesWooden_blue_F.p3d";
        nearby[] = {{"Workbench","","workbench",{1,{"WorkBench_EPOCH"}},3,1,0,1}};
        previewPosition[] = {0.803749,1,0.448515};
        previewScale = 0.17;
        previewVector = 0;
		descriptionShort = "Shelves (Wooden, Blue)";
		descriptionFull = "Storage Space";
    };
	class KitCargo10_blue_EB4E : Kit
    {
        recipe[] = {{"PartPlankPack",2},{"PaintCanBlu",1},{"ItemCorrugatedLg",4}};
		model = "\A3\Structures_F_Heli\Ind\Cargo\Cargo10_blue_F.p3d";
        nearby[] = {{"Workbench","","workbench",{1,{"WorkBench_EPOCH"}},3,1,0,1}};
        previewPosition[] = {0.801378,1,0.464834};
        previewScale = 0.055;
        previewVector = 0;
		descriptionShort = "Storage Container (Blue)";
		descriptionFull = "Storage Space";
    };	
	class KitCargo10_cyan_EB4E : Kit
    {
        recipe[] = {{"PartPlankPack",2},{"PaintCanTeal",1},{"ItemCorrugatedLg",4}};
		model = "\A3\Structures_F_Heli\Ind\Cargo\Cargo10_cyan_F.p3d";
        nearby[] = {{"Workbench","","workbench",{1,{"WorkBench_EPOCH"}},3,1,0,1}};
        previewPosition[] = {0.801378,1,0.464834};
        previewScale = 0.055;
        previewVector = 0;
		descriptionShort = "Storage Container (Cyan)";
		descriptionFull = "Storage Space";
    };		
	class KitCargo10_military_green_EB4E : Kit
    {
        recipe[] = {{"PartPlankPack",2},{"PaintCanGrn",1},{"ItemCorrugatedLg",4}};
		model = "\A3\Structures_F_Heli\Ind\Cargo\Cargo10_military_green_F.p3d";
        nearby[] = {{"Workbench","","workbench",{1,{"WorkBench_EPOCH"}},3,1,0,1}};
        previewPosition[] = {0.801378,1,0.464834};
        previewScale = 0.055;
        previewVector = 0;
		descriptionShort = "Storage Container (Military Green)";
		descriptionFull = "Storage Space";
    };	
	class KitCargo10_orange_EB4E : Kit
    {
        recipe[] = {{"PartPlankPack",2},{"PaintCanOra",1},{"ItemCorrugatedLg",4}};
		model = "\A3\Structures_F_Heli\Ind\Cargo\Cargo10_orange_F.p3d";
        nearby[] = {{"Workbench","","workbench",{1,{"WorkBench_EPOCH"}},3,1,0,1}};
        previewPosition[] = {0.801378,1,0.464834};
        previewScale = 0.055;
        previewVector = 0;
		descriptionShort = "Storage Container (Orange)";
		descriptionFull = "Storage Space";
    };	
	class KitCargo10_red_EB4E : Kit
    {
        recipe[] = {{"PartPlankPack",2},{"PaintCanRed",1},{"ItemCorrugatedLg",4}};
		model = "\A3\Structures_F_Heli\Ind\Cargo\Cargo10_red_F.p3d";
        nearby[] = {{"Workbench","","workbench",{1,{"WorkBench_EPOCH"}},3,1,0,1}};
        previewPosition[] = {0.801378,1,0.464834};
        previewScale = 0.055;
        previewVector = 0;
		descriptionShort = "Storage Container (Red)";
		descriptionFull = "Storage Space";
    };		
	class KitCargo10_white_EB4E : Kit
    {
        recipe[] = {{"PartPlankPack",2},{"PaintCanClear",1},{"ItemCorrugatedLg",4}};
		model = "\A3\Structures_F_Heli\Ind\Cargo\Cargo10_white_F.p3d";
        nearby[] = {{"Workbench","","workbench",{1,{"WorkBench_EPOCH"}},3,1,0,1}};
        previewPosition[] = {0.801378,1,0.464834};
        previewScale = 0.055;
        previewVector = 0;
		descriptionShort = "Storage Container (White)";
		descriptionFull = "Storage Space";
    };		
	class KitCargo10_yellow_EB4E : Kit
    {
        recipe[] = {{"PartPlankPack",2},{"PaintCanYel",1},{"ItemCorrugatedLg",4}};
		model = "\A3\Structures_F_Heli\Ind\Cargo\Cargo10_yellow_F.p3d";
        nearby[] = {{"Workbench","","workbench",{1,{"WorkBench_EPOCH"}},3,1,0,1}};
        previewPosition[] = {0.801378,1,0.464834};
        previewScale = 0.055;
        previewVector = 0;
		descriptionShort = "Storage Container (Yellow)";
		descriptionFull = "Storage Space";
    };		
	class KitCargo10_brick_red_EB4E : Kit
    {
        recipe[] = {{"PartPlankPack",2},{"PaintCanOra",1},{"PaintCanRed",1},{"ItemCorrugatedLg",4}};
		model = "\A3\Structures_F_Heli\Ind\Cargo\Cargo10_brick_red_F.p3d";
        nearby[] = {{"Workbench","","workbench",{1,{"WorkBench_EPOCH"}},3,1,0,1}};
        previewPosition[] = {0.801378,1,0.464834};
        previewScale = 0.055;
        previewVector = 0;
		descriptionShort = "Storage Container (Yellow)";
		descriptionFull = "Storage Space";
    };		
