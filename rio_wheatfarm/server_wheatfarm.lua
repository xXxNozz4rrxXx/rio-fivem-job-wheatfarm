
ESX               = nil

TriggerEvent('rio:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("rio_wheatfarmer:sell")
AddEventHandler("rio_wheatfarmer:sell", function()
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    local money = math.random(80,500)
      xPlayer.addMoney(money)
      TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'success', text = '' ..money.. '$ You got.', length = 2500 })
end)