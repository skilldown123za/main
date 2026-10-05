-- ==================================================
-- Jayjay design system | Inter typography
-- ==================================================
local _JJFonts = (_G.JAYJAY or {}).Font or {}
local FONT_BOLD = _JJFonts.Bold or Font.fromEnum(Enum.Font.GothamBold)
local FONT_MEDIUM = _JJFonts.Medium or Font.fromEnum(Enum.Font.GothamMedium)
local FONT_REGULAR = _JJFonts.Regular or Font.fromEnum(Enum.Font.Gotham)
local FONT_BLACK = _JJFonts.Black or Font.fromEnum(Enum.Font.GothamBlack)

--==================================================
-- YOKUDO HUB | TAB | Setting (UPDATED v3)
-- ✅ Anti Trap
-- ✅ God Mode
-- ✅ Manual Fast Click
-- ✅ Anti AFK
-- ❌ គ្មាន Safe Speed Mode (REMOVED)
-- ❌ គ្មាន Method/Speed TextBox/AntiRagdoll
-- ❌ គ្មាន Walk Speed
--==================================================

local TabsManager = _G.YOKUDO_TabsManager
local TweenService = game:GetService("TweenService")

local SettingTab, SettingPage = TabsManager:RegisterTab("Setting", 7, "SETTING")

--==================================================
-- SETTING CONTENT
--==================================================
CreateSectionTitle(SettingPage, "Settings", 1)

--==================================================
-- FEATURE 1: ANTI TRAP
--==================================================
local AntiTrapHolder = Instance.new("Frame")
AntiTrapHolder.Size = UDim2.new(1, 0, 0, 52)
AntiTrapHolder.BackgroundTransparency = 1
AntiTrapHolder.LayoutOrder = 2
AntiTrapHolder.Parent = SettingPage

local AntiTrapLabel = Instance.new("TextLabel")
AntiTrapLabel.Size = UDim2.new(1, -50, 0, 20)
AntiTrapLabel.Position = UDim2.new(0, 0, 0, 2)
AntiTrapLabel.BackgroundTransparency = 1
AntiTrapLabel.Text = "Anti Trap"
AntiTrapLabel.TextColor3 = Color3.fromRGB(33, 26, 46)
AntiTrapLabel.TextSize = 13
AntiTrapLabel.TextXAlignment = Enum.TextXAlignment.Left
AntiTrapLabel.TextYAlignment = Enum.TextYAlignment.Center
AntiTrapLabel.FontFace = FONT_BOLD
AntiTrapLabel.Parent = AntiTrapHolder

local AntiTrapTitle = Instance.new("TextLabel")
AntiTrapTitle.Size = UDim2.new(1, -50, 0, 18)
AntiTrapTitle.Position = UDim2.new(0, 0, 0, 24)
AntiTrapTitle.BackgroundTransparency = 1
AntiTrapTitle.Text = "click for remove Trap"
AntiTrapTitle.TextColor3 = Color3.fromRGB(94, 84, 112)
AntiTrapTitle.TextSize = 10
AntiTrapTitle.TextXAlignment = Enum.TextXAlignment.Left
AntiTrapTitle.FontFace = FONT_REGULAR
AntiTrapTitle.Parent = AntiTrapHolder

local AntiTrapCheckButton = Instance.new("TextButton")
AntiTrapCheckButton.Size = UDim2.new(0, 26, 0, 26)
AntiTrapCheckButton.Position = UDim2.new(1, -26, 0.5, -13)
AntiTrapCheckButton.BackgroundColor3 = Color3.fromRGB(243, 239, 249)
AntiTrapCheckButton.BorderSizePixel = 0
AntiTrapCheckButton.Text = ""
AntiTrapCheckButton.AutoButtonColor = false
AntiTrapCheckButton.Parent = AntiTrapHolder

local AntiTrapCorner = Instance.new("UICorner")
AntiTrapCorner.CornerRadius = UDim.new(0, 6)
AntiTrapCorner.Parent = AntiTrapCheckButton

local AntiTrapStroke = Instance.new("UIStroke")
AntiTrapStroke.Color = Color3.fromRGB(220, 210, 234)
AntiTrapStroke.Thickness = 1.5
AntiTrapStroke.Parent = AntiTrapCheckButton

local AntiTrapCheck = Instance.new("TextLabel")
AntiTrapCheck.Size = UDim2.new(1, 0, 1, 0)
AntiTrapCheck.BackgroundTransparency = 1
AntiTrapCheck.Text = "✓"
AntiTrapCheck.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiTrapCheck.TextSize = 18
AntiTrapCheck.FontFace = FONT_BOLD
AntiTrapCheck.Visible = false
AntiTrapCheck.Parent = AntiTrapCheckButton

local AntiTrapEnabled = false

local function ToggleAntiTrap()
    AntiTrapEnabled = not AntiTrapEnabled
    AntiTrapCheck.Visible = AntiTrapEnabled
    if AntiTrapEnabled then
        AntiTrapCheckButton.BackgroundColor3 = Color3.fromRGB(124, 58, 237)
        AntiTrapStroke.Color = Color3.fromRGB(168, 85, 247)
        if _G.YOKUDO_AntiTrap then
            _G.YOKUDO_AntiTrap.Enable()
        end
    else
        AntiTrapCheckButton.BackgroundColor3 = Color3.fromRGB(243, 239, 249)
        AntiTrapStroke.Color = Color3.fromRGB(220, 210, 234)
        if _G.YOKUDO_AntiTrap then
            _G.YOKUDO_AntiTrap.Disable()
        end
    end
end

AntiTrapCheckButton.MouseButton1Click:Connect(function()
    ToggleAntiTrap()
end)

--==================================================
-- FEATURE 2: GOD MODE
--==================================================
local GodModeHolder = Instance.new("Frame")
GodModeHolder.Size = UDim2.new(1, 0, 0, 52)
GodModeHolder.BackgroundTransparency = 1
GodModeHolder.LayoutOrder = 3
GodModeHolder.Parent = SettingPage

local GodModeLabel = Instance.new("TextLabel")
GodModeLabel.Size = UDim2.new(1, -90, 0, 20)
GodModeLabel.Position = UDim2.new(0, 0, 0, 2)
GodModeLabel.BackgroundTransparency = 1
GodModeLabel.Text = "God Mode"
GodModeLabel.TextColor3 = Color3.fromRGB(33, 26, 46)
GodModeLabel.TextSize = 13
GodModeLabel.TextXAlignment = Enum.TextXAlignment.Left
GodModeLabel.TextYAlignment = Enum.TextYAlignment.Center
GodModeLabel.FontFace = FONT_BOLD
GodModeLabel.Parent = GodModeHolder

local GodModeTitle = Instance.new("TextLabel")
GodModeTitle.Size = UDim2.new(1, -90, 0, 18)
GodModeTitle.Position = UDim2.new(0, 0, 0, 24)
GodModeTitle.BackgroundTransparency = 1
GodModeTitle.Text = "When Character Dead click God Mode"
GodModeTitle.TextColor3 = Color3.fromRGB(94, 84, 112)
GodModeTitle.TextSize = 10
GodModeTitle.TextXAlignment = Enum.TextXAlignment.Left
GodModeTitle.FontFace = FONT_REGULAR
GodModeTitle.Parent = GodModeHolder

local GodModeButton = Instance.new("TextButton")
GodModeButton.Size = UDim2.new(0, 70, 0, 26)
GodModeButton.Position = UDim2.new(1, -70, 0.5, -13)
GodModeButton.BackgroundColor3 = Color3.fromRGB(124, 58, 237)
GodModeButton.BorderSizePixel = 0
GodModeButton.Text = "Click"
GodModeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
GodModeButton.TextSize = 12
GodModeButton.FontFace = FONT_BOLD
GodModeButton.AutoButtonColor = false
GodModeButton.Parent = GodModeHolder

local GodModeCorner = Instance.new("UICorner")
GodModeCorner.CornerRadius = UDim.new(0, 6)
GodModeCorner.Parent = GodModeButton

local GodModeStroke = Instance.new("UIStroke")
GodModeStroke.Color = Color3.fromRGB(196, 181, 253)
GodModeStroke.Thickness = 1.5
GodModeStroke.Transparency = 0.3
GodModeStroke.Parent = GodModeButton

GodModeButton.MouseEnter:Connect(function()
    TweenService:Create(GodModeButton, TweenInfo.new(0.15), {
        BackgroundColor3 = Color3.fromRGB(139, 92, 246)
    }):Play()
end)

GodModeButton.MouseLeave:Connect(function()
    TweenService:Create(GodModeButton, TweenInfo.new(0.15), {
        BackgroundColor3 = Color3.fromRGB(124, 58, 237)
    }):Play()
end)

--==================================================
-- NOTIFICATION FUNCTION
--==================================================
local function ShowNotification(Text)
    local PlayerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

    local NotifyGui = Instance.new("ScreenGui")
    NotifyGui.Name = "YokudoNotify"
    NotifyGui.ResetOnSpawn = false
    NotifyGui.DisplayOrder = 999
    NotifyGui.Parent = PlayerGui

    local NotifyFrame = Instance.new("Frame")
    NotifyFrame.Size = UDim2.new(0, 220, 0, 50)
    NotifyFrame.Position = UDim2.new(0, -250, 0, 20)
    NotifyFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NotifyFrame.BackgroundTransparency = 0.06
    NotifyFrame.BorderSizePixel = 0
    NotifyFrame.Parent = NotifyGui

    local NotifyCorner = Instance.new("UICorner")
    NotifyCorner.CornerRadius = UDim.new(0, 10)
    NotifyCorner.Parent = NotifyFrame

    local NotifyStroke = Instance.new("UIStroke")
    NotifyStroke.Color = Color3.fromRGB(124, 58, 237)
    NotifyStroke.Thickness = 1
    NotifyStroke.Transparency = 0.7
    NotifyStroke.Parent = NotifyFrame

    local NotifyText = Instance.new("TextLabel")
    NotifyText.Size = UDim2.new(1, -20, 1, 0)
    NotifyText.Position = UDim2.new(0, 10, 0, 0)
    NotifyText.BackgroundTransparency = 1
    NotifyText.Text = Text
    NotifyText.TextColor3 = Color3.fromRGB(33, 26, 46)
    NotifyText.TextSize = 13
    NotifyText.TextXAlignment = Enum.TextXAlignment.Left
    NotifyText.TextYAlignment = Enum.TextYAlignment.Center
    NotifyText.FontFace = FONT_BOLD
    NotifyText.Parent = NotifyFrame

    TweenService:Create(NotifyFrame, TweenInfo.new(0.4), {
        Position = UDim2.new(0, 20, 0, 20)
    }):Play()

    task.wait(5)

    TweenService:Create(NotifyFrame, TweenInfo.new(0.3), {
        Position = UDim2.new(0, -250, 0, 20),
        BackgroundTransparency = 1
    }):Play()
    TweenService:Create(NotifyText, TweenInfo.new(0.3), {
        TextTransparency = 1
    }):Play()
    TweenService:Create(NotifyStroke, TweenInfo.new(0.3), {
        Transparency = 1
    }):Play()

    task.wait(0.3)
    NotifyGui:Destroy()
end

GodModeButton.MouseButton1Down:Connect(function()
    TweenService:Create(GodModeButton, TweenInfo.new(0.08), {
        Size = UDim2.new(0, 62, 0, 23),
        BackgroundColor3 = Color3.fromRGB(109, 40, 217)
    }):Play()
end)

GodModeButton.MouseButton1Up:Connect(function()
    TweenService:Create(GodModeButton, TweenInfo.new(0.08), {
        Size = UDim2.new(0, 70, 0, 26),
        BackgroundColor3 = Color3.fromRGB(124, 58, 237)
    }):Play()
end)

GodModeButton.MouseButton1Click:Connect(function()
    if _G.YOKUDO_GodMode then
        _G.YOKUDO_GodMode.Enable()
    end
    ShowNotification("God Mode Start")
end)

--==================================================
-- FEATURE 3: MANUAL FAST CLICK
--==================================================
local FastClickHolder = Instance.new("Frame")
FastClickHolder.Size = UDim2.new(1, 0, 0, 52)
FastClickHolder.BackgroundTransparency = 1
FastClickHolder.LayoutOrder = 4
FastClickHolder.Parent = SettingPage

local FastClickLabel = Instance.new("TextLabel")
FastClickLabel.Size = UDim2.new(1, -90, 0, 20)
FastClickLabel.Position = UDim2.new(0, 0, 0, 2)
FastClickLabel.BackgroundTransparency = 1
FastClickLabel.Text = "Manual Fast Click"
FastClickLabel.TextColor3 = Color3.fromRGB(33, 26, 46)
FastClickLabel.TextSize = 13
FastClickLabel.TextXAlignment = Enum.TextXAlignment.Left
FastClickLabel.TextYAlignment = Enum.TextYAlignment.Center
FastClickLabel.FontFace = FONT_BOLD
FastClickLabel.Parent = FastClickHolder

local FastClickTitle = Instance.new("TextLabel")
FastClickTitle.Size = UDim2.new(1, -90, 0, 18)
FastClickTitle.Position = UDim2.new(0, 0, 0, 24)
FastClickTitle.BackgroundTransparency = 1
FastClickTitle.Text = "Enable Click Egg Fast by hand"
FastClickTitle.TextColor3 = Color3.fromRGB(94, 84, 112)
FastClickTitle.TextSize = 10
FastClickTitle.TextXAlignment = Enum.TextXAlignment.Left
FastClickTitle.FontFace = FONT_REGULAR
FastClickTitle.Parent = FastClickHolder

local FastClickButton = Instance.new("TextButton")
FastClickButton.Size = UDim2.new(0, 70, 0, 26)
FastClickButton.Position = UDim2.new(1, -70, 0.5, -13)
FastClickButton.BackgroundColor3 = Color3.fromRGB(124, 58, 237)
FastClickButton.BorderSizePixel = 0
FastClickButton.Text = "Click"
FastClickButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FastClickButton.TextSize = 12
FastClickButton.FontFace = FONT_BOLD
FastClickButton.AutoButtonColor = false
FastClickButton.Parent = FastClickHolder

local FastClickCorner = Instance.new("UICorner")
FastClickCorner.CornerRadius = UDim.new(0, 6)
FastClickCorner.Parent = FastClickButton

local FastClickStroke = Instance.new("UIStroke")
FastClickStroke.Color = Color3.fromRGB(196, 181, 253)
FastClickStroke.Thickness = 1.5
FastClickStroke.Transparency = 0.3
FastClickStroke.Parent = FastClickButton

FastClickButton.MouseEnter:Connect(function()
    TweenService:Create(FastClickButton, TweenInfo.new(0.15), {
        BackgroundColor3 = Color3.fromRGB(139, 92, 246)
    }):Play()
end)

FastClickButton.MouseLeave:Connect(function()
    TweenService:Create(FastClickButton, TweenInfo.new(0.15), {
        BackgroundColor3 = Color3.fromRGB(124, 58, 237)
    }):Play()
end)

FastClickButton.MouseButton1Down:Connect(function()
    TweenService:Create(FastClickButton, TweenInfo.new(0.08), {
        Size = UDim2.new(0, 62, 0, 23),
        BackgroundColor3 = Color3.fromRGB(109, 40, 217)
    }):Play()
end)

FastClickButton.MouseButton1Up:Connect(function()
    TweenService:Create(FastClickButton, TweenInfo.new(0.08), {
        Size = UDim2.new(0, 70, 0, 26),
        BackgroundColor3 = Color3.fromRGB(124, 58, 237)
    }):Play()
end)

FastClickButton.MouseButton1Click:Connect(function()
    if not _G.YOKUDO_ManualFastClick then
        warn("[YOKUDO] ManualFastClick feature not loaded")
        ShowNotification("Manual Fast Click Not Loaded")
        return
    end

    if _G.YOKUDO_ManualFastClick.IsEnabled() then
        _G.YOKUDO_ManualFastClick.Disable()
        ShowNotification("Manual Fast Click Stop")
    else
        _G.YOKUDO_ManualFastClick.Enable()
        ShowNotification("Manual Fast Click Start")
    end
end)

task.spawn(function()
    task.wait(0.5)
    if _G.YOKUDO_ManualFastClick then
        if _G.YOKUDO_ManualFastClick.IsEnabled() then
            FastClickButton.Text = "Stop"
        else
            FastClickButton.Text = "Click"
        end
    end
end)

--==================================================
-- FEATURE 4: ANTI AFK
--==================================================
local AntiAFKHolder = Instance.new("Frame")
AntiAFKHolder.Size = UDim2.new(1, 0, 0, 52)
AntiAFKHolder.BackgroundTransparency = 1
AntiAFKHolder.LayoutOrder = 5
AntiAFKHolder.Parent = SettingPage

local AntiAFKLabel = Instance.new("TextLabel")
AntiAFKLabel.Size = UDim2.new(1, -50, 0, 20)
AntiAFKLabel.Position = UDim2.new(0, 0, 0, 2)
AntiAFKLabel.BackgroundTransparency = 1
AntiAFKLabel.Text = "Anti AFK"
AntiAFKLabel.TextColor3 = Color3.fromRGB(33, 26, 46)
AntiAFKLabel.TextSize = 13
AntiAFKLabel.TextXAlignment = Enum.TextXAlignment.Left
AntiAFKLabel.TextYAlignment = Enum.TextYAlignment.Center
AntiAFKLabel.FontFace = FONT_BOLD
AntiAFKLabel.Parent = AntiAFKHolder

local AntiAFKTitle = Instance.new("TextLabel")
AntiAFKTitle.Size = UDim2.new(1, -50, 0, 18)
AntiAFKTitle.Position = UDim2.new(0, 0, 0, 24)
AntiAFKTitle.BackgroundTransparency = 1
AntiAFKTitle.Text = "Click when AFK"
AntiAFKTitle.TextColor3 = Color3.fromRGB(94, 84, 112)
AntiAFKTitle.TextSize = 10
AntiAFKTitle.TextXAlignment = Enum.TextXAlignment.Left
AntiAFKTitle.FontFace = FONT_REGULAR
AntiAFKTitle.Parent = AntiAFKHolder

local AntiAFKCheckButton = Instance.new("TextButton")
AntiAFKCheckButton.Size = UDim2.new(0, 26, 0, 26)
AntiAFKCheckButton.Position = UDim2.new(1, -26, 0.5, -13)
AntiAFKCheckButton.BackgroundColor3 = Color3.fromRGB(243, 239, 249)
AntiAFKCheckButton.BorderSizePixel = 0
AntiAFKCheckButton.Text = ""
AntiAFKCheckButton.AutoButtonColor = false
AntiAFKCheckButton.Parent = AntiAFKHolder

local AntiAFKCorner = Instance.new("UICorner")
AntiAFKCorner.CornerRadius = UDim.new(0, 6)
AntiAFKCorner.Parent = AntiAFKCheckButton

local AntiAFKStroke = Instance.new("UIStroke")
AntiAFKStroke.Color = Color3.fromRGB(220, 210, 234)
AntiAFKStroke.Thickness = 1.5
AntiAFKStroke.Parent = AntiAFKCheckButton

local AntiAFKCheck = Instance.new("TextLabel")
AntiAFKCheck.Size = UDim2.new(1, 0, 1, 0)
AntiAFKCheck.BackgroundTransparency = 1
AntiAFKCheck.Text = "✓"
AntiAFKCheck.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiAFKCheck.TextSize = 18
AntiAFKCheck.FontFace = FONT_BOLD
AntiAFKCheck.Visible = false
AntiAFKCheck.Parent = AntiAFKCheckButton

local AntiAFKEnabled = false

local function ToggleAntiAFK()
    AntiAFKEnabled = not AntiAFKEnabled
    AntiAFKCheck.Visible = AntiAFKEnabled
    if AntiAFKEnabled then
        AntiAFKCheckButton.BackgroundColor3 = Color3.fromRGB(124, 58, 237)
        AntiAFKStroke.Color = Color3.fromRGB(168, 85, 247)
        if _G.YOKUDO_AntiAFK then
            _G.YOKUDO_AntiAFK.Enable()
        end
    else
        AntiAFKCheckButton.BackgroundColor3 = Color3.fromRGB(243, 239, 249)
        AntiAFKStroke.Color = Color3.fromRGB(220, 210, 234)
        if _G.YOKUDO_AntiAFK then
            _G.YOKUDO_AntiAFK.Disable()
        end
    end
end

AntiAFKCheckButton.MouseButton1Click:Connect(function()
    ToggleAntiAFK()
end)

--==================================================
-- SYNC ON LOAD
--==================================================
task.spawn(function()
    task.wait(0.5)

    if _G.YOKUDO_AntiAFK then
        if _G.YOKUDO_AntiAFK.IsEnabled() then
            AntiAFKEnabled = true
            AntiAFKCheck.Visible = true
            AntiAFKCheckButton.BackgroundColor3 = Color3.fromRGB(124, 58, 237)
            AntiAFKStroke.Color = Color3.fromRGB(168, 85, 247)
        end
    end
end)

print("✅ Setting Tab Loaded (v3 — No Safe Speed Mode)")
