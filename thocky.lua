local ReplicatedStorage = game:GetService("ReplicatedStorage")

local SoundPackChanged = ReplicatedStorage:FindFirstChild("SoundPackChanged")

if SoundPackChanged then
	if SoundPackChanged:IsA("RemoteEvent") then
		SoundPackChanged:FireServer("Thocky")
	elseif SoundPackChanged:IsA("BindableEvent") then
		SoundPackChanged:Fire("Thocky")
	else
		pcall(function()
			if SoundPackChanged.FireServer then
				SoundPackChanged:FireServer("Thocky")
			elseif SoundPackChanged.Fire then
				SoundPackChanged:Fire("Thocky")
			end
		end)
	end
end
