local PlayerData = {}

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)  
	PlayerData.job = job  
	Citizen.Wait(5000) 
end)

Citizen.CreateThread(function()

    while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
    end
    if ESX.IsPlayerLoaded() then

		ESX.PlayerData = ESX.GetPlayerData()

    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

RegisterNetEvent('esx:setJob2')
AddEventHandler('esx:setJob2', function(job2)
    ESX.PlayerData.job2 = job2
end)

Citizen.CreateThread(function ()
    if Config.ESX == "new" then
        ESX = exports["es_extended"]:getSharedObject()
    elseif Config.ESX == "old" then
        ESX = nil
        while ESX == nil do
            TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
            Citizen.Wait(0)
        end
    end
end)

Citizen.CreateThread(function ()
    while true do
        Wait(600000)
        debug("[^5DRUGS ADVENCED SYSTEM^7] V1.0 Drugs Script by ^5JessyTS^7 [^3JessyTS^7] \n")
    end
end)

Citizen.CreateThread(function ()
    while true do
        Wait(900000)
        debug("[^5DRUGS ADVENCED SYSTEM^7] N'hésitez à visiter ma boutique Tebex pour plus de scripts [^3JessyTS^7] \n")
    end
end)

Citizen.CreateThread(function ()
    while true do
        Wait(5000)
        debug("[^5DRUGS ADVENCED SYSTEM^7] V1.0 Drugs Script by ^5JessyTS^7 [^3JessyTS^7]")
        return
    end
end)