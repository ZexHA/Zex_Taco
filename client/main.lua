ESX = nil
inMenu = true

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    for i=1, #Zex.Blip, 1 do
        blips = Zex.Blip[i]

        local blip = AddBlipForCoord(blips)

        SetBlipSprite(blip, 209)
        SetBlipColour(blip, 47)
        SetBlipScale(blip, 0.5)
        SetBlipAsShortRange(blip, true)
        
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString('Taco')
        EndTextCommandSetBlipName(blip)

    end
end)

Citizen.CreateThread(function()
    while true do
        local opti = true
        Citizen.Wait(0)

        for i=1, #Zex.pisirme, 1 do
            pisirme = Zex.pisirme[i]
             
           
            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            local distance = GetDistanceBetweenCoords(coords, pisirme.x, pisirme.y, pisirme.z, true)

            if distance < 10 then
                DrawMarker(2, pisirme.x, pisirme.y, pisirme.z, 0.1, -0.1, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.15, 255, 255, 255, 255, false, false, false, false, false, false, false)
                opti = false
                if distance < 1.3 then
                    DrawText3Ds(pisirme.x, pisirme.y, pisirme.z+ 0.2,  '~g~E~w~ - Kiyma Pisir ')
                    opti = false
                    if IsControlJustReleased(0, 38) then
                        TriggerServerEvent('Zex_Taco:TacoPisir')
                        opti = false
                    end
                end
            end
        end
        if opti then
            Citizen.Wait(5000)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        local opti = true
        Citizen.Wait(0)

        for i=1, #Zex.Sebzekes, 1 do
            kes = Zex.Sebzekes[i]

            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            local distance = GetDistanceBetweenCoords(coords, kes.x, kes.y, kes.z, true)
            
            if distance < 8 then
                DrawMarker(2, kes.x, kes.y, kes.z, 2.6, 2.6, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.15, 255, 255, 255, 255, false, false, false, false, false, false, false)
                opti = false
                
                if distance < 1.0 then
                    DrawText3Ds(kes.x, kes.y, kes.z+ 0.2, '~g~E~w~ - Sebzeleri kes')
                    if IsControlJustReleased(0, 38) then
                        TriggerServerEvent('Zex_Taco:Sebzekes')
                        opti = false
                    end
                end
            end
        end
        if opti then
        Citizen.Wait(20000)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        local opti = true
        Citizen.Wait(0)

        for i=1, #Zex.Tortillaal, 1 do
            tortilla = Zex.Tortillaal[i]

            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            local distance = GetDistanceBetweenCoords(coords, tortilla.x, tortilla.y, tortilla.z, true)

            if distance < 10 then
                DrawMarker(2, tortilla.x, tortilla.y, tortilla.z, 2.6, 2.6, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.15, 255, 255, 255, 255, false, false, false, false, false, false, false)
                opti = false
                if distance < 1.0 then
                    DrawText3Ds(tortilla.x, tortilla.y, tortilla.z+ 0.2, '~g~E~w~ - Tortilla Ekmegi al')
                    opti = false
                    if IsControlJustReleased(0, 38) then
                        TriggerServerEvent('Zex_Taco:Tortillaal')
                    end
                end
            end
        end
        if opti then
            Citizen.Wait(5000)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        local opti = true
        Citizen.Wait(0)

        for i=1, #Zex.Kiymakiy, 1 do
            kiyma = Zex.Kiymakiy[i]

            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            local distance = GetDistanceBetweenCoords(coords, kiyma.x, kiyma.y, kiyma.z, true)

            if distance < 10 then
                DrawMarker(2, kiyma.x, kiyma.y, kiyma.z, 2.6, 2.6, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.15, 255, 255, 255, 255, false, false, false, false, false, false, false)
                opti = false
                if distance < 1.0 then
                    DrawText3Ds(kiyma.x, kiyma.y, kiyma.z+ 0.2, '~g~E~w~ - Kiyma yap')
                    opti = false
                    if IsControlJustReleased(0, 38) then
                       TriggerServerEvent('Zex:Taco:Kiymayap')
                    end
                end
            end
        end
        if opti then
            Citizen.Wait(5000)
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        local opti = true
        Citizen.Wait(0)

        for i=1, #Zex.Tacoyap, 1 do
            taco = Zex.Tacoyap[i]

            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            local distance = GetDistanceBetweenCoords(coords, taco.x, taco.y, taco.z, true)

            if distance < 10 then
                DrawMarker(2, taco.x, taco.y, taco.z, 1.1, -1.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.15, 255, 255, 255, 255, false, false, false, false, false, false, false)
                opti = false
                if distance < 1.0 then
                    DrawText3Ds(taco.x, taco.y, taco.z+ 0.2, '~g~E~w~ - Taco yap')
                    opti = false
                    if IsControlJustReleased(0, 38) then
                        TriggerServerEvent('Zex_Taco:Tacoyap')
                    end
                end
            end
        end
        if opti then
            Citizen.Wait(5000)
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        local opti = true
        Citizen.Wait(0)

        for i=1, #Zex.Tacopaket, 1 do
            tacopake = Zex.Tacopaket[i]

            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            local distance = GetDistanceBetweenCoords(coords, tacopake.x, tacopake.y, tacopake.z, true)

            if distance < 10 then
                DrawMarker(2, tacopake.x, tacopake.y, tacopake.z, 1.1, -1.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.15, 255, 255, 255, 255, false, false, false, false, false, false, false)
                opti = false
                if distance < 1.0 then
                    DrawText3Ds(tacopake.x, tacopake.y, tacopake.z+ 0.2, '~g~E~w~ - Taco Paketle')
                    opti = false
                    if IsControlJustReleased(0, 38) then
                        TriggerServerEvent('Zex_Taco:tacopaket')
                    end
                end
            end
        end
        if opti then
            Citizen.Wait(5000)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        local opti = true
        Citizen.Wait(0)

        for i=1, #Zex.recete, 1 do
            Zrecete = Zex.recete[i]

            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            local distance = GetDistanceBetweenCoords(coords, Zrecete.x, Zrecete.y, Zrecete.z, true)

            if distance < 10 then
                DrawMarker(2, Zrecete.x, Zrecete.y, Zrecete.z, 1.1, 1.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.15, 255, 255, 255, 255, false, false, false, false, false, false, false)
                opti = false
                if distance < 1.0 then
                    DrawText3Ds(Zrecete.x, Zrecete.y, Zrecete.z+ 0.2, '~g~E~w~ - Tarif aç')
                    opti = false
                    if IsControlJustReleased(0, 38) then
                        inMenu = true
                        openUI(true)
                        SetNuiFocus(true, true)
                        print(inMenu)
                    end
                end
            end
        end
        if opti then
            Citizen.Wait(5000)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        local opti = true
        Citizen.Wait(0)

        for i=1, #Zex.Getir, 1 do
            Getir = Zex.Getir[i]

            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            local distance = GetDistanceBetweenCoords(coords, Getir.x, Getir.y, Getir.z, true)
        if IsPedOnFoot(ped) then
                if distance < 10 then
                    DrawMarker(2, Getir.x, Getir.y, Getir.z, 0.4, 0.4, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.15, 255, 255, 255, 255, false, false, false, 1, false, false, false)
                    opti = false
                    if distance < 1.0 then
                        DrawText3Ds(Getir.x, Getir.y, Getir.z+ 0.2, '~g~E~w~ - Paket Teslim et')
                        opti = false
                        if IsControlJustReleased(0, 38) then
                            TriggerServerEvent('Zex_TacoGetirkomisyon')
                        end
                    end
                end
            if opti then
                Citizen.Wait(5000)
            end
        end
    end
end
end)
Citizen.CreateThread(function()
    while true do
        local opti = true
        Citizen.Wait(0)

        for i=1, #Zex.Getiraracsil, 1 do
            aracsil = Zex.Getiraracsil[i]

            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            local distance = GetDistanceBetweenCoords(coords, aracsil.x, aracsil.y, aracsil.z, true)
            if IsPedInAnyVehicle(ped, true) then
                if distance < 20 then
                    DrawMarker(2, aracsil.x, aracsil.y, aracsil.z, 0.4, 0.4, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.15, 255, 255, 255, 255, false, false, false, 1, false, false, false)
                    opti = false
                    if distance < 1.0 then
                        DrawText3Ds(aracsil.x, aracsil.y, aracsil.z+ 0.2, '~g~E~w~ - Aracı Teslim et')
                        opti = false
                        if IsControlJustReleased(0, 38) then
                            TriggerServerEvent('Zex_Taco:komisyonver')
                            blipsil()
                        end
                    end
                end
            end
            if opti then
            Citizen.Wait(5000)
        end
    end
end
end)


RegisterNetEvent('Zex_Taco:komisyo')
AddEventHandler('Zex_Taco:komisyo', function()
    for i=1 , #Zex.Getirarac, 1 do
    arac = Zex.Getirarac[i]

        local ped = GetPlayerPed(-1)
        local coords = GetEntityCoords(ped)
        local distance = GetDistanceBetweenCoords(coords, arac.x, arac.y, arac.z, true)
    
        local modelHash = GetHashKey('Sanchez')
            RequestModel('Sanchez')
        local isLoaded = HasModelLoaded(modelHash)
        while isLoaded == false do
        Citizen.Wait(100)

    end
        local vehicle = CreateVehicle(modelHash, arac.x, arac.y, arac.z, 1, 1, 0)
        SetPedIntoVehicle(PlayerPedId(), vehicle, -1)
    
    end
end)


RegisterNetEvent('Zex_Taco:aracsil')
AddEventHandler('Zex_Taco:aracsil', function()
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)    
    DeleteVehicle(vehicle)
end)

RegisterNetEvent('Zex_Taco:Tacopaket')
AddEventHandler('Zex_Taco:Tacopaket', function()
    local lib, anim = 'mp_arresting', 'a_uncuff'
    local playerPed = PlayerPedId()

    ESX.Streaming.RequestAnimDict(lib, function()    
        TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)

        Citizen.Wait(500)
        while IsEntityPlayingAnim(playerPed, lib, anim, 3) do
            Citizen.Wait(0)
            local finished = exports["np-taskbar"]:taskBar(1000,"Taco Yapılıyor",true,false,playerVeh)
            DisableAllControlActions(0)
        end
    end)
end)

RegisterNetEvent('Zex_Taco:Tacoyap')
AddEventHandler('Zex_Taco:Tacoyap', function()
    local lib, anim = 'mp_arresting', 'a_uncuff'
    local playerPed = PlayerPedId()

    ESX.Streaming.RequestAnimDict(lib, function()    
        TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)

        Citizen.Wait(500)
        while IsEntityPlayingAnim(playerPed, lib, anim, 3) do
            Citizen.Wait(0)
            local finished = exports["np-taskbar"]:taskBar(4700,"Taco Yapılıyor",true,false,playerVeh)
            DisableAllControlActions(0)
        end
    end)
end)

RegisterNetEvent('Zex_Taco:Tortillaal')
AddEventHandler('Zex_Taco:Tortillaal', function()    
local lib, anim = 'mp_arresting', 'a_uncuff'
    local playerPed = PlayerPedId()

    ESX.Streaming.RequestAnimDict(lib, function()    
        TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)

        Citizen.Wait(500)
        while IsEntityPlayingAnim(playerPed, lib, anim, 3) do
            Citizen.Wait(0)
            local finished = exports["np-taskbar"]:taskBar(1000,"Ekmek alınıyor",true,false,playerVeh)
            DisableAllControlActions(0)
        end
    end)
end)

RegisterNetEvent('Zex_Taco:Sebzekes')
AddEventHandler('Zex_Taco:Sebzekes', function()
    local lib, anim = 'mp_arresting', 'a_uncuff'
    local playerPed = PlayerPedId()

    ESX.Streaming.RequestAnimDict(lib, function()    
        TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)

        Citizen.Wait(500)
        while IsEntityPlayingAnim(playerPed, lib, anim, 3) do
            Citizen.Wait(0)
            local finished = exports["np-taskbar"]:taskBar(7000,"Sebzeler kesiliyor",true,false,playerVeh)
            DisableAllControlActions(0)
        end
        exports['mythic_notify']:DoHudText('success', 'Sebzeler Kesildi')
    end)
end)

RegisterNetEvent('Zex_Taco:Tacopisir')
AddEventHandler('Zex_Taco:Tacopisir', function()
    local lib, anim = 'mp_arresting', 'a_uncuff'
    local playerPed = PlayerPedId()

    ESX.Streaming.RequestAnimDict(lib, function()    
        TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)

        Citizen.Wait(500)
        while IsEntityPlayingAnim(playerPed, lib, anim, 3) do
            Citizen.Wait(0)
            local finished = exports["np-taskbar"]:taskBar(4000,"Taco Pişiriliyor",true,false,playerVeh)
            DisableAllControlActions(0)
        end
        exports['mythic_notify']:DoHudText('success', 'Kiymayi pişirdin.')
    end)
end)


RegisterNetEvent('Zex_Taco:Kiymakiy')
AddEventHandler('Zex_Taco:Kitmakiy', function()
    local lib, anim = 'mp_arresting', 'a_uncuff'
    local playerPed = PlayerPedId()

    ESX.Streaming.RequestAnimDict(lib, function()    
        TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)

        Citizen.Wait(500)
        while IsEntityPlayingAnim(playerPed, lib, anim, 3) do
            Citizen.Wait(0)
            local finished = exports["np-taskbar"]:taskBar(1000,"Kıyma Kıyılıyor",true,false,playerVeh)
            DisableAllControlActions(0)
        end
    end)
end)

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

Citizen.CreateThread(function()
    while true do
    Citizen.Wait(0)
    if IsControlJustReleased(1, 194) then
        openUI(false)
        SetNuiFocus(false, false)
    end
end
end)

function openUI(enable)
    SendNUIMessage({
        type = "enableui",
        enable = enable
    })
end
RegisterCommand("recetekapat", function()
    openUI(false)
    SetNuiFocus(false, false)
end, false)

RegisterNUICallback('escape', function(data, cb)
    openUI(false)
    SetNuiFocus(false, false)
    cb('ok')
end)

RegisterNUICallback('login', function(data, cb)
    PrintChatMessage(data.username .. " - " .. data.password)

    cb('ok')
end)


RegisterCommand('heading', function()
    local head = GetEntityHeading(PlayerPedId())
    print(head)
end)