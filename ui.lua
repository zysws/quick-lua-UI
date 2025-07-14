-- Gui to Lua
-- Version: 3.2

local Library = {}
local checkboxEnabled = false

-- Instances:

local ohiomoneyfreelua = Instance.new("ScreenGui")
local mainFrame = Instance.new("Frame")
local moneyLabel = Instance.new("TextLabel")
local checkboxButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local enabledLabel = Instance.new("TextLabel")

--Properties:

ohiomoneyfreelua.Name = "ohio-money-free.lua"
ohiomoneyfreelua.Parent = game:GetService("Players").LocalPlayer:GetService("CoreGui")
ohiomoneyfreelua.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainFrame.Name = "mainFrame"
mainFrame.Parent = ohiomoneyfreelua
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BackgroundTransparency = 0.300
mainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BorderSizePixel = 0
mainFrame.Position = UDim2.new(0.101199403, 0, 0.272388041, 0)
mainFrame.Size = UDim2.new(0, 329, 0, 53)

moneyLabel.Name = "moneyLabel"
moneyLabel.Parent = mainFrame
moneyLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
moneyLabel.BackgroundTransparency = 1.000
moneyLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
moneyLabel.BorderSizePixel = 0
moneyLabel.Position = UDim2.new(0.416413367, 0, 0.178259507, 0)
moneyLabel.Size = UDim2.new(0, 192, 0, 33)
moneyLabel.Font = Enum.Font.SourceSans
moneyLabel.Text = "Money: 100,000"
moneyLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
moneyLabel.TextSize = 20.000
moneyLabel.TextXAlignment = Enum.TextXAlignment.Left

checkboxButton.Name = "checkboxButton"
checkboxButton.Parent = mainFrame
checkboxButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
checkboxButton.BackgroundTransparency = 1.000
checkboxButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
checkboxButton.BorderSizePixel = 0
checkboxButton.Position = UDim2.new(0.249103948, 0, 0.178259507, 0)
checkboxButton.Size = UDim2.new(0, 36, 0, 36)
checkboxButton.Image = "rbxassetid://4458801905"

UICorner.Parent = mainFrame

enabledLabel.Name = "enabledLabel"
enabledLabel.Parent = mainFrame
enabledLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
enabledLabel.BackgroundTransparency = 1.000
enabledLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
enabledLabel.BorderSizePixel = 0
enabledLabel.Position = UDim2.new(-0.0182370823, 0, 0.377358764, 0)
enabledLabel.Size = UDim2.new(0, 105, 0, 13)
enabledLabel.Font = Enum.Font.SourceSans
enabledLabel.Text = "Enabled"
enabledLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
enabledLabel.TextSize = 20.000

function Library.ChangeMoneyLabel(text)
	moneyLabel.Text = text
end

function Library.GetCheckBoxValue()
	return checkboxEnabled
end

function Library.Unload()
	ohiomoneyfreelua:Destroy()
end

-- Scripts:

checkboxButton.MouseButton1Click:Connect(function()
	local filled = "rbxassetid://4458804262"
	local nofilled = "rbxassetid://4458801905"
	
	if checkboxEnabled then
		checkboxButton.Image = nofilled
		checkboxEnabled = false
	else
		checkboxButton.Image = filled
		checkboxEnabled = true
	end
end)

return Library
