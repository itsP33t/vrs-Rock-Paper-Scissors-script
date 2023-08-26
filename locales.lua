Locales = {}

-- Translate the script to your language here
-- Just copy the English table, rename the key to your language and translate the values, then set the locale in the config to your language

-- English
Locales["en"] = {
	menu = {
		title = "Do you want to play Rock, Paper, Scissors?",
		menuYes = "Yes",
		menuNo = "No",
	},
	notify = {
		Requested = "You requested a game of Rock, Paper, Scissors with %s", -- %s is the player's name
		Accepted = "%s accepted your request", -- %s is the player's name
		Choose = "Please choose Rock, Paper or Scissors",
		NobodyClose = "Nobody is close enough to play with you",
		Won = "You won!",
		Lost = "You lost!",
		Tie = "It's a tie!",
        Cooldown = "You cannot use the command for another %s seconds!", -- %s is the remaining cooldown time
	},
}
-- Česky
Locales["cs"] = {
	menu = {
		title = "Chceš si zahrát kámen, nůžky, papír?",
		menuYes = "Ano",
		menuNo = "Ne",
	},
	notify = {
		Requested = "Požádal jste o hru kámen, nůžky, papír s %s",
		Accepted = "%s přijmul vaší žádost",
		Choose = "Vyber si kámen, nůžky nebo papír",
		NobodyClose = "Nikdo není dost blízko, aby s vámi mohl hrát",
		Won = "Vyhrál jsi!",
		Lost = "Prohrál jsi!",
		Tie = "Je to remíza!",
        Cooldown = "Tento příkaz nemůžeš použít dalších %s vteřin!",
	},
}