return {
	['kill'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Kills [plr]' end
		local targets = GetPlayer(User, input[1])
		a{
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
		table.remove(input,1)
		local reason = table.concat(input,' ') or 'None'
		for i,plr in pairs(targets) do
			plr:Kick('A game administrator has kicked you from the game. Reason: '..reason)
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
	['health'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Sets players health to [val]' end

		local targets = GetPlayer(User, input[1])
		local int = input[2] or 10
		for i,plr in pairs(targets) do
			plr.Character.Humanoid.Health = int
		end
	end,
	['maxhealth'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Sets players max health to [val]' end

		local targets = GetPlayer(User, input[1])
		local int = input[2] or 10
		for i,plr in pairs(targets) do
			plr.Character.Humanoid.MaxHealth = int
		end
	end,
	['hipheight'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Sets players hipheight to [val]' end

		local targets = GetPlayer(User, input[1])
		local int = input[2] or 10
		for i,plr in pairs(targets) do
			plr.Character.Humanoid.HipHeight = int
		end
	end,
	['ff'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Gives [plr] a forcefield' end

		local targets = GetPlayer(User, input[1])
		for i,plr in pairs(targets) do
			Instance.new('ForceField',plr.Character)
		end
	end,
	['sparkles'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Gives [plr] sparkles' end

		local targets = GetPlayer(User, input[1])
		for i,plr in pairs(targets) do
			Instance.new('Sparkles',plr.Character.HumanoidRootPart)
		end
	end,
	['fire'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Gives [plr] fire' end

		local targets = GetPlayer(User, input[1])
		
		for i,plr in pairs(targets) do
			Instance.new('Fire',plr.Character.HumanoidRootPart)
		end
	end,
	['smoke'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Gives [plr] smoke' end

		local targets = GetPlayer(User, input[1])
		
		for i,plr in pairs(targets) do
			Instance.new('Smoke',plr.Character.HumanoidRootPart)
		end
	end,
	['explode'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Explodes [plr]' end

		local targets = GetPlayer(User, input[1])
		
		for i,plr in pairs(targets) do
			local a = Instance.new('Explosion',plr.Character)
			a.Position = plr.Character.HumanoidRootPart.Position
		end
	end,
	['m'] = function(User, input) 
		if input[1] == 'GETCOMMANDINFORMATION' then return 'Creates a message containing [str]' end

		local str = table.concat(input, ' ')
		local b = Instance.new('Message',workspace)
		b.Text = str
		
		spawn(function()
			wait(3)
			b:Destroy()
		end)
		
	end,
}
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
