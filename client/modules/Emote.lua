AddEventHandler("onResourceStop", function(resource)
	if resource == GetCurrentResourceName() then
		ClearPedTasksImmediately(PlayerPedId())
		ResetPedMovementClipset(PlayerPedId())
	end
end)

function LoadAnim(dict)
	while not HasAnimDictLoaded(dict) do
		RequestAnimDict(dict)
		Wait(10)
	end
end

function PlayAnim(anim, freeze)
	if IsPedInAnyVehicle(PlayerPedId(), true) == 1 then
		return
	end

	if not DoesEntityExist(PlayerPedId()) then
		return false
	end

	if IsPedArmed(PlayerPedId(), 7) then
		SetCurrentPedWeapon(PlayerPedId(), GetHashKey("WEAPON_UNARMED"), true)
	end

	local ChosenDict, ChosenAnim = table.unpack(Config.Emotes[anim])

	LoadAnim(ChosenDict)

	FreezeEntityPosition(PlayerPedId(), freeze)
	local duration = GetAnimDuration(ChosenDict, ChosenAnim)
	if duration > 5 then
		duration = 4
	end
	TaskPlayAnim(PlayerPedId(), ChosenDict, ChosenAnim, 2.0, 2.0, duration * 1000 + 1000, 2, 0, false, false, false)
	Wait(duration * 1000 + 1000)
	FreezeEntityPosition(PlayerPedId(), false)
	RemoveAnimDict(ChosenDict)

	return true
end

RegisterNetEvent("vrs-rps:client:PlayAnim", function(emote)
	if emote == "tie" then
		Notify(Locales[Config.Locale].notify.Tie)
	elseif emote == "win" then
		Notify(Locales[Config.Locale].notify.Won)
	elseif emote == "lose" then
		Notify(Locales[Config.Locale].notify.Lost)
	end
	ClearPedTasksImmediately(PlayerPedId())
	Wait(300)
	-- wait a little to make sure animation shows up right on both clients after canceling any previous emote
	if emote == "rock" or emote == "paper" or emote == "scissors" then
		if PlayAnim(emote, true) then
		end
	else
		if PlayAnim(emote, false) then
		end
	end
	return
end)
