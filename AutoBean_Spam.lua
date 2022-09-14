--[Made By D_Raziq225]--
--[Press C to toggle]--
--[Press V to untoggle]--
Raziq = true
lolers = false

local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:connect(function(key)
if key == "j" then 
_G.Noslow = Raziq
elseif key == "l" then
_G.Noslow = lolers
end
end)

while wait(0.5) do 
if _G.Noslow == true then
game:GetService("Players").LocalPlayer.Backpack.ServerTraits.EatSenzu:FireServer(true) 
end 
end