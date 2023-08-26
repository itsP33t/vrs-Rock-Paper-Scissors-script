lib.registerContext({
	id = "acceptmenu",
	title = Locales[Config.Locale]["menu"]["title"],
	canClose = false,
	options = {
		{
			title = Locales[Config.Locale]["menu"]["menuYes"],
			icon = "fa-solid fa-check",
			event = "vrs-rps:client:RequestAccept",
		},
		{
			title = Locales[Config.Locale]["menu"]["menuNo"],
			icon = "fa-solid fa-xmark",
			onSelect = function()
			end,
		},
	},
})

RegisterNetEvent("vrs-rps:client:RequestAccept", function()
	local target, distance = GetClosestPlayer()
	if distance ~= -1 and distance < 3 then
		TriggerServerEvent("vrs-rps:server:RequestAccept", GetPlayerServerId(target))
	else
		Notify(Notify(Locales[Config.Locale].notify.NobodyClose))
	end
end)
