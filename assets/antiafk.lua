local connections = getconnections or get_signal_cons or nil
task.spawn(function()
    if connections then
        for a, b in next, connections(game:GetService('Players').LocalPlayer.Idled) do 
            b:Disable()
        end
    else
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:Connect(function()
            vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end)
    end
end)
