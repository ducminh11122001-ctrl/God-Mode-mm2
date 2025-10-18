-- MM2 God Mode GUI Drag Version (by Cu Bo 😎)
local player = game.Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")

-- Xoá GUI cũ nếu có
if CoreGui:FindFirstChild("GodModeGui") then
    CoreGui.GodModeGui:Destroy()
end

-- Tạo GUI
local gui = Instance.new("ScreenGui")
gui.Name = "GodModeGui"
gui.Parent = CoreGui
gui.ResetOnSpawn = false

-- Khung chính
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 160, 0, 55)
frame.Position = UDim2.new(0, 20, 0, 20) -- 👈 Góc trái trên màn hình
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Active = true
frame.Draggable = true -- Cho phép kéo
frame.Parent = gui

-- Bo góc
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = frame

-- Nút bật/tắt
local button = Instance.new("TextButton")
button.Size = UDim2.new(1, -10, 1, -10)
button.Position = UDim2.new(0, 5, 0, 5)
button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextSize = 18
button.Font = Enum.Font.SourceSansBold
button.Text = "⚡ BẬT GOD MODE ⚡"
button.Parent = frame

local corner2 = Instance.new("UICorner")
corner2.CornerRadius = UDim.new(0, 8)
corner2.Parent = button

local isOn = false

-- Hàm godmode
local function godmode()
    local char = player.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return end

    hum.Name = "1"
    local clone = hum:Clone()
    clone.Parent = char
    clone.Name = "Humanoid"

    task.wait(0.1)
    hum:Destroy()

    workspace.CurrentCamera.CameraSubject = clone
    player.Character.Animate.Disabled = true
    player.Character.Animate.Disabled = false
end

-- Khi bấm nút
button.MouseButton1Click:Connect(function()
    if not isOn then
        isOn = true
        button.Text = "✅ GOD MODE ON"
        button.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
        godmode()
    else
        isOn = false
        button.Text = "⚡ BẬT GOD MODE ⚡"
        button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        player:LoadCharacter()
    end
end)
