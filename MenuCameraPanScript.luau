-- initalizations
local plr = game:GetService("Players").LocalPlayer
local cameraPart = workspace:WaitForChild("CameraModel"):WaitForChild("CamPart")
print(workspace.CurrentCamera.CameraType)

task.wait()
workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
workspace.CurrentCamera.CFrame = cameraPart.CFrame

-- variables
local cam = workspace.CurrentCamera
local mouse = game:GetService("Players").LocalPlayer:GetMouse()

local maxTilt = 2.5

-- camera set function
game:GetService("RunService").RenderStepped:Connect(function()
	if 	workspace.CurrentCamera.CameraType == Enum.CameraType.Scriptable then
	cam.CFrame = cameraPart.CFrame * CFrame.Angles(
		math.rad((((mouse.Y - mouse.ViewSizeY / 2) / mouse.ViewSizeY)) * -maxTilt),
		math.rad((((mouse.X - mouse.ViewSizeX / 2) / mouse.ViewSizeX)) * -maxTilt),
		0
	)
	end
end)
