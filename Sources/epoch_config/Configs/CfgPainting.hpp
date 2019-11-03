class CfgPainting {
	class DefaultVehicle 
	{
		UseArmaDefaultColors = "true";
		PaintingCosts = 50;
		icon = "x\addons\a3_epoch_code\Data\UI\buttons\Paint.paa";
		
		class Red
		{
			ColorName = "Red";
			iconcolor[] = {1,0,0,1};
			textures[] = {
				"#(rgb,8,8,3)color(1,0,0,1)"
			};
		};
		class Yellow
		{
			ColorName = "Yellow";
			iconcolor[] = {1,1,0,1};
			textures[] = {
				"#(rgb,8,8,3)color(1,1,0,1)"
			};
		};
		class Green
		{
			ColorName = "Green";
			iconcolor[] = {0,1,0,1};
			textures[] = {
				"#(rgb,8,8,3)color(0,1,0,1)"
			};
		};
		class Cyan
		{
			ColorName = "Cyan";
			iconcolor[] = {0.1,1,1,1};
			textures[] = {
				"#(rgb,8,8,3)color(0.1,1,1,1)"
			};
		};
		class Blue
		{
			ColorName = "Blue";
			iconcolor[] = {0,0,1,1};
			textures[] = {
				"#(rgb,8,8,3)color(0,0,1,1)"
			};
		};
		class Purple
		{
			ColorName = "Purple";
			iconcolor[] = {1,0,1,1};
			textures[] = {
				"#(rgb,8,8,3)color(1,0,1,1)"
			};
		};
		class Pink														// Define custom colors for ALL Vehicle classes within "DefaultVehicle"
		{
			ColorName = "Pink";											// Will be used as Tooltip in DynaMenu
			iconcolor[] = {1,0.0784,0.576,1};							// Color for the Icon [R,G,B,ALPHA] (0-1)
			textures[] = {												// Texture array. Use "#(rgb,8,8,3)color(R,G,B,1)" for simple colors
				"#(rgb,8,8,3)color(1,0.0784,0.576,1)"					// Texture for first selection (most vehicles only need one selection texture)
			};
		};
		class Black
		{
			ColorName = "Black";
			iconcolor[] = {0,0,0,1};
			textures[] = {
				"\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_CIV_BLACK_CO.paa",
				"\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_wheel_CIVBLACK_CO.paa"
			};
		};
		class Camo_w
		{
			ColorName = "Woodland";
			iconcolor[] = {0,1,0,0.75};
			textures[] = {
				"addons\img\camo_w.jpg"
			};
		};
		class Camo_c
		{
			ColorName = "City(D)";
			iconcolor[] = {0.2,0.4,0.8,0.75};
			textures[] = {
				"addons\img\camo_c.jpg"
			};
		};
	};
};

/*
############################ Start Full Example #################################
class CfgPainting {
	class DefaultVehicle 
	{
		UseArmaDefaultColors = "true";									// Use all availabe default colours from Arma (for all Vehicles)
		PaintingCosts = 500;											// Crypto costs for Painting
		icon = "x\addons\a3_epoch_code\Data\UI\buttons\Paint.paa";		// Icon for the DynaMenu
		
		class Pink														// Define custom colors for ALL Vehicle classes within "DefaultVehicle"
		{
			ColorName = "Pink";											// Will be used as Tooltip in DynaMenu
			iconcolor[] = {1,0.0784,0.576,1};							// Color for the Icon [R,G,B,ALPHA] (0-1)
			textures[] = {												// Texture array. Use "#(rgb,8,8,3)color(R,G,B,1)" for simple colors
				"#(rgb,8,8,3)color(1,0.0784,0.576,1)"					// Texture for first selection (most vehicles only need one selection texture)
			};
		};
	};
	class C_Hatchback_01_EPOCH : DefaultVehicle							// Define custom colors for a unique Vehicle Class
	{
		UseArmaDefaultColors = "true";									// Use also all availabe default colours from Arma (for this Vehicle Class)
		class Green
		{
			ColorName = "Green";
			iconcolor[] = {0,1,0,1};
			textures[] = {
				"#(rgb,8,8,3)color(0,1,0,1)"
			};
		};
	};
	class C_Hatchback_01_EPOCH1: C_Hatchback_01_EPOCH{};				// Inherit classes from already defined classes like this
	class C_Hatchback_01_EPOCH2: C_Hatchback_01_EPOCH{};
	class C_Quadbike_01_EPOCH : DefaultVehicle
	{
		UseArmaDefaultColors = "false";									// This Quad can only be colored with the defined color(s)
		class Black
		{
			ColorName = "Black";
			iconcolor[] = {0,0,0,1};
			textures[] = {
				"\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_CIV_BLACK_CO.paa",
				"\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_wheel_CIVBLACK_CO.paa"
			};
		};
	};
};
############################ End Full Example #################################
*/