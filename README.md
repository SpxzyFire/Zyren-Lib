# Zyren UI Library
Zyren UI is a modern, sleek, and professional UI library for Roblox, built using the Drawing API. It provides a robust set of UI components for creating intuitive and visually appealing interfaces. The library is designed to be flexible and easy to use, with a focus on performance and customization.
# Features

- Window: Create draggable windows with customizable titles, sizes, and positions.
- Tabs: Organize content into multiple tabs within a window.
- Sections: Divide tab content into left and right sections for better organization.
- Buttons: Interactive buttons with hover effects and callbacks.
- Toggles: On/off switches with customizable default states and callbacks.
- Color Pickers: Select colors with a preview and callback (simplified implementation).
- Sliders: Numeric sliders with min/max values and smooth dragging.
- Dropdowns: Select from a list of options (simplified implementation).
- Dividers: Horizontal lines to separate content within sections.
- Textboxes: Input fields for text (simplified implementation).
- Keybinds: Bind actions to keyboard keys with dynamic reassignment.
- Labels: Display static text for information or titles.

**Installation**
To use Zyren UI, load the library via loadstring from the GitHub repository:
```lua
local ZyrenLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpxzyFire/Zyren-Lib/main/source.lua", true))()
```
**Note** : Nothing will render until you create a window using ZyrenLib:CreateWindow.
# Usage
**Creating a Window**
Start by creating a window, which is required to display any UI elements:
local window = ZyrenLib:CreateWindow("My UI", Vector2.new(600, 400), Vector2.new(100, 100))


**title** : The window's title (string, default: "Zyren UI").
**size** : The window's size (Vector2, default: 600x400).
**position** : The window's position on the screen (Vector2, default: 100,100).

**Creating a Tab**
Add tabs to organize content within the window:
```lua
local tab = window:CreateTab("Settings")
```
name: The tab's name (string).

**Creating a Section**
Add sections within a tab, specifying whether they appear on the left or right:
```lua
local leftSection = tab:CreateSection("General", "Left")
local rightSection = tab:CreateSection("Advanced", "Right")
```

**name**: The section's title (string).
**side**: "Left" or "Right" (string, default: "Left").

# Adding UI Elements
**Button**
Create a clickable button with a callback:
```lua
leftSection:AddButton("Click Me", function()
    print("Button clicked!")
end)
```

**text**: Button label (string).
callback: Function to call when clicked (function, optional).

**Toggle**
Create a toggle switch:
```lua
leftSection:AddToggle("Enable Feature", true, function(value)
    print("Toggle set to: " .. tostring(value))
end)
```

text: Toggle label (string).
default: Initial state (boolean, default: false).
callback: Function to call with new value (function, optional).

**Color Picker**
Create a color picker (simplified, randomizes color on click):
```lua
leftSection:AddColorPicker("Background Color", Color3.fromRGB(255, 255, 255), function(color)
    print("Color set to: " .. tostring(color))
end)
```

text: Color picker label (string).
default: Initial color (Color3, default: white).
callback: Function to call with new color (function, optional).

**Slider**
Create a numeric slider:
```lua
leftSection:AddSlider("Volume", 0, 100, 50, function(value)
    print("Slider set to: " .. value)
end)
```

text: Slider label (string).
min: Minimum value (number).
max: Maximum value (number).
default: Initial value (number).
callback: Function to call with new value (function, optional).

**Dropdown**
Create a dropdown menu (simplified, randomizes selection on click):
```lua
leftSection:AddDropdown("Mode", {"Easy", "Medium", "Hard"}, "Medium", function(value)
    print("Dropdown set to: " .. value)
end)
```
text: Dropdown label (string).

options: List of options (table of strings).

default: Initial selection (string).

callback: Function to call with new value (function, optional).

**Divider**

Add a horizontal divider:
```lua
leftSection:AddDivider()
```
**Textbox**

Create a textbox (simplified, sets random input on click):

```lua
leftSection:AddTextbox("Username", "Player", function(value)
    print("Textbox set to: " .. value)
end)
```

text: Textbox label (string).

default: Initial text (string, default: "").

callback: Function to call with new text (function, optional).

**Keybind**

Create a keybind:
```lua
leftSection:AddKeybind("Action Key", Enum.KeyCode.E, function(key)
    print("Keybind set to: " .. tostring(key))
end)
```




text: Keybind label (string).



default: Initial key (Enum.KeyCode, default: Unknown).



callback: Function to call with new key (function, optional).

Label

Add a static text label:
```
leftSection:AddLabel("Information: Ready")
```




text: Label text (string).

Example

Here's a complete example:
```lua
local ZyrenLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SpxzyFire/Zyren-Lib/main/source.lua", true))()
local window = ZyrenLib:CreateWindow("My UI", Vector2.new(600, 400), Vector2.new(100, 100))
local tab = window:CreateTab("Main")
local section = tab:CreateSection("Controls", "Left")

section:AddButton("Test Button", function()
    print("Button clicked!")
end)
section:AddToggle("Enable", false, function(value)
    print("Toggle: " .. tostring(value))
end)
section:AddSlider("Value", 0, 100, 50, function(value)
    print("Slider: " .. value)
end)
section:AddDivider()
section:AddLabel("Status: Active")
```
Notes

The library uses Roblox's Drawing API for rendering, ensuring a lightweight and performant UI

The UI is designed with a modern, professional aesthetic, avoiding cartoony or anime styles.

Components like color pickers, dropdowns, and textboxes have simplified implementations for this version. Full implementations would require additional UI elements for user interaction.

The library requires a window to be created before any UI is rendered.

All components support hover effects and animations for a polished user experience.

Contributing

Contributions are welcome! Please submit a pull request or open an issue on the GitHub repository.

License

This project is licensed under the MIT License.
