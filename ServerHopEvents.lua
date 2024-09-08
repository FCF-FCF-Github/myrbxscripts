local TeleportService = game:GetService("TeleportService")
local gamelDEaster = 1930863474
local gameIDWinter = 1930866268
local player = game.Players.LocalPlayer


local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = player.PlayerGui
ScreenGui.Name = "SuSGui"

local frame = Instance.new("Frame")
frame.Parent = ScreenGui
frame.Size = UDim2.new(0,455,0,297)
frame.Position = UDim2.new(0.231,0,0.211,0)
frame.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)

Instance.new("UICorner").Parent = frame

local UiStroke = Instance.new("UIStroke")
UiStroke.Parent = frame
UiStroke.Thickness = 10

local eastertpbutton = Instance.new("TextButton")
eastertpbutton.Parent = frame
eastertpbutton.Size = UDim2.new(0, 200,0,50)
eastertpbutton.Position = UDim2.new(0.279, 0,0.165, 0)
eastertpbutton.Text = "Easter"
eastertpbutton.TextScaled = true

local wintertpbutton = Instance.new("TextButton")
wintertpbutton.Parent = frame
wintertpbutton.Size = UDim2.new(0, 200,0,50)
wintertpbutton.Position = UDim2.new(0.279, 0,0.552, 0)
wintertpbutton.Text = "Winter"
wintertpbutton.TextScaled = true

local function wintertp()
	TeleportService:Teleport(gameIDWinter, player)	
end

local function eastertp()
	TeleportService:Teleport(gamelDEaster, player)	
end

wintertpbutton.MouseButton1Click:Connect(wintertp)
eastertpbutton.MouseButton1Click:Connect(eastertp)
