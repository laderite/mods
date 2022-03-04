
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
    [443475890] = true; -- 736286621552607262 server booster
    [101937042] = true; -- 344498661746540544 server booster
    [1020437102] = true; -- 657697535015518228 server boosterr
    [3282064376] = true; -- swerver booster
    [193865061] = true; -- beaner faggot asian korean niga
    [826806916] = true; -- 494015997045637123
    [2709848765] = true; -- 377170076643885056
    [196099110] = true; -- 896678301727330335 booster
    [3037764427] = true; -- msm
    [1914127907] = true; -- booster 210134183979384832
    [3075589269] = true; -- booster 869045513012523008
}

ADMIN = {
    [475876108] = true;
    [3053719053] = true;
    [3037764427] = true; -- msm
}

--// Don't mess with anything below this
function initiateNames()
	game.Players.LocalPlayer.Character.UpperTorso:FindFirstChild('OriginalSize'):Destroy()
	for _,v in pairs(game:GetService('Players'):GetPlayers()) do
		if v.Character then
			if not v.Character.UpperTorso:FindFirstChild('OriginalSize') then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
			end
			if MODS[v.UserId] then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
			end
			if ADMIN[v.UserId] then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
			end
		end
	end
end

local successful, errored = pcall(initiateNames)
return MODS
