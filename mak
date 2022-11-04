deathreturnactive = true
playerdied = false

spawn(function()
while true do
if deathreturnactive then
player = game:GetService("Players").LocalPlayer
player.Character.Humanoid.Died:connect(function()
playerdied = true
end)
end
if not playerdied then
lastlocationx = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x
lastlocationy = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.y
lastlocationz = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z
SavePosition.Text = "Last Place: " ..lastlocationx.. "," ..lastlocationy.. "," ..lastlocationz
--print(tostring(SavePosition.Text))
wait(0.5)
end
if playerdied then
--print("Player " ..tostring(game.Players.LocalPlayer.Name).. " Died")
--print(tostring(SavePosition.Text))
wait(5)
game:GetService("ReplicatedStorage").RemoteEvent:FireServer({[1] = "Respawn"})
wait(1)
game.Lighting.Blur.Enabled = false
           game.Players.LocalPlayer.PlayerGui.IntroGui.Enabled = false
           game.Players.LocalPlayer.PlayerGui.ScreenGui.Enabled = true
wait(4)
--print("screengui disabled")
repeat wait(0.1) until game.Players.LocalPlayer.Character.Humanoid
--print("Teleporting back to " ..tostring(SavePosition.Text))
if deathreturnactive then
local FindHum = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lastlocationx, lastlocationy, lastlocationz)
end
playerdied = false
end
wait(1)
end
end)
