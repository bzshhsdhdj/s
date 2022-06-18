local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local Close = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Open = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Frame.Position = UDim2.new(0.242695227, 0, 0.233825728, 0)
Frame.Size = UDim2.new(0, 311, 0, 356)
Frame.Active = true
Frame.Draggable = true

UICorner.Parent = Frame

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
Frame_2.Position = UDim2.new(-0.0340275615, 0, 0.0223198086, 0)
Frame_2.Size = UDim2.new(0, 311, 0, 356)
Frame_2.ZIndex = 2

UICorner_2.Parent = Frame_2

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0340274908, 0, 0.0561797768, 0)
TextLabel.Size = UDim2.new(0, 294, 0, 30)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Chat Bypass for bad "
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 30.000

UICorner_3.Parent = TextLabel

TextLabel_2.Parent = Frame_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.0661818311, 0, 0.0561797768, 0)
TextLabel_2.Size = UDim2.new(0, 284, 0, 86)
TextLabel_2.Font = Enum.Font.GothamBold
TextLabel_2.Text = "bitches"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 30.000

UICorner_4.Parent = TextLabel_2

Close.Name = "Close"
Close.Parent = Frame_2
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
Close.Position = UDim2.new(1.2379421, 0, 0, 0)
Close.Size = UDim2.new(0, 73, 0, 73)
Close.Font = Enum.Font.GothamBold
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 50.000

UICorner_5.Parent = Close

TextButton.Parent = Frame_2
TextButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextButton.Position = UDim2.new(0.0661818311, 0, 0.297752798, 0)
TextButton.Size = UDim2.new(0, 276, 0, 137)
TextButton.Font = Enum.Font.GothamBold
TextButton.Text = "ACTIVATE SCRIPT"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 30.000
TextButton.MouseButton1Down:connect(function()
    loadstring(game:HttpGet("https://the-shed.xyz/roblox/scripts/ChatBypass", true))()
end)

UICorner_6.Parent = TextButton

Open.Name = "Open"
Open.Parent = ScreenGui
Open.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
Open.Position = UDim2.new(0, 0, 0.824027061, 0)
Open.Size = UDim2.new(0, 212, 0, 57)
Open.Font = Enum.Font.GothamBold
Open.Text = "Open"
Open.TextColor3 = Color3.fromRGB(255, 255, 255)
Open.TextSize = 30.000

UICorner_7.Parent = Open

local function VDHQMJ_fake_script() -- Frame.Smooth GUI Dragging 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(VDHQMJ_fake_script)()
local function SUOMQGL_fake_script() -- Close.Script 
	local script = Instance.new('Script', Close)

	local Frame = script.Parent.Parent.Parent
	
	script.Parent.MouseButton1Click:Connect(function()
		Frame.Visible = false
	end)
end
coroutine.wrap(SUOMQGL_fake_script)()
local function JJVO_fake_script() -- Open.Script 
	local script = Instance.new('Script', Open)

	local Frame = script.Parent.Parent.Frame
	
	script.Parent.MouseButton1Click:Connect(function()
		Frame.Visible = true
	end)
end
coroutine.wrap(JJVO_fake_script)()
