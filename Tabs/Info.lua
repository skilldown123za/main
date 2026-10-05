-- ==================================================
-- Jayjay design system | Inter typography
-- ==================================================
local _JJFonts = (_G.JAYJAY or {}).Font or {}
local FONT_BOLD = _JJFonts.Bold or Font.fromEnum(Enum.Font.GothamBold)
local FONT_MEDIUM = _JJFonts.Medium or Font.fromEnum(Enum.Font.GothamMedium)
local FONT_REGULAR = _JJFonts.Regular or Font.fromEnum(Enum.Font.Gotham)
local FONT_BLACK = _JJFonts.Black or Font.fromEnum(Enum.Font.GothamBlack)

--==================================================
-- YOKUDO HUB | TAB | Info
--==================================================

local TabsManager = _G.YOKUDO_TabsManager
local TweenService = game:GetService("TweenService")

local InfoTab, InfoPage = TabsManager:RegisterTab("Info", 1, "INFO")

--==================================================
-- INFO CONTENT
--==================================================
CreateSectionTitle(InfoPage, "YOKUDO HUB | Steal An Egg", 1)

--==================================================
-- TITLE: Join Group For Notification Update Script
--==================================================
local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, 0, 0, 26)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "Join Group For Notification Update Script"
TitleLabel.TextColor3 = Color3.fromRGB(33, 26, 46)
TitleLabel.TextSize = 13
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.FontFace = FONT_BOLD
TitleLabel.LayoutOrder = 2
TitleLabel.Parent = InfoPage

--==================================================
-- GROUP DISCORD
--==================================================
local GroupLabel = Instance.new("TextLabel")
GroupLabel.Size = UDim2.new(1, 0, 0, 24)
GroupLabel.BackgroundTransparency = 1
GroupLabel.Text = "Group Discord"
GroupLabel.TextColor3 = Color3.fromRGB(33, 26, 46)
GroupLabel.TextSize = 13
GroupLabel.TextXAlignment = Enum.TextXAlignment.Left
GroupLabel.FontFace = FONT_MEDIUM
GroupLabel.LayoutOrder = 3
GroupLabel.Parent = InfoPage

--==================================================
-- LINK (Clickable Copy)
--==================================================
local LinkBtn = Instance.new("TextButton")
LinkBtn.Size = UDim2.new(1, 0, 0, 30)
LinkBtn.BackgroundColor3 = Color3.fromRGB(243, 239, 249)
LinkBtn.BorderSizePixel = 0
LinkBtn.Text = "Link : https://discord.gg/aKeK6avatS"
LinkBtn.TextColor3 = Color3.fromRGB(56, 189, 248)
LinkBtn.TextSize = 12
LinkBtn.TextXAlignment = Enum.TextXAlignment.Left
LinkBtn.FontFace = FONT_MEDIUM
LinkBtn.AutoButtonColor = false
LinkBtn.LayoutOrder = 4
LinkBtn.Parent = InfoPage

local LinkCorner = Instance.new("UICorner")
LinkCorner.CornerRadius = UDim.new(0, 6)
LinkCorner.Parent = LinkBtn

local LinkStroke = Instance.new("UIStroke")
LinkStroke.Color = Color3.fromRGB(124, 58, 237)
LinkStroke.Thickness = 1
LinkStroke.Transparency = 0.4
LinkStroke.Parent = LinkBtn

local LinkPadding = Instance.new("UIPadding")
LinkPadding.PaddingLeft = UDim.new(0, 10)
LinkPadding.PaddingRight = UDim.new(0, 10)
LinkPadding.Parent = LinkBtn

--==================================================
-- COPY BUTTON
--==================================================
local CopyBtn = Instance.new("TextButton")
CopyBtn.Size = UDim2.new(0, 120, 0, 32)
CopyBtn.BackgroundColor3 = Color3.fromRGB(124, 58, 237)
CopyBtn.BorderSizePixel = 0
CopyBtn.Text = "COPY LINK"
CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyBtn.TextSize = 12
CopyBtn.FontFace = FONT_BOLD
CopyBtn.AutoButtonColor = false
CopyBtn.LayoutOrder = 5
CopyBtn.Parent = InfoPage

local CopyCorner = Instance.new("UICorner")
CopyCorner.CornerRadius = UDim.new(0, 6)
CopyCorner.Parent = CopyBtn

local CopyStroke = Instance.new("UIStroke")
CopyStroke.Color = Color3.fromRGB(139, 92, 246)
CopyStroke.Thickness = 1.5
CopyStroke.Transparency = 0.3
CopyStroke.Parent = CopyBtn

-- ==================================================
-- COPY FUNCTION
-- ==================================================
local DISCORD_LINK = "https://discord.gg/aKeK6avatS"

local function CopyDiscord()
    local Success = pcall(function()
        setclipboard(DISCORD_LINK)
    end)

    if Success then
        CopyBtn.Text = "COPIED!"
        CopyBtn.BackgroundColor3 = Color3.fromRGB(16, 185, 129)

        task.delay(1.5, function()
            CopyBtn.Text = "COPY LINK"
            CopyBtn.BackgroundColor3 = Color3.fromRGB(124, 58, 237)
        end)

        print("[YOKUDO] Discord Link Copied: " .. DISCORD_LINK)
    else
        CopyBtn.Text = "FAILED!"
        CopyBtn.BackgroundColor3 = Color3.fromRGB(239, 68, 68)

        task.delay(1.5, function()
            CopyBtn.Text = "COPY LINK"
            CopyBtn.BackgroundColor3 = Color3.fromRGB(124, 58, 237)
        end)

        warn("[YOKUDO] Failed to copy Discord link")
    end
end

-- ==================================================
-- BUTTON EVENTS
-- ==================================================
CopyBtn.MouseButton1Click:Connect(CopyDiscord)
LinkBtn.MouseButton1Click:Connect(CopyDiscord)

CopyBtn.MouseEnter:Connect(function()
    if CopyBtn.Text == "COPY LINK" then
        TweenService:Create(CopyBtn, TweenInfo.new(0.15), {
            BackgroundColor3 = Color3.fromRGB(139, 92, 246)
        }):Play()
    end
end)

CopyBtn.MouseLeave:Connect(function()
    if CopyBtn.Text == "COPY LINK" then
        TweenService:Create(CopyBtn, TweenInfo.new(0.15), {
            BackgroundColor3 = Color3.fromRGB(124, 58, 237)
        }):Play()
    end
end)

LinkBtn.MouseEnter:Connect(function()
    TweenService:Create(LinkBtn, TweenInfo.new(0.15), {
        BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    }):Play()
end)

LinkBtn.MouseLeave:Connect(function()
    TweenService:Create(LinkBtn, TweenInfo.new(0.15), {
        BackgroundColor3 = Color3.fromRGB(243, 239, 249)
    }):Play()
end)

print("✅ Info Tab Loaded")
