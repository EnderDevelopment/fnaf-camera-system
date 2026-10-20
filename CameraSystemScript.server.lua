-- Camera System Script

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function onPlayerAdded(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    local function onMonitorClicked(monitor)
        local cameraGui = script:FindFirstChild("CameraGUI")
        if cameraGui then
            cameraGui:Clone().Parent = player:WaitForChild("PlayerGui")
        end
    end

    local function onCameraSelected(cameraName)
        local cameras = workspace:FindFirstChild("Cameras")
        if cameras then
            local camera = cameras:FindFirstChild(cameraName)
            if camera then
                local cameraPart = camera:FindFirstChild("CameraPart")
                if cameraPart then
                    local newCamera = Instance.new("Camera")
                    newCamera.CFrame = cameraPart.CFrame
                    newCamera.Parent = workspace
                    workspace.CurrentCamera = newCamera

                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Falling, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
                end
            end
        end
    end

    local function onCloseButtonClicked()
        workspace.CurrentCamera = workspace:FindFirstChildOfClass("Camera")
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Falling, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
    end

    local function onMonitorClicked(monitor)
        local cameraGui = script:FindFirstChild("CameraGUI")
        if cameraGui then
            cameraGui:Clone().Parent = player:WaitForChild("PlayerGui")
        end
    end

    local function onCameraSelected(cameraName)
        local cameras = workspace:FindFirstChild("Cameras")
        if cameras then
            local camera = cameras:FindFirstChild(cameraName)
            if camera then
                local cameraPart = camera:FindFirstChild("CameraPart")
                if cameraPart then
                    local newCamera = Instance.new("Camera")
                    newCamera.CFrame = cameraPart.CFrame
                    newCamera.Parent = workspace
                    workspace.CurrentCamera = newCamera

                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Falling, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
                end
            end
        end
    end

    local function onCloseButtonClicked()
        workspace.CurrentCamera = workspace:FindFirstChildOfClass("Camera")
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Falling, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
    end

    local function onMonitorClicked(monitor)
        local cameraGui = script:FindFirstChild("CameraGUI")
        if cameraGui then
            cameraGui:Clone().Parent = player:WaitForChild("PlayerGui")
        end
    end

    local function onCameraSelected(cameraName)
        local cameras = workspace:FindFirstChild("Cameras")
        if cameras then
            local camera = cameras:FindFirstChild(cameraName)
            if camera then
                local cameraPart = camera:FindFirstChild("CameraPart")
                if cameraPart then
                    local newCamera = Instance.new("Camera")
                    newCamera.CFrame = cameraPart.CFrame
                    newCamera.Parent = workspace
                    workspace.CurrentCamera = newCamera

                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Falling, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, false)
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
                end
            end
        end
    end

    local function onCloseButtonClicked()
        workspace.CurrentCamera = workspace:FindFirstChildOfClass("Camera")
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Falling, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
    end

    player.CharacterAdded:Connect(function(character)
        humanoid = character:WaitForChild("Humanoid")
    end)

    local monitor = workspace:FindFirstChild("ComputerMonitor")
    if monitor then
        monitor.ClickDetector.MouseClick:Connect(onMonitorClicked)
    end

    local cameraGui = script:FindFirstChild("CameraGUI")
    if cameraGui then
        cameraGui.CloseButton.MouseButton1Click:Connect(onCloseButtonClicked)
        for _, button in ipairs(cameraGui:GetChildren()) do
            if button:IsA("TextButton") and button.Name:match("^Cam%d$") then
                button.MouseButton1Click:Connect(function()
                    onCameraSelected(button.Name)
                end)
            end
        end
    end
end

Players.PlayerAdded:Connect(onPlayerAdded)

-- Create Camera GUI
local cameraGui = Instance.new("ScreenGui")
cameraGui.Name = "CameraGUI"
cameraGui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 300)
frame.Position = UDim2.new(0.5, -100, 0.5, -150)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.Parent = cameraGui

local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 50, 0, 30)
closeButton.Position = UDim2.new(0.5, -25, 0, 260)
closeButton.Text = "Close"
closeButton.Parent = frame

local cam1Button = Instance.new("TextButton")
cam1Button.Name = "Cam1"
cam1Button.Size = UDim2.new(0, 100, 0, 30)
cam1Button.Position = UDim2.new(0.5, -50, 0, 10)
cam1Button.Text = "Cam1"
cam1Button.Parent = frame

local cam2Button = Instance.new("TextButton")
cam2Button.Name = "Cam2"
cam2Button.Size = UDim2.new(0, 100, 0, 30)
cam2Button.Position = UDim2.new(0.5, -50, 0, 50)
cam2Button.Text = "Cam2"
cam2Button.Parent = frame

local cam3Button = Instance.new("TextButton")
cam3Button.Name = "Cam3"
cam3Button.Size = UDim2.new(0, 100, 0, 30)
cam3Button.Position = UDim2.new(0.5, -50, 0, 90)
cam3Button.Text = "Cam3"
cam3Button.Parent = frame

local cam4Button = Instance.new("TextButton")
cam4Button.Name = "Cam4"
cam4Button.Size = UDim2.new(0, 100, 0, 30)
cam4Button.Position = UDim2.new(0.5, -50, 0, 130)
cam4Button.Text = "Cam4"
cam4Button.Parent = frame

local cam5Button = Instance.new("TextButton")
cam5Button.Name = "Cam5"
cam5Button.Size = UDim2.new(0, 100, 0, 30)
cam5Button.Position = UDim2.new(0.5, -50, 0, 170)
cam5Button.Text = "Cam5"
cam5Button.Parent = frame

local cam6Button = Instance.new("TextButton")
cam6Button.Name = "Cam6"
cam6Button.Size = UDim2.new(0, 100, 0, 30)
cam6Button.Position = UDim2.new(0.5, -50, 0, 210)
cam6Button.Text = "Cam6"
cam6Button.Parent = frame

cameraGui.Parent = script
