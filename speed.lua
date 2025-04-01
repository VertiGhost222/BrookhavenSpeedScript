loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Brookhaven Speed", "Sentinel")
local SpeedTab = Window:NewTab("Vitesse")
local SpeedSection = SpeedTab:NewSection("Ajuster")
local walkspeed = 16
SpeedSection:NewLabel("Créé par VertiGhost")
SpeedSection:NewTextBox("Vitesse", "Entre une valeur", function(value) walkspeed = tonumber(value) end)
SpeedSection:NewButton("Appliquer", "Change la vitesse", function() if walkspeed then game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkspeed end end)
SpeedSection:NewButton("Réinitialiser", "Vitesse à 16", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 walkspeed = 16 end)
