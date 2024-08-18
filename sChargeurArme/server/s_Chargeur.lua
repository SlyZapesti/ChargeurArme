ESX.RegisterUsableItem('chargeur', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('utiliseChargeur', source, 'chargeur')
end)

ESX.RegisterUsableItem('chargeur_fusils', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('utiliseChargeur', source, 'chargeur_fusils')
end)

ESX.RegisterUsableItem('chargeur_fusilsapompe', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('utiliseChargeur', source, 'chargeur_fusilsapompe')
end)

ESX.RegisterUsableItem('chargeur_mitraillette', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('utiliseChargeur', source, 'chargeur_mitraillette')
end)

ESX.RegisterUsableItem('chargeur_mitrailleuselegere', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('utiliseChargeur', source, 'chargeur_mitrailleuselegere')
end)

ESX.RegisterUsableItem('chargeur_sniper', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('utiliseChargeur', source, 'chargeur_sniper')
end)

RegisterNetEvent('retireItem')
AddEventHandler('retireItem', function(item)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem(item, 1)
end)

