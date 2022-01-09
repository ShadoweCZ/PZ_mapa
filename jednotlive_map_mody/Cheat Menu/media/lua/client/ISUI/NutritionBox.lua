ISUINutritionWindow = ISCollapsableWindow:derive("ISUINutritionWindow");

function ISUINutritionWindow:initialise()
	ISCollapsableWindow.initialise(self);
	self.NutrBar = ISTextEntryBox:new("", self:getWidth() / 12, self:getHeight() / 4, self:getWidth() / 1.18, self:getHeight() / 4.4);
	self.NutrBar:initialise();
	self.NutrBar:instantiate();
	self.NutrBar:setMultipleLine(true)
	self.NutrBar.javaObject:setMaxLines(1);
	self:addChild(self.NutrBar);
	self.NutrButton = ISButton:new(self:getWidth() / 12, self:getHeight() / 2.15, self:getWidth() / 1.18, self:getHeight() / 3, "Set", function() CheatCoreCM.editNutrition(CheatCoreCM.NutrType) end);
	self.NutrButton:initialise();
	self.NutrButton:instantiate();
	self.NutrButton.borderColor = {r=0.4, g=0.4, b=0.4, a=1.0}
	self:addChild(self.NutrButton);
end

function NutritionWindowCreate() -- basic UI setup
	ISUINutritionWindow = ISUINutritionWindow:new(getCore():getScreenWidth() - 1050, getCore():getScreenHeight() - 350, getCore():getScreenWidth() / 10, getCore():getScreenHeight() / 10);
	ISUINutritionWindow:initialise();
	ISUINutritionWindow:addToUIManager();
	ISUINutritionWindow:setVisible(false);
end

function CheatCoreCM.editNutrition(nutrType)
	CheatCoreCM.NutrType = nutrType -- this variable is passed as an arg to this function every time the Set button is clicked. This is so that it "remembers" what it's supposed to be editing
	ISUINutritionWindow.title = "Edit "..CheatCoreCM.NutrType -- set the title as a reminder of what nutrient type is selected for editing if the user forgets
	if not ISUINutritionWindow:getIsVisible() then -- make sure that the nutrition-editing code isn't run yet
		ISUINutritionWindow:setVisible(true) -- set the nutrition window to visible
	else -- if it's already visible, run the code as this function is only called again by the Set button which would mean that the user has to click Set for this check to pass
		--loadstring("print(".."getPlayer():getNutrition():get"..nutrType.."())")()
		loadstring("getPlayer():getNutrition():set"..nutrType.."("..ISUINutritionWindow.NutrBar:getText()..")")() -- bit of a codehacky way to do this, but it works.
		getPlayer():getNutrition():update() -- finally, resync the nutrition values
	end
end

function CheatCoreCM.printNutrition()
	local NutrTable = {
		"Calories",
		"Carbohydrates",
		"Lipids",
		"Proteins",
		"Weight"
	}
	for k,v in ipairs(NutrTable) do
		loadstring("print('"..v..":'..getPlayer():getNutrition():get"..v.."())")()
	end
end

function CheatCoreCM.becomeHealthy()
	local NutrTable = { -- it goes NutritionType, then the healthy value for it
		"Calories",
		800,
		"Carbohydrates",
		500,
		"Lipids",
		500,
		"Proteins",
		500,
		"Weight",
		80
	}
	for i = 1,#NutrTable do	
		if (i % 2) ~= 0 then -- if it is an uneven number then continue
			loadstring("getPlayer():getNutrition():set"..NutrTable[i].."("..NutrTable[i + 1]..")")()
			--print("print('"..NutrTable[i]..":'..getPlayer():getNutrition():set"..NutrTable[i].."("..NutrTable[i + 1].."))")
		end
	end
	getPlayer():getNutrition():update()
	--CheatCoreCM.printNutrition()
end


Events.OnGameStart.Add(NutritionWindowCreate);