if getgenv().executed then return end

getgenv().executed = true

repeat task.wait() until game:IsLoaded()

local teleported = false
local teleportfunc = game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    if (not teleported) then
        teleported = true
		  syn.queue_on_teleport("getgenv().executed = false; loadstring(game:HttpGet('https://raw.githubusercontent.com/DarkDrake666/MadeByMe/blob/main/DigToChinaPoints.lua")
    end
end)

task.wait(15)

repeat task.wait() until pcall(function()
    print(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
end)

local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

firetouchinterest(hrp, game:GetService("Workspace").ChinaDetector, 0)
firetouchinterest(hrp, game:GetService("Workspace").ChinaDetector, 1)

task.wait(5)

game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
