local vu = game:GetService("VirtualUser")
_G.autoclick = true
while _G.autoclick do
vu:Button1Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(0.1)
vu:Button1Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end
