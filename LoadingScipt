-- initializations
local contentProvider = game:GetService("ContentProvider")
local ui = script:WaitForChild("ScreenGui"):Clone()

local SoundService = game:GetService("SoundService")
local MenuSounds = SoundService:WaitForChild("MenuSounds")
local music = MenuSounds.BgMusic
local woosh = MenuSounds.Woosh

music.Playing = true

local ts = game:GetService("TweenService")
local transitionIn = ts:Create(ui:WaitForChild("Transition"), TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Position = UDim2.new(0,0,0,0)})
local transitionOut = ts:Create(ui:WaitForChild("Transition"), TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(1,0,0,0)})
repeat task.wait() until game:IsLoaded()

local assets = game:GetDescendants()
local maxAssets = #assets

local plr = game.Players.LocalPlayer
local plrGui = plr:WaitForChild("PlayerGui")

ui.Parent = plrGui	

local mainMenu = plrGui:WaitForChild("MainMenu")
local title = mainMenu.Title
local transition = mainMenu.Transition
local image = mainMenu.ImageLabel
local button = mainMenu.PlayButton

local skip = ui.Frame:WaitForChild("SkipButton")
local warning = skip:WaitForChild("Warning")

title.Visible = false
transition.Visible = false
image.Visible = false
button.Visible = false

local skipping = false

local loadingText = ui.Frame.Loading
local loadingTextScript = ui.Frame.Loading.LocalScript

-- skip button function
skip.MouseButton1Click:Connect(function()
	skipping = true -- set skipping boolean to true

  -- transition comes early
	loadingTextScript.Enabled = false
	loadingText.Text = "Done!"
	task.wait(0.6)
	
	transitionIn:Play()
	woosh:Play()
	task.wait(1)

	ui.Frame.Visible = false
	transitionOut:Play()

	title.Visible = true
	transition.Visible = true
	image.Visible = true
	button.Visible = true
end)

-- asset loader loop
for i, assetToLoad in assets do
	contentProvider:PreloadAsync({assetToLoad})
	ui:WaitForChild("Frame"):WaitForChild("Assets").Text = i.."/"..maxAssets
	if skipping == true then -- breaks loop if the skipping boolean is true (player is skipping)
		print("Skipping...")
		break
	end
end

-- end code
loadingTextScript.Enabled = false
loadingText.Text = "Done!"
task.wait(0.6)

transitionIn:Play()
woosh:Play()
task.wait(1)

ui.Frame.Visible = false
transitionOut:Play()

title.Visible = true
transition.Visible = true
image.Visible = true
button.Visible = true
