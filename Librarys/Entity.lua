local Library = {}

local PlayerService = game:GetService("Players")

Library.GetLocalPlayer = function()
	return PlayerService.LocalPlayer
end
Library.GetPlayer = function(Name)
	for _, plrs in PlayerService:GetPlayers() do
		if plrs.Name == Name then
			return plrs
		end
	end
	print("Failed to get Player.")
	return nil
end
Library.GetCharacter = function()
	return Library.GetPlayer().Character
end
Library.GetCharacterFromWorkspace = function()
	return workspace:FindFirstChild(Library.GetLocalPlayer().Name)
end

return Library
