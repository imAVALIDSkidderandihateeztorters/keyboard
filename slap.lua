--// CONFIG
_G.SlapRemoverEnabled = true -- toggle ON/OFF here

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Function to remove "NormalSlap"
local function removeNormalSlap()
	if not _G.SlapRemoverEnabled then return end

	for _, item in pairs(player.Backpack:GetChildren()) do
		if item:IsA("Tool") and item.Name == "NormalSlap" then
			item:Destroy()
		end
	end

	local character = player.Character
	if character then
		for _, item in pairs(character:GetChildren()) do
			if item:IsA("Tool") and item.Name == "NormalSlap" then
				item:Destroy()
			end
		end
	end
end

-- Initial cleanup
removeNormalSlap()

-- Watch for new ones
player.Backpack.ChildAdded:Connect(function(child)
	if _G.SlapRemoverEnabled and child:IsA("Tool") and child.Name == "NormalSlap" then
		child:Destroy()
	end
end)

player.CharacterAdded:Connect(function(char)
	char.ChildAdded:Connect(function(child)
		if _G.SlapRemoverEnabled and child:IsA("Tool") and child.Name == "NormalSlap" then
			child:Destroy()
		end
	end)
end)
