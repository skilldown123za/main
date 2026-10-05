-- ==================================================
-- Jayjay design system | Inter typography
-- ==================================================
local _JJFonts = (_G.JAYJAY or {}).Font or {}
local FONT_BOLD = _JJFonts.Bold or Font.fromEnum(Enum.Font.GothamBold)
local FONT_MEDIUM = _JJFonts.Medium or Font.fromEnum(Enum.Font.GothamMedium)
local FONT_REGULAR = _JJFonts.Regular or Font.fromEnum(Enum.Font.Gotham)
local FONT_BLACK = _JJFonts.Black or Font.fromEnum(Enum.Font.GothamBlack)

-- ==================================================
-- YOKUDO HUB | TAB | Collect Egg New (NO WARNING)
-- Feature 1: For Event Drop Egg
-- Feature 2: Anti Guard
-- ==================================================

local TabsManager = _G.YOKUDO_TabsManager
local TweenService = game:GetService("TweenService")

local CollectEggNewTab, CollectEggNewPage = TabsManager:RegisterTab("Collect Egg new", 8, "COLLECT_EGG_NEW")

-- ==================================================
-- CONTENT
-- ==================================================
CreateSectionTitle(CollectEggNewPage, "Collect Egg new", 1)

-- ==================================================
-- FEATURE 1: For Event Drop Egg (Checkbox)
-- ==================================================
local DropEggHolder = Instance.new("Frame")
DropEggHolder.Size = UDim2.new(1, 0, 0, 52)
DropEggHolder.BackgroundTransparency = 1
DropEggHolder.LayoutOrder = 2
DropEggHolder.Parent = CollectEggNewPage

local DropEggLabel = Instance.new("TextLabel")
DropEggLabel.Size = UDim2.new(1, -50, 0, 20)
DropEggLabel.Position = UDim2.new(0, 0, 0, 2)
DropEggLabel.BackgroundTransparency = 1
DropEggLabel.Text = "For Event Drop Egg"
DropEggLabel.TextColor3 = Color3.fromRGB(33, 26, 46)
DropEggLabel.TextSize = 13
DropEggLabel.TextXAlignment = Enum.TextXAlignment.Left
DropEggLabel.TextYAlignment = Enum.TextYAlignment.Center
DropEggLabel.FontFace = FONT_BOLD
DropEggLabel.Parent = DropEggHolder

local DropEggSub = Instance.new("TextLabel")
DropEggSub.Size = UDim2.new(1, -50, 0, 16)
DropEggSub.Position = UDim2.new(0, 0, 0, 24)
DropEggSub.BackgroundTransparency = 1
DropEggSub.Text = "Event Drop Egg Mode"
DropEggSub.TextColor3 = Color3.fromRGB(154, 143, 174)
DropEggSub.TextSize = 10
DropEggSub.TextXAlignment = Enum.TextXAlignment.Left
DropEggSub.FontFace = FONT_REGULAR
DropEggSub.Parent = DropEggHolder

local DropEggButton = Instance.new("TextButton")
DropEggButton.Size = UDim2.new(0, 26, 0, 26)
DropEggButton.Position = UDim2.new(1, -26, 0.5, -13)
DropEggButton.BackgroundColor3 = Color3.fromRGB(243, 239, 249)
DropEggButton.BorderSizePixel = 0
DropEggButton.Text = ""
DropEggButton.AutoButtonColor = false
DropEggButton.Parent = DropEggHolder

local DropEggCorner = Instance.new("UICorner")
DropEggCorner.CornerRadius = UDim.new(0, 6)
DropEggCorner.Parent = DropEggButton

local DropEggStroke = Instance.new("UIStroke")
DropEggStroke.Color = Color3.fromRGB(220, 210, 234)
DropEggStroke.Thickness = 1.5
DropEggStroke.Parent = DropEggButton

local DropEggCheck = Instance.new("TextLabel")
DropEggCheck.Size = UDim2.new(1, 0, 1, 0)
DropEggCheck.BackgroundTransparency = 1
DropEggCheck.Text = "✓"
DropEggCheck.TextColor3 = Color3.fromRGB(255, 255, 255)
DropEggCheck.TextSize = 18
DropEggCheck.FontFace = FONT_BOLD
DropEggCheck.Visible = false
DropEggCheck.Parent = DropEggButton

-- ==================================================
-- FEATURE 2: Anti Guard (Checkbox)
-- ==================================================
local AntiGuardHolder = Instance.new("Frame")
AntiGuardHolder.Size = UDim2.new(1, 0, 0, 52)
AntiGuardHolder.BackgroundTransparency = 1
AntiGuardHolder.LayoutOrder = 3
AntiGuardHolder.Parent = CollectEggNewPage

local AntiGuardLabel = Instance.new("TextLabel")
AntiGuardLabel.Size = UDim2.new(1, -50, 0, 20)
AntiGuardLabel.Position = UDim2.new(0, 0, 0, 2)
AntiGuardLabel.BackgroundTransparency = 1
AntiGuardLabel.Text = "Anti Guard"
AntiGuardLabel.TextColor3 = Color3.fromRGB(33, 26, 46)
AntiGuardLabel.TextSize = 13
AntiGuardLabel.TextXAlignment = Enum.TextXAlignment.Left
AntiGuardLabel.TextYAlignment = Enum.TextYAlignment.Center
AntiGuardLabel.FontFace = FONT_BOLD
AntiGuardLabel.Parent = AntiGuardHolder

local AntiGuardSub = Instance.new("TextLabel")
AntiGuardSub.Size = UDim2.new(1, -50, 0, 16)
AntiGuardSub.Position = UDim2.new(0, 0, 0, 24)
AntiGuardSub.BackgroundTransparency = 1
AntiGuardSub.Text = "Anti Guard Attack Protection"
AntiGuardSub.TextColor3 = Color3.fromRGB(154, 143, 174)
AntiGuardSub.TextSize = 10
AntiGuardSub.TextXAlignment = Enum.TextXAlignment.Left
AntiGuardSub.FontFace = FONT_REGULAR
AntiGuardSub.Parent = AntiGuardHolder

local AntiGuardButton = Instance.new("TextButton")
AntiGuardButton.Size = UDim2.new(0, 26, 0, 26)
AntiGuardButton.Position = UDim2.new(1, -26, 0.5, -13)
AntiGuardButton.BackgroundColor3 = Color3.fromRGB(243, 239, 249)
AntiGuardButton.BorderSizePixel = 0
AntiGuardButton.Text = ""
AntiGuardButton.AutoButtonColor = false
AntiGuardButton.Parent = AntiGuardHolder

local AntiGuardCorner = Instance.new("UICorner")
AntiGuardCorner.CornerRadius = UDim.new(0, 6)
AntiGuardCorner.Parent = AntiGuardButton

local AntiGuardStroke = Instance.new("UIStroke")
AntiGuardStroke.Color = Color3.fromRGB(220, 210, 234)
AntiGuardStroke.Thickness = 1.5
AntiGuardStroke.Parent = AntiGuardButton

local AntiGuardCheck = Instance.new("TextLabel")
AntiGuardCheck.Size = UDim2.new(1, 0, 1, 0)
AntiGuardCheck.BackgroundTransparency = 1
AntiGuardCheck.Text = "✓"
AntiGuardCheck.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiGuardCheck.TextSize = 18
AntiGuardCheck.FontFace = FONT_BOLD
AntiGuardCheck.Visible = false
AntiGuardCheck.Parent = AntiGuardButton

-- ==================================================
-- STATE
-- ==================================================
local DropEggEnabled = false
local AntiGuardEnabled = false

-- ==================================================
-- TOGGLE DROP EGG
-- ==================================================
local function ToggleDropEgg()
    DropEggEnabled = not DropEggEnabled
    DropEggCheck.Visible = DropEggEnabled

    if DropEggEnabled then
        DropEggButton.BackgroundColor3 = Color3.fromRGB(124, 58, 237)
        DropEggStroke.Color = Color3.fromRGB(168, 85, 247)

        if _G.YOKUDO_DropEgg then
            _G.YOKUDO_DropEgg.Enable()
        else
            print("[Collect Egg new] DropEgg Feature not loaded")
        end
    else
        DropEggButton.BackgroundColor3 = Color3.fromRGB(243, 239, 249)
        DropEggStroke.Color = Color3.fromRGB(220, 210, 234)

        if _G.YOKUDO_DropEgg then
            _G.YOKUDO_DropEgg.Disable()
        end
    end

    if _G.YOKUDO_ConfigSystem then
        _G.YOKUDO_ConfigSystem.Save()
    end
end

DropEggButton.MouseButton1Click:Connect(function()
    ToggleDropEgg()
end)

-- ==================================================
-- TOGGLE ANTI GUARD
-- ==================================================
local function ToggleAntiGuard()
    AntiGuardEnabled = not AntiGuardEnabled
    AntiGuardCheck.Visible = AntiGuardEnabled

    if AntiGuardEnabled then
        AntiGuardButton.BackgroundColor3 = Color3.fromRGB(124, 58, 237)
        AntiGuardStroke.Color = Color3.fromRGB(168, 85, 247)

        if _G.YOKUDO_AntiGuard then
            _G.YOKUDO_AntiGuard.Enable()
        else
            print("[Collect Egg new] AntiGuard Feature not loaded")
        end
    else
        AntiGuardButton.BackgroundColor3 = Color3.fromRGB(243, 239, 249)
        AntiGuardStroke.Color = Color3.fromRGB(220, 210, 234)

        if _G.YOKUDO_AntiGuard then
            _G.YOKUDO_AntiGuard.Disable()
        end
    end

    if _G.YOKUDO_ConfigSystem then
        _G.YOKUDO_ConfigSystem.Save()
    end
end

AntiGuardButton.MouseButton1Click:Connect(function()
    ToggleAntiGuard()
end)

-- ==================================================
-- SYNC ON LOAD
-- ==================================================
task.spawn(function()
    task.wait(1)
    if _G.YOKUDO_DropEgg then
        local State = _G.YOKUDO_DropEgg.IsEnabled()
        DropEggEnabled = State
        DropEggCheck.Visible = State
        if State then
            DropEggButton.BackgroundColor3 = Color3.fromRGB(124, 58, 237)
            DropEggStroke.Color = Color3.fromRGB(168, 85, 247)
        end
    end
    if _G.YOKUDO_AntiGuard then
        local State = _G.YOKUDO_AntiGuard.IsEnabled()
        AntiGuardEnabled = State
        AntiGuardCheck.Visible = State
        if State then
            AntiGuardButton.BackgroundColor3 = Color3.fromRGB(124, 58, 237)
            AntiGuardStroke.Color = Color3.fromRGB(168, 85, 247)
        end
    end
end)

-- ==================================================
-- REFRESH FUNCTION (សម្រាប់ ConfigSystem)
-- ==================================================
_G.YOKUDO_RefreshCollectEggNewUI = function()
    if _G.YOKUDO_DropEgg then
        local State = _G.YOKUDO_DropEgg.IsEnabled()
        DropEggEnabled = State
        DropEggCheck.Visible = State
        if State then
            DropEggButton.BackgroundColor3 = Color3.fromRGB(124, 58, 237)
            DropEggStroke.Color = Color3.fromRGB(168, 85, 247)
        else
            DropEggButton.BackgroundColor3 = Color3.fromRGB(243, 239, 249)
            DropEggStroke.Color = Color3.fromRGB(220, 210, 234)
        end
    end
    if _G.YOKUDO_AntiGuard then
        local State = _G.YOKUDO_AntiGuard.IsEnabled()
        AntiGuardEnabled = State
        AntiGuardCheck.Visible = State
        if State then
            AntiGuardButton.BackgroundColor3 = Color3.fromRGB(124, 58, 237)
            AntiGuardStroke.Color = Color3.fromRGB(168, 85, 247)
        else
            AntiGuardButton.BackgroundColor3 = Color3.fromRGB(243, 239, 249)
            AntiGuardStroke.Color = Color3.fromRGB(220, 210, 234)
        end
    end
    print("[YOKUDO] Collect Egg new Tab UI Refreshed")
end

print("✅ Collect Egg new Tab Loaded (No Warning)")
