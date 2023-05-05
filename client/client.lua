local dispPic = Config.defaultPic
Citizen.CreateThread(function()
    while not PlayerData do Wait(0) end

    if GetResourceState('Badger_Discord_API') == 'started' and Config.useDiscordProfilePics then
        ServerCallback('nass_infohud:getPlayerAvatar', function(link)
            if not (link == nil) then
                dispPic = link
            end
        end)
    end
end)

RegisterCommand('openinfohud', function()
    local id = 1
    if Config.showId then
        id = GetPlayerServerId(PlayerId())
    end
    SendNUIMessage({
        showUI = true,
        name =  getName(),
        job = getJobName(),
        cash = getCash(),
		bank = getBank(),
		cfg = Config,
        picture = dispPic,
        id = id,
    }) 
end)

RegisterKeyMapping('openinfohud', 'Opens the info UI', 'keyboard', Config.defaultKey) 