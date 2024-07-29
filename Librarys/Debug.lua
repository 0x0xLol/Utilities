repeat task.wait() until game:IsLoaded()
local Library = {}

Library.GetRemotes = function(Start)
	local remotes = {}
	if Start ~= nil then
		for _,v in Start:GetDescendants() do
			if v:IsA("RemoteEvent") then
				table.insert(remotes, v)
			end
		end
	else
		for _, v in game:GetDescendants() do
			if v:IsA("RemoteEvent") then
				table.insert(remotes, v)
			end
		end
	end

	return remotes
end

Library.GetItem = function(Item : string, Start)
	if Start ~= nil then
		for _,v in Start:GetDescendants() do
			if v.Name:lower() == Item:lower() then
				return v
			end
		end
	else
		for _,v in game:GetDescendants() do
			if v.Name:lower() == Item:lower() then
				return v
			end
		end
	end
end

return Library
