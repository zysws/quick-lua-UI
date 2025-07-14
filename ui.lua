-- Gui to Lua
-- Version: 3.2
local library = {}

-- Internal state
local checkboxEnabled = false

-- Instances
local ohiomoneyfreelua = Instance.new("ScreenGui")
local mainFrame = Instance.new("Frame")
local moneyLabel = Instance.new("TextLabel")
local checkboxButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local enabledLabel = Instance.new("TextLabel")

-- ScreenGui setup
ohiomoneyfreelua.Name = "ohio-money-free.lua"
ohiomoneyfreelua.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
ohiomoneyfreelua.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Main frame
mainFrame.Name = "mainFrame"
mainFrame.Parent = ohiomoneyfreelua
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BackgroundTransparency = 0.3
mainFrame.BorderSizePixel = 0
mainFrame.Position = UDim2.new(0.101, 0, 0.272, 0)
mainFrame.Size = UDim2.new(0, 329, 0, 53)

-- Rounded corners
UICorner.Parent = mainFrame

-- Money label
moneyLabel.Name = "moneyLabel"
moneyLabel.Parent = mainFrame
moneyLabel.BackgroundTransparency = 1
moneyLabel.Position = UDim2.new(0.416, 0, 0.178, 0)
moneyLabel.Size = UDim2.new(0, 192, 0, 33)
moneyLabel.Font = Enum.Font.SourceSans
moneyLabel.Text = "Money: 100,000"
moneyLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
moneyLabel.TextSize = 20
moneyLabel.TextXAlignment = Enum.TextXAlignment.Left

-- Checkbox button
checkboxButton.Name = "checkboxButton"
checkboxButton.Parent = mainFrame
checkboxButton.BackgroundTransparency = 1
checkboxButton.Position = UDim2.new(0.249, 0, 0.178, 0)
checkboxButton.Size = UDim2.new(0, 36, 0, 36)
checkboxButton.Image = "rbxassetid://4458801905" -- unchecked

-- Enabled label
enabledLabel.Name = "enabledLabel"
enabledLabel.Parent = mainFrame
enabledLabel.BackgroundTransparency = 1
enabledLabel.Position = UDim2.new(-0.018, 0, 0.377, 0)
enabledLabel.Size = UDim2.new(0, 105, 0, 13)
enabledLabel.Font = Enum.Font.SourceSans
enabledLabel.Text = "Enabled"
enabledLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
enabledLabel.TextSize = 20

-- Toggle script (inside the library script)
checkboxButton.MouseButton1Click:Connect(function()
	checkboxEnabled = not checkboxEnabled
	checkboxButton.Image = checkboxEnabled
		and "rbxassetid://4458804262" -- filled
		or "rbxassetid://4458801905" -- outlined
end)

-- API
function library.ChangeMoneyLabel(text)
	moneyLabel.Text = text
end

function library.GetCheckBoxValue()
	return checkboxEnabled
end

return library
