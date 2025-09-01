if game.CoreGui:FindFirstChild("ToolSelectorUI") then
    game.CoreGui.ToolSelectorUI:Destroy()
end

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local HttpService = game:GetService("HttpService")

local function RainbowColor(speed)
    return Color3.fromHSV(tick() * speed % 1, 1, 1)
end

local ConfigFile = "TeneryHub_Config.json"
local Config = { AutoSwing = false, SelectedTool = nil }

pcall(function()
    if isfile and isfile(ConfigFile) then
        Config = HttpService:JSONDecode(readfile(ConfigFile))
    end
end)

local function SaveConfig()
    if writefile then
        writefile(ConfigFile, HttpService:JSONEncode(Config))
    end
end

local function EquipToolByName(name)
    local tool = LocalPlayer.Backpack:FindFirstChild(name)
    if tool and tool:IsA("Tool") then
        local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if hum then
            hum:UnequipTools()
            hum:EquipTool(tool)
        end
    end
end

local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "ToolSelectorUI"

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 260, 0, 95)
Frame.Position = UDim2.new(0.5, -130, 0.5, -45)
Frame.BackgroundColor3 = Color3.fromRGB(20,20,20)
Frame.BorderSizePixel = 0
Frame.Active = true
Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 12)

local shadow = Instance.new("ImageLabel", Frame)
shadow.ZIndex = 0
shadow.Image = "rbxassetid://5028857084"
shadow.ImageColor3 = Color3.fromRGB(0,0,0)
shadow.ImageTransparency = 0.3
shadow.AnchorPoint = Vector2.new(0.5,0.5)
shadow.Position = UDim2.new(0.5,0,0.5,0)
shadow.Size = UDim2.new(1,30,1,30)
shadow.BackgroundTransparency = 1

local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1, 0, 0, 25)
Title.BackgroundTransparency = 1
Title.Text = "⚔ Tenery Hub – Tool Selector"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16
Title.TextColor3 = Color3.fromRGB(255,255,255)

local Button = Instance.new("TextButton", Frame)
Button.Size = UDim2.new(1, -60, 0, 30)
Button.Position = UDim2.new(0,10,0,30)
Button.BackgroundColor3 = Color3.fromRGB(35,35,35)
Button.Text = Config.SelectedTool and ("Selected: " .. Config.SelectedTool) or "Select Tool"
Button.TextColor3 = Color3.fromRGB(255,255,255)
Button.Font = Enum.Font.Gotham
Button.TextSize = 14
Instance.new("UICorner", Button).CornerRadius = UDim.new(0,8)

local Arrow = Instance.new("ImageLabel", Button)
Arrow.AnchorPoint = Vector2.new(0.5,0.5)
Arrow.Position = UDim2.new(1,-10,0.5,0)
Arrow.Size = UDim2.new(0,16,0,16)
Arrow.BackgroundTransparency = 1
Arrow.Image = "rbxassetid://3926307971"
Arrow.ImageRectOffset = Vector2.new(324, 284)
Arrow.ImageRectSize = Vector2.new(36,36)

local Refresh = Instance.new("TextButton", Frame)
Refresh.Size = UDim2.new(0,40,0,30)
Refresh.Position = UDim2.new(1,-50,0,30)
Refresh.BackgroundColor3 = Color3.fromRGB(45,45,45)
Refresh.TextColor3 = Color3.fromRGB(255,255,255)
Refresh.Text = "⟳"
Refresh.Font = Enum.Font.GothamBold
Refresh.TextSize = 16
Instance.new("UICorner", Refresh).CornerRadius = UDim.new(0,8)

local Dropdown = Instance.new("Frame", Frame)
Dropdown.Size = UDim2.new(1, -20, 0, 0)
Dropdown.Position = UDim2.new(0,10,0,65)
Dropdown.BackgroundColor3 = Color3.fromRGB(30,30,30)
Dropdown.ClipsDescendants = true
Instance.new("UICorner", Dropdown).CornerRadius = UDim.new(0,8)

local Scroll = Instance.new("ScrollingFrame", Dropdown)
Scroll.Size = UDim2.new(1,0,1,0)
Scroll.CanvasSize = UDim2.new(0,0,0,0)
Scroll.ScrollBarThickness = 4
Scroll.BackgroundTransparency = 1

local UIList = Instance.new("UIListLayout", Scroll)
UIList.Padding = UDim.new(0,4)

local function RefreshDropdown()
    for _,c in pairs(Scroll:GetChildren()) do
        if c:IsA("TextButton") then c:Destroy() end
    end
    for _, tool in pairs(LocalPlayer.Backpack:GetChildren()) do
        if tool:IsA("Tool") then
            local Item = Instance.new("TextButton", Scroll)
            Item.Size = UDim2.new(1,0,0,28)
            Item.BackgroundColor3 = Color3.fromRGB(45,45,45)
            Item.TextColor3 = Color3.fromRGB(255,255,255)
            Item.Text = tool.Name
            Item.Font = Enum.Font.Gotham
            Item.TextSize = 14
            Instance.new("UICorner", Item).CornerRadius = UDim.new(0,6)

            Item.MouseButton1Click:Connect(function()
                Config.SelectedTool = tool.Name
                SaveConfig()
                Button.Text = "Selected: " .. tool.Name
                EquipToolByName(tool.Name)
            end)
        end
    end
    Scroll.CanvasSize = UDim2.new(0,0,0,#LocalPlayer.Backpack:GetChildren()*32)
    if Config.SelectedTool then
        EquipToolByName(Config.SelectedTool)
    end
end
RefreshDropdown()

LocalPlayer.Backpack.ChildAdded:Connect(RefreshDropdown)
LocalPlayer.Backpack.ChildRemoved:Connect(RefreshDropdown)
Refresh.MouseButton1Click:Connect(RefreshDropdown)

LocalPlayer.CharacterAdded:Connect(function(char)
    char:WaitForChild("Humanoid")
    task.wait(1)
    if Config.SelectedTool then
        EquipToolByName(Config.SelectedTool)
        Button.Text = "Selected: " .. Config.SelectedTool
    end
end)

local Open = false
Button.MouseButton1Click:Connect(function()
    Open = not Open
    TweenService:Create(Dropdown, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Size = Open and UDim2.new(1,-20,0,120) or UDim2.new(1,-20,0,0)
    }):Play()
    TweenService:Create(Arrow, TweenInfo.new(0.25), {
        Rotation = Open and 180 or 0
    }):Play()
    TweenService:Create(Frame, TweenInfo.new(0.3), {
        Size = Open and UDim2.new(0,260,0,225) or UDim2.new(0,260,0,95)
    }):Play()
end)

local dragging, dragInput, dragStart, startPos
Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)
Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)
UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

local ToggleBtn = Instance.new("TextButton", Frame)
ToggleBtn.Size = UDim2.new(1, -20, 0, 28)
ToggleBtn.Position = UDim2.new(0,10,1,-35)
ToggleBtn.BackgroundColor3 = Config.AutoSwing and Color3.fromRGB(60,120,60) or Color3.fromRGB(40,40,40)
ToggleBtn.TextColor3 = Color3.fromRGB(255,255,255)
ToggleBtn.Text = Config.AutoSwing and "⚔ Auto Swing: ON" or "⚔ Auto Swing: OFF"
ToggleBtn.Font = Enum.Font.Gotham
ToggleBtn.TextSize = 14
Instance.new("UICorner", ToggleBtn).CornerRadius = UDim.new(0,6)

ToggleBtn.MouseButton1Click:Connect(function()
    Config.AutoSwing = not Config.AutoSwing
    ToggleBtn.Text = Config.AutoSwing and "⚔ Auto Swing: ON" or "⚔ Auto Swing: OFF"
    ToggleBtn.BackgroundColor3 = Config.AutoSwing and Color3.fromRGB(60,120,60) or Color3.fromRGB(40,40,40)
    SaveConfig()
end)

task.spawn(function()
    while task.wait() do
        if Config.AutoSwing then
            local char = LocalPlayer.Character
            local tool = char and char:FindFirstChildOfClass("Tool")
            if tool then
                pcall(function() tool:Activate() end)
            end
        end
    end
end)

task.spawn(function()
    while task.wait() do
        Title.TextColor3 = RainbowColor(0.5)
        Frame.BackgroundColor3 = RainbowColor(0.15)
    end
end)
