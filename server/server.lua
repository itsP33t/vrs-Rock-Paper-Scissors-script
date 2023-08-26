local games = {}

RegisterNetEvent("vrs-rps:server:ServerRequest", function(target)
	TriggerClientEvent("vrs-rps:client:RequestReceive", target)
end)

RegisterNetEvent("vrs-rps:server:RequestAccept", function(target)
	-- Target is the creator of the game, src the acceptor
	local src = source
	table.insert(games, { acceptor = src, creator = target })
	TriggerClientEvent("vrs-rps:client:SetupPos", target)
	TriggerClientEvent("vrs-rps:client:StartGame", target)
	TriggerClientEvent("vrs-rps:client:StartGame", src)
end)

RegisterNetEvent("vrs-rps:server:Choice", function(choice)
	local src = source

	for _, game in pairs(games) do
		if game.acceptor == src then
			game.acceptorchoice = choice
			break
		end
		if game.creator == src then
			game.creatorchoice = choice
			break
		end
	end
end)

CreateThread(function()
	while true do
		for i, game in pairs(games) do
			if game.acceptorchoice ~= nil and game.creatorchoice ~= nil then
				TriggerClientEvent("vrs-rps:client:PlayAnim", game.acceptor, game.acceptorchoice)
				TriggerClientEvent("vrs-rps:client:PlayAnim", game.creator, game.creatorchoice)

				Wait(3000)

				local result = GetGameResult(game.acceptorchoice, game.creatorchoice)
				if result == 0 then
					TriggerClientEvent("vrs-rps:client:PlayAnim", game.acceptor, "tie")
					TriggerClientEvent("vrs-rps:client:PlayAnim", game.creator, "tie")
				elseif result == 1 then
					TriggerClientEvent("vrs-rps:client:PlayAnim", game.acceptor, "win")
					TriggerClientEvent("vrs-rps:client:PlayAnim", game.creator, "lose")
				elseif result == 2 then
					TriggerClientEvent("vrs-rps:client:PlayAnim", game.acceptor, "lose")
					TriggerClientEvent("vrs-rps:client:PlayAnim", game.creator, "win")
				end

				TriggerClientEvent("vrs-rps:client:FinishGame", game.acceptor)
				TriggerClientEvent("vrs-rps:client:FinishGame", game.creator)

				table.remove(games, i)
			end
		end
		Wait(100)
	end
end)

---@param p1c string @Player 1 Choice
---@param p2c string @Player 2 Choice
---@return integer @Returns the winner (1 or 2) or tie (0)
function GetGameResult(p1c, p2c)
	if p1c == p2c then
		return 0
	end

	if p1c == "rock" and p2c == "paper" then
		return 2
	end

	if p1c == "rock" and p2c == "scissors" then
		return 1
	end

	if p1c == "paper" and p2c == "rock" then
		return 1
	end

	if p1c == "paper" and p2c == "scissors" then
		return 2
	end

	if p1c == "scissors" and p2c == "rock" then
		return 2
	end

	if p1c == "scissors" and p2c == "paper" then
		return 1
	end

	return 0
end
