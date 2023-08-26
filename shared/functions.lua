RegisterNetEvent(GetCurrentResourceName() .. ":client:notify", function(title, text, length, type)
	Notify(title, text, length, type)
end)

-- Showns notification to the player. Uses Config.Notify to select notification resource
--- @param title string
--- @param text string
--- @param type string
--- @param src number
function Notify(title, text, type, src)
	local length = 5000
	if IsDuplicityVersion() then
		-- Running on server
		if Config.Notify == "qb" then
			-- https://docs.qbcore.org/qbcore-documentation/qb-core/client-event-reference#qbcore-notify
			TriggerClientEvent("QBCore:Notify", src, text, type, length)
		elseif Config.Notify == "okok" then
			-- https://docs.okokscripts.io/scripts/okoknotify
			TriggerClientEvent("okokNotify:Alert", src, title, text, length, type)
		elseif Config.Notify == "es.lib" then
			-- https://github.com/ESFramework/es.lib
			TriggerClientEvent("es.lib:showNotify", src, title, "noicon", text, length, type)
		elseif Config.Notify == "brutal" then
			-- https://docs.brutalscripts.com/site/scripts/brutal-notify
			TriggerClientEvent("brutal_notify:SendAlert", src, title, text, length, type)
		elseif Config.Notify == "b-dev" then
			-- https://forum.cfx.re/t/paid-standalone-notify-the-best-notify-with-6-different-types/4905568
			TriggerClientEvent("b-notify:notify", src, type, title, text)
		elseif Config.Notify == "ox" then
			-- https://overextended.github.io/docs/ox_lib/Interface/Client/notify/
			TriggerClientEvent(GetCurrentResourceName() .. ":client:notify", src, title, text, length, type)
		end
	else
		-- Running on client
		if Config.Notify == "qb" then
			-- https://docs.qbcore.org/qbcore-documentation/qb-core/client-event-reference#qbcore-notify
			TriggerEvent("QBCore:Notify", text, type, length)
		elseif Config.Notify == "okok" then
			-- https://docs.okokscripts.io/scripts/okoknotify
			exports["okokNotify"]:Alert(title, text, length, type)
		elseif Config.Notify == "es.lib" then
			-- https://github.com/ESFramework/es.lib
			TriggerEvent("es.lib:showNotify", title, "noicon", text, length, type)
		elseif Config.Notify == "brutal" then
			-- https://docs.brutalscripts.com/site/scripts/brutal-notify
			exports["brutal_notify"]:SendAlert(title, text, length, type)
		elseif Config.Notify == "b-dev" then
			-- https://forum.cfx.re/t/paid-standalone-notify-the-best-notify-with-6-different-types/4905568
			TriggerEvent("b-notify:notify", type, title, text)
		elseif Config.Notify == "ox" then
			-- https://overextended.github.io/docs/ox_lib/Interface/Client/notify/
			-- You need to import ox_lib in the fxmanifest.lua
			lib.notify({
				title = title,
				description = text,
				type = type,
				duration = length,
			})
		end
	end
end
