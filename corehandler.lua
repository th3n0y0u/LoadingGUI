
local function tween(gui)
	gui:TweenPosition(UDim2.new(0, 0, 2, 0))
end

local function loading()
	local number = 0
	
	for i, v in pairs(game.Players:GetPlayers()) do
		v.Character.Humanoid.WalkSpeed = 0
	end
	
	while number ~= 72 and wait() do
		local loading = game.Workspace.Loading
		loading = true
		script.Parent.TextLabel.Text = number.."/71"
		script.Parent.Size = UDim2.new(0, number * 4.92957746479, 0, 0)  
		number += 1
		if number == 72 then
			loading = false
			tween(script.Parent.Parent.Parent)
			game.Workspace.SpawnLocation.CanTouch = true
			game.Workspace.Music.Playing = true
			for i, v in pairs(game.Players:GetPlayers()) do
				v.Character.Humanoid.Jump = true
				v.Character.Humanoid.WalkSpeed = 16
			end
			break
		else
			wait(0.1)
			continue
		end
	end
end

loading()
