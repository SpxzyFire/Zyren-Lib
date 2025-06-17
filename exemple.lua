-- Load the Zyren UI library
local ZyrenLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpxzyFire/Zyren-Lib/main/source.lua", true))()

-- Create a window
local window = ZyrenLib:CreateWindow("Zyren UI Example", Vector2.new(700, 500), Vector2.new(150, 100))

-- Create Tab 1: General Settings
local tab1 = window:CreateTab("General")

-- Left Section in Tab 1
local generalLeftSection = tab1:CreateSection("Basic Controls", "Left")

-- Add Button
generalLeftSection:AddButton("Execute Action", function()
    print("Execute Action button clicked!")
end)

-- Add Toggle
generalLeftSection:AddToggle("Enable Auto-Click", false, function(value)
    print("Auto-Click set to: " .. tostring(value))
end)

-- Add Color Picker
generalLeftSection:AddColorPicker("Theme Color", Color3.fromRGB(0, 170, 255), function(color)
    print("Theme color set to: R=" .. math.floor(color.R * 255) .. ", G=" .. math.floor(color.G * 255) .. ", B=" .. math.floor(color.B * 255))
end)

-- Add Divider
generalLeftSection:AddDivider()

-- Add Label
generalLeftSection:AddLabel("Status: Initialized")

-- Right Section in Tab 1
local generalRightSection = tab1:CreateSection("Advanced Settings", "Right")

-- Add Slider
generalRightSection:AddSlider("Volume", 0, 100, 50, function(value)
    print("Volume set to: " .. value)
end)

-- Add Dropdown
generalRightSection:AddDropdown("Game Mode", {"Easy", "Normal", "Hard", "Extreme"}, "Normal", function(value)
    print("Game mode set to: " .. value)
end)

-- Add Textbox
generalRightSection:AddTextbox("Player Name", "Guest", function(value)
    print("Player name set to: " .. value)
end)

-- Add Keybind
generalRightSection:AddKeybind("Quick Action", Enum.KeyCode.Q, function(key)
    print("Quick action key set to: " .. tostring(key))
end)

-- Create Tab 2: Visuals
local tab2 = window:CreateTab("Visuals")

-- Left Section in Tab 2
local visualsLeftSection = tab2:CreateSection("Display Options", "Left")

-- Add Toggle
visualsLeftSection:AddToggle("Show FPS", true, function(value)
    print("Show FPS set to: " .. tostring(value))
end)

-- Add Color Picker
visualsLeftSection:AddColorPicker("Background Color", Color3.fromRGB(30, 30, 30), function(color)
    print("Background color set to: R=" .. math.floor(color.R * 255) .. ", G=" .. math.floor(color.G * 255) .. ", B=" .. math.floor(color.B * 255))
end)

-- Add Divider
visualsLeftSection:AddDivider()

-- Add Label
visualsLeftSection:AddLabel("Display: Active")

-- Right Section in Tab 2
local visualsRightSection = tab2:CreateSection("Effects", "Right")

-- Add Button
visualsRightSection:AddButton("Toggle Effects", function()
    print("Effects toggled!")
end)

-- Add Slider
visualsRightSection:AddSlider("Brightness", 0, 10, 5, function(value)
    print("Brightness set to: " .. value)
end)

-- Add Dropdown
visualsRightSection:AddDropdown("Effect Type", {"Bloom", "Blur", "Glow", "None"}, "None", function(value)
    print("Effect type set to: " .. value)
end)

-- Create Tab 3: Keybinds
local tab3 = window:CreateTab("Keybinds")

-- Left Section in Tab 3
local keybindsLeft
