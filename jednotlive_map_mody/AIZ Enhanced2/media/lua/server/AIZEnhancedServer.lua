
blAllInAddRoads=true; --Add road tiles to connect all maps in 'All in Zomboid Map Pack'?
blRecreateRoads = true; --remake roads everytime a player is new? This should remove natural debris from roads for games that are months long
bGHKZedSpawn=true; --spawn extra zeds for the mostly empty Knox County Town map and Grove Beach?
blAutoFixTWDDoors = true; --auto fix TWD doors?


function LoadSquareHandleTiles(sq)
	if(sq ~= nil and GHKPT~=nil  and ((sq:getModData().GHKTileSquareLoaded == nil and not blRecreateRoads) or blRecreateRoads)) then
		local x = sq:getX();
		local y = sq:getY();
		local z = sq:getZ();
		local generatedTile = "blends_street_01_85";
		local i = x..y;
		
		
		if((GHKPT[i]) and ((sq:getModData().GHKTileSquareLoaded == nil and not blRecreateRoads) or blRecreateRoads)) then	
			sq:getModData().GHKTileSquareLoaded = true;
			
			local dotile = 0; 
			

			if((x >= 917 and x <= 933) and (y >= 10609 and y <= 10613)) then
			--nd: map north bridge removal
				if(z == 2) then
					dotile = 2; 
				end 
			else 	
				if(z == 0) then
					dotile = 1; 
				end 
			end 
			
			if dotile > 0 then 
			
			
				if not sq:getFloor() and dotile == 1 then
					local cell = getWorld():getCell();
					local obj2 = IsoObject.new(cell, sq, generatedTile)
					sq:AddTileObject(obj2)
					
				end
				
				local sqObjs = sq:getObjects();
				local sqSize = sqObjs:size();
				for i = sqSize-1, 0, -1 do
					local obj = sqObjs:get(i);
					--print(obj:getSprite():getName())
					--if getPlayer():getZ() == sq:getZ() then
					if obj:getSprite() then
					--[[
									if isClient() then
										sledgeDestroy(obj)
									else
										--sq:RemoveTileObject(obj);
										sq:getSpecialObjects():remove(obj);
										sq:getObjects():remove(obj);
									end
									]]--
									--generatedTile = "blends_street_01_"..tostring(85+ZombRand(3));  --"blends_street_01_85";
									if generatedTile ~= obj:getSprite():getName() then -- if the generated tile is not the same as the tile already there, replace tile
										--if isClient() then
											--sledgeDestroy(obj)
										--else
											sq:getSpecialObjects():remove(obj);
											sq:getObjects():remove(obj);
										--end
										--sq:addFloor(generatedTile)
										if dotile == 1 then
											local cell = getWorld():getCell();
											local obj2 = IsoObject.new(cell, sq, generatedTile)
											sq:AddTileObject(obj2)
											
										end 
										
									end
								
							
					--end
					end
				
				end
			end 
		
		--Grove Beach enhancements
		elseif((x > 49*300 and x<52*300) and (y>15*300 and y<18*300) and sq:getModData().GHKTileSquareLoaded == nil) then		
			sq:getModData().GHKTileSquareLoaded = true;
			local spawnzed = false;
			
			--make up for no zombies for urban distributions
			--spawns this many regardless of difficulty
			if (not isClient()) and bGHKZedSpawn and (ZombRand(500) == 0) then
				spawnzed = true;
			end
			
			--'tz_' crash fixes and spawn extra zeds
			local sqObjs = sq:getObjects();
			local sqSize = sqObjs:size();
			for i = sqSize-1, 0, -1 do
				local obj = sqObjs:get(i);
				--print(obj:getSprite():getName())
				--if getPlayer():getZ() == sq:getZ() then
								local ini_str = obj:getSprite():getName();
								local bBadtile = string.find(ini_str, "tz_floors_interior_tilesandwood_01");
								if(spawnzed) and not (string.find(ini_str,"tz_water_01") or string.find(ini_str,"tz_blends_natural_01") or string.find(ini_str,"tz_pool_water_01"))then --dont spawn on water
									spawnHorde(x,y,x,y,0,1)
									--print("zedspawn tile found:"..obj:getSprite():getName());
								end
								
								if bBadtile then 
									-- 'bad' tile found
									--print("bad tile found:"..obj:getSprite():getName());
									--if isClient() then
									--	sledgeDestroy(obj)
									--else
										sq:getSpecialObjects():remove(obj);
										sq:getObjects():remove(obj);
									--end
									--sq:addFloor(generatedTile)
										local cell = getWorld():getCell();
										local obj2 = IsoObject.new(cell, sq, "floors_interior_tilesandwood_01_0")
										sq:AddTileObject(obj2)
									
								end
							
						
				--end
			end	
			
		--Knox County MP zed spawn enhancements
		elseif((x > 28*300 and x<29*300) and (y>33*300 and y<34*300) and sq:getModData().GHKTileSquareLoaded == nil) then	
			sq:getModData().GHKTileSquareLoaded = true;
			--make up for no zombies for urban distributions
			--spawns this many regardless of difficulty
			if (not isClient()) and bGHKZedSpawn and (ZombRand(500) == 0) then
				spawnHorde(x,y,x,y,0,1)
			end
			
		--Homely House and Challenge Map1 zombie spawns
		elseif((x > 29*300 and x<30*300) and (y>32*300 and y<34*300) and sq:getModData().GHKTileSquareLoaded == nil) then	
			sq:getModData().GHKTileSquareLoaded = true;
			--make up for no zombies for urban distributions
			--spawns this many regardless of difficulty
			if (not isClient()) and bGHKZedSpawn and (ZombRand(2000) == 0) then
				spawnHorde(x,y,x,y,0,1)
			end	
			
--Brandenburg & base south of muldraugh
		elseif((((x > 11*300 and x<15*300) and (y>20*300 and y<24*300)) or ((x > 35*300 and x<36*300) and (y>48*300 and y<49*300))) and sq:getModData().GHKTileSquareLoaded == nil) then		
			sq:getModData().GHKTileSquareLoaded = true;
			local spawnzed = false;
			
			--make up for mostly empty zombies
			--spawns this many regardless of difficulty
			if (not isClient()) and bGHKZedSpawn and (ZombRand(500) == 0) then
				spawnzed = true;
			end
			
			--'tz_' crash fixes and spawn extra zeds
		
				local sqObjs = sq:getObjects();
				local sqSize = sqObjs:size();
				for i = sqSize-1, 0, -1 do
					local obj = sqObjs:get(i);
					--print(obj:getSprite():getName())
					--if getPlayer():getZ() == sq:getZ() then
									local ini_str = obj:getSprite():getName();
									if(spawnzed) and not (string.find(ini_str,"blends_natural"))then --dont spawn on water
										spawnHorde(x,y,x,y,0,1)
										--print("zedspawn tile found:"..obj:getSprite():getName());
									end
										
							
					--end
				end	

	--NDMaps South + MEDIEVAL
		elseif((x > 8*300 and x<14*300) and (y>58*300 and y<61*300) and sq:getModData().GHKTileSquareLoaded == nil) then		
			sq:getModData().GHKTileSquareLoaded = true;
			local spawnzed = false;
			
			--make up for mostly empty zombies
			--spawns this many regardless of difficulty
			if (not isClient()) and bGHKZedSpawn and (ZombRand(500) == 0) then
				spawnzed = true;
			end
			
			--'tz_' crash fixes and spawn extra zeds
			if(x>8*300) then
				local sqObjs = sq:getObjects();
				local sqSize = sqObjs:size();
				for i = sqSize-1, 0, -1 do
					local obj = sqObjs:get(i);
					--print(obj:getSprite():getName())
					--if getPlayer():getZ() == sq:getZ() then
									local ini_str = obj:getSprite():getName();
									if(spawnzed) and not (string.find(ini_str,"blends_natural"))then --dont spawn on water
										spawnHorde(x,y,x,y,0,1)
										--print("zedspawn tile found:"..obj:getSprite():getName());
									end
										
							
					--end
				end	
			elseif(spawnzed) then
				spawnHorde(x,y,x,y,0,1)
			end
			
		--Chaparral
		elseif((x > 44*300 and x<47*300) and (y>11*300 and y<15*300) and sq:getModData().GHKTileSquareLoaded == nil) then		
			sq:getModData().GHKTileSquareLoaded = true;
			local spawnzed = false;
			
			--make up for mostly empty zombies
			--spawns this many regardless of difficulty
			if (not isClient()) and bGHKZedSpawn and (ZombRand(500) == 0) then
				spawnzed = true;
			end
			
			local sqObjs = sq:getObjects();
			local sqSize = sqObjs:size();
			for i = sqSize-1, 0, -1 do
				local obj = sqObjs:get(i);
				--print(obj:getSprite():getName())
				--if getPlayer():getZ() == sq:getZ() then
				local ini_str = obj:getSprite():getName();
								
				if(spawnzed) and not (string.find(ini_str,"blends_natural"))then --dont spawn on water
					spawnHorde(x,y,x,y,0,1)
									--print("zedspawn tile found:"..obj:getSprite():getName());
				end
										
						
				--end
			end				

		--NDMaps North
		elseif((x > 2*300 and x<7*300) and (y>34*300 and y<36*300) and sq:getModData().GHKTileSquareLoaded == nil) then		
			sq:getModData().GHKTileSquareLoaded = true;
			local spawnzed = false;
			
			--make up for mostly empty zombies
			--spawns this many regardless of difficulty
			if (not isClient()) and bGHKZedSpawn and (ZombRand(500) == 0) then
				spawnzed = true;
			end
			
			--'tz_' crash fixes and spawn extra zeds
			local sqObjs = sq:getObjects();
			local sqSize = sqObjs:size();
			for i = sqSize-1, 0, -1 do
				local obj = sqObjs:get(i);
				--print(obj:getSprite():getName())
				--if getPlayer():getZ() == sq:getZ() then
								local ini_str = obj:getSprite():getName();
								
								if(spawnzed) and not (string.find(ini_str,"blends_natural"))then --dont spawn on water
									spawnHorde(x,y,x,y,0,1)
									--print("zedspawn tile found:"..obj:getSprite():getName());
								end
										
						
				--end
			end	
			
		--A
		elseif((x > 44*300 and x<45*300) and (y>19*300 and y<20*300) and sq:getModData().GHKTileSquareLoaded == nil) then	
			sq:getModData().GHKTileSquareLoaded = true;
			local spawnzed = false;
			
			--make up for mostly empty zombies
			--spawns this many regardless of difficulty
			if (not isClient()) and bGHKZedSpawn and (ZombRand(500) == 0) then
				spawnzed = true;
			end
			
			--'tz_' crash fixes and spawn extra zeds
			local sqObjs = sq:getObjects();
			local sqSize = sqObjs:size();
			for i = sqSize-1, 0, -1 do
				local obj = sqObjs:get(i);
				--print(obj:getSprite():getName())
				--if getPlayer():getZ() == sq:getZ() then
								local ini_str = obj:getSprite():getName();
								
								if(spawnzed) and not (string.find(ini_str,"blends_natural"))then --dont spawn on water
									spawnHorde(x,y,x,y,0,1)
									--print("zedspawn tile found:"..obj:getSprite():getName());
								end
										
						
				--end
			end	

		--h as well as OTR or eastbridge
		elseif((((x > 44*300 and x<45*300) and (y>22*300 and y<23*300)) or ((x > 37*300 and x<40*300) and (y>19*300 and y<22*300)) or ((x > 42*300 and x<44*300) and (y>22*300 and y<24*300)) or ((x > 5*300 and x<6*300) and (y>42*300 and y<43*300)) ) and sq:getModData().GHKTileSquareLoaded == nil) then	
			sq:getModData().GHKTileSquareLoaded = true;
			
			local spawnzed = false;
			local otrboatbridge = false;
			--make up for mostly empty zombies
			--spawns this many regardless of difficulty
			if(((x > 37*300 and x<38*300) and (y>21*300 and y<22*300)) or ((x > 5*300 and x<6*300) and (y>42*300 and y<43*300)) ) then 
				
				-- otrboatbridge
				if (not isClient()) and bGHKZedSpawn and (ZombRand(250) == 0) then
					spawnzed = true;
					otrboatbridge = true;
				end			
			else
				
				if (not isClient()) and bGHKZedSpawn and (ZombRand(500) == 0) then
					spawnzed = true;
					otrboatbridge = false;
				end
			end 
			--'tz_' crash fixes and spawn extra zeds
			local sqObjs = sq:getObjects();
			local sqSize = sqObjs:size();
			for i = sqSize-1, 0, -1 do
				local obj = sqObjs:get(i);
				if obj:getSprite() then
				--print(obj:getSprite():getName())
				--if getPlayer():getZ() == sq:getZ() then
								local ini_str = obj:getSprite():getName();
								
								if(spawnzed) and not (string.find(ini_str,"blends_natural"))then --dont spawn on water
									if(otrboatbridge) then
										if(z < 8) then
											spawnHorde(x,y,x,y,z,1);
										end
									else
										spawnHorde(x,y,x,y,0,1);
									end
									--print("zedspawn tile found:"..obj:getSprite():getName());
								end
				--end
				end
			end					
		--k
		elseif((x > 32*300 and x<33*300) and (y>34*300 and y<35*300) and sq:getModData().GHKTileSquareLoaded == nil) then	
			sq:getModData().GHKTileSquareLoaded = true;
			local spawnzed = false;
			
			--make up for mostly empty zombies
			--spawns this many regardless of difficulty
			if (not isClient()) and bGHKZedSpawn and (ZombRand(500) == 0) then
				spawnzed = true;
			end
			
			--'tz_' crash fixes and spawn extra zeds
			local sqObjs = sq:getObjects();
			local sqSize = sqObjs:size();
			for i = sqSize-1, 0, -1 do
				local obj = sqObjs:get(i);
				--print(obj:getSprite():getName())
				--if getPlayer():getZ() == sq:getZ() then
								local ini_str = obj:getSprite():getName();
								
								if(spawnzed) and not (string.find(ini_str,"blends_natural"))then --dont spawn on water
									spawnHorde(x,y,x,y,0,1)
									--print("zedspawn tile found:"..obj:getSprite():getName());
								end
										
						
				--end
			end					
			
		--S
		elseif((x > 29*300 and x<30*300) and (y>42*300 and y<43*300) and sq:getModData().GHKTileSquareLoaded == nil) then	
			sq:getModData().GHKTileSquareLoaded = true;
			--make up for no zombies for urban distributions
			--spawns this many regardless of difficulty
			if (not isClient()) and bGHKZedSpawn and (ZombRand(500) == 0) then
				spawnHorde(x,y,x,y,0,1)
			end			
					

		--F
		elseif((x > 37*300 and x<38*300) and (y>40*300 and y<41*300) and sq:getModData().GHKTileSquareLoaded == nil) then	
			sq:getModData().GHKTileSquareLoaded = true;
			--make up for no zombies for urban distributions
			--spawns this many regardless of difficulty
			if (not isClient()) and bGHKZedSpawn and (ZombRand(1000) == 0) then
				spawnHorde(x,y,x,y,0,1)
			end
			
		--TPA	
		elseif((x > 28*300 and x<29*300) and (y>35*300 and y<36*300) and sq:getModData().GHKTileSquareLoaded == nil) then	
				sq:getModData().GHKTileSquareLoaded = true;
				--make up for no zombies for urban distributions
				--spawns this many regardless of difficulty
				--in base
				if(x >8500 and x<8601) and (y>10584 and y<10685) and (not isClient()) and bGHKZedSpawn and (ZombRand(300) == 0) then
					spawnHorde(x,y,x,y,0,1)
				elseif (not isClient()) and bGHKZedSpawn and (ZombRand(500) == 0) then
					spawnHorde(x,y,x,y,0,1)
				end				
				
		--W 2
		elseif((x > 48*300 and x<49*300) and (y>19*300 and y<20*300) and sq:getModData().GHKTileSquareLoaded == nil) then	
			sq:getModData().GHKTileSquareLoaded = true;
			local spawnzed = false;
			
			--make up for mostly empty zombies
			--spawns this many regardless of difficulty
			if (not isClient()) and bGHKZedSpawn and (ZombRand(500) == 0) then
				spawnzed = true;
			end
			
			--'tz_' crash fixes and spawn extra zeds
			local sqObjs = sq:getObjects();
			local sqSize = sqObjs:size();
			for i = sqSize-1, 0, -1 do
				local obj = sqObjs:get(i);
				--print(obj:getSprite():getName())
				--if getPlayer():getZ() == sq:getZ() then
								local ini_str = obj:getSprite():getName();
								
								if(spawnzed) and not (string.find(ini_str,"blends_natural"))then --dont spawn on water
									spawnHorde(x,y,x,y,0,1)
									--print("zedspawn tile found:"..obj:getSprite():getName());
								end
										
						
				--end
			end	

		--W area
		elseif((x > 29*300 and x<31*300) and (y>26*300 and y<27*300) and sq:getModData().GHKTileSquareLoaded == nil) then	
			sq:getModData().GHKTileSquareLoaded = true;
			local spawnzed = false;
			local odds = 500;
			if x > 30*300 then
				odds = 500;
			end 
			
			--make up for mostly empty zombies
			--spawns this many regardless of difficulty
			if (not isClient()) and bGHKZedSpawn and (ZombRand(odds) == 0) then
				spawnzed = true;
			end
			
			--'tz_' crash fixes and spawn extra zeds
			local sqObjs = sq:getObjects();
			local sqSize = sqObjs:size();
			for i = sqSize-1, 0, -1 do
				local obj = sqObjs:get(i);
				--print(obj:getSprite():getName())
				--if getPlayer():getZ() == sq:getZ() then
								local ini_str = obj:getSprite():getName();
								
								if(spawnzed) and not (string.find(ini_str,"blends_natural"))then --dont spawn on water
									spawnHorde(x,y,x,y,0,1)
									--print("zedspawn tile found:"..obj:getSprite():getName());
								end
										
						
				--end
			end

			--red valley
		elseif(((x > 15*300 and x<16*300) and (y>34*300 and y<35*300)) and sq:getModData().GHKTileSquareLoaded == nil) then	
			sq:getModData().GHKTileSquareLoaded = true;
			
			local spawnzed = false;
			--make up for mostly empty zombies
			--spawns this many regardless of difficulty

				
			if (not isClient()) and bGHKZedSpawn and (ZombRand(350) == 0) then
				spawnzed = true;
			end

			--'tz_' crash fixes and spawn extra zeds
			local sqObjs = sq:getObjects();
			local sqSize = sqObjs:size();
			for i = sqSize-1, 0, -1 do
				local obj = sqObjs:get(i);
				if obj:getSprite() then
				--print(obj:getSprite():getName())
				--if getPlayer():getZ() == sq:getZ() then
								local ini_str = obj:getSprite():getName();
								
								if(spawnzed) and not (string.find(ini_str,"blends_natural"))then --dont spawn on water
									
									if(z < 5) then
										spawnHorde(x,y,x,y,0,1);
									end

									--print("zedspawn tile found:"..obj:getSprite():getName());
								end
				--end
				end
			end

		--xonic's meg mall
		elseif(((x > 37*300 and x<39*300) and (y>28*300 and y<30*300)) and sq:getModData().GHKTileSquareLoaded == nil) then	
			sq:getModData().GHKTileSquareLoaded = true;
			
			local spawnzed = false;
			--make up for mostly empty zombies
			--spawns this many regardless of difficulty

				
			if (not isClient()) and bGHKZedSpawn and (ZombRand(500) == 0) then
				spawnzed = true;
			end

			--'tz_' crash fixes and spawn extra zeds
			local sqObjs = sq:getObjects();
			local sqSize = sqObjs:size();
			for i = sqSize-1, 0, -1 do
				local obj = sqObjs:get(i);
				if obj:getSprite() then
				--print(obj:getSprite():getName())
				--if getPlayer():getZ() == sq:getZ() then
								local ini_str = obj:getSprite():getName();
								
								if(spawnzed) and not (string.find(ini_str,"blends_natural"))then --dont spawn on water
									
									if(z < 5) then
										spawnHorde(x,y,x,y,0,1);
									end

									--print("zedspawn tile found:"..obj:getSprite():getName());
								end
				--end
				end
			end							

			--astoria
		elseif(((x > 0 and x<10*300) and (y>0 and y<12*300)) and sq:getModData().GHKTileSquareLoaded == nil) then	
			sq:getModData().GHKTileSquareLoaded = true;
			
			local spawnzed = false;
			--make up for mostly empty zombies
			--spawns this many regardless of difficulty

				
			if (not isClient()) and bGHKZedSpawn and (ZombRand(500) == 0) then
				spawnzed = true;
			end

			--'tz_' crash fixes and spawn extra zeds
			local sqObjs = sq:getObjects();
			local sqSize = sqObjs:size();
			for i = sqSize-1, 0, -1 do
				local obj = sqObjs:get(i);
				if obj:getSprite() then
				--print(obj:getSprite():getName())
				--if getPlayer():getZ() == sq:getZ() then
								local ini_str = obj:getSprite():getName();
								
								if(spawnzed) and not (string.find(ini_str,"blends_natural"))then --dont spawn on water
									
									if(z < 5) then
										spawnHorde(x,y,x,y,0,1);
									end

									--print("zedspawn tile found:"..obj:getSprite():getName());
								end
				--end
				end
			end							
			
		elseif(blAutoFixTWDDoors and (x > 32*300 and x<33*300) and (y>31*300 and y<32*300) and sq:getModData().GHKTileSquareLoaded == nil) then	
				local sqObjs = sq:getObjects();
				local sqSize = sqObjs:size();
				for i = sqSize-1, 0, -1 do
				local obj = sqObjs:get(i);
					
					--TWD door fix
	
					if((instanceof(obj, "IsoDoor")) and (not sq:getBuilding()) ) then
						if((not obj:isExteriorDoor(getPlayer())) and obj:getProperties():Is("forceLocked") and obj:getKeyId() == -1) then 
								if blFixTWDCellsDoors then
									--getPlayer():Say("Bad Door Fixed");
									obj:setKeyId(17808311);
								end
								if blRemoveTWDCellsDoors or blRemoveAllTWDCellsDoors then
									--getPlayer():Say("Bad Door Destroyed");
									if isClient() then
										sledgeDestroy(obj);
									else
										sq:getSpecialObjects():remove(obj);
										sq:getObjects():remove(obj);
									end
								end
								
							--else 
								--print("Building KeyID:"..square:getBuilding():getDef():getKeyId())
							
						end					
					
					end			
				end
			--end
			sq:getModData().GHKTileSquareLoaded = true;						
			
		else
			sq:getModData().GHKTileSquareLoaded = true;		
			
		end
	end
end

-- ------------------------------------------------
-- Game hooks
-- ------------------------------------------------
if blAllInAddRoads and isServer() then
	
	Events.LoadGridsquare.Add(LoadSquareHandleTiles);
end 