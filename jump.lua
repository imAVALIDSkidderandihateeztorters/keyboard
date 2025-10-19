local Player = game:GetService("Players").LocalPlayer
local UIS = game:GetService("UserInputService")

_G.JumpHeight = 50
_G.HighJumpEnabled = true -- set to true for ON, false for OFF

local function Action(Object, Func)
    if Object ~= nil then
        Func(Object)
    end
end

UIS.InputBegan:Connect(function(UserInput)
    if _G.HighJumpEnabled and UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(hrp)
                    hrp.Velocity = Vector3.new(0, _G.JumpHeight, 0)
                end)
            end
        end)
    end
end)
