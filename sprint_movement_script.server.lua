-- Sprint Movement Script

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local sprintSpeed = 30 -- Adjust this value to change sprint speed

local function onInputBegan(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.LeftShift then
        local character = Players.LocalPlayer.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = sprintSpeed
            end
        end
    end
end

local function onInputEnded(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.LeftShift then
        local character = Players.LocalPlayer.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = 16 -- Default walk speed
            end
        end
    end
end

UserInputService.InputBegan:Connect(onInputBegan)
UserInputService.InputEnded:Connect(onInputEnded)
