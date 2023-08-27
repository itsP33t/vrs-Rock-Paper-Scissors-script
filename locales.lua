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

-- Czech / Česky 
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

-- German / Detsch
Locales["de"] = {
	menu = {
		title = "Möchtest du Schere, Stein, Papier spielen?",
		menuYes = "Ja",
		menuNo = "Nein",
	},
	notify = {
		Requested = "Du hast eine Partie Schere, Stein, Papier mit %s angefordert.",
		Accepted = "%s hat deine Anfrage akzeptiert.",
		Choose = "Bitte wähle Stein, Papier oder Schere.",
		NobodyClose = "Niemand ist nah genug, um mit dir zu spielen",
		Won = "Du hast gewonnen!",
		Lost = "Du hast verloren!",
		Tie = "Es ist unentschieden!",
		Cooldown = "Du kannst den Befehl für weitere %s Sekunden nicht verwenden!" -- %s ist die verbleibende Abkühlzeit
	},
}

-- French / Français
Locales["fr"] = {
	menu = {
		title = "Veux-tu jouer à Pierre, Feuille, Ciseaux?",
		menuYes = "Oui",
		menuNo = "Non",
	},
	notify = {
		Requested = "Tu as demandé à jouer à Pierre, Feuille, Ciseaux avec %s.",
		Accepted = "%s a accepté ta demande.",
		Choose = "Choisis entre Pierre, Feuille ou Ciseaux.",
		NobodyClose = "Personne n'est assez proche pour jouer avec toi.",
		Won = "Tu as gagné!",
		Lost = "Tu as perdu!",
		Tie = "C'est une égalité!",
		Cooldown = "Tu ne peux pas utiliser cette commande pendant encore %s secondes!" -- %s est le temps de recharge restant
	},
}

-- Spanish / Español
Locales["es"] = {
	menu = {
		title = "¿Quieres jugar a Piedra, Papel o Tijeras?",
		menuYes = "Sí",
		menuNo = "No",
	},
	notify = {
		Requested = "Has solicitado una partida de Piedra, Papel o Tijeras con %s.",
		Accepted = "%s ha aceptado tu solicitud.",
		Choose = "Por favor, elige Piedra, Papel o Tijeras.",
		NobodyClose = "Nadie está lo suficientemente cerca como para jugar contigo.",
		Won = "¡Has ganado!",
		Lost = "¡Has perdido!",
		Tie = "¡Es un empate!",
		Cooldown = "No puedes usar este comando durante otros %s segundos." -- %s es el tiempo de enfriamiento restante
	},
}

-- Russian / Русский
Locales["ru"] = {
	menu = {
		title = "Хочешь сыграть в Камень, Ножницы, Бумага?",
		menuYes = "Да",
		menuNo = "Нет",
	},
	notify = {
		Requested = "Ты запросил игру в Камень, Ножницы, Бумага с %s.",
		Accepted = "%s принял(а) твой запрос.",
		Choose = "Пожалуйста, выбери Камень, Ножницы или Бумагу.",
		NobodyClose = "Никто не находится достаточно близко, чтобы сыграть с тобой.",
		Won = "Ты победил!",
		Lost = "Ты проиграл!",
		Tie = "Ничья!",
		Cooldown = "Ты не можешь использовать эту команду ещё %s секунд." -- %s - оставшееся время перезарядки
	},
}

-- Italian / Italiano
Locales["it"] = {
	menu = {
		title = "Vuoi giocare a Carta, Sasso, Forbice?",
		menuYes = "Sì",
		menuNo = "No",
	},
	notify = {
		Requested = "Hai richiesto una partita a Carta, Sasso, Forbice con %s.",
		Accepted = "%s ha accettato la tua richiesta.",
		Choose = "Per favore, scegli Carta, Sasso o Forbice.",
		NobodyClose = "Nessuno è abbastanza vicino per giocare con te.",
		Won = "Hai vinto!",
		Lost = "Hai perso!",
		Tie = "È un pareggio!",
		Cooldown = "Non puoi usare questo comando per altri %s secondi." -- %s è il tempo di raffreddamento rimanente
	},
}

-- Dutch / Nederlands
Locales["nl"] = {
	menu = {
		title = "Wil je Steen, Papier, Schaar spelen?",
		menuYes = "Ja",
		menuNo = "Nee",
	},
	notify = {
		Requested = "Je hebt een potje Steen, Papier, Schaar aangevraagd met %s.",
		Accepted = "%s heeft je verzoek geaccepteerd.",
		Choose = "Kies alsjeblieft Steen, Papier of Schaar.",
		NobodyClose = "Niemand is dichtbij genoeg om met je te spelen.",
		Won = "Je hebt gewonnen!",
		Lost = "Je hebt verloren!",
		Tie = "Het is gelijkspel!",
		Cooldown = "Je kunt dit commando pas over %s seconden weer gebruiken." -- %s is de resterende afkoeltijd
	},
}

-- Polish / Polski
Locales["pl"] = {
	menu = {
		title = "Chcesz zagrać w Kamień, Papier, Nożyce?",
		menuYes = "Tak",
		menuNo = "Nie",
	},
	notify = {
		Requested = "Poprosiłeś o grę w Kamień, Papier, Nożyce z %s.",
		Accepted = "%s zaakceptował(a) twoją prośbę.",
		Choose = "Proszę wybierz Kamień, Papier lub Nożyce.",
		NobodyClose = "Nikt nie jest wystarczająco blisko, aby z tobą zagrać.",
		Won = "Wygrałeś!",
		Lost = "Przegrałeś!",
		Tie = "Remis!",
		Cooldown = "Nie możesz użyć tej komendy przez kolejne %s sekundy." -- %s to pozostały czas odnowienia
	},
}


-- Portuguese / Português
Locales["pt"] = {
	menu = {
		title = "Queres jogar Pedra, Papel, Tesoura?",
		menuYes = "Sim",
		menuNo = "Não",
	},
	notify = {
		Requested = "Pediste um jogo de Pedra, Papel, Tesoura com %s.",
		Accepted = "%s aceitou o teu pedido.",
		Choose = "Por favor, escolhe Pedra, Papel ou Tesoura.",
		NobodyClose = "Ninguém está suficientemente próximo para jogar contigo.",
		Won = "Ganhaste!",
		Lost = "Perdeste!",
		Tie = "É um empate!",
		Cooldown = "Não podes usar este comando durante mais %s segundos." -- %s é o tempo restante de cooldown
	},
}

-- Turkish / Türkçe
Locales["tr"] = {
	menu = {
		title = "Taş, Kağıt, Makas oynamak istiyor musun?",
		menuYes = "Evet",
		menuNo = "Hayır",
	},
	notify = {
		Requested = "%s ile Taş, Kağıt, Makas oyunu oynamak istediniz.",
		Accepted = "%s isteğinizi kabul etti.",
		Choose = "Lütfen Taş, Kağıt veya Makas seçin.",
		NobodyClose = "Kimse sizinle oynamak için yeterince yakın değil.",
		Won = "Kazandınız!",
		Lost = "Kaybettiniz!",
		Tie = "Berabere!",
		Cooldown = "Bu komutu bir sonraki %s saniye boyunca kullanamazsınız." -- %s kalan bekleme süresidir
	},
}
