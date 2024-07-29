local Library = {}

local UserInputService = game:GetService("UserInputService")
local PlayerService = game:GetService("Players")

Library.IsMoving = function()
	return UserInputService:IsKeyDown("W") or UserInputService:IsKeyDown("A") or UserInputService:IsKeyDown("S") or UserInputService:IsKeyDown("D") or UserInputService:IsKeyDown("Space")
end
Library.onGround = function(Player)
	return PlayerService[Player].Character.Humanoid.FloorMaterial ~= Enum.Material.Air
end

return Library
