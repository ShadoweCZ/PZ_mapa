--
-- Created by IntelliJ IDEA.
-- User: RJ
-- Date: 22/02/2017
-- Time: 11:30
-- To change this template use File | Settings | File Templates.
--

require "StashDescriptions/StashUtil";

-- well
local stashMap1 = StashUtil.newStash("BallincoolinStashMap1", "Map", "Base.BallincoolinMap", "Stash_AnnotedMap");
stashMap1.spawnOnlyOnZed = true;
--stashMap1.daysToSpawn = "0-30";
stashMap1.zombies = 4;
stashMap1:addStamp("media/ui/LootableMaps/map_arrowsouth.png",nil,677,1968,0,0,0);
stashMap1:addStamp(nil,"Hidden well behind first house on this road",702,1977,0,0,0);

-- campsite
local stashMap1 = StashUtil.newStash("BallincoolinStashMap2", "Map", "Base.BallincoolinMap", "Stash_AnnotedMap");
--stashMap1.daysToSpawn = "0-30";
stashMap1.spawnOnlyOnZed = true;
--stashMap1.zombies = 1;
stashMap1.buildingX = 8948;
stashMap1.buildingY = 9906;
--stashMap1.spawnTable = "SurvivorCache2";
--stashMap1:addContainer("SurvivorCrate","carpentry_01_16",nil,nil,nil,nil);
stashMap1:addStamp("media/ui/LootableMaps/map_x.png",nil,1300,1886,0,0,0);
stashMap1:addStamp(nil,"campsite",1262,1912,0,0,0);

--crazy church/danger
local stashMap1 = StashUtil.newStash("BallincoolinStashMap3", "Map", "Base.BallincoolinMap", "Stash_AnnotedMap");
--stashMap1.spawnOnlyOnZed = true;
stashMap1.zombies = 20;
stashMap1.buildingX = 8797;
stashMap1.buildingY = 9689;
--stashMap1.spawnTable = "SurvivorCache2";
stashMap1:addStamp("media/ui/LootableMaps/map_skull.png",nil,550,799,1,0,0);
stashMap1:addStamp("media/ui/LootableMaps/map_skull.png",nil,559,840,1,0,0);
stashMap1:addStamp("media/ui/LootableMaps/map_skull.png",nil,544,881,1,0,0);
stashMap1:addStamp("media/ui/LootableMaps/map_skull.png",nil,551,905,1,0,0);
stashMap1:addStamp("media/ui/LootableMaps/map_skull.png",nil,549,930,1,0,0);
stashMap1:addStamp("media/ui/LootableMaps/map_skull.png",nil,550,954,1,0,0);
stashMap1:addStamp("media/ui/LootableMaps/map_skull.png",nil,549,978,1,0,0);
stashMap1:addStamp("media/ui/LootableMaps/map_skull.png",nil,610,854,1,0,0);
stashMap1:addStamp("media/ui/LootableMaps/map_skull.png",nil,494,853,1,0,0);
stashMap1:addStamp(nil,"I TOLD YOU DEATH WAS COMING",432,1006,1,0,0);
stashMap1:addStamp(nil,"I TOLD YOU DEATH WAS COMING",435,1030,1,0,0);
stashMap1:addStamp(nil,"I TOLD YOU DEATH WAS COMING",425,1055,1,0,0);
stashMap1:addStamp(nil,"I TOLD YOU DEATH WAS COMING",415,1081,1,0,0);
stashMap1:addStamp(nil,"god does not see us",152,793,1,0,0);
stashMap1:addStamp(nil,"god does not hear us",160,810,1,0,0);
stashMap1:addStamp(nil,"god does not smell us",140,833,1,0,0);
stashMap1:addStamp(nil,"but those things do!",155,852,1,0,0);
stashMap1:addStamp(nil,"god will eat our souls",197,951,1,0,0);
stashMap1:addStamp(nil,"BUT THEY WILL EAT OUR BODIES",187,975,1,0,0);

--Survivor cabin stash 

local stashMap1 = StashUtil.newStash("BallincoolinStashMap4", "Map", "Base.BallincoolinMap", "Stash_AnnotedMap");
stashMap1.spawnOnlyOnZed = true;
stashMap1.zombies = 3;
stashMap1.barricades = 80;
stashMap1.buildingX = 8869;
stashMap1.buildingY = 9800;
--stashMap1.spawnTable = "SurvivorCache2";
stashMap1:addContainer("SurvivorCrate","floors_interior_tilesandwood_01_62",nil,nil,nil,nil);
stashMap1:addStamp("media/ui/LootableMaps/map_o.png",nil,825,1368,0,0,0);
stashMap1:addStamp(nil,"stash in front hall of cabin",850,1370,0,0,1);

--gun duffelbag cache

local stashMap1 = StashUtil.newStash("BallincoolinStashMap5", "Map", "Base.BallincoolinMap", "Stash_AnnotedMap");
--stashMap1.daysToSpawn = "0-30";
stashMap1.spawnOnlyOnZed = true;
--stashMap1.zombies = 1;
stashMap1.buildingX = 8793;
stashMap1.buildingY = 9807;
--stashMap1.spawnTable = "GunCache1";
stashMap1:addContainer("GunBox",nil,"Base.Garbagebag",nil,nil,nil,nil);
stashMap1:addStamp("media/ui/LootableMaps/map_target.png",nil,526,1429,1,0,0);
