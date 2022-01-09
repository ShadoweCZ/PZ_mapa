require "Reloading/ISReloadUtil"

ISUICheatMenu = ISUICheatMenu or {}; -- Acecool

--
-- Helper function to simplify populating the compass entries... = Josh 'Acecool' Moser
--
function CheatCoreCM:PopulateCompassPresets( _context, _menu, _teleport )
	-- For each 
	for town, locations in pairs( self.CompassPresets ) do
		local _option = _menu:addOption( ( self.Language.Towns[ town ] or town ) .. "...", worldobjects, nil);
		local _menu = _menu:getNew( _menu );
		_context:addSubMenu( _option, _menu );

		-- For each of the locations we read location name, x and y...
		for k, location in pairs( locations ) do
			local _name = location.Name;
			local _x, _y, _z = location.X, location.Y, location.Z;
			_menu:addOption( ( self.Language.Towns[ _name ] or _name ), worldobjects, function( )
				self.markHome( nil, _name, _x, _y, _z, ( _teleport or false ) );
			end );
		end
	end
end



ISUICheatMenu.createMenuEntries = function(_player, _context, _worldObjects)

	local context = _context;
	local worldobjects = _worldObjects; 
	
	-------------------------
	--Making the Cheat Menu--
	-------------------------
	
	local CheatOption = context:addOption("Cheat Menu", worldobjects); -- Makes the cheat menu.
	local subMenu = ISContextMenu:getNew(context); -- As it is a submenu, I create a new submenu.
	context:addSubMenu(CheatOption, subMenu); -- I add the menu to the submenu, otherwise it won't appear.
	local GodOption = subMenu:addOption("God", worldobjects, function() CheatCoreCM.HandleToggle("God Mode", "CheatCoreCM.IsGod") end); --I add a new option to subMenu and set it to trigger the HandleToggle function and pass it two arguments
	local CreativeOption = subMenu:addOption("Creative", worldobjects, function() CheatCoreCM.HandleToggle("Creative Mode", "CheatCoreCM.buildCheat") end);
	local DeleteOption = subMenu:addOption("Toggle Delete/Terraform Mode (X to Delete/Terraform)...", worldobjects, nil);
	local LuaOption = subMenu:addOption("Open Lua Interpreter/File Editor", worldobjects, function() ISUILuaWindow.SetupBar() end);
	local BarricadeOption = subMenu:addOption("Toggle Barricade Mode (Z To Barricade)...", worldobjects, nil)
	local AmmoOption = subMenu:addOption("Infinite Ammo", worldobjects, function() CheatCoreCM.HandleToggle("Infinite Ammo", "CheatCoreCM.IsAmmo") end);
	local NoReloadOption = subMenu:addOption("No Delay Between Shots", worldobjects, function() CheatCoreCM.HandleToggle("No Shot Delay", "CheatCoreCM.NoReload", "CheatCoreCM.DoNoReload()") end);
	local LearnAllRecipesOption = subMenu:addOption("Learn All Recipes", worldobjects, function() CheatCoreCM.DoLearnRecipes() end)
	local CarryWeightOption = subMenu:addOption("Infinite Carryweight", worldobjects, CheatCoreCM.DoCarryweightCheat);
	local SpeedOption = subMenu:addOption("Ghost Mode", worldobjects, function() CheatCoreCM.HandleToggle("Ghost Mode", "CheatCoreCM.IsGhost") end);
	local HealOption = subMenu:addOption("Heal Yourself", worldobjects, CheatCoreCM.DoHeal);
	local RefillOption = subMenu:addOption("Refill Ammo", worldobjects, CheatCoreCM.DoRefillAmmo);
	local PreventDeathOption = subMenu:addOption("Prevent death", worldobjects, function() CheatCoreCM.HandleToggle("Prevent Death", "CheatCoreCM.DoPreventDeath") end);
	local MeleeInstaKill = subMenu:addOption("Insta-Kill Melee", worldobjects, function() CheatCoreCM.HandleToggle("Insta-kill Melee", "CheatCoreCM.IsMelee","CheatCoreCM.DoWeaponDamage()") end);
	local RepairHandItem = subMenu:addOption("Repair Equipped Item", worldobjects, function() CheatCoreCM.HandleToggle(nil, nil, "CheatCoreCM.DoRepair()", "getPlayer():Say('Weapon Repaired!')") end);
	local InfiniteDurabilityOption = subMenu:addOption("Infinite Weapon Durability", worldobjects, function() CheatCoreCM.HandleToggle("Infinite Weapon Durability", "CheatCoreCM.IsRepair") end);
	local FireOption = subMenu:addOption("Toggle Fire Brush (N To Start Fire, F To Extinguish)", worldobjects, function() CheatCoreCM.HandleToggle("Fire Brush", "CheatCoreCM.FireBrushEnabled") end);
	local FlyOption = subMenu:addOption("Toggle Fly Mode (Up/Down Arrow To Change Height)", worldobjects, function() CheatCoreCM.HandleToggle("Fly Mode", "CheatCoreCM.IsFly") end);
	local CraftOption = subMenu:addOption("Toggle Instant/Free Crafting", worldobjects, function() CheatCoreCM.HandleToggle("Instant Crafting", "CheatCoreCM.IsCraftingCheat", "CheatCoreCM.ToggleInstantCrafting()") end);
	local ActionOption = subMenu:addOption("Toggle Instant Actions", worldobjects, function() CheatCoreCM.HandleToggle("Instant Actions", "CheatCoreCM.IsActionCheat", "CheatCoreCM.ToggleInstantActions()") end);
	local WeatherOption = subMenu:addOption("Change Weather...", worldobjects);
	local NutritionOption = subMenu:addOption("Nutrition...", worldobjects);
	
	-----------------------------
	--Making the Nutrition menu--
	-----------------------------
	
	local subMenuNutrition = subMenu:getNew(subMenu);
	context:addSubMenu(NutritionOption, subMenuNutrition)
	
	local HealthyOption = subMenuNutrition:addOption("Become Healthy", worldobjects, CheatCoreCM.becomeHealthy)
	
	local EditOption = subMenuNutrition:addOption("Edit...", worldobjects)
	local subMenuEdit = subMenuNutrition:getNew(subMenuNutrition)
	context:addSubMenu(EditOption, subMenuEdit)
	
	local NutrTable = {
	"Calories",
	"Carbohydrates",
	"Lipids",
	"Proteins",
	"Weight"
	}
	
	for k,v in ipairs(NutrTable) do
		subMenuEdit:addOption(v, worldobjects, function() CheatCoreCM.editNutrition(v) end)
	end
	
	
	
	--------------------------
	--Making the delete menu--
	--------------------------
	
	local subMenuDelete = subMenu:getNew(subMenu)
	context:addSubMenu(DeleteOption, subMenuDelete)
	local DeleteOption = subMenuDelete:addOption("Toggle Delete Mode (X to Delete)", worldobjects, function() CheatCoreCM.HandleToggle("Delete Mode", "CheatCoreCM.IsDelete", "CheatCoreCM.IsTerraforming = false; CheatCoreCM.DoNotDeleteFloor = false") end);
	local DoNotDeleteFloorOption = subMenuDelete:addOption("Toggle Do Not Delete Floor Mode", worldobjects, function() CheatCoreCM.HandleToggle("Do Not Delete Floor", "CheatCoreCM.DoNotDeleteFloor", "CheatCoreCM.HandleCheck('CheatCoreCM.IsDelete', 'Delete Mode')", "if CheatCoreCM.IsTerraforming == true then if CheatCoreCM.DoNotToggleFloor == true then getPlayer():Say('Do Not Delete Floor Mode Enabled, Terraform Mode Disabled') else getPlayer():Say('Do Not Delete Floor Mode Disabled, Terraform Mode Disabled') end; CheatCoreCM.IsTerraforming = false; end") end)
	
	local TerraformOption = subMenuDelete:addOption("Terraforming...", worldobjects)
	local subMenuTerraform = subMenuDelete:getNew(subMenuDelete)
	context:addSubMenu(TerraformOption, subMenuTerraform)
	
	subMenuTerraform:addOption("Off", worldobjects, function() CheatCoreCM.HandleToggle("Terraforming", "CheatCoreCM.IsTerraforming") end)
	subMenuTerraform:addOption("Toggle Do Not Fill In Empty Floor Mode", worldobjects, function() CheatCoreCM.HandleToggle("Do Not Fill In Empty Floor Mode", "CheatCoreCM.DoNotFill") end)
	
	local tileTable = {
	optionTable = {},
	subMenuTable = {},
	categoryKey = {}
	} -- creates a table of sub menus.
	
	for k1,v1 in pairs(CheatCoreCM.TerraformTiles.MenuCategories) do -- assigns sub menu values
		tileTable.optionTable[v1] = subMenuTerraform:addOption(v1.."...", worldobjects)
		tileTable.subMenuTable[v1] = subMenuTerraform:getNew(subMenuTerraform)
		tileTable.categoryKey[v1] = v1
		context:addSubMenu(tileTable.optionTable[v1], tileTable.subMenuTable[v1])
		--print(#optionTable)
	end
	
	for k,v in pairs(CheatCoreCM.TerraformTiles.TileTypes) do
		if v["Category"] == tileTable.categoryKey[v["Category"]] then -- if the category of the tile type is the category of the current MenuCategories iteration, it will add it to the category menu
			local ranges;
			if #v["Ranges"] > 1 then
				ranges = "{"..v["Ranges"][1]..","..v["Ranges"][2].."}"
			else
				ranges = "{"..v["Ranges"][1].."}"
			end
			tileTable.subMenuTable[v["Category"]]:addOption(v["Name"], worldobjects, function() CheatCoreCM.HandleToggle(nil, nil, "CheatCoreCM.HandleCheck('CheatCoreCM.IsTerraforming', 'Terraform Mode', 'CheatCoreCM.IsDelete', 'Delete Mode')", "CheatCoreCM.Terraform = '"..v["Tileset"].."'; CheatCoreCM.TerraformRanges = "..ranges) end) -- iterates through the tile types
		end
	end
	-----------------------------
	--Making the barricade menu--
	-----------------------------
	
	local subMenuBarricade = subMenu:getNew(subMenu);
	context:addSubMenu(BarricadeOption, subMenuBarricade);
	
	local BarricadeToggle = subMenuBarricade:addOption("Toggle Barricade Mode", worldobjects, function() CheatCoreCM.HandleToggle("Barricade Brush", "CheatCoreCM.IsBarricade", "CheatCoreCM.BarricadeType = 'wood'; CheatCoreCM.BarricadeLevel = 4") end)
	
	local PlankTypeOption = subMenuBarricade:addOption("Type of material...", worldobjects)
	local subMenuPlankType = subMenuBarricade:getNew(subMenuBarricade)
	context:addSubMenu(PlankTypeOption, subMenuPlankType)
	
	subMenuPlankType:addOption("Wood [DEFAULT]", worldobjects, function() CheatCoreCM.HandleToggle("Barricade Brush", nil, "CheatCoreCM.HandleCheck('CheatCoreCM.IsBarricade', 'Barricade Brush')", "CheatCoreCM.BarricadeType = 'wood'; CheatCoreCM.BarricadeLevel = CheatCoreCM.BarricadeLevel or 4") end)
	subMenuPlankType:addOption("Metal", worldobjects, function() CheatCoreCM.HandleToggle("Barricade Brush", nil, "CheatCoreCM.HandleCheck('CheatCoreCM.IsBarricade', 'Barricade Brush')", "CheatCoreCM.BarricadeType = 'metal'; CheatCoreCM.BarricadeLevel = CheatCoreCM.BarricadeLevel or 4") end)

	local PlankAmountOption = subMenuBarricade:addOption("Number of barricades...", worldobjects)
	local subMenuPlankAmount = subMenuBarricade:getNew(subMenuBarricade)
	context:addSubMenu(PlankAmountOption, subMenuPlankAmount)
		
	--populate subMenuPlankAmount--
	for i = 4,0,-1 do
		local stringName;
		if i == 1 then -- I use this to check if I should use a plural or not
			stringName = "Barricade object with "..tostring(i).." plank" -- tostring() here is unnecessary as I could just have a single string with a 1 in it, but whatever.
		elseif i == 0 then
			stringName = "Remove all planks"
		else
			stringName = "Barricade object with "..tostring(i).." planks"
		end
		subMenuPlankAmount:addOption(stringName, worldobjects, function() CheatCoreCM.HandleToggle("Barricade Brush", nil, "CheatCoreCM.HandleCheck('CheatCoreCM.IsBarricade', 'Barricade Brush')", "CheatCoreCM.BarricadeLevel = "..tostring(i)) end)
	end
	
	------------------------
	--Making the home menu--
	------------------------
	
	local HomeOption = subMenu:addOption("Teleport & GPS Menu", worldobjects, nil);
	local subMenuHome = subMenu:getNew(subMenu);
	context:addSubMenu(HomeOption, subMenuHome);
	
	local TeleportOption = subMenuHome:addOption("Teleport to...", worldobjects, nil);
	local subMenuTeleport = subMenuHome:getNew(subMenuHome);
	context:addSubMenu(TeleportOption, subMenuTeleport);
	
	local TeleportToHomeOption = subMenuTeleport:addOption("Custom...", worldobjects, nil);
	local subMenuTeleportHome = subMenuTeleport:getNew(subMenuTeleport);
	context:addSubMenu(TeleportToHomeOption, subMenuTeleportHome);
	
	for i = 1,5 do
		subMenuTeleportHome:addOption("Custom Location "..tostring(i), worldobjects, function() CheatCoreCM.markHome( i, nil, nil, nil, nil, true ) end )
	end
	
	local TeleportPresetOption = subMenuTeleport:addOption("Presets...", worldobjects, nil);
	local subMenuTeleportPreset = subMenuTeleport:getNew(subMenuTeleport);
	context:addSubMenu(TeleportPresetOption, subMenuTeleportPreset);

	CheatCoreCM:PopulateCompassPresets( context, subMenuTeleportPreset, true );
	
	local SetHomeOption = subMenuHome:addOption("Set...", worldobjects, nil);
	local subMenuSetHome = subMenuHome:getNew(subMenuHome);
	context:addSubMenu(SetHomeOption, subMenuSetHome);
	
	for i = 1,5 do
		subMenuSetHome:addOption("Custom Location "..tostring(i), worldobjects, function() CheatCoreCM.setHome(i) end)
	end
	
	local MarkOnCompassOption = subMenuHome:addOption("Mark on GPS...", worldobjects, nil);
	local subMenuMark = subMenuHome:getNew(subMenuHome);
	context:addSubMenu(MarkOnCompassOption, subMenuMark);
	
	local MarkHomeOption = subMenuMark:addOption("Custom...", worldobjects, nil);
	local subMenuMarkHome = subMenuMark:getNew(subMenuMark);
	context:addSubMenu(MarkHomeOption, subMenuMarkHome);
	
	
	for i = 1,5 do
		subMenuMarkHome:addOption("Mark Custom Location "..tostring(i), worldobjects, function( ) CheatCoreCM.markHome( i ) end )
	end
	
	local MarkPresetOption = subMenuMark:addOption("Presets...", worldobjects, nil);
	local subMenuMarkPreset = subMenuMark:getNew(subMenuMark);
	context:addSubMenu(MarkPresetOption, subMenuMarkPreset);
	
	CheatCoreCM:PopulateCompassPresets( context, subMenuMarkPreset );
	----------------------------------
	--Making the stat toggle submenu--
	----------------------------------
	
	local StatOption = subMenu:addOption("Toggle Stats", worldobjects, nil); -- I add yet another new option
	local subMenuStats = subMenu:getNew(subMenu); -- I give this option its own subMenu.
	context:addSubMenu(StatOption, subMenuStats);
	
	subMenuStats:addOption("Inf. All", worldobjects, CheatCoreCM.AllStatsToggle); -- I add these options to the StatOption submenu
	subMenuStats:addOption("Inf. Hunger", worldobjects, function() CheatCoreCM.HandleToggle("No Hunger", "CheatCoreCM.IsHunger") end);
	subMenuStats:addOption("Inf. Thirst", worldobjects, function() CheatCoreCM.HandleToggle("No Thirst", "CheatCoreCM.IsThirst") end);
	subMenuStats:addOption("Never panic", worldobjects, function() CheatCoreCM.HandleToggle("Never Panic", "CheatCoreCM.IsPanic") end);
	subMenuStats:addOption("Always sane", worldobjects, function() CheatCoreCM.HandleToggle("Always Sane", "CheatCoreCM.IsSanity") end);
	subMenuStats:addOption("No stress", worldobjects, function()CheatCoreCM.HandleToggle("No Stress", "CheatCoreCM.IsStress") end);
	subMenuStats:addOption("No boredom", worldobjects, function() CheatCoreCM.HandleToggle("No Boredom", "CheatCoreCM.IsBoredom") end);
	subMenuStats:addOption("Never unhappy", worldobjects, function() CheatCoreCM.HandleToggle("Never Unhappy", "CheatCoreCM.IsUnhappy") end);
	subMenuStats:addOption("Never angry", worldobjects, function() CheatCoreCM.HandleToggle("Never Angry", "CheatCoreCM.IsAnger") end);
	subMenuStats:addOption("Never feel pain", worldobjects, function() CheatCoreCM.HandleToggle("Never Feel Pain", "CheatCoreCM.IsPain") end);
	subMenuStats:addOption("Never sick/remove sickness", worldobjects, function() CheatCoreCM.HandleToggle("Never Sick/Remove Sickness", "CheatCoreCM.IsSick") end);
	subMenuStats:addOption("Never wet", worldobjects, function() CheatCoreCM.HandleToggle("Never Wet", "CheatCoreCM.IsWet") end);
	subMenuStats:addOption("Never hot/cold", worldobjects, function() CheatCoreCM.HandleToggle("Never Hot/Cold", "CheatCoreCM.IsTemperature") end);
	subMenuStats:addOption("Never drunk", worldobjects, function() CheatCoreCM.HandleToggle("Never Drunk", "CheatCoreCM.IsDrunk") end);
	subMenuStats:addOption("Infinite endurance", worldobjects, function() CheatCoreCM.HandleToggle("Infinite Endurance", "CheatCoreCM.IsEndurance") end);
	subMenuStats:addOption("Infinite fitness", worldobjects, function() CheatCoreCM.HandleToggle("Infinite Fitness", "CheatCoreCM.IsFitness") end);
	subMenuStats:addOption("Never tired", worldobjects, function() CheatCoreCM.HandleToggle("Never Tired", "CheatCoreCM.IsSleep") end);
	
	
	--------------------------------
	--Making the zombie spawn menu--
	--------------------------------
	
	local ZombieOption = subMenu:addOption("Zombie Brush...", worldobjects, nil);
	local subMenuZombie = subMenu:getNew(subMenu);
	context:addSubMenu(ZombieOption, subMenuZombie);
	
	subMenuZombie:addOption("Toggle", worldobjects, function() CheatCoreCM.HandleToggle("Zombie Brush", "CheatCoreCM.ZombieBrushEnabled") end);
	subMenuZombie:addOption("1 zombie", worldobjects, function() CheatCoreCM.HandleToggle("Zombie Brush", nil, "CheatCoreCM.HandleCheck('CheatCoreCM.ZombieBrushEnabled', 'Zombie Brush')", "CheatCoreCM.ZombiesToSpawn = 1") end);
	subMenuZombie:addOption("5 zombies", worldobjects, function() CheatCoreCM.HandleToggle("Zombie Brush", nil, "CheatCoreCM.HandleCheck('CheatCoreCM.ZombieBrushEnabled', 'Zombie Brush')", "CheatCoreCM.ZombiesToSpawn = 5") end);
	subMenuZombie:addOption("10 zombies", worldobjects, function() CheatCoreCM.HandleToggle("Zombie Brush", nil, "CheatCoreCM.HandleCheck('CheatCoreCM.ZombieBrushEnabled', 'Zombie Brush')", "CheatCoreCM.ZombiesToSpawn = 10") end);
	subMenuZombie:addOption("15 zombies", worldobjects, function() CheatCoreCM.HandleToggle("Zombie Brush", nil, "CheatCoreCM.HandleCheck('CheatCoreCM.ZombieBrushEnabled', 'Zombie Brush')", "CheatCoreCM.ZombiesToSpawn = 15") end);
	subMenuZombie:addOption("20 zombies", worldobjects, function() CheatCoreCM.HandleToggle("Zombie Brush", nil, "CheatCoreCM.HandleCheck('CheatCoreCM.ZombieBrushEnabled', 'Zombie Brush')", "CheatCoreCM.ZombiesToSpawn = 20") end);
	subMenuZombie:addOption("25 zombies", worldobjects, function() CheatCoreCM.HandleToggle("Zombie Brush", nil, "CheatCoreCM.HandleCheck('CheatCoreCM.ZombieBrushEnabled', 'Zombie Brush')", "CheatCoreCM.ZombiesToSpawn = 25") end);
	subMenuZombie:addOption("50 zombies", worldobjects, function() CheatCoreCM.HandleToggle("Zombie Brush", nil, "CheatCoreCM.HandleCheck('CheatCoreCM.ZombieBrushEnabled', 'Zombie Brush')", "CheatCoreCM.ZombiesToSpawn = 50") end);
	subMenuZombie:addOption("100 zombies", worldobjects, function() CheatCoreCM.HandleToggle("Zombie Brush", nil, "CheatCoreCM.HandleCheck('CheatCoreCM.ZombieBrushEnabled', 'Zombie Brush')", "CheatCoreCM.ZombiesToSpawn = 100") end);
	subMenuZombie:addOption("150 zombies", worldobjects, function() CheatCoreCM.HandleToggle("Zombie Brush", nil, "CheatCoreCM.HandleCheck('CheatCoreCM.ZombieBrushEnabled', 'Zombie Brush')", "CheatCoreCM.ZombiesToSpawn = 150") end);
	subMenuZombie:addOption("200 zombies", worldobjects, function() CheatCoreCM.HandleToggle("Zombie Brush", nil, "CheatCoreCM.HandleCheck('CheatCoreCM.ZombieBrushEnabled', 'Zombie Brush')", "CheatCoreCM.ZombiesToSpawn = 200") end);
	subMenuZombie:addOption("250 zombies", worldobjects, function() CheatCoreCM.HandleToggle("Zombie Brush", nil, "CheatCoreCM.HandleCheck('CheatCoreCM.ZombieBrushEnabled', 'Zombie Brush')", "CheatCoreCM.ZombiesToSpawn = 250") end);
	
	
	-----------------------------
	--Making the time warp menu--
	-----------------------------
	
	local TimeOption = subMenu:addOption("Warp Time To...", worldobjects, nil);
	local subMenuTime = subMenu:getNew(subMenu);
	context:addSubMenu(TimeOption, subMenuTime);
	
	local YearWarpOption = subMenuTime:addOption("Years...")
	local subMenuYears = subMenuTime:getNew(subMenuTime);
	context:addSubMenu(YearWarpOption, subMenuYears)
	
	local MonthWarpOption = subMenuTime:addOption("Months...");
	local subMenuMonths = subMenuTime:getNew(subMenuTime);
	context:addSubMenu(MonthWarpOption, subMenuMonths);
	
	local DayWarpOption = subMenuTime:addOption("Days...");
	local subMenuDays = subMenuTime:getNew(subMenuTime);

	local DayWarpOption10 = subMenuDays:addOption("10...");
	local subMenuDays10 = subMenuDays:getNew(subMenuDays);
	
	local DayWarpOption20 = subMenuDays:addOption("20...");
	local subMenuDays20 = subMenuDays:getNew(subMenuDays);
	
	local DayWarpOption30 = subMenuDays:addOption("30...");
	local subMenuDays30 = subMenuDays:getNew(subMenuDays);
	
	context:addSubMenu(DayWarpOption, subMenuDays);
	context:addSubMenu(DayWarpOption10, subMenuDays10);
	context:addSubMenu(DayWarpOption20, subMenuDays20);
	context:addSubMenu(DayWarpOption30, subMenuDays30);
	
	local AMOption = subMenuTime:addOption("A.M...");
	local subMenuAM = subMenuTime:getNew(subMenuTime);
	context:addSubMenu(AMOption, subMenuAM);
	
	local PMOption = subMenuTime:addOption("P.M...");
	local subMenuPM = subMenuTime:getNew(subMenuTime);
	context:addSubMenu(PMOption, subMenuPM);
	
	
	
	--looping through year options creation--
	
	for i = 1,20 do -- loops through 1 to 20 and makes a submenu
		subMenuYears:addOption(tostring(i), worldobjects, function() CheatCoreCM.SetTime(i, "Year") end) -- passes i to CheatCoreCM.SetTime
	end
	
	--looping through month options creation--
	
	for i = 1,12 do -- loops through 1 to 12 and makes a submenu
		subMenuMonths:addOption(tostring(i), worldobjects, function() CheatCoreCM.SetTime(i, "Month") end) -- passes i to CheatCoreCM.SetTime
	end
	
	
	--looping through day options creation--
	
	for i = 1,10 do -- loops through 1 to 10 and makes a submenu
		subMenuDays10:addOption(tostring(i), worldobjects, function() CheatCoreCM.SetTime(i, "Day") end) -- passes i to CheatCoreCM.SetTime
	end
	
	for i = 10,20 do -- loops through 10 to 20 and makes a submenu
		subMenuDays20:addOption(tostring(i), worldobjects, function() CheatCoreCM.SetTime(i, "Day") end) -- passes i to CheatCoreCM.SetTime
	end
	
	for i = 20,getGameTime():daysInMonth(getGameTime():getYear(), getGameTime():getMonth()) do -- loops through 20 to 30 and makes a submenu
		subMenuDays30:addOption(tostring(i), worldobjects, function() CheatCoreCM.SetTime(i, "Day") end) -- passes i to CheatCoreCM.SetTime
	end
	
	
	--looping through AM options creation--
	
	for i = 0,11 do -- loops through 1 to 11 and makes a submenu
		subMenuAM:addOption(tostring(i)..":00", worldobjects, function() CheatCoreCM.SetTime(i, "Time") end) -- passes i to CheatCoreCM.SetTime
	end
	
	
	--looping through PM options creation--
	
	
	for i = 12,23 do	
		subMenuPM:addOption(tostring(i)..":00", worldobjects, function() CheatCoreCM.SetTime(i, "Time") end) -- passes i to CheatCoreCM.SetTime
	end
	
	
	
	---------------------------
	--Making the Weather menu--
	---------------------------
	
	local weatherTable = {
		thunder = {"Thunder", "thunder"}, -- Name, string that IsoWorld recognizes
		rain = {"Rain", "rain"},
		clear = {"Sunny", "sunny"},
		cloudy = {"Cloudy", "cloud"}
	}
	local subMenuWeather = subMenu:getNew(subMenu)
	context:addSubMenu(WeatherOption, subMenuWeather)
	
	for k,v in pairs(weatherTable) do
		subMenuWeather:addOption("Toggle "..v[1], worldobjects, function() CheatCoreCM.SetWeather(v[2]) end)
	end
	
	
	
	----------------------
	--Making the XP menu--
	----------------------
	
	
	
	local XPOption = subMenu:addOption("Set Skill Level...", worldobjects, nil);
	local subMenuXP = subMenu:getNew(subMenu);
	context:addSubMenu(XPOption, subMenuXP);
	
	
	
	local SkillOption = subMenuXP:addOption("Max All Skills", worldobjects, CheatCoreCM.DoMaxAllSkills);
		
		
	local AgilityOption = subMenuXP:addOption("Agility...");
	local subMenuAgility = subMenuXP:getNew(subMenuXP);
	context:addSubMenu(AgilityOption, subMenuAgility);
	
	local BladeOption = subMenuXP:addOption("Blade...");
	local subMenuBlade = subMenuXP:getNew(subMenuXP);
	context:addSubMenu(BladeOption, subMenuBlade);
	
	local BluntOption = subMenuXP:addOption("Blunt...");
	local subMenuBlunt = subMenuXP:getNew(subMenuXP);
	context:addSubMenu(BluntOption, subMenuBlunt);
	
	local CraftingOption = subMenuXP:addOption("Crafting...");
	local subMenuCrafting = subMenuXP:getNew(subMenuXP);
	context:addSubMenu(CraftingOption, subMenuCrafting);
	
	local FireArmOption = subMenuXP:addOption("Firearm...");
	local subMenuFireArm = subMenuXP:getNew(subMenuXP);
	context:addSubMenu(FireArmOption, subMenuFireArm);
	
	local SurvivalistOption = subMenuXP:addOption("Survivalist...");
	local subMenuSurvivalist = subMenuXP:getNew(subMenuXP);
	context:addSubMenu(SurvivalistOption, subMenuSurvivalist);
	
	local HealthOption = subMenuXP:addOption("Health...");
	local subMenuHealth = subMenuXP:getNew(subMenuXP);
	context:addSubMenu(HealthOption, subMenuHealth);
	
	-- Populating agility menu --
	
	local SprintingOption = subMenuAgility:addOption("Sprinting to...")
	local subMenuSprinting = subMenuAgility:getNew(subMenuAgility)
	context:addSubMenu(SprintingOption, subMenuSprinting)
	
	for i = 0,10 do
		subMenuSprinting:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.Sprinting, i) end)
	end
	
	local LightfootOption = subMenuAgility:addOption("Lightfooted to...")
	local subMenuLightfoot = subMenuAgility:getNew(subMenuAgility)
	context:addSubMenu(LightfootOption, subMenuLightfoot)
	
	for i = 0,10 do
		subMenuLightfoot:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.Lightfoot, i) end)
	end
	
	local NimbleOption = subMenuAgility:addOption("Nimble to...")
	local subMenuNimble = subMenuAgility:getNew(subMenuAgility)
	context:addSubMenu(NimbleOption, subMenuNimble)
	
	for i = 0,10 do
		subMenuNimble:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.Nimble, i) end)
	end
	
	local SneakOption = subMenuAgility:addOption("Sneaking to...")
	local subMenuSneak = subMenuAgility:getNew(subMenuAgility)
	context:addSubMenu(SneakOption, subMenuSneak)
	
	for i = 0,10 do
		subMenuSneak:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.Sneak, i) end)
	end
	
	-- Populating blade menu --
	
	local AccuracyOption = subMenuBlade:addOption("Accuracy to...")
	local subMenuAccuracy = subMenuBlade:getNew(subMenuBlade)
	context:addSubMenu(AccuracyOption, subMenuAccuracy)
	
	for i = 0,10 do
		subMenuAccuracy:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.Axe, i) end)
	end
	
	local GuardOption = subMenuBlade:addOption("Guard to...")
	local subMenuGuard = subMenuBlade:getNew(subMenuBlade)
	context:addSubMenu(GuardOption, subMenuGuard)
	
	for i = 0,10 do
		subMenuGuard:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.BladeGuard, i) end)
	end
	
	local MaintenanceOption = subMenuBlade:addOption("Maintenance to...")
	local subMenuMaintenance = subMenuBlade:getNew(subMenuBlade)
	context:addSubMenu(MaintenanceOption, subMenuMaintenance)
	
	for i = 0,10 do
		subMenuMaintenance:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.BladeMaintenance, i) end)
	end
	
	-- Populating blunt menu --
	
	local BluntAccuracyOption = subMenuBlunt:addOption("Accuracy to...")
	local subMenuBluntAccuracy = subMenuBlunt:getNew(subMenuBlunt)
	context:addSubMenu(BluntAccuracyOption, subMenuBluntAccuracy)
	
	for i = 0,10 do
		subMenuBluntAccuracy:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.Blunt, i) end)
	end
	
	local BluntGuardOption = subMenuBlunt:addOption("Guard to...")
	local subMenuBluntGuard = subMenuBlunt:getNew(subMenuBlunt)
	context:addSubMenu(BluntGuardOption, subMenuBluntGuard)
	
	for i = 0,10 do
		subMenuBluntGuard:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.BluntGuard, i) end)
	end
	
	local BluntMaintenanceOption = subMenuBlunt:addOption("Maintenance to...")
	local subMenuBluntMaintenance = subMenuBlunt:getNew(subMenuBlunt)
	context:addSubMenu(BluntMaintenanceOption, subMenuBluntMaintenance)
	
	for i = 0,10 do
		subMenuBluntMaintenance:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.BluntMaintenance, i) end)
	end
	
	-- Populating crafting menu -- 
	
	local CarpentryOption = subMenuCrafting:addOption("Carpentry to...")
	local subMenuCarpentry = subMenuCrafting:getNew(subMenuCrafting)
	context:addSubMenu(CarpentryOption, subMenuCarpentry)
	
	for i = 0,10 do
		subMenuCarpentry:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.Woodwork, i) end)
	end
	
	local CookingOption = subMenuCrafting:addOption("Cooking to...")
	local subMenuCooking = subMenuCrafting:getNew(subMenuCrafting)
	context:addSubMenu(CookingOption, subMenuCooking)
	
	for i = 0,10 do
		subMenuCooking:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.Cooking, i) end)
	end
	
	local FarmingOption = subMenuCrafting:addOption("Farming to...")
	local subMenuFarming = subMenuCrafting:getNew(subMenuCrafting)
	context:addSubMenu(FarmingOption, subMenuFarming)
	
	for i = 0,10 do
		subMenuFarming:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.Farming, i) end)
	end
	
	local FirstAidOption = subMenuCrafting:addOption("First Aid to...")
	local subMenuFirstAid = subMenuCrafting:getNew(subMenuCrafting)
	context:addSubMenu(FirstAidOption, subMenuFirstAid);
	
	for i = 0,10 do
		subMenuFirstAid:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.Doctor, i) end)
	end
	
	local ElectricalOption = subMenuCrafting:addOption("Electrical to...")
	local subMenuElectrical = subMenuCrafting:getNew(subMenuCrafting)
	context:addSubMenu(ElectricalOption, subMenuElectrical);
	
	for i = 0,10 do
		subMenuElectrical:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.Electricity, i) end)
	end
	-- Populating firearm menu --
	
	local AimingOption = subMenuFireArm:addOption("Aiming to...")
	local subMenuAiming = subMenuFireArm:getNew(subMenuFireArm)
	context:addSubMenu(AimingOption, subMenuAiming)
	
	for i = 0,10 do
		subMenuAiming:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.Aiming, i) end)
	end
	
	local ReloadOption = subMenuFireArm:addOption("Reloading to...")
	local subMenuReload = subMenuFireArm:getNew(subMenuFireArm)
	context:addSubMenu(ReloadOption, subMenuReload)
	
	for i = 0,10 do
		subMenuReload:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.Reloading, i) end)
	end
	
	-- Populating survivalist menu --
	
	local FishingOption = subMenuSurvivalist:addOption("Fishing to...")
	local subMenuFishing = subMenuSurvivalist:getNew(subMenuSurvivalist)
	context:addSubMenu(FishingOption, subMenuFishing)
	
	for i = 0,10 do
		subMenuFishing:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.Fishing, i) end)
	end
	
	local TrappingOption = subMenuSurvivalist:addOption("Trapping to...")
	local subMenuTrapping = subMenuSurvivalist:getNew(subMenuSurvivalist)
	context:addSubMenu(TrappingOption, subMenuTrapping)
	
	for i = 0,10 do
		subMenuTrapping:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.Trapping, i) end)
	end
	
	local ForagingOption = subMenuSurvivalist:addOption("Foraging to...")
	local subMenuForaging = subMenuSurvivalist:getNew(subMenuSurvivalist)
	context:addSubMenu(ForagingOption, subMenuForaging)
	
	for i = 0,10 do
		subMenuForaging:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.PlantScavenging, i) end)
	end	
	
	-- Populating health menu --
	local StrengthOption = subMenuHealth:addOption("Strength to...")
	local subMenuStrength = subMenuHealth:getNew(subMenuHealth)
	context:addSubMenu(StrengthOption, subMenuStrength)
	
	for i = 0,10 do
		subMenuStrength:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.Strength, i) end)
	end	
	
	local FitnessOption = subMenuHealth:addOption("Fitness to...")
	local subMenuFitness = subMenuHealth:getNew(subMenuHealth)
	context:addSubMenu(FitnessOption, subMenuFitness)
	
	for i = 0,10 do
		subMenuFitness:addOption(tostring(i), worldobjects, function() CheatCoreCM.DoMaxSkill(Perks.Fitness, i) end)
	end	
	
end

CheatCoreCM.shouldStart = function()
	if CheatCoreCM.isAdmin() then
		print("[CHEAT MENU] User "..getOnlineUsername().." is authorized! This message will appear the next time the client connects.")
		Events.OnPlayerUpdate.Add(CheatCoreCM.DoCheats);
		Events.OnTick.Add(CheatCoreCM.DoTickCheats);
		Events.OnMouseDown.Add(CheatCoreCM.SpawnZombieNow);
		Events.OnKeyKeepPressed.Add(CheatCoreCM.OnKeyKeepPressed);
		Events.OnKeyPressed.Add(CheatCoreCM.OnKeyPressed);
		Events.OnPlayerMove.Add(CheatCoreCM.updateCoords);
		Events.OnFillWorldObjectContextMenu.Add(ISUICheatMenu.createMenuEntries);
		Events.OnMouseMove.Add(CheatCoreCM.highlightSquare);
		Events.OnTick.Remove(CheatCoreCM.shouldStart);
	elseif not CheatCoreCM.isAdmin() and CheatCoreCM.doNotWarn ~= true then
		print("[CHEAT MENU] User "..getOnlineUsername().." is not authorized! This message will appear the next time the client connects.")
		CheatCoreCM.doNotWarn = true
	end
end

Events.OnTick.Add(CheatCoreCM.shouldStart);