-- ComputerMonitorGUI.lua

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ComputerMonitorGUI"
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.5, 0, 0.5, 0)
frame.Position = UDim2.new(0.25, 0, 0.25, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Parent = screenGui

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0.1, 0, 0.1, 0)
closeButton.Position = UDim2.new(0.9, 0, 0, 0)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.BackgroundColor3 = Color3.new(1, 0, 0)
closeButton.BorderSizePixel = 0
closeButton.Parent = frame

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

local function createCameraButton(cameraName, position)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.2, 0, 0.1, 0)
    button.Position = position
    button.Text = cameraName
    button.TextColor3 = Color3.new(1, 1, 1)
    button.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    button.BorderSizePixel = 0
    button.Parent = frame

    button.MouseButton1Click:Connect(function()
        local camera = workspace.Cameras:FindFirstChild(cameraName)
        if camera then
            local cameraPart = camera:FindFirstChild("CameraPart")
            if cameraPart then
                local camera = Instance.new("Camera")
                camera.CFrame = cameraPart.CFrame
                camera.Parent = workspace
                workspace.CurrentCamera = camera
            end
        end
    end)
end

for i = 1, 6 do
    local cameraName = "Cam" .. i
    local position = UDim2.new(0.1, 0, 0.2 + (i - 1) * 0.15, 0)
    createCameraButton(cameraName, position)
end

local function onClickComputerMonitor(monitor)
    if monitor.Name == "ComputerMonitor" then
        screenGui.Enabled = true
    end
end

workspace.PizzeriaOffice.DescendantAdded:Connect(function(descendant)
    if descendant:IsA("ClickDetector") then
        descendant.MouseClick:Connect(function()
            onClickComputerMonitor(descendant.Parent)
        end)
    end
end)

for _, descendant in ipairs(workspace.PizzeriaOffice:GetDescendants()) do
    if descendant:IsA("ClickDetector") then
        descendant.MouseClick:Connect(function()
            onClickComputerMonitor(descendant.Parent)
        end)
    end
end