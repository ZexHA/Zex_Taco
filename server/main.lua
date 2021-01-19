ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

RegisterNetEvent('Zex_Taco:TacoPisir')
AddEventHandler('Zex_Taco:TacoPisir', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    
    if xPlayer.getWeight() < 24 then
        if xPlayer.getInventoryItem('kiyma').count >= 1 then  
            TriggerClientEvent('Zex_Taco:Tacopisir', source)
            xPlayer.removeInventoryItem('kiyma', 1)
            Citizen.Wait(4600)
            xPlayer.addInventoryItem('pismiskiyma', 1)
        else
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Üzerinde Yeteri miktarda Kıyma yok', style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
        end
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Üstün Çok ağır', style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
    end
end)


RegisterNetEvent('Zex_Taco:Sebzekes')
AddEventHandler('Zex_Taco:Sebzekes', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getWeight() < 24 then
        if xPlayer.getInventoryItem('domates').count >= 2 and xPlayer.getInventoryItem('sogan').count >= 2 and xPlayer.getInventoryItem('marul').count >= 2 then
            TriggerClientEvent('Zex_Taco:Sebzekes', source)
            xPlayer.removeInventoryItem('domates', 2)
            xPlayer.removeInventoryItem('sogan', 2)
            xPlayer.removeInventoryItem('marul', 2)
            xPlayer.addInventoryItem('tacomalzemesi', 1)
        else
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Üzerinde Yeteri miktarda malzeme yok', style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
        end
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Üstün Çok ağır', style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
    end
end)

RegisterNetEvent('Zex_Taco:Tortillaal')
AddEventHandler('Zex_Taco:Tortillaal', function()
    local xPlayer  = ESX.GetPlayerFromId(source)

    if xPlayer.getWeight() < 24 then
        TriggerClientEvent('Zex_Taco:Tortillaal', source)
        Citizen.Wait(1650)
        xPlayer.addInventoryItem('tortilla', 1)
        
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Üstün Çok ağır', style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
    end
end)

RegisterNetEvent('Zex_Taco:Kiymayap')
AddEventHandler('Zex:Taco:Kiymayap', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getWeight() < 24 then
        if xPlayer.getInventoryItem('et').count >= 1 then
            TriggerClientEvent('Zex_Taco:Kiymakiy', source)
            xPlayer.removeInventoryItem('et', 1)
            Citizen.Wait(500)
            xPlayer.addInventoryItem('kiyma', 1) 
        else
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Üzerinde Yeteri miktarda para yok', style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
        end
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Üstün Çok ağır', style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
    end
end)

RegisterNetEvent('Zex_Taco:Tacoyap')
AddEventHandler('Zex_Taco:Tacoyap', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getWeight() < 24 then
        if xPlayer.getInventoryItem('tortilla').count >= 1 and xPlayer.getInventoryItem('pismiskiyma').count >= 1 and xPlayer.getInventoryItem('tacomalzemesi').count >= 1 then
            TriggerClientEvent('Zex_Taco:Tacoyap', source)
            xPlayer.removeInventoryItem('tortilla', 1)
            xPlayer.removeInventoryItem('pismiskiyma', 1)
            xPlayer.removeInventoryItem('tacomalzemesi', 1)
            Citizen.Wait(5100)
            xPlayer.addInventoryItem('taco', 1)
        else
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Üzerinde Yeteri miktarda malzeme yok', style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
        end
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Üstün Çok ağır', style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
    end
end)

RegisterNetEvent('Zex_Taco:tacopaket')
AddEventHandler('Zex_Taco:tacopaket', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer.getWeight() < 24 then
        if xPlayer.getInventoryItem('taco').count >= 2 then
            TriggerClientEvent('Zex_Taco:Tacopaket', source)
            xPlayer.removeInventoryItem('taco', 2)
            Citizen.Wait(1600)
            xPlayer.addInventoryItem('paketlenmistaco', 1)
        else
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Üzerinde Yeteri miktarda taco yok', style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
        end
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Üstün Çok ağır', style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
    end
end)

RegisterNetEvent('Zex_TacoGetirkomisyon')
AddEventHandler('Zex_TacoGetirkomisyon', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getMoney() >= 500 then
        xPlayer.removeMoney(500)
        TriggerClientEvent('Zex_Taco:komisyo', source)
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Komisyon olarak Üzerinizden 500$ Çekildi', style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'yeteri miktarda paran yok', style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
    end
end)

RegisterNetEvent('Zex_Taco:komisyonver')
AddEventHandler('Zex_Taco:komisyonver', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('Zex_Taco:aracsil', source)
    xPlayer.addMoney(500)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Çekilen para cebine tekrar koyuldu 500$', style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
end)


