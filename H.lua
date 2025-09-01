--[[
getgenv().AutoFarmV2   = true
getgenv().FireTools    = true
getgenv().KillAura     = true
getgenv().Range        = 1000000 -- do not edit
getgenv().AutoSpinGift = false   -- annoying
]]
if game.PlaceId == 79704652105017 then
    local executor = (identifyexecutor and identifyexecutor()) or "Unknown"

    -- Delta support
    if executor == "Delta" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/norwaylua/Roblox/refs/heads/main/Delta%20support.lua"))()
        return
    end

    local StarterGui = game:GetService("StarterGui")
    local TweenService = game:GetService("TweenService")
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local LocalPlayer = Players.LocalPlayer

    --// Safe Notify
    local function notify(props)
        pcall(function()
            StarterGui:SetCore("SendNotification", props)
        end)
    end

    -- Loading notification
    task.spawn(function()
        notify({Title = "Tenery hub", Text = "Initializing…", Duration = 2})
        for p = 0, 100, 10 do
            notify({
                Title = "Tenery hub",
                Text  = ("Loading… %d%%"):format(p),
                Duration = 0.3
            })
            task.wait(0.15)
        end
    end)

    -- Load required scripts
    loadstring(game:HttpGet("https://raw.githubusercontent.com/norwaylua/Alwi-script/refs/heads/main/Alua"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/norwaylua/Alwi-script/refs/heads/main/Auto%20Reconnect.lua"))()

    --// UI Popup
    local playerGui = LocalPlayer:FindFirstChild("PlayerGui") or game:GetService("CoreGui")

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "TeneryHubNotif"
    screenGui.IgnoreGuiInset = true
    screenGui.ResetOnSpawn = false
    screenGui.Parent = playerGui

    local frame = Instance.new("Frame")
    frame.Name = "Container"
    frame.AnchorPoint = Vector2.new(0.5, 0.5)
    frame.Position = UDim2.new(0.5, 0, -0.2, 0)
    frame.Size = UDim2.new(0, 420, 0, 120)
    frame.BackgroundTransparency = 1
    frame.Parent = screenGui

    local panel = Instance.new("Frame")
    panel.Name = "Panel"
    panel.Size = UDim2.new(1, 0, 1, 0)
    panel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    panel.BorderSizePixel = 0
    panel.Parent = frame

    local uicorner = Instance.new("UICorner", panel)
    uicorner.CornerRadius = UDim.new(0, 14)

    local outline = Instance.new("Frame")
    outline.Name = "Outline"
    outline.AnchorPoint = Vector2.new(0.5, 0.5)
    outline.Size = UDim2.new(1, 6, 1, 6)
    outline.Position = UDim2.new(0.5, 0, 0.5, 0)
    outline.BackgroundColor3 = Color3.fromRGB(255, 30, 70)
    outline.BorderSizePixel = 0
    outline.ZIndex = panel.ZIndex - 1
    outline.Parent = frame
    Instance.new("UICorner", outline).CornerRadius = UDim.new(0, 18)

    local icon = Instance.new("ImageLabel")
    icon.Name = "Icon"
    icon.Size = UDim2.new(0, 72, 0, 72)
    icon.Position = UDim2.new(0, 14, 0.5, -36)
    icon.BackgroundTransparency = 1
    icon.Image = "rbxassetid://92639750101948"
    icon.Parent = panel

    local title = Instance.new("TextLabel")
    title.Name = "Title"
    title.Size = UDim2.new(0, 220, 0, 28)
    title.Position = UDim2.new(0, 100, 0, 12)
    title.BackgroundTransparency = 1
    title.Text = "Tenery hub"
    title.Font = Enum.Font.GothamBold
    title.TextSize = 20
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Parent = panel

    local desc = Instance.new("TextLabel")
    desc.Name = "Description"
    desc.Size = UDim2.new(0, 220, 0, 48)
    desc.Position = UDim2.new(0, 100, 0, 40)
    desc.BackgroundTransparency = 1
    desc.Text = "This UI Made By Cici Fixed by alwi"
    desc.Font = Enum.Font.Gotham
    desc.TextSize = 16
    desc.TextColor3 = Color3.fromRGB(220, 220, 220)
    desc.TextXAlignment = Enum.TextXAlignment.Left
    desc.TextWrapped = true
    desc.Parent = panel

    local btnYes = Instance.new("TextButton")
    btnYes.Name = "BtnYes"
    btnYes.Size = UDim2.new(0, 64, 0, 40)
    btnYes.Position = UDim2.new(1, -74, 1, -50)
    btnYes.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    btnYes.Font = Enum.Font.GothamBold
    btnYes.Text = "✓"
    btnYes.TextSize = 22
    btnYes.TextColor3 = Color3.fromRGB(245,245,245)
    btnYes.Parent = panel
    Instance.new("UICorner", btnYes).CornerRadius = UDim.new(0, 10)

    local btnNo = btnYes:Clone()
    btnNo.Name = "BtnNo"
    btnNo.Text = "✖"
    btnNo.Position = UDim2.new(1, -148, 1, -50)
    btnNo.Parent = panel

    -- Animations
    TweenService:Create(frame, TweenInfo.new(0.45, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, 0.15, 0)}):Play()

    local function closeAndDestroy()
        TweenService:Create(frame, TweenInfo.new(0.35), {Position = UDim2.new(0.5, 0, -0.25, 0)}):Play()
        delay(0.35, function() pcall(function() screenGui:Destroy() end) end)
    end

    btnNo.MouseButton1Click:Connect(closeAndDestroy)
    btnYes.MouseButton1Click:Connect(function()
        setclipboard("https://discord.gg/7RMa4VQyPA")
        closeAndDestroy()
    end)

    delay(100, function()
        if screenGui and screenGui.Parent then
            closeAndDestroy()
        end
    end)

    --// AutoFAutoFarm

    for _, v in pairs(workspace.WarMap.Model:GetDescendants()) do
    if v.Name == "KickParts" then
        v:Destroy()
    end
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function Bypass()
    firetouchinterest(LocalPlayer.Character.HumanoidRootPart, workspace.Teleport1, 0)
    task.wait(0.1)
    firetouchinterest(LocalPlayer.Character.HumanoidRootPart, workspace.Teleport1, 1)
end

local function StartFarm()
    task.spawn(function()
        while task.wait() do
            if not getgenv().AutoFarmV2 then break end

            local character = LocalPlayer.Character
            local humanoid = character and character:FindFirstChild("Humanoid")

            if not character or not humanoid then continue end

            if humanoid.Health <= 0 then
                repeat
                    task.wait()
                    if not getgenv().AutoFarmV2 then return end
                until humanoid.Health > 0
            end

            if character:FindFirstChild("HumanoidRootPart") then
                local closestEnemy, shortestDistance = nil, math.huge

                for _, v in pairs(workspace.Enemys:GetChildren()) do
                    if v:IsA("Model") then
                        local hum = v:FindFirstChild("Humanoid")
                        local hrp = v:FindFirstChild("HumanoidRootPart")

                        for _, part in pairs(v:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.CanCollide = false
                            end
                        end

                        if hum and hrp and hum.Health > 0 then
                            local distance = (character.HumanoidRootPart.Position - hrp.Position).Magnitude
                            if distance < shortestDistance then
                                closestEnemy = v
                                shortestDistance = distance
                            end
                        end
                    end
                end

                if closestEnemy then
                    local enemyHRP = closestEnemy:FindFirstChild("HumanoidRootPart")
                    if enemyHRP then
                        pcall(function()
                            character.HumanoidRootPart.CFrame = enemyHRP.CFrame + Vector3.new(0, -6.2, 0)
                            local bv = Instance.new("BodyVelocity")
                            bv.MaxForce = Vector3.new(1e5, 1e5, 1e5)
                            bv.Velocity = Vector3.new(0, 0, 0)
                            bv.Parent = character.HumanoidRootPart
                            task.wait()
                            bv:Destroy()
                        end)
                    end
                else
                    pcall(function()
                        character.HumanoidRootPart.CFrame = CFrame.new(103.74857330322266, 8.06245231628418, -75.89685821533203)
                        local bv = Instance.new("BodyVelocity")
                        bv.MaxForce = Vector3.new(1e5, 1e5, 1e5)
                        bv.Velocity = Vector3.new(0, 0, 0)
                        bv.Parent = character.HumanoidRootPart
                        task.wait()
                        bv:Destroy()
                    end)
                end
            end
        end
    end)
end

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
    

    --// KillAura
    RunService.RenderStepped:Connect(function()
        if not getgenv().KillAura then return end
        local char = LocalPlayer.Character
        local tool = char and char:FindFirstChildOfClass("Tool")
        if tool and tool:FindFirstChild("Handle") then
            for _, v in pairs(workspace.Enemys:GetChildren()) do
                local hum, hrp = v:FindFirstChild("Humanoid"), v:FindFirstChild("HumanoidRootPart")
                if hum and hrp and hum.Health > 0 then
                    if LocalPlayer:DistanceFromCharacter(hrp.Position) <= getgenv().Range then
                        tool:Activate()
                        for _, part in ipairs(v:GetChildren()) do
                            if part:IsA("BasePart") then
                                firetouchinterest(tool.Handle, part, 0)
                                firetouchinterest(tool.Handle, part, 1)
                            end
                        end
                    end
                end
            end
        end
    end)

    
    task.spawn(function()
        while task.wait(2) do
            if not getgenv().AutoSpinGift then break end
            local spinSignal = game:GetService("ReplicatedStorage"):WaitForChild("Signals"):WaitForChild("Spin")
            pcall(function() spinSignal:InvokeServer() end)
            for gift = 1, 12 do
                pcall(function()
                    local args = { "Gift" .. gift }
                    game:GetService("ReplicatedStorage").Signals.ClaimGift:FireServer(unpack(args))
                end)
                task.wait(0.2)
            end
        end
    end)
    
    local vu = game:GetService("VirtualUser")
    LocalPlayer.Idled:Connect(function()
        vu:CaptureController()
        vu:ClickButton2(Vector2.new())
    end)

    LocalPlayer.CharacterAdded:Connect(function(char)
    char:WaitForChild("Humanoid")
    task.wait(2)

    if Config.SelectedTool then
        EquipToolByName(Config.SelectedTool)
        Button.Text = "Selected: " .. Config.SelectedTool
    end
    Bypass()
    StartFarm()
end)

Bypass()
wait(2)
StartFarm()
    
    task.delay(2, function()
        notify({Title = "Tenery hub", Text = "Loaded successfully!", Duration = 4})
    end)
end
