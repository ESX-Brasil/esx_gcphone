local callActive = false
local haveTarget = false
local isCall = false
local work = {}
local target = {}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        -- if IsControlJustPressed(1, 56) then
        --     local plyPos = GetEntityCoords(GetPlayerPed(-1), true)
        --     TriggerServerEvent("call:makeCall", "uber", {x=plyPos.x,y=plyPos.y,z=plyPos.z})
        -- end

        -- Press Y key to get the call
        if IsControlJustPressed(1, 246) and callActive then
			if isCall == false then
				TriggerServerEvent("call:getCall", work)
				ESX.ShowNotification("~b~Você atendeu a chamada!")
				target.blip = AddBlipForCoord(target.pos.x, target.pos.y, target.pos.z)
				SetBlipRoute(target.blip, true)
				haveTarget = true
				isCall = true
				callActive = false
			else
				ESX.ShowNotification("~r~Você já esta em uma chamada!")
			end
        -- Press L key to decline the call
        elseif IsControlJustPressed(1, 249) and callActive then
            ESX.ShowNotification("~r~Você recusou a ligação.")
            callActive = false
        end
        if haveTarget then
            DrawMarker(1, target.pos.x, target.pos.y, target.pos.z-1, 0, 0, 0, 0, 0, 0, 2.001, 2.0001, 0.5001, 255, 255, 0, 200, 0, 0, 0, 0)
            local playerPos = GetEntityCoords(GetPlayerPed(-1), true)
            if Vdist(target.pos.x, target.pos.y, target.pos.z, playerPos.x, playerPos.y, playerPos.z) < 2.0 then
                RemoveBlip(target.blip)
                haveTarget = false
				isCall = false
            end
        end
    end
end)

RegisterNetEvent("call:cancelCall")
AddEventHandler("call:cancelCall", function()
	if haveTarget then
		RemoveBlip(target.blip)
        haveTarget = false
		isCall = false
	else
		TriggerEvent("itinerance:notif", "~r~Você não tem chamadas em andamento!")
	end
end)

RegisterNetEvent("call:callIncoming")
AddEventHandler("call:callIncoming", function(job, pos, msg)
    callActive = true
    work = job
    target.pos = pos
	ESX.ShowNotification("Pressione ~b~Y~s~ para atender a chamada ou ~r~N~s~ para recusar")
	if work == "police" then
		ESX.ShowNotification("~b~CHAMADA EM PROGRESSO:~w~ " ..tostring(msg))
    --ESX.ShowNotification("Pressione ~g~Y~s~ para atender a chamada ou ~g~L~s~ para recusar")
	elseif work == "mecano" then
		ESX.ShowNotification("~o~CHAMADA EM PROGRESSO:~w~ " ..tostring(msg))
	elseif work == "taxi" then
		ESX.ShowNotification("~y~CHAMADA EM PROGRESSO:~w~ " ..tostring(msg))
		--ESX.ShowNotification("Pressione ~g~Y~s~ para atender a chamada ou ~g~L~s~ para recusar")
	elseif work == "ambulance" then
		ESX.ShowNotification("~r~CHAMADA EM PROGRESSO:~w~ " ..tostring(msg))
	elseif work == "fib" then
		ESX.ShowNotification("~r~CHAMADA EM PROGRESSO:~w~ " ..tostring(msg))
	elseif work == "pilot" then
		ESX.ShowNotification("~r~CHAMADA EM PROGRESSO:~w~ " ..tostring(msg))
	elseif work == "epicerie" then
		ESX.ShowNotification("~r~CHAMADA EM PROGRESSO:~w~ " ..tostring(msg))
	elseif work == "brinks" then
		ESX.ShowNotification("~r~CHAMADA EM PROGRESSO:~w~ " ..tostring(msg))
	elseif work == "army" then
		ESX.ShowNotification("~r~CHAMADA EM PROGRESSO:~w~ " ..tostring(msg))
	elseif work == "realestateagent" then
		ESX.ShowNotification("~r~CHAMADA EM PROGRESSO:~w~ " ..tostring(msg))
	elseif work == "unicorn" then
		ESX.ShowNotification("~r~CHAMADA EM PROGRESSO:~w~ " ..tostring(msg))
	elseif work == "journaliste" then
		ESX.ShowNotification("~r~CHAMADA EM PROGRESSO:~w~ " ..tostring(msg))
	elseif work == "state" then
		ESX.ShowNotification("~r~CHAMADA EM PROGRESSO:~w~ " ..tostring(msg))
	end
end)

RegisterNetEvent("call:taken")
AddEventHandler("call:taken", function()
    callActive = false
    ESX.ShowNotification("A chamada foi feita")
end)

RegisterNetEvent("target:call:taken")
AddEventHandler("target:call:taken", function(taken)
    if taken == 1 then
        ESX.ShowNotification("~b~Alguém está vindo!")
    elseif taken == 0 then
        ESX.ShowNotification("~r~Ninguém pode vir!")
    elseif taken == 2 then
        ESX.ShowNotification("~o~Por favor, ligue de volta em alguns instantes.")
    end
end)

-- If player disconnect, remove him from the inService server table
AddEventHandler('playerDropped', function()
	TriggerServerEvent("player:serviceOff", nil)
end)

function ESX.ShowNotification(message)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(message)
    DrawNotification(false, false)
end
