local queueteleport = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport or function() end
pcall(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LegoRblx/VapeV4/main/CustomModules/"..game.PlaceId..".lua"))()
end)
local teleportfunc = game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Started  then
        local teleportstr = 'pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/LegoRblx/VapeV4/main/CustomModules/"..game.PlaceId..".lua"))() end)'
        queueteleport(teleportstr)
    end
end)
 
