
--// put the player's user id in this format "[userid] = true;"
--// refresh the page before editing
--// dab

MODS = {
    [475876108] = true; -- owner 
    [3053719053] = true; -- owner
    [1621327827] = true; -- 604267013048893441
    [2064118619] = true; -- 786396524045271073 server booster
    [288049526] = true; -- 903446711970709584 server booster
    [443475890] = true; -- 736286621552607262 server booster
    [1450760328] = true; -- 886947448495419392 server booster
    [55441926] = true; -- 184012393972498432 server booster
    [98385239] = true; -- 874995484404641802 server booster
    [198869150] = true; -- gave nitro
    [443475890] = true; -- 736286621552607262 server booster
    [101937042] = true; -- 344498661746540544 server booster
    -- [1020437102] = true; -- 657697535015518228 server boosterr (snitching ??)
    [3282064376] = true; -- swerver booster
    [193865061] = true; -- beaner faggot asian korean niga
    [826806916] = true; -- 494015997045637123
    [2709848765] = true; -- 377170076643885056 dont remove paid for vip a while back
    [3037764427] = true; -- msm
    [1914127907] = true; -- booster 210134183979384832
    [3075589269] = true; -- booster 869045513012523008
	[691147462] = true; -- 291673552183361536 booster
	[141177516] = true; -- 877846096188162068 booster
	[925709441] = true; -- booster 589777956923244564
	[27694090] = true; -- booster 280068751897133058
	[2042875118] = true; -- 384916920882692106 someone gave his perks to him
	[1025791215] = true; -- 654440161785937940 booster
	[826006949] =  true; -- 778282031607709706 someone boosted for him 839565788012478464 booster
	[854912202] = true; -- 627109009878548500 giveaway
	[149169379] = true; -- 309835992037326848 booster
	[342487569] = true; -- 351167369126871040 idk
	[2368231226] = true; 
}

ADMIN = {
    [475876108] = true;
    [3053719053] = true;
    [3037764427] = true; -- msm
    [193865061] = true; -- sal
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
