RegisterCommand('licencja', function()
    local input = lib.inputDialog('Nadaj Licencje', {
        { type = 'input', label = 'ID Gracza', placeholder = 'Wprowadz ID Gracza' },
        { type = 'select', label = 'Licencja', options = Config.Licenses }
    }) 

    if input then
        local playerId = tonumber(input[1])
        local licenseType = input[2]

        if playerId and licenseType then
            TriggerServerEvent('as_licencja:nadajLicencje', playerId, licenseType)
        else
            lib.notify({
                title = 'Błąd',
                description = 'Wprowadz poprawne id i wybierz licke.',
                type = 'error'
            })
        end
    end
end)
