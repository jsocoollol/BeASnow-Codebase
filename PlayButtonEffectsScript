-- initializations
local button = script.Parent.PlayButton
local SoundService = game:GetService("SoundService")
local MenuSounds = SoundService:WaitForChild("MenuSounds")
local hoverSound = MenuSounds.Hover

local db = false
-- mouse hovering function
button.MouseEnter:Connect(function()
	hoverSound:Play()
	if db == false then
		db = true
		button.ImageColor3 = Color3.fromRGB(199, 224, 255)
		button:TweenSize(UDim2.new(0.300, 0, 0.250, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.25)
		button:TweenPosition(UDim2.new(0.349, 0,0.661, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.25)
	end
	
end)
-- mouse no longer hovering function
button.MouseLeave:Connect(function()
	db = false
	button.ImageColor3 = Color3.fromRGB(250, 250, 250)
	button:TweenSize(UDim2.new(0.278, 0, 0.201, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.25)
	button:TweenPosition(UDim2.new(0.361, 0, 0.706, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.25)
end)
