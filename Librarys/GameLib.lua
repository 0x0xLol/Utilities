local Library = {}

local UserInputService = game:GetService("UserInputService")

Library.IsMoving = function()
	return UserInputService:IsKeyDown("W") or UserInputService:IsKeyDown("A") or UserInputService:IsKeyDown("S") or UserInputService:IsKeyDown("D") or UserInputService:IsKeyDown("Space")
end

return Library
