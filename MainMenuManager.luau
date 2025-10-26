-- initalizations
local camera = workspace.CurrentCamera
local CamModel = workspace:WaitForChild("CameraModel")
local CameraPart = CamModel:WaitForChild("CamPart")

local SoundService = game:GetService("SoundService")
local MenuSounds = SoundService:WaitForChild("MenuSounds")
local GameSounds = SoundService:WaitForChild("GameSounds")
local gameMusic = GameSounds.Gymnopedie
local music = MenuSounds.BgMusic
local click = MenuSounds.Click
local woosh = MenuSounds.Woosh

local plr = game.Players.LocalPlayer
local plrGui = plr:WaitForChild("PlayerGui")
local hatInvUI = plrGui:WaitForChild("HatInventory")

local soundTween = game:GetService("TweenService"):Create(music, TweenInfo.new(0.85), {Volume = 0}) 
local soundTween2 = game:GetService("TweenService"):Create(gameMusic, TweenInfo.new(0.85), {Volume = 0.5}) 

camera.CameraType = Enum.CameraType.Scriptable
camera.CFrame = CameraPart.CFrame

hatInvUI.Enabled = false

local db = false

-- transition function
script.Parent.PlayButton.MouseButton1Click:Connect(function()
	click:Play()
	if db == false then
		db = true
		script.Parent.PlayButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
		task.wait(0.2)
		script.Parent.PlayButton.ImageColor3 = Color3.fromRGB(250, 250, 250)
    -- i couldve created a tweenservice variable and declutter this but i didnt, i plan to abstract this later
		game:GetService("TweenService"):Create(script.Parent.Transition, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Position = UDim2.new(0,0,0,0)}):Play()
		woosh:Play()
		task.wait(1.2)
		camera.CameraType = Enum.CameraType.Custom
		script.Parent.PlayButton.Visible = false
		script.Parent.Title.Visible = false
		script.Parent.ImageLabel.Visible = false

		game:GetService("TweenService"):Create(script.Parent.Transition, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(-1,0,0,0)}):Play()
		gameMusic.Playing = true
		soundTween:Play()
		soundTween2:Play()
		hatInvUI.Enabled = true
		task.wait(0.85)
		music.Playing = false
		task.wait(1)
		script.Parent.Enabled = false
	end
end)
