local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))() --This Will Load The Script Code
local Window = Library.CreateLib("mshuB|PREMIUM", "DarkTheme") --This Will Make The Script Hub

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))() 

local Player = game.Players.LocalPlayer

function CorrectKeyAndLoadTheScript()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/mspaint/main/main.lua"))() --This Where You Put The Script That Will Be Loaded If The Key Is Correct
end

OrionLib:MakeNotification({
	Name = "Logged In!",
	Content = "You need key "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
}) --Notification

getgenv().Key = "0o0" --Put The Correct Key Here
getgenv().KeyInput = "string" --KeyInput Require To Make The Key Work

local Tab = Window:NewTab("KEY SYSTEM") --This Will Make A Tab

local Section = Tab:NewSection("Key System") --This Will Make A Section

Section:NewTextBox("Enter Key", "Key", function(Value)
		getgenv().KeyInput = Value
end) 

Section:NewButton("Check Key", "This Will Check The Key You Enter", function()
            if getgenv().KeyInput == getgenv().Key then
            OrionLib:MakeNotification({
                Name = "Checking Key",
                Content = "Checking The Key You Entered",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(2)
            OrionLib:MakeNotification({
                Name = "Correct Key!",
                Content = "The key you entered is Valid.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(.3)
            CorrectKeyAndLoadTheScript()
        else
           OrionLib:MakeNotification({
                Name = "Checking Key",
                Content = "Checking The Key You Entered",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(2)
            OrionLib:MakeNotification({
                Name = "Incorrect Key!",
                Content = "The key you entered is invalid.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
end)  

