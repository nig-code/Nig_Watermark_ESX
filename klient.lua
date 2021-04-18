
--RegisterNetEvent('getPlayers:done')
--AddEventHandler('getPlayers:done', function(playerCount)
--    -debug - print(playerCount)
--
--end)


Citizen.CreateThread(function()
    while true do
        SendNUIMessage({action = "setPlayerCount", count = #GetActivePlayers()}) 
    Wait(600)
    end
end)
Citizen.CreateThread(function()
    while true do
        SendNUIMessage({action = "setPlayerId", id = GetPlayerServerId(PlayerId())}) 
    Wait(6000)
    end
end)
