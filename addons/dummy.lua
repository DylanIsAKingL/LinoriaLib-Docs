local theme = {}

function theme:ChangeTheme(inp)
    inp = string.lower(inp)
    rgb = 0
    if inp == "rgb" then
        task.spawn(function()
            while true do
                Library.AccentColor = Color3.fromHSV(rgb,1,1)
                rgb += 1/255
                if rgb >= 1 then
                    rgb = 0
                end
                task.wait()
            end
        end)
    end
end

return theme
