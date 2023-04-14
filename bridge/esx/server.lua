if GetResourceState('es_extended') ~= 'started' then return end
ESX = exports['es_extended']:getSharedObject()
Framework = 'esx'


function RegisterCallback(name, cb)
    ESX.RegisterServerCallback(name, cb)
end
