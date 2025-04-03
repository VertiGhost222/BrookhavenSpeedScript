loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/urce.lua"))()
local Window = Library.CreateLib("Brookhaven Speed", "Ocean") -- Changé de "Sentinel" à "Ocean"
local SpeedTab = Window:NewTab("Speed")
local SpeedSection = SpeedTab:NewSection("Adjust")
local walkspeed = 16
SpeedSection:NewLabel("Created by VertiGhost")
SpeedSection:NewTextBox("Speed", "Enter a value", function(value)
    walkspeed = tonumber(value)
end)
SpeedSection:NewButton("Apply", "Change the speed", function()
    if walkspeed then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkspeed
    end
end)
SpeedSection:NewButton("Reset", "Speed to 16", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    walkspeed = 16
end)
