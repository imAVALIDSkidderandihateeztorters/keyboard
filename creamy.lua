local ReplicatedStorage = game:GetService("ReplicatedStorage")

local SoundPackChanged = ReplicatedStorage:FindFirstChild("SoundPackChanged")

if SoundPackChanged then
	if SoundPackChanged:IsA("RemoteEvent") then
		SoundPackChanged:FireServer("Creamy")
	elseif SoundPackChanged:IsA("BindableEvent") then
		SoundPackChanged:Fire("Creamy")
	else
		pcall(function()
			if SoundPackChanged.FireServer then
				SoundPackChanged:FireServer("Creamy")
			elseif SoundPackChanged.Fire then
				SoundPackChanged:Fire("Creamy")
			end
		end)
	end
end
