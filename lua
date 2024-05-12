local ScreenGui = game.Players.LocalPlayer.PlayerGui:FindFirstChild("MyScreenGui")

if not ScreenGui then
    ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "MyScreenGui"
    ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
end

local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")

TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.7330935, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 63, 0, 43)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "FPS:"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 19.000

TextLabel_2.Parent = ScreenGui
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.7330935, 0, 0.0223004688, 0)
TextLabel_2.Size = UDim2.new(0, 63, 0, 50)
TextLabel_2.Font = Enum.Font.GothamBold
TextLabel_2.Text = ""
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 17.000

local function createFPSCounter()
    local RS = game:GetService("RunService")
    local frames = 0
    
    RS.RenderStepped:Connect(function()
        frames = frames + 1
    end)
    
    while wait(1) do
        TextLabel_2.Text = frames
        frames = 0
    end
end

local function createFPSCounterWithProtection()
    local success, error = pcall(createFPSCounter)
    if not success then
        warn("An error occurred while running the FPS counter script:", error)
    end
end

createFPSCounterWithProtection()
