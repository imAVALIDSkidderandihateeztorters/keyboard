local Players = game:GetService("Players")
local player = Players.LocalPlayer
local desiredSpeed = 16
local defaultSpeed = 16
local speedEnabled = true -- toggle variable

-- Function to apply speed
local function applySpeed(humanoid)
    if speedEnabled then
        humanoid.WalkSpeed = desiredSpeed
    else
        humanoid.WalkSpeed = defaultSpeed
    end
end

-- Turn speed ON
function speedOn()
    speedEnabled = true
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        applySpeed(player.Character.Humanoid)
    end
end

-- Turn speed OFF
function speedOff()
    speedEnabled = false
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        applySpeed(player.Character.Humanoid)
    end
end

-- Run once when the script starts
if player.Character and player.Character:FindFirstChild("Humanoid") then
    applySpeed(player.Character.Humanoid)
end

-- Keep forcing the speed every frame for new characters
player.CharacterAdded:Connect(function(character)
    local humanoid = character:WaitForChild("Humanoid")
    applySpeed(humanoid)
    humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        applySpeed(humanoid)
    end)
end)

-- Also monitor current character
if player.Character and player.Character:FindFirstChild("Humanoid") then
    local humanoid = player.Character.Humanoid
    humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        applySpeed(humanoid)
    end)
end
