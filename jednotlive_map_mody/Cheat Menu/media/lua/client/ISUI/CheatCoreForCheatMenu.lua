--		 ___________________________________________________________________________
--		|																 			|
--		|	--------------------------------------------------------------------	|
--		|	--------------------------------------------------------------------	|
--		|	----														 	----	|
--		|	----	   ________			      __	______			        ----	|
--		|	----	  / ____/ /_	___	____ _/ /_ / ____/___  _____ ___    ----	|
--		|	----	 / /	/ __ \/ _ \/ __ `/ __// /	/ __ \/ ___// _ \	----	|
--		|	----	/ /___/ / / /	__/ /_/ / /_ / /___/ /_/ / /   /  __/	----	|
--		|	----    \____/_/ /_/\___/\__,_/\__/	 \____/\____/_/	   \___/    ----	|
--		|	----												         	----	|
--		|	----															----	|
--		|	--------------------------------------------------------------------	|
--		|	--------------------------------------------------------------------	|
--		|___________________________________________________________________________|


CheatCoreCM = CheatCoreCM or {}

--GHK
superGHKStr = "";
superGHKPStr = "";

----------------------------------------------
--Needs/stats/whatever they're called toggle--
----------------------------------------------
CheatCoreCM.ToggleAllStats = false
----------------------------------------------

CheatCoreCM.SyncVariables = function() -- on game start, syncs up the enabled persistent cheats to the normal variables

print("adding gasoline");
 --getPlayer():getInventory():AddItem("Base.PetrolCan");
 --getPlayer():getInventory():AddItem("Base.EmptyPetrolCan");
 --getPlayer():getInventory():AddItem("Explosives.RocketLauncher");
 --getPlayer():getInventory():AddItem("Explosives.Rocket");
  --getPlayer():getInventory():AddItem("Silencer.Silencer");
 -- getPlayer():getInventory():RemoveOneOf("SportsCar")
 -- getPlayer():getInventory():RemoveOneOf("SportsCar")
 
 	
  
 
	if CheatCoreCM.isAdmin() then
		local notifyPlayer = {}
		local stringNotice = "Cheats Enabled: "
		if getPlayer():getModData().IsGhost == true then -- detects a persistent cheat
			CheatCoreCM.IsGhost = true
			table.insert(notifyPlayer, "Ghost Mode, ") -- adds this to the table of enabled cheats
		else
			getPlayer():getModData().IsGhost = false
		end
		if getPlayer():getModData().IsGod == true then
			CheatCoreCM.IsGod = true
			table.insert(notifyPlayer, "God Mode, ")
		else
			getPlayer():getModData().IsGod = false
		end
		if #notifyPlayer > 0 then -- if there are persistent cheats enabled, carries through with notifying the player
			for i = 1,#notifyPlayer do
				if i ~= #notifyPlayer then
					stringNotice = stringNotice..notifyPlayer[i]
				else
					--local subbedString = string.sub(stringNotice, -2) -- extracts last two characters, which are always ", ". just fixes a small grammatical annoyance that it would cause.
					local finishedString = string.gsub(notifyPlayer[i], ", ", "") -- replaces the characters extracted by subbedString with nothing
					stringNotice = stringNotice..finishedString
				end
			end
			print("[CHEAT MENU] "..stringNotice) -- for TIS Support devs/staff/whatever. this is so that, in the event of a player forgetting a cheat was on and reporting it to the Support forum thinking it was a bug, the devs could take one look at the console and easily detect the persons mistake
			getPlayer():Say(stringNotice) -- lets player know which cheats are enabled
		end
	end
end

CheatCoreCM.HandleToggle = function(DisplayName, VariableToToggle, Optional, Optional2) -- CheatType is the string to add to the getPlayer():Say() function, VariableToToggle is the variable to toggle (woah, right?) in string form, and Optional is the optional function to call.
	if VariableToToggle ~= nil then
		local function checkForBrushes()
			if VariableToToggle ~= "CheatCoreCM.IsGod" and VariableToToggle ~= "CheatCoreCM.IsGhost" then
				return true
			else
				return false
			end
		end
		local function convertVariable()
			return string.gsub(VariableToToggle, "CheatCoreCM.", "")
		end
		local checkForCheats = loadstring("return getPlayer():getModData()."..convertVariable())
		local returnCheats = loadstring("getPlayer():getModData()."..convertVariable().." = not getPlayer():getModData()."..convertVariable())
		if loadstring("return "..VariableToToggle)() == nil then
			loadstring(VariableToToggle.." = false")()
			if not checkForBrushes() then
				loadstring("getPlayer():getModData()."..convertVariable().." = false")()
			end
		end
		if loadstring("return "..VariableToToggle)() == false or checkForCheats() == false then
			loadstring(VariableToToggle.." = true")() -- concatenates the VariableToToggle string into the " = true" statement, so that I no longer need dedicated toggle functions for every cheat.
			if not checkForBrushes() then
				returnCheats()
			end
			if DisplayName ~= nil then
				getPlayer():Say(DisplayName.." enabled.")
			end
		elseif loadstring("return "..VariableToToggle)() == true or checkForCheats() == true then
			loadstring(VariableToToggle.." = false")()
			if not checkForBrushes() then
				returnCheats()
			end
			if DisplayName ~= nil then
				getPlayer():Say(DisplayName.." disabled.")
			end
		end
		if not checkForBrushes() then
			loadstring(VariableToToggle.." = getPlayer():getModData()."..convertVariable())()
		end
		if VariableToToggle == "CheatCoreCM.buildCheat" then
			ISBuildMenu.cheat = CheatCoreCM.buildCheat
		end
	end
	if Optional ~= nil then -- checks if the OptionalCall argument was passed
		loadstring(Optional)()
	end
	if Optional2 ~= nil then
		loadstring(Optional2)()
	end
end

CheatCoreCM.HandleCheck = function(variableToCheck, cheatName, optionalSecondVariable, optionalCheatName)
	local sayString = {}
	if loadstring("return "..variableToCheck)() ~= true then
		loadstring(variableToCheck.." = true")()
		table.insert(sayString, cheatName)
	end
	if optionalSecondVariable ~= nil then
		if loadstring("return "..optionalSecondVariable)() ~= true then
			loadstring(optionalSecondVariable.." = true")()
			table.insert(sayString, optionalCheatName)
		end
	end
	if #sayString > 1 then
		getPlayer():Say(cheatName.." And "..optionalCheatName.." Enabled")
	elseif #sayString == 1 then
		getPlayer():Say(cheatName.." Enabled")
	end
end
--[[ -- this was a beta. scrapped the newer HandleCheck because I didn't need it.
CheatCoreCM.HandleCheck = function(variableToCheck, cheatName, optionalSecondVariable, optionalCheatName, doDisable, optionalDoDisable)
	local sayString = {}
	if loadstring("return "..variableToCheck)() ~= true or doDisable == true and loadstring("return "..variableToCheck)() == true then
		if doDisable ~= true then loadstring(variableToCheck.." = true")() else loadstring(variableToCheck.." = false")() end
		table.insert(sayString, cheatName)
	end
	if optionalSecondVariable ~= nil then
		if loadstring("return "..optionalSecondVariable)() ~= true then
			if optionalDoDisable ~= true then loadstring(optionalSecondVariable.." = true")() else loadstring(optionalSecondVariable.." = true")() end
			table.insert(sayString, optionalCheatName)
		end
	end
	if #sayString > 1 then
		local state1 = loadstring("return "..variableToCheck)()
		local state2 = loadstring("return "..optionalSecondVariable)()

		if state1 == true then state1 = " Enabled" else state1 = " Disabled" end
		if state2 == true then state2 = " Enabled" else state2 = " Disabled" end

		getPlayer():Say(cheatName..state1..", "..optionalCheatName..state2)
	else
		if doDisable ~= true then getPlayer():Say(cheatName.." Enabled") else getPlayer():Say(cheatName.." Disabled") end
	end
end
--]]
CheatCoreCM.SetTime = function(TimeToSet, DayOrMonth)
	local time = getGameTime() -- gets game time
	local DayOrMonth = string.gsub(DayOrMonth, "%a", string.upper, 1)

	if DayOrMonth == "Time" and TimeToSet <= 24 then
		time:setTimeOfDay( TimeToSet ) -- sets game time to whatever was passed to it.
		getPlayer():Say("Time successfully changed to "..TimeToSet..":00.")
	end

	if DayOrMonth == "Day" then
		time:setDay( time:getDay() + TimeToSet )

		if time:getDay() == TimeToSet and time:getDay() <= time:daysInMonth(time:getYear(), time:getMonth()) then
			getPlayer():Say("Day successfully changed to "..TimeToSet)
		else
			if time:getDay() >= time:daysInMonth(time:getYear(), time:getMonth()) then
				time:setMonth( time:getMonth() + 1 )
				time:setDay( TimeToSet - time:daysInMonth(time:getYear(), time:getMonth()) )
			end
		end
	end
	if DayOrMonth == "Month" then
		local roundToProperMonth = time:getMonth() + TimeToSet
		time:setMonth( time:getMonth() + TimeToSet )

		if time:getMonth() > 12 and TimeToSet <= 12 then
			time:setYear( time:getYear() + 1 )
			time:setMonth( roundToProperMonth - 12 )
		end
	end

	if DayOrMonth == "Year" or DayOrMonth == "year" then
		time:setYear( time:getYear() + TimeToSet )
	end
end

CheatCoreCM.DoLearnRecipes = function()
	local recipes = getAllRecipes()
	for i = 0,recipes:size() - 1 do
		local recipe = recipes:get(i)
		if not getPlayer():isRecipeKnown(recipe) and recipe:needToBeLearn() then
			getPlayer():getKnownRecipes():add(recipe:getOriginalname())
			getPlayer():Say("All recipes learned.")
		end
	end
end

CheatCoreCM.DoRefillAmmo = function()
	local primaryHandItemData = getPlayer():getPrimaryHandItem():getModData();
	primaryHandItemData.currentCapacity = primaryHandItemData.maxCapacity
end

CheatCoreCM.DoMaxSkill = function(SkillToSet, ToLevel)


	--[[	
	for i = 1,getPlayer():getPerkLevel(SkillToSet) do -- clear the skill before setting it
		getPlayer():LoseLevel(SkillToSet)
	end
	--]]
	
	getPlayer():level0(SkillToSet)
	getPlayer():getXp():setXPToLevel(SkillToSet, 0)
	
	
	if ToLevel ~= 0 then
		for i = 1,ToLevel do -- then set it
			getPlayer():LevelPerk(SkillToSet, false)
		end
	end
		
	
	--getPlayer():getXp():setXPToLevel(SkillToSet, ToLevel);
	--getPlayer():setNumberOfPerksToPick(getPlayer():getNumberOfPerksToPick() + ToLevel);
end

CheatCoreCM.DoGhostMode = function()
	if not getPlayer():isGhostMode() and CheatCoreCM.IsGhost == true or not getPlayer():isGhostMode() and getPlayer():getModData().IsGhost == true then -- checks if player is already ghostmode
		getPlayer():setGhostMode(true)
	elseif CheatCoreCM.IsGhost == false then
		getPlayer():setGhostMode(false)
	end
end

CheatCoreCM.DoRepair = function()
	local ToolToRepair = getPlayer():getPrimaryHandItem() -- gets the item in the players hand
	ToolToRepair:setCondition( getPlayer():getPrimaryHandItem():getConditionMax() ) -- gets the maximum condition and sets it to it
end

CheatCoreCM.SpawnZombieNow = function()
	if CheatCoreCM.ZombieBrushEnabled == true then
		local mx = getMouseXScaled();
		local my = getMouseYScaled();
		local player = getPlayer();
		local wz = player:getZ();
		local wx, wy = ISCoordConversion.ToWorld(mx, my, wz);
		local versionNumber = tonumber(string.match(getCore():getVersionNumber(), "%d+")) -- saves version number to variable, for checking versions

		if versionNumber <= 31 then -- checks for build 31 and below
			for i = 1,CheatCoreCM.ZombiesToSpawn do
				getVirtualZombieManager():createRealZombieNow(wx,wy,wz);
			end
		else
			if versionNumber >= 32 then -- handles this differently if it is build 32 or above
				spawnHorde(wx,wy,wx,wy,wz,CheatCoreCM.ZombiesToSpawn)
			end
		end
	end
end

CheatCoreCM.DoHeal = function()
	getPlayer():Say("Player healed.")
	getPlayer():getBodyDamage():RestoreToFullHealth();
end

CheatCoreCM.doRound = function(number)
	return number % 1 >= 0.5 and math.ceil(number) or math.floor(number)
end

CheatCoreCM.readFile = function(modID, fileName)
	local fileTable = {}
	local readFile = getModFileReader(modID, fileName, true)
	local scanLine = readFile:readLine()
	while scanLine do
		fileTable[#fileTable+1] = scanLine
		scanLine = readFile:readLine()
		if not scanLine then break end
	end
	readFile:close()
	return fileTable
end

function CheatCoreCM.setHome( homeNumber )
	loadstring( "CheatCoreCM.Home" .. tostring( homeNumber ) .. "X = "..CheatCoreCM.doRound( getPlayer( ):getX( ) ) )( )
	loadstring( "CheatCoreCM.Home" .. tostring( homeNumber ) .. "Y = "..CheatCoreCM.doRound( getPlayer( ):getY( ) ) )( )
	loadstring( "CheatCoreCM.Home" .. tostring( homeNumber ) .. "Z = "..CheatCoreCM.doRound( getPlayer( ):getZ( ) ) )( )
	local returnX = loadstring( "return CheatCoreCM.Home" .. tostring( homeNumber ) .. "X" )
	local returnY = loadstring( "return CheatCoreCM.Home" .. tostring( homeNumber ) .. "Y" )
	local returnZ = loadstring( "return CheatCoreCM.Home" .. tostring( homeNumber ) .. "Z" )
	CheatCoreCM.fileTable = CheatCoreCM.readFile("cheatmenuaiz", "SavedHomes.txt")
	for i = 1,5 do
		if not CheatCoreCM.fileTable[i] then
			CheatCoreCM.fileTable[i] = " "
		end
	end
	CheatCoreCM.fileTable[ homeNumber ] = "Home" .. tostring( homeNumber ) .. " " .. returnX( ) .. " " .. returnY( ) .. " " .. returnZ( )
	CheatCoreCM.writeFile( CheatCoreCM.fileTable, "cheatmenuaiz", "SavedHomes.txt" )
end

CheatCoreCM.writeFile = function(tableToWrite, modID, fileName)
	local writeFile = getModFileWriter(modID, fileName, true, false)
	for i = 1,#tableToWrite do
		writeFile:write(tableToWrite[i].."\r\n");
	end
	writeFile:close();
end

CheatCoreCM.checkCoords = function(number1, number2)
	local doRound = CheatCoreCM.doRound(number2)
	if doRound >= number1 then
		return doRound - number1
	else
		return number1 - doRound
	end
end

CheatCoreCM.updateCompass = function()
	local newText = "";
	for i,v in ipairs(ISUICheatWindow.compassLines) do
		if i == #ISUICheatWindow.compassLines then
			v = string.gsub(v, " <LINE> $", "")
		end
		newText = newText .. v;
	end
	ISUICheatWindow.HomeWindow.text = newText
	ISUICheatWindow.HomeWindow:paginate()
end

CheatCoreCM.returnDirection = function(X, Y) -- unused
	local wx, wy = getPlayer():getX(), getPlayer():getY()
	wx = math.floor(wx);
	wy = math.floor(wy);
	local cell = getWorld():getCell();
	local sq = cell:getGridSquare(wx, wy, getPlayer():getZ());
	local sqObjs = sq:getObjects();
	local sqSize = sqObjs:size();
	for i = sqSize-1, 0, -1 do
		local obj = sqObjs:get(i);
		local direction = getDirectionTo(getPlayer(), obj)
		if direction == "N" then
			return "North"
		elseif direction == "NW" then
			return "North East"
		elseif direction == "NE" then
			return "North West"
		elseif direction == "S" then
			return "South"
		elseif direction == "SW" then
			return "South West"
		elseif direction == "SE" then
			return "South East"
		elseif direction == "W" then
			return "West"
		elseif direction == "E" then
			return "East"
		end
	end
end

CheatCoreCM.updateCoords = function()
	if ISUICheatWindow:getIsVisible() then
		ISUICheatWindow.compassLines[2] = "-------------Your Coords-------------".." <LINE> ".."X: "..CheatCoreCM.doRound(getPlayer():getX()).." Y: "..CheatCoreCM.doRound(getPlayer():getY()).." <LINE> "
		if CheatCoreCM.MarkedX ~= nil and CheatCoreCM.MarkedY ~= nil then
			ISUICheatWindow.compassLines[1] = "-----"..CheatCoreCM.DisplayName.." Coords-----".." <LINE> ".."X: "..CheatCoreCM.MarkedX.." Y: "..CheatCoreCM.MarkedY.." <LINE> "
			ISUICheatWindow.compassLines[3] = "-----Distance to Destination-----".." <LINE> ".."X: "..CheatCoreCM.checkCoords(tonumber(CheatCoreCM.MarkedX), getPlayer():getX()).." Y: "..CheatCoreCM.checkCoords(tonumber(CheatCoreCM.MarkedY), getPlayer():getY()).." <LINE> "
			--ISUICheatWindow.compassLines[4] = "-----Direction to Destination-----".." <LINE> "..CheatCoreCM.returnDirection()
		end
		CheatCoreCM.updateCompass()
	end
end

function CheatCoreCM.markHome( homeNumber, optionalDestinationName, optionalX, optionalY, optionalZ, optionalDoTeleport )
	local splitTable = { }
	local tableKey = 0

	if ( homeNumber and type( homeNumber ) == "number" and homeNumber > 0 ) then
		CheatCoreCM.fileTable = CheatCoreCM.readFile("cheatmenuaiz", "SavedHomes.txt")
		for i = 1,5 do
			if not CheatCoreCM.fileTable[i] then
				CheatCoreCM.fileTable[i] = " "
			end
		end
		for i in string.gmatch( CheatCoreCM.fileTable[ homeNumber ], "%S+" ) do
			splitTable[ tableKey ] = i
			tableKey = tableKey + 1
		end

		CheatCoreCM.DisplayName = "Home" .. homeNumber
		CheatCoreCM.MarkedX = splitTable[ 1 ]
		CheatCoreCM.MarkedY = splitTable[ 2 ]
		CheatCoreCM.MarkedZ = splitTable[ 3 ] or 0
	else
		CheatCoreCM.DisplayName = optionalDestinationName
		CheatCoreCM.MarkedX = optionalX
		CheatCoreCM.MarkedY = optionalY
		CheatCoreCM.MarkedZ = ( optionalZ or 0 )
	end

	if not optionalDoTeleport and not ISUICheatWindow:getIsVisible( ) then
		ISUICheatWindow:setVisible(true);
		CheatCoreCM.updateCoords()
	elseif optionalDoTeleport then
		getPlayer( ):setX( tonumber( CheatCoreCM.MarkedX ) );
		getPlayer( ):setY( tonumber( CheatCoreCM.MarkedY ) );
		getPlayer( ):setZ( tonumber( CheatCoreCM.MarkedZ ) );
		getPlayer( ):setLx( getPlayer( ):getX( ) );
		getPlayer( ):setLy( getPlayer( ):getY( ) );
		getPlayer( ):setLz( getPlayer( ):getZ( ) );
	end
end


CheatCoreCM.OnKeyKeepPressed = function(_keyPressed)

	--------------
	--Fire Brush--
	--------------
	
	if CheatCoreCM.FireBrushEnabled == true then
		local mx = getMouseXScaled();
		local my = getMouseYScaled();
		local player = getPlayer();
		local wz = math.floor(player:getZ());
		local wx, wy = ISCoordConversion.ToWorld(mx, my, wz);
		wx = math.floor(wx);
		wy = math.floor(wy);
		local cell = getWorld():getCell();
		local GridToBurn = cell:getGridSquare(wx, wy, wz)
		if _keyPressed == 49 then
			GridToBurn:StartFire();
		elseif _keyPressed == 33 then
			GridToBurn:stopFire()
			if isClient() then
				GridToBurn:transmitStopFire()
			end
		end
	end
	
	---------------
	--Delete Mode--
	---------------
	if CheatCoreCM.IsDelete == true and _keyPressed == 45 then
		local mx = getMouseXScaled();
		local my = getMouseYScaled();
		local wz = getPlayer():getZ();
		local wx, wy = ISCoordConversion.ToWorld(mx, my, wz);
		wx = math.floor(wx);
		wy = math.floor(wy);
		local cell = getWorld():getCell();
		local sq = cell:getGridSquare(wx, wy, wz);
		
		if sq ~= nil or CheatCoreCM.IsTerraforming == true then
			if not sq:getFloor() and CheatCoreCM.IsTerraforming == true and CheatCoreCM.DoNotFill ~= true then
				local rand;
				if #CheatCoreCM.TerraformRanges > 1 then
					rand = ZombRand(CheatCoreCM.TerraformRanges[1],CheatCoreCM.TerraformRanges[2] + 1)
					if CheatCoreCM.BannedRanges ~= nil then
						for i = 1,#CheatCoreCM.BannedRanges do
							if rand == CheatCoreCM.BannedRanges[i] then
								rand = rand + ZombRand(1,2 + 1) <= CheatCoreCM.TerraformRanges[2] or rand - ZombRand(1,2 + 1)
							end
						end
					end
				else
					rand = CheatCoreCM.TerraformRanges[1]
				end
				local generatedTile = "blends_street_01_85" --CheatCoreCM.Terraform..tostring(rand)

				local obj = IsoObject.new(cell, sq, generatedTile)
				sq:AddTileObject(obj)
				superGHKStr = superGHKStr ..'GHKPT["'.. sq:getX() .. sq:getY() ..'"] = true;\n'
				
				--player:getSquare()
			
			end
		end
		
		local sqObjs = sq:getObjects();
		local sqSize = sqObjs:size();
		for i = sqSize-1, 0, -1 do
			local obj = sqObjs:get(i);
			--print(obj:getSprite():getName())
			if getPlayer():getZ() == sq:getZ() then -- checks for floor on ground, otherwise it'd leave a gaping hole
				local stairObjects = buildUtil.getStairObjects(obj)
				if #stairObjects > 0 then
					for i=1,#stairObjects do
						if isClient() then
							sledgeDestroy(stairObjects[i])
						else
							stairObjects[i]:getSquare():RemoveTileObject(stairObjects[i])
						end
					end
				else
					if CheatCoreCM.DoNotDeleteFloor ~= true and i > 0 or CheatCoreCM.DoNotDeleteFloor ~= true and sq:getZ() > 0 or CheatCoreCM.DoNotDeleteFloor == true and i > 0 or CheatCoreCM.IsTerraforming == true then
						if CheatCoreCM.IsTerraforming ~= true and sq ~= nil then
							--if obj:getSprite():getName() == "carpentry_02_56" then
								--sq:RemoveTileObject(obj)
							--end
							if isClient() then
								sledgeDestroy(obj)
							else
								sq:RemoveTileObject(obj);
								sq:getSpecialObjects():remove(obj);
								sq:getObjects():remove(obj);
							end
						end
						if CheatCoreCM.IsTerraforming == true then
							local rand;
							if #CheatCoreCM.TerraformRanges > 1 then
								rand = ZombRand(CheatCoreCM.TerraformRanges[1],CheatCoreCM.TerraformRanges[2] + 1)
								if CheatCoreCM.BannedRanges ~= nil then
									for i = 1,#CheatCoreCM.BannedRanges do
										if rand == CheatCoreCM.BannedRanges[i] then
											rand = rand + ZombRand(1,2 + 1) <= CheatCoreCM.TerraformRanges[2] or rand - ZombRand(1,2 + 1)
										end
									end
								end
							else
								rand = CheatCoreCM.TerraformRanges[1]
							end
							local generatedTile = "blends_street_01_85" --CheatCoreCM.Terraform..tostring(rand)
							if generatedTile ~= obj:getSprite():getName() then -- if the generated tile is not the same as the tile already there, replace tile
								if isClient() then
									sledgeDestroy(obj)
								else
									sq:getSpecialObjects():remove(obj);
									sq:getObjects():remove(obj);
								end
								sq:addFloor(generatedTile)
											
							superGHKStr = superGHKStr ..'GHKPT["'.. sq:getX() .. sq:getY() ..'"] = true;\n'
							end
						end
					end
				end
			end
		end
	end
end

CheatCoreCM.highlightSquare = function()
	if CheatCoreCM.IsBarricade == true or CheatCoreCM.FireBrushEnabled == true or CheatCoreCM.IsDelete == true then -- I could probably optimize this to have the event that calls it to only exist when one of these is enabled.
		local mx = getMouseXScaled();
		local my = getMouseYScaled();
		local player = getPlayer();
		local wz = math.floor(player:getZ());
		local wx, wy = ISCoordConversion.ToWorld(mx, my, wz);
		wx = math.floor(wx);
		wy = math.floor(wy);
		local cell = getWorld():getCell();
		local sq = cell:getGridSquare(wx, wy, wz);
		if sq ~= nil then
			local sqObjs = sq:getObjects();
			local sqSize = sqObjs:size();
			for i = sqSize - 1, 0, -1 do
				local obj = sqObjs:get(i)
				obj:setHighlighted(true)		
			end
		end
	end
end

CheatCoreCM.OnKeyPressed = function(_keyPressed, _key2)

if _keyPressed == 41 then --tilde key
	local dirRandom = ZombRand(4);
	local dir = "E";
                if dirRandom == 0 then
                   dir = "E";
                elseif dirRandom == 1 then
                    dir = "W";
               elseif dirRandom == 2 then
                    dir = "S";				
                else
                    dir = "N";
                end
	local player = getPlayer();
	--GHK Create ParkingStall
	superGHKPStr = superGHKPStr ..'{ name = "", type = "ParkingStall", x = '.. math.floor(player:getX())..', y = '.. math.floor(player:getY())..', z = '..math.floor(player:getZ())..', width = 15, height = 15},\n';
	print(superGHKPStr);
end 

	-------------------
	--Barricade Brush--
	-------------------
	if CheatCoreCM.IsBarricade == true and _keyPressed == 44 then
		local mx = getMouseXScaled();
		local my = getMouseYScaled();
		local wz = getPlayer():getZ();
		local wx, wy = ISCoordConversion.ToWorld(mx, my, wz);
		wx = math.floor(wx);
		wy = math.floor(wy);
		local cell = getWorld():getCell();
		local sq = cell:getGridSquare(wx, wy, wz);
		local sqObjs = sq:getObjects();
		local sqSize = sqObjs:size();
		local planks = {}
		local worldobjects = sq:getWorldObjects()

		for i = sqSize-1, 0, -1 do
			local obj = sqObjs:get(i);
			if instanceof(obj, "BarricadeAble") then
				local barricade = IsoBarricade.AddBarricadeToObject(obj, getPlayer())
				local item;
				local numPlanks = barricade:getNumPlanks()
				
				if CheatCoreCM.BarricadeType == "metal" then
					item = getPlayer():getInventory():AddItem("Base.SheetMetal")
				else
					item = getPlayer():getInventory():AddItem("Base.Plank")
				end
				
				if CheatCoreCM.BarricadeLevel > numPlanks and not barricade:isMetal() then
					if CheatCoreCM.BarricadeType == "metal" then
						if not isClient() then
							barricade:addMetal(getPlayer(),item)
						else
							local args = {x=obj:getX(), y=obj:getY(), z=obj:getZ(), index=obj:getObjectIndex(), isMetal=true, itemID=item:getID(), condition=item:getCondition()}
							sendClientCommand(getPlayer(), 'object', 'barricade', args)
						end
					else
						for i = 1,CheatCoreCM.BarricadeLevel - numPlanks do
							if not isClient() then
								barricade:addPlank(getPlayer(),item)
							else
								local args = {x=obj:getX(), y=obj:getY(), z=obj:getZ(), index=obj:getObjectIndex(), isMetal=barricade:isMetal(), itemID=item:getID(), condition=item:getCondition()}
								sendClientCommand(getPlayer(), 'object', 'barricade', args)
							end
						end
					end
				else
					if barricade:isMetal() then
						barricade:removeMetal(getPlayer())
					else
						for i = 1,numPlanks - CheatCoreCM.BarricadeLevel do
							barricade:removePlank(getPlayer())
						end
					end
				end
				getPlayer():getInventory():Remove(item) -- remove item afterwards
			end
		end
	end

	------------
	--Fly Mode--
	------------

	if CheatCoreCM.IsFly == true then
		if CheatCoreCM.FlightHeight == nil then CheatCoreCM.FlightHeight = 0 end -- makes sure that it's a number

		if _keyPressed == 200 and getPlayer():getZ() < 5 then -- checks for up arrow and makes sure the players height isn't above the game's limit. note for anyone viewing this code: if this isn't the height limit for your game (either through mods or vanilla updates), feel free to change it
			CheatCoreCM.FlightHeight = CheatCoreCM.FlightHeight + 1
		elseif _keyPressed == 208 and getPlayer():getZ() > 0 then
			CheatCoreCM.FlightHeight = CheatCoreCM.FlightHeight - 1
		end
	end
	

	
end

CheatCoreCM.DoCarryweightCheat = function()
	--[[
	if CheatCoreCM.ItemWeightTable == nil then -- this was a beta. It was scrapped in favor for an item with -99999 weight to prevent issues with dropping, but it's still fully functional (despite there being no trigger, as I do that after the initial testing phase)
		CheatCoreCM.ItemWeightTable = {}
	end
	
	local inv = getPlayer():getInventory()
	local invItems = inv:getItems()
	
	for i = 0, invItems:size() -1 do
		local item = invItems:get(i)

		if CheatCoreCM.ItemWeightTable[item:getDisplayName()] == nil then
			CheatCoreCM.ItemWeightTable[item:getDisplayName()] = item:getActualWeight()
		end
		item:setActualWeight(0)
	end

	local inv = getPlayer():getInventory()
	local invItems = inv:getItems()
	for k,v in pairs(CheatCoreCM.ItemWeightTable) do
		for i = 0, invItems:size() -1 do
			local item = invItems:get(i)
			if item:getDisplayName() == k then
				item:setActualWeight(v)
			end
		end
	end
	--]]
	if not getPlayer():getInventory():contains("CMInfiniteCarryweight") then
		getPlayer():Say("Infinite Carryweight Enabled.")
		getPlayer():getInventory():AddItem("cheatmenuaiz.CMInfiniteCarryweight")
		getPlayer():setMaxWeightBase( 999999 );
	else
		getPlayer():Say("Infinite Carryweight Disabled.")
		getPlayer():getInventory():RemoveOneOf("CMInfiniteCarryweight")
		getPlayer():setMaxWeightBase( 8 );
	end
end

CheatCoreCM.AllStatsToggle = function()
	if CheatCoreCM.ToggleAllStats == false then
		getPlayer():Say("Infinite stats enabled.")
		CheatCoreCM.IsHunger = true
		CheatCoreCM.IsThirst = true
		CheatCoreCM.IsPanic = true
		CheatCoreCM.IsSanity = true
		CheatCoreCM.IsStress = true
		CheatCoreCM.IsBoredom = true
		CheatCoreCM.IsAnger = true
		CheatCoreCM.IsPain = true
		CheatCoreCM.IsSick = true
		CheatCoreCM.IsEndurance = true
		CheatCoreCM.IsFitness = true
		CheatCoreCM.IsSleep = true
		CheatCoreCM.IsTemperature = true
		CheatCoreCM.IsWet = true
		CheatCoreCM.IsDrunk = true
		CheatCoreCM.IsUnhappy = true

		CheatCoreCM.ToggleAllStats = true
	else
		getPlayer():Say("Infinite stats disabled.")
		CheatCoreCM.IsHunger = false
		CheatCoreCM.IsThirst = false
		CheatCoreCM.IsPanic = false
		CheatCoreCM.IsSanity = false
		CheatCoreCM.IsStress = false
		CheatCoreCM.IsBoredom = false
		CheatCoreCM.IsAnger = false
		CheatCoreCM.IsPain = false
		CheatCoreCM.IsSick = false
		CheatCoreCM.IsEndurance = false
		CheatCoreCM.IsFitness = false
		CheatCoreCM.IsSleep = false
		CheatCoreCM.IsTemperature = false
		CheatCoreCM.IsWet = false
		CheatCoreCM.IsDrunk = false
		CheatCoreCM.IsUnhappy = false

		CheatCoreCM.ToggleAllStats = false
	end
end

CheatCoreCM.DoCheats = function()

	if CheatCoreCM.IsGod == true or getPlayer():getModData().IsGod == true then
		getPlayer():getBodyDamage():RestoreToFullHealth();
	end

	if CheatCoreCM.IsAmmo == true then
		if getPlayer():getPrimaryHandItem() ~= nil then
			local primaryHandItemData = getPlayer():getPrimaryHandItem():getModData();
			if primaryHandItemData.currentCapacity ~= nil then
				if primaryHandItemData.currentCapacity >= 0 then
					primaryHandItemData.currentCapacity = primaryHandItemData.maxCapacity
				end
			end
		end
	end

	CheatCoreCM.DoGhostMode()

	if CheatCoreCM.IsHunger == true then
		getPlayer():getStats():setHunger(0);
	end

	if CheatCoreCM.IsThirst == true then
		getPlayer():getStats():setThirst(0);
	end

	if CheatCoreCM.IsPanic == true then
		getPlayer():getStats():setPanic(0);
	end

	if CheatCoreCM.IsSanity == true then
		getPlayer():getStats():setSanity(1);
	end

	if CheatCoreCM.IsStress == true then
		getPlayer():getStats():setStress(0);
	end

	if CheatCoreCM.IsBoredom == true then
		getPlayer():getStats():setBoredom(0);
	end

	if CheatCoreCM.IsAnger == true then
		getPlayer():getStats():setAnger(0);
	end

	if CheatCoreCM.IsPain == true then
		getPlayer():getStats():setPain(0);
	end

	if CheatCoreCM.IsSick == true then
		getPlayer():getStats():setSickness(0)
	end

	if CheatCoreCM.IsEndurance == true then
		getPlayer():getStats():setEndurance(1);
	end

	if CheatCoreCM.IsFitness == true then
		getPlayer():getStats():setFitness(1);
	end

	if CheatCoreCM.IsSleep == true then
		getPlayer():getStats():setFatigue(0);
	end

	if CheatCoreCM.IsTemperature == true then
		getPlayer():getBodyDamage():setTemperature(30);
	end

	if CheatCoreCM.IsWet == true then
		getPlayer():getBodyDamage():setWetness(0);
	end

	if CheatCoreCM.IsDrunk == true then
		getPlayer():getStats():setDrunkenness(0);
	end

	if CheatCoreCM.IsUnhappy == true then
		getPlayer():getBodyDamage():setUnhappynessLevel(0);
	end

	if getPlayer():getBodyDamage():getHealth() <= 5 and CheatCoreCM.DoPreventDeath == true then
		getPlayer():getBodyDamage():RestoreToFullHealth();
	end

	if CheatCoreCM.IsRepair == true and getPlayer():getPrimaryHandItem() ~= nil then
		if getPlayer():getPrimaryHandItem():getCondition() ~= getPlayer():getPrimaryHandItem():getConditionMax() then
			CheatCoreCM.DoRepair()
		end
	end
end

CheatCoreCM.DoTickCheats = function()
	if getPlayer():getBodyDamage():getHealth() <= 5 and CheatCoreCM.DoPreventDeath == true then
		getPlayer():getBodyDamage():RestoreToFullHealth();
	end

	if CheatCoreCM.IsMelee == true and getPlayer():getPrimaryHandItem() ~= nil and CheatCoreCM.doWait ~= os.date("%S") then
		if CheatCoreCM.SavedWeapon ~= getPlayer():getPrimaryHandItem() and not getPlayer():getPrimaryHandItem():isRanged() then
			CheatCoreCM.DoWeaponDamage(true)
		elseif CheatCoreCM.HasSwitchedWeapon ~= getPlayer():getPrimaryHandItem():getName() and getPlayer():getPrimaryHandItem():isRanged() then
			CheatCoreCM.DoWeaponDamage()
		end
	end

	if CheatCoreCM.doWait ~= nil and os.date("%S") ~= CheatCoreCM.doWait and CheatCoreCM.canSync == true then
		CheatCoreCM.canSync = false
		CheatCoreCM.syncInventory()
		CheatCoreCM.doWait = nil
	end

	if CheatCoreCM.IsFly == true and CheatCoreCM.FlightHeight ~= nil then
		getPlayer():setZ(CheatCoreCM.FlightHeight) -- makes sure the player doesn't fall
		getPlayer():setbFalling(false)
		getPlayer():setFallTime(0)
		getPlayer():setLastFallSpeed(0)
		local wz = math.floor(getPlayer():getZ())
		local wx,wy = math.floor(getPlayer():getX()), math.floor(getPlayer():getY())
		local cell = getWorld():getCell()
		local sq = cell:getGridSquare(wx,wy,wz);


		if wz > 0 then
			if sq == nil then
				sq = IsoGridSquare.new(cell, nil, wx, wy, wz)
				cell:ConnectNewSquare(sq, false)
			end

			sq = cell:getGridSquare(wx + 1,wy + 1,wz);

			if sq == nil then
				sq = IsoGridSquare.new(cell, nil, wx + 1, wy + 1, wz)
				cell:ConnectNewSquare(sq, false)
			end
		end
	end
end

CheatCoreCM.DoWeaponDamage = function(hasSwitched)

	local weapon = getPlayer():getPrimaryHandItem()
	local secondaryWeapon = getPlayer():getSecondaryHandItem()

	if weapon ~= nil then
		if CheatCoreCM.IsMelee == true and not weapon:isRanged() and hasSwitched ~= true then

			CheatCoreCM.SavedWeapon = getPlayer():getPrimaryHandItem()
			CheatCoreCM.SecondarySavedWeapon = getPlayer():getSecondaryHandItem()
			weapon:setMinDamage( weapon:getMinDamage() + 999 );
			weapon:setMaxDamage( weapon:getMaxDamage() + 999 );
			weapon:setDoorDamage( weapon:getDoorDamage() + 999 );
			weapon:setTreeDamage( weapon:getTreeDamage() + 999 );
			CheatCoreCM.InstaKillCheatInitialized = true
		elseif CheatCoreCM.IsMelee == true and weapon:isRanged() == true or hasSwitched == true and CheatCoreCM.IsMelee == true then
			local isSavedWeaponTwoHanded = false
			local isTwoHanded = false
			CheatCoreCM.InstaKillCheatInitialized = true

			if secondaryWeapon == weapon then isTwoHanded = true end -- checks if the equipped items are actually one two handed weapon
			if CheatCoreCM.SavedWeapon == CheatCoreCM.SecondarySavedWeapon then isSavedWeaponTwoHanded = true end

			ISTimedActionQueue.add(ISEquipWeaponAction:new(getPlayer(), CheatCoreCM.SavedWeapon, 0, true, isSavedWeaponTwoHanded)); -- equips last valid melee weapon

			if hasSwitched == true then -- refreshes values, if it's a melee weapon. does this to ensure cheat continuity.
				CheatCoreCM.SavedWeapon:setMinDamage( CheatCoreCM.SavedWeapon:getMinDamage() - 999 ); -- returns the original weapon values
				CheatCoreCM.SavedWeapon:setMaxDamage( CheatCoreCM.SavedWeapon:getMaxDamage() - 999 );
				CheatCoreCM.SavedWeapon:setDoorDamage( CheatCoreCM.SavedWeapon:getDoorDamage() - 999 );
				CheatCoreCM.SavedWeapon:setTreeDamage( CheatCoreCM.SavedWeapon:getTreeDamage() - 999 );

				CheatCoreCM.doWait = os.date("%S") -- prevents an infinite loop from occurring

				ISTimedActionQueue.add(ISEquipWeaponAction:new(getPlayer(), weapon, 0, true, isTwoHanded)); -- now that we're done, I re-equip the current (changed) weapon

				CheatCoreCM.SavedWeapon = getPlayer():getPrimaryHandItem()
				CheatCoreCM.SecondarySavedWeapon = getPlayer():getSecondaryHandItem()

				local weapon = getPlayer():getPrimaryHandItem()

				weapon:setMinDamage( weapon:getMinDamage() + 999 );
				weapon:setMaxDamage( weapon:getMaxDamage() + 999 );
				weapon:setDoorDamage( weapon:getDoorDamage() + 999 );
				weapon:setTreeDamage( weapon:getTreeDamage() + 999 );

				getPlayer():Say("Reinitialized Melee Insta-Kill cheat.")
			else
				ISTimedActionQueue.add(ISEquipWeaponAction:new(getPlayer(), weapon, 0, true, isTwoHanded)); -- now that we're done, I re-equip the current non-melee weapon
				getPlayer():Say("Non-melee weapon detected! Melee Insta-Kill disabled.")
				CheatCoreCM.IsMelee = false
			end
		end
	end
	if CheatCoreCM.IsMelee == false and CheatCoreCM.InstaKillCheatInitialized == true and weapon ~= nil then
		CheatCoreCM.InstaKillCheatInitialized = false
		CheatCoreCM.SavedWeapon:setMinDamage( CheatCoreCM.SavedWeapon:getMinDamage() - 999 ); -- returns the original weapon values
		CheatCoreCM.SavedWeapon:setMaxDamage( CheatCoreCM.SavedWeapon:getMaxDamage() - 999 );
		CheatCoreCM.SavedWeapon:setDoorDamage( CheatCoreCM.SavedWeapon:getDoorDamage() - 999 );
		CheatCoreCM.SavedWeapon:setTreeDamage( CheatCoreCM.SavedWeapon:getTreeDamage() - 999 );
		--[[
		if weapon == secondaryWeapon then
			secondaryWeapon:setMinDamage( originalMinDamage ); -- returns the original weapon values
			secondaryWeapon:setMaxDamage( originalMaxDamage );
			secondaryWeapon:setDoorDamage( originalDoorDamage );
			secondaryWeapon:setTreeDamage( originalTreeDamage );
		end
		--]]
	end
end

CheatCoreCM.DoNoReload = function()

	if CheatCoreCM.IsMelee == true then -- checks to make sure that IsMelee is enabled, and if it is then it disables it.
		CheatCoreCM.DoWeaponDamage()
	end


	local weapon = getPlayer():getPrimaryHandItem()


	if CheatCoreCM.NoReload == true then
		originalRecoilDelay = weapon:getRecoilDelay() -- again, saves the normal values into variables

		weapon:setRecoilDelay( 0 ) -- due to how the games code works, I can't set it under 0, or the class file that handles this function will just set it back to 0.
	end

	if CheatCoreCM.NoReload == false then
		weapon:setRecoilDelay( originalRecoilDelay ) -- and again, it then restores the old values when disabled
	end
end

CheatCoreCM.ToggleInstantActions = function()
	if CheatCoreCM.IsActionCheat == true then
		ISBaseTimedAction._create = ISBaseTimedAction.create
		function ISBaseTimedAction:create()
			self.maxTime = 0
			self.action = LuaTimedActionNew.new(self, self.character)
		end
	else
		ISBaseTimedAction.create = ISBaseTimedAction._create
	end
end

CheatCoreCM.ToggleInstantCrafting = function()
	
	if not ISCraftingUI._render then
		ISCraftingUI._render = ISCraftingUI.render
	end
	
	if CheatCoreCM.IsCraftingCheat == true then
		ISCraftingUI._craft = ISCraftingUI.craft
		function ISCraftingUI:craft()		
			local selectedItem = self.panel.activeView.view.recipes.items[self.panel.activeView.view.recipes.selected].item
			local itemType = selectedItem.recipe:getResult():getFullType()
			
			local inventory = getPlayer():getInventory()
			inventory:AddItem( itemType )
		end
		
		RecipeManager._IsRecipeValid = RecipeManager.IsRecipeValid
		function RecipeManager.IsRecipeValid() return true end
		
		function ISCraftingUI:render()
			ISCraftingUI._render( self )
			
			self.craftOneButton.onclick = ISCraftingUI.craftAll
		end
		
	else
		ISCraftingUI.craft = ISCraftingUI._craft
		RecipeManager.IsRecipeValid = RecipeManager._IsRecipeValid
		
		function ISCraftingUI:render()
			ISCraftingUI._render( self )
			
			self.craftOneButton.onclick = ISCraftingUI.craft
		end
	end
end

CheatCoreCM.DoMaxAllSkills = function()

	getPlayer():Say("All skills maxed!")

	local player = getPlayer():getXp()
	
	player:setXPToLevel(Perks.Sprinting, 10);
	player:setXPToLevel(Perks.Lightfoot, 10);
	player:setXPToLevel(Perks.Nimble, 10);
	player:setXPToLevel(Perks.Sneak, 10);
	player:setXPToLevel(Perks.Cooking, 10);
	player:setXPToLevel(Perks.Woodwork, 10);
	player:setXPToLevel(Perks.Farming, 10);
	player:setXPToLevel(Perks.Axe, 10);
	player:setXPToLevel(Perks.Blunt, 10);
	player:setXPToLevel(Perks.Aiming, 10);
	player:setXPToLevel(Perks.Reloading, 10);
	player:setXPToLevel(Perks.Fishing, 10);
	player:setXPToLevel(Perks.Trapping, 10);
	player:setXPToLevel(Perks.BluntGuard, 10);
	player:setXPToLevel(Perks.BluntMaintenance, 10);
	player:setXPToLevel(Perks.BladeGuard, 10);
	player:setXPToLevel(Perks.BladeMaintenance, 10);
	player:setXPToLevel(Perks.PlantScavenging, 10);
	player:setXPToLevel(Perks.Doctor, 10);
	player:setXPToLevel(Perks.Electricity, 10);
	player:setXPToLevel(Perks.Fitness, 10);
	player:setXPToLevel(Perks.Strength, 10);

	getPlayer():setNumberOfPerksToPick(10*20);
end

CheatCoreCM.RescueFunction = function()
	if getPlayer():getX() == 0 and getPlayer():getY() == 0 then
		getPlayer():setX(10615)
		getPlayer():setY(9696)
		getPlayer():setLx(10615)
		getPlayer():setLy(9696)
		CheatCoreCM.HandleToggle("God Mode", "CheatCoreCM.IsGod")
		CheatCoreCM.HandleToggle("Ghost Mode", "CheatCoreCM.IsGhost")
		getPlayer():Say("For some reason or another, your character was warped to an invalid location (X: 0, Y: 0). To prevent your save from being destroyed, I've added this safety feature to teleport you to safety. If this issue was caused by my mod, I would recommend you report it so I can fix it.")
		print("[CHEAT MENU] Invalid position detected [X: 0 Y: 0]. To prevent a corrupt save, the player has been teleported to a safe location.")
	end
	
	if getPlayer():getInventory():contains("CMInfiniteCarryweight") then
		getPlayer():getInventory():RemoveOneOf("CMInfiniteCarryweight")
	end
end

CheatCoreCM.SetWeather = function(weather)
	local world = getWorld()
	local rm = RainManager
	local gt = getGameTime()
	
	if weather == "rain" then
		world:setWeather(weather)
		rm:startRaining()
	end
	
	if weather == "thunder" then
		if not rm:isRaining() then rm:startRaining(); world:setWeather("rain") end -- must rain first
		if gt:getThunderStorm() == false then
			gt:thunderStart()
		else
			gt:thunderStop()
		end
	end
	
	if weather == "cloud" or weather == "sunny" then
		if rm:isRaining() then
			rm:stopRaining()
		end
		world:setWeather(weather)
	end
	
	if isClient() then
		world:transmitWeather()
	end
end


CheatCoreCM.isAdmin = function() -- stops pesky cheaters. good luck trying to modify this, it won't work :^)
	if isClient() == true and isAdmin() == true or isClient() == false and isAdmin() == false then
		return true
	else
		return false
	end
end

--GHK
function dumpSuperGHKStr() 
	--getPlayer():Say("world age:".. (getGameTime():getWorldAgeHours()/24) .." days");
	getPlayer():Say("dumping any pasted road data to console.txt");
	print(superGHKStr);
	--print(superGHKStr);
	--ghk
--print("adding map ghk");
 --getPlayer():getInventory():AddItem("Base.AIZFK");
 --getPlayer():getInventory():AddItem("Base.Pencil");
end

Events.OnGameStart.Add(CheatCoreCM.RescueFunction);
Events.OnLoad.Add(CheatCoreCM.SyncVariables);
--GHK
Events.EveryTenMinutes.Add(dumpSuperGHKStr);