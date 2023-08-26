local playing = false
local sentChoice = false
local cmdCooldown = 0
local cam = nil

function SetupCam()
	local PlayerPed = PlayerPedId()
	local heading = GetEntityHeading(PlayerPed)

    local pos = GetOffsetFromEntityInWorldCoords(PlayerPed, 1.2, 0.7, 0.2)
	cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", pos.x, pos.y, pos.z, 0.0, 0.0, heading + 90.0, 60.00, false, 0)
	SetCamActive(cam, true)
	RenderScriptCams(true, false, 1, true, true)
end

function RemoveCam()
	SetCamActive(cam, false)
	RenderScriptCams(false, false, 1, true, true)
	DestroyCam(cam, false)
end

RegisterNUICallback("ChooseRock", function(_, cb)
	TriggerServerEvent("vrs-rps:server:Choice", "rock")
	SetupCam()
	sentChoice = true
	toggleNuiFrame(false)
	Reset(false)
	cb({})
end)

RegisterNUICallback("ChoosePaper", function(_, cb)
	TriggerServerEvent("vrs-rps:server:Choice", "paper")
	SetupCam()
	sentChoice = true
	toggleNuiFrame(false)
	Reset(false)
	cb({})
end)

RegisterNUICallback("ChooseScissors", function(_, cb)
	TriggerServerEvent("vrs-rps:server:Choice", "scissors")
	SetupCam()
	sentChoice = true
	toggleNuiFrame(false)
	Reset(false)
	cb({})
end)

function Reset(should)
	SendReactMessage("Reset", should)
end

local choiceTimer = 0
CreateThread(function()
	while true do
		if playing and not sentChoice then
			choiceTimer = choiceTimer + 1

			if choiceTimer > Config.TimeToChoose then
				local choices = { "rock", "paper", "scissors" }
				TriggerServerEvent("vrs-rps:server:Choice", choices[math.random(#choices)])
				choiceTimer = 0
				sentChoice = true
                toggleNuiFrame(false)
                Reset(false)
                SetupCam()
			end
        else
            choiceTimer = 0
		end

		Wait(1000)
	end
end)

RegisterCommand(Config.StartCommand, function()
    if cmdCooldown and (GetGameTimer() - cmdCooldown) < Config.CommandCooldown * 1000 then
        Notify(string.format(Locales[Config.Locale].notify.Cooldown, math.floor(Config.CommandCooldown - (GetGameTimer() - cmdCooldown) / 1000)))
        return
    end
	local target, distance = GetClosestPlayer()
	if distance ~= -1 and distance < 3 then
		TriggerServerEvent("vrs-rps:server:ServerRequest", GetPlayerServerId(target))
        Notify(string.format(Locales[Config.Locale].notify.Requested, GetPlayerName(target)))
	else
		Notify(Locales[Config.Locale].notify.NobodyClose)
	end
    cmdCooldown = GetGameTimer()
end, false)

RegisterNetEvent("vrs-rps:client:StartGame", function()
	SetPlayerInvincible(-1, true)
	toggleNuiFrame(true)
	playing = true
end)

RegisterNetEvent("vrs-rps:client:FinishGame", function()
	SetPlayerInvincible(-1, false)
	FreezeEntityPosition(PlayerPedId(), false)
	RemoveCam()
	playing = false
	sentChoice = false
	Reset(false)
	toggleNuiFrame(false)
end)

RegisterNetEvent("vrs-rps:client:RequestReceive", function()
	PlaySound(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 0, 0, 1)

	lib.showContext("acceptmenu")
end)

RegisterNetEvent("vrs-rps:client:SetupPos", function()
	local pedInFront = GetPlayerPed(GetClosestPlayer())
	local heading = GetEntityHeading(pedInFront)

	coords = GetOffsetFromEntityInWorldCoords(pedInFront, 0.0, 1.2, 0.0)
	SetEntityHeading(PlayerPedId(), heading - 180.1)
	SetEntityCoordsNoOffset(PlayerPedId(), coords.x, coords.y, coords.z, 0)
end)