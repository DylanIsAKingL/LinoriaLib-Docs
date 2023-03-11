# Renevant Docs

## Start

### Booting the lib
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
```
__Yes i am aware this isn't the original github repo for the renevant source but i have looked around but found nothing__

#### Library Color ( Optional )
```lua
Library.DefaultColor = Color3.fromRGB(255,0,0)
```

### Create window
```lua
local Window = Library:Window({
    Text = "Example Window"
})
```

## Other

### Notify the uer

```lua
Library:Notification({
    Text = "Example Notification",
    Duration = 10
})
```

### Create Toggle
```lua
local Toggle = Window:Toggle({
    Text = "Aimbot",
    Callback = function(bool)
        print(bool)
    end
})
```

#### Set Toggle Value
```lua
Toggle:Set({
   Bool = true
})
```

### Create Button

```lua
Window:Button({
    Text = "Example Button",
    Callback = function()
       print("I have been clicked!")
    end
})
```

### Create Dropdown

```lua
local Dropdown = Window:Dropdown({
    Text = "Color Scheme",
    List = {"Dark", "White", "Aqua","Nova"},
    Callback = function(bool)
        print(bool)
    end
})
```

### Create Slider

```lua
Window:Slider({
    Text = "Example Slider",
    Default = 10,
    Minimum = 1,
    Maximum = 50,
    Callback = function(value)
        print(value)
    end
})
```

### Create Prompt

```lua
Window:Prompt({
   Text = "Example Prompt",
       Label:Set({
           Text = "Status: Joined Discord",
           Color = Color3.fromRGB(56, 207, 154)
       })
   end
})
```

### Create Label

```lua
local Label = Window:Label({
   Text = "Example Label",
   Color = Color3.fromRGB(214, 214, 214)
})
```

### Crate Keybind

```lua
Window:Keybind({
   Text = "Example Keybind",
   Default = Enum.KeyCode.E,
   Callback = function()
       print("omg you pressed e")
   end
})
```

## Misc.

### Toggle / Untoggle Library

```lua
Library:Toggle()
```
