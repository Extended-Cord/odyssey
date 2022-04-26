return {
	['kill'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Kills [plr]' end
		local targets = GetPlayer(User, input[1])
		
		for i,plr in pairs(targets) do
			plr.Character:BreakJoints()
		end
	end,
	
	['respawn'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Respawns [plr]' end

		local targets = GetPlayer(User, input[1])

		for i,plr in pairs(targets) do
			plr:LoadCharacter()
		end
	end,
	
	['reset'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Respawns [plr], and brings them to their original position' end

		local targets = GetPlayer(User, input[1])

		for i,plr in pairs(targets) do
			local pos = plr.Character.HumanoidRootPart.CFrame
			
			plr:LoadCharacter()
			repeat wait() until plr.Character
			plr.Character.HumanoidRootPart.CFrame = pos
		end
	end,
	
	['kick'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Kicks [plr]' end

		local targets = GetPlayer(User, input[1])

		for i,plr in pairs(targets) do
			plr:Kick('A game administrator has kicked you from the game.')
		end
	end,
	
	['shutdown'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Kicks every player in the game' end

		local targets = Players:GetPlayers()

		for i,plr in pairs(targets) do
			plr:Kick('A game administrator has initiated a shutdown!!')
		end
	end,
	
	['ws'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Sets players walk speed to [val]' end

		local targets = GetPlayer(User, input[1])
		local int = input[2] or 16
		for i,plr in pairs(targets) do
			plr.Character.Humanoid.WalkSpeed = int
		end
	end,
	
	['jp'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Sets players jump power to [val]' end

		local targets = GetPlayer(User, input[1])
		local int = input[2] or 10
		for i,plr in pairs(targets) do
			plr.Character.Humanoid.JumpHeight = int
		end
	end,
	
	['noclip'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Enables noclip for [plr]' end --// Doesn't work ATM

		local targets = GetPlayer(User, input[1])
		for i,plr in pairs(targets) do
			plr.Character.Humanoid:ChangeState(11)
		end
	end,
	
	['clip'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Disables noclip for [plr]' end --// Doesn't work ATM

		local targets = GetPlayer(User, input[1])
		for i,plr in pairs(targets) do
			plr.Character.Humanoid:ChangeState(11)
		end
	end,
}
