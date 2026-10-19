-- MoveOnTouch.server.lua

local part = script.Parent

local function onTouched(otherPart)
    local character = otherPart.Parent
    local humanoid = character:FindFirstChild("Humanoid")

    if humanoid then
        part.Position = part.Position + Vector3.new(0, 5, 0)
    end
end

part.Touched:Connect(onTouched)