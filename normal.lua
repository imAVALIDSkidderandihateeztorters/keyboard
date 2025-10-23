local ReplicatedStorage = game:GetService("ReplicatedStorage")

local event = ReplicatedStorage:FindFirstChild("SoundPackChanged")

if event then
    pcall(function()
        event:Fire("None")
        event:Fire("Clicky")
    end)
end

for _, obj in ipairs(game:GetDescendants()) do
    if obj:IsA("Sound") and obj.Name == "Creamy" then
        obj:Stop()
    end
end

