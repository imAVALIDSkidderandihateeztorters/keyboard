local ReplicatedStorage = game:GetService("ReplicatedStorage")

local SoundPackChanged = ReplicatedStorage:FindFirstChild("SoundPackChanged")

if SoundPackChanged then
	if SoundPackChanged:IsA("RemoteEvent") then
		SoundPackChanged:FireServer("Honey")
	elseif SoundPackChanged:IsA("BindableEvent") then
		SoundPackChanged:Fire("Honey")
	else
		pcall(function()
			if SoundPackChanged.FireServer then
				SoundPackChanged:FireServer("Honey")
			elseif SoundPackChanged.Fire then
				SoundPackChanged:Fire("Honey")
			end
		end)
	end
end
