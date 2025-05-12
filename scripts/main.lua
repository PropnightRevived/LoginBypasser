RegisterKeyBind(Key.SPACE, { ModifierKey.CONTROL }, function()
    ---@type UW_PressAnyKeyScreen_C[]?
    local Screens = FindAllOf("W_PressAnyKeyScreen_C")

    if Screens == nil then
        print("[PropnightLoginBypasser] This function only available at 'Press Any Key' screen!")
        return
    end

    print("[PropnightLoginBypasser] Bypassing...\n")

    ExecuteInGameThread(function()
        for Index, PAKScreen in pairs(Screens) do
            if PAKScreen:GetFullName():find("GameEngine") then
                print("[PropnightLoginBypasser] Using class " .. PAKScreen:GetFullName() .. "\n");

                PAKScreen:PlayfabReady()
                PAKScreen:AnyKeyPressed()
                break
            end
        end
    end)
end)
