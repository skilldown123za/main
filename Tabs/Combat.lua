-- ==================================================
-- Jayjay design system | Inter typography
-- ==================================================
local _JJFonts = (_G.JAYJAY or {}).Font or {}
local FONT_BOLD = _JJFonts.Bold or Font.fromEnum(Enum.Font.GothamBold)
local FONT_MEDIUM = _JJFonts.Medium or Font.fromEnum(Enum.Font.GothamMedium)
local FONT_REGULAR = _JJFonts.Regular or Font.fromEnum(Enum.Font.Gotham)
local FONT_BLACK = _JJFonts.Black or Font.fromEnum(Enum.Font.GothamBlack)

-- ==================================================
-- YOKUDO HUB | TAB | Combat
-- ==================================================

local TabsManager = _G.YOKUDO_TabsManager

local CombatTab, CombatPage = TabsManager:RegisterTab("Combat", 3, "COMBAT")

-- ==================================================
-- CONTENT
-- ==================================================
CreateSectionTitle(CombatPage, "Combat", 1)

-- ==================================================
-- FEATURE 1: AUTO EQUIP BAT (CHECKBOX)
-- ==================================================
local AutoEquipHolder = Instance.new("Frame")
AutoEquipHolder.Size = UDim2.new(1, 0, 0, 32)
AutoEquipHolder.BackgroundTransparency = 1
AutoEquipHolder.LayoutOrder = 2
AutoEquipHolder.Parent = CombatPage

local AutoEquipLabel = Instance.new("TextLabel")
AutoEquipLabel.Size = UDim2.new(1, -50, 1, 0)
AutoEquipLabel.BackgroundTransparency = 1
AutoEquipLabel.Text = "Auto Equip Bat"
AutoEquipLabel.TextColor3 = Color3.fromRGB(33, 26, 46)
AutoEquipLabel.TextSize = 13
AutoEquipLabel.TextXAlignment = Enum.TextXAlignment.Left
AutoEquipLabel.TextYAlignment = Enum.TextYAlignment.Center
AutoEquipLabel.FontFace = FONT_BOLD
AutoEquipLabel.Parent = AutoEquipHolder

local AutoEquipCheckButton = Instance.new("TextButton")
AutoEquipCheckButton.Size = UDim2.new(0, 26, 0, 26)
AutoEquipCheckButton.Position = UDim2.new(1, -26, 0.5, -13)
AutoEquipCheckButton.BackgroundColor3 = Color3.fromRGB(243, 239, 249)
AutoEquipCheckButton.BorderSizePixel = 0
AutoEquipCheckButton.Text = ""
AutoEquipCheckButton.AutoButtonColor = false
AutoEquipCheckButton.Parent = AutoEquipHolder

local AutoEquipCorner = Instance.new("UICorner")
AutoEquipCorner.CornerRadius = UDim.new(0, 6)
AutoEquipCorner.Parent = AutoEquipCheckButton

local AutoEquipStroke = Instance.new("UIStroke")
AutoEquipStroke.Color = Color3.fromRGB(220, 210, 234)
AutoEquipStroke.Thickness = 1.5
AutoEquipStroke.Parent = AutoEquipCheckButton

local AutoEquipCheck = Instance.new("TextLabel")
AutoEquipCheck.Size = UDim2.new(1, 0, 1, 0)
AutoEquipCheck.BackgroundTransparency = 1
AutoEquipCheck.Text = "✓"
AutoEquipCheck.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoEquipCheck.TextSize = 18
AutoEquipCheck.FontFace = FONT_BOLD
AutoEquipCheck.Visible = false
AutoEquipCheck.Parent = AutoEquipCheckButton

local function ToggleAutoEquip()
    AutoEquipCheck.Visible = not AutoEquipCheck.Visible
    if AutoEquipCheck.Visible then
        AutoEquipCheckButton.BackgroundColor3 = Color3.fromRGB(124, 58, 237)
        AutoEquipStroke.Color = Color3.fromRGB(168, 85, 247)
        if _G.YOKUDO_AutoAttack then
            _G.YOKUDO_AutoAttack.EnableAutoEquip()
        end
    else
        AutoEquipCheckButton.BackgroundColor3 = Color3.fromRGB(243, 239, 249)
        AutoEquipStroke.Color = Color3.fromRGB(220, 210, 234)
        if _G.YOKUDO_AutoAttack then
            _G.YOKUDO_AutoAttack.DisableAutoEquip()
        end
    end
end

AutoEquipCheckButton.MouseButton1Click:Connect(function()
    ToggleAutoEquip()
end)

-- ==================================================
-- FEATURE 2: AUTO HIT PLAYER (CHECKBOX)
-- ==================================================
local AutoHitHolder = Instance.new("Frame")
AutoHitHolder.Size = UDim2.new(1, 0, 0, 52)
AutoHitHolder.BackgroundTransparency = 1
AutoHitHolder.LayoutOrder = 3
AutoHitHolder.Parent = CombatPage

local AutoHitLabel = Instance.new("TextLabel")
AutoHitLabel.Size = UDim2.new(1, -50, 0, 20)
AutoHitLabel.Position = UDim2.new(0, 0, 0, 2)
AutoHitLabel.BackgroundTransparency = 1
AutoHitLabel.Text = "Auto Hit Player"
AutoHitLabel.TextColor3 = Color3.fromRGB(33, 26, 46)
AutoHitLabel.TextSize = 13
AutoHitLabel.TextXAlignment = Enum.TextXAlignment.Left
AutoHitLabel.TextYAlignment = Enum.TextYAlignment.Center
AutoHitLabel.FontFace = FONT_BOLD
AutoHitLabel.Parent = AutoHitHolder

local AutoHitTitle = Instance.new("TextLabel")
AutoHitTitle.Size = UDim2.new(1, -50, 0, 18)
AutoHitTitle.Position = UDim2.new(0, 0, 0, 24)
AutoHitTitle.BackgroundTransparency = 1
AutoHitTitle.Text = "Range: 50 studs"
AutoHitTitle.TextColor3 = Color3.fromRGB(154, 143, 174)
AutoHitTitle.TextSize = 10
AutoHitTitle.TextXAlignment = Enum.TextXAlignment.Left
AutoHitTitle.FontFace = FONT_REGULAR
AutoHitTitle.Parent = AutoHitHolder

local AutoHitCheckButton = Instance.new("TextButton")
AutoHitCheckButton.Size = UDim2.new(0, 26, 0, 26)
AutoHitCheckButton.Position = UDim2.new(1, -26, 0.5, -13)
AutoHitCheckButton.BackgroundColor3 = Color3.fromRGB(243, 239, 249)
AutoHitCheckButton.BorderSizePixel = 0
AutoHitCheckButton.Text = ""
AutoHitCheckButton.AutoButtonColor = false
AutoHitCheckButton.Parent = AutoHitHolder

local AutoHitCorner = Instance.new("UICorner")
AutoHitCorner.CornerRadius = UDim.new(0, 6)
AutoHitCorner.Parent = AutoHitCheckButton

local AutoHitStroke = Instance.new("UIStroke")
AutoHitStroke.Color = Color3.fromRGB(220, 210, 234)
AutoHitStroke.Thickness = 1.5
AutoHitStroke.Parent = AutoHitCheckButton

local AutoHitCheck = Instance.new("TextLabel")
AutoHitCheck.Size = UDim2.new(1, 0, 1, 0)
AutoHitCheck.BackgroundTransparency = 1
AutoHitCheck.Text = "✓"
AutoHitCheck.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoHitCheck.TextSize = 18
AutoHitCheck.FontFace = FONT_BOLD
AutoHitCheck.Visible = false
AutoHitCheck.Parent = AutoHitCheckButton

local function ToggleAutoHit()
    AutoHitCheck.Visible = not AutoHitCheck.Visible
    if AutoHitCheck.Visible then
        AutoHitCheckButton.BackgroundColor3 = Color3.fromRGB(124, 58, 237)
        AutoHitStroke.Color = Color3.fromRGB(168, 85, 247)
        if _G.YOKUDO_AutoAttack then
            _G.YOKUDO_AutoAttack.EnableAutoHit()
        end
    else
        AutoHitCheckButton.BackgroundColor3 = Color3.fromRGB(243, 239, 249)
        AutoHitStroke.Color = Color3.fromRGB(220, 210, 234)
        if _G.YOKUDO_AutoAttack then
            _G.YOKUDO_AutoAttack.DisableAutoHit()
        end
    end
end

AutoHitCheckButton.MouseButton1Click:Connect(function()
    ToggleAutoHit()
end)

print("✅ Combat Tab Loaded")
