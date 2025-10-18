-- 99 Nights in the Forest - Round God Mode GUI (Fix Visible) by Cu Bo 😎
local player = game.Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")

-- Xóa GUI cũ nếu có
if CoreGui:FindFirstChild("RoundGodGui") then
    CoreGui.RoundGodGui:Destroy()
end

-- Tạo GUI mới
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "RoundGodGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.IgnoreGuiInset = true
ScreenGui.Parent = CoreGui

-- Tạo khung
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 140, 0, 60)
Frame.Position = UDim2.new(0.05, 0, 0.25, 0)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

-- Bo góc khung
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 25)
corner.Parent = Frame

-- Nút bật/tắt
local Button = Instance.new("TextButton")
Button.Size = UDim2.new(1, -20, 1, -20)
Button.Position = UDim2.new(0, 10, 0, 10)
Button.BackgroundColor3 = Color3.fromRGB(60, 180, 60)
Button.Text = "God Mode: OFF"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Font = Enum.Font.GothamBold
Button.TextSize = 16
Button.Parent = Frame

-- Bo tròn nút
local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 20)
btnCorner.Parent = Button

-- Trạng thái bật/tắt
local godmode = false

-- Xử lý khi bấm nút
Button.MouseButton1Click:Connect(function()
    godmode = not godmode
    if godmode then
        Button.Text = "God Mode: ON"
        Button.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ProBaconHub/DATABASE/refs/heads/main/99%20Nights%20in%20the%20Forest/Infinite%20Health.lua"))()
    else
        Button.Text = "God Mode: OFF"
        Button.BackgroundColor3 = Color3.fromRGB(60, 180, 60)
        local plr = game.Players.LocalPlayer
        if plr.Character and plr.Character:FindFirstChild("Humanoid") then
            plr.Character.Humanoid.Health = plr.Character.Humanoid.MaxHealth
        end
    end
end)
