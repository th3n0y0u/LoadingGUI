local loading = game.Workspace.Loading
local number = 0 

while wait() do
	if number == 0 then
		script.Parent.TextLabel.Text = "Loading..."
		number += 1
		wait(1)
	elseif number == 1 then
		script.Parent.TextLabel.Text = "Loading.."
		number -= 1
		wait(1)
	end
end
