-- READ ME --
-- this script is written as such for testing purposes. i plan to make this function better later with data saves, remote events, etc. 
-- this is in no way the correct way to write an inventory system

-- services
local TweenService = game:GetService("TweenService")
-- holders
local uiFrame = script.Parent.Frame
local scrollFrame = uiFrame.ScrollingFrame
-- buttons
local openButton = uiFrame.OpenButton
local closeButton = uiFrame.CloseButton
local hat1 = scrollFrame.Hat1
local hat2 = scrollFrame.Hat2
local hat3 = scrollFrame.Hat3

local hat = game.Players.LocalPlayer.Character:WaitForChild("Hat")

local beanie = game.Players.LocalPlayer.Character:WaitForChild("Beanie")
local beanieBand = beanie:WaitForChild("Cylinder")
local beanieBase = beanie:WaitForChild("Cylinder.001")
local beaniePuff = beanie:WaitForChild("Sphere")
-- tweens
local tweenOpen = TweenService:Create(uiFrame, TweenInfo.new(0.7, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Position = UDim2.new(0.799, 0, 0.217, 0)})
local tweenClose = TweenService:Create(uiFrame, TweenInfo.new(0.7, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Position = UDim2.new(1, 0, 0.217, 0)})
-- initializations
closeButton.Visible = false
closeButton.Interactable = false
-- initilization for testing purposes
hat.Transparency = 1
beanieBand.Transparency = 1
beanieBase.Transparency = 1
beaniePuff.Transparency = 1
-- functions
openButton.MouseButton1Click:Connect(function()
	tweenOpen:Play()
	openButton.Visible = false
	openButton.Interactable = false
	closeButton.Visible = true
	closeButton.Interactable = true
end)

closeButton.MouseButton1Click:Connect(function()
	tweenClose:Play()
	closeButton.Visible = false
	closeButton.Interactable = false
	openButton.Visible = true
	openButton.Interactable = true
end)

hat1.MouseButton1Click:Connect(function()
	print("hat 1 selected")
	hat.Transparency = 1
	beanieBand.Transparency = 1
	beanieBase.Transparency = 1
	beaniePuff.Transparency = 1
end)

hat2.MouseButton1Click:Connect(function()
	print("hat 2 selected")
	hat.Transparency = 0
	beanieBand.Transparency = 1
	beanieBase.Transparency = 1
	beaniePuff.Transparency = 1
end)

hat3.MouseButton1Click:Connect(function()
	print("hat 3 selected")
	hat.Transparency = 1
	beanieBand.Transparency = 0
	beanieBase.Transparency = 0
	beaniePuff.Transparency = 0
end)
