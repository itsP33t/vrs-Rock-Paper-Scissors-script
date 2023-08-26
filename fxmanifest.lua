fx_version "cerulean"

author "Store.VerseScripts.net"
version "1.0.0"

lua54 "yes"
game "gta5"

ui_page "web/build/index.html"

shared_scripts {
	"@ox_lib/init.lua",
	"config.lua",
	"locales.lua",
	"shared/*.lua",
}

client_scripts {
	"client/client.lua",
	"client/modules/*.lua",
}

server_scripts {
	"server/server.lua",
}

files {
	"web/build/index.html",
	"web/build/**/*",
}
