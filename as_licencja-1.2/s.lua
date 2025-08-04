ESX = exports['es_extended']:getSharedObject()

RegisterServerEvent('as_licencja:nadajLicencje')
AddEventHandler('as_licencja:nadajLicencje', function(playerId, licenseType)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    local sourcePlayer = ESX.GetPlayerFromId(source)

if xPlayer and sourcePlayer then
    exports.oxmysql:execute('INSERT INTO user_licenses (owner, type) VALUES (?, ?)', {xPlayer.identifier, licenseType}, function(rowsChanged)
        if rowsChanged > 0 then
            sourcePlayer.showNotification('Nadano licencje ' .. licenseType .. ' graczowi ' .. xPlayer.name .. '.')
            xPlayer.showNotification('Otrzymales licencje ' .. licenseType .. '.')
        else
            sourcePlayer.showNotification('Jest blad przy nadawaniu licencji.')
        end
    end)
else
    sourcePlayer.showNotification('Nie znaleziono gracza o podanym ID.')
end
end)