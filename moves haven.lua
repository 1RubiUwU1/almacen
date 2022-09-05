-----invi
DisableRobloxOnlyOutput = true
game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Made By";
        Text = "Joseph";
        })

game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Activate";
        Text = "Press J";
        })

game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Stop";
        Text = "Stop Moves K";
        Text = "Reset L";
        })

game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Stop";
        Text = "Reset L";
        })


local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()


mouse.KeyDown:connect(function(key)
    if key == "j" then
local plr = game.Players.LocalPlayer
game.Workspace.Live[plr.Name].Head["face"]:Destroy()
wait(0.2)
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Flash Strike"])
game.Players.LocalPlayer.Character["Flash Strike"].Activator.Animation:Destroy()
game.Players.LocalPlayer.Character["Flash Strike"]:Activate()
wait()
local plr = game.Players.LocalPlayer
game.Workspace.Live[plr.Name]["RebirthWings"]:Destroy()
wait()
local plr = game.Players.LocalPlayer
game.Workspace.Live[plr.Name].HumanoidRootPart["PowerLevel"]:Destroy()
end
end)
---gragon
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Dragon Throw"])
if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Throw") then
game.Players.LocalPlayer.Character["Dragon Throw"].Activator.Flip:Destroy()
end
---god
game:GetService("ReplicatedStorage").ResetChar:FireServer() for i = 1,20,1 do game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({"decrease"}, true) end task.wait(.4) if game.Players.LocalPlayer.character:FindFirstChild("Killed") and game.Players.LocalPlayer.character:FindFirstChild("Action") then game.Players.LocalPlayer.character.Killed:Destroy() game.Players.LocalPlayer.character.Action:Destroy() end game.Players.LocalPlayer.Backpack.ServerTraits.Transform:FireServer("h") for i = 1,20,1 do game.Players.LocalPlayer.Backpack.ServerTraits.Input:FireServer({"increase"}, true) end
----res

_G.ChargeTime = 0  -- Charge Time
_G.Transform = "g"  -- Button To Transform
_G.ResetLowKi = true  -- Respawns If Your Ki Is Low



local plr = game.Players.LocalPlayer
local Char = plr.Character

game:GetService("RunService").RenderStepped:connect(
function()
    if Char.Humanoid.Health <= 60 and Char.Ki.Value <= 60 then
        wait(5)
        plr.Backpack.ServerTraits.Input:FireServer({[1] = "x"},CFrame.new(0,0,0),nil,false)
        wait(_G.ChargeTime)
        plr.Backpack.ServerTraits.Transform:FireServer(_G.Transform)
        wait(1.5)
        plr.Backpack.ServerTraits.Input:FireServer({[1] = "xoff"},CFrame.new(0,0,0),nil,false)
    end
end)

game:GetService("RunService").RenderStepped:connect(
function()
    wait(3)
    if _G.ResetLowKi == true then
        if Char.Ki.Value <= 72 then
            game:GetService("ReplicatedStorage").ResetChar:FireServer()
        end
    end
end)

local cooldowns = {"Action","Attacking","Activity","Using","hyper","Hyper","Tele","tele","heavy","KiBlasted","Killed","Slow","BodyVelocity"}
game.RunService.Stepped:connect(function ()
    for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if table.find(cooldowns,v.Name) then
            v:Destroy()
        end
    end
end)

-----movespamn

_G.SpamOn = "j"
_G.SpamOff = "k"
_G.HReset = "l"




local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()

Mouse.KeyDown:connect(function(Key)
   Key = Key:lower()
   if Key == _G.HReset then
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
end)

getfenv().spam = false;

Mouse.KeyDown:connect(function(Key)
   Key = Key:lower()
   if Key == _G.SpamOn then
getfenv().spam = true
end
end)

Moves = {
"Dragon Throw";
"Flash Strike";
"Sweep Kick";
"Neo Wolf Fang Fist";
"Strong Kick";
"Meteor Crash";
"Wolf Fang Fist";
"";
"Trash???";
"Anger Rush";
"";
"Deadly Dance";
"Blaster Meteor";
"Flash Skewer";
"Flash Strike";
"TS Molotov";
}


while wait() do
if getfenv().spam == true then

local plr = game.Players.LocalPlayer
for i, v in pairs(plr.Backpack:GetChildren()) do
                if table.find(Moves, v.Name) then
                  v.Parent = plr.Character
                  v:Activate()
                  v:Deactivate()
                  wait(0.1)
                  v.Parent = plr.Backpack
                end
end
Mouse.KeyDown:connect(function(Key)
   Key = Key:lower()
   if Key == _G.SpamOff then
getfenv().spam = false


end
end)
end
end




