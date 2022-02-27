
--// put the player's user id in this format "[userid] = true;"
--// refresh the page before editing
--// dab

MODS = {
    [475876108] = true; -- owner 
    [3053719053] = true; -- owner
    [1621327827] = true; -- 604267013048893441
    [2064118619] = true; -- 786396524045271073 server booster
    [1636586308] = true; -- 449981850316963840 server booster
    [288049526] = true; -- 903446711970709584 server booster
    [443475890] = true; -- 736286621552607262 server booster
    [1450760328] = true; -- 886947448495419392 server booster
    [55441926] = true; -- 184012393972498432 server booster
    [98385239] = true; -- 874995484404641802 server booster
    [198869150] = true; -- gave nitro
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
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
			end
			if table.find(MODS, v.UserId) then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
			end
			if table.find(ADMIN, v.UserId) then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
			end
		end
	end
end

local successful, errored = pcall(initiateNames)
return MODS
