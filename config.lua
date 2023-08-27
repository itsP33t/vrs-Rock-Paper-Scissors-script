--[[
$$\    $$\                                         
$$ |   $$ |                                        
$$ |   $$ | $$$$$$\   $$$$$$\   $$$$$$$\  $$$$$$\  
\$$\  $$  |$$  __$$\ $$  __$$\ $$  _____|$$  __$$\ 
 \$$\$$  / $$$$$$$$ |$$ |  \__|\$$$$$$\  $$$$$$$$ |
  \$$$  /  $$   ____|$$ |       \____$$\ $$   ____|
   \$  /   \$$$$$$$\ $$ |      $$$$$$$  |\$$$$$$$\ 
    \_/     \_______|\__|      \_______/  \_______|                                           
            store.VerseScripts.net
--]]
-- Need help? https://discord.gg/verse-scripts
-- Check out more at https://store.VerseScripts.net/
Config = {}

-- This resource is standalone, so you don't need to set any framework in the config

Config.Notify = "ox" -- qb | okok | es.lib | brutal | b-dev | ox
Config.Locale = "en" -- en | cs | de | fr | es | ru | it | nl | pl | pt | tr | 
					 -- See locales.lua for more information

-- Time
Config.TimeToChoose = 5 -- Time to choose Rock, Paper or scissors (in seconds)
Config.CommandCooldown = 10 -- Command cooldown (in seconds)

-- Emotes
Config.Emotes = {
	-- Name = {AnimDict, Anim}
	["rock"] = { "baspel@rock@animation", "rock_clip" },
	["paper"] = { "baspel@paper@animation", "paper_clip" },
	["scissors"] = { "baspel@scissors@animation", "scissors_clip" },

	["win"] = { "anim@amb@nightclub@peds@", "amb_world_human_cheering_female_c" },
	["lose"] = { "oddjobs@towingangryidle_a", "idle_a" },
	["tie"] = { "oddjobs@towingangryidle_a", "idle_a" },
}

Config.StartCommand = "rps" -- Command to start the game
