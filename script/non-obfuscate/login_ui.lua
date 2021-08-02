-- Gui to Lua
-- Version: 3.2

-- Instances:

local CoreUi = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local Welcome = Instance.new("TextLabel")
local Input = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local accept = Instance.new("TextButton")
local UIGradient_2 = Instance.new("UIGradient")
local UICorner_3 = Instance.new("UICorner")
local Discord = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Label = Instance.new("TextLabel")
local UIGradient_3 = Instance.new("UIGradient")
local Gamelist = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Label_2 = Instance.new("TextLabel")
local UIGradient_4 = Instance.new("UIGradient")
local Exit = Instance.new("TextButton")

--Properties:

CoreUi.Name = "CoreUi"
CoreUi.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = CoreUi
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Position = UDim2.new(0, 450, 0, 225)
Main.Size = UDim2.new(0, 463, 0, 246)
Main.Active = true
Main.Draggable = true

UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = Main

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 255)), ColorSequenceKeypoint.new(0.49, Color3.fromRGB(255, 123, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient.Parent = Main

Welcome.Name = "Welcome"
Welcome.Parent = Main
Welcome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Welcome.BackgroundTransparency = 1.000
Welcome.Position = UDim2.new(0.282937378, 0, 0, 0)
Welcome.Size = UDim2.new(0, 200, 0, 50)
Welcome.Font = Enum.Font.FredokaOne
Welcome.Text = "Welcome to krypton hub"
Welcome.TextColor3 = Color3.fromRGB(0, 0, 0)
Welcome.TextSize = 28.000

Input.Name = "Input"
Input.Parent = Main
Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Input.BorderSizePixel = 0
Input.Position = UDim2.new(0.16414687, 0, 0.284552842, 0)
Input.Size = UDim2.new(0, 314, 0, 50)
Input.Font = Enum.Font.Highway
Input.PlaceholderText = "Hm..."
Input.Text = ""
Input.TextColor3 = Color3.fromRGB(0, 0, 0)
Input.TextSize = 24.000

UICorner_2.CornerRadius = UDim.new(0, 20)
UICorner_2.Parent = Input

accept.Name = "accept"
accept.Parent = Main
accept.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
accept.BorderSizePixel = 0
accept.Position = UDim2.new(0.334773213, 0, 0.552845538, 0)
accept.Size = UDim2.new(0, 176, 0, 44)
accept.Font = Enum.Font.DenkOne
accept.Text = "Accept"
accept.TextColor3 = Color3.fromRGB(0, 0, 0)
accept.TextSize = 24.000

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 170, 0)), ColorSequenceKeypoint.new(0.19, Color3.fromRGB(170, 255, 0)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(170, 170, 0)), ColorSequenceKeypoint.new(0.66, Color3.fromRGB(85, 0, 255)), ColorSequenceKeypoint.new(0.84, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 170, 0))}
UIGradient_2.Parent = accept

UICorner_3.CornerRadius = UDim.new(0, 10)
UICorner_3.Parent = accept

Discord.Name = "Discord"
Discord.Parent = Main
Discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discord.Position = UDim2.new(0.0561555065, 0, 0.768292665, 0)
Discord.Size = UDim2.new(0, 38, 0, 39)
Discord.Font = Enum.Font.SourceSans
Discord.Text = ""
Discord.TextColor3 = Color3.fromRGB(0, 0, 0)
Discord.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(0, 999)
UICorner_4.Parent = Discord

Label.Name = "Label"
Label.Parent = Discord
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.BorderColor3 = Color3.fromRGB(27, 42, 53)
Label.BorderSizePixel = 0
Label.Position = UDim2.new(1, 0, 0, 0)
Label.Size = UDim2.new(0, 171, 0, 39)
Label.Font = Enum.Font.Kalam
Label.Text = "copy discord server link."
Label.TextColor3 = Color3.fromRGB(0, 0, 0)
Label.TextSize = 24.000

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(85, 85, 255)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(171, 171, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 255, 0))}
UIGradient_3.Parent = Discord

Gamelist.Name = "Gamelist"
Gamelist.Parent = Main
Gamelist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Gamelist.Position = UDim2.new(0.507559419, 0, 0.768292665, 0)
Gamelist.Size = UDim2.new(0, 38, 0, 39)
Gamelist.Font = Enum.Font.SourceSans
Gamelist.Text = ""
Gamelist.TextColor3 = Color3.fromRGB(0, 0, 0)
Gamelist.TextSize = 14.000

UICorner_5.CornerRadius = UDim.new(0, 999)
UICorner_5.Parent = Gamelist

Label_2.Name = "Label"
Label_2.Parent = Gamelist
Label_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label_2.BackgroundTransparency = 1.000
Label_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Label_2.BorderSizePixel = 0
Label_2.Position = UDim2.new(0.789473653, 0, 0, 0)
Label_2.Size = UDim2.new(0, 171, 0, 39)
Label_2.Font = Enum.Font.Kalam
Label_2.Text = "copy game list link."
Label_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Label_2.TextSize = 24.000

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(0.48, Color3.fromRGB(255, 210, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(125, 125, 255))}
UIGradient_4.Parent = Gamelist

Exit.Name = "Exit"
Exit.Parent = Main
Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit.BackgroundTransparency = 1.000
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.887689054, 0, 3.7252903e-09, 0)
Exit.Size = UDim2.new(0, 32, 0, 50)
Exit.Font = Enum.Font.Cartoon
Exit.Text = "X"
Exit.TextColor3 = Color3.fromRGB(0, 0, 0)
Exit.TextScaled = true
Exit.TextSize = 32.000
Exit.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Exit.TextWrapped = true

Exit.MouseButton1Down:Connect(function()
    Main:TweenPosition(Main.Position + UDim2.new(0, 3000), Enum.EasingDirection.Out, nil, 2,true,function()
        CoreUi:Destroy()
    end)
end)
Discord.MouseButton1Down:Connect(function()
    setclipboard("https://discord.gg/B659FscCBz")
end)

Gamelist.MouseButton1Down:Connect(function()
    setclipboard("not finished yet")
end)

accept.MouseButton1Down:Connect(function()
    Main:TweenPosition(Main.Position + UDim2.new(0,2000), Enum.EasingDirection.Out, nil, 2, true,function()
        CoreUi:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KangKung02/KryptonHub/main/script/non-obfuscate/ToScript.lua"))()
    end)
end)
