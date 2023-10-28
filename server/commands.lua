ESX = nil
TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

-- Chat command to refill nitro
RegisterCommand('nitro-refill', function(source)
    TriggerClientEvent("sw-nitro:RechargeNitroFuel", source, source)
end)

-- Chat command to install 'nitro capability'
RegisterCommand('nitro-install', function(source, args)
    TriggerClientEvent("sw-nitro:InstallNitro", source, source, args[1])
end)
