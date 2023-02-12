# LinoriaLib Docs
###### Unofficial
## Start

### Get Repository

```lua
local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
```
### Boot Library
```lua
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
```

## Functions

### Create Window
```lua
local Window = Library:CreateWindow({
    -- Set Center to true if you want the menu to appear in the center
    -- Set AutoShow to true if you want the menu to appear when it is created
    -- Position and Size are also valid options here
    -- but you do not need to define them unless you are changing them :)

    Title = 'Example menu',
    Center = true, 
    AutoShow = true,
})
```

### Create Tabs
```lua
local Tabs = {
    -- Creates a new tab titled Main
    Main = Window:AddTab('Main'), 
    ['UI Settings'] = Window:AddTab('UI Settings'),
}
```

### Create Groupbox
```lua
local ExampleGroupbox = Tabs.Main:AddLeftGroupbox('Groupbox')
```

### Create Toggle
```lua
LeftGroupBox:AddToggle('MyToggle', {
    Text = 'This is a toggle',
    Default = true, -- Default value (true / false)
    Tooltip = 'This is a tooltip', -- Information shown when you hover over the toggle
})
```
#### Check when toggle changed
```lua
Toggles.MyToggle:OnChanged(function()
    -- here we get our toggle object & then get its value
    print('MyToggle changed to:', Toggles.MyToggle.Value)
end)
```

#### Set toggle Value
```lua
Toggles.MyToggle:SetValue(false)
```

### Create Button
```lua
local MyButton = LeftGroupBox:AddButton('Button', function()
    print('You clicked a button!')
end)
```

#### Create Sub-Button
```lua
local MyButton2 = MyButton:AddButton('Sub button', function()
    print('You clicked a sub button!')
end)
```

#### Add Button Tooltip
```lua
MyButton:AddTooltip('This is a tooltip')
```

### Create Label
```lua
LeftGroupBox:AddLabel('This is a label')
```

### Create Divider
```lua
LeftGroupBox:AddDivider()
```

### Create Slider
```lua
LeftGroupBox:AddSlider('MySlider', {
    Text = 'This is my slider!',
    -- Text, Default, Min, Max, Rounding must be specified.
    -- Rounding is the number of decimal places for precision.

    -- Example:
    -- Rounding 0 - 5
    -- Rounding 1 - 5.1
    -- Rounding 2 - 5.15
    -- Rounding 3 - 5.155

    Default = 0,
    Min = 0,
    Max = 5,
    Rounding = 1, -- How much it would increment

    Compact = false, -- If set to true, then it will hide the label
})
```

#### Check when slider changed
```lua
Options.MySlider:OnChanged(function()
    print('MySlider was changed! New value:', Options.MySlider.Value)
end)
```

#### Set Slider Value
```lua
Options.MySlider:SetValue(3)
```

### Create Textbox
```lua
LeftGroupBox:AddInput('MyTextbox', {
    Default = 'My textbox!',
    Numeric = false, -- true / false, only allows numbers
    Finished = false, -- true / false, only calls callback when you press enter

    Text = 'This is a textbox',
    Tooltip = 'This is a tooltip', -- Information shown when you hover over the textbox

    Placeholder = 'Placeholder text', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text
})
```

#### Check when textbox changed
```lua
Options.MyTextbox:OnChanged(function()
    print('Text updated. New text:', Options.MyTextbox.Value)
end)
```

### Create Dropdown
```lua
LeftGroupBox:AddDropdown('MyDropdown', {
    Values = { 'This', 'is', 'a', 'dropdown' },
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'A dropdown',
    Tooltip = 'This is a tooltip', -- Information shown when you hover over the textbox
})
```

#### Check when dropdown changed
```lua
Options.MyDropdown:OnChanged(function()
    print('Dropdown got changed. New value:', Options.MyDropdown.Value)
end)
```

#### Change dropdown value
```lua
Options.MyDropdown:SetValue('This')
```

#### Check when multi-dropdown changed
```lua
Options.MyMultiDropdown:OnChanged(function()
    -- print('Dropdown got changed. New value:', )
    print('Multi dropdown got changed:')
    for key, value in next, Options.MyMultiDropdown.Value do
        print(key, value) -- should print something like This, true
    end
end)
```

#### Change multi-dropdown value
```lua
Options.MyMultiDropdown:SetValue({
    This = true,
    is = true,
})
```

### Create Colorpicker
```lua
LeftGroupBox:AddLabel('Color'):AddColorPicker('ColorPicker', {
    Default = Color3.new(0, 1, 0), -- Bright green
    Title = 'Some color', -- Optional. Allows you to have a custom color picker title (when you open it)
})
```

#### Check when colorpicker changed
```lua
Options.ColorPicker:OnChanged(function()
    print('Color changed!', Options.ColorPicker.Value)
end)
```

#### Change colorpicker value
```lua
Options.ColorPicker:SetValueRGB(Color3.fromRGB(0, 255, 140))
```

## Recommended at end
```lua
Library:OnUnload(function()
    print('Unloaded!')
    Library.Unloaded = true
end)
```
