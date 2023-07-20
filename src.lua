--[[
███████╗███████╗███╗   ██╗██╗    ██╗ █████╗ ██████╗ ███████╗
╚══███╔╝██╔════╝████╗  ██║██║    ██║██╔══██╗██╔══██╗██╔════╝
  ███╔╝ █████╗  ██╔██╗ ██║██║ █╗ ██║███████║██████╔╝█████╗  
 ███╔╝  ██╔══╝  ██║╚██╗██║██║███╗██║██╔══██║██╔══██╗██╔══╝  
███████╗███████╗██║ ╚████║╚███╔███╔╝██║  ██║██║  ██║███████╗
╚══════╝╚══════╝╚═╝  ╚═══╝ ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
                                                            
A ZenSide Project.
Made by fearlol_
https://discord.gg/Q4Rr2NnG8W
]]


local plr = game.Players.LocalPlayer

if plr:IsInGroup(17028173) then
    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
    local Window = Rayfield:CreateWindow({
        Name = "zenware.lua",
        LoadingTitle = "A ZENSIDE Project",
        LoadingSubtitle = "i need to fard",
        ConfigurationSaving = {
           Enabled = true,
           FolderName = nil, -- Create a custom folder for your hub/game
           FileName = "py"
        },
        Discord = {
           Enabled = true,
           Invite = "Q4Rr2NnG8W", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
           RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
           Title = "zenware",
           Subtitle = "Key System",
           Note = "buy it",
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
     })
     local UniTab = Window:CreateTab("Universal", 4483362458) -- Title, Image
     local UniSection = UniTab:CreateSection("Scripts")
     local SetTab = Window:CreateTab("Settings") -- Title, Image
     local SetSection = SetTab:CreateSection("Settings")


     local DestroyGUI = SetTab:CreateButton({
        Name = "Close",
        Callback = function()
            Rayfield:Destroy()
        end,
     })
     local InfYld = UniTab:CreateButton({
      Name = "Infinite Yield",
      Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
      end,
   })
    else
        Rayfield:Destroy()
    end



     Rayfield:LoadConfiguration()
