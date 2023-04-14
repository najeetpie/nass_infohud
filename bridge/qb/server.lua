if GetResourceState('qb-core') ~= 'started' then return end
QBCore = exports['qb-core']:GetCoreObject()
Framework = 'qb'

function RegisterCallback(name, cb)
    QBCore.Functions.CreateCallback(name, cb)
end
