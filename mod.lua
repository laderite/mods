
--// put the player's user id in this format "[userid] = true;"
--// refresh the page before editing
--// dab

MODS = {
    [1621327827] = true; -- 604267013048893441
}

ADMIN = {
    [475876108] = true;
    [3053719053] = true;
}

--// Don't mess with anything below this
function initiateNames()
	game.Players.LocalPlayer.Character.UpperTorso:FindFirstChild('OriginalSize'):Destroy()
	for _,v in pairs(game:GetService('Players'):GetPlayers()) do
		if v.Character then
			if not v.Character.UpperTorso:FindFirstChild('OriginalSize') then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎] ' .. v.DisplayName)
			end
			if table.find(MODS, v.UserId) then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐] ' .. v.DisplayName)
			end
			if table.find(ADMIN, v.UserId) then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] ' .. v.DisplayName)
			end
		end
	end
end

local successful, errored = pcall(initiateNames)
return MODS
