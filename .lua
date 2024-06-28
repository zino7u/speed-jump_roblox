-- MADE BY Z-Aℹ️
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local gui = Instance.new("ScreenGui")
gui.Name = "SpeedJumpGUI"
gui.Parent = playerGui

-- SPEED
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(1, -210, 0, 10)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
frame.BorderSizePixel = 2
frame.Parent = gui


local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 30)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Speed & Jump Power"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 18
titleLabel.Parent = frame


local speedTextBox = Instance.new("TextBox")
speedTextBox.Size = UDim2.new(0.6, 0, 0, 30)
speedTextBox.Position = UDim2.new(0.1, 0, 0.4, 0)
speedTextBox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
speedTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
speedTextBox.Font = Enum.Font.SourceSans
speedTextBox.TextSize = 14
speedTextBox.PlaceholderText = "Speed"
speedTextBox.Parent = frame


local jumpTextBox = Instance.new("TextBox")
jumpTextBox.Size = UDim2.new(0.6, 0, 0, 30)
jumpTextBox.Position = UDim2.new(0.1, 0, 0.65, 0)
jumpTextBox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
jumpTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
jumpTextBox.Font = Enum.Font.SourceSans
jumpTextBox.TextSize = 14
jumpTextBox.PlaceholderText = "Jump Power"
jumpTextBox.Parent = frame


local applyButton = Instance.new("TextButton")
applyButton.Size = UDim2.new(0.4, 0, 0, 30)
applyButton.Position = UDim2.new(0.3, 0, 0.85, 0)
applyButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
applyButton.Text = "Apply"
applyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
applyButton.Font = Enum.Font.GothamBold
applyButton.TextSize = 14
applyButton.Parent = frame


local function applySettings()
    local speedValue = tonumber(speedTextBox.Text)
    local jumpValue = tonumber(jumpTextBox.Text)

    if speedValue and jumpValue then
        player.Character.Humanoid.WalkSpeed = speedValue
        player.Character.Humanoid.JumpPower = jumpValue
    else
        warn("Bitte geben Sie gültige Zahlen ein.")
    end
end


applyButton.MouseButton1Click:Connect(applySettings)


game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.FocusLost then
        gui.Enabled = false
    end
end)
