
function AIZSuperSurvivorsInit()

	if isModEnabled("SuperSurvivors") and RPresetSpawns ~= nil and blAIZSurivors then
		print("AIZEnhanced: Found Super Survivors Mod.");
		--InitPresetSpawns(); --ensure this is called, if not already, (from Survivors Mod)
	else 
		print("AIZEnhanced: Did Not Find Super Survivors Mod.");
		return;		
	end
	
PSID=0;

PresetSpawns = {};
-- set ChanceToSpawn from 1 to 100, nil assumes 100
 
 --WESTPOINT BEGIN
PresetSpawns[#PresetSpawns+1] = { Name = "Prison Guard", X = 11899, Y = 6937, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "YOU WANT SOME?! I\'LL TAKE YOU ALL DOWN!", Name = "Prison Guard", X = 11900, Y = 6937, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ChanceToSpawn=75,  Name = "Prison Guard", X = 11901, Y = 6937, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Standing Ground", isHostile = true};

PresetSpawns[#PresetSpawns+1] = { Name = "Gun Shop Owner", X = 12066, Y = 6759, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Patrol", isHostile = true, Patrolling=true, PX=0,PY=3};
PresetSpawns[#PresetSpawns+1] = { Name = "Gun Shop Owner", X = 12067, Y = 6759, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Patrol", isHostile = true, Patrolling=true, PX=0,PY=3};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "YOU BETTER GET OUTTA HERE!", Name = "Gun Shop Owner", X = 12068, Y = 6759, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Patrol", isHostile = true, Patrolling=true, PX=0,PY=3};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Pastor Bob was right, all us sinners are having to pay!", Name = "Giga Shop Owner", X = 12033, Y = 6849, Z = 1 , Weapon = "Base.Screwdriver", Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Great to see a friendly face. Take what you need", Name = "Giga Shop Owner", X = 12033, Y = 6850, Z = 1 , Weapon = "Base.Screwdriver", Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Thought you were Bob. Hope he is ok. Anyways, make yourself at home and I\'ll pour you a stiff one. Ya probably need it", Name = "Twiggys Shop Owner", X = 12063, Y = 6798, Z = 0 , Weapon = "Base.Hammer", Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Its like the end of the world out there! That military blockade made matters worse, kept the infected in town. Bastards!", Name = "Twiggys Shop Owner", X = 12062, Y = 6797, Z = 0 , Weapon = "Base.Hammer", Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Bonjour! Rooms are now free. Do you have somewhere better to stay?", Name = "Hotel Manager", X = 12009, Y = 6919, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Standing Ground", isHostile = false}; 

PresetSpawns[#PresetSpawns+1] = { Name = "Thug", X = 12310, Y = 6729, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Patrol", isHostile = true, Patrolling=true, PX=0,PY=-5};
PresetSpawns[#PresetSpawns+1] = { Name = "Thug", X = 12313, Y = 6729, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Patrol", isHostile = true, Patrolling=true, PX=0,PY=-5};
PresetSpawns[#PresetSpawns+1] = { Name = "Thug", X = 12316, Y = 6729, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Patrol", isHostile = true, Patrolling=true, PX=0,PY=-5};

PresetSpawns[#PresetSpawns+1] = { Name = "Principal", X = 11327, Y = 6765, Z = 1 , Weapon = "Base.Plank", Orders = "Patrol", isHostile = false, Patrolling=true, PX=2,PY=0};

PresetSpawns[#PresetSpawns+1] = { Name = "A Savior", X = 12132, Y = 7085, Z = 1 , Weapon = getWeapon("Base.Pistol"), Orders = "Explore", isHostile = true, Patrolling=true, PX=10,PY=10};
PresetSpawns[#PresetSpawns+1] = { Name = "A Savior", X = 12133, Y = 7084, Z = 1 , Weapon = getWeapon("Base.Pistol"), Orders = "Explore", isHostile = true, Patrolling=true, PX=20,PY=0};
PresetSpawns[#PresetSpawns+1] = { Name = "A Savior", X = 12130, Y = 7083, Z = 1 , Weapon = getWeapon("Base.Pistol"), Orders = "Explore", isHostile = true, Patrolling=true, PX=-3,PY=15};
--PresetSpawns[#PresetSpawns+1] = {InitGreeting = 'So now I\'m going to beat the HOLY FUCK FUCKING FUCKEDY FUCK out of you with my bat. Who I call \"Lucille\"',PerkName = "Blunt",PerkLevel = 10,isFemale = false,  Name = "Negan", X = 12131, Y = 7084, Z = 1 , Weapon = "Base.BaseballBat", Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = { Name = "A Savior", X = 12138, Y = 7098, Z = 1 , Weapon = getWeapon("Base.Pistol"), Orders = "Explore", isHostile = true, Patrolling=true, PX=10,PY=10};
PresetSpawns[#PresetSpawns+1] = { Name = "A Savior", X = 12146, Y = 7098, Z = 1 , Weapon = getWeapon("Base.Pistol"), Orders = "Explore", isHostile = true, Patrolling=true, PX=20,PY=0};
PresetSpawns[#PresetSpawns+1] = { Name = "A Savior", X = 12134, Y = 7099, Z = 1 , Weapon = getWeapon("Base.Pistol"), Orders = "Explore", isHostile = true, Patrolling=true, PX=-3,PY=15};

PresetSpawns[#PresetSpawns+1] = {PerkName = "Aiming",PerkLevel = 4,InitGreeting = "Hey Milton, fellow survivors are here!  Perhaps they can save us from The Governor!",isFemale = true,  Name = "Andrea ", X = 12064, Y = 6922, Z = 0 , Weapon = "Base.Shovel", Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Okay Andrea. There\'s no such thing as a free lunch... but it might be our only option! LETS GET OUT OF HERE!",isFemale = false,  Name = "Milton", X = 12064, Y = 6924, Z = 0 , Weapon = "Base.Shovel", Orders = "Standing Ground", isHostile = false};


PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Rescue Party", NoParty = true, X = 12070, Y = 6939, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Rescue Party", NoParty = true, X = 12075, Y = 6939, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Rescue Party", NoParty = true, X = 12080, Y = 6939, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Rescue Party", NoParty = true, X = 12085, Y = 6939, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};


PresetSpawns[#PresetSpawns+1] = {PerkName = "Aiming",PerkLevel = 4,InitGreeting = "Hey Milton, fellow survivors are here!  Perhaps they can save us from The Wolves!",isFemale = true, ShowName = true, Name = "Andrea ", X = 12064, Y = 6922, Z = 0 , Weapon = "Base.Shovel",hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Okay Andrea. There\'s no such thing as a free lunch... but it might be our only option! LETS GET OUT OF HERE!",isFemale = false, ShowName = true, Name = "Milton", X = 12064, Y = 6924, Z = 0 , Weapon = "Base.Shovel",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {GroupID = WoodburyGroupID,InitGreeting = 'Kill them!',ShowName = true, Name = "Wolves Member", X = 12056, Y = 6931, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true, Patrolling=true, PX=10,PY=10};
PresetSpawns[#PresetSpawns+1] = {GroupID = WoodburyGroupID,InitGreeting = "You\'re going to die!",ShowName = true, Name = "Wolves Member", X = 12057, Y = 6936, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true, Patrolling=true, PX=20,PY=0};
PresetSpawns[#PresetSpawns+1] = {GroupID = WoodburyGroupID,InitGreeting = 'HAHAHAHAHAHAHA!',ShowName = true, Name = "Wolves Member", X = 12057, Y = 6941, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true, Patrolling=true, PX=-3,PY=15};
PresetSpawns[#PresetSpawns+1] = {GroupID = WoodburyGroupID,InitGreeting = 'No one leaves alive!',ShowName = true, Name = "Wolves Member", X = 12056, Y = 6946, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {GroupID = WoodburyGroupID,InitGreeting = 'Die!!',ShowName = true, Name = "Wolves Member", X = 12093, Y = 6934, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true, Patrolling=true, PX=-3,PY=15};
PresetSpawns[#PresetSpawns+1] = {GroupID = WoodburyGroupID,InitGreeting = 'You are all dead!',ShowName = true, Name = "Wolves Member", X = 12093, Y = 6938, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {GroupID = WoodburyGroupID,InitGreeting = "I am going to have kill you. All of you. Including the children",PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Owen, Wolves Leader", X = 12096, Y = 6939, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true};



PresetSpawns[#PresetSpawns+1] = {X = 12086, Y = 6919, Z = 0 , itemType="RandomCannedFood", count = 30, isItemSpawn = true,GroupID=WoodburyGroupID}
PresetSpawns[#PresetSpawns+1] = {GroupID=WoodburyGroupID,InitGreeting = "Best be on your way now", InitGreeting=getText("ContextMenu_speech_DoNotTouchFood"), PerkName = "Aiming",PerkLevel = 2, NoParty = true,  Name = "Food Guard", X = 12086, Y = 6916, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Guard", isHostile = false};


PresetSpawns[#PresetSpawns+1] = {GroupID = HillTopGroupID, NoParty = true, InitGreeting = "We saw this coming a long time ago, and set up this community",InitGreeting=getText("ContextMenu_speech_HilltopIntro"), Name = "Survivor Camp Governor", X = 11729, Y = 7935, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Guard", isHostile = false, AIMode = "",Role="Leader"}
PresetSpawns[#PresetSpawns+1] = {GroupID = HillTopGroupID, PerkName = "Aiming",PerkLevel = 2, NoParty = true,  Name = "Survivor Camp Guard", X = 11708, Y = 7938, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Guard", isHostile = false, AIMode = ""}
PresetSpawns[#PresetSpawns+1] = {GroupID = HillTopGroupID, PerkName = "Aiming",PerkLevel = 2, NoParty = true,  Name = "Survivor Camp Guard", X = 11711, Y = 7941, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Role = "Guard", isHostile = false, AIMode = ""}
PresetSpawns[#PresetSpawns+1] = {GroupID = HillTopGroupID, PerkName = "Aiming",PerkLevel = 2, NoParty = true,  Name = "Survivor Camp Guard", X = 11711, Y = 7944, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Guard", isHostile = false, AIMode = ""}
PresetSpawns[#PresetSpawns+1] = {GroupID = HillTopGroupID, PerkName = "Aiming",PerkLevel = 2, NoParty = true,  Name = "Survivor Camp Guard", X = 11708, Y = 7946, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Role = "Guard", isHostile = false, AIMode = ""}
PresetSpawns[#PresetSpawns+1] = {GroupID = HillTopGroupID, NoParty = true,  Name = "Survivor Camp Citizen", X = 11722, Y = 7924, Z = 0 , Weapon = "Base.Axe", Role = "Worker", isHostile = false, AIMode = ""}
PresetSpawns[#PresetSpawns+1] = {GroupID = HillTopGroupID, NoParty = true,  Name = "Survivor Camp Citizen", X = 11735, Y = 7922, Z = 0 , Weapon = "Base.Axe", Role = "Worker", isHostile = false, AIMode = ""};
PresetSpawns[#PresetSpawns+1] = {GroupID = HillTopGroupID, NoParty = true,  Name = "Survivor Camp Citizen", X = 11715, Y = 7928, Z = 0 , Weapon = "Base.HuntingKnife", Role = "Worker", isHostile = false, AIMode = ""}
PresetSpawns[#PresetSpawns+1] = {GroupID = HillTopGroupID, NoParty = true,  Name = "Survivor Camp Citizen", X = 11735, Y = 7952, Z = 0 , Weapon = "Base.HuntingKnife", Role = "Worker", isHostile = false, AIMode = ""}
PresetSpawns[#PresetSpawns+1] = {GroupID = HillTopGroupID, NoParty = true,  Name = "Survivor Camp Citizen", X = 11730, Y = 7942, Z = 0 , Weapon = "Base.Axe", Role = "Worker", isHostile = false, AIMode = ""}
PresetSpawns[#PresetSpawns+1] = {GroupID = HillTopGroupID, NoParty = true,  Name = "Survivor Camp Citizen", X = 11726, Y = 7939, Z = 0 , Weapon = "Base.Axe", Role = "Worker", isHostile = false, AIMode = ""}
PresetSpawns[#PresetSpawns+1] = {GroupID = HillTopGroupID, NoParty = true,  Name = "Survivor Camp Citizen", X = 11737, Y = 7942, Z = 0 , Weapon = "Base.Axe", Role = "Worker", isHostile = false, AIMode = ""}
PresetSpawns[#PresetSpawns+1] = {GroupID = HillTopGroupID, NoParty = true,  Name = "Survivor Camp Citizen", X = 11741, Y = 7936, Z = 0 , Weapon = "Base.Axe",Role = "Worker", isHostile = false, AIMode = ""}
PresetSpawns[#PresetSpawns+1] = {GroupID = HillTopGroupID, NoParty = true,  Name = "Survivor Camp Scout", InitGreeting=getText("ContextMenu_speech_FollowMeToHilltop"), X = 10839, Y = 9536, Z = 0 , Weapon = "Base.HuntingKnife", Orders = "FollowRoute", RouteID="MuldToHilltop", isHostile = false, AIMode = ""}
PresetSpawns[#PresetSpawns+1] = {GroupID = HillTopGroupID, NoParty = true,  Name = "Survivor Camp Scout", InitGreeting=getText("ContextMenu_speech_FollowMeToHilltop"), X = 11484, Y = 7050, Z = 0 , Weapon = "Base.HuntingKnife", Orders = "FollowRoute", RouteID="WPToHilltop", isHostile = false, AIMode = ""}
PresetSpawns[#PresetSpawns+1] = {GroupID = HillTopGroupID, NoParty = true,  Name = "Survivor Camp Guard", X = 11711, Y = 7943, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Survivor Camp Guard", isHostile = false, AIMode = ""}
PresetSpawns[#PresetSpawns+1] = {GroupID = HillTopGroupID, NoParty = true, InitGreeting = "If you need some medical treatment, stop by anytime.", Role="Survivor Camp Doctor",Name = getText("ContextMenu_SD_DoctorPrefix_Before").."Hilltop"..getText("ContextMenu_SD_DoctorPrefix_After"), X = 11722, Y = 7942, Z = 0 , PerkName="Doctor",PerkLevel=3, Weapon = getWeapon("Base.HuntingKnife"), Orders = "Doctor", isHostile = false, AIMode = ""}
PresetSpawns[#PresetSpawns+1] = {GroupID=HillTopGroupID,InitGreeting = "Best be on your way now", InitGreeting=getText("ContextMenu_speech_DoNotTouchFood"), PerkName = "Aiming",PerkLevel = 2, NoParty = true,  Name = "Survivor Camp Food Guard", X = 11715, Y = 7929, Z = 0  , Weapon = getWeapon("Base.Shotgun"), Orders = "Guard", isHostile = false, AIMode = ""}

PresetSpawns[#PresetSpawns+1] = {GroupID=Gang1GroupID, Name = "Gang Member", X = 11373, Y = 7034, Z = 0 , Weapon = "Base.HuntingKnife", Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {GroupID=Gang1GroupID,  Name = "Gang Member", X = 11370, Y = 7036, Z = 0 , Weapon = "Base.HuntingKnife", Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {GroupID=Gang1GroupID,  Name = "Gang Member", X = 11374, Y = 7027, Z = 0 , Weapon = "Base.HuntingKnife", Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {GroupID=Gang1GroupID,  Name = "Gang Member", X = 11364, Y = 7024, Z = 0 , Weapon = "Base.HuntingKnife", Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {GroupID=Gang1GroupID,  Name = "Gang Member", X = 11365, Y = 7032, Z = 0 , Weapon = "Base.HuntingKnife", Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {GroupID=Gang1GroupID,InitGreeting = "Look man, it\'s nothing personal!", Name = "Gang Leader", X = 11367, Y = 7024, Z = 0 , Weapon = "Base.Sledgehammer", Orders = "Guard", isHostile = true};

BaseX = 12178
BaseY = 7201  -- traveling bandit group
PresetSpawns[#PresetSpawns+1] = {RouteID="TrainTracksToValleyStation", GroupID=Gang2GroupID, Name = "Bandit", X = BaseX, Y = BaseY, Z = 0 , Weapon = "Base.Shotgun", Orders = "FollowRoute", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {RouteID="TrainTracksToValleyStation",GroupID=Gang2GroupID,  Name = "Bandit", X = BaseX, Y = BaseY+1, Z = 0 , Weapon = "Base.Shotgun", Orders = "FollowRoute", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {RouteID="TrainTracksToValleyStation",GroupID=Gang2GroupID,  Name = "Bandit", X = BaseX+1, Y = BaseY, Z = 0 , Weapon = "Base.Pistol", Orders = "FollowRoute", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {RouteID="TrainTracksToValleyStation",GroupID=Gang2GroupID,  Name = "Bandit", X = BaseX+1, Y = BaseY+1, Z = 0 , Weapon = "Base.Shotgun", Orders = "FollowRoute", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {RouteID="TrainTracksToValleyStation",GroupID=Gang2GroupID,  Name = "Bandit", X = BaseX, Y = BaseY-1, Z = 0 , Weapon = "Base.Shotgun", Orders = "FollowRoute", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {RouteID="TrainTracksToValleyStation",GroupID=Gang2GroupID, InitGreeting = "Look! There is someone! Get Him!", Name = "Bandits Leader", X = BaseX-1, Y = BaseY, Z = 0 , Weapon = "Base.Pistol", Orders = "FollowRoute", isHostile = true};


PresetSpawns[#PresetSpawns+1] = {InitGreeting = "How did you get past the traps? You\'ll be sorry for trespassing around here!",PerkName = "Aiming",PerkLevel = 5, Name = "Hunter", X = 11827, Y = 6574, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"), Orders = "Standing Ground", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {GroupID=LoslokosGroupID, Name = "Loslokos Gang Member", X = 11660, Y = 7039, Z = 0 , Weapon = "Base.HuntingKnife", Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {GroupID=LoslokosGroupID,  Name = "Loslokos Gang Member", X = 11660, Y = 7041, Z = 0 , Weapon = "Base.HuntingKnife", Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {GroupID=LoslokosGroupID,  Name = "Loslokos Gang Member", X = 11660, Y = 7040, Z = 0 , Weapon = "Base.HuntingKnife", Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {GroupID=LoslokosGroupID,  Name = "Loslokos Gang Member", X = 11659, Y = 7039, Z = 0 , Weapon = "Base.HuntingKnife", Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {GroupID=LoslokosGroupID,  Name = "Loslokos Gang Member", X = 11659, Y = 7041, Z = 0 , Weapon = "Base.HuntingKnife", Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {GroupID=LoslokosGroupID, InitGreeting = "Amigo. We will be taking all your stuff. Gracias", Name = "Loslokos Gang Leader", X = 11659, Y = 7040, Z = 0 , Weapon = "Base.Sledgehammer", Orders = "Guard", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "GET OUT OF HERE ASSHOLES!!", Name = "Gas Station Owner", X = 12070, Y = 7140, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Shit, she is not anwering her phone...",PerkName = "Blunt",PerkLevel = 5, Name = "Mechanic", X = 11894, Y = 6804, Z = 0 , Weapon = "Base.Screwdriver", Orders = "Patrol", isHostile = false, Patrolling=true, PX=10,PY=0};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Take what you need. Just dont kill me!", Name = "Pharmacist", X = 11939, Y = 6798, Z = 0 , Weapon = "Base.HuntingKnife", Orders = "Explore", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'m okay. I\'m okay. I\'m in control. It\'s fine, it\'s okay. Maybe I could use a little help here", Name = "Mayor", X = 11954, Y = 6879, Z = 1 , Weapon = "Base.HuntingKnife", Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Man, I don\'t get paid nearly enough for this gig",PerkName = "Aiming",PerkLevel = 5,  Name = "Body Guard", X = 11955, Y = 6879, Z = 1 , Weapon = getWeapon("Base.Pistol"), Orders = "Guard", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "You can take what you want, but take me with you! Any place is safer than here", Name = "Shop Owner", X = 11905, Y = 6852, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Praise God! Hallelujah!",isFemale = false,  Name = "Pastor Bob", X = 11973, Y = 6990, Z = 0 , Weapon = "Base.Plank", Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Please help us!", Name = "Teacher", X = 11306, Y = 6785, Z = 1 , Weapon = "Base.Plank", Orders = "Patrol", isHostile = false, Patrolling=true, PX=10,PY=0};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Are you friendly?", Name = "Teacher", X = 11345, Y = 6785, Z = 1 , Weapon = "Base.Plank", Orders = "Patrol", isHostile = false, Patrolling=true, PX=2,PY=0};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "He has sent me a miracle. Amen!",isFemale = false,  Name = "Pastor Aaron", X = 11096, Y = 6710, Z = 0 , Weapon = "Base.Plank", Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {PerkName = "Aiming",PerkLevel = 5,InitGreeting = "Did you have to sneak up on me?", Name = "Sam", X = 11991, Y = 6945, Z = 2 , Weapon = getWeapon("Base.HuntingRifle"),  Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "As you can tell, I\'m an axe man",PerkName = "Axe",PerkLevel = 5,  Name = "Lumberjack", X = 12064, Y = 7213, Z = 0 , Weapon = "Base.Axe", Orders = "Chop Wood", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Shoot, you scared me, thought you were one of those damn zombies",PerkName = "Axe",PerkLevel = 5,  Name = "Lumberjack", X = 12070, Y = 7213, Z = 0 , Weapon = "Base.Axe", Orders = "Chop Wood", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Could have been the Russians, aliens, some secret military experiments",PerkName = "PlantScavenging",PerkLevel = 5,   Name = "Survivalist", X = 12074, Y = 7306, Z = 0 , Weapon = "Base.HuntingKnife", Orders = "Forage", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I focused on being prepared. Crazy is building the ark after the flood has already come. Don\'t you agree?",PerkName = "PlantScavenging",PerkLevel = 5,   Name = "Survivalist", X = 12084, Y = 7306, Z = 0 , Weapon = "Base.HuntingKnife", Orders = "Explore", isHostile = false};

-- WESTPOINT END PlantScavenging 

-- MULDRAUGH BEGIN

if(blAIZTWDPrisonSurivors) then --spawn all core TWD characters at TWD Prison rather than around the map

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "All life is precious",PerkName = "Blunt",PerkLevel = 10, isFemale=false, NoParty = true, ShowName = true,  Name = "Morgan", X = 9834, Y = 9515, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We get comfortable here, we let our guard down, this place is gonna make us weak",PerkName = "Aiming",PerkLevel = 10, isFemale=false, NoParty = true, ShowName = true,  Name = "Carol", X = 9833, Y = 9517, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=-15,PY=0};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Have you ever had to kill people because they had already killed your friends and were coming for you next? Have you ever done things that made you feel afraid of yourself afterward? Have you ever been covered in so much blood that you didn\'t know if it was yours or walkers\' or your friends\'? Huh? Then you don\'t know",PerkName = "Blunt",PerkLevel = 10, isFemale=true, NoParty = true, ShowName = true,  Name = "Michonne", X = 9809, Y = 9501, Z = 0 , Weapon = "Base.Poolcue",hasOrder = true, Orders = "Guard", isHostile = false}; --ALT QUOTE: Don\'t you want one more day with a chance? 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Why are we running? What are we doing?",PerkName = "Aiming",PerkLevel = 10, isFemale=false, ShowName = true,  Name = "Carl", X = 9833, Y = 9519, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'ve already lost three of the people that I care about most in this world",PerkName = "Aiming",PerkLevel = 10, isFemale=true, NoParty = true, ShowName = true,  Name = "Maggie", X = 9803, Y = 9507, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Nice moves there, Clint Eastwood. You\'re the new sheriff come riding in to clean up the town?",PerkName = "Blunt",PerkLevel = 10, isFemale=false, NoParty = true, ShowName = true,  Name = "Glenn", X = 9806, Y = 9506, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "You want to know what I was before all this? I was nobody. Nothing",PerkName = "Aiming",PerkLevel = 10, isFemale=false, NoParty = true, ShowName = true,  Name = "Daryl", X = 9799, Y = 9503, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=10};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Everyone who made it this far, we\'ve all done worse kinds of things, just to stay alive.. But we can still come back. We\'re not too far gone",PerkName = "Axe",PerkLevel = 10,isFemale=false, ShowName = true,  Name = "Rick", X = 9800, Y =9488, Z = 0 , Weapon = "Base.Axe",hasOrder = true, Orders = "Guard", isHostile = false}; 

else
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "All life is precious. I\'m looking for Rick",PerkName = "Blunt",PerkLevel = 10, isFemale=false, ShowName = true,  Name = "Morgan", X = 11741, Y = 8868, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We get comfortable here, we let our guard down, this place is gonna make us weak",PerkName = "Aiming",PerkLevel = 10, isFemale=true, ShowName = true,  Name = "Carol", X = 13662, Y = 5052, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=-15,PY=0};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Have you ever had to kill people because they had already killed your friends and were coming for you next? Have you ever done things that made you feel afraid of yourself afterward? Have you ever been covered in so much blood that you didn\'t know if it was yours or walkers\' or your friends\'? Huh? Then you don\'t know",PerkName = "Blunt",PerkLevel = 10, isFemale=true,  ShowName = true,  Name = "Michonne", X = 10765, Y = 10553, Z = 0 , Weapon = "Base.Poolcue",hasOrder = true, Orders = "Guard", isHostile = false}; --ALT QUOTE: Don\'t you want one more day with a chance? 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Why are we running? What are we doing? I\'m looking for my father Rick",PerkName = "Aiming",PerkLevel = 10, isFemale=false, ShowName = true,  Name = "Carl", X = 8606, Y = 8880, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'ve already lost three of the people that I care about most in this world",PerkName = "Aiming",PerkLevel = 10, isFemale=true,  ShowName = true,  Name = "Maggie", X = 11345, Y = 12165, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Nice moves there, Clint Eastwood. You\'re the new sheriff come riding in to clean up the town?",PerkName = "Blunt",PerkLevel = 10, isFemale=false, ShowName = true,  Name = "Glenn", X = 11950, Y = 6886, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "You want to know what I was before all this? I was nobody. Nothing",PerkName = "Aiming",PerkLevel = 10, isFemale=false,  ShowName = true,  Name = "Daryl", X = 10942, Y = 6771, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=10};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Everyone who made it this far, we\'ve all done worse kinds of things, just to stay alive.. But we can still come back. We\'re not too far gone",PerkName = "Axe",PerkLevel = 10,isFemale=false, ShowName = true,  Name = "Rick", X = 11087, Y =9235, Z = 0 , Weapon = "Base.Axe",hasOrder = true, Orders = "Guard", isHostile = false}; 

end

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "It\'s so good to see friendly faces",PerkName = "Axe",PerkLevel = 5,   Name = "Lumberjack", X = 10470, Y = 9277, Z = 0 , Weapon = "Base.Axe", Orders = "Chop Wood", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We came back to McCoy\'s looking for supplies. Muldraugh is a god awful mess",PerkName = "Axe",PerkLevel = 5,   Name = "Lumberjack", X = 10472, Y = 9279, Z = 0 , Weapon = "Base.Axe", Orders = "Chop Wood", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Doctor Kildare? Oh.. how did you get up here? The doors should have been locked. Are you bitten?",PerkName = "Doctor",PerkLevel = 3,isFemale=true,  Name = "Nurse", X = 10880, Y = 10029, Z = 1 , Weapon = "Base.KitchenKnife", Orders = "Doctor", isHostile = false}; 

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "They should be terrified. The world\'s ending. Otherwise, who gives a shit. With God, it\'s never too late to make things right",PerkName = "Aiming",PerkLevel = 10,isFemale=false,  Name = "Preacher", X = 10787, Y = 10172, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Standing Ground", isHostile = false}; 

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "HELP! HELP! They are trying to eat me!",  Name = "Food Inspector", X = 10621, Y = 9829, Z = 1 , Weapon = "Base.Plank", Orders = "Standing Ground", isHostile = false}; 

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Stay...STAY AWAY FROM ME! ARRRRGGH!!!",PerkName = "Aiming",PerkLevel = 1,isFemale=false,  Name = "Security Guard", X =  10627, Y = 9410, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Standing Ground", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Ya know wut? This is the most exciting goddamn thing that\'s ever happened in this town",PerkName = "Blade",PerkLevel = 5,isFemale=false,  Name = "Mad Man", X = 10686, Y = 10328, Z = 0 , Weapon = "Base.HuntingKnife", Orders = "Standing Ground", isHostile = false};  

--MULDRAUGH END

--WAREHOUSES OUTSIDE OF MULDRAUGH 
--Barney Calhoun ;-)
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Hey Gordon, is that you? What the bejesus?! Put your weapons away or I\'ll shoot!",isFemale=false,  Name = "Security Guard", X =  9987, Y = 10962, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Standing Ground", isHostile = false};
--WAREHOUSES END

--MARCH RIDGE
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "To hell with circumstances; I create opportunities. Knowing is not enough, we must apply. Willing is not enough, we must do",PerkName = "Blunt",PerkLevel = 10,isFemale=false,  Name = "Martial Arts Instructor", X =  10010, Y = 12735, Z = 1 , Weapon = "Base.BaseballBat", Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We\'ve got to get out of here! Its not safe. There is a gang of lunatics coming back here for me and the supplies. They want a doctor",isFemale=true, PerkLevel = 4, PerkName = "Doctor", Name = "Doctor", X = 10167, Y = 12754, Z = 0 , Weapon = "Base.BaseballBat", Orders = "Doctor", isHostile = false};

--MARCH RIDGE END

--ROSEWOOD 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Howdy. You can call me Tex. Been waiting for the military or some such, but you\'ll do my friend. Welcome!",PerkName = "Axe",PerkLevel = 5,isFemale=false,  Name = "Fire Fighter", X = 8143, Y = 11736, Z = 1 , Weapon = "Base.Axe", Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "ARRRRGGH!!!! Got you! Don\'t even think about escaping!",  Name = "Attorney", X = 7991, Y = 11449, Z = 0 , Weapon = "Base.Golfclub", Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Thank God! Please help me!",  Name = "Librarian", X = 8335, Y = 11615, Z = 0 , Weapon = "Base.BaseballBat", Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'ve been to eight county fairs and a goat rodeo, but I\'ve never seen anything like that. Thanks for the rescue. Now I gotta find Rick",PerkName = "Aiming",PerkLevel = 10, isFemale=false, NoParty = true,   Name = "Abraham", X = 8211, Y = 11805, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"), Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Thank you for saving me. So you\'re aware, I\’m on record as stating that I\'m not combat ready or even for that matter combat inclined",PerkName = "Blunt",PerkLevel = 3, isFemale=false, NoParty = true,   Name = "Eugene", X = 8231, Y = 11816, Z = 0 , Weapon = "Base.Plank", Orders = "Guard", isHostile = false}; 
--ROSEWOOD END

--RAILYARD SOUTH OF MULD
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Hey! Who goes there?! Better watch yer self pally!",PerkName = "Blunt",PerkLevel = 5,isFemale=false,  Name = "Hobo", X = 11629, Y = 9852, Z = 0 , Weapon = "Base.BaseballBat", Orders = "Patrol", isHostile = false,Patrolling=true, PX=0,PY=-15};

---RAILYARD END

--cabins far east of muldraugh 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'ve have been watching you, but you seem friendly. How did you make it out alive?",PerkName = "Aiming",PerkLevel = 7,isFemale=false,  Name = "Hunter", X = 12475, Y = 8969, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"), Orders = "Patrol", isHostile = false,Patrolling=true, PX=10,PY=0};

--end cabins

 --DIXIE 

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'ve had my gun sight on you for the last 5 minutes, but you seem friendly. How did you make it out alive?",PerkName = "Aiming",PerkLevel = 7,isFemale=false,  Name = "Hunter", X = 11608, Y = 9303, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"), Orders = "Patrol", isHostile = false,Patrolling=true, PX=10,PY=0};

---END DIXIE 

--VALLEY & MALL AREA
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Oh my God! Normal people for a change! This is my BOOMSTICK! Groovy. Found it off a dead dude. Luckily they sell ammo at S-MART",PerkName = "Aiming",PerkLevel = 3,isFemale=false,  Name = "B-Movie Actor", X = 13643, Y = 5868, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Patrol", isHostile = false,Patrolling=true, PX=0,PY=15};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Honey, we\'ve got some visitors. Stop looking for where you left the champagne and get over here!",isFemale=true,  Name = "Shopper Kim", X = 13923, Y = 5829, Z = 2 , Weapon = "Base.KitchenKnife", Orders = "Patrol", isHostile = true,Patrolling=true, PX=0,PY=15};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "What'\s up Goldigger?...Nothing in life is promised except.... death!",isFemale=false,  Name = "Shopper Kanye", X = 13923, Y = 5824, Z = 2 , Weapon = getWeapon("Base.Pistol"), Orders = "Patrol", isHostile = true,Patrolling=true, PX=-15,PY=0};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Ya better be real cool buddy, or I\'ll shovel your sorry ass outta here.",PerkName = "Blunt",PerkLevel = 3,isFemale=false,  Name = "Construction Worker", X = 14087, Y = 5453, Z = 0 , Weapon = "Base.Shovel", Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Finally! Help has arrived! I..I...came to the Academy during the curfew to grab some books before we tried to escape by foot around the military blockade",isFemale=true,  Name = "Professor", X = 12869, Y = 4848, Z = 0 , Weapon = "Base.BaseballBat", Orders = "Standing Ground", isHostile = false};


--END VALLEY & MALL AREA    

 -- OTHER START

PresetSpawns[#PresetSpawns+1] = {  Name = "A Savior", X = 8217, Y = 11810, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Patrol", isHostile = true, Patrolling=true, PX=10,PY=0};
PresetSpawns[#PresetSpawns+1] = {  Name = "A Savior", X = 8256, Y = 11845, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {  Name = "A Savior", X = 8255, Y = 11850, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {  Name = "A Savior", X = 8248, Y = 11859, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {  Name = "A Savior", X = 8235, Y = 11837, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Hi, I\'m Negan",isFemale=false,   Name = "I\'m Negan", X = 8226, Y = 11869, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Patrol", isHostile = true, Patrolling=true, PX=10,PY=-10}; 

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "The Lord sent you here to finally punish me. I'm damned. I was damned before. I always lock the doors. I always lock the doors",PerkName = "Blade",PerkLevel = 5,isFemale = false,  Name = "Father Gabriel", X = 10323, Y = 12787, Z = 0, Weapon = "Base.HuntingKnife", Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = " Nobody\'s got to die today",PerkName = "Axe",PerkLevel = 5,isFemale = false,  Name = "Tyreese", X = 9206, Y = 12139, Z = 0 , Weapon = "Base.Axe", Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I move through town... I\'m quiet... like a fire",PerkName = "Aiming",PerkLevel = 5,isFemale = true,  Name = "Sasha", X = 9207, Y = 12143, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "The people around you dying...that\'s the hard part",PerkName = "Aiming",PerkLevel = 10,isFemale = true,  Name = "Rosita", X = 14421, Y = 4628, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Guard", isHostile = false};

-- OTHER END 

-- NORTH EAST AIZ BLOCKADE

PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, InitGreeting = "This is the North East Blockade. No one is aloud past the rear Blockade. Lethal force will be used if necessary", PerkName = "Aiming",PerkLevel = 10, NoParty = true, isFemale=false,   Name = "Captain B.J. Blazkowicz", X = 12508, Y = (-2*300) + 4487, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, InitGreeting = "Move along now", PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 12512, Y = (-2*300) + 4487, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 12517, Y = (-2*300) +4487, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"), Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, InitGreeting = "You\'re not supposed to be up here, Move along!", PerkName = "Aiming", PerkLevel = 10, NoParty = true, isFemale=false,   Name = "Sniper", X = 12499, Y = (-2*300) + 4497, Z = 3 , Weapon = getWeapon("Base.HuntingRifle"), Orders = "Standing Ground", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, InitGreeting = "What are you doing up here? Move along!", PerkName = "Aiming", PerkLevel = 10, NoParty = true, isFemale=false,   Name = "Sniper", X = 12527, Y = (-2*300) + 4497, Z = 3 , Weapon = getWeapon("Base.HuntingRifle"), Orders = "Standing Ground", isHostile = false}; 

PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, InitGreeting = "I\'m busy", PerkName = "Aiming", PerkLevel = 2, NoParty = true, isFemale=false,   Name = "Soldier", X = 12527, Y = (-2*300) + 4485, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Patrol", isHostile = false, Patrolling=true, PX=-35,PY=-13}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, InitGreeting = "I\'m busy", NoParty = true, isFemale=false,   Name = "Cook", X = 12481, Y = (-2*300) + 4446, Z = 0 , Weapon = "Base.KitchenKnife", Orders = "Patrol", isHostile = false, Patrolling=true, PX=-4,PY=-8}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, InitGreeting = "I\'m scared", NoParty = true,   Name = "Refugee", X = 12490, Y = (-2*300) + 4443, Z = 0 , Weapon = "Base.KitchenKnife", Orders = "Patrol", isHostile = false, Patrolling=true, PX=-10,PY=12}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, InitGreeting = "I can\'t get a good signal", NoParty = true, isFemale=false,   Name = "Refugee Bob", X = 12485, Y = (-2*300) + 4463, Z = 0 , Weapon = "Base.KitchenKnife", Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, NoParty = true,   Name = "Refugee", X = 12485, Y = (-2*300) + 4463, Z = 0 , Weapon = "Base.KitchenKnife", Orders = "Explore", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, InitGreeting = "I\'m busy", PerkName = "Aiming", PerkLevel = 2, NoParty = true,   Name = "Soldier", X = 12541, Y = (-2*300) + 4456, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=0,PZ=1}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, InitGreeting = "We cannot wait any longer! We must proceed with operation Bluejay NOW!", PerkName = "Aiming", isFemale=false, PerkLevel = 2, NoParty = true,   Name = "Captian", X = 12540, Y = (-2*300) + 4402, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, InitGreeting = "Communication has been down for far too long. We must assume the worst.", PerkName = "Aiming", isFemale=false, PerkLevel = 2, NoParty = true,   Name = "Major Mike", X = 12533, Y = (-2*300) + 4405, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, InitGreeting = "We can\'t hold off here without backup for much longer. We need to do something!", PerkName = "Aiming", isFemale=false, PerkLevel = 2, NoParty = true,   Name = "Lt. Dan", X = 12533, Y = (-2*300) + 4407, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Guard", isHostile = false}; 

PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, Greeting="Halt!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 12512, Y = (-2*300) + 4400, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Standing Ground", isHostile = true}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, Greeting="Stop!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 12515, Y = (-2*300) + 4400, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Standing Ground", isHostile = true}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, Greeting="Go No Futher!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 12519, Y = (-2*300) + 4397, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Standing Ground", isHostile = true}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, Greeting="Halt!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 12508, Y = (-2*300) + 4397, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Standing Ground", isHostile = true}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, InitGreeting = "No one may pass the Blockade. NO exceptions!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 12505, Y = (-2*300) + 4417, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Patrol", isHostile = false, Patrolling=true, PX=15,PY=0}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, InitGreeting = "No one may pass the Blockade. NO exceptions!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 12470, Y = (-2*300) + 4425, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Patrol", isHostile = false, Patrolling=true, PX=15,PY=17}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, Greeting="Halt!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 12552, Y = (-2*300) + 4397, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Standing Ground", isHostile = true}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, Greeting="Go No Further!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 12556, Y = (-2*300) + 4397, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Standing Ground", isHostile = true}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, InitGreeting = "Talk to the Captain up by the North West Entrance", PerkName = "Aiming", isFemale=false, PerkLevel = 2, NoParty = true,   Name = "Srgt. Sam", X = 12552, Y = (-2*300) + 4498, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, InitGreeting = "Move along now", PerkName = "Aiming", isFemale=false, PerkLevel = 2, NoParty = true,   Name = "Soldier", X = 12555, Y = (-2*300) + 4498, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, NoParty=true,InitGreeting = "I\'m supposed to take down all these trees.",PerkName = "Axe",PerkLevel = 5,  Name = "Worker", X = 12555, Y = (-2*300) + 4478, Z = 0 , Weapon = "Base.Axe", Orders = "Explore", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, InitGreeting = "I tried to warn everyone, no one would listen.",PerkName = "Aiming",PerkLevel = 6,  Name = "Private Manning", X = 12467, Y = (-2*300) + 4409, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Patrol",  Patrolling=true, PX=0,PY=9, isHostile = false};
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, Greeting="Hey! Your not allowed in here!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 12497, Y = (-2*300) + 4366, Z = 3 , Weapon = getWeapon("Base.Pistol"), Orders = "Patrol", isHostile = true, Patrolling=true, PX=-4,PY=-7}; 
PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, Greeting="Hey! Your not allowed in here!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 12537, Y = (-2*300) + 4368, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Patrol", isHostile = true, Patrolling=true, PX=-25,PY=1}; 
	if isModEnabled("SurvivorQuests") then
			PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, Greeting="Hey! You're not allowed up here!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 12505, Y = 3742, Z = 0 , Weapon = "Base.Pistol", Orders = "Patrol", isHostile = true, Patrolling=true, PX=0,PY=-7}; 
			PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, Greeting="Hey! You're not allowed over here!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 12506, Y =3752, Z = 0 , Weapon = "Base.Pistol", Orders = "Guard", isHostile = true}; 
			PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, Greeting="Hey! You're not allowed in here!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 12499, Y = 3764, Z = 0 , Weapon = "Base.Pistol", Orders = "Guard", isHostile = true}; 
			PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, Greeting="Hey! You're not allowed over here!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 12459, Y = 3759, Z = 0 , Weapon = "Base.Pistol", Orders = "Guard", isHostile = true}; 
			PresetSpawns[#PresetSpawns+1] = {GroupID = BlockadeGroupID, Greeting="Hey! You're not alloweed over here!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 12459, Y = 3778, Z = 0 , Weapon = "Base.Pistol", Orders = "Guard", isHostile = true}; 
			
	end
	

PresetSpawns[#PresetSpawns+1] = {X = 12484, Y = 4443, Z = 0 , itemType="RandomCannedFood", count = 30, isItemSpawn = true,GroupID=BlockadeGroupID}
PresetSpawns[#PresetSpawns+1] = {X = 12484, Y = 4444, Z = 0 , itemType="RandomCannedFood", count = 30, isItemSpawn = true,GroupID=BlockadeGroupID}
PresetSpawns[#PresetSpawns+1] = {X = 12484, Y = 4445, Z = 0 , itemType="RandomCannedFood", count = 30, isItemSpawn = true,GroupID=BlockadeGroupID}
PresetSpawns[#PresetSpawns+1] = {GroupID=BlockadeGroupID,InitGreeting = "Best be on your way now", InitGreeting=getText("ContextMenu_speech_DoNotTouchFood"), PerkName = "Aiming",PerkLevel = 2, NoParty = true,  Name = "Food Guard", X = 12484, Y = 4446, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Guard", isHostile = false};


-- NORTH EAST BLOCKADE AIZ END

-- prison
PresetSpawns[#PresetSpawns+1] = {Greeting="Halt!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 7753, Y = 11884, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Standing Ground", isHostile = true}; 
PresetSpawns[#PresetSpawns+1] = {Greeting="Stop!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 7753, Y = 11889, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Standing Ground", isHostile = true}; 

PresetSpawns[#PresetSpawns+1] = {Greeting="Halt!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 7743, Y = 11905, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Guard", isHostile = true}; 
PresetSpawns[#PresetSpawns+1] = {Greeting="Stop!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 7709, Y = 11878, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Guard", isHostile = true}; 

PresetSpawns[#PresetSpawns+1] = {Greeting="Halt!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 7680, Y = 11878, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Explore", isHostile = true}; 
PresetSpawns[#PresetSpawns+1] = {Greeting="Stop!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 7680, Y = 11878, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Explore", isHostile = true}; 

PresetSpawns[#PresetSpawns+1] = {Greeting="Halt!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 7651, Y = 11855, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Explore", isHostile = true}; 
PresetSpawns[#PresetSpawns+1] = {Greeting="Stop!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 7651, Y = 11855, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Explore", isHostile = true}; 

PresetSpawns[#PresetSpawns+1] = {Greeting="Halt!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 7729, Y = 11913, Z = 0 , Weapon = getWeapon("Base.Shotgun"), Orders = "Explore", isHostile = true}; 
PresetSpawns[#PresetSpawns+1] = {Greeting="Stop!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false,   Name = "Soldier", X = 7729, Y = 11913, Z = 0 , Weapon = getWeapon("Base.Pistol"), Orders = "Explore", isHostile = true}; 

--recruitable farmers
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "You\'re the one stealing my crops? I\'m sure it was no damn zombie. These city folk don\'t know how to fend for themselves. We can work together here",isFemale = false, PerkName="Farming",PerkLevel=5,  Name = "Farmer John", X = 11137, Y = 6855, Z = 1 , Weapon = "Base.Hammer",  Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-4};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I bet you could use someone who knows about farming. If you make it worth my while I just might go with you.",isFemale = false, PerkName="Farming",PerkLevel=5,  Name = "Farmer Nick", X = 8616, Y = 8823, Z = 0 , Weapon = "Base.Hammer",  Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-4};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I bet you could use someone who knows about farming. If you make it worth my while I just might go with you.",isFemale = false, PerkName="Farming",PerkLevel=5,  Name = "Farmer Dan", X = 10824, Y = 9072, Z = 0 , Weapon = "Base.Hammer",  Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-4};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I bet you could use someone who knows about farming. If you make it worth my while I just might go with you.",isFemale = false, PerkName="Farming",PerkLevel=5,  Name = "Farmer Fransis", X = 14322, Y = 4957, Z = 0 , Weapon = "Base.Hammer",  Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-4};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I bet you could use someone who knows about farming. If you make it worth my while I just might go with you.",isFemale = false, PerkName="Farming",PerkLevel=5,  Name = "Farmer Franko", X = 11132, Y = 6853, Z = 0 , Weapon = "Base.Hammer",  Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-4};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I bet you could use someone who knows about farming. If you make it worth my while I just might go with you.",isFemale = false, PerkName="Farming",PerkLevel=5,  Name = "Farmer Jacob", X = 14394, Y = 4557, Z = 0 , Weapon = "Base.Hammer",  Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-4};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I bet you could use someone who knows about farming. If you make it worth my while I just might go with you.",isFemale = false, PerkName="Farming",PerkLevel=5,  Name = "Farmer Jack", X = 6817, Y = 7720, Z = 0 , Weapon = "Base.Hammer",  Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-4};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I bet you could use someone who knows about farming. If you make it worth my while I just might go with you.",isFemale = false, PerkName="Farming",PerkLevel=5,  Name = "Farmer Frank", X = 9067, Y = 12184, Z = 0 , Weapon = "Base.Hammer",  Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-4};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I bet you could use someone who knows about farming. If you make it worth my while I just might go with you.",isFemale = false, PerkName="Farming",PerkLevel=5,  Name = "Farmer Phil", X = 12059, Y = 7363, Z = 0 , Weapon = "Base.Hammer",  Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-4};


--recuritable doctors
PresetSpawns[#PresetSpawns+1] = {X = 10877, Y = 10029, Z = 0, InitGreeting = "Need some treatment?", PerkName = "Doctor", PerkLevel = 5,isFemale=false, Name = getText("ContextMenu_SD_DoctorPrefix_Before")..getSpeech("BoyNames")..getText("ContextMenu_SD_DoctorPrefix_After") , Weapon = getWeapon("Base.HuntingKnife"), Orders = "Doctor", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {X = 8093, Y = 11521, Z = 0, InitGreeting = "Need some treatment?", PerkName = "Doctor",  PerkLevel = 5,isFemale=false, Name = getText("ContextMenu_SD_DoctorPrefix_Before")..getSpeech("BoyNames")..getText("ContextMenu_SD_DoctorPrefix_After") , Weapon = getWeapon("Base.HuntingKnife"), Orders = "Doctor", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {X = 11882, Y = 6883, Z = 0, InitGreeting = "Need some treatment?", PerkName = "Doctor", PerkLevel = 5,isFemale=false, Name = getText("ContextMenu_SD_DoctorPrefix_Before")..getSpeech("BoyNames")..getText("ContextMenu_SD_DoctorPrefix_After") , Weapon = getWeapon("Base.HuntingKnife"), Orders = "Doctor", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {X = 11937, Y = 6797, Z = 0, InitGreeting = "Need some treatment?", PerkName = "Doctor", PerkLevel = 5,isFemale=false, Name = getText("ContextMenu_SD_DoctorPrefix_Before")..getSpeech("BoyNames")..getText("ContextMenu_SD_DoctorPrefix_After") , Weapon = getWeapon("Base.HuntingKnife"), Orders = "Doctor", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {X = 10143, Y = 12750, Z = 0, InitGreeting = "Need some treatment?", PerkName = "Doctor", PerkLevel = 5,isFemale=false, Name = getText("ContextMenu_SD_DoctorPrefix_Before")..getSpeech("BoyNames")..getText("ContextMenu_SD_DoctorPrefix_After") , Weapon = getWeapon("Base.HuntingKnife"), Orders = "Doctor", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {X = 6477, Y = 5259, Z = 0, InitGreeting = "Need some treatment?", PerkName = "Doctor", PerkLevel = 5,isFemale=false, Name = getText("ContextMenu_SD_DoctorPrefix_Before")..getSpeech("BoyNames")..getText("ContextMenu_SD_DoctorPrefix_After") , Weapon = getWeapon("Base.HuntingKnife"), Orders = "Doctor", isHostile = false}; 


local CannedFoods = {"TinnedBeans","CannedBolognese","CannedCarrots2","CannedChili","CannedCorn","CannedCornedBeef","CannedMushroomSoup","CannedPeas","CannedPotato2","CannedSardines","TinnedSoup","CannedTomato2"}

--- floor item spawns for hilltop camp---
PresetSpawns[#PresetSpawns+1] = {X = 11730, Y = 7935, Z = 0 , itemType="RandomCannedFood", count = 2, isItemSpawn = true}
PresetSpawns[#PresetSpawns+1] = {X = 11714, Y = 7926, Z = 0 , itemType="RandomCannedFood", count = 30, isItemSpawn = true,GroupID=HillTopGroupID}
PresetSpawns[#PresetSpawns+1] = {X = 11716, Y = 7926, Z = 0 , itemType="RandomCannedFood", count = 30, isItemSpawn = true,GroupID=HillTopGroupID}
PresetSpawns[#PresetSpawns+1] = {X = 11726, Y = 7941, Z = 0 , itemType="Base.WaterPot", count = 2, isItemSpawn = true}
PresetSpawns[#PresetSpawns+1] = {X = 11727, Y = 7939, Z = 0 , itemType="Base.Log", count = 4, isItemSpawn = true}


--AIZ Edited Spawns
--[[
 --WESTPOINT BEGIN
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Prison Guard", X = 11899, Y = 6937, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "YOU WANT SOME?! I\'LL TAKE YOU ALL DOWN!",ShowName = true, Name = "Prison Guard", X = 11900, Y = 6937, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ChanceToSpawn=75, ShowName = true, Name = "Prison Guard", X = 11901, Y = 6937, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Gun Shop Owner", X = 12066, Y = 6759, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol", isHostile = true, Patrolling=true, PX=0,PY=3};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Gun Shop Owner", X = 12067, Y = 6759, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol", isHostile = true, Patrolling=true, PX=0,PY=3};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "YOU BETTER GET OUTTA HERE!",ShowName = true, Name = "Gun Shop Owner", X = 12068, Y = 6759, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol", isHostile = true, Patrolling=true, PX=0,PY=3};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Pastor Bob was right, all us sinners are having to pay!",ShowName = true, Name = "Giga Shop Owner", X = 12033, Y = 6849, Z = 1 , Weapon = "Base.Screwdriver",hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Great to see a friendly face. Take what you need",ShowName = true, Name = "Giga Shop Owner", X = 12033, Y = 6850, Z = 1 , Weapon = "Base.Screwdriver",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Thought you were Bob. Hope he is ok. Anyways, make yourself at home and I\'ll pour you a stiff one. Ya probably need it",ShowName = true, Name = "Twiggys Shop Owner", X = 12063, Y = 6798, Z = 0 , Weapon = "Base.Hammer",hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Its like the end of the world out there! That military blockade made matters worse, kept the infected in town. Bastards!",ShowName = true, Name = "Twiggys Shop Owner", X = 12062, Y = 6797, Z = 0 , Weapon = "Base.Hammer",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Bonjour! Rooms are now free. Do you have somewhere better to stay?",ShowName = true, Name = "Hotel Manager", X = 12009, Y = 6919, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false}; 

PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Thug", X = 12310, Y = 6729, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol", isHostile = true, Patrolling=true, PX=0,PY=-5};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Thug", X = 12313, Y = 6729, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = true, Patrolling=true, PX=0,PY=-5};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Thug", X = 12316, Y = 6729, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol", isHostile = true, Patrolling=true, PX=0,PY=-5};

PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Principal", X = 11327, Y = 6765, Z = 1 , Weapon = "Base.Plank",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=2,PY=0};

PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 12132, Y = 7085, Z = 1 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Explore", isHostile = true, Patrolling=true, PX=10,PY=10};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 12133, Y = 7084, Z = 1 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Explore", isHostile = true, Patrolling=true, PX=20,PY=0};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 12130, Y = 7083, Z = 1 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Explore", isHostile = true, Patrolling=true, PX=-3,PY=15};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Hi, I\'m Negan",PerkName = "Blunt",PerkLevel = 10,isFemale = false, ShowName = true, Name = "I\'m Negan", X = 12131, Y = 7084, Z = 1 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 12138, Y = 7098, Z = 1 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Explore", isHostile = true, Patrolling=true, PX=10,PY=10};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 12146, Y = 7098, Z = 1 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Explore", isHostile = true, Patrolling=true, PX=20,PY=0};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 12134, Y = 7099, Z = 1 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Explore", isHostile = true, Patrolling=true, PX=-3,PY=15};

PresetSpawns[#PresetSpawns+1] = {PerkName = "Aiming",PerkLevel = 4,InitGreeting = "Hey Milton, fellow survivors are here!  Perhaps they can save us from The Wolves!",isFemale = true, ShowName = true, Name = "Andrea ", X = 12064, Y = 6922, Z = 0 , Weapon = "Base.Shovel",hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Okay Andrea. There\'s no such thing as a free lunch... but it might be our only option! LETS GET OUT OF HERE!",isFemale = false, ShowName = true, Name = "Milton", X = 12064, Y = 6924, Z = 0 , Weapon = "Base.Shovel",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = 'Kill them!',ShowName = true, Name = "Wolves Member", X = 12056, Y = 6931, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true, Patrolling=true, PX=10,PY=10};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "You\'re going to die!",ShowName = true, Name = "Wolves Member", X = 12057, Y = 6936, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true, Patrolling=true, PX=20,PY=0};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = 'HAHAHAHAHAHAHA!',ShowName = true, Name = "Wolves Member", X = 12057, Y = 6941, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true, Patrolling=true, PX=-3,PY=15};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = 'No one leaves alive!',ShowName = true, Name = "Wolves Member", X = 12056, Y = 6946, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = 'Die!!',ShowName = true, Name = "Wolves Member", X = 12093, Y = 6934, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true, Patrolling=true, PX=-3,PY=15};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = 'You are all dead!',ShowName = true, Name = "Wolves Member", X = 12093, Y = 6938, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I am going to have kill you. All of you. Including the children",PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Owen, Wolves Leader", X = 12096, Y = 6939, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Rescue Party", NoParty = true, X = 12070, Y = 6939, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Rescue Party", NoParty = true, X = 12075, Y = 6939, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Rescue Party", NoParty = true, X = 12080, Y = 6939, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Rescue Party", NoParty = true, X = 12085, Y = 6939, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};

PresetSpawns[#PresetSpawns+1] = {PerkName = "Aiming",PerkLevel = 2, NoParty = true, ShowName = true, Name = "Survivor Camp Guard", X = 11708, Y = 7938, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {PerkName = "Aiming",PerkLevel = 2, NoParty = true, ShowName = true, Name = "Survivor Camp Guard", X = 11711, Y = 7941, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {PerkName = "Aiming",PerkLevel = 2, NoParty = true, ShowName = true, Name = "Survivor Camp Guard", X = 11711, Y = 7944, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {PerkName = "Aiming",PerkLevel = 2, NoParty = true, ShowName = true, Name = "Survivor Camp Guard", X = 11708, Y = 7946, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {NoParty = true, ShowName = true, Name = "Survivor Camp Member", X = 11722, Y = 7924, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=13,PY=-28};
PresetSpawns[#PresetSpawns+1] = {NoParty = true, ShowName = true, Name = "Survivor Camp Member", X = 11735, Y = 7922, Z = 0 , Weapon = "Base.Axe",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=-19,PY=34};
PresetSpawns[#PresetSpawns+1] = {NoParty = true, ShowName = true, Name = "Survivor Camp Member", X = 11715, Y = 7931, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=-15,PY=23};
PresetSpawns[#PresetSpawns+1] = {NoParty = true, ShowName = true, Name = "Survivor Camp Member", X = 11735, Y = 7952, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=-21,PY=-23};
PresetSpawns[#PresetSpawns+1] = {NoParty = true, ShowName = true, Name = "Survivor Camp Member", X = 11730, Y = 7942, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {NoParty = true, ShowName = true, Name = "Survivor Camp Member", X = 11726, Y = 7939, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {NoParty = true, ShowName = true, Name = "Survivor Camp Member", X = 11737, Y = 7942, Z = 0 , Weapon = "Base.Axe",hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {NoParty = true, ShowName = true, Name = "Survivor Camp Member", X = 11741, Y = 7936, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=-13,PY=16};
PresetSpawns[#PresetSpawns+1] = {NoParty = true, ShowName = true, Name = "Survivor Camp Guard", X = 11711, Y = 7943, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {NoParty = true, InitGreeting = "Welcome! We saw something like this coming a long time ago, and set up this here woodland stronghold",ShowName = true, Name = "Survivor Camp Leader", X = 11729, Y = 7935, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Guard", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Gang Member", X = 11373, Y = 7034, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Gang Member", X = 11370, Y = 7036, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Gang Member", X = 11374, Y = 7027, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Gang Member", X = 11364, Y = 7024, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Gang Member", X = 11365, Y = 7032, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Look man, it\'s nothing personal!",ShowName = true, Name = "Gang Leader", X = 11367, Y = 7024, Z = 0 , Weapon = "Base.Sledgehammer",hasOrder = true, Orders = "Guard", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "How did you get past the traps? You\'ll be sorry for trespassing around here!",PerkName = "Aiming",PerkLevel = 5,ShowName = true, Name = "Hunter", X = 11827, Y = 6574, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"),hasOrder = true, Orders = "Standing Ground", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Loslokos Gang Member", X = 11660, Y = 7039, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Loslokos Gang Member", X = 11660, Y = 7041, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Loslokos Gang Member", X = 11660, Y = 7040, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Loslokos Gang Member", X = 11659, Y = 7039, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Loslokos Gang Member", X = 11659, Y = 7041, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Amigo. We will be taking all your stuff. Gracias",ShowName = true, Name = "Loslokos Gang Leader", X = 11659, Y = 7040, Z = 0 , Weapon = "Base.Sledgehammer",hasOrder = true, Orders = "Guard", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "GET OUT OF HERE ASSHOLES!!",ShowName = true, Name = "Gas Station Owner", X = 12070, Y = 7140, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Shit, she is not anwering her phone...",PerkName = "Blunt",PerkLevel = 5,ShowName = true, Name = "Mechanic", X = 11894, Y = 6804, Z = 0 , Weapon = "Base.Screwdriver",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=10,PY=0};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Take what you need. Just dont kill me!",ShowName = true, Name = "Pharmacist", X = 11939, Y = 6798, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Explore", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'m okay. I\'m okay. I\'m in control. It\'s fine, it\'s okay. Maybe I could use a little help here",ShowName = true, Name = "Mayor", X = 11954, Y = 6879, Z = 1 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Man, I don\'t get paid nearly enough for this gig",PerkName = "Aiming",PerkLevel = 5, ShowName = true, Name = "Body Guard", X = 11955, Y = 6879, Z = 1 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Guard", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "You can take what you want, but take me with you! Any place is safer than here",ShowName = true, Name = "Shop Owner", X = 11905, Y = 6852, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Praise God! Hallelujah!",isFemale = false, ShowName = true, Name = "Pastor Bob", X = 11973, Y = 6990, Z = 0 , Weapon = "Base.Plank",hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Please help us!",ShowName = true, Name = "Teacher", X = 11306, Y = 6785, Z = 1 , Weapon = "Base.Plank",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=10,PY=0};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Are you friendly?",ShowName = true, Name = "Teacher", X = 11345, Y = 6785, Z = 1 , Weapon = "Base.Plank",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=2,PY=0};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "He has sent me a miracle. Amen!",isFemale = false, ShowName = true, Name = "Pastor Aaron", X = 11096, Y = 6710, Z = 0 , Weapon = "Base.Plank",hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "You\'re the one stealing my crops? I\'m sure it was no damn zombie. These city folk don\'t know how to fend for themselves. We can work together here",isFemale = false, ShowName = true, Name = "Farmer John", X = 11138, Y = 6858, Z = 0 , Weapon = "Base.Plank",hasOrder = true,  Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-4};
PresetSpawns[#PresetSpawns+1] = {PerkName = "Aiming",PerkLevel = 5,InitGreeting = "Did you have to sneak up on me?",ShowName = true, Name = "Sam", X = 11991, Y = 6945, Z = 2 , Weapon = getWeapon("Base.HuntingRifle"),hasOrder = true,  Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "As you can tell, I\'m an axe man",PerkName = "Axe",PerkLevel = 5,ShowName = true,  Name = "Lumberjack", X = 12064, Y = 7213, Z = 0 , Weapon = "Base.Axe",hasOrder = true, Orders = "Chop Wood", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Shoot, you scared me, thought you were one of those damn zombies",PerkName = "Axe",PerkLevel = 5,ShowName = true,  Name = "Lumberjack", X = 12070, Y = 7213, Z = 0 , Weapon = "Base.Axe",hasOrder = true, Orders = "Chop Wood", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Could have been the Russians, aliens, some secret military experiments",PerkName = "PlantScavenging",PerkLevel = 5, ShowName = true,  Name = "Survivalist", X = 12074, Y = 7306, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Forage", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I focused on being prepared. Crazy is building the ark after the flood has already come. Don\'t you agree?",PerkName = "PlantScavenging",PerkLevel = 5, ShowName = true,  Name = "Survivalist", X = 12084, Y = 7306, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Explore", isHostile = false};

-- WESTPOINT END PlantScavenging 

-- MULDRAUGH BEGIN

if(blAIZTWDPrisonSurivors) then --spawn all core TWD characters at TWD Prison rather than around the map

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "All life is precious",PerkName = "Blunt",PerkLevel = 10, isFemale=false, NoParty = true, ShowName = true,  Name = "Morgan", X = 9834, Y = 9515, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We get comfortable here, we let our guard down, this place is gonna make us weak",PerkName = "Aiming",PerkLevel = 10, isFemale=false, NoParty = true, ShowName = true,  Name = "Carol", X = 9833, Y = 9517, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=-15,PY=0};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Have you ever had to kill people because they had already killed your friends and were coming for you next? Have you ever done things that made you feel afraid of yourself afterward? Have you ever been covered in so much blood that you didn\'t know if it was yours or walkers\' or your friends\'? Huh? Then you don\'t know",PerkName = "Blunt",PerkLevel = 10, isFemale=true, NoParty = true, ShowName = true,  Name = "Michonne", X = 9809, Y = 9501, Z = 0 , Weapon = "Base.Poolcue",hasOrder = true, Orders = "Guard", isHostile = false}; --ALT QUOTE: Don\'t you want one more day with a chance? 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Why are we running? What are we doing?",PerkName = "Aiming",PerkLevel = 10, isFemale=false, ShowName = true,  Name = "Carl", X = 9833, Y = 9519, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'ve already lost three of the people that I care about most in this world",PerkName = "Aiming",PerkLevel = 10, isFemale=true, NoParty = true, ShowName = true,  Name = "Maggie", X = 9803, Y = 9507, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Nice moves there, Clint Eastwood. You\'re the new sheriff come riding in to clean up the town?",PerkName = "Blunt",PerkLevel = 10, isFemale=false, NoParty = true, ShowName = true,  Name = "Glenn", X = 9806, Y = 9506, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "You want to know what I was before all this? I was nobody. Nothing",PerkName = "Aiming",PerkLevel = 10, isFemale=false, NoParty = true, ShowName = true,  Name = "Daryl", X = 9799, Y = 9503, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=10};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Everyone who made it this far, we\'ve all done worse kinds of things, just to stay alive.. But we can still come back. We\'re not too far gone",PerkName = "Axe",PerkLevel = 10,isFemale=false, ShowName = true,  Name = "Rick", X = 9800, Y =9488, Z = 0 , Weapon = "Base.Axe",hasOrder = true, Orders = "Guard", isHostile = false}; 

else
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "All life is precious. I\'m looking for Rick",PerkName = "Blunt",PerkLevel = 10, isFemale=false, ShowName = true,  Name = "Morgan", X = 11741, Y = 8868, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We get comfortable here, we let our guard down, this place is gonna make us weak",PerkName = "Aiming",PerkLevel = 10, isFemale=true, ShowName = true,  Name = "Carol", X = 13662, Y = 5052, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=-15,PY=0};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Have you ever had to kill people because they had already killed your friends and were coming for you next? Have you ever done things that made you feel afraid of yourself afterward? Have you ever been covered in so much blood that you didn\'t know if it was yours or walkers\' or your friends\'? Huh? Then you don\'t know",PerkName = "Blunt",PerkLevel = 10, isFemale=true,  ShowName = true,  Name = "Michonne", X = 10765, Y = 10553, Z = 0 , Weapon = "Base.Poolcue",hasOrder = true, Orders = "Guard", isHostile = false}; --ALT QUOTE: Don\'t you want one more day with a chance? 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Why are we running? What are we doing? I\'m looking for my father Rick",PerkName = "Aiming",PerkLevel = 10, isFemale=false, ShowName = true,  Name = "Carl", X = 8606, Y = 8880, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'ve already lost three of the people that I care about most in this world",PerkName = "Aiming",PerkLevel = 10, isFemale=true,  ShowName = true,  Name = "Maggie", X = 11345, Y = 12165, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Nice moves there, Clint Eastwood. You\'re the new sheriff come riding in to clean up the town?",PerkName = "Blunt",PerkLevel = 10, isFemale=false, ShowName = true,  Name = "Glenn", X = 11950, Y = 6886, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "You want to know what I was before all this? I was nobody. Nothing",PerkName = "Aiming",PerkLevel = 10, isFemale=false,  ShowName = true,  Name = "Daryl", X = 10942, Y = 6771, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=10};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Everyone who made it this far, we\'ve all done worse kinds of things, just to stay alive.. But we can still come back. We\'re not too far gone",PerkName = "Axe",PerkLevel = 10,isFemale=false, ShowName = true,  Name = "Rick", X = 11087, Y =9235, Z = 0 , Weapon = "Base.Axe",hasOrder = true, Orders = "Guard", isHostile = false}; 

end

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "It\'s so good to see friendly faces",PerkName = "Axe",PerkLevel = 5, ShowName = true,  Name = "Lumberjack", X = 10470, Y = 9277, Z = 0 , Weapon = "Base.Axe",hasOrder = true, Orders = "Chop Wood", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We came back to McCoy\'s looking for supplies. Muldraugh is a god awful mess",PerkName = "Axe",PerkLevel = 5, ShowName = true,  Name = "Lumberjack", X = 10472, Y = 9279, Z = 0 , Weapon = "Base.Axe",hasOrder = true, Orders = "Chop Wood", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Doctor Kildare? Oh.. how did you get up here? The doors should have been locked. Are you bitten?",PerkName = "Blade",PerkLevel = 3,isFemale=true,ShowName = true,  Name = "Nurse", X = 10880, Y = 10029, Z = 1 , Weapon = "Base.KitchenKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false}; 

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "They should be terrified. The world\'s ending. Otherwise, who gives a shit. With God, it\'s never too late to make things right",PerkName = "Aiming",PerkLevel = 10,isFemale=false,ShowName = true,  Name = "Preacher", X = 10787, Y = 10172, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = false}; 

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "HELP! HELP! They are trying to eat me!",ShowName = true,  Name = "Food Inspector", X = 10621, Y = 9829, Z = 1 , Weapon = "Base.Plank",hasOrder = true, Orders = "Standing Ground", isHostile = false}; 

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Stay...STAY AWAY FROM ME! ARRRRGGH!!!",PerkName = "Aiming",PerkLevel = 1,isFemale=false,ShowName = true,  Name = "Security Guard", X =  10627, Y = 9410, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Ya know wut? This is the most exciting goddamn thing that\'s ever happened in this town",PerkName = "Blade",PerkLevel = 5,isFemale=false,ShowName = true,  Name = "Mad Man", X = 10686, Y = 10328, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};  

--MULDRAUGH END

--WAREHOUSES OUTSIDE OF MULDRAUGH 
--Barney Calhoun ;-)
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Hey Gordon, is that you? What the bejesus?! Put your weapons away or I\'ll shoot!",isFemale=false,ShowName = true,  Name = "Security Guard", X =  9987, Y = 10962, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};
--WAREHOUSES END

--MARCH RIDGE
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "To hell with circumstances; I create opportunities. Knowing is not enough, we must apply. Willing is not enough, we must do",PerkName = "Blunt",PerkLevel = 10,isFemale=false,ShowName = true,  Name = "Martial Arts Instructor", X =  10010, Y = 12735, Z = 1 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We\'ve got to get out of here! Its not safe. There is a gang of lunatics coming back here for me and the supplies. They want a doctor",isFemale=true,ShowName = true,  Name = "Doctor", X = 10167, Y = 12754, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Standing Ground", isHostile = false};

--MARCH RIDGE END

--ROSEWOOD 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Howdy. You can call me Tex. Been waiting for the military or some such, but you\'ll do my friend. Welcome!",PerkName = "Axe",PerkLevel = 5,isFemale=false,ShowName = true,  Name = "Fire Fighter", X = 8143, Y = 11736, Z = 1 , Weapon = "Base.Axe",hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "ARRRRGGH!!!! Got you! Don\'t even think about escaping!",ShowName = true,  Name = "Attorney", X = 7991, Y = 11449, Z = 0 , Weapon = "Base.Golfclub",hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Thank God! Please help me!",ShowName = true,  Name = "Librarian", X = 8335, Y = 11615, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'ve been to eight county fairs and a goat rodeo, but I\'ve never seen anything like that. Thanks for the rescue. Now I gotta find Rick",PerkName = "Aiming",PerkLevel = 10, isFemale=false,  ShowName = true,  Name = "Abraham", X = 8211, Y = 11805, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"),hasOrder = true, Orders = "Guard", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Thank you for saving me. So you\'re aware, I\'m on record as stating that I\'m not combat ready or even for that matter combat inclined",PerkName = "Blunt",PerkLevel = 3, isFemale=false, ShowName = true,  Name = "Eugene", X = 8231, Y = 11816, Z = 0 , Weapon = "Base.Plank",hasOrder = true, Orders = "Guard", isHostile = false}; 
--ROSEWOOD END

--RAILYARD SOUTH OF MULD
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Hey! Who goes there?! Better watch yer self pally!",PerkName = "Blunt",PerkLevel = 5,isFemale=false,ShowName = true,  Name = "Hobo", X = 11629, Y = 9852, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Patrol", isHostile = false,Patrolling=true, PX=0,PY=-15};

---RAILYARD END

--cabins far east of muldraugh 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'ve have been watching you, but you seem friendly. How did you make it out alive?",PerkName = "Aiming",PerkLevel = 7,isFemale=false,ShowName = true,  Name = "Hunter", X = 12475, Y = 8969, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"),hasOrder = true, Orders = "Patrol", isHostile = false,Patrolling=true, PX=10,PY=0};

--end cabins

 --DIXIE 

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'ve had my gun sight on you for the last 5 minutes, but you seem friendly. How did you make it out alive?",PerkName = "Aiming",PerkLevel = 7,isFemale=false,ShowName = true,  Name = "Hunter", X = 11608, Y = 9303, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"),hasOrder = true, Orders = "Patrol", isHostile = false,Patrolling=true, PX=10,PY=0};

---END DIXIE 

--VALLEY & MALL AREA
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Oh my God! Normal people for a change! This is my BOOMSTICK! Groovy. Found it off a dead dude. Luckily they sell ammo at S-MART",PerkName = "Aiming",PerkLevel = 3,isFemale=false,ShowName = true,  Name = "B-Movie Actor", X = 13643, Y = 5868, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = false,Patrolling=true, PX=0,PY=15};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Honey, we\'ve got some visitors. Stop looking for where you left the champagne and get over here!",isFemale=true,ShowName = true,  Name = "Shopper Kim", X = 13923, Y = 5829, Z = 2 , Weapon = "Base.KitchenKnife",hasOrder = true, Orders = "Patrol", isHostile = true,Patrolling=true, PX=0,PY=15};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "What'\s up Goldigger?...Nothing in life is promised except.... death!",isFemale=false,ShowName = true,  Name = "Shopper Kanye", X = 13923, Y = 5824, Z = 2 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol", isHostile = true,Patrolling=true, PX=-15,PY=0};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Ya better be real cool buddy, or I\'ll shovel your sorry ass outta here.",PerkName = "Blunt",PerkLevel = 3,isFemale=false,ShowName = true,  Name = "Construction Worker", X = 14087, Y = 5453, Z = 0 , Weapon = "Base.Shovel",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Finally! Help has arrived! I..I...came to the Academy during the curfew to grab some books before we tried to escape by foot around the military blockade",isFemale=true,ShowName = true,  Name = "Professor", X = 12869, Y = 4848, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Standing Ground", isHostile = false};


--END VALLEY & MALL AREA    

--]]
-- NORTH EAST BLOCKADE

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "This is the North East Blockade. No one is aloud past the rear Blockade. Lethal force will be used if necessary", PerkName = "Aiming",PerkLevel = 10, NoParty = true, isFemale=false, ShowName = true,  Name = "Captain B.J. Blazkowicz", X = 12508, Y = (-2*300) + 4487, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Move along now", PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false, ShowName = true,  Name = "Soldier", X = 12512, Y = (-2*300) + 4487, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false, ShowName = true,  Name = "Soldier", X = 12517, Y = (-2*300) +4487, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"),hasOrder = true, Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "You\'re not supposed to be up here, Move along!", PerkName = "Aiming", PerkLevel = 10, NoParty = true, isFemale=false, ShowName = true,  Name = "Sniper", X = 12499, Y = (-2*300) + 4497, Z = 3 , Weapon = getWeapon("Base.HuntingRifle"),hasOrder = true, Orders = "Standing Ground", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "What are you doing up here? Move along!", PerkName = "Aiming", PerkLevel = 10, NoParty = true, isFemale=false, ShowName = true,  Name = "Sniper", X = 12527, Y = (-2*300) + 4497, Z = 3 , Weapon = getWeapon("Base.HuntingRifle"),hasOrder = true, Orders = "Standing Ground", isHostile = false}; 

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'m busy", PerkName = "Aiming", PerkLevel = 2, NoParty = true, isFemale=false, ShowName = true,  Name = "Soldier", X = 12527, Y = (-2*300) + 4485, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=-35,PY=-13}; 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'m busy", NoParty = true, isFemale=false, ShowName = true,  Name = "Cook", X = 12481, Y = (-2*300) + 4446, Z = 0 , Weapon = "Base.KitchenKnife",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=-4,PY=-8}; 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'m scared", NoParty = true, ShowName = true,  Name = "Refugee", X = 12490, Y = (-2*300) + 4443, Z = 0 , Weapon = "Base.KitchenKnife",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=-10,PY=12}; 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I can\'t get a good signal", NoParty = true, isFemale=false, ShowName = true,  Name = "Refugee Bob", X = 12485, Y = (-2*300) + 4463, Z = 0 , Weapon = "Base.KitchenKnife",hasOrder = true, Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {NoParty = true, ShowName = true,  Name = "Refugee", X = 12485, Y = (-2*300) + 4463, Z = 0 , Weapon = "Base.KitchenKnife",hasOrder = true, Orders = "Explore", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'m busy", PerkName = "Aiming", PerkLevel = 2, NoParty = true, ShowName = true,  Name = "Soldier", X = 12541, Y = (-2*300) + 4456, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=0,PZ=1}; 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We cannot wait any longer! We must proceed with operation Bluejay NOW!", PerkName = "Aiming", isFemale=false, PerkLevel = 2, NoParty = true, ShowName = true,  Name = "Captian", X = 12540, Y = (-2*300) + 4402, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Communication has been down for far too long. We must assume the worst.", PerkName = "Aiming", isFemale=false, PerkLevel = 2, NoParty = true, ShowName = true,  Name = "Major Mike", X = 12533, Y = (-2*300) + 4405, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We can\'t hold off here without backup for much longer. We need to do something!", PerkName = "Aiming", isFemale=false, PerkLevel = 2, NoParty = true, ShowName = true,  Name = "Lt. Dan", X = 12533, Y = (-2*300) + 4407, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Guard", isHostile = false}; 

PresetSpawns[#PresetSpawns+1] = {Greeting="Halt!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false, ShowName = true,  Name = "Soldier", X = 12512, Y = (-2*300) + 4400, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true}; 
PresetSpawns[#PresetSpawns+1] = {Greeting="Stop!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false, ShowName = true,  Name = "Soldier", X = 12515, Y = (-2*300) + 4400, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true}; 
PresetSpawns[#PresetSpawns+1] = {Greeting="Go No Futher!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false, ShowName = true,  Name = "Soldier", X = 12519, Y = (-2*300) + 4397, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true}; 
PresetSpawns[#PresetSpawns+1] = {Greeting="Halt!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false, ShowName = true,  Name = "Soldier", X = 12508, Y = (-2*300) + 4397, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true}; 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "No one may pass the Blockade. NO exceptions!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false, ShowName = true,  Name = "Soldier", X = 12505, Y = (-2*300) + 4417, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=15,PY=0}; 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "No one may pass the Blockade. NO exceptions!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false, ShowName = true,  Name = "Soldier", X = 12470, Y = (-2*300) + 4425, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=15,PY=17}; 
PresetSpawns[#PresetSpawns+1] = {Greeting="Halt!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false, ShowName = true,  Name = "Soldier", X = 12552, Y = (-2*300) + 4397, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true}; 
PresetSpawns[#PresetSpawns+1] = {Greeting="Go No Further!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false, ShowName = true,  Name = "Soldier", X = 12556, Y = (-2*300) + 4397, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true}; 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Talk to the Captain up by the North West Entrance", PerkName = "Aiming", isFemale=false, PerkLevel = 2, NoParty = true, ShowName = true,  Name = "Srgt. Sam", X = 12552, Y = (-2*300) + 4498, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Move along now", PerkName = "Aiming", isFemale=false, PerkLevel = 2, NoParty = true, ShowName = true,  Name = "Soldier", X = 12555, Y = (-2*300) + 4498, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Guard", isHostile = false}; 
PresetSpawns[#PresetSpawns+1] = {NoParty=true,InitGreeting = "I\'m supposed to take down all these trees.",PerkName = "Axe",PerkLevel = 5,ShowName = true,  Name = "Worker", X = 12555, Y = (-2*300) + 4478, Z = 0 , Weapon = "Base.Axe",hasOrder = true, Orders = "Explore", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I tried to warn everyone, no one would listen.",PerkName = "Aiming",PerkLevel = 6,ShowName = true,  Name = "Private Manning", X = 12467, Y = (-2*300) + 4409, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol",  Patrolling=true, PX=0,PY=9, isHostile = false};
PresetSpawns[#PresetSpawns+1] = {Greeting="Hey! Your not allowed in here!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false, ShowName = true,  Name = "Soldier", X = 12497, Y = (-2*300) + 4366, Z = 3 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol", isHostile = true, Patrolling=true, PX=-4,PY=-7}; 
PresetSpawns[#PresetSpawns+1] = {Greeting="Hey! Your not allowed in here!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false, ShowName = true,  Name = "Soldier", X = 12537, Y = (-2*300) + 4368, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol", isHostile = true, Patrolling=true, PX=-25,PY=1}; 
	if isModEnabled("SurvivorQuests") then
			PresetSpawns[#PresetSpawns+1] = {Greeting="Hey! You're not allowed up here!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false, ShowName = true,  Name = "Soldier", X = 12505, Y = 3742, Z = 0 , Weapon = "Base.Pistol",hasOrder = true, Orders = "Patrol", isHostile = true, Patrolling=true, PX=0,PY=-7}; 
			PresetSpawns[#PresetSpawns+1] = {Greeting="Hey! You're not allowed over here!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false, ShowName = true,  Name = "Soldier", X = 12506, Y =3752, Z = 0 , Weapon = "Base.Pistol",hasOrder = true, Orders = "Guard", isHostile = true}; 
			PresetSpawns[#PresetSpawns+1] = {Greeting="Hey! You're not allowed in here!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false, ShowName = true,  Name = "Soldier", X = 12499, Y = 3764, Z = 0 , Weapon = "Base.Pistol",hasOrder = true, Orders = "Guard", isHostile = true}; 
			PresetSpawns[#PresetSpawns+1] = {Greeting="Hey! You're not allowed over here!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false, ShowName = true,  Name = "Soldier", X = 12459, Y = 3759, Z = 0 , Weapon = "Base.Pistol",hasOrder = true, Orders = "Guard", isHostile = true}; 
			PresetSpawns[#PresetSpawns+1] = {Greeting="Hey! You're not alloweed over here!",PerkName = "Aiming", PerkLevel = 5, NoParty = true, isFemale=false, ShowName = true,  Name = "Soldier", X = 12459, Y = 3778, Z = 0 , Weapon = "Base.Pistol",hasOrder = true, Orders = "Guard", isHostile = true}; 
			
	end

-- NORTH EAST BLOCKADE END

--AIZ Extra Spawns

		PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "You protect and serve. You patrol, walk the wall, watch out for the kids. If there\'s a conflict, you solve it. And people will listen to you",PerkName = "Aiming",PerkLevel = 3,isFemale = true, ShowName = true, Name = "Deanna", X = 13305, Y = 5848, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};
		
		PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "There\'s going to be a lot to remember. This is the beginning of this place. You should record all that. Along with everything I\'m gonna teach you about building things",PerkName = "Aiming",PerkLevel = 1,isFemale = false, ShowName = true, Name = "Reg", X = 13290, Y = 5856, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};
		
		PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "We were never safe here. But we didn\'t want to see that. We just wanted to dream. What happened to Aiden, that\'s all us!",PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Spencer", X = 13290, Y = 5832, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"),hasOrder = true, Orders = "Standing Ground", isHostile = false};
		
		PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Welcome to Alexandria! We need help!",PerkName = "Aiming",PerkLevel = 2,isFemale = false, ShowName = true, Name = "Alexandria Guard", X = 13371, Y = 5846, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = false};
		
		PresetSpawns[#PresetSpawns+1] = {InitGreeting = "It\'s not a camp. It\'s a community. I think you all would make valuable additions. But it\'s not my call",PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Aaron", X = 13370, Y = 5850, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};
		
		PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Welcome to Alexandria! We need help!",PerkName = "Aiming",PerkLevel = 2,isFemale = false, ShowName = true, Name = "Alexandria Guard", X = 13266, Y = 5845, Z = 1 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};
		
		PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Welcome to Alexandria! We need help!",PerkName = "Aiming",PerkLevel = 2,isFemale = false, ShowName = true, Name = "Alexandria Guard", X = 13327, Y = 5903, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};
		
		PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Help us please!", ShowName = true, Name = "Alexandria Citizen", X = 13291, Y = 5810, Z = 0 , Weapon = "Base.Plank",hasOrder = true, Orders = "Standing Ground", isHostile = false};
		
		PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Help us please!", ShowName = true, Name = "Alexandria Citizen", X = 13293, Y = 5878, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};
		
		PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Help us please!", ShowName = true, Name = "Alexandria Citizen", X = 13365, Y = 5812, Z = 0 , Weapon = "Base.Plank",hasOrder = true, Orders = "Standing Ground", isHostile = false};
		
		PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Help us please!", ShowName = true, Name = "Alexandria Citizen", X = 13339, Y = 5805, Z = 0 , Weapon = "Base.Plank",hasOrder = true, Orders = "Standing Ground", isHostile = false};
		
		PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Help us please!", ShowName = true, Name = "Alexandria Citizen", X = 13268, Y = 5773, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};
		

PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Welcome to Hilltop! We need help!",PerkName = "Blunt",PerkLevel = 2,isFemale = false, ShowName = true, Name = "Hilltop Guard", X = 13290, Y = 6677, Z = 0 , Weapon = getWeapon("Base.BaseballBat"),hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "You see what I have here? You see what I\'ve built? You don\'t have shit. Now, I\'m happy to help, I\'m a nice guy. But we can\'t just give things away for free", ShowName = true, Name = "Gregory", X = 13250, Y = 6642, Z = 1 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isFemale = false, isHostile = false};	
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We\'re on the same side - The living side. You\'re good people. And this is a good place", ShowName = true, Name = "Jesus", X = 13266, Y = 6654, Z = 0 , PerkName = "Blade",PerkLevel = 10, Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isFemale = false,isHostile = false};
PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Welcome to Hilltop! We need help!",PerkName = "Blunt",PerkLevel = 2,isFemale = true, ShowName = true, Name = "Hilltop Guard", X = 13254, Y = 6640, Z = 0 , Weapon = getWeapon("Base.BaseballBat"),hasOrder = true, Orders = "Standing Ground", isHostile = false};		
PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Welcome to Hilltop! We need help!",PerkName = "Blunt",PerkLevel = 2,isFemale = false, ShowName = true, Name = "Hilltop Guard", X = 13253, Y = 6647, Z = 0 , Weapon = getWeapon("Base.BaseballBat"),hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Please help us!", ShowName = true, Name = "Hilltop Citizen", X = 13261, Y = 6673, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};	
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Please help us!", ShowName = true, Name = "Hilltop Citizen", X = 13252, Y = 6682, Z = 0 , Weapon = "Base.Plank",hasOrder = true, Orders = "Standing Ground", isHostile = false};	
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Please help us!", ShowName = true, Name = "Hilltop Citizen", X = 13276, Y = 6637, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};	
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Please help us!", ShowName = true, Name = "Hilltop Citizen", X = 13243, Y = 6631, Z = 0 , Weapon = "Base.Plank",hasOrder = true, Orders = "Standing Ground", isHostile = false};	


PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Kill the intruders!",PerkName = "Aiming",PerkLevel = 5,isFemale = true, ShowName = true, Name = "Natania", X = 13436, Y = 6817, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Nobody\'s evil. They just decide to forget who they are",PerkName = "Aiming",PerkLevel = 5,isFemale = true, ShowName = true, Name = "Cyndie", X = 13429, Y = 6817, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Intruders!",PerkName = "Aiming",PerkLevel = 2,isFemale = true, ShowName = true, Name = "Oceanside Guard", X = 13474, Y = 6797, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};

PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Intruders!",isFemale = true, ShowName = true, Name = "Oceanside Citizen", X = 13424, Y = 6794, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Intruders!",isFemale = true, ShowName = true, Name = "Oceanside Citizen", X = 13408, Y = 6816, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Intruders!",isFemale = true, ShowName = true, Name = "Oceanside Citizen", X = 13457, Y = 6807, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Intruders!",isFemale = true, ShowName = true, Name = "Oceanside Citizen", X = 13429, Y = 6837, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Intruders!",isFemale = true, ShowName = true, Name = "Oceanside Citizen", X = 13445, Y = 6837, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true};


PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Welcome to Terminus. I\'m Gareth. A man\'s gotta eat",PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Gareth", X = 11753, Y = 9368, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "They look delicious!",isFemale = true, ShowName = true, Name = "Terminus Citizen", X = 11756, Y = 9367, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "They look delicious!",isFemale = false, ShowName = true, Name = "Terminus Citizen", X = 11763, Y = 9368, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "The signs... they were real. It was a sanctuary. People came and took this place. But we got out and we fought it and we got it back. And we heard the message. \'You\'re the butcher... or you\'re the cattle\'",PerkName = "Blade",PerkLevel = 2,isFemale = true, ShowName = true, Name = "Mary", X = 11750, Y = 9370, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "They look delicious!",isFemale = true, ShowName = true, Name = "Terminus Citizen", X = 11749, Y = 9346, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "They look delicious!",isFemale = false, ShowName = true, Name = "Terminus Citizen", X = 11789, Y = 9366, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "Since almost the start. When all the camps got overrun, people started finding this place. I think it was instinct, you know?",PerkName = "Aiming",PerkLevel = 3,isFemale = false, ShowName = true, Name = "Alex", X = 11749, Y = 9327, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "They look delicious!",isFemale = false, ShowName = true, Name = "Terminus Citizen", X = 11777, Y = 9313, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = true};

PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "You walk outside, you risk your life. You take a drink of water, you risk your life. Nowadays you breath and you risk your life. You don\'t have a choice. The only thing you can choose is what you\'re risking it for",PerkName = "Aiming",PerkLevel = 10,isFemale = false, ShowName = true, Name = "Hershel", X = 11350, Y = 12160, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1]  = {InitGreeting = "I know you look at me and you just see another dead girl. I\'m not Michonne. I\'m not Carol. I\'m not Maggie. I\'ve survived and you don\'t get it",PerkName = "Blade",PerkLevel = 10,isFemale = true, ShowName = true, Name = "Beth", X = 11346, Y = 12160, Z = 1 , Weapon = "Base.KitchenKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};
--for maggie, see further up

PresetSpawns[#PresetSpawns+1] = {InitGreeting = 'So now I\'m going to beat the HOLY FUCK FUCKING FUCKEDY FUCK out of you with my bat. Who I call \"Lucille\"',PerkName = "Blunt",PerkLevel = 10,isFemale = false, ShowName = true, Name = "Negan", X = 8818, Y = 12720, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 8821, Y = 12717, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 8811, Y = 12719, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 8816, Y = 12721, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 8814, Y = 12716, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 8816, Y = 12701, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 8800, Y = 12700, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 8820, Y = 12702, Z = 2 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 8811, Y = 12700, Z = 3 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 8817, Y = 12698, Z = 4 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 8814, Y = 12692, Z = 3 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 8811, Y = 12692, Z = 2 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 8816, Y = 12707, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 8814, Y = 12712, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "A Savior", X = 8833, Y = 12706, Z = 1 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Please help me get out of here!", ShowName = true, Name = "Concubine", X = 8810, Y = 12694, Z = 4 , Weapon = "Base.Plank",hasOrder = true, Orders = "Standing Ground", isHostile = false, isFemale=true};	
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Help me get out of here!", ShowName = true, Name = "Concubine", X = 8805, Y = 12703, Z = 4 , Weapon = "Base.KitchenKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false, isFemale=true};	
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Help me please!", ShowName = true, Name = "Concubine", X = 8806, Y = 12707, Z = 4 , Weapon = "Base.Plank",hasOrder = true, Orders = "Standing Ground", isHostile = false, isFemale=true};


PresetSpawns[#PresetSpawns+1] = {InitGreeting = 'No one can leave!',ShowName = true, Name = "Woodbury Guard", X = 8800, Y = 7976, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = 'No one can leave!',ShowName = true, Name = "Woodbury Guard", X = 8787, Y = 7976, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = 'No one can leave!',ShowName = true, Name = "Woodbury Guard", X = 8800, Y = 8067, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = 'Get Back!',ShowName = true, Name = "Woodbury Guard", X = 8793, Y = 7976, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = 'Stop right there!',ShowName = true, Name = "Woodbury Guard", X = 8805, Y = 7976, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "In this life now you kill or you die. Or you die and you kill",PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "The Governor", X = 8797, Y = 7975, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Woodbury Citizen", X = 8791, Y = 8037, Z = 0 , Weapon = "Base.Plank",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Woodbury Citizen", X = 8806, Y = 8031, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Woodbury Citizen", X = 8824, Y = 8048, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Woodbury Citizen", X = 8793, Y = 7996, Z = 0 , Weapon = "Base.KitchenKnife",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Woodbury Citizen", X = 8772, Y = 7975, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {ShowName = true, Name = "Woodbury Citizen", X = 8829, Y = 7975, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};


PresetSpawns[#PresetSpawns+1] = {InitGreeting = 'Welcome to the Kingdom! We need help!',ShowName = true, Name = "Kingdom Guard", X = 9742, Y = 10304, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We have got to strike now...or we will all be dead!",PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Richard", X = 9740, Y = 10306, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = 'Welcome to the Kingdom! We need help!',ShowName = true, Name = "Kingdom Guard", X = 9739, Y = 10305, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10}

PresetSpawns[#PresetSpawns+1] = {InitGreeting = 'Welcome to the Kingdom! We need help!',ShowName = true, Name = "Kingdom Guard", X = 9700, Y = 10240, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10}

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Help us!",ShowName = true, Name = "Kingdom Citizen", X = 9667, Y = 10434, Z = 0 , Weapon = "Base.Plank",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Help us!",ShowName = true, Name = "Kingdom Citizen", X = 9656, Y = 10346, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Help us!",ShowName = true, Name = "Kingdom Citizen", X = 9562, Y = 10296, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Help us!",ShowName = true, Name = "Kingdom Citizen", X = 9669, Y = 10267, Z = 0 , Weapon = "Base.KitchenKnife",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Help us!",ShowName = true, Name = "Kingdom Citizen", X = 9689, Y = 10317, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Help us!",ShowName = true, Name = "Kingdom Citizen", X = 9737, Y = 10307, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Help us!",ShowName = true, Name = "Kingdom Citizen", X = 9712, Y = 10343, Z = 0 , Weapon = "Base.Plank",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Help us!", ShowName = true, Name = "Kingdom Citizen", X = 9659, Y = 10393, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Patrol", isHostile = false, Patrolling=true, PX=0,PY=-10};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "There\'s a saying - the pessimist looks down and hits his head. The optimist looks up and loses his footing. The realist looks forward and adjusts his path accordingly. Welcome to the Kingdom!",PerkName = "Blunt",PerkLevel = 10,isFemale = false, ShowName = true, Name = "Ezekiel", X = 9672, Y = 10329, Z = 1 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Huh Huh Nice. The bananas look a\'peelin",PerkName = "Axe",PerkLevel = 10,isFemale = false, ShowName = true, Name = "Jerry", X = 9669, Y = 10328, Z = 1 , Weapon = "Base.Axe",hasOrder = true, Orders = "Standing Ground", isHostile = false};

--other
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "The Lord sent you here to finally punish me. I\'m damned. I was damned before. I always lock the doors. I always lock the doors",PerkName = "Blade",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Father Gabriel", X = 10323, Y = 12787, Z = 0, Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = " Nobody\'s got to die today",PerkName = "Axe",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Tyreese", X = 9206, Y = 12139, Z = 0 , Weapon = "Base.Axe",hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I move through town... I\'m quiet... like a fire",PerkName = "Aiming",PerkLevel = 5,isFemale = true, ShowName = true, Name = "Sasha", X = 9207, Y = 12143, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "The people around you dying...that\'s the hard part",PerkName = "Aiming",PerkLevel = 10,isFemale = true, ShowName = true, Name = "Rosita", X = 14421, Y = 4628, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "When you\'ve just emptied two barrels of a shotgun into the head of your favorite bartender, it\'s a pretty good bet that happy hour\'s over",PerkName = "Aiming",PerkLevel = 10,isFemale = false, ShowName = true, Name = "Ash", X = 11153, Y = 13053, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "As Mr. Sloan always says, there is no \'I\' in team, but there is an \'I\' in pie. And there\'s an \'I\' in meat pie. Anagram of meat is team... I don\'t know what he\'s talking about.",PerkName = "Blunt",PerkLevel = 10,isFemale = false, ShowName = true, Name = "Shaun", X = 14777, Y = 6811, Z = 0, Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Have a beer! It might be a bit warm, the cooler\'s off",PerkName = "Blunt",PerkLevel = 10,isFemale = false, ShowName = true, Name = "Ed", X = 14776, Y = 6813, Z = 0, Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "In a world where the dead are returning to life, the word \'trouble\' loses much of its meaning. Welcome to what\'s left of Fiddler\'s Green",PerkName = "Blade",PerkLevel = 3,isFemale = false, ShowName = true, Name = "Kaufman", X =  14901, Y = 5628, Z = 1, Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Isn\'t that what we\'re doing? Pretending to be alive? Put that thing away and put on your best Sunday smile. Just, just try to be friendly",PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Riley", X = 14897, Y = 5627, Z = 1 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "There are three things a man must do alone - be born, die and, well, we all know the other one",PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Cholo", X = 14908, Y = 5627, Z = 1 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Twenty years as a lifeguard teaches you to recognize people in trouble. I knew the second I saw this shitstorm, that I was in trouble and needed to save myself",PerkName = "Blade",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Mitch the Lifeguard", X = 14912, Y = 4676, Z = 1, Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Hey. Let me tell you something. You, uh, you have my permission. I ever turn into one of those things? Do me a favor, blow my fucking head off",PerkName = "Blunt",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Steve the Yuppie", X = 12638, Y = 7912, Z = 0, Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We\'ve got... we have to wait for Johnny. We better go out and get him. We have to go out and get Johnny. He\'s out there. Please, don\'t you hear me?",PerkName = "Blade",PerkLevel = 5,isFemale = true, ShowName = true, Name = "Barbara", X = 10595, Y = 7811, Z = 0, Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "That girl was screaming. Surely you know what a girl screaming sounds like? Those things don\'t make any noise. Anybody would know somebody needed help!",PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Ben", X = 10598, Y = 7807, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "They have overrun us, you know? We\'re in the minority now. Something like four hundred thousand to one, by my calculations. I haven\'t eaten. Is there food?",PerkName = "Blade",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Dr. Logan", X = (-9*300) + 7807, Y = 8589, Z = 3, Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'ll kill each and every one of you to stay alive! You hear me? The plan is you drink a nice tall glass of shut the fuck up!",PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "CJ the Security Guard", X = 7695, Y = 5775, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "My granddad was a priest in Trinidad. He used to tell us, \'When there\'s no more room in hell, the dead will walk the Earth\'",PerkName = "Blade",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Peter", X = 8571, Y = 10342, Z = 2, Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'m afraid. You\'re hypnotized by this place. All of you! You don\'t see that it\'s not a sanctuary, it\'s a prison! Let\'s just take what we need and get out of here!",PerkName = "Blade",PerkLevel = 5,isFemale = true, ShowName = true, Name = "Francine", X = 8578, Y = 10342, Z = 2, Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'m sure you didn\'t just tag along so we could sing Kumbiya together at some boyscout bonfire, then again, maybe you did",PerkName = "Aiming",PerkLevel = 10,isFemale = false, ShowName = true, Name = "Agent Leon", X = 10978, Y = 14185, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "In a survival situation, you must exist in a constant state of hope if you are to make it out alive. There\'s no room for bravado when you\'re alone in the bush",PerkName = "Blade",PerkLevel = 10,isFemale = false, ShowName = true, Name = "Les", X = 13526, Y = 10716, Z = 2, Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'m going to let you in on a little secret: every day, once a day, give yourself a present. Don\'t plan it; don\'t wait for it; just let it happen. It could be a new shirt in a men\'s store, a catnap in your office chair, or two cups of good, hot, black, coffee",PerkName = "Aiming",PerkLevel = 10,isFemale = false, ShowName = true, Name = "Agent Cooper", X = 2520, Y = 13260, Z = 1 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "It\'s time to evolve. That\'s why we\'re troubled. You know why our institutions have failed us, the church, the state, everything\'s failing? It\'s because, um – they\'re no longer relevant. We\'re supposed to keep evolving. Evolution did not end with us growing opposable thumbs. You do know that, right?",PerkName = "Blade",PerkLevel = 10,isFemale = false, ShowName = true, Name = "Bill", X = 11754, Y = 11422, Z = 3, Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "You\'ll have some tea... are you sure you don\'t want any? Aw go on, you\'ll have some. Go on go on go on go on go on go on go on go on GO ON!",PerkName = "Blade",PerkLevel = 5,isFemale = true, ShowName = true, Name = "Mrs Doyle the Church Lady", X = 12402, Y = 9379, Z = 1, Weapon = "Base.KitchenKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "For a while I was away, far away, in the hands of men with no faces. They broke me down, broke my story down, and convinced me it hadn\'t happened the way I remembered. Now, if you can help me, I, uh, I can make it worth your while",PerkName = "Blunt",PerkLevel = 10,isFemale = false, ShowName = true, Name = "Kolchak the Reporter", X = 9136, Y = 15565, Z = 1 , Weapon = "Base.Plank",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We don\'t have decent radio gear. Now, you\'re telling me that you don\'t have the shit you need? We\'re running low on ammunition. We\'re running low on men for Christ\'s sake!",PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Captain Rhodes", X = 13415, Y = 13927, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Pvt. Steel", X = 13413, Y = 13926, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Pvt. Rickles", X = 13413, Y = 13928, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"),hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "If it bleeds, we can kill it.",PerkName = "Aiming",PerkLevel = 10,isFemale = false, ShowName = true, Name = "Dutch", X = (-4*300) + 8277, Y = (2*300) + 9567, Z = 1, Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Well, when you come to think about it, all that a person has is other folks. And I reckon there\'s a few folks left in these parts that could use a helping hand",PerkName = "Blunt",PerkLevel = 10,isFemale = false, ShowName = true, Name = "Grizzly the Bear Tamer", X = 4781, Y = 12711, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I\'m a man with a van. If you have a van, we could be men with ven... You got any olives? I\'ve gone fucking mental for olives... I\'m craving the salt you see...",PerkName = "Blade",PerkLevel = 10,isFemale = false, ShowName = true, Name = "Simon", X = 2229, Y = 13705, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Red phosphorus in the presence of moisture and accelerated by heat yields phosphorus hydride. Phosphine gas. One good wiff, and phewf...",PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Walter", X = 11556, Y = 6120, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Help me! You\'re my only hope!",PerkName = "Aiming",PerkLevel = 5,isFemale = true, ShowName = true, Name = "Leia", X = 9880, Y = 7693, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Welcome to our gated community. We need help. Once you are done clearing up the vermin here, I will make you some tea that will help you relax",PerkName = "Blade",PerkLevel = 3,isFemale = true, ShowName = true, Name = "Missy", X = 9748, Y = 11475, Z = 0 , Weapon = "Base.KitchenKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "You know what I say? I say one down, a couple hundred thousand to go. I don\'t mean to get on my high horse, but I\'m telling you I do not like the zombies, I\'m sick of it, they\'re taking over, they\'re like rats, they\'re destroying the ecosystem. I see a dead zombie on the side of the road and I think \'That\'s a start\'",PerkName = "Blunt",PerkLevel = 3,isFemale = false, ShowName = true, Name = "Dean", X = 9742, Y = 11472, Z = 0 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Vegetarians are cool. All I eat are vegetarians - except for the occasional mountain lion or survivor steak",PerkName = "Aiming",PerkLevel = 3,isFemale = false, ShowName = true, Name = "Ted", X = 13136, Y = 7933, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Hey, I\'m \'Hawk\' from the TV Show \'American Gladiators\'. Great to see someone alive. My fans used to just want autographs, now they really want a piece of me!",PerkName = "Blunt",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Hawk", X = 8845, Y = 10713, Z = 1 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Standing Ground", isHostile = false};

---
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We\'ve been overrun!", ShowName = true, Name = "A Savior", X = 10569, Y = 14463, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Who left the gates open!!?", ShowName = true, Name = "A Savior", X = 10572, Y = 14454, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "What the hell! Where did all these zombies come from?", ShowName = true, Name = "A Savior", X = 10623, Y = 14468, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "That dipshit who was on gate duty split!", ShowName = true, Name = "A Savior", X = 10560, Y = 14495, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "When we catch who is responsible for this, he'\s going into the arena!", ShowName = true, Name = "A Savior", X = 10606, Y = 14514, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Let'\s not get unnecessarily emotional here. We need to clean this mess up and get those gates closed!", ShowName = true, Name = "A Savior", X = 10573, Y = 14563, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"),hasOrder = true, Orders = "Explore", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We\'ve been overrun!", ShowName = true, Name = "A Savior", X = 10581, Y = 14507, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Who left the gates open!!?", ShowName = true, Name = "A Savior", X = 10594, Y = 14541, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "You let those zombies in! Now you die!", ShowName = true, Name = "I\'m Negan", X = 10600, Y = 14542, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Explore", isHostile = true};


---
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We\'ve been overrun!", ShowName = true, Name = "A Scavenger", X = 8586, Y = 10625, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Who left the gates open!!?", ShowName = true, Name = "A Scavenger", X = 8573, Y = 10603, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "What the hell! Where did all these zombies come from?", ShowName = true, Name = "A Scavenger", X = 8546, Y = 10611, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "That dipshit who was on gate duty split!", ShowName = true, Name = "A Scavenger", X = 8516, Y = 10620, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "When we catch who is responsible for this, he'\s going into the arena!", ShowName = true, Name = "A Scavenger", X = 8559, Y = 10664, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Let'\s not get unnecessarily emotional here. We need to clean this mess up and get those gates closed!", ShowName = true, Name = "A Scavenger", X = 8562, Y = 10638, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"),hasOrder = true, Orders = "Explore", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We take, we do not bother, our way", ShowName = true, isFemale = true, Name = "Jadis, Scavengers Leader", X = 8565, Y = 10638, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Explore", isHostile = true};


--Riverside AIZ Extra Spawns
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Look at you. Getting all sentimental. We are the means to each other\'s end. We help each other get places. It is a useful arrangement. Let\'s not go confusing things with vague terms like friend",PerkName = "Blunt",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Victor", X = 5735, Y = 6448, Z = 1 , Weapon = "Base.BaseballBat",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "To kill the monster, you become the monster. You stare into the abyss, the abyss stares back. It is alive... It is hungry... And it devours",PerkName = "Blade",PerkLevel = 5,isFemale = true, ShowName = true, Name = "Alicia", X = 5421, Y = 5877, Z = 0 , Weapon = "Base.HuntingKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "I have a son. He watches me. Waiting to see how I\'ll face it, the violence. I tried so hard not to be part of it. I knew it would change me. And that he\'d see it. I can\'t tell you what you want to hear",PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Travis", X = 6281, Y = 5448, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "We\'ve lost loved ones, too. But we can stop that. We can start over. Both of our families. We have mutual interests. The next group that finds this place, and others will find this place, they could be cruel. We\'ve seen that. They\'re not gonna ask for your help. They won\'t try to reason. They\'re not gonna talk. They\'re gonna take and they\'ll kill",PerkName = "Blade",PerkLevel = 5,isFemale = true, ShowName = true, Name = "Madison", X = 6275, Y = 5448, Z = 0 , Weapon = "Base.KitchenKnife",hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "When I was on the beach, I came face-to-face with one of them and I didn\'t feel fear, I didn\'t feel hate. I just knew I wasn\'t going to die. Not there, not that way. I move among them. Invisible. I will not die",PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Nick", X = 6574, Y = 5365, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "My father told me not to have hatred in my heart. He said that men do these things not because of evil. They do evil because of fear. And at that moment, I realized my father is a fool, for believing there was a difference. If it happens, it will happen quickly and you must be prepared",PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "Daniel", X = 7232, Y = 8374, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Get out of here!", ShowName = true, Name = "A Scavenger", X = 6397, Y = 5751, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "You want some?", ShowName = true, Name = "A Scavenger", X = 6392, Y = 5769, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"),hasOrder = true, Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "You are dead!", ShowName = true, Name = "A Scavenger", X = 6371, Y = 5770, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Guard", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "What are you doing here?", ShowName = true, Name = "A Scavenger", X = 6370, Y = 5746, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"),hasOrder = true, Orders = "Guard", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Get out of here!", ShowName = true, Name = "Thug", X = 12213, Y = 6479, Z = 0 , Weapon = getWeapon("Base.Shotgun"),hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "You want some?", ShowName = true, Name = "Thug", X = 12213, Y = 6483, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"),hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "You are dead!", ShowName = true, Name = "Thug", X = 12216, Y = 6479, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "What are you doing here?", ShowName = true, Name = "Thug", X = 12216, Y = 6483, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"),hasOrder = true, Orders = "Explore", isHostile = true};
PresetSpawns[#PresetSpawns+1] = {InitGreeting = "Kill Them!", ShowName = true, Name = "Thug Leader", X = 12219, Y = 6481, Z = 0 , Weapon = getWeapon("Base.HuntingRifle"),hasOrder = true, Orders = "Explore", isHostile = true};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "How did you know I am a nurse? I\'m looking for John. He\'s a real nice man, last seen in Lobii City. Have you seen him?",PerkName = "Aiming",PerkLevel = 5,isFemale = true, ShowName = true, Name = "June", X = 3720, Y = 6483, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "What\'s your story? Where did you come from? What\'s your name?",PerkName = "Aiming",PerkLevel = 5,isFemale = true, ShowName = true, Name = "Althea", X = 15622, Y = 14628, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};

PresetSpawns[#PresetSpawns+1] = {InitGreeting = "If we don\'t believe things will get better, if we don\'t believe that we can make them that way, if we don\'t fight for every day, we\'re no different than the passed",PerkName = "Aiming",PerkLevel = 5,isFemale = false, ShowName = true, Name = "John", X = 9565, Y = 17212, Z = 0 , Weapon = getWeapon("Base.Pistol"),hasOrder = true, Orders = "Standing Ground", isHostile = false};


SurvivorCount = 1;
local sc = 1;
RPresetSpawns = {};
while PresetSpawns[sc] do
	if PresetSpawns[sc].Z == nil then PresetSpawns[sc].Z = 0 end
	local pindex = PresetSpawns[sc].X .. PresetSpawns[sc].Y .. PresetSpawns[sc].Z;
	--print("pindex:"..pindex.." for index: "..sc);
	RPresetSpawns[pindex] = PresetSpawns[sc];
	RPresetSpawns[pindex].ID = sc;
	sc = sc + 1;
end

end
Events.OnGameTimeLoaded.Add(AIZSuperSurvivorsInit);