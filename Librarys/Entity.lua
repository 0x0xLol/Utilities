local Entity = {}

local PlayerService = game:GetService("Players")

Entity.GetLocalPlayer = function()
	return PlayerService.LocalPlayer
end
Entity.GetPlayer = function(Name)
	for _, plrs in PlayerService:GetPlayers() do
		if plrs.Name == Name then
			return plrs
		end
	end
	print("Failed to get Player.")
	return nil
end
Entity.GetCharacter = function()
	return Entity.GetPlayer().Character
end
Entity.GetCharacterFromWorkspace = function()
	return workspace:FindFirstChild(Entity.GetLocalPlayer().Name)
end

return Entity
